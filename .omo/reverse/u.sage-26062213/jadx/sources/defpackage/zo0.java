package defpackage;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import javax.naming.InvalidNameException;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.ldap.LdapName;
import javax.naming.ldap.Rdn;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zo0 implements HostnameVerifier {
    public final Log a = LogFactory.getLog(zo0.class);
    public final zw2 b;

    public zo0(zw2 zw2Var) {
        this.b = zw2Var;
    }

    public static String b(String str) throws SSLException {
        if (str == null) {
            return null;
        }
        try {
            List rdns = new LdapName(str).getRdns();
            for (int size = rdns.size() - 1; size >= 0; size--) {
                Attribute attribute = ((Rdn) rdns.get(size)).toAttributes().get("cn");
                if (attribute != null) {
                    try {
                        Object obj = attribute.get();
                        if (obj != null) {
                            return obj.toString();
                        }
                        continue;
                    } catch (NoSuchElementException | NamingException unused) {
                        continue;
                    }
                }
            }
            return null;
        } catch (InvalidNameException unused2) {
            throw new SSLException(str.concat(" is not a valid X500 distinguished name"));
        }
    }

    public static List c(X509Certificate x509Certificate) {
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.EMPTY_LIST;
            }
            ArrayList arrayList = new ArrayList();
            for (List<?> list : subjectAlternativeNames) {
                Integer num = list.size() >= 2 ? (Integer) list.get(0) : null;
                if (num != null && (num.intValue() == 2 || num.intValue() == 7)) {
                    Object obj = list.get(1);
                    if (obj instanceof String) {
                        arrayList.add(new tt3((String) obj, num.intValue()));
                    }
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return Collections.EMPTY_LIST;
        }
    }

    public static boolean d(String str, String str2, zw2 zw2Var) {
        String strA;
        if (zw2Var == null || !str.contains(".") || ((strA = zw2Var.a(str2)) != null && str.endsWith(strA) && (str.length() == strA.length() || str.charAt((str.length() - strA.length()) - 1) == '.'))) {
            int iIndexOf = str2.indexOf(42);
            if (iIndexOf == -1) {
                return str.equalsIgnoreCase(str2);
            }
            String strSubstring = str2.substring(0, iIndexOf);
            String strSubstring2 = str2.substring(iIndexOf + 1);
            if ((strSubstring.isEmpty() || str.startsWith(strSubstring)) && ((strSubstring2.isEmpty() || str.endsWith(strSubstring2)) && !str.substring(strSubstring.length(), str.length() - strSubstring2.length()).contains("."))) {
                return true;
            }
        }
        return false;
    }

    public static String e(String str) {
        if (str == null) {
            return str;
        }
        try {
            return InetAddress.getByName(str).getHostAddress();
        } catch (UnknownHostException unused) {
            return str;
        }
    }

    public final void f(String str, X509Certificate x509Certificate) throws SSLException {
        int i;
        if (nq1.a.matcher(str).matches()) {
            i = 1;
        } else {
            i = nq1.a((!str.startsWith("[") || !str.endsWith("]")) ? str : str.substring(1, str.length() - 1)) ? 2 : 3;
        }
        List listC = c(x509Certificate);
        zw2 zw2Var = this.b;
        if (listC == null || listC.isEmpty()) {
            String strB = b(x509Certificate.getSubjectX500Principal().getName("RFC2253"));
            if (strB == null) {
                throw new SSLException(di0.v("Certificate subject for <", str, "> doesn't contain a common name and does not have alternative names"));
            }
            if (d(gg4.M(str), gg4.M(strB), zw2Var)) {
                return;
            }
            mk0.e(str, "> doesn't match common name of the certificate subject: ", strB);
            return;
        }
        int iF = di0.F(i);
        int i2 = 0;
        if (iF == 0) {
            while (i2 < listC.size()) {
                tt3 tt3Var = (tt3) listC.get(i2);
                if (tt3Var.b == 7 && str.equals(tt3Var.a)) {
                    return;
                } else {
                    i2++;
                }
            }
            mk0.e(str, "> doesn't match any of the subject alternative names: ", listC);
            return;
        }
        if (iF != 1) {
            String strM = gg4.M(str);
            while (i2 < listC.size()) {
                tt3 tt3Var2 = (tt3) listC.get(i2);
                if (tt3Var2.b == 2 && d(strM, gg4.M(tt3Var2.a), zw2Var)) {
                    return;
                } else {
                    i2++;
                }
            }
            mk0.e(str, "> doesn't match any of the subject alternative names: ", listC);
            return;
        }
        String strE = e(str);
        while (i2 < listC.size()) {
            tt3 tt3Var3 = (tt3) listC.get(i2);
            if (tt3Var3.b == 7 && strE.equals(e(tt3Var3.a))) {
                return;
            } else {
                i2++;
            }
        }
        mk0.e(str, "> doesn't match any of the subject alternative names: ", listC);
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        try {
            f(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
            return true;
        } catch (SSLException e) {
            if (this.a.isDebugEnabled()) {
                this.a.debug(e.getMessage(), e);
            }
            return false;
        }
    }
}

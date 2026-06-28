package defpackage;

import java.io.IOException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class k2 implements th4 {
    public static final String[] b;
    public final Log a = LogFactory.getLog(getClass());

    static {
        String[] strArr = {"ac", "co", "com", "ed", "edu", "go", "gouv", "gov", "info", "lg", "ne", "net", "or", "org"};
        b = strArr;
        Arrays.sort(strArr);
    }

    public static boolean b(String str, String str2, boolean z) {
        boolean zEndsWith;
        if (str != null) {
            Locale locale = Locale.ROOT;
            String lowerCase = str.toLowerCase(locale);
            String lowerCase2 = str2.toLowerCase(locale);
            String[] strArrSplit = lowerCase2.split("\\.");
            if (strArrSplit.length < 3 || !strArrSplit[0].endsWith("*") || (z && strArrSplit.length == 3 && strArrSplit[2].length() == 2 && Arrays.binarySearch(b, strArrSplit[1]) >= 0)) {
                return lowerCase.equals(lowerCase2);
            }
            String str3 = strArrSplit[0];
            if (str3.length() > 1) {
                String strSubstring = str3.substring(0, str3.length() - 1);
                zEndsWith = lowerCase.startsWith(strSubstring) && lowerCase.substring(strSubstring.length()).endsWith(lowerCase2.substring(str3.length()));
            } else {
                zEndsWith = lowerCase.endsWith(lowerCase2.substring(1));
            }
            if (zEndsWith) {
                if (z) {
                    int i = 0;
                    for (int i2 = 0; i2 < lowerCase.length(); i2++) {
                        if (lowerCase.charAt(i2) == '.') {
                            i++;
                        }
                    }
                    int i3 = 0;
                    for (int i4 = 0; i4 < lowerCase2.length(); i4++) {
                        if (lowerCase2.charAt(i4) == '.') {
                            i3++;
                        }
                    }
                    if (i == i3) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static void e(String str, String[] strArr, String[] strArr2, boolean z) throws SSLException {
        List<String> listAsList = null;
        String str2 = (strArr == null || strArr.length <= 0) ? null : strArr[0];
        if (strArr2 != null && strArr2.length > 0) {
            listAsList = Arrays.asList(strArr2);
        }
        String strE = nq1.a(str) ? zo0.e(str.toLowerCase(Locale.ROOT)) : str;
        if (listAsList == null) {
            if (str2 == null) {
                throw new SSLException(di0.v("Certificate subject for <", str, "> doesn't contain a common name and does not have alternative names"));
            }
            if (b(strE, nq1.a(str2) ? zo0.e(str2) : str2, z)) {
                return;
            }
            throw new SSLException("Certificate for <" + str + "> doesn't match common name of the certificate subject: " + str2);
        }
        for (String strE2 : listAsList) {
            if (nq1.a(strE2)) {
                strE2 = zo0.e(strE2);
            }
            if (b(strE, strE2, z)) {
                return;
            }
        }
        throw new SSLException("Certificate for <" + str + "> doesn't match any of the subject alternative names: " + listAsList);
    }

    public final void c(String str, X509Certificate x509Certificate) throws SSLException {
        List<tt3> listC = zo0.c(x509Certificate);
        ArrayList arrayList = new ArrayList();
        if (nq1.a.matcher(str).matches() || nq1.a(str)) {
            for (tt3 tt3Var : listC) {
                if (tt3Var.b == 7) {
                    arrayList.add(tt3Var.a);
                }
            }
        } else {
            for (tt3 tt3Var2 : listC) {
                if (tt3Var2.b == 2) {
                    arrayList.add(tt3Var2.a);
                }
            }
        }
        String strB = zo0.b(x509Certificate.getSubjectX500Principal().getName("RFC2253"));
        a(str, strB != null ? new String[]{strB} : null, arrayList.isEmpty() ? null : (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    public final void d(String str, SSLSocket sSLSocket) throws IOException {
        w80.L(str, "Host");
        SSLSession session = sSLSocket.getSession();
        if (session == null) {
            sSLSocket.getInputStream().available();
            session = sSLSocket.getSession();
            if (session == null) {
                sSLSocket.startHandshake();
                session = sSLSocket.getSession();
            }
        }
        c(str, (X509Certificate) session.getPeerCertificates()[0]);
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        try {
            c(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
            return true;
        } catch (SSLException e) {
            if (this.a.isDebugEnabled()) {
                this.a.debug(e.getMessage(), e);
            }
            return false;
        }
    }
}

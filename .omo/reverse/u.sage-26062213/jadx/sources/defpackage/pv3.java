package defpackage;

import java.net.Authenticator;
import java.net.PasswordAuthentication;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pv3 implements zk0 {
    public static final ConcurrentHashMap b;
    public final nu a = new nu();

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        b = concurrentHashMap;
        Locale locale = Locale.ROOT;
        concurrentHashMap.put("Basic".toUpperCase(locale), "Basic");
        concurrentHashMap.put("Digest".toUpperCase(locale), "Digest");
        concurrentHashMap.put("NTLM".toUpperCase(locale), "NTLM");
        concurrentHashMap.put("Negotiate".toUpperCase(locale), "SPNEGO");
        concurrentHashMap.put("Kerberos".toUpperCase(locale), "Kerberos");
    }

    public static PasswordAuthentication c(String str, sj sjVar) {
        String property;
        String property2;
        String property3 = System.getProperty(str.concat(".proxyHost"));
        if (property3 != null && (property = System.getProperty(str.concat(".proxyPort"))) != null) {
            try {
                if (sjVar.a(new sj(property3, Integer.parseInt(property), null, null)) >= 0 && (property2 = System.getProperty(str.concat(".proxyUser"))) != null) {
                    String property4 = System.getProperty(str.concat(".proxyPassword"));
                    return new PasswordAuthentication(property2, property4 != null ? property4.toCharArray() : new char[0]);
                }
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    @Override // defpackage.zk0
    public final yk0 a(sj sjVar) {
        String str;
        String str2;
        String str3 = sjVar.a;
        yk0 yk0VarA = this.a.a(sjVar);
        if (yk0VarA != null) {
            return yk0VarA;
        }
        String str4 = sjVar.c;
        if (str4 != null) {
            em1 em1Var = sjVar.e;
            String str5 = em1Var != null ? em1Var.q : sjVar.d == 443 ? "https" : "http";
            Authenticator.RequestorType requestorType = Authenticator.RequestorType.SERVER;
            int i = sjVar.d;
            ConcurrentHashMap concurrentHashMap = b;
            if (str3 == null) {
                str = null;
            } else {
                String str6 = (String) concurrentHashMap.get(str3);
                str = str6 != null ? str6 : str3;
            }
            PasswordAuthentication passwordAuthenticationRequestPasswordAuthentication = Authenticator.requestPasswordAuthentication(str4, null, i, str5, null, str, null, requestorType);
            if (passwordAuthenticationRequestPasswordAuthentication == null) {
                Authenticator.RequestorType requestorType2 = Authenticator.RequestorType.PROXY;
                String str7 = sjVar.c;
                int i2 = sjVar.d;
                if (str3 == null) {
                    str2 = null;
                } else {
                    String str8 = (String) concurrentHashMap.get(str3);
                    str2 = str8 != null ? str8 : str3;
                }
                passwordAuthenticationRequestPasswordAuthentication = Authenticator.requestPasswordAuthentication(str7, null, i2, str5, null, str2, null, requestorType2);
            }
            if (passwordAuthenticationRequestPasswordAuthentication == null && (passwordAuthenticationRequestPasswordAuthentication = c("http", sjVar)) == null) {
                passwordAuthenticationRequestPasswordAuthentication = c("https", sjVar);
            }
            if (passwordAuthenticationRequestPasswordAuthentication != null) {
                String property = System.getProperty("http.auth.ntlm.domain");
                return property != null ? new jh2(passwordAuthenticationRequestPasswordAuthentication.getUserName(), new String(passwordAuthenticationRequestPasswordAuthentication.getPassword()), property) : "NTLM".equalsIgnoreCase(str3) ? new jh2(passwordAuthenticationRequestPasswordAuthentication.getUserName(), new String(passwordAuthenticationRequestPasswordAuthentication.getPassword()), null) : new e94(passwordAuthenticationRequestPasswordAuthentication.getUserName(), new String(passwordAuthenticationRequestPasswordAuthentication.getPassword()));
            }
        }
        return null;
    }

    @Override // defpackage.zk0
    public final void b(sj sjVar, e94 e94Var) {
        this.a.b(sjVar, e94Var);
    }
}

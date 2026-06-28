package defpackage;

import java.util.List;
import javax.net.ssl.SSLSocket;
import org.conscrypt.Conscrypt;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ze0 implements kp3 {
    public static final xe0 a = new xe0();
    public static final boolean b;

    static {
        boolean z = false;
        try {
            Class.forName("org.conscrypt.Conscrypt$Version", false, ye0.class.getClassLoader());
            if (Conscrypt.isAvailable()) {
                if (ye0.a()) {
                    z = true;
                }
            }
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
        }
        b = z;
    }

    @Override // defpackage.kp3
    public final String a(SSLSocket sSLSocket) {
        if (c(sSLSocket)) {
            return Conscrypt.getApplicationProtocol(sSLSocket);
        }
        return null;
    }

    @Override // defpackage.kp3
    public final boolean b() {
        return b;
    }

    @Override // defpackage.kp3
    public final boolean c(SSLSocket sSLSocket) {
        return Conscrypt.isConscrypt(sSLSocket);
    }

    @Override // defpackage.kp3
    public final void d(SSLSocket sSLSocket, String str, List list) {
        list.getClass();
        if (c(sSLSocket)) {
            Conscrypt.setUseSessionTickets(sSLSocket, true);
            iv2 iv2Var = iv2.a;
            Conscrypt.setApplicationProtocols(sSLSocket, (String[]) b21.t(list).toArray(new String[0]));
        }
    }
}

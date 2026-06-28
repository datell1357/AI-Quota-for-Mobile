package defpackage;

import java.util.List;
import javax.net.ssl.SSLSocket;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dr0 implements kp3 {
    public final cr0 a;
    public kp3 b;

    public dr0(cr0 cr0Var) {
        this.a = cr0Var;
    }

    @Override // defpackage.kp3
    public final String a(SSLSocket sSLSocket) {
        kp3 kp3VarE = e(sSLSocket);
        if (kp3VarE != null) {
            return kp3VarE.a(sSLSocket);
        }
        return null;
    }

    @Override // defpackage.kp3
    public final boolean b() {
        return true;
    }

    @Override // defpackage.kp3
    public final boolean c(SSLSocket sSLSocket) {
        return this.a.c(sSLSocket);
    }

    @Override // defpackage.kp3
    public final void d(SSLSocket sSLSocket, String str, List list) {
        list.getClass();
        kp3 kp3VarE = e(sSLSocket);
        if (kp3VarE != null) {
            kp3VarE.d(sSLSocket, str, list);
        }
    }

    public final synchronized kp3 e(SSLSocket sSLSocket) {
        try {
            if (this.b == null && this.a.c(sSLSocket)) {
                this.b = this.a.f(sSLSocket);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.b;
    }
}

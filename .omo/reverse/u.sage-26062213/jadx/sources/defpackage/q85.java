package defpackage;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class q85 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ vc5 o;
    public final /* synthetic */ o95 p;

    public q85(o95 o95Var, vc5 vc5Var) {
        this.n = 4;
        this.o = vc5Var;
        Objects.requireNonNull(o95Var);
        this.p = o95Var;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        int i = this.n;
        vc5 vc5Var = this.o;
        o95 o95Var = this.p;
        switch (i) {
            case 0:
                n05 n05Var = o95Var.d;
                r45 r45Var = (r45) o95Var.a;
                if (n05Var != null) {
                    try {
                        Preconditions.checkNotNull(vc5Var);
                        n05Var.A(vc5Var);
                    } catch (RemoteException e) {
                        a25 a25Var = r45Var.f;
                        r45.l(a25Var);
                        a25Var.f.b(e, "Failed to reset data on the service: remote exception");
                    }
                    o95Var.I();
                } else {
                    a25 a25Var2 = r45Var.f;
                    r45.l(a25Var2);
                    a25Var2.f.a("Failed to reset data on the service: not connected to service");
                }
                break;
            case 1:
                n05 n05Var2 = o95Var.d;
                r45 r45Var2 = (r45) o95Var.a;
                if (n05Var2 == null) {
                    a25 a25Var3 = r45Var2.f;
                    r45.l(a25Var3);
                    a25Var3.f.a("Discarding data. Failed to send app launch");
                } else {
                    try {
                        Preconditions.checkNotNull(vc5Var);
                        ds4 ds4Var = r45Var2.d;
                        d05 d05Var = e05.W0;
                        if (ds4Var.G(null, d05Var)) {
                            o95Var.N(n05Var2, null, vc5Var);
                        }
                        n05Var2.B(vc5Var);
                        r45Var2.n().A();
                        r45Var2.d.G(null, d05Var);
                        o95Var.N(n05Var2, null, vc5Var);
                        o95Var.I();
                    } catch (RemoteException e2) {
                        a25 a25Var4 = r45Var2.f;
                        r45.l(a25Var4);
                        a25Var4.f.b(e2, "Failed to send app launch to the service");
                        return;
                    }
                }
                break;
            case 2:
                n05 n05Var3 = o95Var.d;
                r45 r45Var3 = (r45) o95Var.a;
                if (n05Var3 == null) {
                    a25 a25Var5 = r45Var3.f;
                    r45.l(a25Var5);
                    a25Var5.i.a("Failed to send app backgrounded");
                } else {
                    try {
                        Preconditions.checkNotNull(vc5Var);
                        n05Var3.h(vc5Var);
                        o95Var.I();
                    } catch (RemoteException e3) {
                        a25 a25Var6 = r45Var3.f;
                        r45.l(a25Var6);
                        a25Var6.f.b(e3, "Failed to send app backgrounded to the service");
                        return;
                    }
                }
                break;
            case 3:
                n05 n05Var4 = o95Var.d;
                r45 r45Var4 = (r45) o95Var.a;
                if (n05Var4 == null) {
                    a25 a25Var7 = r45Var4.f;
                    r45.l(a25Var7);
                    a25Var7.f.a("Failed to send measurementEnabled to service");
                } else {
                    try {
                        Preconditions.checkNotNull(vc5Var);
                        n05Var4.m(vc5Var);
                        o95Var.I();
                    } catch (RemoteException e4) {
                        a25 a25Var8 = r45Var4.f;
                        r45.l(a25Var8);
                        a25Var8.f.b(e4, "Failed to send measurementEnabled to the service");
                        return;
                    }
                }
                break;
            default:
                n05 n05Var5 = o95Var.d;
                r45 r45Var5 = (r45) o95Var.a;
                if (n05Var5 == null) {
                    a25 a25Var9 = r45Var5.f;
                    r45.l(a25Var9);
                    a25Var9.f.a("Failed to send consent settings to service");
                } else {
                    try {
                        Preconditions.checkNotNull(vc5Var);
                        n05Var5.j(vc5Var);
                        o95Var.I();
                    } catch (RemoteException e5) {
                        a25 a25Var10 = r45Var5.f;
                        r45.l(a25Var10);
                        a25Var10.f.b(e5, "Failed to send consent settings to the service");
                    }
                }
                break;
        }
    }

    public /* synthetic */ q85(o95 o95Var, vc5 vc5Var, int i) {
        this.n = i;
        this.o = vc5Var;
        this.p = o95Var;
    }
}

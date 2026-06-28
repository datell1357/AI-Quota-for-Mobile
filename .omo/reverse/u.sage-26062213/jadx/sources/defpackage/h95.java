package defpackage;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h95 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ o95 o;

    public /* synthetic */ h95(o95 o95Var, int i) {
        this.n = i;
        this.o = o95Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        o95 o95Var = this.o;
        switch (i) {
            case 0:
                o95Var.B();
                break;
            case 1:
                r45 r45Var = (r45) o95Var.a;
                n05 n05Var = o95Var.d;
                if (n05Var == null) {
                    a25 a25Var = r45Var.f;
                    r45.l(a25Var);
                    a25Var.f.a("Failed to send Dma consent settings to service");
                } else {
                    try {
                        vc5 vc5VarL = o95Var.L(false);
                        Preconditions.checkNotNull(vc5VarL);
                        n05Var.n(vc5VarL);
                        o95Var.I();
                    } catch (RemoteException e) {
                        a25 a25Var2 = r45Var.f;
                        r45.l(a25Var2);
                        a25Var2.f.b(e, "Failed to send Dma consent settings to the service");
                        return;
                    }
                }
                break;
            default:
                r45 r45Var2 = (r45) o95Var.a;
                n05 n05Var2 = o95Var.d;
                if (n05Var2 == null) {
                    a25 a25Var3 = r45Var2.f;
                    r45.l(a25Var3);
                    a25Var3.f.a("Failed to send storage consent settings to service");
                } else {
                    try {
                        vc5 vc5VarL2 = o95Var.L(false);
                        Preconditions.checkNotNull(vc5VarL2);
                        n05Var2.e(vc5VarL2);
                        o95Var.I();
                    } catch (RemoteException e2) {
                        a25 a25Var4 = r45Var2.f;
                        r45.l(a25Var4);
                        a25Var4.f.b(e2, "Failed to send storage consent settings to the service");
                    }
                }
                break;
        }
    }
}

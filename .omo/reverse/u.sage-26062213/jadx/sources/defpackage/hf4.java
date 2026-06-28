package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hf4 implements n22 {
    public final /* synthetic */ bh0 n;
    public final /* synthetic */ qc o;
    public final /* synthetic */ h33 p;
    public final /* synthetic */ w33 q;

    public hf4(bh0 bh0Var, qc qcVar, h33 h33Var, w33 w33Var) {
        this.n = bh0Var;
        this.o = qcVar;
        this.p = h33Var;
        this.q = w33Var;
    }

    @Override // defpackage.n22
    public final void B(p22 p22Var, f22 f22Var) {
        boolean z;
        n20 n20VarY = null;
        switch (gf4.a[f22Var.ordinal()]) {
            case 1:
                ca.y(this.n, null, ti0.q, new qd(this.q, this.p, p22Var, this, null, 13), 1);
                return;
            case 2:
                qc qcVar = this.o;
                if (qcVar != null) {
                    mu0 mu0Var = (mu0) qcVar.p;
                    synchronized (mu0Var.b) {
                        try {
                            synchronized (mu0Var.b) {
                                z = mu0Var.a;
                            }
                            if (!z) {
                                ArrayList arrayList = (ArrayList) mu0Var.c;
                                mu0Var.c = (ArrayList) mu0Var.d;
                                mu0Var.d = arrayList;
                                mu0Var.a = true;
                                int size = arrayList.size();
                                for (int i = 0; i < size; i++) {
                                    ((dh0) arrayList.get(i)).g(t64.a);
                                }
                                arrayList.clear();
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                h33 h33Var = this.p;
                synchronized (h33Var.c) {
                    if (h33Var.t) {
                        h33Var.t = false;
                        n20VarY = h33Var.y();
                    }
                    break;
                }
                if (n20VarY != null) {
                    ((o20) n20VarY).g(t64.a);
                    return;
                }
                return;
            case 3:
                h33 h33Var2 = this.p;
                synchronized (h33Var2.c) {
                    h33Var2.t = true;
                }
                return;
            case 4:
                this.p.x();
                return;
            case 5:
            case 6:
            case 7:
                return;
            default:
                p61.x();
                return;
        }
    }
}

package defpackage;

import java.io.Serializable;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l22 implements n22 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Serializable p;
    public final /* synthetic */ Object q;

    public /* synthetic */ l22(Object obj, Serializable serializable, Object obj2, int i) {
        this.n = i;
        this.o = obj;
        this.p = serializable;
        this.q = obj2;
    }

    @Override // defpackage.n22
    public final void B(p22 p22Var, f22 f22Var) {
        int i = this.n;
        Object obj = this.q;
        Serializable serializable = this.p;
        Object obj2 = this.o;
        f22 f22Var2 = null;
        switch (i) {
            case 0:
                w22 w22Var = (w22) obj2;
                w33 w33Var = (w33) serializable;
                pe1 pe1Var = (pe1) obj;
                int i2 = m22.a[f22Var.ordinal()];
                if (i2 == 1) {
                    w33Var.n = pe1Var.k(w22Var);
                    break;
                } else if (i2 == 2) {
                    zp zpVar = (zp) w33Var.n;
                    if (zpVar != null) {
                        zpVar.a();
                    }
                    w33Var.n = null;
                    break;
                }
                break;
            default:
                xb2 xb2Var = (xb2) obj2;
                g22 g22Var = (g22) serializable;
                jc2 jc2Var = (jc2) obj;
                xb2Var.getClass();
                Runnable runnable = xb2Var.a;
                CopyOnWriteArrayList copyOnWriteArrayList = xb2Var.b;
                f22.Companion.getClass();
                int iOrdinal = g22Var.ordinal();
                if (f22Var != (iOrdinal != 2 ? iOrdinal != 3 ? iOrdinal != 4 ? null : f22.ON_RESUME : f22.ON_START : f22.ON_CREATE)) {
                    f22 f22Var3 = f22.ON_DESTROY;
                    if (f22Var != f22Var3) {
                        int iOrdinal2 = g22Var.ordinal();
                        if (iOrdinal2 == 2) {
                            f22Var2 = f22Var3;
                        } else if (iOrdinal2 == 3) {
                            f22Var2 = f22.ON_STOP;
                        } else if (iOrdinal2 == 4) {
                            f22Var2 = f22.ON_PAUSE;
                        }
                        if (f22Var == f22Var2) {
                            copyOnWriteArrayList.remove(jc2Var);
                            runnable.run();
                        }
                    } else {
                        xb2Var.b(jc2Var);
                    }
                } else {
                    copyOnWriteArrayList.add(jc2Var);
                    runnable.run();
                }
                break;
        }
    }
}

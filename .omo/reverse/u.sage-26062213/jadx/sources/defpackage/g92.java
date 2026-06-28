package defpackage;

import u.sage.MainActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g92 implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ xi2 o;

    public /* synthetic */ g92(xi2 xi2Var, int i) {
        this.n = i;
        this.o = xi2Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.n;
        t64 t64Var = t64.a;
        xi2 xi2Var = this.o;
        switch (i) {
            case 0:
                y84 y84Var = (y84) obj;
                int i2 = MainActivity.C;
                y84Var.getClass();
                ne3 ne3Var = ne3.c;
                String strName = y84Var.name();
                ne3Var.getClass();
                strName.getClass();
                xi2.b(xi2Var, "account/".concat(strName));
                break;
            default:
                kj2 kj2Var = (kj2) obj;
                int i3 = xi2Var.b.i().o.a;
                kj2Var.getClass();
                kj2Var.a(i3);
                kj2Var.f = true;
                kj2Var.g = false;
                break;
        }
        return t64Var;
    }
}

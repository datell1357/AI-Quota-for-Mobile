package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fq2 extends zq2 {
    public static final fq2 d;
    public static final fq2 e;
    public static final fq2 f;
    public static final fq2 g;
    public final /* synthetic */ int c;

    static {
        int i = 1;
        d = new fq2(i, 2, 0);
        int i2 = 1;
        e = new fq2(i2, i2, 1);
        f = new fq2(i, 2, 2);
        int i3 = 1;
        g = new fq2(i3, i3, 3);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ fq2(int i, int i2, int i3) {
        super(i, i2);
        this.c = i3;
    }

    @Override // defpackage.zq2
    public final void a(e50 e50Var, kh khVar, xn3 xn3Var, l53 l53Var, ar2 ar2Var) {
        switch (this.c) {
            case 0:
                Object objA = ((ne1) e50Var.d(0)).a();
                vf1 vf1Var = (vf1) e50Var.d(1);
                int iC = e50Var.c(0);
                vf1Var.getClass();
                xn3Var.U(xn3Var.c(vf1Var), objA);
                khVar.f(iC, objA);
                khVar.d(objA);
                break;
            case 1:
                vf1 vf1Var2 = (vf1) e50Var.d(0);
                int iC2 = e50Var.c(0);
                khVar.n();
                vf1Var2.getClass();
                khVar.b(iC2, xn3Var.D(xn3Var.c(vf1Var2)));
                break;
            case 2:
                Object objD = e50Var.d(0);
                vf1 vf1Var3 = (vf1) e50Var.d(1);
                int iC3 = e50Var.c(0);
                if (objD instanceof eg1) {
                    eg1 eg1Var = (eg1) objD;
                    l53Var.e.c(eg1Var);
                    l53Var.d.a(eg1Var);
                }
                Object objK = xn3Var.K(xn3Var.c(vf1Var3), iC3, objD);
                if (objK instanceof eg1) {
                    l53Var.e((eg1) objK);
                } else if (objK instanceof c33) {
                    ((c33) objK).c();
                }
                break;
            default:
                Object objD2 = e50Var.d(0);
                int iC4 = e50Var.c(0);
                if (objD2 instanceof eg1) {
                    eg1 eg1Var2 = (eg1) objD2;
                    l53Var.e.c(eg1Var2);
                    l53Var.d.a(eg1Var2);
                }
                Object objK2 = xn3Var.K(xn3Var.t, iC4, objD2);
                if (objK2 instanceof eg1) {
                    l53Var.e((eg1) objK2);
                } else if (objK2 instanceof c33) {
                    ((c33) objK2).c();
                }
                break;
        }
    }

    @Override // defpackage.zq2
    public vf1 b(e50 e50Var) {
        switch (this.c) {
            case 0:
                return (vf1) e50Var.d(1);
            case 1:
                return (vf1) e50Var.d(0);
            default:
                return super.b(e50Var);
        }
    }
}

package defpackage;

import u.sage.a;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ut extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public int s;
    public final /* synthetic */ int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ Object f363u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ut(Object obj, int i, dh0 dh0Var, int i2) {
        super(2, dh0Var);
        this.r = i2;
        this.f363u = obj;
        this.t = i;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((ut) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        int i2 = this.t;
        Object obj2 = this.f363u;
        switch (i) {
            case 0:
                return new ut((a) obj2, i2, dh0Var, 0);
            default:
                return new ut((w02) obj2, i2, dh0Var, 1);
        }
    }

    @Override // defpackage.dr
    public final Object q(Object obj) throws Throwable {
        int i = this.r;
        Object obj2 = this.f363u;
        ri0 ri0Var = ri0.n;
        t64 t64Var = t64.a;
        switch (i) {
            case 0:
                a aVar = (a) obj2;
                int i2 = this.s;
                if (i2 != 0) {
                    if (i2 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                    } else {
                        gg4.T(obj);
                    }
                    break;
                } else {
                    gg4.T(obj);
                    a81 a81Var = (a81) aVar.o().j.getValue();
                    this.s = 1;
                    obj = qj0.J(a81Var, this);
                    if (obj == ri0Var) {
                    }
                }
                String str = (String) obj;
                if (str == null || str.length() == 0) {
                    ra3 ra3Var = ez3.a;
                    aVar.j();
                    ra3Var.getClass();
                    ra3.m(new Object[0]);
                } else {
                    ra3 ra3Var2 = ez3.a;
                    aVar.j();
                    ra3Var2.getClass();
                    ra3.c(new Object[0]);
                    aVar.e(str);
                }
                break;
            default:
                int i3 = this.s;
                if (i3 != 0) {
                    if (i3 != 1) {
                        k21.n("call to 'resume' before 'invoke' with coroutine");
                    } else {
                        gg4.T(obj);
                    }
                    break;
                } else {
                    gg4.T(obj);
                    s02 s02Var = ((w02) obj2).C;
                    this.s = 1;
                    n12 n12Var = s02Var.b;
                    xh1 xh1Var = n12.y;
                    n12Var.getClass();
                    Object objF = n12Var.f(xg2.n, new x50(n12Var, this.t, (dh0) null), this);
                    if (objF != ri0Var) {
                        objF = t64Var;
                    }
                    if (objF != ri0Var) {
                        objF = t64Var;
                    }
                    if (objF == ri0Var) {
                    }
                }
                break;
        }
        return t64Var;
    }
}

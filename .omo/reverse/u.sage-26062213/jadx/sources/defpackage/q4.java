package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class q4 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public final /* synthetic */ Object s;
    public final /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ Object f272u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q4(String str, List list, xi2 xi2Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.r = 3;
        this.s = str;
        this.t = list;
        this.f272u = xi2Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
            case 0:
                ((q4) o(dh0Var, qi0Var)).q(t64Var);
                break;
            case 1:
                ((q4) o(dh0Var, qi0Var)).q(t64Var);
                break;
            case 2:
                ((q4) o(dh0Var, qi0Var)).q(t64Var);
                break;
            default:
                ((q4) o(dh0Var, qi0Var)).q(t64Var);
                break;
        }
        return t64Var;
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        Object obj2 = this.f272u;
        Object obj3 = this.t;
        Object obj4 = this.s;
        switch (i) {
            case 0:
                return new q4((y3) obj3, (String) obj4, (pg2) obj2, dh0Var, 0);
            case 1:
                return new q4((e4) obj3, (String) obj4, (String) obj2, dh0Var, 1);
            case 2:
                return new q4((pg2) obj2, (ut0) obj3, (gp3) obj4, dh0Var);
            default:
                return new q4((String) obj4, (List) obj3, (xi2) obj2, dh0Var);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0131  */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r15) {
        /*
            Method dump skipped, instruction units count: 542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.q4.q(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ q4(Object obj, String str, Object obj2, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.t = obj;
        this.s = str;
        this.f272u = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q4(pg2 pg2Var, ut0 ut0Var, gp3 gp3Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.r = 2;
        this.f272u = pg2Var;
        this.t = ut0Var;
        this.s = gp3Var;
    }
}

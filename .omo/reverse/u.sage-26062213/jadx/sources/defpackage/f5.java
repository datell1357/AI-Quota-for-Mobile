package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f5 extends bv3 implements df1 {
    public final /* synthetic */ int r;
    public /* synthetic */ Object s;
    public final /* synthetic */ Object t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ Object f92u;
    public final /* synthetic */ Object v;
    public final /* synthetic */ Object w;
    public final /* synthetic */ Object x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ f5(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, dh0 dh0Var, int i) {
        super(2, dh0Var);
        this.r = i;
        this.s = obj;
        this.t = obj2;
        this.f92u = obj3;
        this.v = obj4;
        this.w = obj5;
        this.x = obj6;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
            case 0:
                ((f5) o(dh0Var, qi0Var)).q(t64Var);
                break;
            case 1:
                ((f5) o(dh0Var, qi0Var)).q(t64Var);
                break;
            default:
                ((f5) o(dh0Var, qi0Var)).q(t64Var);
                break;
        }
        return t64Var;
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        Object obj2 = this.x;
        Object obj3 = this.w;
        Object obj4 = this.v;
        Object obj5 = this.f92u;
        Object obj6 = this.t;
        switch (i) {
            case 0:
                return new f5((s33) this.s, (e4) obj6, (e4) obj5, (String) obj4, (y3) obj3, (ne1) obj2, dh0Var, 0);
            case 1:
                f5 f5Var = new f5((pd) obj6, (List) obj5, (ts2) obj4, (ss2) obj3, (pd) obj2, dh0Var);
                f5Var.s = obj;
                return f5Var;
            default:
                return new f5((n14) this.s, (xi2) obj6, (yh2) obj5, (bg2) obj4, (tr3) obj3, (wa0) obj2, dh0Var, 2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00f1  */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r25) {
        /*
            Method dump skipped, instruction units count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.f5.q(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f5(pd pdVar, List list, ts2 ts2Var, ss2 ss2Var, pd pdVar2, dh0 dh0Var) {
        super(2, dh0Var);
        this.r = 1;
        this.t = pdVar;
        this.f92u = list;
        this.v = ts2Var;
        this.w = ss2Var;
        this.x = pdVar2;
    }
}

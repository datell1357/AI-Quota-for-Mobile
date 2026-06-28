package defpackage;

import u.sage.worker.RollingWindowWorker;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s93 extends bv3 implements df1 {
    public final /* synthetic */ int r = 1;
    public int s;
    public boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Object f312u;
    public Object v;
    public final /* synthetic */ Object w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s93(pd pdVar, boolean z, yq3 yq3Var, ne1 ne1Var, dh0 dh0Var) {
        super(2, dh0Var);
        this.f312u = pdVar;
        this.t = z;
        this.v = yq3Var;
        this.w = ne1Var;
    }

    @Override // defpackage.df1
    public final Object f(Object obj, Object obj2) {
        int i = this.r;
        t64 t64Var = t64.a;
        qi0 qi0Var = (qi0) obj;
        dh0 dh0Var = (dh0) obj2;
        switch (i) {
        }
        return ((s93) o(dh0Var, qi0Var)).q(t64Var);
    }

    @Override // defpackage.dr
    public final dh0 o(dh0 dh0Var, Object obj) {
        int i = this.r;
        Object obj2 = this.w;
        switch (i) {
            case 0:
                return new s93((RollingWindowWorker) obj2, dh0Var);
            default:
                return new s93((pd) this.f312u, this.t, (yq3) this.v, (ne1) obj2, dh0Var);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00ce  */
    @Override // defpackage.dr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(java.lang.Object r11) {
        /*
            Method dump skipped, instruction units count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.s93.q(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s93(RollingWindowWorker rollingWindowWorker, dh0 dh0Var) {
        super(2, dh0Var);
        this.w = rollingWindowWorker;
    }
}

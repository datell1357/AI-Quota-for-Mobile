package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class p64 extends bv3 implements gf1 {
    public int r;
    public /* synthetic */ Throwable s;
    public /* synthetic */ long t;

    @Override // defpackage.gf1
    public final Object n(Object obj, Object obj2, Object obj3, Object obj4) {
        long jLongValue = ((Number) obj3).longValue();
        p64 p64Var = new p64(4, (dh0) obj4);
        p64Var.s = (Throwable) obj2;
        p64Var.t = jLongValue;
        return p64Var.q(t64.a);
    }

    @Override // defpackage.dr
    public final Object q(Object obj) {
        int i = this.r;
        if (i == 0) {
            gg4.T(obj);
            Throwable th = this.s;
            long j = this.t;
            t72.g().f(q64.a, "Cannot check for unfinished work", th);
            long jMin = Math.min(j * 30000, q64.b);
            this.r = 1;
            Object objA = zf5.A(jMin, this);
            ri0 ri0Var = ri0.n;
            if (objA == ri0Var) {
                return ri0Var;
            }
        } else {
            if (i != 1) {
                k21.n("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            gg4.T(obj);
        }
        return Boolean.TRUE;
    }
}

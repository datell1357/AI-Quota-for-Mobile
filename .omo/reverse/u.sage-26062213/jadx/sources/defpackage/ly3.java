package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ly3 implements fi0 {
    public final Object n;
    public final ThreadLocal o;
    public final ny3 p;

    public ly3(vw2 vw2Var, ThreadLocal threadLocal) {
        this.n = vw2Var;
        this.o = threadLocal;
        this.p = new ny3(threadLocal);
    }

    @Override // defpackage.hi0
    public final hi0 F(hi0 hi0Var) {
        return ca.B(this, hi0Var);
    }

    @Override // defpackage.hi0
    public final fi0 K(gi0 gi0Var) {
        if (this.p.equals(gi0Var)) {
            return this;
        }
        return null;
    }

    @Override // defpackage.hi0
    public final Object R(df1 df1Var, Object obj) {
        return df1Var.f(obj, this);
    }

    @Override // defpackage.hi0
    public final hi0 Y(gi0 gi0Var) {
        return this.p.equals(gi0Var) ? d01.n : this;
    }

    public final void a(Object obj) {
        this.o.set(obj);
    }

    public final Object c() {
        ThreadLocal threadLocal = this.o;
        Object obj = threadLocal.get();
        threadLocal.set(this.n);
        return obj;
    }

    @Override // defpackage.fi0
    public final gi0 getKey() {
        return this.p;
    }

    public final String toString() {
        return "ThreadLocal(value=" + this.n + ", threadLocal = " + this.o + ')';
    }
}

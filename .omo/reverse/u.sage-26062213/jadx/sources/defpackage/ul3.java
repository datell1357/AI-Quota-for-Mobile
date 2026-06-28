package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ul3 implements jv0 {
    public final wl3 n;
    public final long o;
    public final Object p;
    public final o20 q;

    public ul3(wl3 wl3Var, long j, Object obj, o20 o20Var) {
        this.n = wl3Var;
        this.o = j;
        this.p = obj;
        this.q = o20Var;
    }

    @Override // defpackage.jv0
    public final void a() {
        wl3 wl3Var = this.n;
        synchronized (wl3Var) {
            if (this.o < wl3Var.o()) {
                return;
            }
            Object[] objArr = wl3Var.f400u;
            objArr.getClass();
            long j = this.o;
            if (objArr[((int) j) & (objArr.length - 1)] != this) {
                return;
            }
            xl3.b(objArr, j, xl3.a);
            wl3Var.i();
        }
    }
}

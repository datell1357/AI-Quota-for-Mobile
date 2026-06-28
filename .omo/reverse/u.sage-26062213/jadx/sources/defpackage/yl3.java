package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yl3 extends e2 {
    public long a;
    public o20 b;

    @Override // defpackage.e2
    public final boolean a(d2 d2Var) {
        wl3 wl3Var = (wl3) d2Var;
        if (this.a >= 0) {
            return false;
        }
        long j = wl3Var.v;
        if (j < wl3Var.w) {
            wl3Var.w = j;
        }
        this.a = j;
        return true;
    }

    @Override // defpackage.e2
    public final dh0[] b(d2 d2Var) {
        long j = this.a;
        this.a = -1L;
        this.b = null;
        return ((wl3) d2Var).v(j);
    }
}

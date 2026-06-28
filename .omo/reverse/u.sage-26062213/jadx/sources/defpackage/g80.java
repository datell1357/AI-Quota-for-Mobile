package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g80 implements cx3 {
    public final long n;

    public g80(long j) {
        this.n = j;
        if (j != 16) {
            return;
        }
        br1.a("ColorStyle value must be specified, use TextForegroundStyle.Unspecified instead.");
    }

    @Override // defpackage.cx3
    public final float c() {
        return t70.d(this.n);
    }

    @Override // defpackage.cx3
    public final long d() {
        return this.n;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g80) && t70.c(this.n, ((g80) obj).n);
    }

    @Override // defpackage.cx3
    public final zf5 g() {
        return null;
    }

    public final int hashCode() {
        int i = t70.g;
        return Long.hashCode(this.n);
    }

    public final String toString() {
        return di0.v("ColorStyle(value=", t70.i(this.n), ")");
    }
}

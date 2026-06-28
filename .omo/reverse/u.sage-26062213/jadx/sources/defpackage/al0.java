package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class al0 extends nt1 {
    public final aw i;

    public al0(aw awVar) {
        this.i = awVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof al0) && nt1.g(this.i, ((al0) obj).i);
    }

    @Override // defpackage.nt1
    public final int f(int i, int i2, hy1 hy1Var) {
        return this.i.a(i2, i, hy1Var);
    }

    public final int hashCode() {
        return Float.hashCode(this.i.a);
    }

    public final String toString() {
        return "HorizontalCrossAxisAlignment(horizontal=" + this.i + ")";
    }
}

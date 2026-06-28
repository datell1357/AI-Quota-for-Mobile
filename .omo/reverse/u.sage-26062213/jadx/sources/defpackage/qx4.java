package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qx4 extends px4 {
    public final Object n;

    public qx4(Object obj) {
        this.n = obj;
    }

    @Override // defpackage.px4
    public final Object a() {
        return this.n;
    }

    @Override // defpackage.px4
    public final boolean b() {
        return true;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof qx4) {
            return this.n.equals(((qx4) obj).n);
        }
        return false;
    }

    public final int hashCode() {
        return this.n.hashCode() + 1502476572;
    }

    public final String toString() {
        return di0.v("Optional.of(", this.n.toString(), ")");
    }
}

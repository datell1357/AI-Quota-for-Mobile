package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o8 extends qn0 {
    public final int k;

    public o8(int i) {
        this.k = i;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof o8) && ((o8) obj).k == this.k;
    }

    public final int hashCode() {
        return this.k * 31;
    }
}

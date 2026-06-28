package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ms1 extends ks1 {
    public static final ms1 q = new ms1(1, 0, 1);

    @Override // defpackage.ks1
    public final boolean equals(Object obj) {
        if (!(obj instanceof ms1)) {
            return false;
        }
        if (isEmpty() && ((ms1) obj).isEmpty()) {
            return true;
        }
        ms1 ms1Var = (ms1) obj;
        return this.n == ms1Var.n && this.o == ms1Var.o;
    }

    @Override // defpackage.ks1
    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.n * 31) + this.o;
    }

    @Override // defpackage.ks1
    public final boolean isEmpty() {
        return this.n > this.o;
    }

    @Override // defpackage.ks1
    public final String toString() {
        return this.n + ".." + this.o;
    }
}

package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ds0 implements as0 {
    public final float n;
    public final float o;

    public ds0(float f, float f2) {
        this.n = f;
        this.o = f2;
    }

    @Override // defpackage.as0
    public final float b() {
        return this.n;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ds0)) {
            return false;
        }
        ds0 ds0Var = (ds0) obj;
        return Float.compare(this.n, ds0Var.n) == 0 && Float.compare(this.o, ds0Var.o) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.o) + (Float.hashCode(this.n) * 31);
    }

    @Override // defpackage.as0
    public final float k() {
        return this.o;
    }

    public final String toString() {
        return "DensityImpl(density=" + this.n + ", fontScale=" + this.o + ")";
    }
}

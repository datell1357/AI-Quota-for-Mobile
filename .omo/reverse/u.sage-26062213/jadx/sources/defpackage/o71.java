package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o71 {
    public final float a;
    public final float b;
    public final long c;

    public o71(float f, float f2, long j) {
        this.a = f;
        this.b = f2;
        this.c = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o71)) {
            return false;
        }
        o71 o71Var = (o71) obj;
        return Float.compare(this.a, o71Var.a) == 0 && Float.compare(this.b, o71Var.b) == 0 && this.c == o71Var.c;
    }

    public final int hashCode() {
        return Long.hashCode(this.c) + di0.l(this.b, Float.hashCode(this.a) * 31, 31);
    }

    public final String toString() {
        return di0.x(di0.z("FlingInfo(initialVelocity=", this.a, ", distance=", this.b, ", duration="), this.c, ")");
    }
}

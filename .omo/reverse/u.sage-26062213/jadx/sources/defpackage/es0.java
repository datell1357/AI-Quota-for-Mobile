package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class es0 implements as0 {
    public final float n;
    public final float o;
    public final kb1 p;

    public es0(float f, float f2, kb1 kb1Var) {
        this.n = f;
        this.o = f2;
        this.p = kb1Var;
    }

    @Override // defpackage.as0
    public final float G(long j) {
        if (dy3.a(cy3.b(j), 4294967296L)) {
            return this.p.b(cy3.c(j));
        }
        k21.n("Only Sp can convert to Px");
        return 0.0f;
    }

    @Override // defpackage.as0
    public final float b() {
        return this.n;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof es0)) {
            return false;
        }
        es0 es0Var = (es0) obj;
        return Float.compare(this.n, es0Var.n) == 0 && Float.compare(this.o, es0Var.o) == 0 && this.p.equals(es0Var.p);
    }

    public final int hashCode() {
        return this.p.hashCode() + di0.l(this.o, Float.hashCode(this.n) * 31, 31);
    }

    @Override // defpackage.as0
    public final float k() {
        return this.o;
    }

    @Override // defpackage.as0
    public final long s(float f) {
        return on4.F(this.p.a(f), 4294967296L);
    }

    public final String toString() {
        StringBuilder sbZ = di0.z("DensityWithConverter(density=", this.n, ", fontScale=", this.o, ", converter=");
        sbZ.append(this.p);
        sbZ.append(")");
        return sbZ.toString();
    }
}

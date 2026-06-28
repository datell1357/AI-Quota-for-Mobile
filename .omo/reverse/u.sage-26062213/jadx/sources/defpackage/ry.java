package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ry implements cx3 {
    public final qy n;
    public final float o;

    public ry(qy qyVar, float f) {
        this.n = qyVar;
        this.o = f;
    }

    @Override // defpackage.cx3
    public final float c() {
        return this.o;
    }

    @Override // defpackage.cx3
    public final long d() {
        int i = t70.g;
        return t70.f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ry)) {
            return false;
        }
        ry ryVar = (ry) obj;
        return nt1.g(this.n, ryVar.n) && Float.compare(this.o, ryVar.o) == 0;
    }

    @Override // defpackage.cx3
    public final zf5 g() {
        return this.n;
    }

    public final int hashCode() {
        return Float.hashCode(this.o) + (this.n.hashCode() * 31);
    }

    public final String toString() {
        return "BrushStyle(value=" + this.n + ", alpha=" + this.o + ")";
    }
}

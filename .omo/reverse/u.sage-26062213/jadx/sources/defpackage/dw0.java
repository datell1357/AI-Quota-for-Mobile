package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dw0 implements ci0 {
    public final float a;

    public dw0(float f) {
        this.a = f;
    }

    @Override // defpackage.ci0
    public final float a(long j, as0 as0Var) {
        return as0Var.v(this.a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof dw0) && cw0.b(this.a, ((dw0) obj).a);
    }

    public final int hashCode() {
        return Float.hashCode(this.a);
    }

    public final String toString() {
        return "CornerSize(size = " + this.a + ".dp)";
    }
}

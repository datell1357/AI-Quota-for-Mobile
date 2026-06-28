package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class eu2 implements ci0 {
    public final float a;

    public eu2(float f) {
        this.a = f;
        if (f < 0.0f || f > 100.0f) {
            dr1.a("The percent should be in the range of [0, 100]");
        }
    }

    @Override // defpackage.ci0
    public final float a(long j, as0 as0Var) {
        return (this.a / 100.0f) * mn3.b(j);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof eu2) && Float.compare(this.a, ((eu2) obj).a) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.a);
    }

    public final String toString() {
        return "CornerSize(size = " + this.a + "%)";
    }
}

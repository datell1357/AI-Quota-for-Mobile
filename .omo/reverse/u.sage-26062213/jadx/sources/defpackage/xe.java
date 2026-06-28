package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xe extends bf {
    public float a;

    public xe(float f) {
        this.a = f;
    }

    @Override // defpackage.bf
    public final float a(int i) {
        if (i == 0) {
            return this.a;
        }
        return 0.0f;
    }

    @Override // defpackage.bf
    public final int b() {
        return 1;
    }

    @Override // defpackage.bf
    public final bf c() {
        return new xe(0.0f);
    }

    @Override // defpackage.bf
    public final void d() {
        this.a = 0.0f;
    }

    @Override // defpackage.bf
    public final void e(int i, float f) {
        if (i == 0) {
            this.a = f;
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof xe) && ((xe) obj).a == this.a;
    }

    public final int hashCode() {
        return Float.hashCode(this.a);
    }

    public final String toString() {
        return "AnimationVector1D: value = " + this.a;
    }
}

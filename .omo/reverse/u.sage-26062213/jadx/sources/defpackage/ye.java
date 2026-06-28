package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ye extends bf {
    public float a;
    public float b;

    public ye(float f, float f2) {
        this.a = f;
        this.b = f2;
    }

    @Override // defpackage.bf
    public final float a(int i) {
        if (i == 0) {
            return this.a;
        }
        if (i != 1) {
            return 0.0f;
        }
        return this.b;
    }

    @Override // defpackage.bf
    public final int b() {
        return 2;
    }

    @Override // defpackage.bf
    public final bf c() {
        return new ye(0.0f, 0.0f);
    }

    @Override // defpackage.bf
    public final void d() {
        this.a = 0.0f;
        this.b = 0.0f;
    }

    @Override // defpackage.bf
    public final void e(int i, float f) {
        if (i == 0) {
            this.a = f;
        } else {
            if (i != 1) {
                return;
            }
            this.b = f;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ye)) {
            return false;
        }
        ye yeVar = (ye) obj;
        return yeVar.a == this.a && yeVar.b == this.b;
    }

    public final int hashCode() {
        return Float.hashCode(this.b) + (Float.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "AnimationVector2D: v1 = " + this.a + ", v2 = " + this.b;
    }
}

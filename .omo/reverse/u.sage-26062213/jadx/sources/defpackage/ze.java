package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ze extends bf {
    public float a;
    public float b;
    public float c;

    public ze(float f, float f2, float f3) {
        this.a = f;
        this.b = f2;
        this.c = f3;
    }

    @Override // defpackage.bf
    public final float a(int i) {
        if (i == 0) {
            return this.a;
        }
        if (i == 1) {
            return this.b;
        }
        if (i != 2) {
            return 0.0f;
        }
        return this.c;
    }

    @Override // defpackage.bf
    public final int b() {
        return 3;
    }

    @Override // defpackage.bf
    public final bf c() {
        return new ze(0.0f, 0.0f, 0.0f);
    }

    @Override // defpackage.bf
    public final void d() {
        this.a = 0.0f;
        this.b = 0.0f;
        this.c = 0.0f;
    }

    @Override // defpackage.bf
    public final void e(int i, float f) {
        if (i == 0) {
            this.a = f;
        } else if (i == 1) {
            this.b = f;
        } else {
            if (i != 2) {
                return;
            }
            this.c = f;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ze)) {
            return false;
        }
        ze zeVar = (ze) obj;
        return zeVar.a == this.a && zeVar.b == this.b && zeVar.c == this.c;
    }

    public final int hashCode() {
        return Float.hashCode(this.c) + di0.l(this.b, Float.hashCode(this.a) * 31, 31);
    }

    public final String toString() {
        float f = this.a;
        float f2 = this.b;
        float f3 = this.c;
        StringBuilder sbZ = di0.z("AnimationVector3D: v1 = ", f, ", v2 = ", f2, ", v3 = ");
        sbZ.append(f3);
        return sbZ.toString();
    }
}

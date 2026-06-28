package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class af extends bf {
    public float a;
    public float b;
    public float c;
    public float d;

    public af(float f, float f2, float f3, float f4) {
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
    }

    @Override // defpackage.bf
    public final float a(int i) {
        if (i == 0) {
            return this.a;
        }
        if (i == 1) {
            return this.b;
        }
        if (i == 2) {
            return this.c;
        }
        if (i != 3) {
            return 0.0f;
        }
        return this.d;
    }

    @Override // defpackage.bf
    public final int b() {
        return 4;
    }

    @Override // defpackage.bf
    public final bf c() {
        return new af(0.0f, 0.0f, 0.0f, 0.0f);
    }

    @Override // defpackage.bf
    public final void d() {
        this.a = 0.0f;
        this.b = 0.0f;
        this.c = 0.0f;
        this.d = 0.0f;
    }

    @Override // defpackage.bf
    public final void e(int i, float f) {
        if (i == 0) {
            this.a = f;
            return;
        }
        if (i == 1) {
            this.b = f;
        } else if (i == 2) {
            this.c = f;
        } else {
            if (i != 3) {
                return;
            }
            this.d = f;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof af)) {
            return false;
        }
        af afVar = (af) obj;
        return afVar.a == this.a && afVar.b == this.b && afVar.c == this.c && afVar.d == this.d;
    }

    public final int hashCode() {
        return Float.hashCode(this.d) + di0.l(this.c, di0.l(this.b, Float.hashCode(this.a) * 31, 31), 31);
    }

    public final String toString() {
        float f = this.a;
        float f2 = this.b;
        float f3 = this.c;
        float f4 = this.d;
        StringBuilder sbZ = di0.z("AnimationVector4D: v1 = ", f, ", v2 = ", f2, ", v3 = ");
        sbZ.append(f3);
        sbZ.append(", v4 = ");
        sbZ.append(f4);
        return sbZ.toString();
    }
}

package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yq3 implements z51 {
    public final float a;
    public final float b;
    public final Object c;

    public /* synthetic */ yq3(int i, Object obj) {
        this(1.0f, 1500.0f, (i & 4) != 0 ? null : obj);
    }

    @Override // defpackage.ve
    public final ia4 a(e34 e34Var) {
        Object obj = this.c;
        return new dd1(this.a, this.b, obj == null ? null : (bf) e34Var.a.k(obj));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof yq3) {
            yq3 yq3Var = (yq3) obj;
            if (yq3Var.a == this.a && yq3Var.b == this.b && nt1.g(yq3Var.c, this.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.c;
        return Float.hashCode(this.b) + di0.l(this.a, (obj != null ? obj.hashCode() : 0) * 31, 31);
    }

    public yq3(float f, float f2, Object obj) {
        this.a = f;
        this.b = f2;
        this.c = obj;
    }
}

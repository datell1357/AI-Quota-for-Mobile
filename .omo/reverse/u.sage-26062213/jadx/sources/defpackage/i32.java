package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i32 {
    public static final i32 d = new i32(f32.c, 17, 0);
    public final float a;
    public final int b;
    public final int c;

    public i32(float f, int i, int i2) {
        this.a = f;
        this.b = i;
        this.c = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i32)) {
            return false;
        }
        i32 i32Var = (i32) obj;
        float f = i32Var.a;
        float f2 = f32.b;
        return Float.compare(this.a, f) == 0 && this.b == i32Var.b && this.c == i32Var.c;
    }

    public final int hashCode() {
        float f = f32.b;
        return Integer.hashCode(this.c) + xw1.j(this.b, Float.hashCode(this.a) * 31, 31);
    }

    public final String toString() {
        String strB = f32.b(this.a);
        String str = "Invalid";
        int i = this.b;
        String str2 = i == 1 ? "LineHeightStyle.Trim.FirstLineTop" : i == 16 ? "LineHeightStyle.Trim.LastLineBottom" : i == 17 ? "LineHeightStyle.Trim.Both" : i == 0 ? "LineHeightStyle.Trim.None" : "Invalid";
        int i2 = this.c;
        if (i2 == 0) {
            str = "LineHeightStyle.Mode.Fixed";
        } else if (i2 == 1) {
            str = "LineHeightStyle.Mode.Minimum";
        } else if (i2 == 2) {
            str = "LineHeightStyle.Mode.Tight";
        }
        return xw1.s(di0.B("LineHeightStyle(alignment=", strB, ", trim=", str2, ",mode="), str, ")");
    }
}

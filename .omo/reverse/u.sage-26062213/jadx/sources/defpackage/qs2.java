package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qs2 implements df {
    public final int a;
    public final int b;
    public final long c;
    public final gx3 d;
    public final mv2 e;
    public final i32 f;
    public final int g;
    public final int h;
    public final sx3 i;

    public qs2(int i, int i2, long j, gx3 gx3Var, mv2 mv2Var, i32 i32Var, int i3, int i4, sx3 sx3Var) {
        this.a = i;
        this.b = i2;
        this.c = j;
        this.d = gx3Var;
        this.e = mv2Var;
        this.f = i32Var;
        this.g = i3;
        this.h = i4;
        this.i = sx3Var;
        if (cy3.a(j, cy3.c) || cy3.c(j) >= 0.0f) {
            return;
        }
        br1.b("lineHeight can't be negative (" + cy3.c(j) + ")");
    }

    public final qs2 a(qs2 qs2Var) {
        return qs2Var == null ? this : rs2.a(this, qs2Var.a, qs2Var.b, qs2Var.c, qs2Var.d, qs2Var.e, qs2Var.f, qs2Var.g, qs2Var.h, qs2Var.i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qs2)) {
            return false;
        }
        qs2 qs2Var = (qs2) obj;
        return this.a == qs2Var.a && this.b == qs2Var.b && cy3.a(this.c, qs2Var.c) && nt1.g(this.d, qs2Var.d) && nt1.g(this.e, qs2Var.e) && nt1.g(this.f, qs2Var.f) && this.g == qs2Var.g && this.h == qs2Var.h && nt1.g(this.i, qs2Var.i);
    }

    public final int hashCode() {
        int iJ = xw1.j(this.b, Integer.hashCode(this.a) * 31, 31);
        dy3[] dy3VarArr = cy3.b;
        int iL = xw1.l(iJ, 31, this.c);
        gx3 gx3Var = this.d;
        int iHashCode = (iL + (gx3Var != null ? gx3Var.hashCode() : 0)) * 31;
        mv2 mv2Var = this.e;
        int iHashCode2 = (iHashCode + (mv2Var != null ? mv2Var.hashCode() : 0)) * 31;
        i32 i32Var = this.f;
        int iJ2 = xw1.j(this.h, xw1.j(this.g, (iHashCode2 + (i32Var != null ? i32Var.hashCode() : 0)) * 31, 31), 31);
        sx3 sx3Var = this.i;
        return iJ2 + (sx3Var != null ? sx3Var.hashCode() : 0);
    }

    public final String toString() {
        String strA = vw3.a(this.a);
        String strA2 = ax3.a(this.b);
        String strD = cy3.d(this.c);
        String strA3 = d32.a(this.g);
        String strA4 = gn1.a(this.h);
        StringBuilder sbB = di0.B("ParagraphStyle(textAlign=", strA, ", textDirection=", strA2, ", lineHeight=");
        sbB.append(strD);
        sbB.append(", textIndent=");
        sbB.append(this.d);
        sbB.append(", platformStyle=");
        sbB.append(this.e);
        sbB.append(", lineHeightStyle=");
        sbB.append(this.f);
        sbB.append(", lineBreak=");
        di0.E(sbB, strA3, ", hyphens=", strA4, ", textMotion=");
        sbB.append(this.i);
        sbB.append(")");
        return sbB.toString();
    }
}

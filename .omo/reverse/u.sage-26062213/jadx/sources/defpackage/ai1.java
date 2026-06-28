package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class ai1 extends rd2 {
    public final float b;
    public final float c;
    public final float d;
    public final float e;
    public final long f;
    public final jl3 g;
    public final boolean h;
    public final long i;
    public final long j;
    public final by1 k;

    public ai1(float f, float f2, float f3, float f4, long j, jl3 jl3Var, boolean z, long j2, long j3, by1 by1Var) {
        this.b = f;
        this.c = f2;
        this.d = f3;
        this.e = f4;
        this.f = j;
        this.g = jl3Var;
        this.h = z;
        this.i = j2;
        this.j = j3;
        this.k = by1Var;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        xm3 xm3Var = new xm3();
        xm3Var.B = this.b;
        xm3Var.C = this.c;
        xm3Var.D = this.d;
        xm3Var.E = this.e;
        xm3Var.F = 8.0f;
        xm3Var.G = this.f;
        xm3Var.H = this.g;
        xm3Var.I = this.h;
        xm3Var.J = this.i;
        xm3Var.K = this.j;
        xm3Var.L = 3;
        xm3Var.M = this.k;
        xm3Var.N = new c8(23, xm3Var);
        return xm3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ai1)) {
            return false;
        }
        ai1 ai1Var = (ai1) obj;
        return Float.compare(this.b, ai1Var.b) == 0 && Float.compare(this.c, ai1Var.c) == 0 && Float.compare(this.d, ai1Var.d) == 0 && Float.compare(0.0f, 0.0f) == 0 && Float.compare(0.0f, 0.0f) == 0 && Float.compare(this.e, ai1Var.e) == 0 && Float.compare(0.0f, 0.0f) == 0 && Float.compare(0.0f, 0.0f) == 0 && Float.compare(0.0f, 0.0f) == 0 && Float.compare(8.0f, 8.0f) == 0 && f14.a(this.f, ai1Var.f) && nt1.g(this.g, ai1Var.g) && this.h == ai1Var.h && t70.c(this.i, ai1Var.i) && t70.c(this.j, ai1Var.j) && nt1.g(this.k, ai1Var.k);
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        mm2 mm2Var;
        xm3 xm3Var = (xm3) md2Var;
        xm3Var.B = this.b;
        xm3Var.C = this.c;
        xm3Var.D = this.d;
        xm3Var.E = this.e;
        xm3Var.F = 8.0f;
        xm3Var.G = this.f;
        xm3Var.H = this.g;
        xm3Var.I = this.h;
        xm3Var.J = this.i;
        xm3Var.K = this.j;
        xm3Var.L = 3;
        xm3Var.M = this.k;
        c8 c8Var = xm3Var.N;
        if (xm3Var.n.A && (mm2Var = w80.P(xm3Var, 2).G) != null) {
            mm2Var.k1(c8Var, true);
        }
    }

    public final int hashCode() {
        int iL = di0.l(8.0f, di0.l(0.0f, di0.l(0.0f, di0.l(0.0f, di0.l(this.e, di0.l(0.0f, di0.l(0.0f, di0.l(this.d, di0.l(this.c, Float.hashCode(this.b) * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31);
        int i = f14.c;
        int iN = xw1.n((this.g.hashCode() + xw1.l(iL, 31, this.f)) * 31, this.h, 961);
        int i2 = t70.g;
        return this.k.hashCode() + xw1.j(3, xw1.j(0, xw1.l(xw1.l(iN, 31, this.i), 31, this.j), 31), 961);
    }

    public final String toString() {
        String strB = f14.b(this.f);
        String strI = t70.i(this.i);
        String strI2 = t70.i(this.j);
        String strI3 = k30.I(3);
        StringBuilder sbZ = di0.z("GraphicsLayerElement(scaleX=", this.b, ", scaleY=", this.c, ", alpha=");
        sbZ.append(this.d);
        sbZ.append(", translationX=0.0, translationY=0.0, shadowElevation=");
        sbZ.append(this.e);
        sbZ.append(", rotationX=0.0, rotationY=0.0, rotationZ=0.0, cameraDistance=8.0, transformOrigin=");
        sbZ.append(strB);
        sbZ.append(", shape=");
        sbZ.append(this.g);
        sbZ.append(", clip=");
        sbZ.append(this.h);
        sbZ.append(", renderEffect=null, ambientShadowColor=");
        sbZ.append(strI);
        sbZ.append(", spotShadowColor=");
        di0.E(sbZ, strI2, ", compositingStrategy=CompositingStrategy(value=0), blendMode=", strI3, ", colorFilter=null, outsets=");
        sbZ.append(this.k);
        sbZ.append(")");
        return sbZ.toString();
    }
}

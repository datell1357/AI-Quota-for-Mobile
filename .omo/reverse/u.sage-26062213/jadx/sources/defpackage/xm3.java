package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xm3 extends md2 implements oy1, eh3 {
    public float B;
    public float C;
    public float D;
    public float E;
    public float F;
    public long G;
    public jl3 H;
    public boolean I;
    public long J;
    public long K;
    public int L;
    public by1 M;
    public c8 N;

    @Override // defpackage.eh3
    public final void a0(ph3 ph3Var) {
        if (this.I) {
            nh3.d(ph3Var, this.H);
        }
    }

    @Override // defpackage.eh3
    public final boolean g() {
        return false;
    }

    @Override // defpackage.oy1
    public final eb2 h0(gb2 gb2Var, ya2 ya2Var, long j) {
        dv2 dv2VarE = ya2Var.e(j);
        return gb2Var.e0(dv2VarE.n, dv2VarE.o, h01.n, new oc(7, dv2VarE, this));
    }

    public final String toString() {
        float f = this.B;
        float f2 = this.C;
        float f3 = this.D;
        float f4 = this.E;
        float f5 = this.F;
        String strB = f14.b(this.G);
        jl3 jl3Var = this.H;
        boolean z = this.I;
        String strI = t70.i(this.J);
        String strI2 = t70.i(this.K);
        String strI3 = k30.I(this.L);
        by1 by1Var = this.M;
        StringBuilder sbZ = di0.z("SimpleGraphicsLayerModifier(scaleX=", f, ", scaleY=", f2, ", alpha = ");
        sbZ.append(f3);
        sbZ.append(", translationX=0.0, translationY=0.0, shadowElevation=");
        sbZ.append(f4);
        sbZ.append(", rotationX=0.0, rotationY=0.0, rotationZ=0.0, cameraDistance=");
        sbZ.append(f5);
        sbZ.append(", transformOrigin=");
        sbZ.append(strB);
        sbZ.append(", shape=");
        sbZ.append(jl3Var);
        sbZ.append(", clip=");
        sbZ.append(z);
        sbZ.append(", renderEffect=null, ambientShadowColor=");
        di0.E(sbZ, strI, ", spotShadowColor=", strI2, ", compositingStrategy=CompositingStrategy(value=0), blendMode=");
        sbZ.append(strI3);
        sbZ.append(", colorFilter=nulloutsets=");
        sbZ.append(by1Var);
        sbZ.append(")");
        return sbZ.toString();
    }

    @Override // defpackage.md2
    public final boolean v0() {
        return false;
    }
}

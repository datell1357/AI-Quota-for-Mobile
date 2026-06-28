package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bz3 extends md2 implements oy1 {
    public xs1 B;
    public boolean C;
    public yq3 D;
    public boolean E;
    public pd F;
    public pd G;
    public float H;
    public float I;

    @Override // defpackage.md2
    public final void A0() {
        this.F = null;
        this.G = null;
        this.I = Float.NaN;
        this.H = Float.NaN;
    }

    @Override // defpackage.oy1
    public final eb2 h0(gb2 gb2Var, ya2 ya2Var, long j) {
        float f = gg4.x;
        int i = 0;
        int i2 = 1;
        float fV = gb2Var.v(this.E ? gg4.q : ((ya2Var.g(mf0.h(j)) != 0 && ya2Var.R(mf0.g(j)) != 0) || this.C) ? jv3.a : jv3.b);
        pd pdVar = this.G;
        int iFloatValue = (int) (pdVar != null ? ((Number) pdVar.d()).floatValue() : fV);
        if (!((iFloatValue >= 0) & (iFloatValue >= 0))) {
            cr1.a("width and height must be >= 0");
        }
        dv2 dv2VarE = ya2Var.e(nf0.g(iFloatValue, iFloatValue, iFloatValue, iFloatValue));
        float fV2 = gb2Var.v((jv3.d - gb2Var.r0(fV)) / 2.0f);
        float fV3 = gb2Var.v((jv3.c - jv3.a) - jv3.e);
        boolean z = this.E;
        if (z && this.C) {
            fV2 = fV3 - gb2Var.v(f);
        } else if (z && !this.C) {
            fV2 = gb2Var.v(f);
        } else if (this.C) {
            fV2 = fV3;
        }
        pd pdVar2 = this.G;
        dh0 dh0Var = null;
        Float f2 = pdVar2 != null ? (Float) pdVar2.e.getValue() : null;
        if (f2 == null || f2.floatValue() != fV) {
            ca.y(u0(), null, null, new az3(this, fV, dh0Var, i), 3);
        }
        pd pdVar3 = this.F;
        Float f3 = pdVar3 != null ? (Float) pdVar3.e.getValue() : null;
        if (f3 == null || f3.floatValue() != fV2) {
            ca.y(u0(), null, null, new az3(this, fV2, dh0Var, i2), 3);
        }
        if (Float.isNaN(this.I) && Float.isNaN(this.H)) {
            this.I = fV;
            this.H = fV2;
        }
        return gb2Var.e0(iFloatValue, iFloatValue, h01.n, new q02(dv2VarE, this, fV2));
    }

    @Override // defpackage.md2
    public final boolean v0() {
        return false;
    }

    @Override // defpackage.md2
    public final void y0() {
        ca.y(u0(), null, null, new x50(this, (dh0) null, 20), 3);
    }
}

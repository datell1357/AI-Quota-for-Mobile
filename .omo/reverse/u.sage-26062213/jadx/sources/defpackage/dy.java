package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dy extends md2 implements xx, ey1 {
    public fg0 B;
    public boolean C;

    public static final l33 G0(dy dyVar, mm2 mm2Var, j9 j9Var) {
        l33 l33Var;
        if (dyVar.A && dyVar.C) {
            mm2 mm2VarQ = w80.Q(dyVar);
            if (!mm2Var.O0().A) {
                mm2Var = null;
            }
            if (mm2Var != null && (l33Var = (l33) j9Var.a()) != null) {
                l33 l33VarH = mm2VarQ.H(mm2Var, false);
                return l33Var.e((((long) Float.floatToRawIntBits(l33VarH.b)) & 4294967295L) | (((long) Float.floatToRawIntBits(l33VarH.a)) << 32));
            }
        }
        return null;
    }

    @Override // defpackage.xx
    public final Object j0(mm2 mm2Var, j9 j9Var, bv3 bv3Var) {
        Object objR = dm0.r(new cy(this, mm2Var, j9Var, new pp(this, mm2Var, j9Var, 1), null), bv3Var);
        return objR == ri0.n ? objR : t64.a;
    }

    @Override // defpackage.ey1
    public final void m(gy1 gy1Var) {
        this.C = true;
    }

    @Override // defpackage.md2
    public final boolean v0() {
        return false;
    }
}

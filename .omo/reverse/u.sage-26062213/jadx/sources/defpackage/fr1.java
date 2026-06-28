package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fr1 extends m82 {
    @Override // defpackage.m82
    public final void E0() {
        q82 q82Var = this.F.F.T.q;
        q82Var.getClass();
        q82Var.o0();
    }

    @Override // defpackage.ya2
    public final int K(int i) {
        xh1 xh1VarT = this.F.F.t();
        db2 db2VarQ = xh1VarT.q();
        xy1 xy1Var = (xy1) xh1VarT.n;
        return db2VarQ.i((mm2) xy1Var.S.e, xy1Var.l(), i);
    }

    @Override // defpackage.ya2
    public final int R(int i) {
        xh1 xh1VarT = this.F.F.t();
        db2 db2VarQ = xh1VarT.q();
        xy1 xy1Var = (xy1) xh1VarT.n;
        return db2VarQ.c((mm2) xy1Var.S.e, xy1Var.l(), i);
    }

    @Override // defpackage.ya2
    public final int T(int i) {
        xh1 xh1VarT = this.F.F.t();
        db2 db2VarQ = xh1VarT.q();
        xy1 xy1Var = (xy1) xh1VarT.n;
        return db2VarQ.g((mm2) xy1Var.S.e, xy1Var.l(), i);
    }

    @Override // defpackage.ya2
    public final dv2 e(long j) {
        h0(j);
        mm2 mm2Var = this.F;
        ug2 ug2VarZ = mm2Var.F.z();
        Object[] objArr = ug2VarZ.n;
        int i = ug2VarZ.p;
        for (int i2 = 0; i2 < i; i2++) {
            q82 q82Var = ((xy1) objArr[i2]).T.q;
            q82Var.getClass();
            q82Var.w = vy1.p;
        }
        xy1 xy1Var = mm2Var.F;
        m82.D0(this, xy1Var.J.f(this, xy1Var.l(), j));
        return this;
    }

    @Override // defpackage.ya2
    public final int g(int i) {
        xh1 xh1VarT = this.F.F.t();
        db2 db2VarQ = xh1VarT.q();
        xy1 xy1Var = (xy1) xh1VarT.n;
        return db2VarQ.a((mm2) xy1Var.S.e, xy1Var.l(), i);
    }

    @Override // defpackage.k82
    public final int k0(y7 y7Var) {
        q82 q82Var = this.F.F.T.q;
        q82Var.getClass();
        yy1 yy1Var = q82Var.E;
        if (!q82Var.x) {
            bz1 bz1Var = q82Var.s;
            if (bz1Var.d == ty1.o) {
                yy1Var.f = true;
                if (yy1Var.b) {
                    bz1Var.f = true;
                    bz1Var.g = true;
                }
            } else {
                yy1Var.g = true;
            }
        }
        fr1 fr1Var = q82Var.n().i0;
        Boolean boolValueOf = fr1Var != null ? Boolean.valueOf(fr1Var.B) : null;
        fr1 fr1Var2 = q82Var.n().i0;
        if (fr1Var2 != null) {
            fr1Var2.B = true;
        }
        q82Var.x();
        fr1 fr1Var3 = q82Var.n().i0;
        if (fr1Var3 != null) {
            fr1Var3.B = boolValueOf != null ? boolValueOf.booleanValue() : false;
        }
        Integer num = (Integer) yy1Var.i.get(y7Var);
        int iIntValue = num != null ? num.intValue() : Integer.MIN_VALUE;
        this.K.g(iIntValue, y7Var);
        return iIntValue;
    }
}

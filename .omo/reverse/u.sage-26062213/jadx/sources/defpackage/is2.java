package defpackage;

import com.google.android.gms.common.api.Api;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class is2 extends md2 implements oy1, jx0 {
    public gs2 B;
    public boolean C;
    public cw D;
    public qv3 E;
    public float F;
    public ow G;

    public static boolean H0(long j) {
        return !mn3.a(j, 9205357640488583168L) && (Float.floatToRawIntBits(Float.intBitsToFloat((int) (j & 4294967295L))) & Api.BaseClientBuilder.API_PRIORITY_OTHER) < 2139095040;
    }

    public static boolean I0(long j) {
        return !mn3.a(j, 9205357640488583168L) && (Float.floatToRawIntBits(Float.intBitsToFloat((int) (j >> 32))) & Api.BaseClientBuilder.API_PRIORITY_OTHER) < 2139095040;
    }

    public final boolean G0() {
        return this.C && this.B.h() != 9205357640488583168L;
    }

    public final long J0(long j) {
        boolean z = false;
        boolean z2 = mf0.d(j) && mf0.c(j);
        if (mf0.f(j) && mf0.e(j)) {
            z = true;
        }
        if ((!G0() && z2) || z) {
            return mf0.a(j, mf0.h(j), 0, mf0.g(j), 0, 10);
        }
        long jH = this.B.h();
        int iRound = I0(jH) ? Math.round(Float.intBitsToFloat((int) (jH >> 32))) : mf0.j(j);
        int iRound2 = H0(jH) ? Math.round(Float.intBitsToFloat((int) (jH & 4294967295L))) : mf0.i(j);
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(nf0.e(iRound2, j))) & 4294967295L) | (((long) Float.floatToRawIntBits(nf0.f(iRound, j))) << 32);
        if (G0()) {
            long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(!I0(this.B.h()) ? Float.intBitsToFloat((int) (jFloatToRawIntBits >> 32)) : Float.intBitsToFloat((int) (this.B.h() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(!H0(this.B.h()) ? Float.intBitsToFloat((int) (jFloatToRawIntBits & 4294967295L)) : Float.intBitsToFloat((int) (this.B.h() & 4294967295L)))) & 4294967295L);
            jFloatToRawIntBits = (Float.intBitsToFloat((int) (jFloatToRawIntBits >> 32)) == 0.0f || Float.intBitsToFloat((int) (jFloatToRawIntBits & 4294967295L)) == 0.0f) ? 0L : bi4.I(jFloatToRawIntBits2, this.E.e(jFloatToRawIntBits2, jFloatToRawIntBits));
        }
        return mf0.a(j, nf0.f(Math.round(Float.intBitsToFloat((int) (jFloatToRawIntBits >> 32))), j), 0, nf0.e(Math.round(Float.intBitsToFloat((int) (jFloatToRawIntBits & 4294967295L))), j), 0, 10);
    }

    @Override // defpackage.jx0
    public final void K(zy1 zy1Var) {
        x20 x20Var = zy1Var.n;
        long jH = this.B.h();
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(I0(jH) ? Float.intBitsToFloat((int) (jH >> 32)) : Float.intBitsToFloat((int) (x20Var.d() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(H0(jH) ? Float.intBitsToFloat((int) (jH & 4294967295L)) : Float.intBitsToFloat((int) (x20Var.d() & 4294967295L)))) & 4294967295L);
        long jI = (Float.intBitsToFloat((int) (x20Var.d() >> 32)) == 0.0f || Float.intBitsToFloat((int) (x20Var.d() & 4294967295L)) == 0.0f) ? 0L : bi4.I(jFloatToRawIntBits, this.E.e(jFloatToRawIntBits, x20Var.d()));
        long jA = this.D.a((((long) Math.round(Float.intBitsToFloat((int) (jI >> 32)))) << 32) | (((long) Math.round(Float.intBitsToFloat((int) (jI & 4294967295L)))) & 4294967295L), (((long) Math.round(Float.intBitsToFloat((int) (x20Var.d() >> 32)))) << 32) | (((long) Math.round(Float.intBitsToFloat((int) (x20Var.d() & 4294967295L)))) & 4294967295L), zy1Var.getLayoutDirection());
        float f = (int) (jA >> 32);
        float f2 = (int) (jA & 4294967295L);
        ((dh1) x20Var.o.o).t(f, f2);
        try {
            this.B.g(zy1Var, jI, this.F, this.G);
            ((dh1) x20Var.o.o).t(-f, -f2);
            zy1Var.a();
        } catch (Throwable th) {
            ((dh1) x20Var.o.o).t(-f, -f2);
            throw th;
        }
    }

    @Override // defpackage.oy1
    public final int O(k82 k82Var, ya2 ya2Var, int i) {
        if (!G0()) {
            return ya2Var.K(i);
        }
        long jJ0 = J0(nf0.b(0, i, 7));
        return Math.max(mf0.j(jJ0), ya2Var.K(i));
    }

    @Override // defpackage.oy1
    public final int e(k82 k82Var, ya2 ya2Var, int i) {
        if (!G0()) {
            return ya2Var.R(i);
        }
        long jJ0 = J0(nf0.b(0, i, 7));
        return Math.max(mf0.j(jJ0), ya2Var.R(i));
    }

    @Override // defpackage.oy1
    public final eb2 h0(gb2 gb2Var, ya2 ya2Var, long j) {
        dv2 dv2VarE = ya2Var.e(J0(j));
        return gb2Var.e0(dv2VarE.n, dv2VarE.o, h01.n, new e9(dv2VarE, 4));
    }

    @Override // defpackage.oy1
    public final int l(k82 k82Var, ya2 ya2Var, int i) {
        if (!G0()) {
            return ya2Var.g(i);
        }
        long jJ0 = J0(nf0.b(i, 0, 13));
        return Math.max(mf0.i(jJ0), ya2Var.g(i));
    }

    public final String toString() {
        return "PainterModifier(painter=" + this.B + ", sizeToIntrinsics=" + this.C + ", alignment=" + this.D + ", alpha=" + this.F + ", colorFilter=" + this.G + ")";
    }

    @Override // defpackage.md2
    public final boolean v0() {
        return false;
    }

    @Override // defpackage.oy1
    public final int y(k82 k82Var, ya2 ya2Var, int i) {
        if (!G0()) {
            return ya2Var.T(i);
        }
        long jJ0 = J0(nf0.b(i, 0, 13));
        return Math.max(mf0.i(jJ0), ya2Var.T(i));
    }
}

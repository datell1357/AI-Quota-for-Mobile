package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pn3 extends md2 implements oy1 {
    public float B;
    public float C;
    public float D;
    public float E;
    public boolean F;

    /* JADX WARN: Removed duplicated region for block: B:23:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long G0(defpackage.gb2 r7) {
        /*
            r6 = this;
            float r0 = r6.D
            boolean r0 = java.lang.Float.isNaN(r0)
            r1 = 2147483647(0x7fffffff, float:NaN)
            r2 = 0
            if (r0 != 0) goto L16
            float r0 = r6.D
            int r0 = r7.N(r0)
            if (r0 >= 0) goto L17
            r0 = r2
            goto L17
        L16:
            r0 = r1
        L17:
            float r3 = r6.E
            boolean r3 = java.lang.Float.isNaN(r3)
            if (r3 != 0) goto L29
            float r3 = r6.E
            int r3 = r7.N(r3)
            if (r3 >= 0) goto L2a
            r3 = r2
            goto L2a
        L29:
            r3 = r1
        L2a:
            float r4 = r6.B
            boolean r4 = java.lang.Float.isNaN(r4)
            if (r4 != 0) goto L41
            float r4 = r6.B
            int r4 = r7.N(r4)
            if (r4 >= 0) goto L3b
            r4 = r2
        L3b:
            if (r4 <= r0) goto L3e
            r4 = r0
        L3e:
            if (r4 == r1) goto L41
            goto L42
        L41:
            r4 = r2
        L42:
            float r5 = r6.C
            boolean r5 = java.lang.Float.isNaN(r5)
            if (r5 != 0) goto L59
            float r6 = r6.C
            int r6 = r7.N(r6)
            if (r6 >= 0) goto L53
            r6 = r2
        L53:
            if (r6 <= r3) goto L56
            r6 = r3
        L56:
            if (r6 == r1) goto L59
            r2 = r6
        L59:
            long r6 = defpackage.nf0.a(r4, r0, r2, r3)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pn3.G0(gb2):long");
    }

    @Override // defpackage.oy1
    public final int O(k82 k82Var, ya2 ya2Var, int i) {
        long jG0 = G0(k82Var);
        if (mf0.f(jG0)) {
            return mf0.h(jG0);
        }
        if (!this.F) {
            i = nf0.e(i, jG0);
        }
        return nf0.f(ya2Var.K(i), jG0);
    }

    @Override // defpackage.oy1
    public final int e(k82 k82Var, ya2 ya2Var, int i) {
        long jG0 = G0(k82Var);
        if (mf0.f(jG0)) {
            return mf0.h(jG0);
        }
        if (!this.F) {
            i = nf0.e(i, jG0);
        }
        return nf0.f(ya2Var.R(i), jG0);
    }

    @Override // defpackage.oy1
    public final eb2 h0(gb2 gb2Var, ya2 ya2Var, long j) {
        int iJ;
        int iH;
        int i;
        int iG;
        long jA;
        long jG0 = G0(gb2Var);
        if (this.F) {
            int iJ2 = mf0.j(j);
            int iH2 = mf0.h(j);
            int i2 = mf0.i(j);
            int iG2 = mf0.g(j);
            int iJ3 = mf0.j(jG0);
            if (iJ3 < iJ2) {
                iJ3 = iJ2;
            }
            if (iJ3 > iH2) {
                iJ3 = iH2;
            }
            int iH3 = mf0.h(jG0);
            if (iH3 >= iJ2) {
                iJ2 = iH3;
            }
            if (iJ2 <= iH2) {
                iH2 = iJ2;
            }
            int i3 = mf0.i(jG0);
            if (i3 < i2) {
                i3 = i2;
            }
            if (i3 > iG2) {
                i3 = iG2;
            }
            int iG3 = mf0.g(jG0);
            if (iG3 >= i2) {
                i2 = iG3;
            }
            if (i2 <= iG2) {
                iG2 = i2;
            }
            jA = nf0.a(iJ3, iH2, i3, iG2);
        } else {
            if (Float.isNaN(this.B)) {
                iJ = mf0.j(j);
                int iH4 = mf0.h(jG0);
                if (iJ > iH4) {
                    iJ = iH4;
                }
            } else {
                iJ = mf0.j(jG0);
            }
            if (Float.isNaN(this.D)) {
                iH = mf0.h(j);
                int iJ4 = mf0.j(jG0);
                if (iH < iJ4) {
                    iH = iJ4;
                }
            } else {
                iH = mf0.h(jG0);
            }
            if (Float.isNaN(this.C)) {
                i = mf0.i(j);
                int iG4 = mf0.g(jG0);
                if (i > iG4) {
                    i = iG4;
                }
            } else {
                i = mf0.i(jG0);
            }
            if (Float.isNaN(this.E)) {
                iG = mf0.g(j);
                int i4 = mf0.i(jG0);
                if (iG < i4) {
                    iG = i4;
                }
            } else {
                iG = mf0.g(jG0);
            }
            jA = nf0.a(iJ, iH, i, iG);
        }
        dv2 dv2VarE = ya2Var.e(jA);
        return gb2Var.e0(dv2VarE.n, dv2VarE.o, h01.n, new e0(dv2VarE, 6));
    }

    @Override // defpackage.oy1
    public final int l(k82 k82Var, ya2 ya2Var, int i) {
        long jG0 = G0(k82Var);
        if (mf0.e(jG0)) {
            return mf0.g(jG0);
        }
        if (!this.F) {
            i = nf0.f(i, jG0);
        }
        return nf0.e(ya2Var.g(i), jG0);
    }

    @Override // defpackage.oy1
    public final int y(k82 k82Var, ya2 ya2Var, int i) {
        long jG0 = G0(k82Var);
        if (mf0.e(jG0)) {
            return mf0.g(jG0);
        }
        if (!this.F) {
            i = nf0.f(i, jG0);
        }
        return nf0.e(ya2Var.T(i), jG0);
    }
}

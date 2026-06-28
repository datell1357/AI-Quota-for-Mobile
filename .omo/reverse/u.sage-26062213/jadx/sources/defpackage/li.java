package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class li extends md2 implements oy1 {
    public float B;
    public boolean C;

    public final long G0(boolean z, long j) {
        int iRound;
        int iG = mf0.g(j);
        if (iG == Integer.MAX_VALUE || (iRound = Math.round(iG * this.B)) <= 0) {
            return 0L;
        }
        if (!z || gg4.K(iRound, iG, j)) {
            return (((long) iRound) << 32) | (((long) iG) & 4294967295L);
        }
        return 0L;
    }

    public final long H0(boolean z, long j) {
        int iRound;
        int iH = mf0.h(j);
        if (iH == Integer.MAX_VALUE || (iRound = Math.round(iH / this.B)) <= 0) {
            return 0L;
        }
        if (!z || gg4.K(iH, iRound, j)) {
            return (((long) iH) << 32) | (((long) iRound) & 4294967295L);
        }
        return 0L;
    }

    public final long I0(boolean z, long j) {
        int i = mf0.i(j);
        int iRound = Math.round(i * this.B);
        if (iRound <= 0) {
            return 0L;
        }
        if (!z || gg4.K(iRound, i, j)) {
            return (((long) iRound) << 32) | (((long) i) & 4294967295L);
        }
        return 0L;
    }

    public final long J0(boolean z, long j) {
        int iJ = mf0.j(j);
        int iRound = Math.round(iJ / this.B);
        if (iRound <= 0) {
            return 0L;
        }
        if (!z || gg4.K(iJ, iRound, j)) {
            return (((long) iJ) << 32) | (((long) iRound) & 4294967295L);
        }
        return 0L;
    }

    @Override // defpackage.oy1
    public final int O(k82 k82Var, ya2 ya2Var, int i) {
        return i != Integer.MAX_VALUE ? Math.round(i * this.B) : ya2Var.K(i);
    }

    @Override // defpackage.oy1
    public final int e(k82 k82Var, ya2 ya2Var, int i) {
        return i != Integer.MAX_VALUE ? Math.round(i * this.B) : ya2Var.R(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x00bf  */
    @Override // defpackage.oy1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.eb2 h0(defpackage.gb2 r8, defpackage.ya2 r9, long r10) {
        /*
            Method dump skipped, instruction units count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.li.h0(gb2, ya2, long):eb2");
    }

    @Override // defpackage.oy1
    public final int l(k82 k82Var, ya2 ya2Var, int i) {
        return i != Integer.MAX_VALUE ? Math.round(i / this.B) : ya2Var.g(i);
    }

    @Override // defpackage.oy1
    public final int y(k82 k82Var, ya2 ya2Var, int i) {
        return i != Integer.MAX_VALUE ? Math.round(i / this.B) : ya2Var.T(i);
    }
}

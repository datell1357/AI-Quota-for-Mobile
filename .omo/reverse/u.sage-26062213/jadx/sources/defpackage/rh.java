package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rh implements qh, sh {
    public final float n;
    public final k21 o;
    public final float p;

    public rh(float f, k21 k21Var) {
        this.n = f;
        this.o = k21Var;
        this.p = f;
    }

    @Override // defpackage.qh, defpackage.sh
    public final float a() {
        return this.p;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof rh) {
            rh rhVar = (rh) obj;
            return cw0.b(this.n, rhVar.n) && this.o == rhVar.o;
        }
        return false;
    }

    public final int hashCode() {
        return this.o.hashCode() + xw1.n(Float.hashCode(this.n) * 31, true, 31);
    }

    @Override // defpackage.qh
    public final void i(gb2 gb2Var, int i, int[] iArr, hy1 hy1Var, int[] iArr2) {
        int i2;
        if (iArr.length == 0) {
            return;
        }
        int iN = gb2Var.N(this.n);
        boolean z = hy1Var == hy1.o;
        if (z) {
            int length = iArr.length;
            int i3 = 0;
            int iMin = 0;
            int i4 = 0;
            while (i3 < length) {
                int iMax = Math.max(0, i - iArr[i3]);
                iArr2[i4] = iMax;
                iMin = Math.min(iN, iMax);
                i = iArr2[i4] - iMin;
                i3++;
                i4++;
            }
            i2 = i + iMin;
        } else {
            int length2 = iArr.length;
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            while (i5 < length2) {
                int i9 = iArr[i5];
                int iMin2 = Math.min(i6, i - i9);
                iArr2[i8] = iMin2;
                int iMin3 = Math.min(iN, (i - iMin2) - i9);
                int i10 = iArr2[i8] + i9 + iMin3;
                i5++;
                i7 = iMin3;
                i6 = i10;
                i8++;
            }
            i2 = i - (i6 - i7);
        }
        if (i2 > 0) {
            int iRound = Math.round((1.0f + (hy1Var == hy1.n ? -1.0f : 1.0f)) * (i2 / 2.0f));
            if (z) {
                iRound -= i2;
            }
            if (iRound != 0) {
                int length3 = iArr2.length;
                for (int i11 = 0; i11 < length3; i11++) {
                    iArr2[i11] = iArr2[i11] + iRound;
                }
            }
        }
    }

    @Override // defpackage.sh
    public final void j(int i, gb2 gb2Var, int[] iArr, int[] iArr2) {
        i(gb2Var, i, iArr, hy1.n, iArr2);
    }

    public final String toString() {
        return "Arrangement#spacedAligned(" + cw0.c(this.n) + ", " + this.o + ")";
    }
}

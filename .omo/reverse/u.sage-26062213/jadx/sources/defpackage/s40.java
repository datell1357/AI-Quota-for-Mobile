package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s40 implements qh, uv2 {
    public final float n;
    public final float o;
    public final float p;

    public s40(float f) {
        this.n = f;
        this.o = f;
        this.p = (f + f) / 2.0f;
    }

    @Override // defpackage.qh, defpackage.sh
    public float a() {
        return this.p;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0022  */
    @Override // defpackage.qh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void i(defpackage.gb2 r9, int r10, int[] r11, defpackage.hy1 r12, int[] r13) {
        /*
            r8 = this;
            int r0 = r11.length
            if (r0 != 0) goto L4
            goto L3d
        L4:
            float r0 = r8.n
            int r0 = r9.N(r0)
            float r8 = r8.o
            int r8 = r9.N(r8)
            int r9 = r11.length
            r1 = 0
            r2 = r1
            r3 = r2
        L14:
            if (r2 >= r9) goto L3d
            r4 = r11[r2]
            int r5 = r3 + 1
            if (r3 == 0) goto L22
            r6 = 1
            if (r3 == r6) goto L27
            r6 = 2
            if (r3 == r6) goto L24
        L22:
            r6 = r1
            goto L2f
        L24:
            int r6 = r10 - r4
            goto L2f
        L27:
            r6 = r11[r1]
            if (r6 <= 0) goto L2d
            r7 = r0
            goto L2e
        L2d:
            r7 = r8
        L2e:
            int r6 = r6 + r7
        L2f:
            hy1 r7 = defpackage.hy1.n
            if (r12 != r7) goto L34
            goto L37
        L34:
            int r6 = r10 - r6
            int r6 = r6 - r4
        L37:
            r13[r3] = r6
            int r2 = r2 + 1
            r3 = r5
            goto L14
        L3d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.s40.i(gb2, int, int[], hy1, int[]):void");
    }

    @Override // defpackage.uv2
    public long j(float f, float f2) {
        float f3 = f + this.n;
        float f4 = this.o;
        return v71.a(f3 / f4, (f2 + this.p) / f4);
    }

    public s40(float f, float f2, float f3) {
        this.n = f;
        this.o = f2;
        this.p = f3;
    }
}

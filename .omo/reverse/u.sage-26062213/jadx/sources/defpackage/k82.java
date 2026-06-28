package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class k82 extends dv2 implements de2, tr2, gb2 {
    public boolean A;
    public boolean B;
    public final l82 C = new l82(0, this);
    public gg D;
    public kg2 E;
    public f82 s;
    public pe1 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public df1 f162u;
    public pe1 v;
    public fv2 w;
    public kg2 x;
    public boolean y;
    public kg2 z;

    public static void z0(mm2 mm2Var) {
        yy1 yy1Var;
        mm2 mm2Var2 = mm2Var.G;
        xy1 xy1Var = mm2Var.F;
        if (!nt1.g(mm2Var2 != null ? mm2Var2.F : null, xy1Var)) {
            xy1Var.T.p.K.f();
            return;
        }
        d8 d8VarR = xy1Var.T.p.r();
        if (d8VarR == null || (yy1Var = ((cb2) d8VarR).K) == null) {
            return;
        }
        yy1Var.f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void A0(lg2 lg2Var) {
        xy1 xy1Var;
        Object[] objArr = lg2Var.b;
        long[] jArr = lg2Var.a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128 && (xy1Var = (xy1) ((qc4) objArr[(i << 3) + i3]).get()) != null) {
                        if (q()) {
                            xy1Var.U(false);
                        } else {
                            xy1Var.W(false);
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    public abstract void B0();

    /* JADX WARN: Removed duplicated region for block: B:23:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void C0() {
        /*
            r15 = this;
            gg r0 = r15.D
            r1 = 0
            if (r0 == 0) goto L24
            int r2 = r0.a
            r3 = r1
        L8:
            if (r3 >= r2) goto L22
            java.lang.Object r4 = r0.b
            ek1[] r4 = (defpackage.ek1[]) r4
            r5 = 0
            r4[r3] = r5
            java.lang.Object r4 = r0.c
            float[] r4 = (float[]) r4
            r5 = 2143289344(0x7fc00000, float:NaN)
            r4[r3] = r5
            java.lang.Object r4 = r0.d
            byte[] r4 = (byte[]) r4
            r4[r3] = r1
            int r3 = r3 + 1
            goto L8
        L22:
            r0.a = r1
        L24:
            kg2 r0 = r15.E
            if (r0 != 0) goto L29
            return
        L29:
            java.lang.Object[] r2 = r0.c
            long[] r3 = r0.a
            int r4 = r3.length
            int r4 = r4 + (-2)
            if (r4 < 0) goto L6d
            r5 = r1
        L33:
            r6 = r3[r5]
            long r8 = ~r6
            r10 = 7
            long r8 = r8 << r10
            long r8 = r8 & r6
            r10 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
            long r8 = r8 & r10
            int r8 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r8 == 0) goto L68
            int r8 = r5 - r4
            int r8 = ~r8
            int r8 = r8 >>> 31
            r9 = 8
            int r8 = 8 - r8
            r10 = r1
        L4d:
            if (r10 >= r8) goto L66
            r11 = 255(0xff, double:1.26E-321)
            long r11 = r11 & r6
            r13 = 128(0x80, double:6.32E-322)
            int r11 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r11 >= 0) goto L62
            int r11 = r5 << 3
            int r11 = r11 + r10
            r11 = r2[r11]
            lg2 r11 = (defpackage.lg2) r11
            r15.A0(r11)
        L62:
            long r6 = r6 >> r9
            int r10 = r10 + 1
            goto L4d
        L66:
            if (r8 != r9) goto L6d
        L68:
            if (r5 == r4) goto L6d
            int r5 = r5 + 1
            goto L33
        L6d:
            r0.a()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.k82.C0():void");
    }

    @Override // defpackage.gb2
    public final eb2 L(int i, int i2, Map map, pe1 pe1Var, pe1 pe1Var2) {
        if ((i & (-16777216)) != 0 || ((-16777216) & i2) != 0) {
            ar1.b("Size(" + i + " x " + i2 + ") is out of range. Each dimension must be between 0 and 16777215.");
        }
        return new i82(i, i2, map, pe1Var, pe1Var2, this);
    }

    @Override // defpackage.dv2
    public final int V(y7 y7Var) {
        int iK0;
        if (!q0() || (iK0 = k0(y7Var)) == Integer.MIN_VALUE) {
            return Integer.MIN_VALUE;
        }
        boolean z = y7Var instanceof ab4;
        long j = this.r;
        return iK0 + ((int) (z ? j >> 32 : 4294967295L & j));
    }

    @Override // defpackage.gb2
    public final eb2 W(int i, int i2, c8 c8Var, z zVar, Map map, e9 e9Var) {
        if ((i & (-16777216)) != 0 || ((-16777216) & i2) != 0) {
            ar1.b("Size(" + i + " x " + i2 + ") is out of range. Each dimension must be between 0 and 16777215.");
        }
        return new j82(i, i2, map, c8Var, zVar, e9Var, this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0108  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j0(defpackage.xy1 r32, defpackage.ek1 r33) {
        /*
            Method dump skipped, instruction units count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.k82.j0(xy1, ek1):void");
    }

    public abstract int k0(y7 y7Var);

    /* JADX WARN: Multi-variable type inference failed */
    public final void l0(fv2 fv2Var, long j, long j2) {
        boolean z;
        char c;
        long j3;
        long j4;
        long j5;
        xy1 xy1Var;
        boolean z2;
        int i;
        char c2;
        long j6;
        ur2 snapshotObserver;
        kg2 kg2Var = this.E;
        gg ggVar = this.D;
        if (ggVar == null) {
            ggVar = new gg();
            this.D = ggVar;
        }
        gg ggVar2 = ggVar;
        sr2 sr2Var = u0().A;
        if (sr2Var != null && (snapshotObserver = ((q9) sr2Var).getSnapshotObserver()) != null) {
            snapshotObserver.a.c(fv2Var, l9.P, new g82(this, j, j2, fv2Var));
        }
        boolean zQ = q();
        lg2 lg2Var = (lg2) ggVar2.e;
        lg2 lg2Var2 = (lg2) ggVar2.f;
        int i2 = ggVar2.a;
        for (int i3 = 0; i3 < i2; i3++) {
            byte b = ((byte[]) ggVar2.d)[i3];
            if (b == 3) {
                ek1 ek1Var = ((ek1[]) ggVar2.b)[i3];
                ek1Var.getClass();
                lg2Var2.k(ek1Var);
            } else if (b != 0 && kg2Var != null) {
                ek1 ek1Var2 = ((ek1[]) ggVar2.b)[i3];
                ek1Var2.getClass();
                lg2 lg2Var3 = (lg2) kg2Var.k(ek1Var2);
                if (lg2Var3 != null) {
                    lg2Var.j(lg2Var3);
                }
            }
        }
        int i4 = ggVar2.a;
        int i5 = 0;
        for (int i6 = 0; i6 < i4; i6++) {
            byte[] bArr = (byte[]) ggVar2.d;
            if (bArr[i6] == 2) {
                i5++;
            } else if (i5 > 0) {
                ek1[] ek1VarArr = (ek1[]) ggVar2.b;
                ek1VarArr[i6 - i5] = ek1VarArr[i6];
            }
            bArr[i6] = 2;
        }
        int i7 = ggVar2.a;
        for (int i8 = i7 - i5; i8 < i7; i8++) {
            ((ek1[]) ggVar2.b)[i8] = null;
        }
        ggVar2.a -= i5;
        k82 k82VarW0 = w0();
        Object[] objArr = lg2Var2.b;
        long[] jArr = lg2Var2.a;
        int length = jArr.length - 2;
        char c3 = 7;
        long j7 = -9187201950435737472L;
        int i9 = 8;
        if (length >= 0) {
            j4 = 128;
            int i10 = 0;
            while (true) {
                long j8 = jArr[i10];
                j5 = 255;
                if ((((~j8) << c3) & j8 & j7) != j7) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    int i12 = 0;
                    while (i12 < i11) {
                        if ((j8 & 255) < 128) {
                            c2 = c3;
                            ek1 ek1Var3 = (ek1) objArr[(i10 << 3) + i12];
                            j6 = j7;
                            k82 k82Var = k82VarW0 == null ? this : k82VarW0;
                            i = i9;
                            k82 k82Var2 = k82Var;
                            while (true) {
                                gg ggVar3 = k82Var2.D;
                                if (ggVar3 != null) {
                                    z2 = zQ;
                                    if (!ji.K((ek1[]) ggVar3.b, ek1Var3)) {
                                        break;
                                        break;
                                    }
                                    break;
                                }
                                z2 = zQ;
                                k82 k82VarW02 = k82Var2.w0();
                                if (k82VarW02 == null) {
                                    break;
                                }
                                k82Var2 = k82VarW02;
                                zQ = z2;
                            }
                            kg2 kg2Var2 = k82Var2.E;
                            lg2 lg2Var4 = kg2Var2 != null ? (lg2) kg2Var2.k(ek1Var3) : null;
                            if (lg2Var4 != null) {
                                k82Var.A0(lg2Var4);
                            }
                        } else {
                            z2 = zQ;
                            i = i9;
                            c2 = c3;
                            j6 = j7;
                        }
                        j8 >>= i;
                        i12++;
                        c3 = c2;
                        j7 = j6;
                        i9 = i;
                        zQ = z2;
                    }
                    z = zQ;
                    c = c3;
                    j3 = j7;
                    if (i11 != i9) {
                        break;
                    }
                } else {
                    z = zQ;
                    c = c3;
                    j3 = j7;
                }
                if (i10 == length) {
                    break;
                }
                i10++;
                c3 = c;
                j7 = j3;
                zQ = z;
                i9 = 8;
            }
        } else {
            z = zQ;
            c = 7;
            j3 = -9187201950435737472L;
            j4 = 128;
            j5 = 255;
        }
        lg2Var2.b();
        Object[] objArr2 = lg2Var.b;
        long[] jArr2 = lg2Var.a;
        int length2 = jArr2.length - 2;
        if (length2 >= 0) {
            int i13 = 0;
            while (true) {
                long j9 = jArr2[i13];
                if ((((~j9) << c) & j9 & j3) != j3) {
                    int i14 = 8 - ((~(i13 - length2)) >>> 31);
                    for (int i15 = 0; i15 < i14; i15++) {
                        if ((j9 & j5) < j4 && (xy1Var = (xy1) ((qc4) objArr2[(i13 << 3) + i15]).get()) != null) {
                            if (z) {
                                xy1Var.U(false);
                            } else {
                                xy1Var.W(false);
                            }
                        }
                        j9 >>= 8;
                    }
                    if (i14 != 8) {
                        break;
                    }
                }
                if (i13 == length2) {
                    break;
                } else {
                    i13++;
                }
            }
        }
        lg2Var.b();
    }

    @Override // defpackage.de2
    public final void m(boolean z) {
        k82 k82VarW0 = w0();
        xy1 xy1VarU0 = k82VarW0 != null ? k82VarW0.u0() : null;
        if (nt1.g(xy1VarU0, u0())) {
            this.y = z;
            return;
        }
        if ((xy1VarU0 != null ? xy1VarU0.T.d : null) != ty1.p) {
            if ((xy1VarU0 != null ? xy1VarU0.T.d : null) != ty1.q) {
                return;
            }
        }
        this.y = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x0141 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x011f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m0(defpackage.eb2 r28) {
        /*
            Method dump skipped, instruction units count: 484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.k82.m0(eb2):void");
    }

    public abstract k82 n0();

    public abstract gy1 o0();

    @Override // defpackage.jt1
    public boolean q() {
        return false;
    }

    public abstract boolean q0();

    public abstract xy1 u0();

    public abstract eb2 v0();

    @Override // defpackage.tr2
    public boolean w() {
        return u0().H();
    }

    public abstract k82 w0();

    public abstract long x0();

    public final f82 y0() {
        f82 f82Var = this.s;
        if (f82Var != null) {
            return f82Var;
        }
        f82 f82Var2 = new f82(this);
        this.s = f82Var2;
        return f82Var2;
    }
}

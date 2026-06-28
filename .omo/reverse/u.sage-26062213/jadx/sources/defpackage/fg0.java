package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fg0 extends md2 implements fc0, jb2 {
    public hr2 B;
    public final dg3 C;
    public boolean D;
    public final tf3 E;
    public boolean G;
    public boolean I;
    public final zx F = new zx(0);
    public long H = -1;

    public fg0(hr2 hr2Var, dg3 dg3Var, boolean z, tf3 tf3Var) {
        this.B = hr2Var;
        this.C = dg3Var;
        this.D = z;
        this.E = tf3Var;
    }

    public static final float G0(fg0 fg0Var, gy gyVar, long j) {
        float f;
        l33 l33Var;
        int iCompare;
        long j2 = fg0Var.H;
        ug2 ug2Var = fg0Var.F.a;
        int i = ug2Var.p - 1;
        Object[] objArr = ug2Var.n;
        if (i < objArr.length) {
            l33Var = null;
            while (true) {
                if (i < 0) {
                    f = 0.0f;
                    break;
                }
                l33 l33Var2 = (l33) ((dg0) objArr[i]).a.a();
                if (l33Var2 != null) {
                    long jB = l33Var2.b();
                    long jH = se0.H(fg0Var.H0());
                    f = 0.0f;
                    int iOrdinal = fg0Var.B.ordinal();
                    if (iOrdinal == 0) {
                        iCompare = Float.compare(Float.intBitsToFloat((int) (jB & 4294967295L)), Float.intBitsToFloat((int) (jH & 4294967295L)));
                    } else {
                        if (iOrdinal != 1) {
                            p61.x();
                            return 0.0f;
                        }
                        iCompare = Float.compare(Float.intBitsToFloat((int) (jB >> 32)), Float.intBitsToFloat((int) (jH >> 32)));
                    }
                    if (iCompare <= 0) {
                        l33Var = l33Var2;
                    } else if (l33Var == null) {
                        l33Var = l33Var2;
                    }
                }
                i--;
            }
        } else {
            f = 0.0f;
            l33Var = null;
        }
        if (l33Var == null) {
            l33 l33Var3 = fg0Var.G ? (l33) fg0Var.E.a() : null;
            if (l33Var3 == null) {
                return f;
            }
            l33Var = l33Var3;
        }
        long jH2 = se0.H(j2);
        int iOrdinal2 = fg0Var.B.ordinal();
        if (iOrdinal2 == 0) {
            float f2 = l33Var.b;
            return gyVar.a(f2 - ((int) (j & 4294967295L)), l33Var.d - f2, Float.intBitsToFloat((int) (jH2 & 4294967295L)));
        }
        if (iOrdinal2 == 1) {
            float f3 = l33Var.a;
            return gyVar.a(f3 - ((int) (j >> 32)), l33Var.c - f3, Float.intBitsToFloat((int) (jH2 >> 32)));
        }
        p61.x();
        return f;
    }

    public static boolean I0(fg0 fg0Var, l33 l33Var, long j, long j2, int i) {
        if ((i & 1) != 0) {
            j = fg0Var.H0();
        }
        long j3 = j;
        if ((i & 2) != 0) {
            j2 = 0;
        }
        long jK0 = fg0Var.K0(l33Var, j3, j2);
        return Math.abs(Float.intBitsToFloat((int) (jK0 >> 32))) <= 0.5f && Math.abs(Float.intBitsToFloat((int) (jK0 & 4294967295L))) <= 0.5f;
    }

    public final long H0() {
        long j = this.H;
        if (rs1.a(j, -1L)) {
            return 0L;
        }
        return j;
    }

    public final void J0(long j) {
        lc0 lc0Var = iy.a;
        gy gyVar = (gy) n44.g0(this, lc0Var);
        if (this.I) {
            dr1.c("launchAnimation called when previous animation was running");
        }
        ((gy) n44.g0(this, lc0Var)).getClass();
        gy.a.getClass();
        t74 t74Var = new t74(fy.b);
        ca.y(u0(), null, ti0.q, new c5(this, t74Var, gyVar, j, null), 1);
    }

    public final long K0(l33 l33Var, long j, long j2) {
        long jH = se0.H(j);
        int iOrdinal = this.B.ordinal();
        if (iOrdinal == 0) {
            gy gyVar = (gy) n44.g0(this, iy.a);
            float f = l33Var.b;
            return (((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits(gyVar.a(f - ((int) (j2 & 4294967295L)), l33Var.d - f, Float.intBitsToFloat((int) (jH & 4294967295L))))) & 4294967295L);
        }
        if (iOrdinal != 1) {
            p61.x();
            return 0L;
        }
        gy gyVar2 = (gy) n44.g0(this, iy.a);
        float f2 = l33Var.a;
        return (((long) Float.floatToRawIntBits(gyVar2.a(f2 - ((int) (j2 >> 32)), l33Var.c - f2, Float.intBitsToFloat((int) (jH >> 32))))) << 32) | (((long) Float.floatToRawIntBits(0.0f)) & 4294967295L);
    }

    @Override // defpackage.jb2
    public final void c(long j) {
        int iL;
        long jH0 = H0();
        this.H = j;
        int iOrdinal = this.B.ordinal();
        if (iOrdinal == 0) {
            iL = nt1.l((int) (j & 4294967295L), (int) (jH0 & 4294967295L));
        } else {
            if (iOrdinal != 1) {
                p61.x();
                return;
            }
            iL = nt1.l((int) (j >> 32), (int) (jH0 >> 32));
        }
        if (iL >= 0) {
            return;
        }
        long j2 = !this.D ? this.B == hr2.n ? ((long) (((int) (jH0 & 4294967295L)) - ((int) (j & 4294967295L)))) & 4294967295L : ((long) (((int) (jH0 >> 32)) - ((int) (j >> 32)))) << 32 : 0L;
        l33 l33Var = (l33) this.E.a();
        if (l33Var == null || this.I || this.G || !I0(this, l33Var, jH0, 0L, 2) || I0(this, l33Var, 0L, j2, 1)) {
            return;
        }
        this.G = true;
        J0(j2);
    }

    @Override // defpackage.md2
    public final boolean v0() {
        return false;
    }
}

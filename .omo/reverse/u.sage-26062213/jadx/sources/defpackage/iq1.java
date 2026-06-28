package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class iq1 implements bx0 {
    public final wf3 n;
    public dq1 o;
    public gq1 p;
    public fq1 q;
    public eq1 r;
    public tv4 s;
    public ra3 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public lj1 f142u;
    public final d90 v;
    public final d90 w;

    public iq1(wf3 wf3Var) {
        this.n = wf3Var;
        d90 d90Var = new d90((char) 0, 3);
        d90Var.p = new dg2();
        this.v = d90Var;
        d90 d90Var2 = new d90((char) 0, 6);
        d90Var2.p = new xf2();
        this.w = d90Var2;
    }

    public static void c(iq1 iq1Var, bq1 bq1Var, long j, long j2, int i) {
        if ((i & 4) != 0) {
            j2 = 0;
        }
        wf3 wf3Var = iq1Var.n;
        fq1 fq1Var = iq1Var.q;
        if (fq1Var == null) {
            fq1Var = new fq1();
            fq1Var.f = null;
            fq1Var.g = Long.MAX_VALUE;
            fq1Var.h = false;
            iq1Var.q = fq1Var;
        }
        fq1Var.f = bq1Var;
        fq1Var.g = j;
        lj1 lj1Var = iq1Var.f142u;
        hr2 hr2Var = wf3Var.D;
        if (lj1Var == null) {
            iq1Var.f142u = new lj1(hr2Var, 0);
        } else {
            lj1Var.o = hr2Var;
            lj1Var.n = j2;
        }
        fq1Var.h = false;
        iq1Var.s = fq1Var;
    }

    public final void a() {
        dq1 dq1Var = this.o;
        cq1 cq1Var = cq1.p;
        if (dq1Var == null) {
            dq1Var = new dq1();
            dq1Var.f = cq1Var;
            dq1Var.g = false;
            dq1Var.h = false;
            this.o = dq1Var;
        }
        dq1Var.f = cq1Var;
        dq1Var.g = false;
        dq1Var.h = false;
        this.s = dq1Var;
    }

    public final void b(bq1 bq1Var, long j, lj1 lj1Var) {
        eq1 eq1Var = this.r;
        if (eq1Var == null) {
            eq1Var = new eq1();
            eq1Var.f = null;
            eq1Var.g = Long.MAX_VALUE;
            this.r = eq1Var;
        }
        eq1Var.f = bq1Var;
        eq1Var.g = j;
        lj1Var.n = 0L;
        this.s = eq1Var;
    }

    public final ra3 d() {
        ra3 ra3Var = this.t;
        if (ra3Var != null) {
            return ra3Var;
        }
        k21.f("Velocity Tracker not initialized.");
        return null;
    }

    public final void e(bq1 bq1Var, aq1 aq1Var, long j) {
        long j2;
        float fIntBitsToFloat;
        long j3 = bq1Var.c;
        wf3 wf3Var = this.n;
        hr2 hr2Var = wf3Var.D;
        hr2Var.getClass();
        int i = dx0.a;
        long j4 = 4294967295L;
        if (Math.abs(Float.intBitsToFloat((int) (hr2Var == hr2.n ? j & 4294967295L : j >> 32))) > 2.0f) {
            ra3 ra3VarD = d();
            hr2 hr2Var2 = wf3Var.D;
            d90 d90Var = this.v;
            dg2 dg2Var = (dg2) d90Var.p;
            float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j3 >> 32));
            float fIntBitsToFloat3 = Float.intBitsToFloat((int) (j3 & 4294967295L));
            if (k30.k(bq1Var)) {
                d90Var.o = 0;
                dg2Var.d();
            }
            float fIntBitsToFloat4 = 0.0f;
            if (k30.g(bq1Var) || k30.k(bq1Var)) {
                j2 = 4294967295L;
            } else {
                if (dg2Var.b == 3) {
                    int i2 = d90Var.o;
                    d90Var.o = i2 + 1;
                    dg2Var.n(i2, bq1Var);
                } else {
                    dg2Var.a(bq1Var);
                }
                if (d90Var.o == 3) {
                    d90Var.o = 0;
                }
                Object[] objArr = dg2Var.a;
                int i3 = dg2Var.b;
                int i4 = 0;
                float fIntBitsToFloat5 = 0.0f;
                while (i4 < i3) {
                    fIntBitsToFloat5 += Float.intBitsToFloat((int) (((bq1) objArr[i4]).c >> 32));
                    i4++;
                    j4 = j4;
                }
                j2 = j4;
                int i5 = dg2Var.b;
                fIntBitsToFloat2 = fIntBitsToFloat5 / i5;
                Object[] objArr2 = dg2Var.a;
                float fIntBitsToFloat6 = 0.0f;
                for (int i6 = 0; i6 < i5; i6++) {
                    fIntBitsToFloat6 += Float.intBitsToFloat((int) (((bq1) objArr2[i6]).c & j2));
                }
                fIntBitsToFloat3 = fIntBitsToFloat6 / dg2Var.b;
            }
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fIntBitsToFloat3)) & j2) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) << 32);
            if (hr2Var2 != null) {
                int i7 = aq1Var.a;
                if (i7 == 1) {
                    fIntBitsToFloat = Float.intBitsToFloat((int) (jFloatToRawIntBits >> 32));
                } else if (i7 == 2) {
                    fIntBitsToFloat = Float.intBitsToFloat((int) (jFloatToRawIntBits & j2));
                }
                jFloatToRawIntBits = hr2Var2 == hr2.o ? (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(0.0f)) & j2) : (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & j2) | (((long) Float.floatToRawIntBits(0.0f)) << 32);
            }
            ((t82) ra3VarD.o).a(bq1Var.b, jFloatToRawIntBits);
            d90 d90Var2 = this.w;
            xf2 xf2Var = (xf2) d90Var2.p;
            int i8 = xf2Var.b;
            if (i8 == 3) {
                int i9 = d90Var2.o;
                d90Var2.o = i9 + 1;
                if (i9 < 0 || i9 >= i8) {
                    mk0.h("Index must be between 0 and size");
                    return;
                } else {
                    long[] jArr = xf2Var.a;
                    long j5 = jArr[i9];
                    jArr[i9] = j;
                }
            } else {
                xf2Var.a(j);
            }
            if (d90Var2.o == 3) {
                d90Var2.o = 0;
            }
            long[] jArr2 = xf2Var.a;
            int i10 = xf2Var.b;
            float fIntBitsToFloat7 = 0.0f;
            for (int i11 = 0; i11 < i10; i11++) {
                fIntBitsToFloat7 += Float.intBitsToFloat((int) (jArr2[i11] >> 32));
            }
            int i12 = xf2Var.b;
            float f = fIntBitsToFloat7 / i12;
            long[] jArr3 = xf2Var.a;
            for (int i13 = 0; i13 < i12; i13++) {
                fIntBitsToFloat4 = Float.intBitsToFloat((int) (jArr3[i13] & j2)) + fIntBitsToFloat4;
            }
            wf3Var.Q0(new nw0(true, (((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat4 / xf2Var.b)) & j2)));
        }
    }

    public final void f(bq1 bq1Var, bq1 bq1Var2, aq1 aq1Var, long j) {
        char c;
        long j2;
        float fIntBitsToFloat;
        if (this.t == null) {
            this.t = new ra3(11);
        }
        ra3 ra3VarD = d();
        wf3 wf3Var = this.n;
        hr2 hr2Var = wf3Var.D;
        d90 d90Var = this.v;
        dg2 dg2Var = (dg2) d90Var.p;
        char c2 = ' ';
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (bq1Var.c >> 32));
        long j3 = 4294967295L;
        float fIntBitsToFloat3 = Float.intBitsToFloat((int) (bq1Var.c & 4294967295L));
        if (k30.k(bq1Var)) {
            d90Var.o = 0;
            dg2Var.d();
        }
        if (k30.g(bq1Var) || k30.k(bq1Var)) {
            c = ' ';
            j2 = 4294967295L;
        } else {
            if (dg2Var.b == 3) {
                int i = d90Var.o;
                d90Var.o = i + 1;
                dg2Var.n(i, bq1Var);
            } else {
                dg2Var.a(bq1Var);
            }
            if (d90Var.o == 3) {
                d90Var.o = 0;
            }
            Object[] objArr = dg2Var.a;
            int i2 = dg2Var.b;
            int i3 = 0;
            float fIntBitsToFloat4 = 0.0f;
            while (i3 < i2) {
                char c3 = c2;
                fIntBitsToFloat4 += Float.intBitsToFloat((int) (((bq1) objArr[i3]).c >> c3));
                i3++;
                c2 = c3;
                j3 = j3;
            }
            c = c2;
            j2 = j3;
            int i4 = dg2Var.b;
            fIntBitsToFloat2 = fIntBitsToFloat4 / i4;
            Object[] objArr2 = dg2Var.a;
            float fIntBitsToFloat5 = 0.0f;
            for (int i5 = 0; i5 < i4; i5++) {
                fIntBitsToFloat5 += Float.intBitsToFloat((int) (((bq1) objArr2[i5]).c & j2));
            }
            fIntBitsToFloat3 = fIntBitsToFloat5 / dg2Var.b;
        }
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) << c) | (((long) Float.floatToRawIntBits(fIntBitsToFloat3)) & j2);
        if (hr2Var != null) {
            int i6 = aq1Var.a;
            if (i6 == 1) {
                fIntBitsToFloat = Float.intBitsToFloat((int) (jFloatToRawIntBits >> c));
            } else if (i6 == 2) {
                fIntBitsToFloat = Float.intBitsToFloat((int) (jFloatToRawIntBits & j2));
            }
            jFloatToRawIntBits = hr2Var == hr2.o ? (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << c) | (((long) Float.floatToRawIntBits(0.0f)) & j2) : (((long) Float.floatToRawIntBits(0.0f)) << c) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & j2);
        }
        ((t82) ra3VarD.o).a(bq1Var.b, jFloatToRawIntBits);
        long jD = go2.d(k30.C(bq1Var2, wf3Var.D, aq1Var), j);
        if (((Boolean) wf3Var.E.k(new hw2(1))).booleanValue()) {
            wf3Var.Q0(new ow0(jD));
        }
        d90 d90Var2 = this.w;
        d90Var2.o = 0;
        ((xf2) d90Var2.p).b = 0;
    }

    @Override // defpackage.bx0
    public final hr2 i() {
        return this.n.D;
    }

    @Override // defpackage.wg1
    public final String o0() {
        tv4 tv4Var = this.s;
        return tv4Var instanceof dq1 ? ((dq1) tv4Var).h ? "waiting" : "idle" : ((tv4Var instanceof fq1) || (tv4Var instanceof eq1)) ? "waiting" : tv4Var instanceof gq1 ? "recognized" : "idle";
    }
}

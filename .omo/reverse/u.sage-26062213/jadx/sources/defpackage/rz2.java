package defpackage;

import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class rz2 {
    public static final dl0 a = ge2.b;

    public static final void a(nd2 nd2Var, final long j, final float f, long j2, int i, float f2, ag1 ag1Var, final int i2) {
        nd2 nd2Var2;
        final long j3;
        final int i3;
        final float f3;
        int i4;
        final long j4;
        final float f4;
        int i5;
        ag1Var.X(333154241);
        int i6 = i2 | (ag1Var.e(j) ? 32 : 16) | 222208;
        if (ag1Var.N(i6 & 1, (74899 & i6) != 74898)) {
            ag1Var.S();
            if ((i2 & 1) == 0 || ag1Var.x()) {
                i4 = i6 & (-7169);
                j4 = t70.e;
                f4 = 4.0f;
                i5 = 1;
            } else {
                ag1Var.Q();
                i4 = i6 & (-7169);
                j4 = j2;
                i5 = i;
                f4 = f2;
            }
            ag1Var.q();
            final ht3 ht3Var = new ht3(((as0) ag1Var.j(kc0.h)).v(f), 0.0f, i5, 0, 26);
            Object objK = ag1Var.K();
            Object obj = rb0.a;
            if (objK == obj) {
                objK = new rq1();
                ag1Var.g0(objK);
            }
            rq1 rq1Var = (rq1) objK;
            rq1Var.a(0, ag1Var);
            final pq1 pq1VarK = c75.k(rq1Var, 0.0f, 1080.0f, tv4.A(tv4.V(6000, 2, ny0.c), 6), ag1Var);
            z82 z82Var = new z82(21);
            rx1 rx1Var = new rx1();
            z82Var.k(rx1Var);
            final pq1 pq1VarK2 = c75.k(rq1Var, 0.0f, 360.0f, tv4.A(new sx1(rx1Var), 6), ag1Var);
            rx1 rx1Var2 = new rx1();
            rx1Var2.a = 6000;
            int i7 = i4;
            rx1Var2.a(Float.valueOf(0.87f), AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS).b = a;
            rx1Var2.a(Float.valueOf(0.1f), 6000);
            final pq1 pq1VarK3 = c75.k(rq1Var, 0.1f, 0.87f, tv4.A(new sx1(rx1Var2), 6), ag1Var);
            z82 z82Var2 = new z82(22);
            AtomicInteger atomicInteger = dh3.a;
            nd2Var2 = nd2Var;
            nd2 nd2VarC = on3.c(nd2Var2.c(new gh(z82Var2, true)), 40.0f);
            boolean zF = ag1Var.f(pq1VarK3) | ag1Var.f(pq1VarK) | ag1Var.f(pq1VarK2) | ag1Var.e(j4) | ag1Var.h(ht3Var) | ((((i7 & 112) ^ 48) > 32 && ag1Var.e(j)) || (i7 & 48) == 32);
            Object objK2 = ag1Var.K();
            if (zF || objK2 == obj) {
                final int i8 = i5;
                Object obj2 = new pe1() { // from class: pz2
                    @Override // defpackage.pe1
                    public final Object k(Object obj3) {
                        long j5 = j4;
                        ht3 ht3Var2 = ht3Var;
                        long j6 = j;
                        kx0 kx0Var = (kx0) obj3;
                        float fFloatValue = ((Number) pq1VarK3.getValue()).floatValue() * 360.0f;
                        int i9 = i8;
                        float f5 = f4;
                        if (i9 != 0 && Float.intBitsToFloat((int) (kx0Var.d() & 4294967295L)) <= Float.intBitsToFloat((int) (kx0Var.d() >> 32))) {
                            f5 += f;
                        }
                        float fR0 = (f5 / ((float) (((double) kx0Var.r0(Float.intBitsToFloat((int) (kx0Var.d() >> 32)))) * 3.141592653589793d))) * 360.0f;
                        float fFloatValue2 = ((Number) pq1VarK2.getValue()).floatValue() + ((Number) pq1VarK.getValue()).floatValue();
                        long jU = kx0Var.U();
                        eh ehVarZ = kx0Var.z();
                        long jZ = ehVarZ.z();
                        ehVarZ.u().j();
                        try {
                            ((dh1) ehVarZ.o).r(fFloatValue2, jU);
                            rz2.b(kx0Var, Math.min(fFloatValue, fR0) + fFloatValue, (360.0f - fFloatValue) - (Math.min(fFloatValue, fR0) * 2.0f), j5, ht3Var2);
                            rz2.b(kx0Var, 0.0f, fFloatValue, j6, ht3Var2);
                            ehVarZ.u().h();
                            ehVarZ.K(jZ);
                            return t64.a;
                        } catch (Throwable th) {
                            ehVarZ.u().h();
                            ehVarZ.K(jZ);
                            throw th;
                        }
                    }
                };
                ag1Var.g0(obj2);
                objK2 = obj2;
            }
            tv4.b(nd2VarC, (pe1) objK2, ag1Var, 0);
            j3 = j4;
            i3 = i5;
            f3 = f4;
        } else {
            nd2Var2 = nd2Var;
            ag1Var.Q();
            j3 = j2;
            i3 = i;
            f3 = f2;
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            final nd2 nd2Var3 = nd2Var2;
            c33VarR.d = new df1(j, f, j3, i3, f3, i2) { // from class: qz2
                public final /* synthetic */ long o;
                public final /* synthetic */ float p;
                public final /* synthetic */ long q;
                public final /* synthetic */ int r;
                public final /* synthetic */ float s;

                @Override // defpackage.df1
                public final Object f(Object obj3, Object obj4) {
                    ((Integer) obj4).getClass();
                    int iF0 = qj0.f0(391);
                    rz2.a(this.n, this.o, this.p, this.q, this.r, this.s, (ag1) obj3, iF0);
                    return t64.a;
                }
            };
        }
    }

    public static final void b(kx0 kx0Var, float f, float f2, long j, ht3 ht3Var) {
        float f3 = ht3Var.f / 2.0f;
        float fIntBitsToFloat = Float.intBitsToFloat((int) (kx0Var.d() >> 32)) - (2.0f * f3);
        kx0Var.s0(j, f, f2, (((long) Float.floatToRawIntBits(f3)) << 32) | (((long) Float.floatToRawIntBits(f3)) & 4294967295L), (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & 4294967295L), ht3Var);
    }
}

package defpackage;

import android.os.Trace;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cy2 implements m02 {
    public long A;
    public long B;
    public long C = sd2.a();
    public boolean D;
    public final /* synthetic */ mu0 E;
    public final int n;
    public final eh o;
    public final pe1 p;
    public mf0 q;
    public nt3 r;
    public kz1 s;
    public boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f58u;
    public boolean v;
    public Object w;
    public boolean x;
    public by2 y;
    public boolean z;

    public cy2(mu0 mu0Var, int i, eh ehVar, t3 t3Var) {
        this.E = mu0Var;
        this.n = i;
        this.o = ehVar;
        this.p = t3Var;
    }

    @Override // defpackage.m02
    public final void a() {
        this.z = true;
    }

    public final void b() {
        kz1 kz1Var = this.s;
        if (kz1Var != null) {
            switch (kz1Var.a) {
                case 0:
                    break;
                default:
                    dz1 dz1VarB = kz1Var.b();
                    if ((dz1VarB != null ? dz1VarB.f : null) != null) {
                        lz1.a(kz1Var.b, kz1Var.c);
                    }
                    break;
            }
        }
        this.s = null;
        nt3 nt3Var = this.r;
        if (nt3Var != null) {
            nt3Var.a();
        }
        this.r = null;
        this.y = null;
    }

    public final boolean c(zb zbVar) {
        boolean zD;
        if (!this.E.a) {
            return false;
        }
        if (this.z) {
            Trace.beginSection("compose:lazy:prefetch:execute:urgent");
            try {
                zD = d(zbVar);
            } finally {
                Trace.endSection();
            }
        } else {
            zD = d(zbVar);
        }
        kt4.h0(-1L, "compose:lazy:prefetch:execute:item");
        return zD;
    }

    @Override // defpackage.m02
    public final void cancel() {
        if (this.f58u) {
            return;
        }
        this.f58u = true;
        b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0243  */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d(defpackage.zb r24) {
        /*
            Method dump skipped, instruction units count: 868
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cy2.d(zb):boolean");
    }

    public final boolean e() {
        kz1 kz1Var;
        return this.v || ((kz1Var = this.s) != null && kz1Var.c());
    }

    public final void f(Object obj, Object obj2, mp mpVar) {
        kz1 kz1Var;
        kz1 kz1Var2 = this.s;
        int i = 0;
        if (kz1Var2 == null) {
            mu0 mu0Var = this.E;
            df1 df1VarA = ((c02) mu0Var.b).a(this.n, obj, obj2);
            lz1 lz1VarA = ((pt3) mu0Var.c).a();
            if (lz1VarA.n.H()) {
                lz1VarA.k(obj, df1VarA, true);
                kz1Var = new kz1(lz1VarA, obj, 1);
            } else {
                kz1Var = new kz1(lz1VarA, obj, i);
            }
            kz1Var2 = kz1Var;
            this.s = kz1Var2;
            this.w = obj;
        }
        this.D = false;
        while (!kz1Var2.c() && !this.D) {
            rr rrVar = new rr(9, this, mpVar);
            switch (kz1Var2.a) {
                case 0:
                    break;
                default:
                    dz1 dz1VarB = kz1Var2.b();
                    zt2 zt2Var = dz1VarB != null ? dz1VarB.f : null;
                    if (zt2Var != null && !zt2Var.c()) {
                        po3 po3VarX = k75.x();
                        pe1 pe1VarE = po3VarX != null ? po3VarX.e() : null;
                        po3 po3VarE = k75.E(po3VarX);
                        try {
                            zt2Var.e(rrVar);
                        } finally {
                        }
                    }
                    break;
            }
        }
        h();
        boolean z = this.D;
        long j = this.B;
        if (z) {
            mpVar.b = mp.a(j, mpVar.b);
        } else {
            mpVar.a = mp.a(j, mpVar.a);
        }
    }

    public final boolean g(long j, long j2) {
        if (this.z) {
            j2 = 0;
        }
        return j > j2;
    }

    public final void h() {
        long jZ;
        long jA = sd2.a();
        long j = this.C;
        int i = sd2.b;
        long j2 = Long.MAX_VALUE;
        if (((j - 1) | 1) != Long.MAX_VALUE) {
            jZ = (1 | (jA - 1)) == Long.MAX_VALUE ? dm0.z(jA) : dm0.K(jA, j);
        } else if (jA == j) {
            bx3 bx3Var = cy0.o;
            jZ = 0;
        } else {
            jZ = cy0.i(dm0.z(j));
        }
        long j3 = jZ >> 1;
        bx3 bx3Var2 = cy0.o;
        if ((((int) jZ) & 1) == 0) {
            j2 = j3;
        } else if (j3 <= 9223372036854L) {
            j2 = j3 < -9223372036854L ? Long.MIN_VALUE : j3 * 1000000;
        }
        this.B = j2;
        long j4 = this.A - j2;
        this.A = j4;
        this.C = jA;
        kt4.h0(j4, "compose:lazy:prefetch:available_time_nanos");
    }

    public final String toString() {
        return "HandleAndRequestImpl { index = " + this.n + ", constraints = " + this.q + ", isComposed = " + e() + ", isMeasured = " + this.t + ", isCanceled = " + this.f58u + " }";
    }
}

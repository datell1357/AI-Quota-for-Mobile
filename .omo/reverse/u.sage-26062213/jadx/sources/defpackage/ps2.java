package defpackage;

import com.google.android.gms.common.api.Api;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ps2 {
    public String a;
    public ay3 b;
    public qa1 c;
    public int d;
    public boolean e;
    public int f;
    public int g;
    public as0 i;
    public nb j;
    public boolean k;
    public dd2 m;
    public os2 n;
    public hy1 o;
    public long s;
    public long h = er1.a;
    public long l = 0;
    public long p = nf0.g(0, 0, 0, 0);
    public int q = -1;
    public int r = -1;

    public ps2(String str, ay3 ay3Var, qa1 qa1Var, int i, boolean z, int i2, int i3) {
        this.a = str;
        this.b = ay3Var;
        this.c = qa1Var;
        this.d = i;
        this.e = z;
        this.f = i2;
        this.g = i3;
    }

    public static long f(ps2 ps2Var, long j, hy1 hy1Var) {
        int i;
        ay3 ay3Var = ps2Var.b;
        dd2 dd2Var = ps2Var.m;
        as0 as0Var = ps2Var.i;
        as0Var.getClass();
        qa1 qa1Var = ps2Var.c;
        if ((dd2Var == null || hy1Var != dd2Var.a || !fl4.u(ay3Var, hy1Var).equals(dd2Var.b) || as0Var.b() != dd2Var.c.n || qa1Var != dd2Var.d) && ((dd2Var = dd2.h) == null || hy1Var != dd2Var.a || !fl4.u(ay3Var, hy1Var).equals(dd2Var.b) || as0Var.b() != dd2Var.c.n || qa1Var != dd2Var.d)) {
            dd2Var = new dd2(hy1Var, fl4.u(ay3Var, hy1Var), new ds0(as0Var.b(), as0Var.k()), qa1Var);
            dd2.h = dd2Var;
        }
        ps2Var.m = dd2Var;
        int i2 = ps2Var.g;
        ds0 ds0Var = dd2Var.c;
        float f = dd2Var.g;
        float f2 = dd2Var.f;
        int i3 = 1;
        if (Float.isNaN(f) || Float.isNaN(f2)) {
            String str = ed2.a;
            ay3 ay3Var2 = dd2Var.e;
            qa1 qa1Var2 = dd2Var.d;
            g01 g01Var = g01.n;
            float fB = new nb(new rb(str, ay3Var2, g01Var, g01Var, qa1Var2, ds0Var), 1, 1, nf0.b(0, 0, 15)).b();
            i3 = 1;
            float fB2 = new nb(new rb(ed2.b, dd2Var.e, g01Var, g01Var, dd2Var.d, ds0Var), 2, 1, nf0.b(0, 0, 15)).b() - fB;
            dd2Var.g = fB;
            dd2Var.f = fB2;
            f2 = fB2;
            f = fB;
        }
        if (i2 != i3) {
            int iRound = Math.round((f2 * (i2 - i3)) + f);
            i = iRound >= 0 ? iRound : 0;
            int iG = mf0.g(j);
            if (i > iG) {
                i = iG;
            }
        } else {
            i = mf0.i(j);
        }
        return nf0.a(mf0.j(j), mf0.h(j), i, mf0.g(j));
    }

    public final int a(int i, hy1 hy1Var) {
        int i2 = this.q;
        int i3 = this.r;
        if (i == i2 && i2 != -1) {
            return i3;
        }
        long jA = nf0.a(0, i, 0, Api.BaseClientBuilder.API_PRIORITY_OTHER);
        if (this.g > 1) {
            jA = f(this, jA, hy1Var);
        }
        os2 os2VarE = e(hy1Var);
        long jK = se0.k(jA, this.e, this.d, os2VarE.c());
        boolean z = this.e;
        int i4 = this.d;
        int i5 = this.f;
        int iP = is0.p(new nb((rb) os2VarE, ((z || !(i4 == 2 || i4 == 4 || i4 == 5)) && i5 >= 1) ? i5 : 1, i4, jK).b());
        int i6 = mf0.i(jA);
        if (iP < i6) {
            iP = i6;
        }
        this.q = i;
        this.r = iP;
        return iP;
    }

    public final boolean b(long j, hy1 hy1Var) {
        os2 os2Var;
        this.s = (this.s << 2) | 3;
        boolean z = true;
        long jF = this.g > 1 ? f(this, j, hy1Var) : j;
        nb nbVar = this.j;
        boolean z2 = false;
        if (nbVar != null && (os2Var = this.n) != null && !os2Var.b() && hy1Var == this.o && (mf0.b(jF, this.p) || (mf0.h(jF) == mf0.h(this.p) && mf0.j(jF) == mf0.j(this.p) && mf0.g(jF) >= nbVar.b() && !nbVar.d.d))) {
            if (!mf0.b(jF, this.p)) {
                nb nbVar2 = this.j;
                nbVar2.getClass();
                this.l = nf0.d(jF, (((long) is0.p(Math.min(nbVar2.a.i.c(), nbVar2.c()))) << 32) | (((long) is0.p(nbVar2.b())) & 4294967295L));
                if (this.d == 3 || (((int) (r12 >> 32)) >= nbVar2.c() && ((int) (4294967295L & r12)) >= nbVar2.b())) {
                    z = false;
                }
                this.k = z;
                this.p = jF;
            }
            return false;
        }
        os2 os2VarE = e(hy1Var);
        long jK = se0.k(jF, this.e, this.d, os2VarE.c());
        boolean z3 = this.e;
        int i = this.d;
        int i2 = this.f;
        nb nbVar3 = new nb((rb) os2VarE, ((z3 || !(i == 2 || i == 4 || i == 5)) && i2 >= 1) ? i2 : 1, i, jK);
        this.p = jF;
        this.l = nf0.d(jF, (((long) is0.p(nbVar3.b())) & 4294967295L) | (((long) is0.p(nbVar3.c())) << 32));
        if (this.d != 3 && (((int) (r1 >> 32)) < nbVar3.c() || ((int) (r1 & 4294967295L)) < nbVar3.b())) {
            z2 = true;
        }
        this.k = z2;
        this.j = nbVar3;
        return true;
    }

    public final void c() {
        this.j = null;
        this.n = null;
        this.o = null;
        this.q = -1;
        this.r = -1;
        this.p = nf0.g(0, 0, 0, 0);
        this.l = 0L;
        this.k = false;
    }

    public final void d(as0 as0Var) {
        long jA;
        as0 as0Var2 = this.i;
        if (as0Var != null) {
            int i = er1.b;
            jA = er1.a(as0Var.b(), as0Var.k());
        } else {
            jA = er1.a;
        }
        if (as0Var2 == null) {
            this.i = as0Var;
            this.h = jA;
        } else if (as0Var == null || this.h != jA) {
            this.i = as0Var;
            this.h = jA;
            this.s = (this.s << 2) | 1;
            c();
        }
    }

    public final os2 e(hy1 hy1Var) {
        os2 rbVar = this.n;
        if (rbVar == null || hy1Var != this.o || rbVar.b()) {
            this.o = hy1Var;
            String str = this.a;
            ay3 ay3VarU = fl4.u(this.b, hy1Var);
            as0 as0Var = this.i;
            as0Var.getClass();
            qa1 qa1Var = this.c;
            g01 g01Var = g01.n;
            rbVar = new rb(str, ay3VarU, g01Var, g01Var, qa1Var, as0Var);
        }
        this.n = rbVar;
        return rbVar;
    }

    public final String toString() {
        return di0.x(di0.B("ParagraphLayoutCache(paragraph=", this.j != null ? "<paragraph>" : "null", ", lastDensity=", er1.b(this.h), ", history="), this.s, ", constraints=$)");
    }
}

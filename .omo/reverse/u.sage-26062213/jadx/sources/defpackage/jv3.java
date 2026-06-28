package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class jv3 {
    public static final float a;
    public static final float b;
    public static final float c;
    public static final float d;
    public static final float e;
    public static final oo3 f;

    static {
        float f2 = gg4.s;
        a = f2;
        b = gg4.C;
        c = gg4.z;
        float f3 = gg4.w;
        d = f3;
        e = (f3 - f2) / 2.0f;
        f = new oo3();
    }

    public static final void a(final boolean z, final pe1 pe1Var, nd2 nd2Var, boolean z2, final gv3 gv3Var, ag1 ag1Var, final int i) {
        int i2;
        final nd2 nd2Var2;
        final boolean z3;
        boolean z4;
        nd2 nd2Var3;
        ag1Var.X(-263339167);
        if ((i & 6) == 0) {
            i2 = i | (ag1Var.g(z) ? 4 : 2);
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= ag1Var.h(pe1Var) ? 32 : 16;
        }
        int i3 = i2 | 28032;
        if ((i & 196608) == 0) {
            i3 |= ag1Var.f(gv3Var) ? 131072 : 65536;
        }
        int i4 = i3 | 1572864;
        if (ag1Var.N(i4 & 1, (599187 & i4) != 599186)) {
            ag1Var.S();
            int i5 = i & 1;
            nd2 nd2VarA = kd2.b;
            if (i5 == 0 || ag1Var.x()) {
                z4 = true;
                nd2Var3 = nd2VarA;
            } else {
                ag1Var.Q();
                nd2Var3 = nd2Var;
                z4 = z2;
            }
            ag1Var.q();
            ag1Var.W(1768510810);
            Object objK = ag1Var.K();
            if (objK == rb0.a) {
                objK = new vf2();
                ag1Var.g0(objK);
            }
            vf2 vf2Var = (vf2) objK;
            ag1Var.p(false);
            if (pe1Var != null) {
                ck1 ck1Var = at1.a;
                nd2VarA = fl4.A(fd2.b, z, vf2Var, z4, new q93(2), pe1Var);
            }
            boolean z5 = z4;
            nd2 nd2VarH = on3.h(nd2Var3.c(nd2VarA));
            float f2 = c;
            float f3 = d;
            int i6 = i4 << 3;
            int i7 = i4 >> 6;
            b(nd2VarH.c(new nn3(f2, f3, f2, f3, false)), z, z5, gv3Var, vf2Var, ol3.a(gg4.p, ag1Var), ag1Var, (i6 & 57344) | (i6 & 112) | (i7 & 896) | (i7 & 7168));
            z3 = z5;
            nd2Var2 = nd2Var3;
        } else {
            ag1Var.Q();
            nd2Var2 = nd2Var;
            z3 = z2;
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new df1() { // from class: iv3
                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    jv3.a(z, pe1Var, nd2Var2, z3, gv3Var, (ag1) obj, qj0.f0(i | 1));
                    return t64.a;
                }
            };
        }
    }

    public static final void b(final nd2 nd2Var, final boolean z, final boolean z2, final gv3 gv3Var, final xs1 xs1Var, final jl3 jl3Var, ag1 ag1Var, final int i) {
        int i2;
        long j;
        long j2;
        ag1Var.X(-670917213);
        if ((i & 6) == 0) {
            i2 = (ag1Var.f(nd2Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= ag1Var.g(z) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= ag1Var.g(z2) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= ag1Var.f(gv3Var) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= ag1Var.h(null) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= ag1Var.f(xs1Var) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= ag1Var.f(jl3Var) ? 1048576 : 524288;
        }
        if (ag1Var.N(i2 & 1, (599187 & i2) != 599186)) {
            long j3 = z2 ? z ? gv3Var.b : gv3Var.f : z ? gv3Var.j : gv3Var.n;
            long j4 = z2 ? z ? gv3Var.a : gv3Var.e : z ? gv3Var.i : gv3Var.m;
            jl3 jl3VarA = ol3.a(gg4.y, ag1Var);
            lc0 lc0Var = b93.a;
            o93 o93Var = ((p93) ag1Var.j(lc0Var)).a;
            float f2 = gg4.x;
            if (z2) {
                j = j4;
                j2 = z ? gv3Var.c : gv3Var.g;
            } else {
                j = j4;
                j2 = z ? gv3Var.k : gv3Var.o;
            }
            nd2 nd2VarC = bi4.j(nd2Var.c(new ex(f2, new sp3(j2), jl3VarA)), j3, jl3VarA).c(kd2.b);
            db2 db2VarD = qx.d(mj1.o, false);
            int iHashCode = Long.hashCode(ag1Var.T);
            hu2 hu2VarL = ag1Var.l();
            nd2 nd2VarH = is0.H(ag1Var, nd2VarC);
            lb0.c.getClass();
            ic0 ic0Var = kb0.b;
            ag1Var.Z();
            if (ag1Var.S) {
                ag1Var.k(ic0Var);
            } else {
                ag1Var.j0();
            }
            fd fdVar = kb0.f;
            ht4.D(fdVar, ag1Var, db2VarD);
            fd fdVar2 = kb0.e;
            ht4.D(fdVar2, ag1Var, hu2VarL);
            Integer numValueOf = Integer.valueOf(iHashCode);
            fd fdVar3 = kb0.g;
            ht4.D(fdVar3, ag1Var, numValueOf);
            l9 l9Var = kb0.h;
            ht4.y(ag1Var, l9Var);
            fd fdVar4 = kb0.d;
            ht4.D(fdVar4, ag1Var, nd2VarH);
            nd2 nd2VarC2 = on4.k().c(new zy3(xs1Var, z, zf5.Y(fe2.n, ag1Var)));
            float f3 = gg4.v / 2.0f;
            o93 o93Var2 = ((p93) ag1Var.j(lc0Var)).a;
            nd2 nd2VarJ = bi4.j(wp1.a(nd2VarC2, xs1Var, b93.a(f3, null, 220)), j, jl3Var);
            db2 db2VarD2 = qx.d(mj1.s, false);
            int iHashCode2 = Long.hashCode(ag1Var.T);
            hu2 hu2VarL2 = ag1Var.l();
            nd2 nd2VarH2 = is0.H(ag1Var, nd2VarJ);
            ag1Var.Z();
            if (ag1Var.S) {
                ag1Var.k(ic0Var);
            } else {
                ag1Var.j0();
            }
            ht4.D(fdVar, ag1Var, db2VarD2);
            ht4.D(fdVar2, ag1Var, hu2VarL2);
            di0.C(iHashCode2, ag1Var, fdVar3, ag1Var, l9Var);
            ht4.D(fdVar4, ag1Var, nd2VarH2);
            ag1Var.W(1236071411);
            ag1Var.p(false);
            ag1Var.p(true);
            ag1Var.p(true);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new df1() { // from class: hv3
                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    jv3.b(nd2Var, z, z2, gv3Var, xs1Var, jl3Var, (ag1) obj, qj0.f0(i | 1));
                    return t64.a;
                }
            };
        }
    }
}

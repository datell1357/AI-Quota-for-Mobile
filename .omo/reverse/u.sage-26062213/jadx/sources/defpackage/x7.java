package defpackage;

import com.google.api.client.googleapis.media.MediaHttpDownloader;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class x7 {
    public static final ds2 a = is0.f(16.0f);
    public static final ds2 b = is0.f(16.0f);
    public static final lc0 c = new lc0(new l6(2));

    public static final void a(final ka0 ka0Var, nd2 nd2Var, final df1 df1Var, final df1 df1Var2, final df1 df1Var3, final jl3 jl3Var, final long j, final long j2, final long j3, final long j4, final long j5, ag1 ag1Var, final int i) {
        final nd2 nd2Var2;
        ag1Var.X(1378716401);
        int i2 = i | 48 | (ag1Var.h(df1Var) ? 256 : 128) | (ag1Var.h(df1Var2) ? 2048 : 1024) | (ag1Var.h(df1Var3) ? 16384 : 8192) | (ag1Var.f(jl3Var) ? 131072 : 65536) | (ag1Var.e(j) ? 1048576 : 524288) | (ag1Var.c(0.0f) ? 8388608 : 4194304) | (ag1Var.e(j2) ? 67108864 : MediaHttpDownloader.MAXIMUM_CHUNK_SIZE) | (ag1Var.e(j3) ? 536870912 : 268435456);
        if (ag1Var.N(i2 & 1, ((i2 & 306783379) == 306783378 && (((ag1Var.e(j4) ? (char) 4 : (char) 2) | (ag1Var.e(j5) ? ' ' : (char) 16)) & 19) == 18) ? false : true)) {
            ka0 ka0VarU = qj0.U(-652798794, new df1() { // from class: v7
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r8v5, types: [boolean, int] */
                /* JADX WARN: Type inference failed for: r8v7 */
                /* JADX WARN: Type inference failed for: r8v8 */
                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ic0 ic0Var;
                    boolean z;
                    boolean z2;
                    ay3 ay3VarA;
                    final ?? r8;
                    ag1 ag1Var2 = (ag1) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    final int i3 = 1;
                    if (ag1Var2.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                        nd2 nd2VarJ = is0.J(kd2.b, m7.a);
                        k80 k80VarA = i80.a(th.c, mj1.z, ag1Var2, 0);
                        int iHashCode = Long.hashCode(ag1Var2.T);
                        hu2 hu2VarL = ag1Var2.l();
                        nd2 nd2VarH = is0.H(ag1Var2, nd2VarJ);
                        lb0.c.getClass();
                        ic0 ic0Var2 = kb0.b;
                        ag1Var2.Z();
                        if (ag1Var2.S) {
                            ag1Var2.k(ic0Var2);
                        } else {
                            ag1Var2.j0();
                        }
                        fd fdVar = kb0.f;
                        ht4.D(fdVar, ag1Var2, k80VarA);
                        fd fdVar2 = kb0.e;
                        ht4.D(fdVar2, ag1Var2, hu2VarL);
                        Integer numValueOf = Integer.valueOf(iHashCode);
                        fd fdVar3 = kb0.g;
                        ht4.D(fdVar3, ag1Var2, numValueOf);
                        l9 l9Var = kb0.h;
                        ht4.y(ag1Var2, l9Var);
                        fd fdVar4 = kb0.d;
                        ht4.D(fdVar4, ag1Var2, nd2VarH);
                        final df1 df1Var4 = df1Var;
                        if (df1Var4 == null) {
                            ag1Var2.W(346092326);
                            ag1Var2.p(false);
                            z = false;
                            ic0Var = ic0Var2;
                        } else {
                            ag1Var2.W(346092327);
                            ic0Var = ic0Var2;
                            gg4.a(bg0.a.a(new t70(j3)), qj0.U(-1128150638, new df1() { // from class: n7
                                @Override // defpackage.df1
                                public final Object f(Object obj3, Object obj4) {
                                    int i4 = i3;
                                    t64 t64Var = t64.a;
                                    df1 df1Var5 = df1Var4;
                                    ag1 ag1Var3 = (ag1) obj3;
                                    int iIntValue2 = ((Integer) obj4).intValue();
                                    switch (i4) {
                                        case 0:
                                            if (!ag1Var3.N(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                                ag1Var3.Q();
                                            } else {
                                                if (1.0f <= 0.0d) {
                                                    yq1.a("invalid weight; must be greater than zero");
                                                }
                                                nd2 nd2VarC = is0.J(new nz1(1.0f > Float.MAX_VALUE ? Float.MAX_VALUE : 1.0f, false), m7.b).c(new ak1(mj1.z));
                                                db2 db2VarD = qx.d(mj1.o, false);
                                                int iHashCode2 = Long.hashCode(ag1Var3.T);
                                                hu2 hu2VarL2 = ag1Var3.l();
                                                nd2 nd2VarH2 = is0.H(ag1Var3, nd2VarC);
                                                lb0.c.getClass();
                                                ic0 ic0Var3 = kb0.b;
                                                ag1Var3.Z();
                                                if (ag1Var3.S) {
                                                    ag1Var3.k(ic0Var3);
                                                } else {
                                                    ag1Var3.j0();
                                                }
                                                ht4.D(kb0.f, ag1Var3, db2VarD);
                                                ht4.D(kb0.e, ag1Var3, hu2VarL2);
                                                ht4.D(kb0.g, ag1Var3, Integer.valueOf(iHashCode2));
                                                ht4.y(ag1Var3, kb0.h);
                                                ht4.D(kb0.d, ag1Var3, nd2VarH2);
                                                df1Var5.f(ag1Var3, 0);
                                                ag1Var3.p(true);
                                            }
                                            break;
                                        default:
                                            if (!ag1Var3.N(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                                ag1Var3.Q();
                                            } else {
                                                nd2 nd2VarC2 = is0.J(kd2.b, x7.a).c(new ak1(mj1.A));
                                                db2 db2VarD2 = qx.d(mj1.o, false);
                                                int iHashCode3 = Long.hashCode(ag1Var3.T);
                                                hu2 hu2VarL3 = ag1Var3.l();
                                                nd2 nd2VarH3 = is0.H(ag1Var3, nd2VarC2);
                                                lb0.c.getClass();
                                                ic0 ic0Var4 = kb0.b;
                                                ag1Var3.Z();
                                                if (ag1Var3.S) {
                                                    ag1Var3.k(ic0Var4);
                                                } else {
                                                    ag1Var3.j0();
                                                }
                                                ht4.D(kb0.f, ag1Var3, db2VarD2);
                                                ht4.D(kb0.e, ag1Var3, hu2VarL3);
                                                ht4.D(kb0.g, ag1Var3, Integer.valueOf(iHashCode3));
                                                ht4.y(ag1Var3, kb0.h);
                                                ht4.D(kb0.d, ag1Var3, nd2VarH3);
                                                df1Var5.f(ag1Var3, 0);
                                                ag1Var3.p(true);
                                            }
                                            break;
                                    }
                                    return t64Var;
                                }
                            }, ag1Var2), ag1Var2, 56);
                            z = false;
                            ag1Var2.p(false);
                        }
                        df1 df1Var5 = df1Var2;
                        if (df1Var5 == null) {
                            ag1Var2.W(346408309);
                            ag1Var2.p(z);
                            r8 = z;
                        } else {
                            ag1Var2.W(346408310);
                            if (((Boolean) dx2.a.getValue()).booleanValue()) {
                                ag1Var2.W(1812109189);
                                ay3VarA = ay3.a(((ua2) ag1Var2.j(wa2.a)).b.f, on4.D(20), null, null, 0L, on4.D(26), null, 16646141);
                                z2 = false;
                                ag1Var2.p(false);
                            } else {
                                z2 = false;
                                ag1Var2.W(1812321322);
                                ay3VarA = g54.a(ht4.i, ag1Var2);
                                ag1Var2.p(false);
                            }
                            w80.a(j4, ay3VarA, qj0.U(71284337, new l4(1, df1Var4, df1Var5), ag1Var2), ag1Var2, 384);
                            ag1Var2.p(z2);
                            r8 = z2;
                        }
                        final df1 df1Var6 = df1Var3;
                        if (df1Var6 == null) {
                            ag1Var2.W(347551589);
                            ag1Var2.p(r8);
                        } else {
                            ag1Var2.W(347551590);
                            w80.a(j5, g54.a(ht4.k, ag1Var2), qj0.U(705583346, new df1() { // from class: n7
                                @Override // defpackage.df1
                                public final Object f(Object obj3, Object obj4) {
                                    int i4 = r8;
                                    t64 t64Var = t64.a;
                                    df1 df1Var52 = df1Var6;
                                    ag1 ag1Var3 = (ag1) obj3;
                                    int iIntValue2 = ((Integer) obj4).intValue();
                                    switch (i4) {
                                        case 0:
                                            if (!ag1Var3.N(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                                ag1Var3.Q();
                                            } else {
                                                if (1.0f <= 0.0d) {
                                                    yq1.a("invalid weight; must be greater than zero");
                                                }
                                                nd2 nd2VarC = is0.J(new nz1(1.0f > Float.MAX_VALUE ? Float.MAX_VALUE : 1.0f, false), m7.b).c(new ak1(mj1.z));
                                                db2 db2VarD = qx.d(mj1.o, false);
                                                int iHashCode2 = Long.hashCode(ag1Var3.T);
                                                hu2 hu2VarL2 = ag1Var3.l();
                                                nd2 nd2VarH2 = is0.H(ag1Var3, nd2VarC);
                                                lb0.c.getClass();
                                                ic0 ic0Var3 = kb0.b;
                                                ag1Var3.Z();
                                                if (ag1Var3.S) {
                                                    ag1Var3.k(ic0Var3);
                                                } else {
                                                    ag1Var3.j0();
                                                }
                                                ht4.D(kb0.f, ag1Var3, db2VarD);
                                                ht4.D(kb0.e, ag1Var3, hu2VarL2);
                                                ht4.D(kb0.g, ag1Var3, Integer.valueOf(iHashCode2));
                                                ht4.y(ag1Var3, kb0.h);
                                                ht4.D(kb0.d, ag1Var3, nd2VarH2);
                                                df1Var52.f(ag1Var3, 0);
                                                ag1Var3.p(true);
                                            }
                                            break;
                                        default:
                                            if (!ag1Var3.N(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                                ag1Var3.Q();
                                            } else {
                                                nd2 nd2VarC2 = is0.J(kd2.b, x7.a).c(new ak1(mj1.A));
                                                db2 db2VarD2 = qx.d(mj1.o, false);
                                                int iHashCode3 = Long.hashCode(ag1Var3.T);
                                                hu2 hu2VarL3 = ag1Var3.l();
                                                nd2 nd2VarH3 = is0.H(ag1Var3, nd2VarC2);
                                                lb0.c.getClass();
                                                ic0 ic0Var4 = kb0.b;
                                                ag1Var3.Z();
                                                if (ag1Var3.S) {
                                                    ag1Var3.k(ic0Var4);
                                                } else {
                                                    ag1Var3.j0();
                                                }
                                                ht4.D(kb0.f, ag1Var3, db2VarD2);
                                                ht4.D(kb0.e, ag1Var3, hu2VarL3);
                                                ht4.D(kb0.g, ag1Var3, Integer.valueOf(iHashCode3));
                                                ht4.y(ag1Var3, kb0.h);
                                                ht4.D(kb0.d, ag1Var3, nd2VarH3);
                                                df1Var52.f(ag1Var3, 0);
                                                ag1Var3.p(true);
                                            }
                                            break;
                                    }
                                    return t64Var;
                                }
                            }, ag1Var2), ag1Var2, 384);
                            ag1Var2.p(r8);
                        }
                        ak1 ak1Var = new ak1(mj1.B);
                        db2 db2VarD = qx.d(mj1.o, r8);
                        int iHashCode2 = Long.hashCode(ag1Var2.T);
                        hu2 hu2VarL2 = ag1Var2.l();
                        nd2 nd2VarH2 = is0.H(ag1Var2, ak1Var);
                        ag1Var2.Z();
                        if (ag1Var2.S) {
                            ag1Var2.k(ic0Var);
                        } else {
                            ag1Var2.j0();
                        }
                        ht4.D(fdVar, ag1Var2, db2VarD);
                        ht4.D(fdVar2, ag1Var2, hu2VarL2);
                        di0.C(iHashCode2, ag1Var2, fdVar3, ag1Var2, l9Var);
                        ht4.D(fdVar4, ag1Var2, nd2VarH2);
                        w80.a(j2, g54.a(ht4.e, ag1Var2), ka0Var, ag1Var2, 0);
                        ag1Var2.p(true);
                        ag1Var2.p(true);
                    } else {
                        ag1Var2.Q();
                    }
                    return t64.a;
                }
            }, ag1Var);
            int i3 = i2 >> 12;
            int i4 = (i3 & 896) | (i3 & 112) | 12582918 | ((i2 >> 9) & 57344);
            kd2 kd2Var = kd2.b;
            wu3.a(kd2Var, jl3Var, j, 0L, 0.0f, null, ka0VarU, ag1Var, i4, 104);
            nd2Var2 = kd2Var;
        } else {
            ag1Var.Q();
            nd2Var2 = nd2Var;
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new df1(nd2Var2, df1Var, df1Var2, df1Var3, jl3Var, j, j2, j3, j4, j5, i) { // from class: w7
                public final /* synthetic */ nd2 o;
                public final /* synthetic */ df1 p;
                public final /* synthetic */ df1 q;
                public final /* synthetic */ df1 r;
                public final /* synthetic */ jl3 s;
                public final /* synthetic */ long t;

                /* JADX INFO: renamed from: u, reason: collision with root package name */
                public final /* synthetic */ long f392u;
                public final /* synthetic */ long v;
                public final /* synthetic */ long w;
                public final /* synthetic */ long x;

                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iF0 = qj0.f0(7);
                    x7.a(this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.f392u, this.v, this.w, this.x, (ag1) obj, iF0);
                    return t64.a;
                }
            };
        }
    }

    public static final void b(final float f, final ka0 ka0Var, ag1 ag1Var, final int i) {
        hy1 hy1Var;
        ag1Var.X(-917637668);
        int i2 = (ag1Var.c(f) ? 32 : 16) | i;
        if (ag1Var.N(i2 & 1, (i2 & 147) != 146)) {
            is3 is3Var = kc0.n;
            final hy1 hy1Var2 = (hy1) ag1Var.j(is3Var);
            int iOrdinal = hy1Var2.ordinal();
            if (iOrdinal == 0) {
                hy1Var = hy1.o;
            } else {
                if (iOrdinal != 1) {
                    p61.x();
                    return;
                }
                hy1Var = hy1.n;
            }
            gg4.a(is3Var.a(hy1Var), qj0.U(-1986402020, new df1() { // from class: o7
                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ag1 ag1Var2 = (ag1) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    if (ag1Var2.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                        nt1.b(null, new rh(8.0f, new k21(2)), new rh(f, new k21(2)), null, 0, 0, qj0.U(879927511, new q7(hy1Var2, ka0Var, 0), ag1Var2), ag1Var2, 1572864);
                    } else {
                        ag1Var2.Q();
                    }
                    return t64.a;
                }
            }, ag1Var), ag1Var, 56);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new df1(f, ka0Var, i) { // from class: p7
                public final /* synthetic */ float n;
                public final /* synthetic */ ka0 o;

                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iF0 = qj0.f0(391);
                    x7.b(this.n, this.o, (ag1) obj, iF0);
                    return t64.a;
                }
            };
        }
    }

    public static final void c(final ne1 ne1Var, final ka0 ka0Var, final nd2 nd2Var, final df1 df1Var, final df1 df1Var2, final df1 df1Var3, final jl3 jl3Var, final long j, final long j2, final long j3, final long j4, final vt0 vt0Var, ag1 ag1Var, final int i, final int i2) {
        int i3;
        ka0 ka0Var2;
        df1 df1Var4;
        int i4;
        ag1Var.X(-867616355);
        if ((i & 6) == 0) {
            i3 = (ag1Var.h(ne1Var) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            ka0Var2 = ka0Var;
            i3 |= ag1Var.h(ka0Var2) ? 32 : 16;
        } else {
            ka0Var2 = ka0Var;
        }
        if ((i & 384) == 0) {
            i3 |= ag1Var.f(nd2Var) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= ag1Var.h(null) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            df1Var4 = df1Var;
            i3 |= ag1Var.h(df1Var4) ? 16384 : 8192;
        } else {
            df1Var4 = df1Var;
        }
        if ((i & 196608) == 0) {
            i3 |= ag1Var.h(df1Var2) ? 131072 : 65536;
        }
        if ((i & 1572864) == 0) {
            i3 |= ag1Var.h(df1Var3) ? 1048576 : 524288;
        }
        if ((i & 12582912) == 0) {
            i3 |= ag1Var.f(jl3Var) ? 8388608 : 4194304;
        }
        if ((i & 100663296) == 0) {
            i3 |= ag1Var.e(j) ? 67108864 : MediaHttpDownloader.MAXIMUM_CHUNK_SIZE;
        }
        if ((i & 805306368) == 0) {
            i3 |= ag1Var.e(j2) ? 536870912 : 268435456;
        }
        if ((i2 & 6) == 0) {
            i4 = i2 | (ag1Var.e(j3) ? 4 : 2);
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= ag1Var.e(j4) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i4 |= ag1Var.c(0.0f) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= ag1Var.f(vt0Var) ? 2048 : 1024;
        }
        int i5 = i4;
        if (ag1Var.N(i3 & 1, ((i3 & 306783379) == 306783378 && (i5 & 1171) == 1170) ? false : true)) {
            final ka0 ka0Var3 = ka0Var2;
            final df1 df1Var5 = df1Var4;
            d(ne1Var, nd2Var, vt0Var, qj0.U(527420759, new df1() { // from class: r7
                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ag1 ag1Var2 = (ag1) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    if (ag1Var2.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                        x7.a(qj0.U(1367541877, new t7(ka0Var3, 0), ag1Var2), null, df1Var5, df1Var2, df1Var3, jl3Var, j, a80.d(ht4.d, ag1Var2), j2, j3, j4, ag1Var2, 6);
                    } else {
                        ag1Var2.Q();
                    }
                    return t64.a;
                }
            }, ag1Var), ag1Var, (i3 & 14) | 3072 | ((i3 >> 3) & 112) | ((i5 >> 3) & 896));
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new df1() { // from class: s7
                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iF0 = qj0.f0(i | 1);
                    int iF02 = qj0.f0(i2);
                    x7.c(ne1Var, ka0Var, nd2Var, df1Var, df1Var2, df1Var3, jl3Var, j, j2, j3, j4, vt0Var, (ag1) obj, iF0, iF02);
                    return t64.a;
                }
            };
        }
    }

    public static final void d(ne1 ne1Var, nd2 nd2Var, vt0 vt0Var, ka0 ka0Var, ag1 ag1Var, int i) {
        int i2;
        ag1Var.X(24925658);
        if ((i & 6) == 0) {
            i2 = (ag1Var.h(ne1Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= ag1Var.f(nd2Var) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= ag1Var.f(vt0Var) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= ag1Var.h(ka0Var) ? 2048 : 1024;
        }
        if (ag1Var.N(i2 & 1, (i2 & 1171) != 1170)) {
            ((bo0) ag1Var.j(c)).a(new qd1(ne1Var, nd2Var, vt0Var, ka0Var, 1), ag1Var, 0);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new u7(ne1Var, nd2Var, vt0Var, ka0Var, i, 0);
        }
    }
}

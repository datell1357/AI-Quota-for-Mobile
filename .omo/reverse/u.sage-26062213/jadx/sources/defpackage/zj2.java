package defpackage;

import com.google.api.client.googleapis.media.MediaHttpDownloader;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class zj2 {
    public static final float a = se0.B;
    public static final float b = 8.0f;
    public static final float c = 4.0f;
    public static final float d = 16.0f;
    public static final float e = 4.0f;
    public static final float f = 12.0f;
    public static final float g = 44.0f;
    public static final lc0 h = new lc0(new t52(11));

    public static final void a(nd2 nd2Var, long j, long j2, hd4 hd4Var, ka0 ka0Var, ag1 ag1Var, int i) {
        nd2 nd2Var2;
        long j3;
        hd4 b32Var;
        ag1Var.X(1054099326);
        int i2 = i | 6 | (ag1Var.e(j) ? 32 : 16) | 11392;
        if (ag1Var.N(i2 & 1, (74899 & i2) != 74898)) {
            ag1Var.S();
            if ((i & 1) == 0 || ag1Var.x()) {
                long jA = a80.a(((ua2) ag1Var.j(wa2.a)).a, j);
                b32Var = new b32(w80.y(ag1Var), 32 | 15);
                nd2Var2 = kd2.b;
                j3 = jA;
            } else {
                ag1Var.Q();
                nd2Var2 = nd2Var;
                j3 = j2;
                b32Var = hd4Var;
            }
            ag1Var.q();
            ((tp0) ag1Var.j(h)).a(new ak2(nd2Var2, j, j3, b32Var, ka0Var), ag1Var, 0);
        } else {
            ag1Var.Q();
            nd2Var2 = nd2Var;
            j3 = j2;
            b32Var = hd4Var;
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new vj2(nd2Var2, j, j3, b32Var, ka0Var, i);
        }
    }

    public static final void b(final db3 db3Var, final boolean z, final ne1 ne1Var, final ka0 ka0Var, nd2 nd2Var, boolean z2, final df1 df1Var, boolean z3, final rj2 rj2Var, ag1 ag1Var, final int i) {
        int i2;
        ag1 ag1Var2;
        rj2 rj2Var2;
        nd2 nd2Var2;
        final boolean z4;
        final boolean z5;
        final boolean z6;
        final boolean z7;
        ka0 ka0VarU;
        ag1Var.X(974293026);
        if ((i & 6) == 0) {
            i2 = (ag1Var.f(db3Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= ag1Var.g(z) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= ag1Var.h(ne1Var) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= ag1Var.h(ka0Var) ? 2048 : 1024;
        }
        int i3 = i2 | 221184;
        if ((1572864 & i) == 0) {
            i3 |= ag1Var.h(df1Var) ? 1048576 : 524288;
        }
        int i4 = i3 | 12582912;
        if ((100663296 & i) == 0) {
            i4 |= ag1Var.f(rj2Var) ? 67108864 : MediaHttpDownloader.MAXIMUM_CHUNK_SIZE;
        }
        int i5 = i4 | 805306368;
        if (ag1Var.N(i5 & 1, (306783379 & i5) != 306783378)) {
            ag1Var.S();
            if ((i & 1) == 0 || ag1Var.x()) {
                nd2Var2 = kd2.b;
                z6 = true;
                z7 = true;
            } else {
                ag1Var.Q();
                nd2Var2 = nd2Var;
                z6 = z2;
                z7 = z3;
            }
            ag1Var.q();
            ag1Var.W(-224975399);
            Object objK = ag1Var.K();
            bx3 bx3Var = rb0.a;
            if (objK == bx3Var) {
                objK = new vf2();
                ag1Var.g0(objK);
            }
            vf2 vf2Var = (vf2) objK;
            ag1Var.p(false);
            fe2 fe2Var = fe2.o;
            final yq3 yq3VarY = zf5.Y(fe2Var, ag1Var);
            boolean z8 = z7;
            ka0 ka0VarU2 = qj0.U(-876637252, new df1() { // from class: wj2
                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    nd2 a60Var;
                    ag1 ag1Var3 = (ag1) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    if (ag1Var3.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                        rj2 rj2Var3 = rj2Var;
                        boolean z9 = z;
                        tr3 tr3VarA = en3.a(!z6 ? rj2Var3.f : z9 ? rj2Var3.a : rj2Var3.d, yq3VarY, ag1Var3);
                        if (df1Var == null || !(z7 || z9)) {
                            ag1Var3.W(-634793532);
                            ag1Var3.p(false);
                            a60Var = kd2.b;
                        } else {
                            ag1Var3.W(-634794445);
                            Object objK2 = ag1Var3.K();
                            if (objK2 == rb0.a) {
                                objK2 = new z82(16);
                                ag1Var3.g0(objK2);
                            }
                            AtomicInteger atomicInteger = dh3.a;
                            a60Var = new a60((pe1) objK2);
                            ag1Var3.p(false);
                        }
                        db2 db2VarD = qx.d(mj1.o, false);
                        int iHashCode = Long.hashCode(ag1Var3.T);
                        hu2 hu2VarL = ag1Var3.l();
                        nd2 nd2VarH = is0.H(ag1Var3, a60Var);
                        lb0.c.getClass();
                        ic0 ic0Var = kb0.b;
                        ag1Var3.Z();
                        if (ag1Var3.S) {
                            ag1Var3.k(ic0Var);
                        } else {
                            ag1Var3.j0();
                        }
                        ht4.D(kb0.f, ag1Var3, db2VarD);
                        ht4.D(kb0.e, ag1Var3, hu2VarL);
                        ht4.D(kb0.g, ag1Var3, Integer.valueOf(iHashCode));
                        ht4.y(ag1Var3, kb0.h);
                        ht4.D(kb0.d, ag1Var3, nd2VarH);
                        gg4.a(bg0.a.a(new t70(((t70) tr3VarA.getValue()).a)), ka0Var, ag1Var3, 8);
                        ag1Var3.p(true);
                    } else {
                        ag1Var3.Q();
                    }
                    return t64.a;
                }
            }, ag1Var);
            if (df1Var == null) {
                ag1Var.W(-224048562);
                ag1Var.p(false);
                ka0VarU = null;
            } else {
                ag1Var.W(-224048561);
                ka0VarU = qj0.U(802208206, new df1() { // from class: xj2
                    @Override // defpackage.df1
                    public final Object f(Object obj, Object obj2) {
                        ag1 ag1Var3 = (ag1) obj;
                        int iIntValue = ((Integer) obj2).intValue();
                        if (ag1Var3.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                            ay3 ay3VarA = g54.a(se0.C, ag1Var3);
                            rj2 rj2Var3 = rj2Var;
                            w80.a(((t70) en3.a(!z6 ? rj2Var3.g : z ? rj2Var3.b : rj2Var3.e, yq3VarY, ag1Var3).getValue()).a, ay3VarA, df1Var, ag1Var3, 0);
                        } else {
                            ag1Var3.Q();
                        }
                        return t64.a;
                    }
                }, ag1Var);
                ag1Var.p(false);
            }
            ka0 ka0Var2 = ka0VarU;
            Object objK2 = ag1Var.K();
            if (objK2 == bx3Var) {
                objK2 = new ts2(0);
                ag1Var.g0(objK2);
            }
            ts2 ts2Var = (ts2) objK2;
            boolean z9 = z6;
            rj2Var2 = rj2Var;
            nd2 nd2VarA = db3Var.a(on3.a(ix.Q(nd2Var2, z, vf2Var, null, z9, new q93(4), ne1Var), Float.NaN, a), true);
            Object objK3 = ag1Var.K();
            if (objK3 == bx3Var) {
                objK3 = new v(20, ts2Var);
                ag1Var.g0(objK3);
            }
            nd2 nd2VarP = mt1.P(nd2VarA, (pe1) objK3);
            db2 db2VarD = qx.d(mj1.s, true);
            int iHashCode = Long.hashCode(ag1Var.T);
            hu2 hu2VarL = ag1Var.l();
            nd2 nd2VarH = is0.H(ag1Var, nd2VarP);
            lb0.c.getClass();
            ic0 ic0Var = kb0.b;
            ag1Var.Z();
            if (ag1Var.S) {
                ag1Var.k(ic0Var);
            } else {
                ag1Var.j0();
            }
            ht4.D(kb0.f, ag1Var, db2VarD);
            ht4.D(kb0.e, ag1Var, hu2VarL);
            ht4.D(kb0.g, ag1Var, Integer.valueOf(iHashCode));
            ht4.y(ag1Var, kb0.h);
            ht4.D(kb0.d, ag1Var, nd2VarH);
            tr3 tr3VarA = sd.a(z ? 1.0f : 0.0f, zf5.Y(fe2Var, ag1Var), null, ag1Var, 0, 28);
            tr3 tr3VarA2 = sd.a(z ? 1.0f : 0.0f, zf5.Y(fe2.n, ag1Var), null, ag1Var, 0, 28);
            as0 as0Var = (as0) ag1Var.j(kc0.h);
            boolean zF = ag1Var.f(as0Var);
            Object objK4 = ag1Var.K();
            if (zF || objK4 == bx3Var) {
                objK4 = new h4(22, as0Var, ts2Var);
                ag1Var.g0(objK4);
            }
            ne1 ne1Var2 = (ne1) objK4;
            boolean zF2 = ag1Var.f(vf2Var) | ag1Var.f(ne1Var2);
            Object objK5 = ag1Var.K();
            if (zF2 || objK5 == bx3Var) {
                objK5 = new na2(vf2Var, ne1Var2);
                ag1Var.g0(objK5);
            }
            ka0 ka0VarU3 = qj0.U(-2082182507, new sp0(14, (na2) objK5), ag1Var);
            ka0 ka0VarU4 = qj0.U(-799524251, new l4(15, tr3VarA, rj2Var2), ag1Var);
            boolean zF3 = ag1Var.f(tr3VarA);
            Object objK6 = ag1Var.K();
            if (zF3 || objK6 == bx3Var) {
                objK6 = new cj2(tr3VarA, 1);
                ag1Var.g0(objK6);
            }
            ne1 ne1Var3 = (ne1) objK6;
            boolean zF4 = ag1Var.f(tr3VarA2);
            Object objK7 = ag1Var.K();
            if (zF4 || objK7 == bx3Var) {
                objK7 = new cj2(tr3VarA2, 2);
                ag1Var.g0(objK7);
            }
            c(ka0VarU3, ka0VarU4, ka0VarU2, ka0Var2, z8, ne1Var3, (ne1) objK7, ag1Var, ((i5 >> 9) & 57344) | 438);
            ag1Var2 = ag1Var;
            ag1Var2.p(true);
            z5 = z8;
            z4 = z9;
        } else {
            ag1Var2 = ag1Var;
            rj2Var2 = rj2Var;
            ag1Var2.Q();
            nd2Var2 = nd2Var;
            z4 = z2;
            z5 = z3;
        }
        c33 c33VarR = ag1Var2.r();
        if (c33VarR != null) {
            final rj2 rj2Var3 = rj2Var2;
            final nd2 nd2Var3 = nd2Var2;
            c33VarR.d = new df1() { // from class: sj2
                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    zj2.b(db3Var, z, ne1Var, ka0Var, nd2Var3, z4, df1Var, z5, rj2Var3, (ag1) obj, qj0.f0(i | 1));
                    return t64.a;
                }
            };
        }
    }

    public static final void c(ka0 ka0Var, ka0 ka0Var2, ka0 ka0Var3, df1 df1Var, boolean z, ne1 ne1Var, ne1 ne1Var2, ag1 ag1Var, int i) {
        int i2;
        df1 df1Var2;
        boolean z2;
        ka0 ka0Var4 = ka0Var3;
        ag1Var.X(-1019541078);
        if ((i & 6) == 0) {
            i2 = (ag1Var.h(ka0Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= ag1Var.h(ka0Var2) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= ag1Var.h(ka0Var4) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= ag1Var.h(df1Var) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= ag1Var.g(z) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= ag1Var.h(ne1Var) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= ag1Var.h(ne1Var2) ? 1048576 : 524288;
        }
        int i3 = 0;
        if (ag1Var.N(i2 & 1, (599187 & i2) != 599186)) {
            nd2 nd2VarT = kt4.T(new lq(i3));
            int i4 = 57344 & i2;
            boolean z3 = ((i2 & 7168) == 2048) | ((3670016 & i2) == 1048576) | (i4 == 16384);
            Object objK = ag1Var.K();
            bx3 bx3Var = rb0.a;
            if (z3 || objK == bx3Var) {
                objK = new yj2(ne1Var2, df1Var, z);
                ag1Var.g0(objK);
            }
            db2 db2Var = (db2) objK;
            int iHashCode = Long.hashCode(ag1Var.T);
            hu2 hu2VarL = ag1Var.l();
            nd2 nd2VarH = is0.H(ag1Var, nd2VarT);
            lb0.c.getClass();
            ic0 ic0Var = kb0.b;
            ag1Var.Z();
            if (ag1Var.S) {
                ag1Var.k(ic0Var);
            } else {
                ag1Var.j0();
            }
            fd fdVar = kb0.f;
            ht4.D(fdVar, ag1Var, db2Var);
            fd fdVar2 = kb0.e;
            ht4.D(fdVar2, ag1Var, hu2VarL);
            Integer numValueOf = Integer.valueOf(iHashCode);
            fd fdVar3 = kb0.g;
            ht4.D(fdVar3, ag1Var, numValueOf);
            l9 l9Var = kb0.h;
            ht4.y(ag1Var, l9Var);
            fd fdVar4 = kb0.d;
            ht4.D(fdVar4, ag1Var, nd2VarH);
            ka0Var.f(ag1Var, Integer.valueOf(i2 & 14));
            ka0Var2.f(ag1Var, Integer.valueOf((i2 >> 3) & 14));
            nd2 nd2VarE = on4.E("icon");
            cw cwVar = mj1.o;
            int i5 = i2;
            db2 db2VarD = qx.d(cwVar, false);
            int iHashCode2 = Long.hashCode(ag1Var.T);
            hu2 hu2VarL2 = ag1Var.l();
            nd2 nd2VarH2 = is0.H(ag1Var, nd2VarE);
            ag1Var.Z();
            if (ag1Var.S) {
                ag1Var.k(ic0Var);
            } else {
                ag1Var.j0();
            }
            ht4.D(fdVar, ag1Var, db2VarD);
            ht4.D(fdVar2, ag1Var, hu2VarL2);
            di0.C(iHashCode2, ag1Var, fdVar3, ag1Var, l9Var);
            ht4.D(fdVar4, ag1Var, nd2VarH2);
            ka0Var4 = ka0Var3;
            ka0Var4.f(ag1Var, Integer.valueOf((i5 >> 6) & 14));
            ag1Var.p(true);
            if (df1Var != null) {
                ag1Var.W(-660471321);
                nd2 nd2VarE2 = on4.E("label");
                boolean z4 = (i4 == 16384) | ((i5 & 458752) == 131072);
                Object objK2 = ag1Var.K();
                if (z4 || objK2 == bx3Var) {
                    objK2 = new xp(z, ne1Var);
                    ag1Var.g0(objK2);
                }
                nd2 nd2VarQ0 = n44.q0(nd2VarE2, (pe1) objK2);
                db2 db2VarD2 = qx.d(cwVar, false);
                int iHashCode3 = Long.hashCode(ag1Var.T);
                hu2 hu2VarL3 = ag1Var.l();
                nd2 nd2VarH3 = is0.H(ag1Var, nd2VarQ0);
                ag1Var.Z();
                if (ag1Var.S) {
                    ag1Var.k(ic0Var);
                } else {
                    ag1Var.j0();
                }
                ht4.D(fdVar, ag1Var, db2VarD2);
                ht4.D(fdVar2, ag1Var, hu2VarL3);
                di0.C(iHashCode3, ag1Var, fdVar3, ag1Var, l9Var);
                ht4.D(fdVar4, ag1Var, nd2VarH3);
                df1Var2 = df1Var;
                df1Var2.f(ag1Var, Integer.valueOf((i5 >> 9) & 14));
                z2 = true;
                ag1Var.p(true);
                ag1Var.p(false);
            } else {
                df1Var2 = df1Var;
                z2 = true;
                ag1Var.W(-660200319);
                ag1Var.p(false);
            }
            ag1Var.p(z2);
        } else {
            df1Var2 = df1Var;
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new rz(ka0Var, ka0Var2, ka0Var4, df1Var2, z, ne1Var, ne1Var2, i);
        }
    }
}

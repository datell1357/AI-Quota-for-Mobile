package defpackage;

import com.google.api.client.googleapis.media.MediaHttpDownloader;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class a50 {
    public static final s40 a = new s40(yt3.a);
    public static final float b = 1000.0f;

    public static final void a(final ka0 ka0Var, final ay3 ay3Var, final long j, final df1 df1Var, final long j2, final long j3, final float f, final qh qhVar, final zr2 zr2Var, final yq3 yq3Var, final yq3 yq3Var2, final yq3 yq3Var3, final yq3 yq3Var4, ag1 ag1Var, final int i) {
        ag1Var.X(-1255048750);
        int i2 = i | (ag1Var.h(ka0Var) ? 4 : 2) | (ag1Var.f(ay3Var) ? 32 : 16) | (ag1Var.e(j) ? 256 : 128) | (ag1Var.h(df1Var) ? 2048 : 1024) | (ag1Var.h(null) ? 16384 : 8192) | (ag1Var.h(null) ? 131072 : 65536) | (ag1Var.e(j2) ? 1048576 : 524288) | (ag1Var.e(j3) ? 8388608 : 4194304) | (ag1Var.c(f) ? 67108864 : MediaHttpDownloader.MAXIMUM_CHUNK_SIZE) | (ag1Var.f(qhVar) ? 536870912 : 268435456);
        if (ag1Var.N(i2 & 1, ((i2 & 306783379) == 306783378 && ((((((ag1Var.f(zr2Var) ? (char) 4 : (char) 2) | (ag1Var.h(yq3Var) ? ' ' : (char) 16)) | (ag1Var.h(yq3Var2) ? 256 : 128)) | (ag1Var.h(yq3Var3) ? 2048 : 1024)) | (ag1Var.h(yq3Var4) ? (char) 16384 : (char) 8192)) & 9363) == 9362) ? false : true)) {
            gg4.b(new j03[]{bg0.a.a(new t70(j)), lx3.a.a(ay3Var)}, qj0.U(-881676654, new df1() { // from class: w40
                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    boolean z;
                    ag1 ag1Var2 = (ag1) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    if (ag1Var2.N(iIntValue & 1, (iIntValue & 3) != 2)) {
                        nd2 nd2VarJ = is0.J(on3.a(on3.g(a50.b), Float.NaN, f), zr2Var);
                        bw bwVar = mj1.y;
                        cb3 cb3VarA = bb3.a(qhVar, bwVar, ag1Var2, 48);
                        int iHashCode = Long.hashCode(ag1Var2.T);
                        hu2 hu2VarL = ag1Var2.l();
                        nd2 nd2VarH = is0.H(ag1Var2, nd2VarJ);
                        lb0.c.getClass();
                        ic0 ic0Var = kb0.b;
                        ag1Var2.Z();
                        if (ag1Var2.S) {
                            ag1Var2.k(ic0Var);
                        } else {
                            ag1Var2.j0();
                        }
                        fd fdVar = kb0.f;
                        ht4.D(fdVar, ag1Var2, cb3VarA);
                        fd fdVar2 = kb0.e;
                        ht4.D(fdVar2, ag1Var2, hu2VarL);
                        Integer numValueOf = Integer.valueOf(iHashCode);
                        fd fdVar3 = kb0.g;
                        ht4.D(fdVar3, ag1Var2, numValueOf);
                        l9 l9Var = kb0.h;
                        ht4.y(ag1Var2, l9Var);
                        fd fdVar4 = kb0.d;
                        ht4.D(fdVar4, ag1Var2, nd2VarH);
                        cw cwVar = mj1.o;
                        db2 db2VarD = qx.d(cwVar, false);
                        int iHashCode2 = Long.hashCode(ag1Var2.T);
                        hu2 hu2VarL2 = ag1Var2.l();
                        kd2 kd2Var = kd2.b;
                        nd2 nd2VarH2 = is0.H(ag1Var2, kd2Var);
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
                        final df1 df1Var2 = df1Var;
                        boolean z2 = df1Var2 != null;
                        aw awVar = mj1.z;
                        yq3 yq3Var5 = yq3Var3;
                        boolean z3 = z2;
                        o11 o11VarB = j11.b(yq3Var5, awVar, 12);
                        yq3 yq3Var6 = yq3Var;
                        o11 o11VarA = o11VarB.a(j11.c(yq3Var6, 2));
                        yq3 yq3Var7 = yq3Var4;
                        y31 y31VarE = j11.e(yq3Var7, awVar, 12);
                        yq3 yq3Var8 = yq3Var2;
                        y31 y31VarA = y31VarE.a(j11.d(yq3Var8, 2));
                        final long j4 = j2;
                        mt1.c(z3, null, o11VarA, y31VarA, null, qj0.U(-181659180, new ff1() { // from class: y40
                            @Override // defpackage.ff1
                            public final Object d(Object obj3, Object obj4, Object obj5) {
                                ka0 ka0VarU;
                                ag1 ag1Var3 = (ag1) obj4;
                                ((Integer) obj5).getClass();
                                final df1 df1Var3 = df1Var2;
                                if (df1Var3 != null) {
                                    ag1Var3.W(1575370973);
                                    final long j5 = j4;
                                    ka0VarU = qj0.U(-237350650, new df1() { // from class: z40
                                        @Override // defpackage.df1
                                        public final Object f(Object obj6, Object obj7) {
                                            ag1 ag1Var4 = (ag1) obj6;
                                            int iIntValue2 = ((Integer) obj7).intValue();
                                            if (ag1Var4.N(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                                gg4.a(bg0.a.a(new t70(j5)), df1Var3, ag1Var4, 8);
                                            } else {
                                                ag1Var4.Q();
                                            }
                                            return t64.a;
                                        }
                                    }, ag1Var3);
                                    ag1Var3.p(false);
                                } else {
                                    ag1Var3.W(1575598419);
                                    ag1Var3.p(false);
                                    ka0VarU = null;
                                }
                                Object objK = ag1Var3.K();
                                if (objK == rb0.a) {
                                    objK = ca.A(ka0VarU);
                                    ag1Var3.g0(objK);
                                }
                                pg2 pg2Var = (pg2) objK;
                                if (ka0VarU != null) {
                                    pg2Var.setValue(ka0VarU);
                                }
                                db2 db2VarD2 = qx.d(mj1.s, false);
                                int iHashCode3 = Long.hashCode(ag1Var3.T);
                                hu2 hu2VarL3 = ag1Var3.l();
                                nd2 nd2VarH3 = is0.H(ag1Var3, kd2.b);
                                lb0.c.getClass();
                                ic0 ic0Var2 = kb0.b;
                                ag1Var3.Z();
                                if (ag1Var3.S) {
                                    ag1Var3.k(ic0Var2);
                                } else {
                                    ag1Var3.j0();
                                }
                                ht4.D(kb0.f, ag1Var3, db2VarD2);
                                ht4.D(kb0.e, ag1Var3, hu2VarL3);
                                ht4.D(kb0.g, ag1Var3, Integer.valueOf(iHashCode3));
                                ht4.y(ag1Var3, kb0.h);
                                ht4.D(kb0.d, ag1Var3, nd2VarH3);
                                df1 df1Var4 = (df1) pg2Var.getValue();
                                if (df1Var4 == null) {
                                    ag1Var3.W(2094511935);
                                } else {
                                    ag1Var3.W(1037396226);
                                    df1Var4.f(ag1Var3, 0);
                                }
                                ag1Var3.p(false);
                                ag1Var3.p(true);
                                return t64.a;
                            }
                        }, ag1Var2), ag1Var2, 1572870);
                        if (df1Var2 == null) {
                            ag1Var2.W(-37113233);
                            mt1.f(ag1Var2, on3.f(0.0f));
                            z = false;
                            ag1Var2.p(false);
                        } else {
                            z = false;
                            ag1Var2.W(-37029626);
                            ag1Var2.p(false);
                        }
                        ag1Var2.p(true);
                        nz1 nz1Var = new nz1(1.0f, z);
                        cb3 cb3VarA2 = bb3.a(th.a, bwVar, ag1Var2, 54);
                        int iHashCode3 = Long.hashCode(ag1Var2.T);
                        hu2 hu2VarL3 = ag1Var2.l();
                        nd2 nd2VarH3 = is0.H(ag1Var2, nz1Var);
                        ag1Var2.Z();
                        if (ag1Var2.S) {
                            ag1Var2.k(ic0Var);
                        } else {
                            ag1Var2.j0();
                        }
                        ht4.D(fdVar, ag1Var2, cb3VarA2);
                        ht4.D(fdVar2, ag1Var2, hu2VarL3);
                        di0.C(iHashCode3, ag1Var2, fdVar3, ag1Var2, l9Var);
                        ht4.D(fdVar4, ag1Var2, nd2VarH3);
                        ka0Var.f(ag1Var2, 0);
                        ag1Var2.p(true);
                        db2 db2VarD2 = qx.d(cwVar, false);
                        int iHashCode4 = Long.hashCode(ag1Var2.T);
                        hu2 hu2VarL4 = ag1Var2.l();
                        nd2 nd2VarH4 = is0.H(ag1Var2, kd2Var);
                        ag1Var2.Z();
                        if (ag1Var2.S) {
                            ag1Var2.k(ic0Var);
                        } else {
                            ag1Var2.j0();
                        }
                        ht4.D(fdVar, ag1Var2, db2VarD2);
                        ht4.D(fdVar2, ag1Var2, hu2VarL4);
                        di0.C(iHashCode4, ag1Var2, fdVar3, ag1Var2, l9Var);
                        ht4.D(fdVar4, ag1Var2, nd2VarH4);
                        aw awVar2 = mj1.B;
                        mt1.c(false, null, j11.b(yq3Var5, awVar2, 12).a(j11.c(yq3Var6, 2)), j11.e(yq3Var7, awVar2, 12).a(j11.d(yq3Var8, 2)), null, qj0.U(-1090690805, new lq(j3), ag1Var2), ag1Var2, 1572870);
                        ag1Var2.W(-1514776840);
                        mt1.f(ag1Var2, on3.f(0.0f));
                        ag1Var2.p(false);
                        ag1Var2.p(true);
                        ag1Var2.p(true);
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
            c33VarR.d = new df1(ay3Var, j, df1Var, j2, j3, f, qhVar, zr2Var, yq3Var, yq3Var2, yq3Var3, yq3Var4, i) { // from class: x40
                public final /* synthetic */ ay3 o;
                public final /* synthetic */ long p;
                public final /* synthetic */ df1 q;
                public final /* synthetic */ long r;
                public final /* synthetic */ long s;
                public final /* synthetic */ float t;

                /* JADX INFO: renamed from: u, reason: collision with root package name */
                public final /* synthetic */ qh f404u;
                public final /* synthetic */ zr2 v;
                public final /* synthetic */ yq3 w;
                public final /* synthetic */ yq3 x;
                public final /* synthetic */ yq3 y;
                public final /* synthetic */ yq3 z;

                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iF0 = qj0.f0(1);
                    a50.a(this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.f404u, this.v, this.w, this.x, this.y, this.z, (ag1) obj, iF0);
                    return t64.a;
                }
            };
        }
    }

    public static final void b(final boolean z, final ne1 ne1Var, final ka0 ka0Var, nd2 nd2Var, boolean z2, final df1 df1Var, jl3 jl3Var, ug3 ug3Var, vg3 vg3Var, fx fxVar, qh qhVar, zr2 zr2Var, ag1 ag1Var, final int i) {
        final nd2 nd2Var2;
        final boolean z3;
        final jl3 jl3Var2;
        final ug3 ug3Var2;
        final vg3 vg3Var2;
        final fx fxVar2;
        final qh qhVar2;
        final zr2 zr2Var2;
        zr2 zr2Var3;
        qh qhVar3;
        int i2;
        nd2 nd2Var3;
        boolean z4;
        ag1Var.X(1511159815);
        int i3 = i | (ag1Var.g(z) ? 4 : 2) | (ag1Var.h(ne1Var) ? 32 : 16) | 307784704;
        if (ag1Var.N(i3 & 1, (306783379 & i3) != 306783378)) {
            ag1Var.S();
            if ((i & 1) == 0 || ag1Var.x()) {
                float f = w51.a;
                jl3 jl3VarA = ol3.a(dm0.m, ag1Var);
                y70 y70Var = ((ua2) ag1Var.j(wa2.a)).a;
                ug3 ug3Var3 = y70Var.a0;
                if (ug3Var3 == null) {
                    long j = t70.e;
                    ug3 ug3Var4 = new ug3(j, a80.c(y70Var, dm0.A), a80.c(y70Var, dm0.E), a80.c(y70Var, dm0.I), j, t70.b(dm0.o, a80.c(y70Var, dm0.n)), t70.b(dm0.C, a80.c(y70Var, dm0.B)), t70.b(dm0.G, a80.c(y70Var, dm0.F)), a80.c(y70Var, dm0.f69u), t70.b(dm0.r, a80.c(y70Var, dm0.q)), a80.c(y70Var, dm0.z), a80.c(y70Var, dm0.D), a80.c(y70Var, dm0.H));
                    y70Var.a0 = ug3Var4;
                    ug3Var3 = ug3Var4;
                }
                vg3Var2 = new vg3(dm0.v, dm0.p);
                int i4 = i3 & (-2143289345);
                long jD = a80.d(dm0.w, ag1Var);
                long j2 = t70.e;
                t70.b(dm0.t, a80.d(dm0.s, ag1Var));
                float f2 = dm0.x;
                if (z) {
                    jD = j2;
                }
                if (z) {
                    f2 = 0.0f;
                }
                fx fxVar3 = new fx(f2, new sp3(jD));
                ds2 ds2Var = w51.b;
                kd2 kd2Var = kd2.b;
                zr2Var3 = ds2Var;
                ug3Var2 = ug3Var3;
                qhVar3 = a;
                i2 = i4;
                jl3Var2 = jl3VarA;
                fxVar2 = fxVar3;
                nd2Var3 = kd2Var;
                z4 = true;
            } else {
                ag1Var.Q();
                z4 = z2;
                jl3Var2 = jl3Var;
                ug3Var2 = ug3Var;
                vg3Var2 = vg3Var;
                fxVar2 = fxVar;
                qhVar3 = qhVar;
                zr2Var3 = zr2Var;
                i2 = i3 & (-2143289345);
                nd2Var3 = nd2Var;
            }
            ag1Var.q();
            ay3 ay3VarA = g54.a(dm0.y, ag1Var);
            float f3 = w51.a;
            c(z, nd2Var3, ne1Var, z4, ka0Var, ay3VarA, df1Var, jl3Var2, ug3Var2, vg3Var2, fxVar2, 32.0f, qhVar3, zr2Var3, ag1Var, ((i2 << 3) & 896) | (i2 & 14) | 12582960 | 102263808, 1772544);
            nd2Var2 = nd2Var3;
            z3 = z4;
            qhVar2 = qhVar3;
            zr2Var2 = zr2Var3;
        } else {
            ag1Var.Q();
            nd2Var2 = nd2Var;
            z3 = z2;
            jl3Var2 = jl3Var;
            ug3Var2 = ug3Var;
            vg3Var2 = vg3Var;
            fxVar2 = fxVar;
            qhVar2 = qhVar;
            zr2Var2 = zr2Var;
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new df1(z, ne1Var, ka0Var, nd2Var2, z3, df1Var, jl3Var2, ug3Var2, vg3Var2, fxVar2, qhVar2, zr2Var2, i) { // from class: t40
                public final /* synthetic */ boolean n;
                public final /* synthetic */ ne1 o;
                public final /* synthetic */ ka0 p;
                public final /* synthetic */ nd2 q;
                public final /* synthetic */ boolean r;
                public final /* synthetic */ df1 s;
                public final /* synthetic */ jl3 t;

                /* JADX INFO: renamed from: u, reason: collision with root package name */
                public final /* synthetic */ ug3 f329u;
                public final /* synthetic */ vg3 v;
                public final /* synthetic */ fx w;
                public final /* synthetic */ qh x;
                public final /* synthetic */ zr2 y;

                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iF0 = qj0.f0(196993);
                    a50.b(this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.f329u, this.v, this.w, this.x, this.y, (ag1) obj, iF0);
                    return t64.a;
                }
            };
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:185:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x02a8  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x02c2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:200:0x02c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void c(final boolean r32, final defpackage.nd2 r33, final defpackage.ne1 r34, final boolean r35, final defpackage.ka0 r36, final defpackage.ay3 r37, final defpackage.df1 r38, final defpackage.jl3 r39, final defpackage.ug3 r40, final defpackage.vg3 r41, final defpackage.fx r42, final float r43, final defpackage.qh r44, final defpackage.zr2 r45, defpackage.ag1 r46, final int r47, final int r48) {
        /*
            Method dump skipped, instruction units count: 960
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.a50.c(boolean, nd2, ne1, boolean, ka0, ay3, df1, jl3, ug3, vg3, fx, float, qh, zr2, ag1, int, int):void");
    }
}

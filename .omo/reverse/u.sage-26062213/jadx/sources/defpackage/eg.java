package defpackage;

import com.google.api.client.googleapis.media.MediaHttpDownloader;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class eg {
    public static final lc0 a = new lc0(new l6(3));
    public static final float b;
    public static final float c;

    static {
        new w12(new l6(4));
        new dl0(0.8f, 0.0f, 0.8f, 0.15f);
        b = 4.0f;
        c = 12.0f;
    }

    public static final void a(final nd2 nd2Var, final ka0 ka0Var, final ay3 ay3Var, final ay3 ay3Var2, final df1 df1Var, final ff1 ff1Var, final float f, final zr2 zr2Var, final hd4 hd4Var, final k04 k04Var, ag1 ag1Var, final int i, final int i2) {
        int i3;
        ay3 ay3Var3;
        ay3 ay3Var4;
        int i4;
        aw awVar = mj1.z;
        ag1Var.X(703932376);
        if ((i & 6) == 0) {
            i3 = (ag1Var.f(nd2Var) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= ag1Var.h(ka0Var) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            ay3Var3 = ay3Var;
            i3 |= ag1Var.f(ay3Var3) ? 256 : 128;
        } else {
            ay3Var3 = ay3Var;
        }
        if ((i & 3072) == 0) {
            i3 |= ag1Var.h(null) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            ay3Var4 = ay3Var2;
            i3 |= ag1Var.f(ay3Var4) ? 16384 : 8192;
        } else {
            ay3Var4 = ay3Var2;
        }
        if ((i & 196608) == 0) {
            i3 |= ag1Var.f(awVar) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i3 |= ag1Var.h(df1Var) ? 1048576 : 524288;
        }
        if ((i & 12582912) == 0) {
            i3 |= ag1Var.h(ff1Var) ? 8388608 : 4194304;
        }
        if ((i & 100663296) == 0) {
            i3 |= ag1Var.c(f) ? 67108864 : MediaHttpDownloader.MAXIMUM_CHUNK_SIZE;
        }
        if ((i & 805306368) == 0) {
            i3 |= ag1Var.f(zr2Var) ? 536870912 : 268435456;
        }
        if ((i2 & 6) == 0) {
            i4 = i2 | (ag1Var.f(hd4Var) ? 4 : 2);
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= ag1Var.f(k04Var) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i4 |= ag1Var.f(null) ? 256 : 128;
        }
        int i5 = i4;
        if (ag1Var.N(i3 & 1, ((306783379 & i3) == 306783378 && (i5 & 147) == 146) ? false : true)) {
            ((gq0) ag1Var.j(a)).a(new cn3(nd2Var, ka0Var, ay3Var3, ay3Var4, df1Var, ff1Var, f, zr2Var, hd4Var, k04Var), ag1Var, 0);
        } else {
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            c33VarR.d = new df1() { // from class: cg
                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    eg.a(nd2Var, ka0Var, ay3Var, ay3Var2, df1Var, ff1Var, f, zr2Var, hd4Var, k04Var, (ag1) obj, qj0.f0(i | 1), qj0.f0(i2));
                    return t64.a;
                }
            };
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void b(final defpackage.ka0 r16, defpackage.nd2 r17, defpackage.df1 r18, defpackage.ff1 r19, float r20, defpackage.hd4 r21, final defpackage.k04 r22, defpackage.zr2 r23, defpackage.ag1 r24, final int r25, final int r26) {
        /*
            Method dump skipped, instruction units count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.eg.b(ka0, nd2, df1, ff1, float, hd4, k04, zr2, ag1, int, int):void");
    }

    public static final void c(final nd2 nd2Var, final dq0 dq0Var, final long j, final long j2, final long j3, long j4, final ka0 ka0Var, final ay3 ay3Var, final ay3 ay3Var2, final ne1 ne1Var, final df1 df1Var, ka0 ka0Var2, final float f, final zr2 zr2Var, ag1 ag1Var, final int i) {
        ka0 ka0Var3;
        final long j5 = j4;
        aw awVar = mj1.z;
        ag1Var.X(239553141);
        int i2 = i | (ag1Var.f(nd2Var) ? 4 : 2) | (ag1Var.f(dq0Var) ? 32 : 16) | (ag1Var.e(j) ? 256 : 128) | (ag1Var.e(j2) ? 2048 : 1024) | (ag1Var.e(j3) ? 16384 : 8192) | (ag1Var.e(j5) ? 131072 : 65536) | (ag1Var.h(ka0Var) ? 1048576 : 524288) | (ag1Var.f(ay3Var) ? 8388608 : 4194304);
        boolean zH = ag1Var.h(null);
        int i3 = MediaHttpDownloader.MAXIMUM_CHUNK_SIZE;
        int i4 = i2 | (zH ? 67108864 : 33554432) | (ag1Var.f(ay3Var2) ? 536870912 : 268435456);
        int i5 = 1600566 | (ag1Var.f(awVar) ? 256 : 128) | (ag1Var.h(df1Var) ? 131072 : 65536) | (ag1Var.c(f) ? 8388608 : 4194304);
        if (ag1Var.f(zr2Var)) {
            i3 = 67108864;
        }
        int i6 = i5 | i3;
        if (ag1Var.N(i4 & 1, ((i4 & 306783379) == 306783378 && (38347923 & i6) == 38347922) ? false : true)) {
            boolean z = ((i4 & 112) == 32) | ((i6 & 896) == 256) | ((29360128 & i6) == 8388608);
            Object objK = ag1Var.K();
            bx3 bx3Var = rb0.a;
            if (z || objK == bx3Var) {
                objK = new n04(dq0Var, f, zr2Var);
                ag1Var.g0(objK);
            }
            n04 n04Var = (n04) objK;
            int iHashCode = Long.hashCode(ag1Var.T);
            hu2 hu2VarL = ag1Var.l();
            nd2 nd2VarH = is0.H(ag1Var, nd2Var);
            lb0.c.getClass();
            ic0 ic0Var = kb0.b;
            ag1Var.Z();
            if (ag1Var.S) {
                ag1Var.k(ic0Var);
            } else {
                ag1Var.j0();
            }
            fd fdVar = kb0.f;
            ht4.D(fdVar, ag1Var, n04Var);
            fd fdVar2 = kb0.e;
            ht4.D(fdVar2, ag1Var, hu2VarL);
            Integer numValueOf = Integer.valueOf(iHashCode);
            fd fdVar3 = kb0.g;
            ht4.D(fdVar3, ag1Var, numValueOf);
            l9 l9Var = kb0.h;
            ht4.y(ag1Var, l9Var);
            fd fdVar4 = kb0.d;
            ht4.D(fdVar4, ag1Var, nd2VarH);
            nd2 nd2VarE = on4.E("navigationIcon");
            float f2 = b;
            nd2 nd2VarO = is0.O(nd2VarE, f2, 0.0f, 0.0f, 14);
            cw cwVar = mj1.o;
            db2 db2VarD = qx.d(cwVar, false);
            int iHashCode2 = Long.hashCode(ag1Var.T);
            hu2 hu2VarL2 = ag1Var.l();
            nd2 nd2VarH2 = is0.H(ag1Var, nd2VarO);
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
            lc0 lc0Var = bg0.a;
            gg4.a(lc0Var.a(new t70(j)), df1Var, ag1Var, ((i6 >> 12) & 112) | 8);
            ag1Var.p(true);
            ag1Var.W(408520308);
            nd2 nd2VarM = is0.M(on4.E("title"), f2, 0.0f, 2);
            ag1Var.W(-402451802);
            ag1Var.p(false);
            nd2 nd2VarC = nd2VarM.c(kd2.b);
            Object objK2 = ag1Var.K();
            if (objK2 == bx3Var) {
                objK2 = new v(2, ne1Var);
                ag1Var.g0(objK2);
            }
            nd2 nd2VarQ0 = n44.q0(nd2VarC, (pe1) objK2);
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
            w80.a(j2, ay3Var, ka0Var, ag1Var, ((i4 >> 9) & 14) | ((i4 >> 18) & 112) | ((i4 >> 12) & 896));
            ag1Var.p(true);
            ag1Var.p(false);
            nd2 nd2VarO2 = is0.O(on4.E("actionIcons"), 0.0f, f2, 0.0f, 11);
            db2 db2VarD3 = qx.d(cwVar, false);
            int iHashCode4 = Long.hashCode(ag1Var.T);
            hu2 hu2VarL4 = ag1Var.l();
            nd2 nd2VarH4 = is0.H(ag1Var, nd2VarO2);
            ag1Var.Z();
            if (ag1Var.S) {
                ag1Var.k(ic0Var);
            } else {
                ag1Var.j0();
            }
            ht4.D(fdVar, ag1Var, db2VarD3);
            ht4.D(fdVar2, ag1Var, hu2VarL4);
            di0.C(iHashCode4, ag1Var, fdVar3, ag1Var, l9Var);
            ht4.D(fdVar4, ag1Var, nd2VarH4);
            j5 = j4;
            ka0Var3 = ka0Var2;
            gg4.a(lc0Var.a(new t70(j5)), ka0Var3, ag1Var, 56);
            ag1Var.p(true);
            ag1Var.p(true);
        } else {
            ka0Var3 = ka0Var2;
            ag1Var.Q();
        }
        c33 c33VarR = ag1Var.r();
        if (c33VarR != null) {
            final ka0 ka0Var4 = ka0Var3;
            c33VarR.d = new df1(dq0Var, j, j2, j3, j5, ka0Var, ay3Var, ay3Var2, ne1Var, df1Var, ka0Var4, f, zr2Var, i) { // from class: dg
                public final /* synthetic */ zr2 A;
                public final /* synthetic */ dq0 o;
                public final /* synthetic */ long p;
                public final /* synthetic */ long q;
                public final /* synthetic */ long r;
                public final /* synthetic */ long s;
                public final /* synthetic */ ka0 t;

                /* JADX INFO: renamed from: u, reason: collision with root package name */
                public final /* synthetic */ ay3 f68u;
                public final /* synthetic */ ay3 v;
                public final /* synthetic */ ne1 w;
                public final /* synthetic */ df1 x;
                public final /* synthetic */ ka0 y;
                public final /* synthetic */ float z;

                @Override // defpackage.df1
                public final Object f(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iF0 = qj0.f0(1);
                    eg.c(this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.f68u, this.v, this.w, this.x, this.y, this.z, this.A, (ag1) obj, iF0);
                    return t64.a;
                }
            };
        }
    }
}

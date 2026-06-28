package defpackage;

import com.google.android.gms.auth.blockstore.BlockstoreClient;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.api.client.googleapis.media.MediaHttpDownloader;
import com.google.api.client.googleapis.media.MediaHttpUploader;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class a80 {
    public static final is3 a = new is3(new l6(6));

    public static final long a(y70 y70Var, long j) {
        long j2 = y70Var.a;
        long j3 = y70Var.U;
        long j4 = y70Var.Q;
        long j5 = y70Var.M;
        long j6 = y70Var.q;
        if (t70.c(j, j2)) {
            return y70Var.b;
        }
        if (t70.c(j, y70Var.f)) {
            return y70Var.g;
        }
        if (t70.c(j, y70Var.j)) {
            return y70Var.k;
        }
        if (t70.c(j, y70Var.n)) {
            return y70Var.o;
        }
        if (t70.c(j, y70Var.w)) {
            return y70Var.x;
        }
        if (t70.c(j, y70Var.c)) {
            return y70Var.d;
        }
        if (t70.c(j, y70Var.h)) {
            return y70Var.i;
        }
        if (t70.c(j, y70Var.l)) {
            return y70Var.m;
        }
        if (t70.c(j, y70Var.y)) {
            return y70Var.z;
        }
        if (t70.c(j, y70Var.f418u)) {
            return y70Var.v;
        }
        if (t70.c(j, y70Var.p)) {
            return j6;
        }
        if (t70.c(j, y70Var.r)) {
            return y70Var.s;
        }
        if (t70.c(j, y70Var.D) || t70.c(j, y70Var.F) || t70.c(j, y70Var.G) || t70.c(j, y70Var.H) || t70.c(j, y70Var.I) || t70.c(j, y70Var.J) || t70.c(j, y70Var.E)) {
            return j6;
        }
        if (t70.c(j, y70Var.K) || t70.c(j, y70Var.L)) {
            return j5;
        }
        if (t70.c(j, y70Var.O) || t70.c(j, y70Var.P)) {
            return j4;
        }
        if (t70.c(j, y70Var.S) || t70.c(j, y70Var.T)) {
            return j3;
        }
        int i = t70.g;
        return t70.f;
    }

    public static final long b(long j, ag1 ag1Var) {
        ag1Var.W(89373914);
        long jA = a(((ua2) ag1Var.j(wa2.a)).a, j);
        if (jA == 16) {
            jA = ((t70) ag1Var.j(bg0.a)).a;
        }
        ag1Var.p(false);
        return jA;
    }

    public static final long c(y70 y70Var, z70 z70Var) {
        switch (z70Var.ordinal()) {
            case 0:
                return y70Var.n;
            case 1:
                return y70Var.w;
            case 2:
                return y70Var.y;
            case 3:
                return y70Var.v;
            case 4:
                return y70Var.e;
            case 5:
                return y70Var.f418u;
            case 6:
                return y70Var.o;
            case 7:
                return y70Var.x;
            case 8:
                return y70Var.z;
            case ConnectionResult.SERVICE_INVALID /* 9 */:
                return y70Var.b;
            case 10:
                return y70Var.d;
            case ConnectionResult.LICENSE_CHECK_FAILED /* 11 */:
                return y70Var.M;
            case 12:
                return y70Var.N;
            case 13:
                return y70Var.g;
            case 14:
                return y70Var.i;
            case 15:
                return y70Var.Q;
            case 16:
                return y70Var.R;
            case 17:
                return y70Var.q;
            case ConnectionResult.SERVICE_UPDATING /* 18 */:
                return y70Var.s;
            case 19:
                return y70Var.k;
            case 20:
                return y70Var.m;
            case CommonStatusCodes.RECONNECTION_TIMED_OUT_DURING_UPDATE /* 21 */:
                return y70Var.U;
            case 22:
                return y70Var.V;
            case ConnectionResult.API_DISABLED /* 23 */:
                return y70Var.A;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                return y70Var.B;
            case 25:
                return y70Var.a;
            case 26:
                return y70Var.c;
            case 27:
                return y70Var.K;
            case 28:
                return y70Var.L;
            case 29:
                return y70Var.C;
            case 30:
                return y70Var.f;
            case 31:
                return y70Var.h;
            case 32:
                return y70Var.O;
            case 33:
                return y70Var.P;
            case 34:
                return y70Var.p;
            case 35:
                return y70Var.D;
            case 36:
                return y70Var.F;
            case 37:
                return y70Var.G;
            case 38:
                return y70Var.H;
            case 39:
                return y70Var.I;
            case 40:
                return y70Var.J;
            case 41:
                return y70Var.E;
            case 42:
                return y70Var.t;
            case 43:
                return y70Var.r;
            case 44:
                return y70Var.j;
            case 45:
                return y70Var.l;
            case 46:
                return y70Var.S;
            case 47:
                return y70Var.T;
            default:
                p61.x();
                return 0L;
        }
    }

    public static final long d(z70 z70Var, ag1 ag1Var) {
        return c(((ua2) ag1Var.j(wa2.a)).a, z70Var);
    }

    public static y70 e(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, long j43, long j44, long j45, long j46, long j47, long j48, int i, int i2) {
        long j49 = (i & 1) != 0 ? v70.z : j;
        long j50 = (i & 2) != 0 ? v70.j : j2;
        long j51 = (i & 4) != 0 ? v70.A : j3;
        long j52 = (i & 8) != 0 ? v70.k : j4;
        long j53 = (i & 16) != 0 ? v70.e : j5;
        long j54 = (i & 32) != 0 ? v70.E : j6;
        long j55 = (i & 64) != 0 ? v70.n : j7;
        long j56 = j49;
        long j57 = (i & 128) != 0 ? v70.F : j8;
        long j58 = (i & 256) != 0 ? v70.o : j9;
        long j59 = (i & 512) != 0 ? v70.R : j10;
        long j60 = (i & 1024) != 0 ? v70.t : j11;
        long j61 = (i & 2048) != 0 ? v70.S : j12;
        long j62 = (i & BlockstoreClient.MAX_SIZE) != 0 ? v70.f372u : j13;
        long j63 = (i & 8192) != 0 ? v70.a : j14;
        long j64 = (i & 16384) != 0 ? v70.g : j15;
        long j65 = (i & 32768) != 0 ? v70.I : j16;
        long j66 = (i & 65536) != 0 ? v70.r : j17;
        long j67 = (i & 131072) != 0 ? v70.Q : j18;
        long j68 = (i & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0 ? v70.s : j19;
        long j69 = (i & 524288) != 0 ? j56 : j20;
        long j70 = (i & 1048576) != 0 ? v70.f : j21;
        long j71 = (i & 2097152) != 0 ? v70.d : j22;
        long j72 = (i & 4194304) != 0 ? v70.b : j23;
        long j73 = (i & 8388608) != 0 ? v70.h : j24;
        long j74 = (i & 16777216) != 0 ? v70.c : j25;
        long j75 = (i & MediaHttpDownloader.MAXIMUM_CHUNK_SIZE) != 0 ? v70.i : j26;
        long j76 = (i & 67108864) != 0 ? v70.x : j27;
        long j77 = (i & 134217728) != 0 ? v70.y : j28;
        long j78 = (i & 268435456) != 0 ? v70.D : j29;
        long j79 = (i & 536870912) != 0 ? v70.J : j30;
        long j80 = (i & 1073741824) != 0 ? v70.K : j31;
        long j81 = (i & Integer.MIN_VALUE) != 0 ? v70.L : j32;
        long j82 = (i2 & 1) != 0 ? v70.M : j33;
        long j83 = (i2 & 2) != 0 ? v70.N : j34;
        long j84 = (i2 & 4) != 0 ? v70.O : j35;
        return new y70(j56, j50, j51, j52, j53, j54, j55, j57, j58, j59, j60, j61, j62, j63, j64, j65, j66, j67, j68, j69, j70, j71, j72, j73, j74, j75, j76, j77, j78, j79, (i2 & 8) != 0 ? v70.P : j36, j80, j81, j82, j83, j84, (i2 & 16) != 0 ? v70.B : j37, (i2 & 32) != 0 ? v70.C : j38, (i2 & 64) != 0 ? v70.l : j39, (i2 & 128) != 0 ? v70.m : j40, (i2 & 256) != 0 ? v70.G : j41, (i2 & 512) != 0 ? v70.H : j42, (i2 & 1024) != 0 ? v70.p : j43, (i2 & 2048) != 0 ? v70.q : j44, (i2 & BlockstoreClient.MAX_SIZE) != 0 ? v70.T : j45, (i2 & 8192) != 0 ? v70.U : j46, (i2 & 16384) != 0 ? v70.v : j47, (i2 & 32768) != 0 ? v70.w : j48);
    }
}

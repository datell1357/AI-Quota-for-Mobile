package defpackage;

import androidx.work.OverwritingInputMerger;
import com.google.android.gms.auth.blockstore.BlockstoreClient;
import com.google.api.client.googleapis.media.MediaHttpUploader;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class og4 {
    public static final /* synthetic */ int z = 0;
    public final String a;
    public cg4 b;
    public final String c;
    public final String d;
    public zl0 e;
    public final zl0 f;
    public long g;
    public long h;
    public long i;
    public lf0 j;
    public final int k;
    public jq l;
    public long m;
    public long n;
    public final long o;
    public final long p;
    public boolean q;
    public final jr2 r;
    public final int s;
    public final int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f243u;
    public int v;
    public final int w;
    public String x;
    public final Boolean y;

    static {
        t72.i("WorkSpec");
    }

    public /* synthetic */ og4(String str, cg4 cg4Var, String str2, String str3, zl0 zl0Var, zl0 zl0Var2, long j, long j2, long j3, lf0 lf0Var, int i, jq jqVar, long j4, long j5, long j6, long j7, boolean z2, jr2 jr2Var, int i2, long j8, int i3, int i4, String str4, Boolean bool, int i5) {
        this(str, (i5 & 2) != 0 ? cg4.n : cg4Var, str2, (i5 & 8) != 0 ? OverwritingInputMerger.class.getName() : str3, (i5 & 16) != 0 ? zl0.b : zl0Var, (i5 & 32) != 0 ? zl0.b : zl0Var2, (i5 & 64) != 0 ? 0L : j, (i5 & 128) != 0 ? 0L : j2, (i5 & 256) != 0 ? 0L : j3, (i5 & 512) != 0 ? lf0.j : lf0Var, (i5 & 1024) != 0 ? 0 : i, (i5 & 2048) != 0 ? jq.n : jqVar, (i5 & BlockstoreClient.MAX_SIZE) != 0 ? 30000L : j4, (i5 & 8192) != 0 ? -1L : j5, (i5 & 16384) == 0 ? j6 : 0L, (32768 & i5) != 0 ? -1L : j7, (65536 & i5) != 0 ? false : z2, (131072 & i5) != 0 ? jr2.n : jr2Var, (262144 & i5) != 0 ? 0 : i2, 0, (1048576 & i5) != 0 ? Long.MAX_VALUE : j8, (2097152 & i5) != 0 ? 0 : i3, (4194304 & i5) != 0 ? -256 : i4, (8388608 & i5) != 0 ? null : str4, (i5 & 16777216) != 0 ? Boolean.FALSE : bool);
    }

    public static og4 b(og4 og4Var, String str, cg4 cg4Var, String str2, zl0 zl0Var, int i, long j, int i2, int i3, long j2, int i4, int i5) {
        String str3 = (i5 & 1) != 0 ? og4Var.a : str;
        cg4 cg4Var2 = (i5 & 2) != 0 ? og4Var.b : cg4Var;
        String str4 = (i5 & 4) != 0 ? og4Var.c : str2;
        String str5 = og4Var.d;
        zl0 zl0Var2 = (i5 & 16) != 0 ? og4Var.e : zl0Var;
        zl0 zl0Var3 = og4Var.f;
        long j3 = og4Var.g;
        long j4 = og4Var.h;
        long j5 = og4Var.i;
        lf0 lf0Var = og4Var.j;
        int i6 = (i5 & 1024) != 0 ? og4Var.k : i;
        jq jqVar = og4Var.l;
        long j6 = og4Var.m;
        long j7 = (i5 & 8192) != 0 ? og4Var.n : j;
        long j8 = og4Var.o;
        long j9 = og4Var.p;
        boolean z2 = og4Var.q;
        jr2 jr2Var = og4Var.r;
        int i7 = (i5 & MediaHttpUploader.MINIMUM_CHUNK_SIZE) != 0 ? og4Var.s : i2;
        int i8 = (i5 & 524288) != 0 ? og4Var.t : i3;
        long j10 = (i5 & 1048576) != 0 ? og4Var.f243u : j2;
        int i9 = (i5 & 2097152) != 0 ? og4Var.v : i4;
        int i10 = og4Var.w;
        String str6 = og4Var.x;
        Boolean bool = og4Var.y;
        og4Var.getClass();
        str3.getClass();
        cg4Var2.getClass();
        str4.getClass();
        str5.getClass();
        zl0Var2.getClass();
        zl0Var3.getClass();
        lf0Var.getClass();
        jqVar.getClass();
        jr2Var.getClass();
        return new og4(str3, cg4Var2, str4, str5, zl0Var2, zl0Var3, j3, j4, j5, lf0Var, i6, jqVar, j6, j7, j8, j9, z2, jr2Var, i7, i8, j10, i9, i10, str6, bool);
    }

    public final long a() {
        cg4 cg4Var = this.b;
        cg4 cg4Var2 = cg4.n;
        int i = this.k;
        boolean z2 = cg4Var == cg4Var2 && i > 0;
        jq jqVar = this.l;
        long j = this.m;
        long j2 = this.n;
        boolean zC = c();
        long j3 = this.g;
        long j4 = this.i;
        long j5 = this.h;
        long j6 = this.f243u;
        jqVar.getClass();
        int i2 = this.s;
        if (j6 != Long.MAX_VALUE && zC) {
            if (i2 != 0) {
                long j7 = j2 + 900000;
                if (j6 < j7) {
                    return j7;
                }
            }
            return j6;
        }
        if (z2) {
            long jScalb = jqVar == jq.o ? j * ((long) i) : (long) Math.scalb(j, i - 1);
            if (jScalb > 18000000) {
                jScalb = 18000000;
            }
            return j2 + jScalb;
        }
        if (zC) {
            long j8 = i2 == 0 ? j2 + j3 : j2 + j5;
            return (j4 == j5 || i2 != 0) ? j8 : (j5 - j4) + j8;
        }
        if (j2 == -1) {
            return Long.MAX_VALUE;
        }
        return j2 + j3;
    }

    public final boolean c() {
        return this.h != 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof og4)) {
            return false;
        }
        og4 og4Var = (og4) obj;
        return nt1.g(this.a, og4Var.a) && this.b == og4Var.b && nt1.g(this.c, og4Var.c) && nt1.g(this.d, og4Var.d) && nt1.g(this.e, og4Var.e) && nt1.g(this.f, og4Var.f) && this.g == og4Var.g && this.h == og4Var.h && this.i == og4Var.i && nt1.g(this.j, og4Var.j) && this.k == og4Var.k && this.l == og4Var.l && this.m == og4Var.m && this.n == og4Var.n && this.o == og4Var.o && this.p == og4Var.p && this.q == og4Var.q && this.r == og4Var.r && this.s == og4Var.s && this.t == og4Var.t && this.f243u == og4Var.f243u && this.v == og4Var.v && this.w == og4Var.w && nt1.g(this.x, og4Var.x) && nt1.g(this.y, og4Var.y);
    }

    public final int hashCode() {
        int iJ = xw1.j(this.w, xw1.j(this.v, xw1.l(xw1.j(this.t, xw1.j(this.s, (this.r.hashCode() + xw1.n(xw1.l(xw1.l(xw1.l(xw1.l((this.l.hashCode() + xw1.j(this.k, (this.j.hashCode() + xw1.l(xw1.l(xw1.l((this.f.hashCode() + ((this.e.hashCode() + xw1.m(xw1.m((this.b.hashCode() + (this.a.hashCode() * 31)) * 31, this.c, 31), this.d, 31)) * 31)) * 31, 31, this.g), 31, this.h), 31, this.i)) * 31, 31)) * 31, 31, this.m), 31, this.n), 31, this.o), 31, this.p), this.q, 31)) * 31, 31), 31), 31, this.f243u), 31), 31);
        String str = this.x;
        int iHashCode = (iJ + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.y;
        return iHashCode + (bool != null ? bool.hashCode() : 0);
    }

    public final String toString() {
        return "{WorkSpec: " + this.a + '}';
    }

    public og4(String str, cg4 cg4Var, String str2, String str3, zl0 zl0Var, zl0 zl0Var2, long j, long j2, long j3, lf0 lf0Var, int i, jq jqVar, long j4, long j5, long j6, long j7, boolean z2, jr2 jr2Var, int i2, int i3, long j8, int i4, int i5, String str4, Boolean bool) {
        str.getClass();
        cg4Var.getClass();
        str2.getClass();
        str3.getClass();
        zl0Var.getClass();
        zl0Var2.getClass();
        lf0Var.getClass();
        jqVar.getClass();
        jr2Var.getClass();
        this.a = str;
        this.b = cg4Var;
        this.c = str2;
        this.d = str3;
        this.e = zl0Var;
        this.f = zl0Var2;
        this.g = j;
        this.h = j2;
        this.i = j3;
        this.j = lf0Var;
        this.k = i;
        this.l = jqVar;
        this.m = j4;
        this.n = j5;
        this.o = j6;
        this.p = j7;
        this.q = z2;
        this.r = jr2Var;
        this.s = i2;
        this.t = i3;
        this.f243u = j8;
        this.v = i4;
        this.w = i5;
        this.x = str4;
        this.y = bool;
    }
}

package defpackage;

import com.google.android.gms.auth.blockstore.BlockstoreClient;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class iq3 implements df {
    public final cx3 a;
    public final long b;
    public final pb1 c;
    public final nb1 d;
    public final ob1 e;
    public final ra1 f;
    public final String g;
    public final long h;
    public final eu i;
    public final fx3 j;
    public final e72 k;
    public final long l;
    public final yw3 m;
    public final hl3 n;
    public final tv4 o;

    public iq3(long j, long j2, pb1 pb1Var, nb1 nb1Var, ob1 ob1Var, ra1 ra1Var, String str, long j3, eu euVar, fx3 fx3Var, e72 e72Var, long j4, yw3 yw3Var, hl3 hl3Var, int i) {
        this((i & 1) != 0 ? t70.f : j, (i & 2) != 0 ? cy3.c : j2, (i & 4) != 0 ? null : pb1Var, (i & 8) != 0 ? null : nb1Var, (i & 16) != 0 ? null : ob1Var, (i & 32) != 0 ? null : ra1Var, (i & 64) != 0 ? null : str, (i & 128) != 0 ? cy3.c : j3, (i & 256) != 0 ? null : euVar, (i & 512) != 0 ? null : fx3Var, (i & 1024) != 0 ? null : e72Var, (i & 2048) != 0 ? t70.f : j4, (i & BlockstoreClient.MAX_SIZE) != 0 ? null : yw3Var, (i & 8192) != 0 ? null : hl3Var);
    }

    public final boolean a(iq3 iq3Var) {
        if (this == iq3Var) {
            return true;
        }
        return cy3.a(this.b, iq3Var.b) && nt1.g(this.c, iq3Var.c) && nt1.g(this.d, iq3Var.d) && nt1.g(this.e, iq3Var.e) && nt1.g(this.f, iq3Var.f) && nt1.g(this.g, iq3Var.g) && cy3.a(this.h, iq3Var.h) && nt1.g(this.i, iq3Var.i) && nt1.g(this.j, iq3Var.j) && nt1.g(this.k, iq3Var.k) && t70.c(this.l, iq3Var.l);
    }

    public final boolean b(iq3 iq3Var) {
        return nt1.g(this.a, iq3Var.a) && nt1.g(this.m, iq3Var.m) && nt1.g(this.n, iq3Var.n) && nt1.g(this.o, iq3Var.o);
    }

    public final iq3 c(iq3 iq3Var) {
        if (iq3Var == null) {
            return this;
        }
        cx3 cx3Var = iq3Var.a;
        return jq3.a(this, cx3Var.d(), cx3Var.g(), cx3Var.c(), iq3Var.b, iq3Var.c, iq3Var.d, iq3Var.e, iq3Var.f, iq3Var.g, iq3Var.h, iq3Var.i, iq3Var.j, iq3Var.k, iq3Var.l, iq3Var.m, iq3Var.n, iq3Var.o);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof iq3)) {
            return false;
        }
        iq3 iq3Var = (iq3) obj;
        return a(iq3Var) && b(iq3Var);
    }

    public final int hashCode() {
        cx3 cx3Var = this.a;
        long jD = cx3Var.d();
        int i = t70.g;
        int iHashCode = Long.hashCode(jD) * 31;
        zf5 zf5VarG = cx3Var.g();
        int iHashCode2 = (Float.hashCode(cx3Var.c()) + ((iHashCode + (zf5VarG != null ? zf5VarG.hashCode() : 0)) * 31)) * 31;
        dy3[] dy3VarArr = cy3.b;
        int iL = xw1.l(iHashCode2, 31, this.b);
        pb1 pb1Var = this.c;
        int i2 = (iL + (pb1Var != null ? pb1Var.n : 0)) * 31;
        nb1 nb1Var = this.d;
        int iHashCode3 = (i2 + (nb1Var != null ? Integer.hashCode(nb1Var.a) : 0)) * 31;
        ob1 ob1Var = this.e;
        int iHashCode4 = (iHashCode3 + (ob1Var != null ? Integer.hashCode(ob1Var.a) : 0)) * 31;
        ra1 ra1Var = this.f;
        int iHashCode5 = (iHashCode4 + (ra1Var != null ? ra1Var.hashCode() : 0)) * 31;
        String str = this.g;
        int iL2 = xw1.l((iHashCode5 + (str != null ? str.hashCode() : 0)) * 31, 31, this.h);
        eu euVar = this.i;
        int iHashCode6 = (iL2 + (euVar != null ? Float.hashCode(euVar.a) : 0)) * 31;
        fx3 fx3Var = this.j;
        int iHashCode7 = (iHashCode6 + (fx3Var != null ? fx3Var.hashCode() : 0)) * 31;
        e72 e72Var = this.k;
        int iL3 = xw1.l((iHashCode7 + (e72Var != null ? e72Var.n.hashCode() : 0)) * 31, 31, this.l);
        yw3 yw3Var = this.m;
        int i3 = (iL3 + (yw3Var != null ? yw3Var.a : 0)) * 31;
        hl3 hl3Var = this.n;
        int iHashCode8 = (i3 + (hl3Var != null ? hl3Var.hashCode() : 0)) * 961;
        tv4 tv4Var = this.o;
        return iHashCode8 + (tv4Var != null ? tv4Var.hashCode() : 0);
    }

    public final String toString() {
        cx3 cx3Var = this.a;
        String strI = t70.i(cx3Var.d());
        zf5 zf5VarG = cx3Var.g();
        float fC = cx3Var.c();
        String strD = cy3.d(this.b);
        String strD2 = cy3.d(this.h);
        String strI2 = t70.i(this.l);
        StringBuilder sb = new StringBuilder("SpanStyle(color=");
        sb.append(strI);
        sb.append(", brush=");
        sb.append(zf5VarG);
        sb.append(", alpha=");
        sb.append(fC);
        sb.append(", fontSize=");
        sb.append(strD);
        sb.append(", fontWeight=");
        sb.append(this.c);
        sb.append(", fontStyle=");
        sb.append(this.d);
        sb.append(", fontSynthesis=");
        sb.append(this.e);
        sb.append(", fontFamily=");
        sb.append(this.f);
        sb.append(", fontFeatureSettings=");
        di0.E(sb, this.g, ", letterSpacing=", strD2, ", baselineShift=");
        sb.append(this.i);
        sb.append(", textGeometricTransform=");
        sb.append(this.j);
        sb.append(", localeList=");
        sb.append(this.k);
        sb.append(", background=");
        sb.append(strI2);
        sb.append(", textDecoration=");
        sb.append(this.m);
        sb.append(", shadow=");
        sb.append(this.n);
        sb.append(", platformStyle=null, drawStyle=");
        sb.append(this.o);
        sb.append(")");
        return sb.toString();
    }

    public iq3(cx3 cx3Var, long j, pb1 pb1Var, nb1 nb1Var, ob1 ob1Var, ra1 ra1Var, String str, long j2, eu euVar, fx3 fx3Var, e72 e72Var, long j3, yw3 yw3Var, hl3 hl3Var, tv4 tv4Var) {
        this.a = cx3Var;
        this.b = j;
        this.c = pb1Var;
        this.d = nb1Var;
        this.e = ob1Var;
        this.f = ra1Var;
        this.g = str;
        this.h = j2;
        this.i = euVar;
        this.j = fx3Var;
        this.k = e72Var;
        this.l = j3;
        this.m = yw3Var;
        this.n = hl3Var;
        this.o = tv4Var;
    }

    public iq3(long j, long j2, pb1 pb1Var, nb1 nb1Var, ob1 ob1Var, ra1 ra1Var, String str, long j3, eu euVar, fx3 fx3Var, e72 e72Var, long j4, yw3 yw3Var, hl3 hl3Var) {
        this(j != 16 ? new g80(j) : bx3.o, j2, pb1Var, nb1Var, ob1Var, ra1Var, str, j3, euVar, fx3Var, e72Var, j4, yw3Var, hl3Var, (tv4) null);
    }
}

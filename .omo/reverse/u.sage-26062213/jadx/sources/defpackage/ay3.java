package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ay3 {
    public static final ay3 d = new ay3(0, null, 0, 16777215);
    public final iq3 a;
    public final qs2 b;
    public final pv2 c;

    /* JADX WARN: Illegal instructions before constructor call */
    public ay3(long j, pb1 pb1Var, long j2, int i) {
        long j3 = t70.f;
        this(new iq3(j3, (i & 2) != 0 ? cy3.c : j, (i & 4) != 0 ? null : pb1Var, null, null, (i & 32) != 0 ? null : ra1.b, null, (i & 128) != 0 ? cy3.c : j2, null, null, null, j3, null, null), new qs2(0, 0, cy3.c, null, null, null, 0, 0, null), null);
    }

    public static ay3 a(ay3 ay3Var, long j, pb1 pb1Var, ra1 ra1Var, long j2, long j3, i32 i32Var, int i) {
        eu euVar;
        fx3 fx3Var;
        long j4;
        pv2 pv2Var = bi4.n;
        long jD = ay3Var.a.a.d();
        long j5 = (i & 2) != 0 ? ay3Var.a.b : j;
        pb1 pb1Var2 = (i & 4) != 0 ? ay3Var.a.c : pb1Var;
        iq3 iq3Var = ay3Var.a;
        nb1 nb1Var = iq3Var.d;
        ob1 ob1Var = iq3Var.e;
        ra1 ra1Var2 = (i & 32) != 0 ? iq3Var.f : ra1Var;
        String str = iq3Var.g;
        long j6 = (i & 128) != 0 ? iq3Var.h : j2;
        eu euVar2 = iq3Var.i;
        fx3 fx3Var2 = iq3Var.j;
        e72 e72Var = iq3Var.k;
        long j7 = iq3Var.l;
        yw3 yw3Var = iq3Var.m;
        hl3 hl3Var = iq3Var.n;
        tv4 tv4Var = iq3Var.o;
        qs2 qs2Var = ay3Var.b;
        int i2 = qs2Var.a;
        int i3 = qs2Var.b;
        if ((i & 131072) != 0) {
            euVar = euVar2;
            fx3Var = fx3Var2;
            j4 = qs2Var.c;
        } else {
            euVar = euVar2;
            fx3Var = fx3Var2;
            j4 = j3;
        }
        gx3 gx3Var = qs2Var.d;
        pv2 pv2Var2 = (i & 524288) != 0 ? ay3Var.c : pv2Var;
        return new ay3(new iq3(t70.c(jD, iq3Var.a.d()) ? iq3Var.a : jD != 16 ? new g80(jD) : bx3.o, j5, pb1Var2, nb1Var, ob1Var, ra1Var2, str, j6, euVar, fx3Var, e72Var, j7, yw3Var, hl3Var, tv4Var), new qs2(i2, i3, j4, gx3Var, pv2Var2 != null ? pv2Var2.a : null, (i & 1048576) != 0 ? qs2Var.f : i32Var, qs2Var.g, qs2Var.h, qs2Var.i), pv2Var2);
    }

    public static ay3 d(ay3 ay3Var, long j, long j2, pb1 pb1Var, ra1 ra1Var, long j3, int i, long j4, int i2) {
        long j5 = (i2 & 2) != 0 ? cy3.c : j2;
        pb1 pb1Var2 = (i2 & 4) != 0 ? null : pb1Var;
        ra1 ra1Var2 = (i2 & 32) != 0 ? null : ra1Var;
        long j6 = (i2 & 128) != 0 ? cy3.c : j3;
        long j7 = t70.f;
        int i3 = (32768 & i2) != 0 ? 0 : i;
        long j8 = (i2 & 131072) != 0 ? cy3.c : j4;
        iq3 iq3VarA = jq3.a(ay3Var.a, j, null, Float.NaN, j5, pb1Var2, null, null, ra1Var2, null, j6, null, null, null, j7, null, null, null);
        qs2 qs2VarA = rs2.a(ay3Var.b, i3, 0, j8, null, null, null, 0, 0, null);
        return (ay3Var.a == iq3VarA && ay3Var.b == qs2VarA) ? ay3Var : new ay3(iq3VarA, qs2VarA);
    }

    public final long b() {
        return this.a.a.d();
    }

    public final ay3 c(ay3 ay3Var) {
        return (ay3Var == null || ay3Var.equals(d)) ? this : new ay3(this.a.c(ay3Var.a), this.b.a(ay3Var.b));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ay3)) {
            return false;
        }
        ay3 ay3Var = (ay3) obj;
        return nt1.g(this.a, ay3Var.a) && nt1.g(this.b, ay3Var.b) && nt1.g(this.c, ay3Var.c);
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        pv2 pv2Var = this.c;
        return iHashCode + (pv2Var != null ? pv2Var.hashCode() : 0);
    }

    public final String toString() {
        String strI = t70.i(b());
        iq3 iq3Var = this.a;
        zf5 zf5VarG = iq3Var.a.g();
        float fC = iq3Var.a.c();
        String strD = cy3.d(iq3Var.b);
        pb1 pb1Var = iq3Var.c;
        nb1 nb1Var = iq3Var.d;
        ob1 ob1Var = iq3Var.e;
        ra1 ra1Var = iq3Var.f;
        String str = iq3Var.g;
        String strD2 = cy3.d(iq3Var.h);
        eu euVar = iq3Var.i;
        fx3 fx3Var = iq3Var.j;
        e72 e72Var = iq3Var.k;
        String strI2 = t70.i(iq3Var.l);
        yw3 yw3Var = iq3Var.m;
        hl3 hl3Var = iq3Var.n;
        tv4 tv4Var = iq3Var.o;
        qs2 qs2Var = this.b;
        String strA = vw3.a(qs2Var.a);
        String strA2 = ax3.a(qs2Var.b);
        String strD3 = cy3.d(qs2Var.c);
        gx3 gx3Var = qs2Var.d;
        i32 i32Var = qs2Var.f;
        String strA3 = d32.a(qs2Var.g);
        String strA4 = gn1.a(qs2Var.h);
        sx3 sx3Var = qs2Var.i;
        StringBuilder sb = new StringBuilder("TextStyle(color=");
        sb.append(strI);
        sb.append(", brush=");
        sb.append(zf5VarG);
        sb.append(", alpha=");
        sb.append(fC);
        sb.append(", fontSize=");
        sb.append(strD);
        sb.append(", fontWeight=");
        sb.append(pb1Var);
        sb.append(", fontStyle=");
        sb.append(nb1Var);
        sb.append(", fontSynthesis=");
        sb.append(ob1Var);
        sb.append(", fontFamily=");
        sb.append(ra1Var);
        sb.append(", fontFeatureSettings=");
        di0.E(sb, str, ", letterSpacing=", strD2, ", baselineShift=");
        sb.append(euVar);
        sb.append(", textGeometricTransform=");
        sb.append(fx3Var);
        sb.append(", localeList=");
        sb.append(e72Var);
        sb.append(", background=");
        sb.append(strI2);
        sb.append(", textDecoration=");
        sb.append(yw3Var);
        sb.append(", shadow=");
        sb.append(hl3Var);
        sb.append(", drawStyle=");
        sb.append(tv4Var);
        sb.append(", textAlign=");
        sb.append(strA);
        sb.append(", textDirection=");
        di0.E(sb, strA2, ", lineHeight=", strD3, ", textIndent=");
        sb.append(gx3Var);
        sb.append(", platformStyle=");
        sb.append(this.c);
        sb.append(", lineHeightStyle=");
        sb.append(i32Var);
        sb.append(", lineBreak=");
        sb.append(strA3);
        sb.append(", hyphens=");
        sb.append(strA4);
        sb.append(", textMotion=");
        sb.append(sx3Var);
        sb.append(")");
        return sb.toString();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ay3(iq3 iq3Var, qs2 qs2Var) {
        iq3Var.getClass();
        mv2 mv2Var = qs2Var.e;
        this(iq3Var, qs2Var, mv2Var == null ? null : new pv2(mv2Var));
    }

    public ay3(iq3 iq3Var, qs2 qs2Var, pv2 pv2Var) {
        this.a = iq3Var;
        this.b = qs2Var;
        this.c = pv2Var;
    }
}

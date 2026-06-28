package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class w3 {
    public static final w3 l = new w3(null, 1792);

    @ni3("o")
    private final String a;

    @ni3("e")
    private final String b;

    @ni3("u")
    private final String c;

    @ni3("n")
    private final String d;

    @ni3("p")
    private final String e;

    @ni3("l")
    private final String f;

    @ni3("t")
    private final String g;

    @ni3("i")
    private final String h;

    @ni3("tc")
    private final Integer i;

    @ni3("lw")
    private final Integer j;

    @ni3("sw")
    private final Integer k;

    public w3(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Integer num, Integer num2, Integer num3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = str6;
        this.g = str7;
        this.h = str8;
        this.i = num;
        this.j = num2;
        this.k = num3;
    }

    public static w3 a(w3 w3Var, String str, int i) {
        String str2 = w3Var.a;
        String str3 = w3Var.b;
        String str4 = w3Var.c;
        String str5 = w3Var.d;
        if ((i & 16) != 0) {
            str = w3Var.e;
        }
        String str6 = str;
        String str7 = w3Var.f;
        String str8 = (i & 64) != 0 ? w3Var.g : null;
        String str9 = w3Var.h;
        Integer num = (i & 256) != 0 ? w3Var.i : null;
        Integer num2 = (i & 512) != 0 ? w3Var.j : null;
        Integer num3 = (i & 1024) != 0 ? w3Var.k : null;
        w3Var.getClass();
        return new w3(str2, str3, str4, str5, str6, str7, str8, str9, num, num2, num3);
    }

    public final String b() {
        return this.d;
    }

    public final String c() {
        return this.b;
    }

    public final Integer d() {
        return this.j;
    }

    public final String e() {
        return this.h;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w3)) {
            return false;
        }
        w3 w3Var = (w3) obj;
        return nt1.g(this.a, w3Var.a) && nt1.g(this.b, w3Var.b) && nt1.g(this.c, w3Var.c) && nt1.g(this.d, w3Var.d) && nt1.g(this.e, w3Var.e) && nt1.g(this.f, w3Var.f) && nt1.g(this.g, w3Var.g) && nt1.g(this.h, w3Var.h) && nt1.g(this.i, w3Var.i) && nt1.g(this.j, w3Var.j) && nt1.g(this.k, w3Var.k);
    }

    public final String f() {
        return this.e;
    }

    public final Integer g() {
        return this.i;
    }

    public final Integer h() {
        return this.k;
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.g;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.h;
        int iHashCode8 = (iHashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        Integer num = this.i;
        int iHashCode9 = (iHashCode8 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.j;
        int iHashCode10 = (iHashCode9 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.k;
        return iHashCode10 + (num3 != null ? num3.hashCode() : 0);
    }

    public final String i() {
        return this.c;
    }

    public final String j() {
        return this.a;
    }

    public final boolean k() {
        String str = this.e;
        return str != null && gt3.r0(str, "_FREE", false);
    }

    public final boolean l() {
        return this.e != null;
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        String str4 = this.d;
        String str5 = this.e;
        String str6 = this.f;
        String str7 = this.g;
        String str8 = this.h;
        Integer num = this.i;
        Integer num2 = this.j;
        Integer num3 = this.k;
        StringBuilder sbB = di0.B("AccountInfo(uuid=", str, ", email=", str2, ", username=");
        di0.E(sbB, str3, ", displayName=", str4, ", plan=");
        di0.E(sbB, str5, ", locale=", str6, ", token=");
        di0.E(sbB, str7, ", picture=", str8, ", planTierCode=");
        sbB.append(num);
        sbB.append(", longWindowLimit=");
        sbB.append(num2);
        sbB.append(", shortWindowLimit=");
        sbB.append(num3);
        sbB.append(")");
        return sbB.toString();
    }

    public /* synthetic */ w3(String str, int i) {
        this(null, null, null, null, (i & 16) != 0 ? null : str, null, null, null, null, null, null);
    }

    public w3() {
        this(null, 2047);
    }
}

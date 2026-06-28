package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class e80 {
    public static final float[] a;
    public static final float[] b;
    public static final e14 c;
    public static final e14 d;
    public static final w83 e;
    public static final w83 f;
    public static final w83 g;
    public static final w83 h;
    public static final w83 i;
    public static final w83 j;
    public static final w83 k;
    public static final w83 l;
    public static final w83 m;
    public static final w83 n;
    public static final w83 o;
    public static final w83 p;
    public static final w83 q;
    public static final w83 r;
    public static final wx1 s;
    public static final wx1 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final w83 f81u;
    public static final w83 v;
    public static final w83 w;
    public static final ko2 x;
    public static final b80[] y;

    static {
        float[] fArr = {0.64f, 0.33f, 0.3f, 0.6f, 0.15f, 0.06f};
        a = fArr;
        float[] fArr2 = {0.67f, 0.33f, 0.21f, 0.71f, 0.14f, 0.08f};
        b = fArr2;
        float[] fArr3 = {0.708f, 0.292f, 0.17f, 0.797f, 0.131f, 0.046f};
        e14 e14Var = new e14(2.4d, 0.9478672985781991d, 0.05213270142180095d, 0.07739938080495357d, 0.04045d);
        e14 e14Var2 = new e14(2.2d, 0.9478672985781991d, 0.05213270142180095d, 0.07739938080495357d, 0.04045d);
        e14 e14Var3 = new e14(-3.0d, 2.0d, 2.0d, 5.591816309728916d, 0.28466892d, 0.55991073d, -0.685490157d);
        c = e14Var3;
        e14 e14Var4 = new e14(-2.0d, -1.555223d, 1.860454d, 0.012683313515655966d, 18.8515625d, -18.6875d, 6.277394636015326d);
        d = e14Var4;
        cd4 cd4Var = fl4.t;
        w83 w83Var = new w83("sRGB IEC61966-2.1", fArr, cd4Var, e14Var, 0);
        e = w83Var;
        w83 w83Var2 = new w83("sRGB IEC61966-2.1 (Linear)", fArr, cd4Var, 1.0d, 0.0f, 1.0f, 1);
        f = w83Var2;
        w83 w83Var3 = new w83("scRGB-nl IEC 61966-2-2:2003", fArr, cd4Var, null, new k21(13), new k21(14), -0.799f, 2.399f, e14Var, 2);
        g = w83Var3;
        w83 w83Var4 = new w83("scRGB IEC 61966-2-2:2003", fArr, cd4Var, 1.0d, -0.5f, 7.499f, 3);
        h = w83Var4;
        w83 w83Var5 = new w83("Rec. ITU-R BT.709-5", new float[]{0.64f, 0.33f, 0.3f, 0.6f, 0.15f, 0.06f}, cd4Var, new e14(2.2222222222222223d, 0.9099181073703367d, 0.09008189262966333d, 0.2222222222222222d, 0.081d), 4);
        i = w83Var5;
        w83 w83Var6 = new w83("Rec. ITU-R BT.2020-1", new float[]{0.708f, 0.292f, 0.17f, 0.797f, 0.131f, 0.046f}, cd4Var, new e14(2.2222222222222223d, 0.9096697898662786d, 0.09033021013372146d, 0.2222222222222222d, 0.08145d), 5);
        j = w83Var6;
        w83 w83Var7 = new w83("SMPTE RP 431-2-2007 DCI (P3)", new float[]{0.68f, 0.32f, 0.265f, 0.69f, 0.15f, 0.06f}, new cd4(0.314f, 0.351f), 2.6d, 0.0f, 1.0f, 6);
        k = w83Var7;
        w83 w83Var8 = new w83("Display P3", new float[]{0.68f, 0.32f, 0.265f, 0.69f, 0.15f, 0.06f}, cd4Var, e14Var, 7);
        l = w83Var8;
        w83 w83Var9 = new w83("NTSC (1953)", fArr2, fl4.q, new e14(2.2222222222222223d, 0.9099181073703367d, 0.09008189262966333d, 0.2222222222222222d, 0.081d), 8);
        m = w83Var9;
        w83 w83Var10 = new w83("SMPTE-C RGB", new float[]{0.63f, 0.34f, 0.31f, 0.595f, 0.155f, 0.07f}, cd4Var, new e14(2.2222222222222223d, 0.9099181073703367d, 0.09008189262966333d, 0.2222222222222222d, 0.081d), 9);
        n = w83Var10;
        w83 w83Var11 = new w83("Adobe RGB (1998)", new float[]{0.64f, 0.33f, 0.21f, 0.71f, 0.15f, 0.06f}, cd4Var, 2.2d, 0.0f, 1.0f, 10);
        o = w83Var11;
        w83 w83Var12 = new w83("ROMM RGB ISO 22028-2:2013", new float[]{0.7347f, 0.2653f, 0.1596f, 0.8404f, 0.0366f, 1.0E-4f}, fl4.r, new e14(1.8d, 1.0d, 0.0d, 0.0625d, 0.031248d), 11);
        p = w83Var12;
        cd4 cd4Var2 = fl4.s;
        w83 w83Var13 = new w83("SMPTE ST 2065-1:2012 ACES", new float[]{0.7347f, 0.2653f, 0.0f, 1.0f, 1.0E-4f, -0.077f}, cd4Var2, 1.0d, -65504.0f, 65504.0f, 12);
        q = w83Var13;
        w83 w83Var14 = new w83("Academy S-2014-004 ACEScg", new float[]{0.713f, 0.293f, 0.165f, 0.83f, 0.128f, 0.044f}, cd4Var2, 1.0d, -65504.0f, 65504.0f, 13);
        r = w83Var14;
        wx1 wx1Var = new wx1(14, 1, 12884901889L, "Generic XYZ");
        s = wx1Var;
        wx1 wx1Var2 = new wx1(15, 0, 12884901890L, "Generic L*a*b*");
        t = wx1Var2;
        w83 w83Var15 = new w83("None", fArr, cd4Var, e14Var2, 16);
        f81u = w83Var15;
        w83 w83Var16 = new w83("Hybrid Log Gamma encoding", fArr3, cd4Var, null, new k21(15), new k21(16), 0.0f, 1.0f, e14Var3, 17);
        v = w83Var16;
        w83 w83Var17 = new w83("Perceptual Quantizer encoding", fArr3, cd4Var, null, new k21(17), new k21(18), 0.0f, 1.0f, e14Var4, 18);
        w = w83Var17;
        ko2 ko2Var = new ko2("Oklab", 19, 12884901890L);
        x = ko2Var;
        y = new b80[]{w83Var, w83Var2, w83Var3, w83Var4, w83Var5, w83Var6, w83Var7, w83Var8, w83Var9, w83Var10, w83Var11, w83Var12, w83Var13, w83Var14, wx1Var, wx1Var2, w83Var15, w83Var16, w83Var17, ko2Var};
    }

    public static double a(e14 e14Var, double d2) {
        double d3 = d2 < 0.0d ? -1.0d : 1.0d;
        double d4 = d2 * d3;
        double d5 = e14Var.b;
        double d6 = e14Var.c;
        double d7 = e14Var.d;
        double d8 = e14Var.e;
        double d9 = e14Var.f;
        double d10 = d5 * d4;
        return (e14Var.g + 1.0d) * d3 * (d10 <= 1.0d ? Math.pow(d10, d6) : Math.exp((d4 - d9) * d7) + d8);
    }

    public static double b(e14 e14Var, double d2) {
        double d3 = d2 < 0.0d ? -1.0d : 1.0d;
        double d4 = 1.0d / e14Var.b;
        double d5 = 1.0d / e14Var.c;
        double d6 = 1.0d / e14Var.d;
        double d7 = e14Var.e;
        double d8 = e14Var.f;
        double d9 = (d2 * d3) / (e14Var.g + 1.0d);
        return d3 * (d9 <= 1.0d ? Math.pow(d9, d5) * d4 : (Math.log(d9 - d7) * d6) + d8);
    }

    public static double c(e14 e14Var, double d2) {
        double d3 = d2 < 0.0d ? -1.0d : 1.0d;
        double d4 = d2 * d3;
        double d5 = e14Var.b;
        double d6 = e14Var.d;
        double dPow = (Math.pow(d4, d6) * e14Var.c) + d5;
        return Math.pow((dPow >= 0.0d ? dPow : 0.0d) / ((Math.pow(d4, d6) * e14Var.f) + e14Var.e), e14Var.g) * d3;
    }

    public static double d(e14 e14Var, double d2) {
        double d3 = d2 < 0.0d ? -1.0d : 1.0d;
        double d4 = d2 * d3;
        double d5 = -e14Var.b;
        double d6 = e14Var.e;
        double d7 = 1.0d / e14Var.g;
        return Math.pow(Math.max((Math.pow(d4, d7) * d6) + d5, 0.0d) / ((Math.pow(d4, d7) * (-e14Var.f)) + e14Var.c), 1.0d / e14Var.d) * d3;
    }
}

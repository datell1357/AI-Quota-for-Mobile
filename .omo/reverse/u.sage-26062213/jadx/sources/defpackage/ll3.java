package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ll3 {
    public static final ll3 n;
    public static final ll3 o;
    public static final ll3 p;
    public static final ll3 q;
    public static final ll3 r;
    public static final /* synthetic */ ll3[] s;

    /* JADX INFO: Fake field, exist only in values array */
    ll3 EF0;

    static {
        ll3 ll3Var = new ll3("CornerExtraExtraLarge", 0);
        ll3 ll3Var2 = new ll3("CornerExtraLarge", 1);
        n = ll3Var2;
        ll3 ll3Var3 = new ll3("CornerExtraLargeIncreased", 2);
        ll3 ll3Var4 = new ll3("CornerExtraLargeTop", 3);
        ll3 ll3Var5 = new ll3("CornerExtraSmall", 4);
        o = ll3Var5;
        ll3 ll3Var6 = new ll3("CornerExtraSmallTop", 5);
        ll3 ll3Var7 = new ll3("CornerFull", 6);
        p = ll3Var7;
        ll3 ll3Var8 = new ll3("CornerLarge", 7);
        ll3 ll3Var9 = new ll3("CornerLargeEnd", 8);
        ll3 ll3Var10 = new ll3("CornerLargeIncreased", 9);
        ll3 ll3Var11 = new ll3("CornerLargeStart", 10);
        ll3 ll3Var12 = new ll3("CornerLargeTop", 11);
        ll3 ll3Var13 = new ll3("CornerMedium", 12);
        q = ll3Var13;
        ll3 ll3Var14 = new ll3("CornerNone", 13);
        ll3 ll3Var15 = new ll3("CornerSmall", 14);
        r = ll3Var15;
        s = new ll3[]{ll3Var, ll3Var2, ll3Var3, ll3Var4, ll3Var5, ll3Var6, ll3Var7, ll3Var8, ll3Var9, ll3Var10, ll3Var11, ll3Var12, ll3Var13, ll3Var14, ll3Var15};
    }

    public static ll3 valueOf(String str) {
        return (ll3) Enum.valueOf(ll3.class, str);
    }

    public static ll3[] values() {
        return (ll3[]) s.clone();
    }
}

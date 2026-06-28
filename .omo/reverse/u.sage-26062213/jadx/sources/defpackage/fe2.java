package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fe2 {
    public static final fe2 n;
    public static final fe2 o;
    public static final fe2 p;
    public static final fe2 q;
    public static final /* synthetic */ fe2[] r;

    /* JADX INFO: Fake field, exist only in values array */
    fe2 EF0;

    static {
        fe2 fe2Var = new fe2("DefaultSpatial", 0);
        fe2 fe2Var2 = new fe2("FastSpatial", 1);
        n = fe2Var2;
        fe2 fe2Var3 = new fe2("SlowSpatial", 2);
        fe2 fe2Var4 = new fe2("DefaultEffects", 3);
        o = fe2Var4;
        fe2 fe2Var5 = new fe2("FastEffects", 4);
        p = fe2Var5;
        fe2 fe2Var6 = new fe2("SlowEffects", 5);
        q = fe2Var6;
        r = new fe2[]{fe2Var, fe2Var2, fe2Var3, fe2Var4, fe2Var5, fe2Var6};
    }

    public static fe2 valueOf(String str) {
        return (fe2) Enum.valueOf(fe2.class, str);
    }

    public static fe2[] values() {
        return (fe2[]) r.clone();
    }
}

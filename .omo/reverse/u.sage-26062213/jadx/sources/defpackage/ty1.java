package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ty1 {
    public static final ty1 n;
    public static final ty1 o;
    public static final ty1 p;
    public static final ty1 q;
    public static final ty1 r;
    public static final /* synthetic */ ty1[] s;

    static {
        ty1 ty1Var = new ty1("Measuring", 0);
        n = ty1Var;
        ty1 ty1Var2 = new ty1("LookaheadMeasuring", 1);
        o = ty1Var2;
        ty1 ty1Var3 = new ty1("LayingOut", 2);
        p = ty1Var3;
        ty1 ty1Var4 = new ty1("LookaheadLayingOut", 3);
        q = ty1Var4;
        ty1 ty1Var5 = new ty1("Idle", 4);
        r = ty1Var5;
        s = new ty1[]{ty1Var, ty1Var2, ty1Var3, ty1Var4, ty1Var5};
    }

    public static ty1 valueOf(String str) {
        return (ty1) Enum.valueOf(ty1.class, str);
    }

    public static ty1[] values() {
        return (ty1[]) s.clone();
    }
}

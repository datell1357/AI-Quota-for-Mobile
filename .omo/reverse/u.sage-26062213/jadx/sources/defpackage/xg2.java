package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xg2 {
    public static final xg2 n;
    public static final xg2 o;
    public static final /* synthetic */ xg2[] p;

    static {
        xg2 xg2Var = new xg2("Default", 0);
        n = xg2Var;
        xg2 xg2Var2 = new xg2("UserInput", 1);
        o = xg2Var2;
        p = new xg2[]{xg2Var, xg2Var2, new xg2("PreventUserInput", 2)};
    }

    public static xg2 valueOf(String str) {
        return (xg2) Enum.valueOf(xg2.class, str);
    }

    public static xg2[] values() {
        return (xg2[]) p.clone();
    }
}

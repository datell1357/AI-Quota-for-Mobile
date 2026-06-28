package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g22 {
    public static final g22 n;
    public static final g22 o;
    public static final g22 p;
    public static final g22 q;
    public static final g22 r;
    public static final /* synthetic */ g22[] s;

    static {
        g22 g22Var = new g22("DESTROYED", 0);
        n = g22Var;
        g22 g22Var2 = new g22("INITIALIZED", 1);
        o = g22Var2;
        g22 g22Var3 = new g22("CREATED", 2);
        p = g22Var3;
        g22 g22Var4 = new g22("STARTED", 3);
        q = g22Var4;
        g22 g22Var5 = new g22("RESUMED", 4);
        r = g22Var5;
        s = new g22[]{g22Var, g22Var2, g22Var3, g22Var4, g22Var5};
    }

    public static g22 valueOf(String str) {
        return (g22) Enum.valueOf(g22.class, str);
    }

    public static g22[] values() {
        return (g22[]) s.clone();
    }
}

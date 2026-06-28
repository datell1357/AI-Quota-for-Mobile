package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class h50 {
    public static final h50 n;
    public static final h50 o;
    public static final /* synthetic */ h50[] p;

    static {
        h50 h50Var = new h50("NONE", 0);
        n = h50Var;
        h50 h50Var2 = new h50("ALL_JSON_OBJECTS", 1);
        h50 h50Var3 = new h50("POLYMORPHIC", 2);
        o = h50Var3;
        p = new h50[]{h50Var, h50Var2, h50Var3};
    }

    public static h50 valueOf(String str) {
        return (h50) Enum.valueOf(h50.class, str);
    }

    public static h50[] values() {
        return (h50[]) p.clone();
    }
}

package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class y54 {
    public static final y54 n;
    public static final y54 o;
    public static final /* synthetic */ y54[] p;

    static {
        y54 y54Var = new y54("DROP_FRAGMENT", 0);
        n = y54Var;
        y54 y54Var2 = new y54("NORMALIZE", 1);
        o = y54Var2;
        p = new y54[]{y54Var, y54Var2};
    }

    public static y54 valueOf(String str) {
        return (y54) Enum.valueOf(y54.class, str);
    }

    public static y54[] values() {
        return (y54[]) p.clone();
    }
}

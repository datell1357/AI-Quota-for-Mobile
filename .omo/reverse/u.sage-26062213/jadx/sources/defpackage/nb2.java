package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nb2 {
    public static final nb2 n;
    public static final nb2 o;
    public static final /* synthetic */ nb2[] p;

    static {
        nb2 nb2Var = new nb2("Min", 0);
        n = nb2Var;
        nb2 nb2Var2 = new nb2("Max", 1);
        o = nb2Var2;
        p = new nb2[]{nb2Var, nb2Var2};
    }

    public static nb2 valueOf(String str) {
        return (nb2) Enum.valueOf(nb2.class, str);
    }

    public static nb2[] values() {
        return (nb2[]) p.clone();
    }
}

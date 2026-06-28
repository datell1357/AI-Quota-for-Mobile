package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sa4 {
    public static final sa4 n;
    public static final sa4 o;
    public static final /* synthetic */ sa4[] p;

    static {
        sa4 sa4Var = new sa4("Lsq2", 0);
        n = sa4Var;
        sa4 sa4Var2 = new sa4("Impulse", 1);
        o = sa4Var2;
        p = new sa4[]{sa4Var, sa4Var2};
    }

    public static sa4 valueOf(String str) {
        return (sa4) Enum.valueOf(sa4.class, str);
    }

    public static sa4[] values() {
        return (sa4[]) p.clone();
    }
}

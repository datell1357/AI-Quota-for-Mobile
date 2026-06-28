package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kt1 {
    public static final kt1 n;
    public static final kt1 o;
    public static final /* synthetic */ kt1[] p;

    static {
        kt1 kt1Var = new kt1("Min", 0);
        n = kt1Var;
        kt1 kt1Var2 = new kt1("Max", 1);
        o = kt1Var2;
        p = new kt1[]{kt1Var, kt1Var2};
    }

    public static kt1 valueOf(String str) {
        return (kt1) Enum.valueOf(kt1.class, str);
    }

    public static kt1[] values() {
        return (kt1[]) p.clone();
    }
}

package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hy1 {
    public static final hy1 n;
    public static final hy1 o;
    public static final /* synthetic */ hy1[] p;

    static {
        hy1 hy1Var = new hy1("Ltr", 0);
        n = hy1Var;
        hy1 hy1Var2 = new hy1("Rtl", 1);
        o = hy1Var2;
        p = new hy1[]{hy1Var, hy1Var2};
    }

    public static hy1 valueOf(String str) {
        return (hy1) Enum.valueOf(hy1.class, str);
    }

    public static hy1[] values() {
        return (hy1[]) p.clone();
    }
}

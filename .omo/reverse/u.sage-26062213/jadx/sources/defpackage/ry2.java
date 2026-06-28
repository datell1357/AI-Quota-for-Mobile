package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ry2 {
    public static final ry2 n;
    public static final ry2 o;
    public static final ry2 p;
    public static final /* synthetic */ ry2[] q;

    static {
        ry2 ry2Var = new ry2("DEFAULT", 0);
        n = ry2Var;
        ry2 ry2Var2 = new ry2("VERY_LOW", 1);
        o = ry2Var2;
        ry2 ry2Var3 = new ry2("HIGHEST", 2);
        p = ry2Var3;
        q = new ry2[]{ry2Var, ry2Var2, ry2Var3};
    }

    public static ry2 valueOf(String str) {
        return (ry2) Enum.valueOf(ry2.class, str);
    }

    public static ry2[] values() {
        return (ry2[]) q.clone();
    }
}

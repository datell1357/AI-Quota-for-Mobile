package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xz2 {
    public static final xz2 n;
    public static final /* synthetic */ xz2[] o;

    static {
        xz2 xz2Var = new xz2("DEFAULT", 0);
        n = xz2Var;
        o = new xz2[]{xz2Var, new xz2("SIGNED", 1), new xz2("FIXED", 2)};
    }

    public static xz2 valueOf(String str) {
        return (xz2) Enum.valueOf(xz2.class, str);
    }

    public static xz2[] values() {
        return (xz2[]) o.clone();
    }
}

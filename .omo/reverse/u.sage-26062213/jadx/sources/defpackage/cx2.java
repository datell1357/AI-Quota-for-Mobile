package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cx2 {
    public static final cx2 n;
    public static final cx2 o;
    public static final /* synthetic */ cx2[] p;

    static {
        cx2 cx2Var = new cx2("EXACT", 0);
        n = cx2Var;
        cx2 cx2Var2 = new cx2("INEXACT", 1);
        o = cx2Var2;
        p = new cx2[]{cx2Var, cx2Var2};
    }

    public static cx2 valueOf(String str) {
        return (cx2) Enum.valueOf(cx2.class, str);
    }

    public static cx2[] values() {
        return (cx2[]) p.clone();
    }
}

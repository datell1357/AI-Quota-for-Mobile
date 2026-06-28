package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ta3 {
    public static final ta3 n;
    public static final ta3 o;
    public static final /* synthetic */ ta3[] p;

    static {
        ta3 ta3Var = new ta3("PLAIN", 0);
        n = ta3Var;
        ta3 ta3Var2 = new ta3("TUNNELLED", 1);
        o = ta3Var2;
        p = new ta3[]{ta3Var, ta3Var2};
    }

    public static ta3 valueOf(String str) {
        return (ta3) Enum.valueOf(ta3.class, str);
    }

    public static ta3[] values() {
        return (ta3[]) p.clone();
    }
}

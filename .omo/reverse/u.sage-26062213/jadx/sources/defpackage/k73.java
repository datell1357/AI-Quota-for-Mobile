package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k73 {
    public static final k73 n;
    public static final k73 o;
    public static final /* synthetic */ k73[] p;

    static {
        k73 k73Var = new k73("Ltr", 0);
        n = k73Var;
        k73 k73Var2 = new k73("Rtl", 1);
        o = k73Var2;
        p = new k73[]{k73Var, k73Var2};
    }

    public static k73 valueOf(String str) {
        return (k73) Enum.valueOf(k73.class, str);
    }

    public static k73[] values() {
        return (k73[]) p.clone();
    }
}

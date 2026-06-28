package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class la5 {
    public static final la5 n;
    public static final la5 o;
    public static final /* synthetic */ la5[] p;

    static {
        la5 la5Var = new la5("CONSENT", 0);
        n = la5Var;
        la5 la5Var2 = new la5("LEGITIMATE_INTEREST", 1);
        la5 la5Var3 = new la5("FLEXIBLE_CONSENT", 2);
        la5 la5Var4 = new la5("FLEXIBLE_LEGITIMATE_INTEREST", 3);
        o = la5Var4;
        p = new la5[]{la5Var, la5Var2, la5Var3, la5Var4};
    }

    public static la5[] values() {
        return (la5[]) p.clone();
    }
}

package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class h31 {
    public static final h31 n;
    public static final h31 o;
    public static final h31 p;
    public static final /* synthetic */ h31[] q;

    static {
        h31 h31Var = new h31("NOT_RUN", 0);
        n = h31Var;
        h31 h31Var2 = new h31("CANCELLED", 1);
        o = h31Var2;
        h31 h31Var3 = new h31("STARTED", 2);
        p = h31Var3;
        q = new h31[]{h31Var, h31Var2, h31Var3};
    }

    public static h31 valueOf(String str) {
        return (h31) Enum.valueOf(h31.class, str);
    }

    public static h31[] values() {
        return (h31[]) q.clone();
    }
}

package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sa3 {
    public static final sa3 n;
    public static final sa3 o;
    public static final /* synthetic */ sa3[] p;

    static {
        sa3 sa3Var = new sa3("PLAIN", 0);
        n = sa3Var;
        sa3 sa3Var2 = new sa3("LAYERED", 1);
        o = sa3Var2;
        p = new sa3[]{sa3Var, sa3Var2};
    }

    public static sa3 valueOf(String str) {
        return (sa3) Enum.valueOf(sa3.class, str);
    }

    public static sa3[] values() {
        return (sa3[]) p.clone();
    }
}

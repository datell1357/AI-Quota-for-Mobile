package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fa3 {
    public static final fa3 n;
    public static final fa3 o;
    public static final fa3 p;
    public static final /* synthetic */ fa3[] q;

    static {
        fa3 fa3Var = new fa3("AUTOMATIC", 0);
        n = fa3Var;
        fa3 fa3Var2 = new fa3("TRUNCATE", 1);
        o = fa3Var2;
        fa3 fa3Var3 = new fa3("WRITE_AHEAD_LOGGING", 2);
        p = fa3Var3;
        q = new fa3[]{fa3Var, fa3Var2, fa3Var3};
    }

    public static fa3 valueOf(String str) {
        return (fa3) Enum.valueOf(fa3.class, str);
    }

    public static fa3[] values() {
        return (fa3[]) q.clone();
    }
}

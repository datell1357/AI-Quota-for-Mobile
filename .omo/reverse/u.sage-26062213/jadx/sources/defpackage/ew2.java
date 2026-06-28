package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ew2 {
    public static final ew2 n;
    public static final ew2 o;
    public static final ew2 p;
    public static final /* synthetic */ ew2[] q;

    static {
        ew2 ew2Var = new ew2("Unknown", 0);
        n = ew2Var;
        ew2 ew2Var2 = new ew2("Dispatching", 1);
        o = ew2Var2;
        ew2 ew2Var3 = new ew2("NotDispatching", 2);
        p = ew2Var3;
        q = new ew2[]{ew2Var, ew2Var2, ew2Var3};
    }

    public static ew2 valueOf(String str) {
        return (ew2) Enum.valueOf(ew2.class, str);
    }

    public static ew2[] values() {
        return (ew2[]) q.clone();
    }
}

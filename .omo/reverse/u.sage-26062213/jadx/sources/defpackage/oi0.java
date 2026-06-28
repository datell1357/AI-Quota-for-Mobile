package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class oi0 {
    public static final oi0 n;
    public static final oi0 o;
    public static final oi0 p;
    public static final oi0 q;
    public static final oi0 r;
    public static final /* synthetic */ oi0[] s;

    static {
        oi0 oi0Var = new oi0("CPU_ACQUIRED", 0);
        n = oi0Var;
        oi0 oi0Var2 = new oi0("BLOCKING", 1);
        o = oi0Var2;
        oi0 oi0Var3 = new oi0("PARKING", 2);
        p = oi0Var3;
        oi0 oi0Var4 = new oi0("DORMANT", 3);
        q = oi0Var4;
        oi0 oi0Var5 = new oi0("TERMINATED", 4);
        r = oi0Var5;
        s = new oi0[]{oi0Var, oi0Var2, oi0Var3, oi0Var4, oi0Var5};
    }

    public static oi0 valueOf(String str) {
        return (oi0) Enum.valueOf(oi0.class, str);
    }

    public static oi0[] values() {
        return (oi0[]) s.clone();
    }
}

package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cg4 {
    public static final cg4 n;
    public static final cg4 o;
    public static final cg4 p;
    public static final cg4 q;
    public static final cg4 r;
    public static final cg4 s;
    public static final /* synthetic */ cg4[] t;

    static {
        cg4 cg4Var = new cg4("ENQUEUED", 0);
        n = cg4Var;
        cg4 cg4Var2 = new cg4("RUNNING", 1);
        o = cg4Var2;
        cg4 cg4Var3 = new cg4("SUCCEEDED", 2);
        p = cg4Var3;
        cg4 cg4Var4 = new cg4("FAILED", 3);
        q = cg4Var4;
        cg4 cg4Var5 = new cg4("BLOCKED", 4);
        r = cg4Var5;
        cg4 cg4Var6 = new cg4("CANCELLED", 5);
        s = cg4Var6;
        t = new cg4[]{cg4Var, cg4Var2, cg4Var3, cg4Var4, cg4Var5, cg4Var6};
    }

    public static cg4 valueOf(String str) {
        return (cg4) Enum.valueOf(cg4.class, str);
    }

    public static cg4[] values() {
        return (cg4[]) t.clone();
    }

    public final boolean a() {
        return this == p || this == q || this == s;
    }
}

package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cq1 {
    public static final cq1 n;
    public static final cq1 o;
    public static final cq1 p;
    public static final /* synthetic */ cq1[] q;

    static {
        cq1 cq1Var = new cq1("Yes", 0);
        n = cq1Var;
        cq1 cq1Var2 = new cq1("No", 1);
        o = cq1Var2;
        cq1 cq1Var3 = new cq1("NotInitialized", 2);
        p = cq1Var3;
        q = new cq1[]{cq1Var, cq1Var2, cq1Var3};
    }

    public static cq1 valueOf(String str) {
        return (cq1) Enum.valueOf(cq1.class, str);
    }

    public static cq1[] values() {
        return (cq1[]) q.clone();
    }
}

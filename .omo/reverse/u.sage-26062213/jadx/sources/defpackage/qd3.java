package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qd3 {
    public static final qd3 n;
    public static final qd3 o;
    public static final qd3 p;
    public static final qd3 q;
    public static final qd3 r;
    public static final /* synthetic */ qd3[] s;

    static {
        qd3 qd3Var = new qd3("TopBar", 0);
        n = qd3Var;
        qd3 qd3Var2 = new qd3("MainContent", 1);
        o = qd3Var2;
        qd3 qd3Var3 = new qd3("Snackbar", 2);
        p = qd3Var3;
        qd3 qd3Var4 = new qd3("Fab", 3);
        q = qd3Var4;
        qd3 qd3Var5 = new qd3("BottomBar", 4);
        r = qd3Var5;
        s = new qd3[]{qd3Var, qd3Var2, qd3Var3, qd3Var4, qd3Var5};
    }

    public static qd3 valueOf(String str) {
        return (qd3) Enum.valueOf(qd3.class, str);
    }

    public static qd3[] values() {
        return (qd3[]) s.clone();
    }
}

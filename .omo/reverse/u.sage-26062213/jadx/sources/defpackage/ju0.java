package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ju0 {
    public static final ju0 n;
    public static final ju0 o;
    public static final ju0 p;
    public static final /* synthetic */ ju0[] q;

    static {
        ju0 ju0Var = new ju0("Vertical", 0);
        n = ju0Var;
        ju0 ju0Var2 = new ju0("Horizontal", 1);
        o = ju0Var2;
        ju0 ju0Var3 = new ju0("Both", 2);
        p = ju0Var3;
        q = new ju0[]{ju0Var, ju0Var2, ju0Var3};
    }

    public static ju0 valueOf(String str) {
        return (ju0) Enum.valueOf(ju0.class, str);
    }

    public static ju0[] values() {
        return (ju0[]) q.clone();
    }
}

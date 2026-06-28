package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class a24 {
    public static final a24 n;
    public static final a24 o;
    public static final a24 p;
    public static final /* synthetic */ a24[] q;

    static {
        a24 a24Var = new a24("ContinueTraversal", 0);
        n = a24Var;
        a24 a24Var2 = new a24("SkipSubtreeAndContinueTraversal", 1);
        o = a24Var2;
        a24 a24Var3 = new a24("CancelTraversal", 2);
        p = a24Var3;
        q = new a24[]{a24Var, a24Var2, a24Var3};
    }

    public static a24 valueOf(String str) {
        return (a24) Enum.valueOf(a24.class, str);
    }

    public static a24[] values() {
        return (a24[]) q.clone();
    }
}

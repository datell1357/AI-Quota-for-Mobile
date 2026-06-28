package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b11 {
    public static final b11 n;
    public static final b11 o;
    public static final b11 p;
    public static final /* synthetic */ b11[] q;

    static {
        b11 b11Var = new b11("PreEnter", 0);
        n = b11Var;
        b11 b11Var2 = new b11("Visible", 1);
        o = b11Var2;
        b11 b11Var3 = new b11("PostExit", 2);
        p = b11Var3;
        q = new b11[]{b11Var, b11Var2, b11Var3};
    }

    public static b11 valueOf(String str) {
        return (b11) Enum.valueOf(b11.class, str);
    }

    public static b11[] values() {
        return (b11[]) q.clone();
    }
}

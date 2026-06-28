package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class x31 {
    public static final x31 n;
    public static final x31 o;
    public static final x31 p;
    public static final x31 q;
    public static final /* synthetic */ x31[] r;

    static {
        x31 x31Var = new x31("REPLACE", 0);
        n = x31Var;
        x31 x31Var2 = new x31("KEEP", 1);
        o = x31Var2;
        x31 x31Var3 = new x31("APPEND", 2);
        p = x31Var3;
        x31 x31Var4 = new x31("APPEND_OR_REPLACE", 3);
        q = x31Var4;
        r = new x31[]{x31Var, x31Var2, x31Var3, x31Var4};
    }

    public static x31 valueOf(String str) {
        return (x31) Enum.valueOf(x31.class, str);
    }

    public static x31[] values() {
        return (x31[]) r.clone();
    }
}

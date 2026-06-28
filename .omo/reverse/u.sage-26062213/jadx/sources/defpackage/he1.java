package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class he1 {
    public static final he1 n;
    public static final he1 o;
    public static final he1 p;
    public static final he1 q;
    public static final he1 r;
    public static final /* synthetic */ he1[] s;

    static {
        he1 he1Var = new he1("ON_CONFIGURE", 0);
        n = he1Var;
        he1 he1Var2 = new he1("ON_CREATE", 1);
        o = he1Var2;
        he1 he1Var3 = new he1("ON_UPGRADE", 2);
        p = he1Var3;
        he1 he1Var4 = new he1("ON_DOWNGRADE", 3);
        q = he1Var4;
        he1 he1Var5 = new he1("ON_OPEN", 4);
        r = he1Var5;
        s = new he1[]{he1Var, he1Var2, he1Var3, he1Var4, he1Var5};
    }

    public static he1 valueOf(String str) {
        return (he1) Enum.valueOf(he1.class, str);
    }

    public static he1[] values() {
        return (he1[]) s.clone();
    }
}

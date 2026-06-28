package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ti0 {
    public static final ti0 n;
    public static final ti0 o;
    public static final ti0 p;
    public static final ti0 q;
    public static final /* synthetic */ ti0[] r;

    static {
        ti0 ti0Var = new ti0("DEFAULT", 0);
        n = ti0Var;
        ti0 ti0Var2 = new ti0("LAZY", 1);
        o = ti0Var2;
        ti0 ti0Var3 = new ti0("ATOMIC", 2);
        p = ti0Var3;
        ti0 ti0Var4 = new ti0("UNDISPATCHED", 3);
        q = ti0Var4;
        r = new ti0[]{ti0Var, ti0Var2, ti0Var3, ti0Var4};
    }

    public static ti0 valueOf(String str) {
        return (ti0) Enum.valueOf(ti0.class, str);
    }

    public static ti0[] values() {
        return (ti0[]) r.clone();
    }
}

package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ri0 {
    public static final ri0 n;
    public static final ri0 o;
    public static final ri0 p;
    public static final /* synthetic */ ri0[] q;

    static {
        ri0 ri0Var = new ri0("COROUTINE_SUSPENDED", 0);
        n = ri0Var;
        ri0 ri0Var2 = new ri0("UNDECIDED", 1);
        o = ri0Var2;
        ri0 ri0Var3 = new ri0("RESUMED", 2);
        p = ri0Var3;
        q = new ri0[]{ri0Var, ri0Var2, ri0Var3};
    }

    public static ri0 valueOf(String str) {
        return (ri0) Enum.valueOf(ri0.class, str);
    }

    public static ri0[] values() {
        return (ri0[]) q.clone();
    }
}

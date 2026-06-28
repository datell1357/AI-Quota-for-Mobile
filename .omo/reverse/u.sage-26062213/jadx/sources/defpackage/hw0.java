package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hw0 {
    public static final hw0 n;
    public static final hw0 o;
    public static final hw0 p;
    public static final /* synthetic */ hw0[] q;

    static {
        hw0 hw0Var = new hw0("Yes", 0);
        n = hw0Var;
        hw0 hw0Var2 = new hw0("No", 1);
        o = hw0Var2;
        hw0 hw0Var3 = new hw0("NotInitialized", 2);
        p = hw0Var3;
        q = new hw0[]{hw0Var, hw0Var2, hw0Var3};
    }

    public static hw0 valueOf(String str) {
        return (hw0) Enum.valueOf(hw0.class, str);
    }

    public static hw0[] values() {
        return (hw0[]) q.clone();
    }
}

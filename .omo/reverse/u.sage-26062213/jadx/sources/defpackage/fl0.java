package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fl0 {
    public static final fl0 n;
    public static final fl0 o;
    public static final fl0 p;
    public static final /* synthetic */ fl0[] q;

    static {
        fl0 fl0Var = new fl0("None", 0);
        n = fl0Var;
        fl0 fl0Var2 = new fl0("Cancelled", 1);
        o = fl0Var2;
        fl0 fl0Var3 = new fl0("Redirected", 2);
        p = fl0Var3;
        q = new fl0[]{fl0Var, fl0Var2, fl0Var3, new fl0("RedirectCancelled", 3)};
    }

    public static fl0 valueOf(String str) {
        return (fl0) Enum.valueOf(fl0.class, str);
    }

    public static fl0[] values() {
        return (fl0[]) q.clone();
    }
}

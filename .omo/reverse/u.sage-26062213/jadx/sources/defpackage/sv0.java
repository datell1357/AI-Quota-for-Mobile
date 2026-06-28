package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sv0 {
    public static final sv0 n;
    public static final sv0 o;
    public static final /* synthetic */ sv0[] p;

    /* JADX INFO: Fake field, exist only in values array */
    sv0 EF0;

    static {
        sv0 sv0Var = new sv0("UNKNOWN", 0);
        sv0 sv0Var2 = new sv0("ICANN", 1);
        n = sv0Var2;
        sv0 sv0Var3 = new sv0("PRIVATE", 2);
        o = sv0Var3;
        p = new sv0[]{sv0Var, sv0Var2, sv0Var3};
    }

    public static sv0 valueOf(String str) {
        return (sv0) Enum.valueOf(sv0.class, str);
    }

    public static sv0[] values() {
        return (sv0[]) p.clone();
    }
}

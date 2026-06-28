package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jr2 {
    public static final jr2 n;
    public static final jr2 o;
    public static final /* synthetic */ jr2[] p;

    static {
        jr2 jr2Var = new jr2("RUN_AS_NON_EXPEDITED_WORK_REQUEST", 0);
        n = jr2Var;
        jr2 jr2Var2 = new jr2("DROP_WORK_REQUEST", 1);
        o = jr2Var2;
        p = new jr2[]{jr2Var, jr2Var2};
    }

    public static jr2 valueOf(String str) {
        return (jr2) Enum.valueOf(jr2.class, str);
    }

    public static jr2[] values() {
        return (jr2[]) p.clone();
    }
}

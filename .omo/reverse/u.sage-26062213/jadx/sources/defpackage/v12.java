package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v12 {
    public static final v12 n;
    public static final v12 o;
    public static final /* synthetic */ v12[] p;

    /* JADX INFO: Fake field, exist only in values array */
    v12 EF0;

    static {
        v12 v12Var = new v12("SYNCHRONIZED", 0);
        v12 v12Var2 = new v12("PUBLICATION", 1);
        n = v12Var2;
        v12 v12Var3 = new v12("NONE", 2);
        o = v12Var3;
        p = new v12[]{v12Var, v12Var2, v12Var3};
    }

    public static v12 valueOf(String str) {
        return (v12) Enum.valueOf(v12.class, str);
    }

    public static v12[] values() {
        return (v12[]) p.clone();
    }
}

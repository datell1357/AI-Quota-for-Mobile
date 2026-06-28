package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rd3 {
    public static final rd3 n;
    public static final rd3 o;
    public static final /* synthetic */ rd3[] p;

    static {
        rd3 rd3Var = new rd3("FILL", 0);
        n = rd3Var;
        rd3 rd3Var2 = new rd3("FIT", 1);
        o = rd3Var2;
        p = new rd3[]{rd3Var, rd3Var2};
    }

    public static rd3 valueOf(String str) {
        return (rd3) Enum.valueOf(rd3.class, str);
    }

    public static rd3[] values() {
        return (rd3[]) p.clone();
    }
}

package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hm3 {
    public static final hm3 n;
    public static final hm3 o;
    public static final /* synthetic */ hm3[] p;

    static {
        hm3 hm3Var = new hm3("GENERAL", 0);
        n = hm3Var;
        hm3 hm3Var2 = new hm3("FALLBACK", 1);
        o = hm3Var2;
        p = new hm3[]{hm3Var, hm3Var2};
    }

    public static hm3 valueOf(String str) {
        return (hm3) Enum.valueOf(hm3.class, str);
    }

    public static hm3[] values() {
        return (hm3[]) p.clone();
    }
}

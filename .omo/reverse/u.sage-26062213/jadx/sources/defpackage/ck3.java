package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ck3 {
    public static final ck3 n;
    public static final ck3 o;
    public static final /* synthetic */ ck3[] p;

    static {
        ck3 ck3Var = new ck3("CRASHLYTICS", 0);
        n = ck3Var;
        ck3 ck3Var2 = new ck3("PERFORMANCE", 1);
        o = ck3Var2;
        p = new ck3[]{ck3Var, ck3Var2, new ck3("MATT_SAYS_HI", 2)};
    }

    public static ck3 valueOf(String str) {
        return (ck3) Enum.valueOf(ck3.class, str);
    }

    public static ck3[] values() {
        return (ck3[]) p.clone();
    }
}

package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yt1 {
    public static final yt1 n;
    public static final yt1 o;
    public static final yt1 p;
    public static final yt1 q;
    public static final /* synthetic */ yt1[] r;

    static {
        yt1 yt1Var = new yt1("LookaheadMeasurement", 0);
        n = yt1Var;
        yt1 yt1Var2 = new yt1("LookaheadPlacement", 1);
        o = yt1Var2;
        yt1 yt1Var3 = new yt1("Measurement", 2);
        p = yt1Var3;
        yt1 yt1Var4 = new yt1("Placement", 3);
        q = yt1Var4;
        r = new yt1[]{yt1Var, yt1Var2, yt1Var3, yt1Var4};
    }

    public static yt1 valueOf(String str) {
        return (yt1) Enum.valueOf(yt1.class, str);
    }

    public static yt1[] values() {
        return (yt1[]) r.clone();
    }
}

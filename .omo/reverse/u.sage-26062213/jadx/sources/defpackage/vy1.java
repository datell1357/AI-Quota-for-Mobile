package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vy1 {
    public static final vy1 n;
    public static final vy1 o;
    public static final vy1 p;
    public static final /* synthetic */ vy1[] q;

    static {
        vy1 vy1Var = new vy1("InMeasureBlock", 0);
        n = vy1Var;
        vy1 vy1Var2 = new vy1("InLayoutBlock", 1);
        o = vy1Var2;
        vy1 vy1Var3 = new vy1("NotUsed", 2);
        p = vy1Var3;
        q = new vy1[]{vy1Var, vy1Var2, vy1Var3};
    }

    public static vy1 valueOf(String str) {
        return (vy1) Enum.valueOf(vy1.class, str);
    }

    public static vy1[] values() {
        return (vy1[]) q.clone();
    }
}

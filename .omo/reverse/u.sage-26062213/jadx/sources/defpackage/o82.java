package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class o82 {
    public static final o82 n;
    public static final o82 o;
    public static final o82 p;
    public static final /* synthetic */ o82[] q;

    static {
        o82 o82Var = new o82("IsPlacedInLookahead", 0);
        n = o82Var;
        o82 o82Var2 = new o82("IsPlacedInApproach", 1);
        o = o82Var2;
        o82 o82Var3 = new o82("IsNotPlaced", 2);
        p = o82Var3;
        q = new o82[]{o82Var, o82Var2, o82Var3};
    }

    public static o82 valueOf(String str) {
        return (o82) Enum.valueOf(o82.class, str);
    }

    public static o82[] values() {
        return (o82[]) q.clone();
    }
}

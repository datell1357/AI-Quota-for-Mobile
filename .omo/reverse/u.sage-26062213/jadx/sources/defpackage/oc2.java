package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class oc2 {
    public static final oc2 n;
    public static final oc2 o;
    public static final /* synthetic */ oc2[] p;

    static {
        oc2 oc2Var = new oc2("SENT", 0);
        n = oc2Var;
        oc2 oc2Var2 = new oc2("RECEIVED", 1);
        o = oc2Var2;
        p = new oc2[]{oc2Var, oc2Var2};
    }

    public static oc2 valueOf(String str) {
        return (oc2) Enum.valueOf(oc2.class, str);
    }

    public static oc2[] values() {
        return (oc2[]) p.clone();
    }
}

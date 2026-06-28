package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wz3 {
    public static final wz3 n;
    public static final wz3 o;
    public static final /* synthetic */ wz3[] p;

    static {
        wz3 wz3Var = new wz3("On", 0);
        n = wz3Var;
        wz3 wz3Var2 = new wz3("Off", 1);
        o = wz3Var2;
        p = new wz3[]{wz3Var, wz3Var2, new wz3("Indeterminate", 2)};
    }

    public static wz3 valueOf(String str) {
        return (wz3) Enum.valueOf(wz3.class, str);
    }

    public static wz3[] values() {
        return (wz3[]) p.clone();
    }
}

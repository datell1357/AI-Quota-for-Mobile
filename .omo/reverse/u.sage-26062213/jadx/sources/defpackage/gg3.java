package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class gg3 {
    public static final gg3 n;
    public static final /* synthetic */ gg3[] o;

    static {
        gg3 gg3Var = new gg3("Inherit", 0);
        n = gg3Var;
        o = new gg3[]{gg3Var, new gg3("SecureOn", 1), new gg3("SecureOff", 2)};
    }

    public static gg3 valueOf(String str) {
        return (gg3) Enum.valueOf(gg3.class, str);
    }

    public static gg3[] values() {
        return (gg3[]) o.clone();
    }
}

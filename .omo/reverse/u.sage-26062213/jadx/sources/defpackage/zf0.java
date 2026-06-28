package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zf0 {
    public static final zf0 n;
    public static final zf0 o;
    public static final /* synthetic */ zf0[] p;

    static {
        zf0 zf0Var = new zf0("VIEW_APPEAR", 0);
        n = zf0Var;
        zf0 zf0Var2 = new zf0("VIEW_DISAPPEAR", 1);
        o = zf0Var2;
        p = new zf0[]{zf0Var, zf0Var2};
    }

    public static zf0 valueOf(String str) {
        return (zf0) Enum.valueOf(zf0.class, str);
    }

    public static zf0[] values() {
        return (zf0[]) p.clone();
    }
}

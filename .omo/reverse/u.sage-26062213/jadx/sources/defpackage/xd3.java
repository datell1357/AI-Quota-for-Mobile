package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xd3 {
    public static final xd3 n;
    public static final xd3 o;
    public static final xd3 p;
    public static final /* synthetic */ xd3[] q;

    static {
        xd3 xd3Var = new xd3("NETWORK_UNMETERED", 0);
        n = xd3Var;
        xd3 xd3Var2 = new xd3("DEVICE_IDLE", 1);
        o = xd3Var2;
        xd3 xd3Var3 = new xd3("DEVICE_CHARGING", 2);
        p = xd3Var3;
        q = new xd3[]{xd3Var, xd3Var2, xd3Var3};
    }

    public static xd3 valueOf(String str) {
        return (xd3) Enum.valueOf(xd3.class, str);
    }

    public static xd3[] values() {
        return (xd3[]) q.clone();
    }
}

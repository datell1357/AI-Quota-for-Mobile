package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zl2 {
    public static final zl2 n;
    public static final zl2 o;
    public static final zl2 p;
    public static final zl2 q;
    public static final zl2 r;
    public static final zl2 s;
    public static final /* synthetic */ zl2[] t;

    static {
        zl2 zl2Var = new zl2("NOT_REQUIRED", 0);
        n = zl2Var;
        zl2 zl2Var2 = new zl2("CONNECTED", 1);
        o = zl2Var2;
        zl2 zl2Var3 = new zl2("UNMETERED", 2);
        p = zl2Var3;
        zl2 zl2Var4 = new zl2("NOT_ROAMING", 3);
        q = zl2Var4;
        zl2 zl2Var5 = new zl2("METERED", 4);
        r = zl2Var5;
        zl2 zl2Var6 = new zl2("TEMPORARILY_UNMETERED", 5);
        s = zl2Var6;
        t = new zl2[]{zl2Var, zl2Var2, zl2Var3, zl2Var4, zl2Var5, zl2Var6};
    }

    public static zl2 valueOf(String str) {
        return (zl2) Enum.valueOf(zl2.class, str);
    }

    public static zl2[] values() {
        return (zl2[]) t.clone();
    }
}

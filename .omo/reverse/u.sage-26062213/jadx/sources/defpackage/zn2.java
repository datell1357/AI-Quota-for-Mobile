package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zn2 {
    public static final zn2 n;
    public static final zn2 o;
    public static final zn2 p;
    public static final /* synthetic */ zn2[] q;

    static {
        zn2 zn2Var = new zn2("NO_OP", 0);
        n = zn2Var;
        zn2 zn2Var2 = new zn2("ADD", 1);
        o = zn2Var2;
        zn2 zn2Var3 = new zn2("REMOVE", 2);
        p = zn2Var3;
        q = new zn2[]{zn2Var, zn2Var2, zn2Var3};
    }

    public static zn2 valueOf(String str) {
        return (zn2) Enum.valueOf(zn2.class, str);
    }

    public static zn2[] values() {
        return (zn2[]) q.clone();
    }
}

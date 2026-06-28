package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pm2 {
    public static final pm2 n;
    public static final pm2 o;
    public static final /* synthetic */ pm2[] p;

    static {
        pm2 pm2Var = new pm2("Min", 0);
        n = pm2Var;
        pm2 pm2Var2 = new pm2("Max", 1);
        o = pm2Var2;
        p = new pm2[]{pm2Var, pm2Var2};
    }

    public static pm2 valueOf(String str) {
        return (pm2) Enum.valueOf(pm2.class, str);
    }

    public static pm2[] values() {
        return (pm2[]) p.clone();
    }
}

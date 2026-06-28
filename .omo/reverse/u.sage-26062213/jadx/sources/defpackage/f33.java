package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f33 {
    public static final f33 n;
    public static final f33 o;
    public static final f33 p;
    public static final f33 q;
    public static final f33 r;
    public static final f33 s;
    public static final /* synthetic */ f33[] t;

    static {
        f33 f33Var = new f33("ShutDown", 0);
        n = f33Var;
        f33 f33Var2 = new f33("ShuttingDown", 1);
        o = f33Var2;
        f33 f33Var3 = new f33("Inactive", 2);
        p = f33Var3;
        f33 f33Var4 = new f33("InactivePendingWork", 3);
        q = f33Var4;
        f33 f33Var5 = new f33("Idle", 4);
        r = f33Var5;
        f33 f33Var6 = new f33("PendingWork", 5);
        s = f33Var6;
        t = new f33[]{f33Var, f33Var2, f33Var3, f33Var4, f33Var5, f33Var6};
    }

    public static f33 valueOf(String str) {
        return (f33) Enum.valueOf(f33.class, str);
    }

    public static f33[] values() {
        return (f33[]) t.clone();
    }
}

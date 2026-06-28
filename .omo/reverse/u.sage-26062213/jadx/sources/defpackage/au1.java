package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class au1 {
    public static final au1 n;
    public static final au1 o;
    public static final au1 p;
    public static final au1 q;
    public static final /* synthetic */ au1[] r;

    static {
        au1 au1Var = new au1("IGNORED", 0);
        n = au1Var;
        au1 au1Var2 = new au1("SCHEDULED", 1);
        o = au1Var2;
        au1 au1Var3 = new au1("DEFERRED", 2);
        p = au1Var3;
        au1 au1Var4 = new au1("IMMINENT", 3);
        q = au1Var4;
        r = new au1[]{au1Var, au1Var2, au1Var3, au1Var4};
    }

    public static au1 valueOf(String str) {
        return (au1) Enum.valueOf(au1.class, str);
    }

    public static au1[] values() {
        return (au1[]) r.clone();
    }
}

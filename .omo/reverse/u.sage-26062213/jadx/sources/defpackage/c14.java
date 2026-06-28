package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c14 {
    public static final c14 n;
    public static final c14 o;
    public static final /* synthetic */ c14[] p;

    static {
        c14 c14Var = new c14("DEFERRED", 0);
        n = c14Var;
        c14 c14Var2 = new c14("IMMEDIATE", 1);
        o = c14Var2;
        p = new c14[]{c14Var, c14Var2, new c14("EXCLUSIVE", 2)};
    }

    public static c14 valueOf(String str) {
        return (c14) Enum.valueOf(c14.class, str);
    }

    public static c14[] values() {
        return (c14[]) p.clone();
    }
}

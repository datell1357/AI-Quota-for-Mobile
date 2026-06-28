package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wv2 {
    public static final wv2 n;
    public static final wv2 o;
    public static final wv2 p;
    public static final /* synthetic */ wv2[] q;

    static {
        wv2 wv2Var = new wv2("Initial", 0);
        n = wv2Var;
        wv2 wv2Var2 = new wv2("Main", 1);
        o = wv2Var2;
        wv2 wv2Var3 = new wv2("Final", 2);
        p = wv2Var3;
        q = new wv2[]{wv2Var, wv2Var2, wv2Var3};
    }

    public static wv2 valueOf(String str) {
        return (wv2) Enum.valueOf(wv2.class, str);
    }

    public static wv2[] values() {
        return (wv2[]) q.clone();
    }
}

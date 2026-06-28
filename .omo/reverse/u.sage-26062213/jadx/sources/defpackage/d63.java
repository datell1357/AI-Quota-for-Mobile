package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class d63 {
    public static final d63 n;
    public static final /* synthetic */ d63[] o;

    static {
        d63 d63Var = new d63("Restart", 0);
        n = d63Var;
        o = new d63[]{d63Var, new d63("Reverse", 1)};
    }

    public static d63 valueOf(String str) {
        return (d63) Enum.valueOf(d63.class, str);
    }

    public static d63[] values() {
        return (d63[]) o.clone();
    }
}

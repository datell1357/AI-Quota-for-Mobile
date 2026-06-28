package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class km0 {
    public static final km0 n;
    public static final km0 o;
    public static final km0 p;
    public static final km0 q;
    public static final /* synthetic */ km0[] r;

    static {
        km0 km0Var = new km0("MEMORY_CACHE", 0);
        n = km0Var;
        km0 km0Var2 = new km0("MEMORY", 1);
        o = km0Var2;
        km0 km0Var3 = new km0("DISK", 2);
        p = km0Var3;
        km0 km0Var4 = new km0("NETWORK", 3);
        q = km0Var4;
        r = new km0[]{km0Var, km0Var2, km0Var3, km0Var4};
    }

    public static km0 valueOf(String str) {
        return (km0) Enum.valueOf(km0.class, str);
    }

    public static km0[] values() {
        return (km0[]) r.clone();
    }
}

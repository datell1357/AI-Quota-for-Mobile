package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class bu2 {
    public static final bu2 n;
    public static final bu2 o;
    public static final bu2 p;
    public static final bu2 q;
    public static final bu2 r;
    public static final bu2 s;
    public static final bu2 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ bu2[] f34u;

    static {
        bu2 bu2Var = new bu2("Invalid", 0);
        n = bu2Var;
        bu2 bu2Var2 = new bu2("Cancelled", 1);
        o = bu2Var2;
        bu2 bu2Var3 = new bu2("InitialPending", 2);
        p = bu2Var3;
        bu2 bu2Var4 = new bu2("RecomposePending", 3);
        q = bu2Var4;
        bu2 bu2Var5 = new bu2("Recomposing", 4);
        r = bu2Var5;
        bu2 bu2Var6 = new bu2("ApplyPending", 5);
        s = bu2Var6;
        bu2 bu2Var7 = new bu2("Applied", 6);
        t = bu2Var7;
        f34u = new bu2[]{bu2Var, bu2Var2, bu2Var3, bu2Var4, bu2Var5, bu2Var6, bu2Var7};
    }

    public static bu2 valueOf(String str) {
        return (bu2) Enum.valueOf(bu2.class, str);
    }

    public static bu2[] values() {
        return (bu2[]) f34u.clone();
    }
}

package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f22 {
    private static final /* synthetic */ s11 $ENTRIES;
    private static final /* synthetic */ f22[] $VALUES;
    public static final d22 Companion;
    public static final f22 ON_ANY;
    public static final f22 ON_CREATE;
    public static final f22 ON_DESTROY;
    public static final f22 ON_PAUSE;
    public static final f22 ON_RESUME;
    public static final f22 ON_START;
    public static final f22 ON_STOP;

    static {
        f22 f22Var = new f22("ON_CREATE", 0);
        ON_CREATE = f22Var;
        f22 f22Var2 = new f22("ON_START", 1);
        ON_START = f22Var2;
        f22 f22Var3 = new f22("ON_RESUME", 2);
        ON_RESUME = f22Var3;
        f22 f22Var4 = new f22("ON_PAUSE", 3);
        ON_PAUSE = f22Var4;
        f22 f22Var5 = new f22("ON_STOP", 4);
        ON_STOP = f22Var5;
        f22 f22Var6 = new f22("ON_DESTROY", 5);
        ON_DESTROY = f22Var6;
        f22 f22Var7 = new f22("ON_ANY", 6);
        ON_ANY = f22Var7;
        f22[] f22VarArr = {f22Var, f22Var2, f22Var3, f22Var4, f22Var5, f22Var6, f22Var7};
        $VALUES = f22VarArr;
        $ENTRIES = new t11(f22VarArr);
        Companion = new d22();
    }

    public static f22 valueOf(String str) {
        return (f22) Enum.valueOf(f22.class, str);
    }

    public static f22[] values() {
        return (f22[]) $VALUES.clone();
    }

    public final g22 a() {
        switch (e22.a[ordinal()]) {
            case 1:
            case 2:
                return g22.p;
            case 3:
            case 4:
                return g22.q;
            case 5:
                return g22.r;
            case 6:
                return g22.n;
            case 7:
                throw new IllegalArgumentException(this + " has no target state");
            default:
                p61.x();
                return null;
        }
    }
}

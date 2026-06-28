package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mm3 {
    public static final mm3 n;
    public static final mm3 o;
    public static final mm3 p;
    public static final /* synthetic */ mm3[] q;

    static {
        mm3 mm3Var = new mm3("START", 0);
        n = mm3Var;
        mm3 mm3Var2 = new mm3("STOP", 1);
        o = mm3Var2;
        mm3 mm3Var3 = new mm3("STOP_AND_RESET_REPLAY_CACHE", 2);
        p = mm3Var3;
        q = new mm3[]{mm3Var, mm3Var2, mm3Var3};
    }

    public static mm3 valueOf(String str) {
        return (mm3) Enum.valueOf(mm3.class, str);
    }

    public static mm3[] values() {
        return (mm3[]) q.clone();
    }
}

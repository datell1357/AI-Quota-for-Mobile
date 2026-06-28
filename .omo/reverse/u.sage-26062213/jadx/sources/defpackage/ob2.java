package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ob2 {
    public static final ob2 n;
    public static final ob2 o;
    public static final /* synthetic */ ob2[] p;

    static {
        ob2 ob2Var = new ob2("Width", 0);
        n = ob2Var;
        ob2 ob2Var2 = new ob2("Height", 1);
        o = ob2Var2;
        p = new ob2[]{ob2Var, ob2Var2};
    }

    public static ob2 valueOf(String str) {
        return (ob2) Enum.valueOf(ob2.class, str);
    }

    public static ob2[] values() {
        return (ob2[]) p.clone();
    }
}

package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class lt1 {
    public static final lt1 n;
    public static final lt1 o;
    public static final /* synthetic */ lt1[] p;

    static {
        lt1 lt1Var = new lt1("Width", 0);
        n = lt1Var;
        lt1 lt1Var2 = new lt1("Height", 1);
        o = lt1Var2;
        p = new lt1[]{lt1Var, lt1Var2};
    }

    public static lt1 valueOf(String str) {
        return (lt1) Enum.valueOf(lt1.class, str);
    }

    public static lt1[] values() {
        return (lt1[]) p.clone();
    }
}

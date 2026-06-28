package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mz1 {
    public static final mz1 n;
    public static final /* synthetic */ mz1[] o;

    static {
        mz1 mz1Var = new mz1("Horizontal", 0);
        n = mz1Var;
        o = new mz1[]{mz1Var, new mz1("Vertical", 1)};
    }

    public static mz1 valueOf(String str) {
        return (mz1) Enum.valueOf(mz1.class, str);
    }

    public static mz1[] values() {
        return (mz1[]) o.clone();
    }
}

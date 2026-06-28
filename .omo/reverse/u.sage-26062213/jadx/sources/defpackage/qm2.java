package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qm2 {
    public static final qm2 n;
    public static final qm2 o;
    public static final /* synthetic */ qm2[] p;

    static {
        qm2 qm2Var = new qm2("Width", 0);
        n = qm2Var;
        qm2 qm2Var2 = new qm2("Height", 1);
        o = qm2Var2;
        p = new qm2[]{qm2Var, qm2Var2};
    }

    public static qm2 valueOf(String str) {
        return (qm2) Enum.valueOf(qm2.class, str);
    }

    public static qm2[] values() {
        return (qm2[]) p.clone();
    }
}

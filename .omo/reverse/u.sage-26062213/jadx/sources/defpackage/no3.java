package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class no3 {
    public static final no3 n;
    public static final /* synthetic */ no3[] o;

    static {
        no3 no3Var = new no3("Dismissed", 0);
        n = no3Var;
        o = new no3[]{no3Var, new no3("ActionPerformed", 1)};
    }

    public static no3 valueOf(String str) {
        return (no3) Enum.valueOf(no3.class, str);
    }

    public static no3[] values() {
        return (no3[]) o.clone();
    }
}

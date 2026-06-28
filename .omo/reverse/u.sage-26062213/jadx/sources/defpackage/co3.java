package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class co3 {
    public static final co3 n;
    public static final /* synthetic */ co3[] o;

    static {
        co3 co3Var = new co3("Short", 0);
        n = co3Var;
        o = new co3[]{co3Var, new co3("Long", 1), new co3("Indefinite", 2)};
    }

    public static co3 valueOf(String str) {
        return (co3) Enum.valueOf(co3.class, str);
    }

    public static co3[] values() {
        return (co3[]) o.clone();
    }
}

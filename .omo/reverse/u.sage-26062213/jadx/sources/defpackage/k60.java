package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k60 {
    public static final k60 n;
    public static final /* synthetic */ k60[] o;

    /* JADX INFO: Fake field, exist only in values array */
    k60 EF0;

    static {
        k60 k60Var = new k60("UNKNOWN", 0);
        k60 k60Var2 = new k60("ANDROID_FIREBASE", 1);
        n = k60Var2;
        o = new k60[]{k60Var, k60Var2};
    }

    public static k60 valueOf(String str) {
        return (k60) Enum.valueOf(k60.class, str);
    }

    public static k60[] values() {
        return (k60[]) o.clone();
    }
}

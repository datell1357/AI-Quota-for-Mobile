package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yg2 {
    public static final yg2 n;
    public static final /* synthetic */ yg2[] o;

    static {
        yg2 yg2Var = new yg2("Default", 0);
        n = yg2Var;
        o = new yg2[]{yg2Var, new yg2("UserInput", 1), new yg2("PreventUserInput", 2)};
    }

    public static yg2 valueOf(String str) {
        return (yg2) Enum.valueOf(yg2.class, str);
    }

    public static yg2[] values() {
        return (yg2[]) o.clone();
    }
}

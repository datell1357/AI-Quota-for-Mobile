package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class g91 {
    public static final g91 n;
    public static final /* synthetic */ g91[] o;

    /* JADX INFO: Fake field, exist only in values array */
    g91 EF0;

    static {
        g91 g91Var = new g91("Visible", 0);
        g91 g91Var2 = new g91("Clip", 1);
        n = g91Var2;
        o = new g91[]{g91Var, g91Var2, new g91("ExpandIndicator", 2), new g91("ExpandOrCollapseIndicator", 3)};
    }

    public static g91 valueOf(String str) {
        return (g91) Enum.valueOf(g91.class, str);
    }

    public static g91[] values() {
        return (g91[]) o.clone();
    }
}

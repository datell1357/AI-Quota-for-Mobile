package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hr2 {
    public static final hr2 n;
    public static final hr2 o;
    public static final /* synthetic */ hr2[] p;

    static {
        hr2 hr2Var = new hr2("Vertical", 0);
        n = hr2Var;
        hr2 hr2Var2 = new hr2("Horizontal", 1);
        o = hr2Var2;
        p = new hr2[]{hr2Var, hr2Var2};
    }

    public static hr2 valueOf(String str) {
        return (hr2) Enum.valueOf(hr2.class, str);
    }

    public static hr2[] values() {
        return (hr2[]) p.clone();
    }
}

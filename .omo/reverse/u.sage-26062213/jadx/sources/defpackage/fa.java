package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fa {
    public static final fa n;
    public static final fa o;
    public static final /* synthetic */ fa[] p;

    static {
        fa faVar = new fa("SHOW_ORIGINAL", 0);
        n = faVar;
        fa faVar2 = new fa("SHOW_TRANSLATED", 1);
        o = faVar2;
        p = new fa[]{faVar, faVar2};
    }

    public static fa valueOf(String str) {
        return (fa) Enum.valueOf(fa.class, str);
    }

    public static fa[] values() {
        return (fa[]) p.clone();
    }
}

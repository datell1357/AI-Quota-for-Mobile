package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class se {
    public static final se n;
    public static final se o;
    public static final /* synthetic */ se[] p;

    static {
        se seVar = new se("BoundReached", 0);
        n = seVar;
        se seVar2 = new se("Finished", 1);
        o = seVar2;
        p = new se[]{seVar, seVar2};
    }

    public static se valueOf(String str) {
        return (se) Enum.valueOf(se.class, str);
    }

    public static se[] values() {
        return (se[]) p.clone();
    }
}

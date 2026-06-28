package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vy {
    public static final vy n;
    public static final vy o;
    public static final vy p;
    public static final /* synthetic */ vy[] q;

    static {
        vy vyVar = new vy("SUSPEND", 0);
        n = vyVar;
        vy vyVar2 = new vy("DROP_OLDEST", 1);
        o = vyVar2;
        vy vyVar3 = new vy("DROP_LATEST", 2);
        p = vyVar3;
        q = new vy[]{vyVar, vyVar2, vyVar3};
    }

    public static vy valueOf(String str) {
        return (vy) Enum.valueOf(vy.class, str);
    }

    public static vy[] values() {
        return (vy[]) q.clone();
    }
}

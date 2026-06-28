package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class nq {
    public static final /* synthetic */ nq[] n = {new nq("PRESENT", 0), new nq("ABSENT", 1), new nq("PRESENT_OPTIONAL", 2), new nq("ABSENT_OPTIONAL", 3)};

    /* JADX INFO: Fake field, exist only in values array */
    nq EF5;

    public static nq valueOf(String str) {
        return (nq) Enum.valueOf(nq.class, str);
    }

    public static nq[] values() {
        return (nq[]) n.clone();
    }
}

package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jq {
    public static final jq n;
    public static final jq o;
    public static final /* synthetic */ jq[] p;

    static {
        jq jqVar = new jq("EXPONENTIAL", 0);
        n = jqVar;
        jq jqVar2 = new jq("LINEAR", 1);
        o = jqVar2;
        p = new jq[]{jqVar, jqVar2};
    }

    public static jq valueOf(String str) {
        return (jq) Enum.valueOf(jq.class, str);
    }

    public static jq[] values() {
        return (jq[]) p.clone();
    }
}

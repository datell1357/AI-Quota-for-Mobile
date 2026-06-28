package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class cv1 {
    public static final sg0 a = new sg0("COMPLETING_ALREADY", 3);
    public static final sg0 b = new sg0("COMPLETING_WAITING_CHILDREN", 3);
    public static final sg0 c = new sg0("COMPLETING_RETRY", 3);
    public static final sg0 d = new sg0("TOO_LATE_TO_CANCEL", 3);
    public static final sg0 e = new sg0("SEALED", 3);
    public static final a01 f = new a01(false);
    public static final a01 g = new a01(true);

    public static final Object a(Object obj) {
        rp1 rp1Var;
        sp1 sp1Var = obj instanceof sp1 ? (sp1) obj : null;
        return (sp1Var == null || (rp1Var = sp1Var.a) == null) ? obj : rp1Var;
    }
}

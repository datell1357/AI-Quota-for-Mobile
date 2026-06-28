package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class fg5 {
    public static final eg5 f;
    public static final eg5 h;
    public static final og5 a = new og5("cause", Throwable.class, false, false);
    public static final og5 b = new og5("ratelimit_count", Integer.class, false, false);
    public static final og5 c = new og5("sampling_count", Integer.class, false, false);
    public static final og5 d = new og5("ratelimit_period", zf5.class, false, false);
    public static final og5 e = new og5("skipped", Integer.class, false, false);
    public static final og5 g = new og5("forced", Boolean.class, false, false);
    public static final og5 i = new og5("stack_size", vg5.class, false, false);

    static {
        boolean z = true;
        f = new eg5("group_by", Object.class, z, z, 0);
        h = new eg5("tags", zl4.class, false, z, 1);
    }
}

package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class pq {
    public static final mq c = new mq(-1, false, false);
    public final boolean a;
    public final boolean b;

    static {
        new pq(-1, true, false);
        new pq(76, false, true);
        new pq(64, false, true);
    }

    public pq(int i, boolean z, boolean z2) {
        this.a = z;
        this.b = z2;
        if (z && z2) {
            k21.f("Failed requirement.");
            throw null;
        }
    }
}

package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class mi0 extends h0 {
    public static final qv3 p = new qv3(23);
    public final String o;

    public mi0() {
        super(p);
        this.o = "Room Invalidation Tracker Refresh";
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof mi0) && nt1.g(this.o, ((mi0) obj).o);
    }

    public final int hashCode() {
        return this.o.hashCode();
    }

    public final String toString() {
        return "CoroutineName(" + this.o + ')';
    }
}

package defpackage;

import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class zl4 {
    public static final lh0 b = new lh0(20);
    public static final zl4 c;
    public final yl4 a;

    static {
        List list = Collections.EMPTY_LIST;
        c = new zl4(new yl4());
    }

    public zl4(yl4 yl4Var) {
        this.a = yl4Var;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zl4) && ((zl4) obj).a.equals(this.a);
    }

    public final int hashCode() {
        return ~this.a.hashCode();
    }

    public final String toString() {
        return this.a.toString();
    }
}

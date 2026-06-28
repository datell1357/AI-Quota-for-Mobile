package defpackage;

import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v04 {
    public static final gp a;

    static {
        List list = Collections.EMPTY_LIST;
        if (list.size() <= 32) {
            a = new gp(Collections.unmodifiableList(list));
        } else {
            k21.n("Invalid size");
        }
    }

    public v04(gp gpVar) {
        se0.g(gpVar, "parent");
    }
}

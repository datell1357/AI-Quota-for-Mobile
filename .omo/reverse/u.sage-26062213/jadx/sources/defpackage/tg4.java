package defpackage;

import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tg4 {
    public final ga3 a;
    public final is0 b = new is0(5);

    public tg4(ga3 ga3Var) {
        this.a = ga3Var;
    }

    public final void a(String str, Set set) {
        str.getClass();
        set.getClass();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            gg4.N(this.a, false, true, new q14(9, this, new sg4((String) it.next(), str)));
        }
    }
}

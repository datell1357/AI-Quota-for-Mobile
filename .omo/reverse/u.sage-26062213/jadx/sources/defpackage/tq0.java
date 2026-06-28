package defpackage;

import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class tq0 {
    public final String a;
    public final dh1 b;

    public tq0(Set set, dh1 dh1Var) {
        this.a = a(set);
        this.b = dh1Var;
    }

    public static String a(Set set) {
        StringBuilder sb = new StringBuilder();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            mo moVar = (mo) it.next();
            sb.append(moVar.a);
            sb.append('/');
            sb.append(moVar.b);
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }
}

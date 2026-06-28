package defpackage;

import java.io.Serializable;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ij1 implements Cloneable, Serializable {
    public static final gj1[] o = new gj1[0];
    public final ArrayList n = new ArrayList(16);

    public final void a(gj1 gj1Var) {
        if (gj1Var == null) {
            return;
        }
        int i = 0;
        while (true) {
            ArrayList arrayList = this.n;
            if (i >= arrayList.size()) {
                arrayList.add(gj1Var);
                return;
            } else {
                if (((gj1) arrayList.get(i)).getName().equalsIgnoreCase(gj1Var.getName())) {
                    arrayList.set(i, gj1Var);
                    return;
                }
                i++;
            }
        }
    }

    public final Object clone() {
        return super.clone();
    }

    public final String toString() {
        return this.n.toString();
    }
}

package defpackage;

import android.util.SparseArray;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class sy2 {
    public static final SparseArray a = new SparseArray();
    public static final HashMap b;

    static {
        HashMap map = new HashMap();
        b = map;
        map.put(ry2.n, 0);
        map.put(ry2.o, 1);
        map.put(ry2.p, 2);
        for (ry2 ry2Var : map.keySet()) {
            a.append(((Integer) b.get(ry2Var)).intValue(), ry2Var);
        }
    }

    public static int a(ry2 ry2Var) {
        Integer num = (Integer) b.get(ry2Var);
        if (num != null) {
            return num.intValue();
        }
        q73.k(ry2Var, "PriorityMapping is missing known Priority value ");
        return 0;
    }

    public static ry2 b(int i) {
        ry2 ry2Var = (ry2) a.get(i);
        if (ry2Var != null) {
            return ry2Var;
        }
        k21.f(di0.q(i, "Unknown Priority for value "));
        return null;
    }
}

package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k50 {
    public final HashMap a = new HashMap();
    public final HashMap b;

    public k50(HashMap map) {
        this.b = map;
        for (Map.Entry entry : map.entrySet()) {
            f22 f22Var = (f22) entry.getValue();
            List arrayList = (List) this.a.get(f22Var);
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.a.put(f22Var, arrayList);
            }
            arrayList.add((l50) entry.getKey());
        }
    }

    public static void a(List list, p22 p22Var, f22 f22Var, Object obj) {
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                l50 l50Var = (l50) list.get(size);
                Method method = l50Var.b;
                try {
                    int i = l50Var.a;
                    if (i == 0) {
                        method.invoke(obj, null);
                    } else if (i == 1) {
                        method.invoke(obj, p22Var);
                    } else if (i == 2) {
                        method.invoke(obj, p22Var, f22Var);
                    }
                } catch (IllegalAccessException e) {
                    throw new RuntimeException(e);
                } catch (InvocationTargetException e2) {
                    k21.i("Failed to call observer method", e2.getCause());
                    return;
                }
            }
        }
    }
}

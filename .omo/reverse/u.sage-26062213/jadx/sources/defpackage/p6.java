package defpackage;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class p6 {
    public final LinkedHashMap a = new LinkedHashMap();
    public final LinkedHashMap b = new LinkedHashMap();
    public final LinkedHashMap c = new LinkedHashMap();
    public final ArrayList d = new ArrayList();
    public final transient LinkedHashMap e = new LinkedHashMap();
    public final LinkedHashMap f = new LinkedHashMap();
    public final Bundle g = new Bundle();

    public final boolean a(int i, int i2, Intent intent) {
        String str = (String) this.a.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        m6 m6Var = (m6) this.e.get(str);
        if ((m6Var != null ? m6Var.a : null) != null) {
            ArrayList arrayList = this.d;
            if (arrayList.contains(str)) {
                m6Var.a.f(m6Var.b.c(intent, i2));
                arrayList.remove(str);
                return true;
            }
        }
        this.f.remove(str);
        this.g.putParcelable(str, new e6(intent, i2));
        return true;
    }

    public abstract void b(int i, g6 g6Var, Object obj);

    public final o6 c(String str, g6 g6Var, f6 f6Var) {
        str.getClass();
        e(str);
        this.e.put(str, new m6(g6Var, f6Var));
        LinkedHashMap linkedHashMap = this.f;
        if (linkedHashMap.containsKey(str)) {
            Object obj = linkedHashMap.get(str);
            linkedHashMap.remove(str);
            f6Var.f(obj);
        }
        Bundle bundle = this.g;
        e6 e6Var = (e6) se0.s(str, bundle);
        if (e6Var != null) {
            bundle.remove(str);
            f6Var.f(g6Var.c(e6Var.o, e6Var.n));
        }
        return new o6(this, str, g6Var, 1);
    }

    public final o6 d(final String str, p22 p22Var, final g6 g6Var, final f6 f6Var) {
        str.getClass();
        g6Var.getClass();
        f6Var.getClass();
        h22 lifecycle = p22Var.getLifecycle();
        if (((r22) lifecycle).d.compareTo(g22.q) >= 0) {
            StringBuilder sb = new StringBuilder("LifecycleOwner ");
            sb.append(p22Var);
            g22 g22Var = ((r22) lifecycle).d;
            sb.append(" is attempting to register while current state is ");
            sb.append(g22Var);
            sb.append(". LifecycleOwners must call register before they are STARTED.");
            throw new IllegalStateException(sb.toString().toString());
        }
        e(str);
        LinkedHashMap linkedHashMap = this.c;
        n6 n6Var = (n6) linkedHashMap.get(str);
        if (n6Var == null) {
            n6Var = new n6(lifecycle);
        }
        n22 n22Var = new n22() { // from class: k6
            @Override // defpackage.n22
            public final void B(p22 p22Var2, f22 f22Var) {
                p6 p6Var = this.n;
                LinkedHashMap linkedHashMap2 = p6Var.e;
                f22 f22Var2 = f22.ON_START;
                String str2 = str;
                if (f22Var2 != f22Var) {
                    if (f22.ON_STOP == f22Var) {
                        linkedHashMap2.remove(str2);
                        return;
                    } else {
                        if (f22.ON_DESTROY == f22Var) {
                            p6Var.f(str2);
                            return;
                        }
                        return;
                    }
                }
                Bundle bundle = p6Var.g;
                LinkedHashMap linkedHashMap3 = p6Var.f;
                g6 g6Var2 = g6Var;
                f6 f6Var2 = f6Var;
                linkedHashMap2.put(str2, new m6(g6Var2, f6Var2));
                if (linkedHashMap3.containsKey(str2)) {
                    Object obj = linkedHashMap3.get(str2);
                    linkedHashMap3.remove(str2);
                    f6Var2.f(obj);
                }
                e6 e6Var = (e6) se0.s(str2, bundle);
                if (e6Var != null) {
                    bundle.remove(str2);
                    f6Var2.f(g6Var2.c(e6Var.o, e6Var.n));
                }
            }
        };
        n6Var.a.a(n22Var);
        n6Var.b.add(n22Var);
        linkedHashMap.put(str, n6Var);
        return new o6(this, str, g6Var, 0);
    }

    public final void e(String str) {
        LinkedHashMap linkedHashMap = this.b;
        if (((Integer) linkedHashMap.get(str)) != null) {
            return;
        }
        int i = 0;
        l6 l6Var = new l6(i);
        for (Number number : new af0(new yr0(l6Var, new di3(i, l6Var), 2))) {
            Integer numValueOf = Integer.valueOf(number.intValue());
            LinkedHashMap linkedHashMap2 = this.a;
            if (!linkedHashMap2.containsKey(numValueOf)) {
                int iIntValue = number.intValue();
                linkedHashMap2.put(Integer.valueOf(iIntValue), str);
                linkedHashMap.put(str, Integer.valueOf(iIntValue));
                return;
            }
        }
        q73.l("Sequence contains no element matching the predicate.");
    }

    public final void f(String str) {
        Integer num;
        str.getClass();
        if (!this.d.contains(str) && (num = (Integer) this.b.remove(str)) != null) {
            this.a.remove(num);
        }
        this.e.remove(str);
        LinkedHashMap linkedHashMap = this.f;
        if (linkedHashMap.containsKey(str)) {
            StringBuilder sbA = di0.A("Dropping pending result for request ", str, ": ");
            sbA.append(linkedHashMap.get(str));
            Log.w("ActivityResultRegistry", sbA.toString());
            linkedHashMap.remove(str);
        }
        Bundle bundle = this.g;
        if (bundle.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + ((e6) se0.s(str, bundle)));
            bundle.remove(str);
        }
        LinkedHashMap linkedHashMap2 = this.c;
        n6 n6Var = (n6) linkedHashMap2.get(str);
        if (n6Var != null) {
            ArrayList arrayList = n6Var.b;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                n6Var.a.b((n22) obj);
            }
            arrayList.clear();
            linkedHashMap2.remove(str);
        }
    }
}

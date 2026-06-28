package defpackage;

import android.os.Bundle;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class uc3 {
    public final xc3 a;
    public j33 b;

    public uc3(xc3 xc3Var) {
        this.a = xc3Var;
    }

    public final Bundle a(String str) {
        Bundle bundle;
        xc3 xc3Var = this.a;
        if (!xc3Var.g) {
            k21.n("You can 'consumeRestoredStateForKey' only after the corresponding component has moved to the 'CREATED' state");
            return null;
        }
        Bundle bundle2 = xc3Var.f;
        if (bundle2 == null) {
            return null;
        }
        if (bundle2.containsKey(str)) {
            bundle = bundle2.getBundle(str);
            if (bundle == null) {
                nt1.I(str);
                throw null;
            }
        } else {
            bundle = null;
        }
        bundle2.remove(str);
        if (bundle2.isEmpty()) {
            xc3Var.f = null;
        }
        return bundle;
    }

    public final tc3 b(String str) {
        tc3 tc3Var;
        xc3 xc3Var = this.a;
        synchronized (xc3Var.c) {
            Iterator it = xc3Var.d.entrySet().iterator();
            do {
                tc3Var = null;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                String str2 = (String) entry.getKey();
                tc3 tc3Var2 = (tc3) entry.getValue();
                if (nt1.g(str2, str)) {
                    tc3Var = tc3Var2;
                }
            } while (tc3Var == null);
        }
        return tc3Var;
    }

    public final void c(String str, tc3 tc3Var) {
        tc3Var.getClass();
        xc3 xc3Var = this.a;
        synchronized (xc3Var.c) {
            if (xc3Var.d.containsKey(str)) {
                throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
            }
            xc3Var.d.put(str, tc3Var);
        }
    }

    public final void d() {
        if (!this.a.h) {
            k21.n("Can not perform this action after onSaveInstanceState");
            return;
        }
        j33 j33Var = this.b;
        if (j33Var == null) {
            j33Var = new j33(this);
        }
        this.b = j33Var;
        try {
            y12.class.getDeclaredConstructor(null);
            j33 j33Var2 = this.b;
            if (j33Var2 != null) {
                j33Var2.a.add(y12.class.getName());
            }
        } catch (NoSuchMethodException e) {
            throw new IllegalArgumentException("Class " + y12.class.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
        }
    }
}

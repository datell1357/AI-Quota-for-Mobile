package defpackage;

import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ld1 extends vb4 {
    public static final kd1 h = new kd1(0);
    public final boolean e;
    public final HashMap b = new HashMap();
    public final HashMap c = new HashMap();
    public final HashMap d = new HashMap();
    public boolean f = false;
    public boolean g = false;

    public ld1(boolean z) {
        this.e = z;
    }

    @Override // defpackage.vb4
    public final void b() {
        if (hd1.G(3)) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f = true;
    }

    public final void c(lc1 lc1Var) {
        if (this.g) {
            if (hd1.G(2)) {
                Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
                return;
            }
            return;
        }
        String str = lc1Var.mWho;
        HashMap map = this.b;
        if (map.containsKey(str)) {
            return;
        }
        map.put(lc1Var.mWho, lc1Var);
        if (hd1.G(2)) {
            Log.v("FragmentManager", "Updating retained Fragments: Added " + lc1Var);
        }
    }

    public final void d(lc1 lc1Var) {
        if (hd1.G(3)) {
            Log.d("FragmentManager", "Clearing non-config state for " + lc1Var);
        }
        e(lc1Var.mWho);
    }

    public final void e(String str) {
        HashMap map = this.c;
        ld1 ld1Var = (ld1) map.get(str);
        if (ld1Var != null) {
            ld1Var.b();
            map.remove(str);
        }
        HashMap map2 = this.d;
        bc4 bc4Var = (bc4) map2.get(str);
        if (bc4Var != null) {
            bc4Var.a();
            map2.remove(str);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ld1.class == obj.getClass()) {
            ld1 ld1Var = (ld1) obj;
            if (this.b.equals(ld1Var.b) && this.c.equals(ld1Var.c) && this.d.equals(ld1Var.d)) {
                return true;
            }
        }
        return false;
    }

    public final void f(lc1 lc1Var) {
        if (this.g) {
            if (hd1.G(2)) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
            }
        } else {
            if (this.b.remove(lc1Var.mWho) == null || !hd1.G(2)) {
                return;
            }
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + lc1Var);
        }
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + (this.b.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator it = this.b.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator it2 = this.c.keySet().iterator();
        while (it2.hasNext()) {
            sb.append((String) it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator it3 = this.d.keySet().iterator();
        while (it3.hasNext()) {
            sb.append((String) it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}

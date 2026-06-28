package defpackage;

import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.Future;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b0 {
    public final Object a;
    public final HashSet b = new HashSet();
    public final LinkedList c = new LinkedList();
    public final LinkedList d = new LinkedList();
    public final /* synthetic */ Object e;
    public final /* synthetic */ d0 f;

    public b0(d0 d0Var, Object obj, Object obj2) {
        this.f = d0Var;
        this.e = obj2;
        this.a = obj;
    }

    public final void a(mw2 mw2Var, boolean z) {
        w80.L(mw2Var, "Pool entry");
        if (!this.b.remove(mw2Var)) {
            throw new IllegalStateException(String.format("Entry %s has not been leased from this pool", mw2Var));
        }
        if (z) {
            this.c.addFirst(mw2Var);
        }
    }

    public final mw2 b(Object obj) {
        if (this.c.isEmpty()) {
            return null;
        }
        if (obj != null) {
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                mw2 mw2Var = (mw2) it.next();
                if (obj.equals(mw2Var.g)) {
                    it.remove();
                    this.b.add(mw2Var);
                    return mw2Var;
                }
            }
        }
        Iterator it2 = this.c.iterator();
        while (it2.hasNext()) {
            mw2 mw2Var2 = (mw2) it2.next();
            if (mw2Var2.g == null) {
                it2.remove();
                this.b.add(mw2Var2);
                return mw2Var2;
            }
        }
        return null;
    }

    public final void c(mw2 mw2Var) {
        if (this.c.remove(mw2Var)) {
            return;
        }
        this.b.remove(mw2Var);
    }

    public final void d() {
        LinkedList linkedList = this.d;
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            ((Future) it.next()).cancel(true);
        }
        linkedList.clear();
        LinkedList linkedList2 = this.c;
        Iterator it2 = linkedList2.iterator();
        while (it2.hasNext()) {
            ((mw2) it2.next()).a();
        }
        linkedList2.clear();
        HashSet hashSet = this.b;
        Iterator it3 = hashSet.iterator();
        while (it3.hasNext()) {
            ((mw2) it3.next()).a();
        }
        hashSet.clear();
    }

    public final String toString() {
        return "[route: " + this.a + "][leased: " + this.b.size() + "][available: " + this.c.size() + "][pending: " + this.d.size() + "]";
    }
}

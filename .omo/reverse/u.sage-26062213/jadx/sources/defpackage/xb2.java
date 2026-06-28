package defpackage;

import android.view.MenuItem;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xb2 {
    public final Runnable a;
    public final CopyOnWriteArrayList b = new CopyOnWriteArrayList();
    public final HashMap c = new HashMap();

    public xb2(Runnable runnable) {
        this.a = runnable;
    }

    public final boolean a(MenuItem menuItem) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            if (((ad1) ((jc2) it.next())).a.o(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public final void b(jc2 jc2Var) {
        this.b.remove(jc2Var);
        wb2 wb2Var = (wb2) this.c.remove(jc2Var);
        if (wb2Var != null) {
            wb2Var.a.b(wb2Var.b);
            wb2Var.b = null;
        }
        this.a.run();
    }
}

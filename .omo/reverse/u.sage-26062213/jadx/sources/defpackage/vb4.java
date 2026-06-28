package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class vb4 {
    public final wb4 a = new wb4();

    public final void a() {
        wb4 wb4Var = this.a;
        if (wb4Var != null && !wb4Var.d) {
            wb4Var.d = true;
            synchronized (wb4Var.a) {
                try {
                    Iterator it = wb4Var.b.values().iterator();
                    while (it.hasNext()) {
                        wb4.a((AutoCloseable) it.next());
                    }
                    Iterator it2 = wb4Var.c.iterator();
                    while (it2.hasNext()) {
                        wb4.a((AutoCloseable) it2.next());
                    }
                    wb4Var.c.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        b();
    }

    public void b() {
    }
}

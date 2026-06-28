package defpackage;

import android.os.Looper;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class k83 {
    public final HashSet a = new HashSet();

    public final void a() {
        if (k30.z == null) {
            k30.z = Looper.getMainLooper().getThread();
        }
        if (Thread.currentThread() != k30.z) {
            k21.n("Must be called on the Main thread.");
            return;
        }
        Iterator it = this.a.iterator();
        if (it.hasNext()) {
            it.next().getClass();
            mk0.b();
        }
    }
}

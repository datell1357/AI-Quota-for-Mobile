package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fz0 implements Runnable {
    public final ArrayList n;
    public final int o;

    public fz0(List list, int i, Throwable th) {
        bi4.k(list, "initCallbacks cannot be null");
        this.n = new ArrayList(list);
        this.o = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = this.n;
        int size = arrayList.size();
        int i = 0;
        if (this.o != 1) {
            while (i < size) {
                ((ez0) arrayList.get(i)).a();
                i++;
            }
        } else {
            while (i < size) {
                ((ez0) arrayList.get(i)).b();
                i++;
            }
        }
    }
}

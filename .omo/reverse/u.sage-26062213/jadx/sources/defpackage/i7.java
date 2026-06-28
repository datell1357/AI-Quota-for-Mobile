package defpackage;

import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i7 extends zf5 {
    public static final AtomicReferenceFieldUpdater h = AtomicReferenceFieldUpdater.newUpdater(k7.class, Set.class, "u");
    public static final AtomicIntegerFieldUpdater i = AtomicIntegerFieldUpdater.newUpdater(k7.class, "v");

    @Override // defpackage.zf5
    public final void w(s80 s80Var, Set set) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = h;
            if (atomicReferenceFieldUpdater.compareAndSet(s80Var, null, set)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(s80Var) == null);
    }

    @Override // defpackage.zf5
    public final int z(s80 s80Var) {
        return i.decrementAndGet(s80Var);
    }
}

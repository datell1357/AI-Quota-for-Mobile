package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yr3 extends e2 {
    public final AtomicReference a = new AtomicReference(null);

    @Override // defpackage.e2
    public final boolean a(d2 d2Var) {
        AtomicReference atomicReference = this.a;
        if (atomicReference.get() != null) {
            return false;
        }
        atomicReference.set(xr3.a);
        return true;
    }

    @Override // defpackage.e2
    public final dh0[] b(d2 d2Var) {
        this.a.set(null);
        return ca.a;
    }
}

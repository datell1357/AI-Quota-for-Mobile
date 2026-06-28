package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class nk3 implements b81, mf1 {
    public final /* synthetic */ AtomicReference n;

    public nk3(AtomicReference atomicReference) {
        this.n = atomicReference;
    }

    @Override // defpackage.mf1
    public final ef1 a() {
        return new c7(2, 4, AtomicReference.class, this.n, "set", "set(Ljava/lang/Object;)V");
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof b81) && (obj instanceof mf1)) {
            return a().equals(((mf1) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return a().hashCode();
    }

    @Override // defpackage.b81
    public final Object m(Object obj, dh0 dh0Var) {
        this.n.set((dj3) obj);
        return t64.a;
    }
}

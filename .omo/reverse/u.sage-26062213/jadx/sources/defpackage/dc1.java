package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dc1 extends i6 {
    public final /* synthetic */ AtomicReference a;

    public dc1(AtomicReference atomicReference) {
        this.a = atomicReference;
    }

    @Override // defpackage.i6
    public final void a(Object obj) {
        i6 i6Var = (i6) this.a.get();
        if (i6Var != null) {
            i6Var.a(obj);
        } else {
            k21.n("Operation cannot be started before fragment is in created state");
        }
    }
}

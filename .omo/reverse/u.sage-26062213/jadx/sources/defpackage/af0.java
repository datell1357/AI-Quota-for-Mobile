package defpackage;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class af0 implements ai3 {
    public final AtomicReference a;

    public af0(ai3 ai3Var) {
        this.a = new AtomicReference(ai3Var);
    }

    @Override // defpackage.ai3
    public final Iterator iterator() {
        ai3 ai3Var = (ai3) this.a.getAndSet(null);
        if (ai3Var != null) {
            return ai3Var.iterator();
        }
        k21.n("This sequence can be consumed only once.");
        return null;
    }
}

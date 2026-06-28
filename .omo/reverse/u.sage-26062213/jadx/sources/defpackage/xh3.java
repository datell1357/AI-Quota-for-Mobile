package defpackage;

import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xh3 extends rg3 {
    public final /* synthetic */ AtomicReferenceArray g;

    public xh3(long j, xh3 xh3Var, int i) {
        super(j, xh3Var, i);
        this.g = new AtomicReferenceArray(wh3.f);
    }

    @Override // defpackage.rg3
    public final int k() {
        return wh3.f;
    }

    @Override // defpackage.rg3
    public final void l(int i, hi0 hi0Var) {
        this.g.set(i, wh3.e);
        m();
    }

    public final String toString() {
        return "SemaphoreSegment[id=" + this.e + ", hashCode=" + hashCode() + ']';
    }
}

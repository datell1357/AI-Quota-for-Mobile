package defpackage;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class sm2 extends h0 implements tu1 {
    public static final sm2 o = new sm2(mj1.W);

    @Override // defpackage.tu1
    public final n40 B(bv1 bv1Var) {
        return tm2.n;
    }

    @Override // defpackage.tu1
    public final CancellationException N() {
        throw new IllegalStateException("This job is always active");
    }

    @Override // defpackage.tu1
    public final jv0 V(pe1 pe1Var) {
        return tm2.n;
    }

    @Override // defpackage.tu1
    public final boolean b() {
        return true;
    }

    @Override // defpackage.tu1
    public final Object i0(fh0 fh0Var) {
        throw new UnsupportedOperationException("This job is always active");
    }

    @Override // defpackage.tu1
    public final boolean isCancelled() {
        return false;
    }

    @Override // defpackage.tu1
    public final jv0 j0(boolean z, boolean z2, o oVar) {
        return tm2.n;
    }

    @Override // defpackage.tu1
    public final boolean start() {
        return false;
    }

    public final String toString() {
        return "NonCancellable";
    }

    @Override // defpackage.tu1
    public final void j(CancellationException cancellationException) {
    }
}

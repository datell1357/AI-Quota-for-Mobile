package defpackage;

import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class if5 extends we5 implements ve5 {
    public final Exception t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final boolean f138u;

    /* JADX WARN: Multi-variable type inference failed */
    public if5(String str, ve5 ve5Var, nf5 nf5Var, boolean z, qf5 qf5Var) {
        super("<missing root>:".concat(str), (te5) ve5Var, nf5.a(nf5Var, mf5.f), qf5Var);
        this.t = ve5Var.a();
        this.f138u = z;
    }

    @Override // defpackage.ve5
    public final Exception a() {
        return this.t;
    }

    @Override // defpackage.rf5
    public final nf5 c() {
        return mf5.e;
    }

    @Override // defpackage.rf5
    public final rf5 q(String str, nf5 nf5Var, qf5 qf5Var) {
        AtomicReference atomicReference = ye5.a;
        return t(str, nf5Var, true, qf5Var);
    }

    @Override // defpackage.ve5
    public final if5 t(String str, nf5 nf5Var, boolean z, qf5 qf5Var) {
        boolean z2 = this.f138u;
        if (z && !z2) {
            AtomicReference atomicReference = ye5.a;
        }
        boolean z3 = true;
        if ((!z || z2) && !z2) {
            z3 = false;
        }
        return new if5(str, this, nf5Var, z3, qf5Var);
    }

    public if5(UUID uuid, String str, String str2, nf5 nf5Var, Exception exc, qf5 qf5Var) {
        super("<missing root>:".concat(str2), uuid, str, nf5.a(nf5Var, mf5.f), qf5Var);
        this.t = exc;
        this.f138u = false;
    }
}

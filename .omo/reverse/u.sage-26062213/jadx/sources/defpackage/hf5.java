package defpackage;

import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class hf5 extends te5 implements ve5 {
    public static final qo3 t = new qo3(3);
    public final Exception s;

    public hf5(UUID uuid, String str, Exception exc, qf5 qf5Var) {
        super("<missing root>", uuid, str, qf5Var);
        this.s = exc;
    }

    @Override // defpackage.ve5
    public final Exception a() {
        return this.s;
    }

    @Override // defpackage.rf5
    public final nf5 d() {
        return mf5.e;
    }

    @Override // defpackage.rf5
    public final rf5 q(String str, nf5 nf5Var, qf5 qf5Var) {
        AtomicReference atomicReference = ye5.a;
        return t(str, nf5Var, true, qf5Var);
    }

    @Override // defpackage.ve5
    public final if5 t(String str, nf5 nf5Var, boolean z, qf5 qf5Var) {
        if (z) {
            AtomicReference atomicReference = ye5.a;
        }
        return new if5(str, this, nf5Var, z, qf5Var);
    }
}

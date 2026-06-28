package defpackage;

import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class jf5 extends we5 {
    public static final jf5 t;

    static {
        UUID uuidRandomUUID = UUID.randomUUID();
        t = new jf5("<skip trace>", uuidRandomUUID, te5.b(uuidRandomUUID), mf5.e, ye5.c());
    }

    @Override // defpackage.rf5
    public final nf5 c() {
        return mf5.e;
    }

    @Override // defpackage.rf5
    public final rf5 q(String str, nf5 nf5Var, qf5 qf5Var) {
        throw new IllegalStateException("Can't create child trace for no trace!");
    }
}

package defpackage;

import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class we5 extends te5 {
    public final nf5 s;

    public we5(String str, te5 te5Var, nf5 nf5Var, qf5 qf5Var) {
        super(str, te5Var, qf5Var);
        n44.U(nf5Var.c);
        this.s = nf5Var;
    }

    @Override // defpackage.rf5
    public final nf5 d() {
        return nf5.a(this.s, c());
    }

    public we5(String str, UUID uuid, String str2, nf5 nf5Var, qf5 qf5Var) {
        super(str, uuid, str2, qf5Var);
        n44.U(nf5Var.c);
        this.s = nf5Var;
    }
}

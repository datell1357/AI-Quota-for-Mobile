package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class y92 implements pc2 {
    public pc2[] a;

    @Override // defpackage.pc2
    public final v13 a(Class cls) {
        for (pc2 pc2Var : this.a) {
            if (pc2Var.b(cls)) {
                return pc2Var.a(cls);
            }
        }
        p61.s("No factory is available for message type: ".concat(cls.getName()));
        return null;
    }

    @Override // defpackage.pc2
    public final boolean b(Class cls) {
        for (pc2 pc2Var : this.a) {
            if (pc2Var.b(cls)) {
                return true;
            }
        }
        return false;
    }
}

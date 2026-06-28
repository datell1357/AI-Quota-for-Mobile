package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class vz4 implements b05 {
    public final b05[] a;

    public vz4(b05... b05VarArr) {
        this.a = b05VarArr;
    }

    @Override // defpackage.b05
    public final e15 b(Class cls) {
        for (int i = 0; i < 2; i++) {
            b05 b05Var = this.a[i];
            if (b05Var.d(cls)) {
                return b05Var.b(cls);
            }
        }
        p61.s("No factory is available for message type: ".concat(cls.getName()));
        return null;
    }

    @Override // defpackage.b05
    public final boolean d(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (this.a[i].d(cls)) {
                return true;
            }
        }
        return false;
    }
}

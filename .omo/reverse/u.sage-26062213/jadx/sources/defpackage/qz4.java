package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qz4 extends sz4 {
    @Override // defpackage.sz4
    public final void a(long j, Object obj) {
        yx4 yx4Var = (yx4) ((vy4) i35.d(j, obj));
        if (yx4Var.n) {
            yx4Var.n = false;
        }
    }

    @Override // defpackage.sz4
    public final void b(Object obj, long j, Object obj2) {
        vy4 vy4VarB = (vy4) i35.d(j, obj);
        vy4 vy4Var = (vy4) i35.d(j, obj2);
        int size = vy4VarB.size();
        int size2 = vy4Var.size();
        if (size > 0 && size2 > 0) {
            if (!((yx4) vy4VarB).n) {
                vy4VarB = vy4VarB.b(size2 + size);
            }
            vy4VarB.addAll(vy4Var);
        }
        if (size > 0) {
            vy4Var = vy4VarB;
        }
        i35.j(obj, j, vy4Var);
    }
}

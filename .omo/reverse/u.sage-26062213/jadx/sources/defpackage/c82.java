package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c82 implements lx1 {
    public static final c82 a = new c82();
    public static final py2 b = new py2("kotlin.Long", ny2.V);

    @Override // defpackage.lx1
    public final Object b(vn0 vn0Var) {
        return Long.valueOf(vn0Var.b());
    }

    @Override // defpackage.lx1
    public final void c(b bVar, Object obj) {
        bVar.k(((Number) obj).longValue());
    }

    @Override // defpackage.lx1
    public final gi3 d() {
        return b;
    }
}

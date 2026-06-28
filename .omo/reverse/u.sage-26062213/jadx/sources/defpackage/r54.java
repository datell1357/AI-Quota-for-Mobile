package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r54 implements lx1 {
    public static final r54 a = new r54();
    public static final wq1 b = k75.c(ps1.a, "kotlin.UInt");

    @Override // defpackage.lx1
    public final Object b(vn0 vn0Var) {
        return new n54(vn0Var.t(b).n());
    }

    @Override // defpackage.lx1
    public final void c(b bVar, Object obj) {
        bVar.h(b).j(((n54) obj).n);
    }

    @Override // defpackage.lx1
    public final gi3 d() {
        return b;
    }
}

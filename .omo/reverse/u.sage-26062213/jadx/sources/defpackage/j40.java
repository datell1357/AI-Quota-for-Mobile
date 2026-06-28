package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class j40 implements lx1 {
    public static final j40 a = new j40();
    public static final py2 b = new py2("kotlin.Char", ny2.R);

    @Override // defpackage.lx1
    public final Object b(vn0 vn0Var) {
        return Character.valueOf(vn0Var.f());
    }

    @Override // defpackage.lx1
    public final void c(b bVar, Object obj) {
        bVar.d(((Character) obj).charValue());
    }

    @Override // defpackage.lx1
    public final gi3 d() {
        return b;
    }
}

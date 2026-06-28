package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cn2 implements lx1 {
    public static final cn2 a = new cn2();
    public static final bn2 b = bn2.a;

    @Override // defpackage.lx1
    public final Object b(vn0 vn0Var) {
        throw new mi3("'kotlin.Nothing' does not have instances");
    }

    @Override // defpackage.lx1
    public final void c(b bVar, Object obj) {
        ((Void) obj).getClass();
        throw new mi3("'kotlin.Nothing' cannot be serialized");
    }

    @Override // defpackage.lx1
    public final gi3 d() {
        return b;
    }
}

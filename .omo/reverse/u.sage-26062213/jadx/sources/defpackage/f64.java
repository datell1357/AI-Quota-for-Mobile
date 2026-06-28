package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f64 implements lx1 {
    public static final f64 a = new f64();
    public static final wq1 b = k75.c(rm3.a, "kotlin.UShort");

    @Override // defpackage.lx1
    public final Object b(vn0 vn0Var) {
        return new b64(vn0Var.t(b).w());
    }

    @Override // defpackage.lx1
    public final void c(b bVar, Object obj) {
        bVar.h(b).q(((b64) obj).n);
    }

    @Override // defpackage.lx1
    public final gi3 d() {
        return b;
    }
}

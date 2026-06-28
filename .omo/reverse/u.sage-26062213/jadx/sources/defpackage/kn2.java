package defpackage;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class kn2 implements lx1 {
    public final lx1 a;
    public final hi3 b;

    public kn2(lx1 lx1Var) {
        lx1Var.getClass();
        this.a = lx1Var;
        this.b = new hi3(lx1Var.d());
    }

    @Override // defpackage.lx1
    public final Object b(vn0 vn0Var) {
        if (vn0Var.e()) {
            return vn0Var.a(this.a);
        }
        return null;
    }

    @Override // defpackage.lx1
    public final void c(b bVar, Object obj) {
        if (obj != null) {
            bVar.p(this.a, obj);
        } else {
            bVar.m();
        }
    }

    @Override // defpackage.lx1
    public final gi3 d() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && kn2.class == obj.getClass() && nt1.g(this.a, ((kn2) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }
}

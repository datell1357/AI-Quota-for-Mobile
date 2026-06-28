package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ev0 extends md2 implements jx0 {
    public dh B;

    @Override // defpackage.jx0
    public final void K(zy1 zy1Var) {
        ArrayList arrayList = (ArrayList) this.B.h;
        if (arrayList.size() <= 0) {
            zy1Var.a();
        } else {
            di0.D(arrayList.get(0));
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ev0) && nt1.g(this.B, ((ev0) obj).B);
    }

    public final int hashCode() {
        return this.B.hashCode();
    }

    public final String toString() {
        return "DisplayingDisappearingItemsNode(animator=" + this.B + ")";
    }

    @Override // defpackage.md2
    public final void y0() {
        this.B.getClass();
    }

    @Override // defpackage.md2
    public final void z0() {
        dh dhVar = this.B;
        dhVar.i();
        dhVar.b = null;
    }
}

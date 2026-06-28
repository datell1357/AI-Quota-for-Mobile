package defpackage;

import androidx.compose.ui.input.pointer.PointerInputEventHandler;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cv3 extends rd2 {
    public final Object b;
    public final Object c;
    public final PointerInputEventHandler d;

    public cv3(Object obj, k75 k75Var, PointerInputEventHandler pointerInputEventHandler, int i) {
        k75Var = (i & 2) != 0 ? null : k75Var;
        this.b = obj;
        this.c = k75Var;
        this.d = pointerInputEventHandler;
    }

    @Override // defpackage.rd2
    public final md2 e() {
        return new fv3(this.b, this.c, this.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cv3)) {
            return false;
        }
        cv3 cv3Var = (cv3) obj;
        return nt1.g(this.b, cv3Var.b) && nt1.g(this.c, cv3Var.c) && this.d == cv3Var.d;
    }

    @Override // defpackage.rd2
    public final void f(md2 md2Var) {
        fv3 fv3Var = (fv3) md2Var;
        Object obj = fv3Var.B;
        Object obj2 = this.b;
        boolean z = !nt1.g(obj, obj2);
        fv3Var.B = obj2;
        Object obj3 = fv3Var.C;
        Object obj4 = this.c;
        if (!nt1.g(obj3, obj4)) {
            z = true;
        }
        fv3Var.C = obj4;
        Class<?> cls = fv3Var.D.getClass();
        PointerInputEventHandler pointerInputEventHandler = this.d;
        if (cls == pointerInputEventHandler.getClass() ? z : true) {
            fv3Var.H0();
        }
        fv3Var.D = pointerInputEventHandler;
    }

    public final int hashCode() {
        Object obj = this.b;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * 31;
        Object obj2 = this.c;
        return this.d.hashCode() + ((iHashCode + (obj2 != null ? obj2.hashCode() : 0)) * 961);
    }
}

package defpackage;

import java.util.Iterator;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class my2 extends l70 {
    public final ly2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public my2(lx1 lx1Var) {
        super(lx1Var);
        lx1Var.getClass();
        this.b = new ly2(lx1Var.d());
    }

    @Override // defpackage.x, defpackage.lx1
    public final Object b(vn0 vn0Var) {
        return i(vn0Var);
    }

    @Override // defpackage.l70, defpackage.lx1
    public final void c(b bVar, Object obj) {
        int iH = h(obj);
        ly2 ly2Var = this.b;
        ly2Var.getClass();
        b bVarA = bVar.a(ly2Var);
        o(bVarA, obj, iH);
        bVarA.s(ly2Var);
    }

    @Override // defpackage.lx1
    public final gi3 d() {
        return this.b;
    }

    @Override // defpackage.x
    public final Object e() {
        return (ky2) k(n());
    }

    @Override // defpackage.x
    public final int f(Object obj) {
        ky2 ky2Var = (ky2) obj;
        ky2Var.getClass();
        return ky2Var.d();
    }

    @Override // defpackage.x
    public final Iterator g(Object obj) {
        throw new IllegalStateException("This method lead to boxing and must not be used, use writeContents instead");
    }

    @Override // defpackage.x
    public final Object l(Object obj) {
        ky2 ky2Var = (ky2) obj;
        ky2Var.getClass();
        return ky2Var.a();
    }

    @Override // defpackage.l70
    public final void m(int i, Object obj, Object obj2) {
        ((ky2) obj).getClass();
        throw new IllegalStateException("This method lead to boxing and must not be used, use Builder.append instead");
    }

    public abstract Object n();

    public abstract void o(b bVar, Object obj, int i);
}

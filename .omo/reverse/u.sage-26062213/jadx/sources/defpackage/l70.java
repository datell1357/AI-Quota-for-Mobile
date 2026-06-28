package defpackage;

import java.util.Iterator;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class l70 extends x {
    public final lx1 a;

    public l70(lx1 lx1Var) {
        this.a = lx1Var;
    }

    @Override // defpackage.lx1
    public void c(b bVar, Object obj) {
        int iH = h(obj);
        gi3 gi3VarD = d();
        gi3VarD.getClass();
        b bVarA = bVar.a(gi3VarD);
        Iterator itG = g(obj);
        for (int i = 0; i < iH; i++) {
            bVarA.o(d(), i, this.a, itG.next());
        }
        bVarA.s(gi3VarD);
    }

    @Override // defpackage.x
    public void j(xb0 xb0Var, int i, Object obj) {
        m(i, obj, xb0Var.u(d(), i, this.a, null));
    }

    public abstract void m(int i, Object obj, Object obj2);
}

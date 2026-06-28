package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class x implements lx1 {
    @Override // defpackage.lx1
    public Object b(vn0 vn0Var) {
        return i(vn0Var);
    }

    public abstract Object e();

    public abstract int f(Object obj);

    public abstract Iterator g(Object obj);

    public abstract int h(Object obj);

    public final Object i(vn0 vn0Var) {
        Object objE = e();
        int iF = f(objE);
        xb0 xb0VarA = vn0Var.A(d());
        while (true) {
            int iH = xb0VarA.h(d());
            if (iH == -1) {
                xb0VarA.p(d());
                return l(objE);
            }
            j(xb0VarA, iH + iF, objE);
        }
    }

    public abstract void j(xb0 xb0Var, int i, Object obj);

    public abstract Object k(Object obj);

    public abstract Object l(Object obj);
}

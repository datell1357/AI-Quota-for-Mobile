package defpackage;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class f43 extends g34 {
    public final h43 a;

    public f43(h43 h43Var) {
        this.a = h43Var;
    }

    @Override // defpackage.g34
    public final Object b(ww1 ww1Var) throws IOException {
        if (ww1Var.s0() == 9) {
            ww1Var.o0();
            return null;
        }
        Object objD = d();
        Map map = this.a.a;
        try {
            ww1Var.j();
            while (ww1Var.L()) {
                e43 e43Var = (e43) map.get(ww1Var.j0());
                if (e43Var == null) {
                    ww1Var.y0();
                } else {
                    f(objD, ww1Var, e43Var);
                }
            }
            ww1Var.B();
            return e(objD);
        } catch (IllegalAccessException e) {
            nt1 nt1Var = c43.a;
            k21.i("Unexpected IllegalAccessException occurred (Gson 2.14.0). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e);
            return null;
        } catch (IllegalStateException e2) {
            throw new fw1(e2, 5);
        }
    }

    @Override // defpackage.g34
    public final void c(bx1 bx1Var, Object obj) throws IOException {
        if (obj == null) {
            bx1Var.L();
            return;
        }
        bx1Var.r();
        try {
            Iterator it = this.a.b.iterator();
            while (it.hasNext()) {
                ((e43) it.next()).a(bx1Var, obj);
            }
            bx1Var.B();
        } catch (IllegalAccessException e) {
            nt1 nt1Var = c43.a;
            k21.i("Unexpected IllegalAccessException occurred (Gson 2.14.0). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e);
        }
    }

    public abstract Object d();

    public abstract Object e(Object obj);

    public abstract void f(Object obj, ww1 ww1Var, e43 e43Var);
}

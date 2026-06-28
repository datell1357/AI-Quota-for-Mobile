package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
@kk2("composable")
public final class wa0 extends lk2 {
    public final ws2 c = ca.A(Boolean.FALSE);

    @Override // defpackage.lk2
    public final qi2 a() {
        return new va0(this, na0.a);
    }

    @Override // defpackage.lk2
    public final void d(List list, jj2 jj2Var) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            yh2 yh2Var = (yh2) it.next();
            ei2 ei2VarB = b();
            b23 b23Var = ei2VarB.e;
            yh2Var.getClass();
            wr3 wr3Var = ei2VarB.c;
            Iterable iterable = (Iterable) wr3Var.getValue();
            if (!(iterable instanceof Collection) || !((Collection) iterable).isEmpty()) {
                Iterator it2 = iterable.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    if (((yh2) it2.next()) == yh2Var) {
                        Iterable iterable2 = (Iterable) b23Var.n.getValue();
                        if (!(iterable2 instanceof Collection) || !((Collection) iterable2).isEmpty()) {
                            Iterator it3 = iterable2.iterator();
                            while (it3.hasNext()) {
                                if (((yh2) it3.next()) == yh2Var) {
                                    break;
                                }
                            }
                        }
                    }
                }
            }
            yh2 yh2Var2 = (yh2) o70.p0((List) b23Var.n.getValue());
            if (yh2Var2 != null) {
                wr3Var.i(null, is0.P((Set) wr3Var.getValue(), yh2Var2));
            }
            wr3Var.i(null, is0.P((Set) wr3Var.getValue(), yh2Var));
            ei2VarB.f(yh2Var);
        }
        this.c.setValue(Boolean.FALSE);
    }

    @Override // defpackage.lk2
    public final void e(yh2 yh2Var, boolean z) {
        b().e(yh2Var, z);
        this.c.setValue(Boolean.TRUE);
    }

    public final void g(yh2 yh2Var) {
        ei2 ei2VarB = b();
        yh2Var.getClass();
        wr3 wr3Var = ei2VarB.c;
        wr3Var.i(null, is0.P((Set) wr3Var.getValue(), yh2Var));
        ii2 ii2Var = ei2VarB.h.b;
        ii2Var.getClass();
        if (ii2Var.f.contains(yh2Var)) {
            yh2Var.a(g22.q);
        } else {
            k21.n("Cannot transition entry that is not in the back stack");
        }
    }
}

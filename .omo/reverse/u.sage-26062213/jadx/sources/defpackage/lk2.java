package defpackage;

import java.util.List;
import java.util.ListIterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class lk2 {
    public ei2 a;
    public boolean b;

    public abstract qi2 a();

    public final ei2 b() {
        ei2 ei2Var = this.a;
        if (ei2Var != null) {
            return ei2Var;
        }
        k21.n("You cannot access the Navigator's state until the Navigator is attached");
        return null;
    }

    public void d(List list, jj2 jj2Var) {
        x51 x51Var = new x51(new yr0(new hw3(new s70(0, list), new v(21, this, jj2Var), 1), new jd3(7), 1));
        while (x51Var.hasNext()) {
            b().f((yh2) x51Var.next());
        }
    }

    public void e(yh2 yh2Var, boolean z) {
        List list = (List) b().e.n.getValue();
        if (!list.contains(yh2Var)) {
            p61.m("popBackStack was called with ", yh2Var, " which does not exist in back stack ", list);
            return;
        }
        ListIterator listIterator = list.listIterator(list.size());
        yh2 yh2Var2 = null;
        while (f()) {
            yh2Var2 = (yh2) listIterator.previous();
            if (nt1.g(yh2Var2, yh2Var)) {
                break;
            }
        }
        if (yh2Var2 != null) {
            b().d(yh2Var2, z);
        }
    }

    public boolean f() {
        return true;
    }

    public qi2 c(qi2 qi2Var) {
        return qi2Var;
    }
}

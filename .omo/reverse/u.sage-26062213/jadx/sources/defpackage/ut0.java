package defpackage;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
@kk2("dialog")
public final class ut0 extends lk2 {
    @Override // defpackage.lk2
    public final qi2 a() {
        ka0 ka0Var = oa0.a;
        return new tt0(this);
    }

    @Override // defpackage.lk2
    public final void d(List list, jj2 jj2Var) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            b().f((yh2) it.next());
        }
    }

    @Override // defpackage.lk2
    public final void e(yh2 yh2Var, boolean z) {
        b().e(yh2Var, z);
        int iK0 = o70.k0((Iterable) b().f.n.getValue(), yh2Var);
        int i = 0;
        for (Object obj : (Iterable) b().f.n.getValue()) {
            int i2 = i + 1;
            if (i < 0) {
                tv4.S();
                throw null;
            }
            yh2 yh2Var2 = (yh2) obj;
            if (i > iK0) {
                b().c(yh2Var2);
            }
            i = i2;
        }
    }
}

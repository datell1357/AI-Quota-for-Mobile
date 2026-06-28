package defpackage;

import android.view.View;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class aq implements gv0 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ aq(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.gv0
    public final void a() throws Exception {
        int i = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                ((vp) obj2).b((ra0) obj);
                break;
            case 1:
                ((yh2) obj2).f421u.j.b((pt0) obj);
                break;
            case 2:
                ((rq1) obj2).a.k((pq1) obj);
                break;
            case 3:
                ((r12) obj2).p.k(obj);
                break;
            case 4:
                Iterator it = ((List) ((tr3) obj2).getValue()).iterator();
                while (it.hasNext()) {
                    ((wa0) obj).b().c((yh2) it.next());
                }
                break;
            case 5:
                ((vp) obj2).b((cb0) obj);
                break;
            case 6:
                ((n14) obj2).k.remove((n14) obj);
                break;
            case 7:
                n14 n14Var = (n14) obj2;
                n14Var.getClass();
                i14 i14Var = (i14) ((j14) obj).b.getValue();
                if (i14Var != null) {
                    n14Var.j.remove(i14Var.n);
                }
                break;
            default:
                qe4 qe4Var = (qe4) obj2;
                View view = (View) obj;
                int i2 = qe4Var.t - 1;
                qe4Var.t = i2;
                if (i2 == 0) {
                    Field field = lb4.a;
                    fb4.c(view, null);
                    lb4.g(view, null);
                    view.removeOnAttachStateChangeListener(qe4Var.f277u);
                }
                break;
        }
    }
}

package defpackage;

import android.net.Uri;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ic5 implements qi {
    public final /* synthetic */ int a;
    public final Object b;
    public final Object c;

    public /* synthetic */ ic5(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.qi
    public final ListenableFuture apply(Object obj) throws IOException {
        switch (this.a) {
            case 0:
                lc5 lc5Var = (lc5) this.b;
                return ((x85) lc5Var.d.get()).a(new kc5(lc5Var, (oc5) this.c));
            case 1:
                List list = (List) this.b;
                je5 je5Var = (je5) obj;
                int size = list.size();
                ArrayList arrayList = new ArrayList(size);
                Iterator it = list.iterator();
                if (it.hasNext()) {
                    it.next().getClass();
                    mk0.b();
                    return null;
                }
                be5 be5Var = new be5(this, arrayList, size);
                int i = vf5.a;
                int i2 = 4;
                ic5 ic5Var = new ic5(i2, ye5.a(), be5Var);
                fu0 fu0Var = fu0.n;
                return tf1.f(tf1.e(tf1.f(tf1.d(je5Var.a.e.u()), new ic5(i2, ye5.a(), new ic5(3, je5Var, ic5Var)), fu0Var), new pf1(), fu0Var), new ic5(i2, ye5.a(), new be5(this, size, arrayList)), fu0Var);
            case 2:
                bo boVar = (bo) this.b;
                h2 h2Var = (h2) this.c;
                boVar.m((Uri) tf1.b((ListenableFuture) boVar.c), obj);
                synchronized (boVar.i) {
                    boVar.k = h2Var;
                    break;
                }
                return tf1.c(obj);
            case 3:
                return ((je5) this.b).a.c.k((ic5) this.c, fu0.n);
            default:
                rf5 rf5Var = (rf5) this.b;
                qf5 qf5VarC = ye5.c();
                rf5 rf5VarB = ye5.b(qf5VarC, rf5Var);
                try {
                    ListenableFuture listenableFutureApply = ((qi) this.c).apply(obj);
                    if (listenableFutureApply != null) {
                        return listenableFutureApply;
                    }
                    throw new IllegalStateException("AsyncFunction should return a ListenableFuture instead of null.");
                } catch (Throwable th) {
                    try {
                        xe5.a(th);
                        throw th;
                    } finally {
                        ye5.b(qf5VarC, rf5VarB);
                    }
                }
        }
    }

    public String toString() {
        switch (this.a) {
            case 4:
                qi qiVar = (qi) this.c;
                StringBuilder sb = new StringBuilder(qiVar.toString().length() + 14);
                sb.append("propagating=[");
                sb.append(qiVar);
                sb.append("]");
                return sb.toString();
            default:
                return super.toString();
        }
    }
}

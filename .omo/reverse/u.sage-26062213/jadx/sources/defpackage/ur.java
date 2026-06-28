package defpackage;

import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ur {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ ur(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    public final void a(u61 u61Var) {
        switch (this.a) {
            case 0:
                ez3.a.getClass();
                ra3.n(new Object[0]);
                return;
            case 1:
                hd0 hd0Var = (hd0) this.b;
                synchronized (hd0Var) {
                    hd0Var.d = true;
                }
                ((hd0) this.b).g(u61Var);
                return;
            default:
                ez3.a.getClass();
                ra3.n(new Object[0]);
                return;
        }
    }

    public final void b(mm mmVar) {
        int i = this.a;
        int i2 = 1;
        Object obj = this.b;
        switch (i) {
            case 0:
                ra3 ra3Var = ez3.a;
                xr xrVar = (xr) obj;
                HashSet hashSet = mmVar.a;
                hashSet.toString();
                ra3Var.getClass();
                ra3.h(new Object[0]);
                if (!hashSet.contains(xrVar.c)) {
                    ra3.c(new Object[0]);
                } else {
                    ra3.h(new Object[0]);
                    xrVar.e.a().m(new r6(i2, xrVar));
                }
                break;
            case 1:
                break;
            default:
                ri3 ri3Var = (ri3) obj;
                ra3 ra3Var2 = ez3.a;
                HashSet hashSet2 = mmVar.a;
                hashSet2.toString();
                ra3Var2.getClass();
                ra3.h(new Object[0]);
                if (!hashSet2.isEmpty()) {
                    Iterator it = hashSet2.iterator();
                    while (it.hasNext()) {
                        if (ri3.e.contains((String) it.next())) {
                            ri3Var.a.a().m(new qi3(ri3Var, i2));
                            break;
                        }
                    }
                    break;
                }
                break;
        }
    }

    private final void c(mm mmVar) {
    }
}

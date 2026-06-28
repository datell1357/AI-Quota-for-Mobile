package defpackage;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ib0 implements s55 {
    public final Object a;

    public ib0(int i) {
        switch (i) {
            case 1:
                this.a = new Object();
                break;
            case 2:
                this.a = ca.A(Boolean.FALSE);
                break;
            case 3:
            default:
                this.a = new ArrayList();
                break;
            case 4:
                this.a = new ConcurrentHashMap();
                break;
        }
    }

    @Override // defpackage.s55
    public pr3 b() {
        throw null;
    }

    @Override // defpackage.s55
    public a25 c() {
        throw null;
    }

    @Override // defpackage.s55
    public j45 d() {
        throw null;
    }

    @Override // defpackage.s55
    public Context e() {
        throw null;
    }

    @Override // defpackage.s55
    public Clock f() {
        throw null;
    }

    public boolean g(int i, cg1 cg1Var, Object obj) {
        ArrayList arrayList = cg1Var.a;
        if (arrayList == null) {
            h(i, cg1Var, null);
            return true;
        }
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            Object obj2 = arrayList.get(i2);
            if (!(obj2 instanceof vf1)) {
                if (!(obj2 instanceof cg1)) {
                    mk0.k(obj2, "Unexpected child source info ");
                    break;
                }
                if (g(i, (cg1) obj2, obj)) {
                    h(0, cg1Var, obj2);
                    return true;
                }
            } else if (obj2 == obj) {
                h(0, cg1Var, obj2);
                return true;
            }
            i2++;
        }
        return false;
    }

    public void h(int i, cg1 cg1Var, Object obj) {
        ((ArrayList) this.a).add(new jb0(i, null, null));
    }

    public abstract void i(yh3 yh3Var);

    public abstract void j();

    public abstract void k();

    public abstract Object l();

    public abstract Object m();

    public void n(int i, Object obj, cg1 cg1Var, Object obj2) {
        if (nt1.g(obj, rb0.a)) {
            h(i, cg1Var, null);
        }
    }

    public abstract pe1 o(yh3 yh3Var);

    public abstract void p(n30 n30Var);

    public abstract void q(Object obj);

    public abstract void r(n14 n14Var);

    public abstract void s();

    public abstract Object t();

    public Object u(lg5 lg5Var, ye4 ye4Var) {
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.a;
        Object obj = concurrentHashMap.get(lg5Var);
        if (obj != null) {
            return obj;
        }
        Object objT = t();
        Object objPutIfAbsent = concurrentHashMap.putIfAbsent(lg5Var, objT);
        if (objPutIfAbsent != null) {
            return objPutIfAbsent;
        }
        int iB = ye4Var.b();
        for (int i = 0; i < iB; i++) {
            if (fg5.f.equals(ye4Var.c(i))) {
                ye4Var.d(i);
            }
        }
        return objT;
    }

    public void v() {
        j45 j45Var = ((r45) this.a).g;
        r45.l(j45Var);
        j45Var.v();
    }

    public ib0(r45 r45Var) {
        Preconditions.checkNotNull(r45Var);
        this.a = r45Var;
    }
}

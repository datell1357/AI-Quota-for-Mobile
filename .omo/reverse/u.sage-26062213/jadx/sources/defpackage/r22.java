package defpackage;

import android.os.Looper;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r22 extends h22 {
    public final boolean b;
    public s41 c;
    public g22 d;
    public final WeakReference e;
    public int f;
    public boolean g;
    public boolean h;
    public final ArrayList i;
    public final wr3 j;

    public r22(p22 p22Var, boolean z) {
        this.a = new wu4(10);
        this.b = z;
        this.c = new s41();
        g22 g22Var = g22.o;
        this.d = g22Var;
        this.i = new ArrayList();
        this.e = new WeakReference(p22Var);
        this.j = xr3.a(g22Var);
    }

    @Override // defpackage.h22
    public final void a(o22 o22Var) {
        n22 qp0Var;
        Object obj;
        p22 p22Var;
        o22Var.getClass();
        d("addObserver");
        g22 g22Var = this.d;
        g22 g22Var2 = g22.n;
        if (g22Var != g22Var2) {
            g22Var2 = g22.o;
        }
        q22 q22Var = new q22();
        HashMap map = z22.a;
        boolean z = o22Var instanceof n22;
        boolean z2 = o22Var instanceof op0;
        int i = 3;
        if (z && z2) {
            qp0Var = new qp0((op0) o22Var, (n22) o22Var);
        } else if (z2) {
            qp0Var = new qp0((op0) o22Var, (n22) null);
        } else if (z) {
            qp0Var = (n22) o22Var;
        } else {
            Class<?> cls = o22Var.getClass();
            if (z22.b(cls) == 2) {
                Object obj2 = z22.b.get(cls);
                obj2.getClass();
                List list = (List) obj2;
                if (list.size() == 1) {
                    z22.a((Constructor) list.get(0), o22Var);
                    throw null;
                }
                int size = list.size();
                mg1[] mg1VarArr = new mg1[size];
                if (size > 0) {
                    z22.a((Constructor) list.get(0), o22Var);
                    throw null;
                }
                qp0Var = new k33(i, mg1VarArr);
            } else {
                qp0Var = new qp0(o22Var);
            }
        }
        q22Var.b = qp0Var;
        q22Var.a = g22Var2;
        s41 s41Var = this.c;
        xb3 xb3VarA = s41Var.a(o22Var);
        if (xb3VarA != null) {
            obj = xb3VarA.o;
        } else {
            HashMap map2 = s41Var.r;
            xb3 xb3Var = new xb3(o22Var, q22Var);
            s41Var.q++;
            xb3 xb3Var2 = s41Var.o;
            if (xb3Var2 == null) {
                s41Var.n = xb3Var;
                s41Var.o = xb3Var;
            } else {
                xb3Var2.p = xb3Var;
                xb3Var.q = xb3Var2;
                s41Var.o = xb3Var;
            }
            map2.put(o22Var, xb3Var);
            obj = null;
        }
        if (((q22) obj) == null && (p22Var = (p22) this.e.get()) != null) {
            boolean z3 = this.f != 0 || this.g;
            g22 g22VarC = c(o22Var);
            this.f++;
            while (q22Var.a.compareTo(g22VarC) < 0 && this.c.r.containsKey(o22Var)) {
                g22 g22Var3 = q22Var.a;
                ArrayList arrayList = this.i;
                arrayList.add(g22Var3);
                d22 d22Var = f22.Companion;
                g22 g22Var4 = q22Var.a;
                d22Var.getClass();
                g22Var4.getClass();
                int iOrdinal = g22Var4.ordinal();
                f22 f22Var = iOrdinal != 1 ? iOrdinal != 2 ? iOrdinal != 3 ? null : f22.ON_RESUME : f22.ON_START : f22.ON_CREATE;
                if (f22Var == null) {
                    p61.w(q22Var.a, "no event up from ");
                    return;
                } else {
                    q22Var.a(p22Var, f22Var);
                    arrayList.remove(arrayList.size() - 1);
                    g22VarC = c(o22Var);
                }
            }
            if (!z3) {
                h();
            }
            this.f--;
        }
    }

    @Override // defpackage.h22
    public final void b(o22 o22Var) {
        o22Var.getClass();
        d("removeObserver");
        this.c.c(o22Var);
    }

    public final g22 c(o22 o22Var) {
        HashMap map = this.c.r;
        xb3 xb3Var = map.containsKey(o22Var) ? ((xb3) map.get(o22Var)).q : null;
        g22 g22Var = xb3Var != null ? ((q22) xb3Var.o).a : null;
        ArrayList arrayList = this.i;
        g22 g22Var2 = arrayList.isEmpty() ? null : (g22) arrayList.get(arrayList.size() - 1);
        g22 g22Var3 = this.d;
        g22Var3.getClass();
        if (g22Var == null || g22Var.compareTo(g22Var3) >= 0) {
            g22Var = g22Var3;
        }
        return (g22Var2 == null || g22Var2.compareTo(g22Var) >= 0) ? g22Var : g22Var2;
    }

    public final void d(String str) {
        if (this.b) {
            nh.T().P.getClass();
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                return;
            }
            p61.e(di0.v("Method ", str, " must be called on the main thread"));
        }
    }

    public final void e(f22 f22Var) {
        f22Var.getClass();
        d("handleLifecycleEvent");
        f(f22Var.a());
    }

    public final void f(g22 g22Var) {
        if (this.d == g22Var) {
            return;
        }
        p22 p22Var = (p22) this.e.get();
        g22 g22Var2 = this.d;
        g22Var2.getClass();
        g22Var.getClass();
        g22 g22Var3 = g22.o;
        g22 g22Var4 = g22.n;
        if (g22Var2 == g22Var3 && g22Var == g22Var4) {
            throw new IllegalStateException(("State must be at least '" + g22.p + "' to be moved to '" + g22Var + "' in component " + p22Var).toString());
        }
        if (g22Var2 == g22Var4 && g22Var2 != g22Var) {
            throw new IllegalStateException(("State is '" + g22Var4 + "' and cannot be moved to `" + g22Var + "` in component " + p22Var).toString());
        }
        this.d = g22Var;
        if (this.g || this.f != 0) {
            this.h = true;
            return;
        }
        this.g = true;
        h();
        this.g = false;
        if (this.d == g22Var4) {
            this.c = new s41();
        }
    }

    public final void g(g22 g22Var) {
        g22Var.getClass();
        d("setCurrentState");
        f(g22Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0030, code lost:
    
        r11.h = false;
        r11.j.h(r11.d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h() {
        /*
            Method dump skipped, instruction units count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.r22.h():void");
    }
}

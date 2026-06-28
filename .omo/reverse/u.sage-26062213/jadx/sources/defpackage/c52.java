package defpackage;

import android.os.Looper;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class c52 {
    public static final Object k = new Object();
    public final Object a;
    public final ac3 b;
    public int c;
    public boolean d;
    public volatile Object e;
    public volatile Object f;
    public int g;
    public boolean h;
    public boolean i;
    public final o9 j;

    public c52(int i) {
        tq2 tq2Var = w13.M;
        this.a = new Object();
        this.b = new ac3();
        this.c = 0;
        this.f = k;
        this.j = new o9(9, this);
        this.e = tq2Var;
        this.g = 0;
    }

    public static void a(String str) {
        nh.T().P.getClass();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        k21.n(di0.v("Cannot invoke ", str, " on a background thread"));
    }

    public final void b(b52 b52Var) {
        if (b52Var.o) {
            if (!b52Var.d()) {
                b52Var.a(false);
                return;
            }
            int i = b52Var.p;
            int i2 = this.g;
            if (i >= i2) {
                return;
            }
            b52Var.p = i2;
            b52Var.n.e(this.e);
        }
    }

    public final void c(b52 b52Var) {
        if (this.h) {
            this.i = true;
            return;
        }
        this.h = true;
        do {
            this.i = false;
            if (b52Var != null) {
                b(b52Var);
                b52Var = null;
            } else {
                ac3 ac3Var = this.b;
                ac3Var.getClass();
                yb3 yb3Var = new yb3(ac3Var);
                ac3Var.p.put(yb3Var, Boolean.FALSE);
                while (yb3Var.hasNext()) {
                    b((b52) ((Map.Entry) yb3Var.next()).getValue());
                    if (this.i) {
                        break;
                    }
                }
            }
        } while (this.i);
        this.h = false;
    }

    public final void d(p22 p22Var, bo2 bo2Var) {
        Object obj;
        a("observe");
        if (((r22) p22Var.getLifecycle()).d == g22.n) {
            return;
        }
        a52 a52Var = new a52(this, p22Var, bo2Var);
        ac3 ac3Var = this.b;
        xb3 xb3VarA = ac3Var.a(bo2Var);
        if (xb3VarA != null) {
            obj = xb3VarA.o;
        } else {
            xb3 xb3Var = new xb3(bo2Var, a52Var);
            ac3Var.q++;
            xb3 xb3Var2 = ac3Var.o;
            if (xb3Var2 == null) {
                ac3Var.n = xb3Var;
                ac3Var.o = xb3Var;
            } else {
                xb3Var2.p = xb3Var;
                xb3Var.q = xb3Var2;
                ac3Var.o = xb3Var;
            }
            obj = null;
        }
        b52 b52Var = (b52) obj;
        if (b52Var != null && !b52Var.c(p22Var)) {
            k21.f("Cannot add the same observer with different lifecycles");
        } else {
            if (b52Var != null) {
                return;
            }
            p22Var.getLifecycle().a(a52Var);
        }
    }

    public void g(bo2 bo2Var) {
        a("removeObserver");
        b52 b52Var = (b52) this.b.c(bo2Var);
        if (b52Var == null) {
            return;
        }
        b52Var.b();
        b52Var.a(false);
    }

    public abstract void h(Object obj);

    public void e() {
    }

    public void f() {
    }

    public c52() {
        this.a = new Object();
        this.b = new ac3();
        this.c = 0;
        Object obj = k;
        this.f = obj;
        this.j = new o9(9, this);
        this.e = obj;
        this.g = -1;
    }
}

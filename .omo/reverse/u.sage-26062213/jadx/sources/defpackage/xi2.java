package defpackage;

import android.app.Activity;
import android.content.Context;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xi2 {
    public final Context a;
    public final ii2 b;
    public final di2 c;
    public final Activity d;
    public boolean e;
    public final up f;
    public final boolean g;

    public xi2(Context context) {
        Object next;
        context.getClass();
        this.a = context;
        this.b = new ii2(this, new f92(this, 2));
        this.c = new di2(context, 0);
        Iterator it = ci3.K(context, new z82(5)).iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (((Context) next) instanceof Activity) {
                    break;
                }
            }
        }
        this.d = (Activity) next;
        this.f = new up(2, this);
        this.g = true;
        mk2 mk2Var = this.b.t;
        mk2Var.a(new wi2(mk2Var));
        this.b.t.a(new c6(this.a));
        new nv3(new f92(this, 3));
    }

    public static void b(xi2 xi2Var, String str) {
        xi2Var.getClass();
        str.getClass();
        xi2Var.b.n(str, null);
    }

    public static void d(xi2 xi2Var, String str) {
        str.getClass();
        ii2 ii2Var = xi2Var.b;
        ii2Var.getClass();
        if (ii2Var.p(str, false, false)) {
            ii2Var.b();
        }
    }

    public final void a(String str, pe1 pe1Var) {
        str.getClass();
        ii2 ii2Var = this.b;
        ii2Var.getClass();
        ii2Var.n(str, gg4.L(pe1Var));
    }

    public final void c() {
        ii2 ii2Var = this.b;
        if (ii2Var.f.isEmpty()) {
            return;
        }
        qi2 qi2VarH = ii2Var.h();
        qi2VarH.getClass();
        if (ii2Var.o(qi2VarH.o.a, true, false)) {
            ii2Var.b();
        }
    }
}

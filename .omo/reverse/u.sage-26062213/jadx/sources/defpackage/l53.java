package defpackage;

import android.os.Trace;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class l53 {
    public Set a;
    public cc0 b;
    public final ug2 c;
    public lg2 d;
    public ug2 e;
    public final ug2 f;
    public final ug2 g;
    public lg2 h;
    public kg2 i;
    public ArrayList j;
    public lg2 k;

    public l53() {
        ug2 ug2Var = new ug2(new eg1[16]);
        this.c = ug2Var;
        lg2 lg2Var = ud3.a;
        this.d = new lg2();
        this.e = ug2Var;
        this.f = new ug2(new Object[16]);
        this.g = new ug2(new ne1[16]);
    }

    public static final boolean f(eg1 eg1Var, ug2 ug2Var) {
        Object[] objArr = ug2Var.n;
        int i = ug2Var.p;
        for (int i2 = 0; i2 < i; i2++) {
            m53 m53Var = ((eg1) objArr[i2]).a;
            if (m53Var instanceof au2) {
                ug2 ug2Var2 = ((au2) m53Var).o;
                if (ug2Var2.k(eg1Var) || f(eg1Var, ug2Var2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void a() {
        this.a = null;
        this.b = null;
        ug2 ug2Var = this.c;
        ug2Var.h();
        this.d.b();
        this.e = ug2Var;
        this.f.h();
        this.g.h();
        this.h = null;
        this.i = null;
        this.j = null;
    }

    public final void b() {
        Set set = this.a;
        if (set == null || set.isEmpty()) {
            return;
        }
        Trace.beginSection("Compose:abandons");
        try {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                m53 m53Var = (m53) it.next();
                it.remove();
                m53Var.c();
            }
        } finally {
            Trace.endSection();
        }
    }

    public final void c() {
        Set set = this.a;
        if (set == null) {
            return;
        }
        this.k = null;
        ug2 ug2Var = this.f;
        int i = 8;
        if (ug2Var.p != 0) {
            Trace.beginSection("Compose:onForgotten");
            try {
                lg2 lg2Var = this.h;
                int i2 = ug2Var.p;
                while (true) {
                    i2--;
                    if (-1 >= i2) {
                        break;
                    }
                    Object obj = ug2Var.n[i2];
                    try {
                        if (obj instanceof eg1) {
                            m53 m53Var = ((eg1) obj).a;
                            set.remove(m53Var);
                            m53Var.e();
                        }
                        if (obj instanceof ya0) {
                            if (lg2Var == null || !lg2Var.c(obj)) {
                                ((ya0) obj).h();
                            } else {
                                ((ya0) obj).f();
                            }
                        }
                    } catch (Throwable th) {
                        cc0 cc0Var = this.b;
                        if (cc0Var != null) {
                            mt1.W(th, new h4(i, cc0Var, obj));
                        }
                        throw th;
                    }
                }
            } finally {
            }
        }
        ug2 ug2Var2 = this.c;
        if (ug2Var2.p != 0) {
            Trace.beginSection("Compose:onRemembered");
            try {
                Set set2 = this.a;
                if (set2 != null) {
                    Object[] objArr = ug2Var2.n;
                    int i3 = ug2Var2.p;
                    for (int i4 = 0; i4 < i3; i4++) {
                        eg1 eg1Var = (eg1) objArr[i4];
                        m53 m53Var2 = eg1Var.a;
                        set2.remove(m53Var2);
                        try {
                            m53Var2.a();
                        } catch (Throwable th2) {
                            cc0 cc0Var2 = this.b;
                            if (cc0Var2 != null) {
                                mt1.W(th2, new h4(i, cc0Var2, eg1Var));
                            }
                            throw th2;
                        }
                    }
                }
            } finally {
            }
        }
    }

    public final void d() {
        ug2 ug2Var = this.g;
        if (ug2Var.p != 0) {
            Trace.beginSection("Compose:sideeffects");
            try {
                Object[] objArr = ug2Var.n;
                int i = ug2Var.p;
                for (int i2 = 0; i2 < i; i2++) {
                    ((ne1) objArr[i2]).a();
                }
                ug2Var.h();
            } finally {
                Trace.endSection();
            }
        }
    }

    public final void e(eg1 eg1Var) {
        if (!this.d.c(eg1Var)) {
            lg2 lg2Var = this.k;
            if (lg2Var == null || !lg2Var.c(eg1Var)) {
                this.f.c(eg1Var);
                return;
            }
            return;
        }
        this.d.l(eg1Var);
        if (!this.e.k(eg1Var)) {
            ug2 ug2Var = this.c;
            if (!ug2Var.k(eg1Var)) {
                f(eg1Var, ug2Var);
            }
        }
        Set set = this.a;
        if (set == null) {
            return;
        }
        set.add(eg1Var.a);
    }

    public final void g(Set set, cc0 cc0Var) {
        a();
        this.a = set;
        this.b = cc0Var;
    }
}

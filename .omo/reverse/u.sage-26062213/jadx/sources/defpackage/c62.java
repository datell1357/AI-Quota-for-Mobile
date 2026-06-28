package defpackage;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c62 implements Iterator {
    public int n;
    public int o = -1;
    public i62 p;
    public AtomicReferenceArray q;
    public x33 r;
    public u62 s;
    public u62 t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ v62 f43u;
    public final /* synthetic */ int v;

    public c62(v62 v62Var, int i) {
        this.v = i;
        this.f43u = v62Var;
        this.n = v62Var.p.length - 1;
        b();
    }

    public final void b() {
        this.s = null;
        if (f() || g()) {
            return;
        }
        while (true) {
            int i = this.n;
            if (i < 0) {
                return;
            }
            i62[] i62VarArr = this.f43u.p;
            this.n = i - 1;
            i62 i62Var = i62VarArr[i];
            this.p = i62Var;
            if (i62Var.o != 0) {
                this.q = this.p.s;
                this.o = r0.length() - 1;
                if (g()) {
                    return;
                }
            }
        }
    }

    public final boolean c(x33 x33Var) {
        Object obj;
        v62 v62Var = this.f43u;
        try {
            long jA = v62Var.z.a();
            Object key = x33Var.getKey();
            Object obj2 = null;
            if (x33Var.getKey() != null && (obj = x33Var.d().get()) != null && !v62Var.e(x33Var, jA)) {
                obj2 = obj;
            }
            if (obj2 == null) {
                this.p.l();
                return false;
            }
            this.s = new u62(v62Var, key, obj2);
            this.p.l();
            return true;
        } catch (Throwable th) {
            this.p.l();
            throw th;
        }
    }

    public final Object d() {
        return e();
    }

    public final u62 e() {
        u62 u62Var = this.s;
        if (u62Var == null) {
            p61.v();
            return null;
        }
        this.t = u62Var;
        b();
        return this.t;
    }

    public final boolean f() {
        x33 x33Var = this.r;
        if (x33Var == null) {
            return false;
        }
        while (true) {
            this.r = x33Var.m();
            x33 x33Var2 = this.r;
            if (x33Var2 == null) {
                return false;
            }
            if (c(x33Var2)) {
                return true;
            }
            x33Var = this.r;
        }
    }

    public final boolean g() {
        while (true) {
            int i = this.o;
            if (i < 0) {
                return false;
            }
            AtomicReferenceArray atomicReferenceArray = this.q;
            this.o = i - 1;
            x33 x33Var = (x33) atomicReferenceArray.get(i);
            this.r = x33Var;
            if (x33Var != null && (c(x33Var) || f())) {
                return true;
            }
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.s != null;
    }

    @Override // java.util.Iterator
    public Object next() {
        switch (this.v) {
            case 1:
                return e().n;
            case 2:
                return e().o;
            default:
                return d();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        n44.a0(this.t != null);
        this.f43u.remove(this.t.n);
        this.t = null;
    }
}

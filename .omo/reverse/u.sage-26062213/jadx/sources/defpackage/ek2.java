package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class ek2 {
    public on4 a;
    public boolean b;
    public ck2 c;

    public final boolean a() {
        ck2 ck2Var = this.c;
        if (ck2Var == null || ck2Var.b) {
            return this.b;
        }
        return false;
    }

    public abstract void b();

    public abstract void c();

    public abstract void d(bk2 bk2Var);

    public abstract void e(bk2 bk2Var);

    public final void f() {
        ck2 ck2Var = this.c;
        if (ck2Var == null || !ck2Var.d.h(this)) {
            return;
        }
        hk2 hk2Var = ck2Var.c;
        hk2Var.getClass();
        if (equals(hk2Var.f)) {
            if (hk2Var.g == -1) {
                b();
            }
            hk2Var.f = null;
            hk2Var.g = 0;
            hk2Var.h = null;
        }
        hk2Var.d.remove(this);
        hk2Var.e.remove(this);
        this.c = null;
        hk2Var.b();
    }

    public final void g(boolean z) {
        hk2 hk2Var;
        if (this.b == z) {
            return;
        }
        this.b = z;
        ck2 ck2Var = this.c;
        if (ck2Var == null || (hk2Var = ck2Var.c) == null) {
            return;
        }
        hk2Var.b();
    }
}

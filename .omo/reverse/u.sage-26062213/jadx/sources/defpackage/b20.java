package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b20 {
    public Object a;
    public e20 b;
    public j73 c;
    public boolean d;

    public final void a(Object obj) {
        this.d = true;
        e20 e20Var = this.b;
        if (e20Var == null || !e20Var.o.j(obj)) {
            return;
        }
        this.a = null;
        this.b = null;
        this.c = null;
    }

    public final void b(Throwable th) {
        this.d = true;
        e20 e20Var = this.b;
        if (e20Var == null || !e20Var.o.k(th)) {
            return;
        }
        this.a = null;
        this.b = null;
        this.c = null;
    }

    public final void finalize() {
        j73 j73Var;
        e20 e20Var = this.b;
        if (e20Var != null) {
            d20 d20Var = e20Var.o;
            if (!d20Var.isDone()) {
                d20Var.k(new v1("The completer object was garbage collected - this future would otherwise never complete. The tag was: " + this.a, 1));
            }
        }
        if (this.d || (j73Var = this.c) == null) {
            return;
        }
        j73Var.j(null);
    }
}

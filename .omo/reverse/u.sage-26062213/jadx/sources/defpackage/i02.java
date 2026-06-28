package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class i02 {
    public final Object a;
    public final k02 b;
    public int d;
    public i02 e;
    public boolean f;
    public int c = -1;
    public final ws2 g = ca.A(null);

    public i02(Object obj, k02 k02Var) {
        this.a = obj;
        this.b = k02Var;
    }

    public final i02 a() {
        if (this.f) {
            dr1.c("Pin should not be called on an already disposed item ");
        }
        if (this.d == 0) {
            this.b.n.add(this);
            i02 i02Var = (i02) this.g.getValue();
            if (i02Var != null) {
                i02Var.a();
            } else {
                i02Var = null;
            }
            this.e = i02Var;
        }
        this.d++;
        return this;
    }

    public final void b() {
        if (this.f) {
            return;
        }
        if (this.d <= 0) {
            dr1.c("Release should only be called once");
        }
        int i = this.d - 1;
        this.d = i;
        if (i == 0) {
            c();
        }
    }

    public final void c() {
        this.b.n.remove(this);
        i02 i02Var = this.e;
        if (i02Var != null) {
            i02Var.b();
        }
        this.e = null;
    }
}

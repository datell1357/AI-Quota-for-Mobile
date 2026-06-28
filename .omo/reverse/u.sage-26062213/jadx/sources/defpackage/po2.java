package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class po2 extends ek2 {
    public final up d;
    public boolean e;

    public po2(up upVar, qo2 qo2Var) {
        boolean z = upVar.b;
        this.a = qo2Var;
        this.b = z;
        this.d = upVar;
        this.e = true;
    }

    @Override // defpackage.ek2
    public final void b() {
        up upVar = this.d;
        switch (upVar.d) {
            case 0:
                ((nq0) upVar.e).g();
                break;
        }
    }

    @Override // defpackage.ek2
    public final void c() {
        up upVar = this.d;
        switch (upVar.d) {
            case 0:
                ((nq0) upVar.e).h();
                break;
            case 1:
                hd1 hd1Var = (hd1) upVar.e;
                hd1Var.x(true);
                if (!hd1Var.h.b) {
                    hd1Var.g.b().a();
                } else {
                    hd1Var.M();
                }
                break;
            case 2:
                ((xi2) upVar.e).c();
                break;
            default:
                ((ka) upVar.e).k(upVar);
                break;
        }
    }

    @Override // defpackage.ek2
    public final void d(bk2 bk2Var) {
        sp spVar = new sp(bk2Var);
        up upVar = this.d;
        switch (upVar.d) {
            case 0:
                ((nq0) upVar.e).i(spVar);
                break;
        }
    }

    @Override // defpackage.ek2
    public final void e(bk2 bk2Var) {
        bk2Var.getClass();
        new sp(bk2Var);
        up upVar = this.d;
        switch (upVar.d) {
            case 0:
                ((nq0) upVar.e).j();
                break;
        }
    }

    public final void h(boolean z) {
        this.e = z;
        g(z && this.d.b);
    }
}

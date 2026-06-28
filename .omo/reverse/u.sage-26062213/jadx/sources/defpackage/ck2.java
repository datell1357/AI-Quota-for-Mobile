package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ck2 {
    public final r6 a;
    public final boolean b = true;
    public final hk2 c = new hk2();
    public final eg2 d;
    public final eg2 e;

    public ck2(r6 r6Var) {
        this.a = r6Var;
        fr2.a();
        this.d = fr2.a();
        this.e = fr2.a();
    }

    public static void a(ck2 ck2Var, ek2 ek2Var) {
        ck2Var.getClass();
        ek2Var.getClass();
        ck2Var.d();
        if (ck2Var.d.a(ek2Var)) {
            hk2 hk2Var = ck2Var.c;
            hk2Var.getClass();
            if (ek2Var.c != null) {
                p61.h(ek2Var, "' is already registered with a dispatcher", "Handler '");
                return;
            }
            hk2Var.e.addFirst(ek2Var);
            ek2Var.c = ck2Var;
            hk2Var.b();
        }
    }

    public final void b(gk2 gk2Var) {
        d();
        if (this.e.a(gk2Var)) {
            this.c.a(this, gk2Var, -1);
        }
    }

    public final void c(mo2 mo2Var, int i) {
        d();
        if (i != 1 && i != 0) {
            k21.l(di0.q(i, "Unsupported priority value: "));
        } else if (this.e.a(mo2Var)) {
            this.c.a(this, mo2Var, i);
        }
    }

    public final void e(gk2 gk2Var, bk2 bk2Var) {
        d();
        if (this.b) {
            hk2 hk2Var = this.c;
            hk2Var.getClass();
            if (hk2Var.g != 0) {
                return;
            }
            ek2 ek2VarC = hk2Var.c(-1);
            hk2Var.f = ek2VarC;
            hk2Var.g = -1;
            hk2Var.h = gk2Var;
            if (bk2Var != null) {
                if (ek2VarC != null) {
                    ek2VarC.e(bk2Var);
                }
                wr3 wr3Var = hk2Var.a;
                jk2 jk2Var = new jk2(bk2Var);
                wr3Var.getClass();
                wr3Var.i(null, jk2Var);
            }
        }
    }

    public final void d() {
    }
}

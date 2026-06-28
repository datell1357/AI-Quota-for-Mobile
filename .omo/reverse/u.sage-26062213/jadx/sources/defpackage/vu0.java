package defpackage;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class vu0 extends mw3 {
    public int p;

    public vu0(int i) {
        super(false, 0L);
        this.p = i;
    }

    public abstract dh0 d();

    public Throwable f(Object obj) {
        c90 c90Var = obj instanceof c90 ? (c90) obj : null;
        if (c90Var != null) {
            return c90Var.a;
        }
        return null;
    }

    public final void k(Throwable th) {
        qj0.N(d().e(), new wi0("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    public abstract Object m();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            dh0 dh0VarD = d();
            dh0VarD.getClass();
            su0 su0Var = (su0) dh0VarD;
            fh0 fh0Var = su0Var.r;
            Object obj = su0Var.t;
            hi0 hi0VarE = fh0Var.e();
            Object objC = iy3.c(hi0VarE, obj);
            tu1 tu1Var = null;
            o64 o64VarB0 = objC != iy3.a ? ix.b0(fh0Var, hi0VarE, objC) : null;
            try {
                hi0 hi0VarE2 = fh0Var.e();
                Object objM = m();
                Throwable thF = f(objM);
                if (thF == null) {
                    int i = this.p;
                    boolean z = true;
                    if (i != 1 && i != 2) {
                        z = false;
                    }
                    if (z) {
                        tu1Var = (tu1) hi0VarE2.K(mj1.W);
                    }
                }
                if (tu1Var != null && !tu1Var.b()) {
                    CancellationException cancellationExceptionN = tu1Var.N();
                    b(cancellationExceptionN);
                    fh0Var.g(gg4.q(cancellationExceptionN));
                } else if (thF != null) {
                    fh0Var.g(new f83(thF));
                } else {
                    fh0Var.g(j(objM));
                }
                if (o64VarB0 == null || o64VarB0.u0()) {
                    iy3.a(hi0VarE, objC);
                }
            } catch (Throwable th) {
                if (o64VarB0 == null || o64VarB0.u0()) {
                    iy3.a(hi0VarE, objC);
                }
                throw th;
            }
        } catch (ru0 e) {
            qj0.N(d().e(), e.n);
        } catch (Throwable th2) {
            k(th2);
        }
    }

    public void b(CancellationException cancellationException) {
    }

    public Object j(Object obj) {
        return obj;
    }
}

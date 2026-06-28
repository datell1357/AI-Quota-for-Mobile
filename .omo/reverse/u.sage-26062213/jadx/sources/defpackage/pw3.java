package defpackage;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pw3 {
    public final ef5 a = new ef5();

    public pw3(gt4 gt4Var) {
        ra3 ra3Var = new ra3(27, this);
        gt4Var.getClass();
        ((ef5) gt4Var.o).c(qw3.a, new dd1(gt4Var, ra3Var));
    }

    public final void a(Exception exc) {
        this.a.p(exc);
    }

    public final void b(Object obj) {
        this.a.n(obj);
    }

    public final boolean c(Exception exc) {
        ef5 ef5Var = this.a;
        ef5Var.getClass();
        Preconditions.checkNotNull(exc, "Exception must not be null");
        synchronized (ef5Var.a) {
            try {
                if (ef5Var.c) {
                    return false;
                }
                ef5Var.c = true;
                ef5Var.f = exc;
                ef5Var.b.c(ef5Var);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d(Object obj) {
        this.a.o(obj);
    }

    public pw3() {
    }
}

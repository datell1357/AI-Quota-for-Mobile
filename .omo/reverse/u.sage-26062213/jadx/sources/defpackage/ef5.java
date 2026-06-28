package defpackage;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ef5 extends ow3 {
    public final Object a = new Object();
    public final ft1 b = new ft1(3);
    public boolean c;
    public volatile boolean d;
    public Object e;
    public Exception f;

    @Override // defpackage.ow3
    public final ef5 a(Executor executor, wo2 wo2Var) {
        this.b.b(new n25(executor, wo2Var));
        s();
        return this;
    }

    @Override // defpackage.ow3
    public final ef5 b(Executor executor, bp2 bp2Var) {
        this.b.b(new n25(executor, bp2Var));
        s();
        return this;
    }

    @Override // defpackage.ow3
    public final ef5 c(Executor executor, jp2 jp2Var) {
        this.b.b(new n25(executor, jp2Var));
        s();
        return this;
    }

    @Override // defpackage.ow3
    public final ef5 d(Executor executor, eh0 eh0Var) {
        ef5 ef5Var = new ef5();
        this.b.b(new cx4(executor, eh0Var, ef5Var, 0));
        s();
        return ef5Var;
    }

    @Override // defpackage.ow3
    public final ef5 e(Executor executor, eh0 eh0Var) {
        ef5 ef5Var = new ef5();
        this.b.b(new cx4(executor, eh0Var, ef5Var, 1));
        s();
        return ef5Var;
    }

    @Override // defpackage.ow3
    public final Exception f() {
        Exception exc;
        synchronized (this.a) {
            exc = this.f;
        }
        return exc;
    }

    @Override // defpackage.ow3
    public final Object g() {
        Object obj;
        synchronized (this.a) {
            try {
                Preconditions.checkState(this.c, "Task is not yet complete");
                if (this.d) {
                    throw new CancellationException("Task is already canceled.");
                }
                Exception exc = this.f;
                if (exc != null) {
                    throw new hb3(exc);
                }
                obj = this.e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    @Override // defpackage.ow3
    public final Object h() {
        Object obj;
        synchronized (this.a) {
            try {
                Preconditions.checkState(this.c, "Task is not yet complete");
                if (this.d) {
                    throw new CancellationException("Task is already canceled.");
                }
                boolean zIsInstance = ApiException.class.isInstance(this.f);
                Exception exc = this.f;
                if (zIsInstance) {
                    throw ((Throwable) ApiException.class.cast(exc));
                }
                if (exc != null) {
                    throw new hb3(exc);
                }
                obj = this.e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    @Override // defpackage.ow3
    public final boolean i() {
        boolean z;
        synchronized (this.a) {
            z = this.c;
        }
        return z;
    }

    @Override // defpackage.ow3
    public final boolean j() {
        boolean z;
        synchronized (this.a) {
            try {
                z = false;
                if (this.c && !this.d && this.f == null) {
                    z = true;
                }
            } finally {
            }
        }
        return z;
    }

    @Override // defpackage.ow3
    public final ef5 k(wt3 wt3Var) {
        c73 c73Var = qw3.a;
        ef5 ef5Var = new ef5();
        this.b.b(new n25(c73Var, wt3Var, ef5Var));
        s();
        return ef5Var;
    }

    @Override // defpackage.ow3
    public final ef5 l(Executor executor, wt3 wt3Var) {
        ef5 ef5Var = new ef5();
        this.b.b(new n25(executor, wt3Var, ef5Var));
        s();
        return ef5Var;
    }

    public final ef5 m(xo2 xo2Var) {
        this.b.b(new n25(qw3.a, xo2Var));
        s();
        return this;
    }

    public final void n(Object obj) {
        synchronized (this.a) {
            r();
            this.c = true;
            this.e = obj;
        }
        this.b.c(this);
    }

    public final boolean o(Object obj) {
        synchronized (this.a) {
            try {
                if (this.c) {
                    return false;
                }
                this.c = true;
                this.e = obj;
                this.b.c(this);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void p(Exception exc) {
        Preconditions.checkNotNull(exc, "Exception must not be null");
        synchronized (this.a) {
            r();
            this.c = true;
            this.f = exc;
        }
        this.b.c(this);
    }

    public final void q() {
        synchronized (this.a) {
            try {
                if (this.c) {
                    return;
                }
                this.c = true;
                this.d = true;
                this.b.c(this);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void r() {
        if (this.c) {
            if (!i()) {
                throw new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
            }
            Exception excF = f();
        }
    }

    public final void s() {
        synchronized (this.a) {
            try {
                if (this.c) {
                    this.b.c(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

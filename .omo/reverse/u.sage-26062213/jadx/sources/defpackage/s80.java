package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class s80 extends k7 {
    public static final q12 B = new q12(s80.class);
    public r80 A;
    public dp1 y;
    public final boolean z;

    public s80(dp1 dp1Var, boolean z) {
        int size = dp1Var.size();
        this.f161u = null;
        this.v = size;
        this.y = dp1Var;
        this.z = z;
    }

    @Override // defpackage.s0
    public final void e() {
        dp1 dp1Var = this.y;
        this.y = null;
        this.A = null;
        if ((this.n instanceof l0) && (dp1Var != null)) {
            boolean zP = p();
            y64 it = dp1Var.iterator();
            while (it.hasNext()) {
                ((Future) it.next()).cancel(zP);
            }
        }
    }

    @Override // defpackage.s0
    public final void k() {
        r80 r80Var = this.A;
        if (r80Var != null) {
            r80Var.c();
        }
    }

    @Override // defpackage.s0
    public final String l() {
        dp1 dp1Var = this.y;
        if (dp1Var == null) {
            return super.l();
        }
        return "futures=" + dp1Var;
    }

    public final void q(dp1 dp1Var) {
        int iZ = k7.w.z(this);
        n44.b0(iZ >= 0, "Less than 0 remaining futures");
        if (iZ == 0) {
            if (dp1Var != null) {
                y64 it = dp1Var.iterator();
                while (it.hasNext()) {
                    Future future = (Future) it.next();
                    if (!future.isCancelled()) {
                        try {
                            bi4.y(future);
                        } catch (ExecutionException e) {
                            r(e.getCause());
                        } catch (Throwable th) {
                            r(th);
                        }
                    }
                }
            }
            this.f161u = null;
            r80 r80Var = this.A;
            if (r80Var != null) {
                try {
                    r80Var.p.execute(r80Var);
                } catch (RejectedExecutionException e2) {
                    r80Var.q.n(e2);
                }
            }
            this.y = null;
        }
    }

    public final void r(Throwable th) {
        th.getClass();
        if (this.z && !n(th)) {
            Set set = this.f161u;
            if (set == null) {
                Set setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
                setNewSetFromMap.getClass();
                if (!(this.n instanceof l0)) {
                    Throwable thC = c();
                    Objects.requireNonNull(thC);
                    while (thC != null && setNewSetFromMap.add(thC)) {
                        thC = thC.getCause();
                    }
                }
                k7.w.w(this, setNewSetFromMap);
                Set set2 = this.f161u;
                Objects.requireNonNull(set2);
                set = set2;
            }
            for (Throwable cause = th; cause != null; cause = cause.getCause()) {
                if (set.add(cause)) {
                }
            }
            B.a().log(Level.SEVERE, th instanceof Error ? "Input Future failed with Error" : "Got more than one input Future failure. Logging failures after the first", th);
            return;
        }
        if (th instanceof Error) {
            B.a().log(Level.SEVERE, "Input Future failed with Error", th);
        }
    }

    public final void s() {
        Objects.requireNonNull(this.y);
        if (this.y.isEmpty()) {
            r80 r80Var = this.A;
            if (r80Var != null) {
                try {
                    r80Var.p.execute(r80Var);
                    return;
                } catch (RejectedExecutionException e) {
                    r80Var.q.n(e);
                    return;
                }
            }
            return;
        }
        dp1 dp1Var = this.y;
        fu0 fu0Var = fu0.n;
        if (!this.z) {
            h7 h7Var = new h7(1, this, (Object) null);
            y64 it = dp1Var.iterator();
            while (it.hasNext()) {
                ListenableFuture listenableFuture = (ListenableFuture) it.next();
                if (listenableFuture.isDone()) {
                    q(null);
                } else {
                    listenableFuture.a(h7Var, fu0Var);
                }
            }
            return;
        }
        y64 it2 = dp1Var.iterator();
        int i = 0;
        while (it2.hasNext()) {
            ListenableFuture listenableFuture2 = (ListenableFuture) it2.next();
            int i2 = i + 1;
            if (listenableFuture2.isDone()) {
                t(listenableFuture2);
            } else {
                listenableFuture2.a(new h7(this, i, listenableFuture2), fu0Var);
            }
            i = i2;
        }
    }

    public final void t(ListenableFuture listenableFuture) {
        try {
            if (listenableFuture.isCancelled()) {
                this.y = null;
                cancel(false);
            } else {
                try {
                    bi4.y(listenableFuture);
                } catch (ExecutionException e) {
                    r(e.getCause());
                } catch (Throwable th) {
                    r(th);
                }
            }
        } finally {
            q(null);
        }
    }
}

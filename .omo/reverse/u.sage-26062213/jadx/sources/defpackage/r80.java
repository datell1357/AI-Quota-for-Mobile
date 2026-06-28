package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class r80 extends ht1 {
    public final Executor p;
    public final /* synthetic */ s80 q;
    public final /* synthetic */ int r;
    public final /* synthetic */ s80 s;
    public final Object t;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public r80(s80 s80Var, Callable callable) {
        this(s80Var, fu0.n);
        this.r = 1;
        this.s = s80Var;
        this.t = callable;
    }

    @Override // defpackage.ht1
    public final void a(Throwable th) {
        s80 s80Var = this.q;
        s80Var.A = null;
        if (th instanceof ExecutionException) {
            s80Var.n(((ExecutionException) th).getCause());
        } else if (th instanceof CancellationException) {
            s80Var.cancel(false);
        } else {
            s80Var.n(th);
        }
    }

    @Override // defpackage.ht1
    public final void b(Object obj) {
        this.q.A = null;
        int i = this.r;
        s80 s80Var = this.s;
        switch (i) {
            case 0:
                s80Var.o((ListenableFuture) obj);
                break;
            default:
                s80Var.m(obj);
                break;
        }
    }

    @Override // defpackage.ht1
    public final boolean d() {
        return this.q.isDone();
    }

    @Override // defpackage.ht1
    public final Object e() {
        int i = this.r;
        Object obj = this.t;
        switch (i) {
            case 0:
                return ((pc4) obj).call();
            default:
                return ((Callable) obj).call();
        }
    }

    @Override // defpackage.ht1
    public final String f() {
        int i = this.r;
        Object obj = this.t;
        switch (i) {
            case 0:
                return ((pc4) obj).toString();
            default:
                return ((Callable) obj).toString();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public r80(s80 s80Var, pc4 pc4Var, Executor executor) {
        this(s80Var, executor);
        this.r = 0;
        this.s = s80Var;
        this.t = pc4Var;
    }

    public r80(s80 s80Var, Executor executor) {
        this.q = s80Var;
        executor.getClass();
        this.p = executor;
    }
}

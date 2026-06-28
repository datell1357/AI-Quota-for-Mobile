package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z24 extends ht1 {
    public final /* synthetic */ int p = 1;
    public final /* synthetic */ a34 q;
    public final Object r;

    public z24(a34 a34Var, Callable callable) {
        this.q = a34Var;
        callable.getClass();
        this.r = callable;
    }

    @Override // defpackage.ht1
    public final void a(Throwable th) {
        int i = this.p;
        a34 a34Var = this.q;
        switch (i) {
            case 0:
                a34Var.n(th);
                break;
            default:
                a34Var.n(th);
                break;
        }
    }

    @Override // defpackage.ht1
    public final void b(Object obj) {
        int i = this.p;
        a34 a34Var = this.q;
        switch (i) {
            case 0:
                a34Var.o((ListenableFuture) obj);
                break;
            default:
                a34Var.m(obj);
                break;
        }
    }

    @Override // defpackage.ht1
    public final boolean d() {
        int i = this.p;
        a34 a34Var = this.q;
        switch (i) {
        }
        return a34Var.isDone();
    }

    @Override // defpackage.ht1
    public final Object e() {
        int i = this.p;
        Object obj = this.r;
        switch (i) {
            case 0:
                pi piVar = (pi) obj;
                ListenableFuture listenableFutureCall = piVar.call();
                n44.W(listenableFutureCall, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", piVar);
                return listenableFutureCall;
            default:
                return ((Callable) obj).call();
        }
    }

    @Override // defpackage.ht1
    public final String f() {
        switch (this.p) {
            case 0:
                return ((pi) this.r).toString();
            default:
                return ((Callable) this.r).toString();
        }
    }

    public z24(a34 a34Var, pi piVar) {
        this.q = a34Var;
        this.r = piVar;
    }
}

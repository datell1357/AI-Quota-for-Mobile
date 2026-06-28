package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.lang.ref.ReferenceQueue;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f62 implements o62 {
    public volatile o62 a;
    public final jk3 b;
    public final ps3 c;

    public f62() {
        w52 w52Var = v62.F;
        this.b = new jk3();
        this.c = new ps3();
        this.a = w52Var;
    }

    @Override // defpackage.o62
    public final boolean a() {
        return true;
    }

    @Override // defpackage.o62
    public final boolean b() {
        return this.a.b();
    }

    @Override // defpackage.o62
    public final Object c() {
        return bi4.y(this.b);
    }

    @Override // defpackage.o62
    public final void e(Object obj) {
        if (obj != null) {
            this.b.m(obj);
        } else {
            this.a = v62.F;
        }
    }

    @Override // defpackage.o62
    public final x33 f() {
        return null;
    }

    @Override // defpackage.o62
    public final int g() {
        return this.a.g();
    }

    @Override // defpackage.o62
    public final Object get() {
        return this.a.get();
    }

    public final ListenableFuture h(Object obj, x00 x00Var) {
        s0 zo1Var;
        try {
            ps3 ps3Var = this.c;
            n44.b0(!ps3Var.b, "This stopwatch is already running.");
            ps3Var.b = true;
            ps3Var.a.getClass();
            ps3Var.c = System.nanoTime();
            Object obj2 = this.a.get();
            if (obj2 == null) {
                Object objLoad = x00Var.load(obj);
                return this.b.m(objLoad) ? this.b : tf1.c(objLoad);
            }
            ListenableFuture listenableFutureReload = x00Var.reload(obj, obj2);
            return listenableFutureReload == null ? ap1.o : tf1.e(listenableFutureReload, new ze1() { // from class: e62
                @Override // defpackage.ze1
                public final Object apply(Object obj3) {
                    this.n.b.m(obj3);
                    return obj3;
                }
            }, fu0.n);
        } catch (Throwable th) {
            if (this.b.n(th)) {
                zo1Var = this.b;
            } else {
                zo1Var = new zo1();
                zo1Var.n(th);
            }
            if (th instanceof InterruptedException) {
                Thread.currentThread().interrupt();
            }
            return zo1Var;
        }
    }

    @Override // defpackage.o62
    public final o62 d(ReferenceQueue referenceQueue, Object obj, x33 x33Var) {
        return this;
    }
}

package defpackage;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class cc1 extends mz3 {
    public mz3 e;

    public cc1(mz3 mz3Var) {
        mz3Var.getClass();
        this.e = mz3Var;
    }

    @Override // defpackage.mz3
    public final mz3 a() {
        return this.e.a();
    }

    @Override // defpackage.mz3
    public final mz3 b() {
        return this.e.b();
    }

    @Override // defpackage.mz3
    public final long c() {
        return this.e.c();
    }

    @Override // defpackage.mz3
    public final mz3 d(long j) {
        return this.e.d(j);
    }

    @Override // defpackage.mz3
    public final boolean e() {
        return this.e.e();
    }

    @Override // defpackage.mz3
    public final void f() throws InterruptedIOException {
        this.e.f();
    }

    @Override // defpackage.mz3
    public final mz3 g(long j) {
        TimeUnit.MILLISECONDS.getClass();
        return this.e.g(j);
    }
}

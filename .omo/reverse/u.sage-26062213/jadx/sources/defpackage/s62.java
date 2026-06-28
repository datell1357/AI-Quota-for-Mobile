package defpackage;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class s62 extends WeakReference implements x33 {
    public final int n;
    public final x33 o;
    public volatile o62 p;

    public s62(ReferenceQueue referenceQueue, Object obj, int i, x33 x33Var) {
        super(obj, referenceQueue);
        this.p = v62.F;
        this.n = i;
        this.o = x33Var;
    }

    public void a(long j) {
        throw new UnsupportedOperationException();
    }

    public x33 b() {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.x33
    public final void c(o62 o62Var) {
        this.p = o62Var;
    }

    @Override // defpackage.x33
    public final o62 d() {
        return this.p;
    }

    public x33 e() {
        throw new UnsupportedOperationException();
    }

    public long f() {
        throw new UnsupportedOperationException();
    }

    public void g(x33 x33Var) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.x33
    public final Object getKey() {
        return get();
    }

    public void h(x33 x33Var) {
        throw new UnsupportedOperationException();
    }

    public void i(x33 x33Var) {
        throw new UnsupportedOperationException();
    }

    public void j(x33 x33Var) {
        throw new UnsupportedOperationException();
    }

    public x33 k() {
        throw new UnsupportedOperationException();
    }

    public x33 l() {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.x33
    public final x33 m() {
        return this.o;
    }

    @Override // defpackage.x33
    public final int n() {
        return this.n;
    }
}

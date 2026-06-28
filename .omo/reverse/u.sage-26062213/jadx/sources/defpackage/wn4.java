package defpackage;

import java.util.concurrent.ExecutionException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class wn4 implements jp2, bp2, wo2 {
    public final Object n = new Object();
    public final int o;
    public final ef5 p;
    public int q;
    public int r;
    public int s;
    public Exception t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f401u;

    public wn4(int i, ef5 ef5Var) {
        this.o = i;
        this.p = ef5Var;
    }

    @Override // defpackage.wo2
    public final void a() {
        synchronized (this.n) {
            this.s++;
            this.f401u = true;
            b();
        }
    }

    public final void b() {
        int i = this.q;
        int i2 = this.r;
        int i3 = i + i2 + this.s;
        int i4 = this.o;
        if (i3 == i4) {
            Exception exc = this.t;
            ef5 ef5Var = this.p;
            if (exc == null) {
                if (this.f401u) {
                    ef5Var.q();
                    return;
                } else {
                    ef5Var.n(null);
                    return;
                }
            }
            int length = String.valueOf(i2).length();
            StringBuilder sb = new StringBuilder(String.valueOf(i4).length() + length + 8 + 24);
            sb.append(i2);
            sb.append(" out of ");
            sb.append(i4);
            sb.append(" underlying tasks failed");
            ef5Var.p(new ExecutionException(sb.toString(), this.t));
        }
    }

    @Override // defpackage.bp2
    public final void c(Exception exc) {
        synchronized (this.n) {
            this.r++;
            this.t = exc;
            b();
        }
    }

    @Override // defpackage.jp2
    public final void h(Object obj) {
        synchronized (this.n) {
            this.q++;
            b();
        }
    }
}

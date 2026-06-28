package defpackage;

import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class t41 implements kn3 {
    public final /* synthetic */ int n = 0;
    public boolean o;
    public final Object p;
    public final Object q;

    public t41(sk1 sk1Var) {
        this.q = sk1Var;
        this.p = new cc1(((c23) sk1Var.c.q).n.g());
    }

    @Override // defpackage.kn3
    public final void J(long j, sy syVar) throws EOFException {
        int i = this.n;
        Object obj = this.q;
        switch (i) {
            case 0:
                if (this.o) {
                    syVar.skip(j);
                    return;
                }
                try {
                    ((kn3) this.p).J(j, syVar);
                    return;
                } catch (IOException e) {
                    this.o = true;
                    ((v) obj).k(e);
                    return;
                }
            default:
                if (this.o) {
                    k21.n("closed");
                    return;
                }
                long j2 = syVar.o;
                byte[] bArr = fi4.a;
                if (j >= 0 && 0 <= j2 && j2 >= j) {
                    ((c23) ((sk1) obj).c.q).J(j, syVar);
                    return;
                }
                throw new ArrayIndexOutOfBoundsException("length=" + j2 + ", offset=0, count=0");
        }
    }

    @Override // defpackage.kn3, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        int i = this.n;
        Object obj = this.p;
        Object obj2 = this.q;
        switch (i) {
            case 0:
                try {
                    ((kn3) obj).close();
                } catch (IOException e) {
                    this.o = true;
                    ((v) obj2).k(e);
                    return;
                }
                break;
            default:
                sk1 sk1Var = (sk1) obj2;
                if (!this.o) {
                    this.o = true;
                    cc1 cc1Var = (cc1) obj;
                    mz3 mz3Var = cc1Var.e;
                    cc1Var.e = mz3.d;
                    mz3Var.a();
                    mz3Var.b();
                    sk1Var.d = 3;
                    break;
                }
                break;
        }
    }

    @Override // defpackage.kn3, java.io.Flushable
    public final void flush() {
        int i = this.n;
        Object obj = this.q;
        switch (i) {
            case 0:
                try {
                    ((kn3) this.p).flush();
                } catch (IOException e) {
                    this.o = true;
                    ((v) obj).k(e);
                    return;
                }
                break;
            default:
                if (!this.o) {
                    ((c23) ((sk1) obj).c.q).flush();
                    break;
                }
                break;
        }
    }

    @Override // defpackage.kn3
    public final mz3 g() {
        switch (this.n) {
            case 0:
                return ((kn3) this.p).g();
            default:
                return (cc1) this.p;
        }
    }

    public t41(kn3 kn3Var, v vVar) {
        this.p = kn3Var;
        this.q = vVar;
    }
}

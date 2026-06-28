package defpackage;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class c23 implements ez {
    public final kn3 n;
    public final sy o;
    public boolean p;

    public c23(kn3 kn3Var) {
        kn3Var.getClass();
        this.n = kn3Var;
        this.o = new sy();
    }

    @Override // defpackage.kn3
    public final void J(long j, sy syVar) {
        syVar.getClass();
        if (this.p) {
            k21.n("closed");
        } else {
            this.o.J(j, syVar);
            b();
        }
    }

    public final ez b() {
        if (this.p) {
            k21.n("closed");
            return null;
        }
        sy syVar = this.o;
        long jB = syVar.b();
        if (jB > 0) {
            this.n.J(jB, syVar);
        }
        return this;
    }

    @Override // defpackage.kn3, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        kn3 kn3Var = this.n;
        if (this.p) {
            return;
        }
        try {
            sy syVar = this.o;
            long j = syVar.o;
            if (j > 0) {
                kn3Var.J(j, syVar);
            }
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            kn3Var.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.p = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // defpackage.ez
    public final ez e0(String str) {
        str.getClass();
        if (this.p) {
            k21.n("closed");
            return null;
        }
        this.o.u0(str);
        b();
        return this;
    }

    @Override // defpackage.ez, defpackage.kn3, java.io.Flushable
    public final void flush() {
        if (this.p) {
            k21.n("closed");
            return;
        }
        sy syVar = this.o;
        long j = syVar.o;
        kn3 kn3Var = this.n;
        if (j > 0) {
            kn3Var.J(j, syVar);
        }
        kn3Var.flush();
    }

    @Override // defpackage.kn3
    public final mz3 g() {
        return this.n.g();
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.p;
    }

    public final ez j(long j) {
        if (this.p) {
            k21.n("closed");
            return null;
        }
        this.o.p0(j);
        b();
        return this;
    }

    @Override // defpackage.ez
    public final ez m(g00 g00Var) {
        g00Var.getClass();
        if (this.p) {
            k21.n("closed");
            return null;
        }
        this.o.j0(g00Var);
        b();
        return this;
    }

    public final String toString() {
        return "buffer(" + this.n + ')';
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        if (this.p) {
            k21.n("closed");
            return 0;
        }
        int iWrite = this.o.write(byteBuffer);
        b();
        return iWrite;
    }

    @Override // defpackage.ez
    public final ez writeByte(int i) {
        if (this.p) {
            k21.n("closed");
            return null;
        }
        this.o.o0(i);
        b();
        return this;
    }

    @Override // defpackage.ez
    public final ez writeInt(int i) {
        if (this.p) {
            k21.n("closed");
            return null;
        }
        this.o.r0(i);
        b();
        return this;
    }

    @Override // defpackage.ez
    public final ez writeShort(int i) {
        if (this.p) {
            k21.n("closed");
            return null;
        }
        this.o.s0(i);
        b();
        return this;
    }

    @Override // defpackage.ez
    public final ez write(byte[] bArr) {
        if (!this.p) {
            this.o.i0(bArr.length, bArr);
            b();
            return this;
        }
        k21.n("closed");
        return null;
    }
}

package defpackage;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ak3 implements zj3, ty {
    public static final byte[] r = {13, 10};
    public final qz0 n;
    public final uz o;
    public final int p;
    public OutputStream q;

    public ak3(qz0 qz0Var) {
        w80.N(8192, "Buffer size");
        this.n = qz0Var;
        this.o = new uz(8192);
        this.p = 8192;
    }

    @Override // defpackage.zj3
    public final void a(String str) throws IOException {
        if (str == null) {
            return;
        }
        if (str.length() > 0) {
            for (int i = 0; i < str.length(); i++) {
                write(str.charAt(i));
            }
        }
        write(r, 0, 2);
    }

    @Override // defpackage.zj3
    public final qz0 b() {
        return this.n;
    }

    public final void c() throws IOException {
        uz uzVar = this.o;
        int i = uzVar.o;
        if (i > 0) {
            byte[] bArr = uzVar.n;
            mt1.O(this.q, "Output stream");
            this.q.write(bArr, 0, i);
            uzVar.o = 0;
            this.n.getClass();
        }
    }

    @Override // defpackage.zj3
    public final void e(b40 b40Var) throws IOException {
        if (b40Var == null) {
            return;
        }
        int i = b40Var.o;
        int i2 = 0;
        while (i > 0) {
            uz uzVar = this.o;
            int iMin = Math.min(uzVar.n.length - uzVar.o, i);
            if (iMin > 0) {
                uzVar.a(b40Var, i2, iMin);
            }
            if (uzVar.o == uzVar.n.length) {
                c();
            }
            i2 += iMin;
            i -= iMin;
        }
        write(r, 0, 2);
    }

    @Override // defpackage.zj3
    public final void flush() {
        c();
        OutputStream outputStream = this.q;
        if (outputStream != null) {
            outputStream.flush();
        }
    }

    @Override // defpackage.ty
    public final int length() {
        return this.o.o;
    }

    @Override // defpackage.zj3
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        if (bArr == null) {
            return;
        }
        if (i2 <= this.p) {
            uz uzVar = this.o;
            byte[] bArr2 = uzVar.n;
            if (i2 <= bArr2.length) {
                if (i2 > bArr2.length - uzVar.o) {
                    c();
                }
                uzVar.b(bArr, i, i2);
                return;
            }
        }
        c();
        mt1.O(this.q, "Output stream");
        this.q.write(bArr, i, i2);
        this.n.getClass();
    }

    @Override // defpackage.zj3
    public final void write(int i) throws IOException {
        if (this.p > 0) {
            uz uzVar = this.o;
            if (uzVar.o == uzVar.n.length) {
                c();
            }
            int i2 = uzVar.o + 1;
            if (i2 > uzVar.n.length) {
                uzVar.c(i2);
            }
            uzVar.n[uzVar.o] = (byte) i;
            uzVar.o = i2;
            return;
        }
        c();
        this.q.write(i);
    }
}

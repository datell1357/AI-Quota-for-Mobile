package defpackage;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class qp3 implements zj3, ty {
    public static final byte[] x = {13, 10};
    public OutputStream n;
    public uz o;
    public Charset p;
    public boolean q;
    public int r;
    public qz0 s;
    public CodingErrorAction t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public CodingErrorAction f281u;
    public CharsetEncoder v;
    public ByteBuffer w;

    @Override // defpackage.zj3
    public final void a(String str) {
        if (str == null) {
            return;
        }
        if (str.length() > 0) {
            if (this.q) {
                for (int i = 0; i < str.length(); i++) {
                    write(str.charAt(i));
                }
            } else {
                f(CharBuffer.wrap(str));
            }
        }
        write(x, 0, 2);
    }

    @Override // defpackage.zj3
    public final qz0 b() {
        return this.s;
    }

    public final void c() throws IOException {
        uz uzVar = this.o;
        int i = uzVar.o;
        if (i > 0) {
            this.n.write(uzVar.n, 0, i);
            this.o.o = 0;
            this.s.getClass();
        }
    }

    public final void d(CoderResult coderResult) throws CharacterCodingException {
        if (coderResult.isError()) {
            coderResult.throwException();
        }
        this.w.flip();
        while (true) {
            boolean zHasRemaining = this.w.hasRemaining();
            ByteBuffer byteBuffer = this.w;
            if (!zHasRemaining) {
                byteBuffer.compact();
                return;
            }
            write(byteBuffer.get());
        }
    }

    @Override // defpackage.zj3
    public final void e(b40 b40Var) {
        if (b40Var == null) {
            return;
        }
        if (this.q) {
            int i = b40Var.o;
            int i2 = 0;
            while (i > 0) {
                uz uzVar = this.o;
                int iMin = Math.min(uzVar.n.length - uzVar.o, i);
                if (iMin > 0) {
                    this.o.a(b40Var, i2, iMin);
                }
                uz uzVar2 = this.o;
                if (uzVar2.o == uzVar2.n.length) {
                    c();
                }
                i2 += iMin;
                i -= iMin;
            }
        } else {
            f(CharBuffer.wrap(b40Var.n, 0, b40Var.o));
        }
        write(x, 0, 2);
    }

    public final void f(CharBuffer charBuffer) throws CharacterCodingException {
        if (!charBuffer.hasRemaining()) {
            return;
        }
        if (this.v == null) {
            CharsetEncoder charsetEncoderNewEncoder = this.p.newEncoder();
            this.v = charsetEncoderNewEncoder;
            charsetEncoderNewEncoder.onMalformedInput(this.t);
            this.v.onUnmappableCharacter(this.f281u);
        }
        if (this.w == null) {
            this.w = ByteBuffer.allocate(1024);
        }
        this.v.reset();
        while (true) {
            boolean zHasRemaining = charBuffer.hasRemaining();
            CharsetEncoder charsetEncoder = this.v;
            if (!zHasRemaining) {
                d(charsetEncoder.flush(this.w));
                this.w.clear();
                return;
            }
            d(charsetEncoder.encode(charBuffer, this.w, true));
        }
    }

    @Override // defpackage.zj3
    public final void flush() {
        c();
        this.n.flush();
    }

    @Override // defpackage.ty
    public final int length() {
        return this.o.o;
    }

    @Override // defpackage.zj3
    public final void write(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            return;
        }
        if (i2 <= this.r) {
            uz uzVar = this.o;
            byte[] bArr2 = uzVar.n;
            if (i2 <= bArr2.length) {
                if (i2 > bArr2.length - uzVar.o) {
                    c();
                }
                this.o.b(bArr, i, i2);
                return;
            }
        }
        c();
        this.n.write(bArr, i, i2);
        this.s.getClass();
    }

    @Override // defpackage.zj3
    public final void write(int i) {
        uz uzVar = this.o;
        if (uzVar.o == uzVar.n.length) {
            c();
        }
        uz uzVar2 = this.o;
        int i2 = uzVar2.o + 1;
        if (i2 > uzVar2.n.length) {
            uzVar2.c(i2);
        }
        uzVar2.n[uzVar2.o] = (byte) i;
        uzVar2.o = i2;
    }
}

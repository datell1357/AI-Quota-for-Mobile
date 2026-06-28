package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.net.SocketException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pp3 implements x11, xj3, ty {
    public CharBuffer A;
    public final Socket B;
    public boolean C;
    public final InputStream n;
    public final byte[] o;
    public final uz p;
    public final Charset q;
    public final boolean r;
    public final int s;
    public final int t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final qz0 f262u;
    public final CodingErrorAction v;
    public final CodingErrorAction w;
    public int x;
    public int y;
    public CharsetDecoder z;

    public pp3(Socket socket, int i, km1 km1Var) throws IOException {
        w80.L(socket, "Socket");
        this.B = socket;
        this.C = false;
        i = i < 0 ? socket.getReceiveBufferSize() : i;
        i = i < 1024 ? 1024 : i;
        InputStream inputStream = socket.getInputStream();
        w80.L(inputStream, "Input stream");
        w80.J(i, "Buffer size");
        w80.L(km1Var, "HTTP parameters");
        this.n = inputStream;
        this.o = new byte[i];
        this.x = 0;
        this.y = 0;
        this.p = new uz(i);
        String str = (String) km1Var.c("http.protocol.element-charset");
        Charset charsetForName = str != null ? Charset.forName(str) : uf0.b;
        this.q = charsetForName;
        this.r = charsetForName.equals(uf0.b);
        this.z = null;
        f1 f1Var = (f1) km1Var;
        this.s = f1Var.e(-1, "http.connection.max-line-length");
        this.t = f1Var.e(512, "http.connection.min-chunk-limit");
        this.f262u = new qz0(7);
        CodingErrorAction codingErrorAction = (CodingErrorAction) km1Var.c("http.malformed.input.action");
        this.v = codingErrorAction == null ? CodingErrorAction.REPORT : codingErrorAction;
        CodingErrorAction codingErrorAction2 = (CodingErrorAction) km1Var.c("http.unmappable.input.action");
        this.w = codingErrorAction2 == null ? CodingErrorAction.REPORT : codingErrorAction2;
    }

    public final int a(b40 b40Var, ByteBuffer byteBuffer) {
        int iF = 0;
        if (!byteBuffer.hasRemaining()) {
            return 0;
        }
        if (this.z == null) {
            CharsetDecoder charsetDecoderNewDecoder = this.q.newDecoder();
            this.z = charsetDecoderNewDecoder;
            charsetDecoderNewDecoder.onMalformedInput(this.v);
            this.z.onUnmappableCharacter(this.w);
        }
        if (this.A == null) {
            this.A = CharBuffer.allocate(1024);
        }
        this.z.reset();
        while (true) {
            boolean zHasRemaining = byteBuffer.hasRemaining();
            CharsetDecoder charsetDecoder = this.z;
            CharBuffer charBuffer = this.A;
            if (!zHasRemaining) {
                int iF2 = f(charsetDecoder.flush(charBuffer), b40Var) + iF;
                this.A.clear();
                return iF2;
            }
            iF += f(charsetDecoder.decode(byteBuffer, charBuffer, true), b40Var);
        }
    }

    @Override // defpackage.xj3
    public final qz0 b() {
        return this.f262u;
    }

    public final int c() throws IOException {
        int i = this.x;
        byte[] bArr = this.o;
        if (i > 0) {
            int i2 = this.y - i;
            if (i2 > 0) {
                System.arraycopy(bArr, i, bArr, 0, i2);
            }
            this.x = 0;
            this.y = i2;
        }
        int i3 = this.y;
        int i4 = this.n.read(bArr, i3, bArr.length - i3);
        if (i4 == -1) {
            i4 = -1;
        } else {
            this.y = i3 + i4;
            this.f262u.getClass();
        }
        this.C = i4 == -1;
        return i4;
    }

    @Override // defpackage.xj3
    public final int d(b40 b40Var) {
        byte[] bArr;
        int i;
        w80.L(b40Var, "Char array buffer");
        int iC = 0;
        boolean z = true;
        while (true) {
            boolean z2 = this.r;
            uz uzVar = this.p;
            if (!z) {
                if (iC == -1 && uzVar.o == 0) {
                    return -1;
                }
                int iA = uzVar.o;
                if (iA > 0) {
                    byte[] bArr2 = uzVar.n;
                    if (bArr2[iA - 1] == 10) {
                        iA--;
                    }
                    if (iA > 0 && bArr2[iA - 1] == 13) {
                        iA--;
                    }
                }
                byte[] bArr3 = uzVar.n;
                if (z2) {
                    b40Var.c(bArr3, 0, iA);
                } else {
                    iA = a(b40Var, ByteBuffer.wrap(bArr3, 0, iA));
                }
                uzVar.o = 0;
                return iA;
            }
            int i2 = this.x;
            while (true) {
                int i3 = this.y;
                bArr = this.o;
                if (i2 >= i3) {
                    i2 = -1;
                    break;
                }
                if (bArr[i2] == 10) {
                    break;
                }
                i2++;
            }
            if (i2 != -1) {
                boolean z3 = uzVar.o == 0;
                int i4 = this.x;
                if (z3) {
                    this.x = i2 + 1;
                    if (i2 > i4 && bArr[i2 - 1] == 13) {
                        i2--;
                    }
                    int i5 = i2 - i4;
                    if (!z2) {
                        return a(b40Var, ByteBuffer.wrap(bArr, i4, i5));
                    }
                    b40Var.c(bArr, i4, i5);
                    return i5;
                }
                int i6 = i2 + 1;
                uzVar.b(bArr, i4, i6 - i4);
                this.x = i6;
            } else {
                if (g()) {
                    int i7 = this.y;
                    int i8 = this.x;
                    uzVar.b(bArr, i8, i7 - i8);
                    this.x = this.y;
                }
                iC = c();
                if (iC == -1) {
                }
                i = this.s;
                if (i <= 0 && uzVar.o >= i) {
                    p61.k("Maximum line length limit exceeded");
                    return 0;
                }
            }
            z = false;
            i = this.s;
            if (i <= 0) {
            }
        }
    }

    @Override // defpackage.x11
    public final boolean e() {
        return this.C;
    }

    public final int f(CoderResult coderResult, b40 b40Var) throws CharacterCodingException {
        if (coderResult.isError()) {
            coderResult.throwException();
        }
        this.A.flip();
        int iRemaining = this.A.remaining();
        while (true) {
            boolean zHasRemaining = this.A.hasRemaining();
            CharBuffer charBuffer = this.A;
            if (!zHasRemaining) {
                charBuffer.compact();
                return iRemaining;
            }
            b40Var.a(charBuffer.get());
        }
    }

    public final boolean g() {
        return this.x < this.y;
    }

    @Override // defpackage.xj3
    public final boolean h(int i) throws SocketException {
        boolean zG = g();
        if (zG) {
            return zG;
        }
        Socket socket = this.B;
        int soTimeout = socket.getSoTimeout();
        try {
            socket.setSoTimeout(i);
            c();
            return g();
        } finally {
            socket.setSoTimeout(soTimeout);
        }
    }

    @Override // defpackage.ty
    public final int length() {
        return this.y - this.x;
    }

    @Override // defpackage.xj3
    public final int read(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            return 0;
        }
        boolean zG = g();
        byte[] bArr2 = this.o;
        if (zG) {
            int iMin = Math.min(i2, this.y - this.x);
            System.arraycopy(bArr2, this.x, bArr, i, iMin);
            this.x += iMin;
            return iMin;
        }
        if (i2 > this.t) {
            int i3 = this.n.read(bArr, i, i2);
            if (i3 > 0) {
                this.f262u.getClass();
            }
            return i3;
        }
        while (!g()) {
            if (c() == -1) {
                return -1;
            }
        }
        int iMin2 = Math.min(i2, this.y - this.x);
        System.arraycopy(bArr2, this.x, bArr, i, iMin2);
        this.x += iMin2;
        return iMin2;
    }

    @Override // defpackage.xj3
    public final int read() {
        while (!g()) {
            if (c() == -1) {
                return -1;
            }
        }
        int i = this.x;
        this.x = i + 1;
        return this.o[i] & 255;
    }
}

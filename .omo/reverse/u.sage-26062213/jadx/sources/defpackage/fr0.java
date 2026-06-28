package defpackage;

import com.google.android.gms.common.api.Api;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PushbackInputStream;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import java.util.zip.ZipException;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class fr0 extends InputStream {
    public final /* synthetic */ int n;
    public final Object o;

    public fr0(InputStream inputStream) throws IOException {
        this.n = 0;
        PushbackInputStream pushbackInputStream = new PushbackInputStream(inputStream, 2);
        int i = pushbackInputStream.read();
        int i2 = pushbackInputStream.read();
        if (i == -1 || i2 == -1) {
            throw new ZipException("Unexpected end of stream");
        }
        pushbackInputStream.unread(i2);
        pushbackInputStream.unread(i);
        int i3 = i & 255;
        er0 er0Var = new er0(pushbackInputStream, new Inflater(((i & 15) == 8 && ((i3 >> 4) & 15) <= 7 && ((i3 << 8) | (i2 & 255)) % 31 == 0) ? false : true));
        er0Var.n = false;
        this.o = er0Var;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 0:
                return ((er0) obj).available();
            case 1:
                d23 d23Var = (d23) obj;
                if (!d23Var.p) {
                    return (int) Math.min(d23Var.o.o, 2147483647L);
                }
                p61.k("closed");
                return 0;
            default:
                return super.available();
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 0:
                ((er0) obj).close();
                break;
            case 1:
                ((d23) obj).close();
                break;
            default:
                super.close();
                break;
        }
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        switch (this.n) {
            case 0:
                ((er0) this.o).mark(i);
                break;
            default:
                super.mark(i);
                break;
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        switch (this.n) {
            case 0:
                return ((er0) this.o).markSupported();
            default:
                return super.markSupported();
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.n;
        Object obj = this.o;
        switch (i3) {
            case 0:
                return ((er0) obj).read(bArr, i, i2);
            case 1:
                bArr.getClass();
                d23 d23Var = (d23) obj;
                sy syVar = d23Var.o;
                if (d23Var.p) {
                    p61.k("closed");
                    return 0;
                }
                is0.q(bArr.length, i, i2);
                if (syVar.o == 0 && d23Var.n.l(8192L, syVar) == -1) {
                    return -1;
                }
                return syVar.read(bArr, i, i2);
            case 2:
                el0 el0Var = (el0) obj;
                try {
                    int iInflate = ((Inflater) el0Var.o).inflate(bArr, i, i2);
                    if (iInflate > 0) {
                        return iInflate;
                    }
                    if (i2 == 0) {
                        return 0;
                    }
                    if (((Inflater) el0Var.o).getRemaining() == 0) {
                        return -1;
                    }
                    int remaining = ((Inflater) el0Var.o).getRemaining();
                    StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 70 + String.valueOf(remaining).length());
                    sb.append("Read no bytes (requested up to ");
                    sb.append(i2);
                    sb.append(") but did not reach end of stream, had ");
                    sb.append(remaining);
                    throw new IOException(sb.toString());
                } catch (DataFormatException e) {
                    throw new IOException(e);
                }
            default:
                return ((cn4) obj).f(bArr, i, i2);
        }
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        switch (this.n) {
            case 0:
                ((er0) this.o).reset();
                break;
            default:
                super.reset();
                break;
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 0:
                return ((er0) obj).skip(j);
            case 3:
                if (j <= 0) {
                    return 0L;
                }
                int i2 = j > 2147483647L ? Api.BaseClientBuilder.API_PRIORITY_OTHER : (int) j;
                ((cn4) obj).g(i2);
                return i2;
            default:
                return super.skip(j);
        }
    }

    public String toString() {
        switch (this.n) {
            case 1:
                return ((d23) this.o) + ".inputStream()";
            default:
                return super.toString();
        }
    }

    @Override // java.io.InputStream
    public long transferTo(OutputStream outputStream) throws IOException {
        switch (this.n) {
            case 1:
                outputStream.getClass();
                d23 d23Var = (d23) this.o;
                sy syVar = d23Var.o;
                if (d23Var.p) {
                    p61.k("closed");
                    return 0L;
                }
                long j = 0;
                while (true) {
                    if (syVar.o == 0 && d23Var.n.l(8192L, syVar) == -1) {
                        return j;
                    }
                    long j2 = syVar.o;
                    j += j2;
                    is0.q(j2, 0L, j2);
                    qg3 qg3Var = syVar.n;
                    while (j2 > 0) {
                        qg3Var.getClass();
                        int iMin = (int) Math.min(j2, qg3Var.c - qg3Var.b);
                        outputStream.write(qg3Var.a, qg3Var.b, iMin);
                        int i = qg3Var.b + iMin;
                        qg3Var.b = i;
                        long j3 = iMin;
                        syVar.o -= j3;
                        j2 -= j3;
                        if (i == qg3Var.c) {
                            qg3 qg3VarA = qg3Var.a();
                            syVar.n = qg3VarA;
                            sg3.a(qg3Var);
                            qg3Var = qg3VarA;
                        }
                    }
                }
                break;
            default:
                return super.transferTo(outputStream);
        }
    }

    public fr0(el0 el0Var, cn4 cn4Var) {
        this.n = 3;
        this.o = cn4Var;
    }

    public /* synthetic */ fr0(Closeable closeable, int i) {
        this.n = i;
        this.o = closeable;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 0:
                return ((er0) obj).read();
            case 1:
                d23 d23Var = (d23) obj;
                sy syVar = d23Var.o;
                if (d23Var.p) {
                    p61.k("closed");
                    return 0;
                }
                if (syVar.o == 0 && d23Var.n.l(8192L, syVar) == -1) {
                    return -1;
                }
                return syVar.readByte() & 255;
            case 2:
                byte[] bArr = new byte[1];
                if (read(bArr, 0, 1) == -1) {
                    return -1;
                }
                return bArr[0];
            default:
                byte[] bArr2 = new byte[1];
                if (((cn4) obj).f(bArr2, 0, 1) == -1) {
                    return -1;
                }
                return bArr2[0];
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        switch (this.n) {
            case 0:
                return ((er0) this.o).read(bArr);
            default:
                return super.read(bArr);
        }
    }
}

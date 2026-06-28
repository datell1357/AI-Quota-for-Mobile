package defpackage;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class dz extends bm1 implements z11 {
    public final /* synthetic */ int o = 1;
    public final Object p;

    public dz(xl1 xl1Var) throws IOException {
        super(xl1Var);
        if (xl1Var.isRepeatable() && xl1Var.getContentLength() >= 0) {
            this.p = null;
            return;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        xl1Var.writeTo(byteArrayOutputStream);
        byteArrayOutputStream.flush();
        this.p = byteArrayOutputStream.toByteArray();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0010  */
    @Override // defpackage.z11
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.io.InputStream r3) {
        /*
            r2 = this;
            java.lang.Object r0 = r2.p
            ae0 r0 = (defpackage.ae0) r0
            if (r0 == 0) goto L10
            java.util.concurrent.atomic.AtomicBoolean r1 = r0.q     // Catch: java.lang.Throwable -> L17 java.lang.RuntimeException -> L19 java.io.IOException -> L1b
            boolean r1 = r1.get()     // Catch: java.lang.Throwable -> L17 java.lang.RuntimeException -> L19 java.io.IOException -> L1b
            if (r1 != 0) goto L10
            r1 = 1
            goto L11
        L10:
            r1 = 0
        L11:
            if (r3 == 0) goto L1f
            r3.close()     // Catch: java.lang.Throwable -> L17 java.lang.RuntimeException -> L19 java.io.IOException -> L1b java.net.SocketException -> L1d
            goto L1f
        L17:
            r3 = move-exception
            goto L31
        L19:
            r3 = move-exception
            goto L29
        L1b:
            r3 = move-exception
            goto L2d
        L1d:
            r3 = move-exception
            goto L25
        L1f:
            if (r0 == 0) goto L35
            r0.r()     // Catch: java.lang.Throwable -> L17 java.lang.RuntimeException -> L19 java.io.IOException -> L1b java.net.SocketException -> L1d
            goto L35
        L25:
            if (r1 != 0) goto L28
            goto L35
        L28:
            throw r3     // Catch: java.lang.Throwable -> L17 java.lang.RuntimeException -> L19 java.io.IOException -> L1b
        L29:
            r2.d()     // Catch: java.lang.Throwable -> L17
            throw r3     // Catch: java.lang.Throwable -> L17
        L2d:
            r2.d()     // Catch: java.lang.Throwable -> L17
            throw r3     // Catch: java.lang.Throwable -> L17
        L31:
            r2.e()
            throw r3
        L35:
            r2.e()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.dz.a(java.io.InputStream):void");
    }

    @Override // defpackage.z11
    public void b() {
        e();
    }

    @Override // defpackage.z11
    public void c(InputStream inputStream) {
        try {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    d();
                    throw e;
                } catch (RuntimeException e2) {
                    d();
                    throw e2;
                }
            }
            ae0 ae0Var = (ae0) this.p;
            if (ae0Var != null) {
                ae0Var.r();
            }
            e();
        } catch (Throwable th) {
            e();
            throw th;
        }
    }

    public void d() {
        ae0 ae0Var = (ae0) this.p;
        if (ae0Var != null) {
            ae0Var.j();
        }
    }

    public void e() {
        ae0 ae0Var = (ae0) this.p;
        if (ae0Var != null) {
            ae0Var.A(false);
        }
    }

    @Override // defpackage.xl1
    public final InputStream getContent() {
        int i = this.o;
        Object obj = this.p;
        xl1 xl1Var = this.n;
        switch (i) {
            case 0:
                byte[] bArr = (byte[]) obj;
                return bArr != null ? new ByteArrayInputStream(bArr) : xl1Var.getContent();
            case 1:
                ((p11) obj).t = true;
                return xl1Var.getContent();
            default:
                return new y11(xl1Var.getContent(), this);
        }
    }

    @Override // defpackage.bm1, defpackage.xl1
    public long getContentLength() {
        switch (this.o) {
            case 0:
                return ((byte[]) this.p) != null ? r0.length : this.n.getContentLength();
            default:
                return super.getContentLength();
        }
    }

    @Override // defpackage.bm1, defpackage.xl1
    public boolean isChunked() {
        switch (this.o) {
            case 0:
                return ((byte[]) this.p) == null && this.n.isChunked();
            default:
                return super.isChunked();
        }
    }

    @Override // defpackage.bm1, defpackage.xl1
    public boolean isRepeatable() {
        switch (this.o) {
            case 0:
                return true;
            case 1:
            default:
                return super.isRepeatable();
            case 2:
                return false;
        }
    }

    @Override // defpackage.bm1, defpackage.xl1
    public boolean isStreaming() {
        switch (this.o) {
            case 0:
                return ((byte[]) this.p) == null && this.n.isStreaming();
            default:
                return super.isStreaming();
        }
    }

    public String toString() {
        switch (this.o) {
            case 2:
                return "ResponseEntityProxy{" + this.n + '}';
            default:
                return super.toString();
        }
    }

    @Override // defpackage.bm1, defpackage.xl1
    public final void writeTo(OutputStream outputStream) throws IOException {
        int i = this.o;
        Object obj = this.p;
        try {
            switch (i) {
                case 0:
                    byte[] bArr = (byte[]) obj;
                    if (bArr != null) {
                        outputStream.write(bArr);
                        return;
                    } else {
                        super.writeTo(outputStream);
                        return;
                    }
                case 1:
                    ((p11) obj).t = true;
                    super.writeTo(outputStream);
                    return;
                default:
                    try {
                        try {
                            this.n.writeTo(outputStream);
                            ae0 ae0Var = (ae0) obj;
                            if (ae0Var != null) {
                                ae0Var.r();
                                break;
                            }
                            return;
                        } catch (RuntimeException e) {
                            d();
                            throw e;
                        }
                    } catch (IOException e2) {
                        d();
                        throw e2;
                    }
            }
        } finally {
            e();
        }
        e();
    }

    public dz(xl1 xl1Var, ae0 ae0Var) {
        super(xl1Var);
        this.p = ae0Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dz(p11 p11Var, xl1 xl1Var) {
        super(xl1Var);
        this.p = p11Var;
    }
}

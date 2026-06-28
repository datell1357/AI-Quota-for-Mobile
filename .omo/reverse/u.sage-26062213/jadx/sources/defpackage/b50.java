package defpackage;

import com.google.android.gms.common.api.Api;
import java.io.InputStream;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class b50 extends InputStream {
    public final xj3 n;
    public final b40 o;
    public final nc2 p;
    public int q;
    public long r;
    public long s;
    public boolean t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f25u = false;

    public b50(xj3 xj3Var) {
        w80.L(xj3Var, "Session input buffer");
        this.n = xj3Var;
        this.s = 0L;
        this.o = new b40(16);
        this.p = nc2.p;
        this.q = 1;
    }

    @Override // java.io.InputStream
    public final int available() {
        if (this.n instanceof ty) {
            return (int) Math.min(((ty) r0).length(), this.r - this.s);
        }
        return 0;
    }

    public final long b() throws p92, c70 {
        int i = this.q;
        xj3 xj3Var = this.n;
        b40 b40Var = this.o;
        if (i != 1) {
            if (i != 3) {
                k21.n("Inconsistent codec state");
                return 0L;
            }
            b40Var.o = 0;
            if (xj3Var.d(b40Var) == -1) {
                throw new p92("CRLF expected at end of chunk");
            }
            if (!b40Var.isEmpty()) {
                throw new p92("Unexpected content at the end of chunk");
            }
            this.q = 1;
        }
        b40Var.o = 0;
        if (xj3Var.d(b40Var) == -1) {
            throw new c70(cm1.a("Premature end of chunk coded message body: closing chunk expected"));
        }
        int iG = b40Var.g(59, 0, b40Var.o);
        if (iG < 0) {
            iG = b40Var.o;
        }
        String strI = b40Var.i(0, iG);
        try {
            return Long.parseLong(strI, 16);
        } catch (NumberFormatException unused) {
            throw new p92("Bad chunk header: ".concat(strI));
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f25u) {
            return;
        }
        try {
            if (!this.t && this.q != Integer.MAX_VALUE) {
                do {
                } while (read(new byte[2048], 0, 2048) >= 0);
            }
        } finally {
            this.t = true;
            this.f25u = true;
        }
    }

    public final void j() throws p92, c70, mc2 {
        if (this.q == Integer.MAX_VALUE) {
            throw new p92("Corrupt data stream");
        }
        try {
            long jB = b();
            this.r = jB;
            if (jB < 0) {
                throw new p92("Negative chunk size");
            }
            this.q = 2;
            this.s = 0L;
            if (jB == 0) {
                this.t = true;
                r();
            }
        } catch (p92 e) {
            this.q = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            throw e;
        }
    }

    public final void r() throws p92, mc2 {
        try {
            xj3 xj3Var = this.n;
            nc2 nc2Var = this.p;
            m1.c(xj3Var, nc2Var.o, nc2Var.n, bv.b, new ArrayList());
        } catch (cm1 e) {
            p92 p92Var = new p92("Invalid footer: " + e.getMessage());
            p92Var.initCause(e);
            throw p92Var;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0014, code lost:
    
        if (r8.t != false) goto L11;
     */
    @Override // java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int read(byte[] r9, int r10, int r11) throws java.io.IOException {
        /*
            r8 = this;
            boolean r0 = r8.f25u
            if (r0 != 0) goto L5d
            boolean r0 = r8.t
            r1 = -1
            if (r0 == 0) goto La
            goto L16
        La:
            int r0 = r8.q
            r2 = 2
            if (r0 == r2) goto L17
            r8.j()
            boolean r0 = r8.t
            if (r0 == 0) goto L17
        L16:
            return r1
        L17:
            long r2 = (long) r11
            long r4 = r8.r
            long r6 = r8.s
            long r4 = r4 - r6
            long r2 = java.lang.Math.min(r2, r4)
            int r11 = (int) r2
            xj3 r0 = r8.n
            int r9 = r0.read(r9, r10, r11)
            if (r9 == r1) goto L3a
            long r10 = r8.s
            long r0 = (long) r9
            long r10 = r10 + r0
            r8.s = r10
            long r0 = r8.r
            int r10 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r10 < 0) goto L39
            r10 = 3
            r8.q = r10
        L39:
            return r9
        L3a:
            r9 = 1
            r8.t = r9
            x24 r9 = new x24
            long r10 = r8.r
            java.lang.Long r10 = java.lang.Long.valueOf(r10)
            long r0 = r8.s
            java.lang.Long r8 = java.lang.Long.valueOf(r0)
            java.lang.Object[] r8 = new java.lang.Object[]{r10, r8}
            java.lang.String r10 = "Truncated chunk (expected size: %,d; actual size: %,d)"
            java.lang.String r8 = java.lang.String.format(r10, r8)
            java.lang.String r8 = defpackage.cm1.a(r8)
            r9.<init>(r8)
            throw r9
        L5d:
            java.lang.String r8 = "Attempted read from closed stream."
            defpackage.p61.k(r8)
            r8 = 0
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.b50.read(byte[], int, int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0014, code lost:
    
        if (r5.t != false) goto L11;
     */
    @Override // java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int read() throws java.io.IOException {
        /*
            r5 = this;
            boolean r0 = r5.f25u
            if (r0 != 0) goto L30
            boolean r0 = r5.t
            r1 = -1
            if (r0 == 0) goto La
            goto L16
        La:
            int r0 = r5.q
            r2 = 2
            if (r0 == r2) goto L17
            r5.j()
            boolean r0 = r5.t
            if (r0 == 0) goto L17
        L16:
            return r1
        L17:
            xj3 r0 = r5.n
            int r0 = r0.read()
            if (r0 == r1) goto L2f
            long r1 = r5.s
            r3 = 1
            long r1 = r1 + r3
            r5.s = r1
            long r3 = r5.r
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 < 0) goto L2f
            r1 = 3
            r5.q = r1
        L2f:
            return r0
        L30:
            java.lang.String r5 = "Attempted read from closed stream."
            defpackage.p61.k(r5)
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.b50.read():int");
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }
}

package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class xn0 extends bm1 {
    public final gr0 o;
    public sz1 p;

    public xn0(xl1 xl1Var, gr0 gr0Var) {
        super(xl1Var);
        this.o = gr0Var;
    }

    @Override // defpackage.xl1
    public final InputStream getContent() {
        xl1 xl1Var = this.n;
        boolean zIsStreaming = xl1Var.isStreaming();
        gr0 gr0Var = this.o;
        if (!zIsStreaming) {
            return new sz1(xl1Var.getContent(), gr0Var);
        }
        if (this.p == null) {
            this.p = new sz1(xl1Var.getContent(), gr0Var);
        }
        return this.p;
    }

    @Override // defpackage.bm1, defpackage.xl1
    public final gj1 getContentEncoding() {
        return null;
    }

    @Override // defpackage.bm1, defpackage.xl1
    public final long getContentLength() {
        return -1L;
    }

    @Override // defpackage.bm1, defpackage.xl1
    public final void writeTo(OutputStream outputStream) throws IOException {
        InputStream content = getContent();
        try {
            byte[] bArr = new byte[2048];
            while (true) {
                int i = content.read(bArr);
                if (i == -1) {
                    return;
                } else {
                    outputStream.write(bArr, 0, i);
                }
            }
        } finally {
            content.close();
        }
    }
}

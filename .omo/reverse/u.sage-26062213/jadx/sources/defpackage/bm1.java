package defpackage;

import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class bm1 implements xl1 {
    public final xl1 n;

    public bm1(xl1 xl1Var) {
        w80.L(xl1Var, "Wrapped entity");
        this.n = xl1Var;
    }

    @Override // defpackage.xl1
    public gj1 getContentEncoding() {
        return this.n.getContentEncoding();
    }

    @Override // defpackage.xl1
    public long getContentLength() {
        return this.n.getContentLength();
    }

    @Override // defpackage.xl1
    public final gj1 getContentType() {
        return this.n.getContentType();
    }

    @Override // defpackage.xl1
    public boolean isChunked() {
        return this.n.isChunked();
    }

    @Override // defpackage.xl1
    public boolean isRepeatable() {
        return this.n.isRepeatable();
    }

    @Override // defpackage.xl1
    public boolean isStreaming() {
        return this.n.isStreaming();
    }

    @Override // defpackage.xl1
    public void writeTo(OutputStream outputStream) {
        this.n.writeTo(outputStream);
    }
}

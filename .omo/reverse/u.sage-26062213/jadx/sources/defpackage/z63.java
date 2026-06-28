package defpackage;

import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z63 implements xl1 {
    public final xl1 n;
    public boolean o = false;

    public z63(xl1 xl1Var) {
        this.n = xl1Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean a(um1 um1Var) {
        xl1 entity;
        if (!(um1Var instanceof zl1) || (entity = ((zl1) um1Var).getEntity()) == null) {
            return true;
        }
        if (!(entity instanceof z63) || ((z63) entity).o) {
            return entity.isRepeatable();
        }
        return true;
    }

    @Override // defpackage.xl1
    public final InputStream getContent() {
        return this.n.getContent();
    }

    @Override // defpackage.xl1
    public final gj1 getContentEncoding() {
        return this.n.getContentEncoding();
    }

    @Override // defpackage.xl1
    public final long getContentLength() {
        return this.n.getContentLength();
    }

    @Override // defpackage.xl1
    public final gj1 getContentType() {
        return this.n.getContentType();
    }

    @Override // defpackage.xl1
    public final boolean isChunked() {
        return this.n.isChunked();
    }

    @Override // defpackage.xl1
    public final boolean isRepeatable() {
        return this.n.isRepeatable();
    }

    @Override // defpackage.xl1
    public final boolean isStreaming() {
        return this.n.isStreaming();
    }

    public final String toString() {
        return "RequestEntityProxy{" + this.n + '}';
    }

    @Override // defpackage.xl1
    public final void writeTo(OutputStream outputStream) {
        this.o = true;
        this.n.writeTo(outputStream);
    }
}

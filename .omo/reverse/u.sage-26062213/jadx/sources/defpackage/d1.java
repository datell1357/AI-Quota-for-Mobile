package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class d1 implements xl1 {
    protected static final int OUTPUT_BUFFER_SIZE = 4096;
    protected boolean chunked;
    protected gj1 contentEncoding;
    protected gj1 contentType;

    @Override // defpackage.xl1
    public gj1 getContentEncoding() {
        return this.contentEncoding;
    }

    @Override // defpackage.xl1
    public gj1 getContentType() {
        return this.contentType;
    }

    @Override // defpackage.xl1
    public boolean isChunked() {
        return this.chunked;
    }

    public void setChunked(boolean z) {
        this.chunked = z;
    }

    public void setContentEncoding(String str) {
        setContentEncoding(str != null ? new qu("Content-Encoding", str) : null);
    }

    public void setContentType(String str) {
        setContentType(str != null ? new qu("Content-Type", str) : null);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        if (this.contentType != null) {
            sb.append("Content-Type: ");
            sb.append(this.contentType.getValue());
            sb.append(',');
        }
        if (this.contentEncoding != null) {
            sb.append("Content-Encoding: ");
            sb.append(this.contentEncoding.getValue());
            sb.append(',');
        }
        long contentLength = getContentLength();
        if (contentLength >= 0) {
            sb.append("Content-Length: ");
            sb.append(contentLength);
            sb.append(',');
        }
        sb.append("Chunked: ");
        sb.append(this.chunked);
        sb.append(']');
        return sb.toString();
    }

    public void setContentEncoding(gj1 gj1Var) {
        this.contentEncoding = gj1Var;
    }

    public void setContentType(gj1 gj1Var) {
        this.contentType = gj1Var;
    }

    @Deprecated
    public void consumeContent() {
    }
}

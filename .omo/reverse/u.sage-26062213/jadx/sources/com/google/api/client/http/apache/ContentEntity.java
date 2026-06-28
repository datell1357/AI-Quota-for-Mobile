package com.google.api.client.http.apache;

import com.google.api.client.util.Preconditions;
import com.google.api.client.util.StreamingContent;
import defpackage.d1;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class ContentEntity extends d1 {
    private final long contentLength;
    private final StreamingContent streamingContent;

    public ContentEntity(long j, StreamingContent streamingContent) {
        this.contentLength = j;
        this.streamingContent = (StreamingContent) Preconditions.checkNotNull(streamingContent);
    }

    @Override // defpackage.xl1
    public InputStream getContent() {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.xl1
    public long getContentLength() {
        return this.contentLength;
    }

    @Override // defpackage.xl1
    public boolean isRepeatable() {
        return false;
    }

    @Override // defpackage.xl1
    public boolean isStreaming() {
        return true;
    }

    @Override // defpackage.xl1
    public void writeTo(OutputStream outputStream) {
        if (this.contentLength != 0) {
            this.streamingContent.writeTo(outputStream);
        }
    }
}

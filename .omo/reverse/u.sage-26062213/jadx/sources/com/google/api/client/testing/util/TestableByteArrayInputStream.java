package com.google.api.client.testing.util;

import java.io.ByteArrayInputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class TestableByteArrayInputStream extends ByteArrayInputStream {
    private boolean closed;

    public TestableByteArrayInputStream(byte[] bArr) {
        super(bArr);
    }

    @Override // java.io.ByteArrayInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.closed = true;
    }

    public final byte[] getBuffer() {
        return ((ByteArrayInputStream) this).buf;
    }

    public final boolean isClosed() {
        return this.closed;
    }

    public TestableByteArrayInputStream(byte[] bArr, int i, int i2) {
        super(bArr);
    }
}

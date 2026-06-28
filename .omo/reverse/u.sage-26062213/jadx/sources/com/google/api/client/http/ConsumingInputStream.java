package com.google.api.client.http;

import defpackage.c00;
import java.io.FilterInputStream;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class ConsumingInputStream extends FilterInputStream {
    private boolean closed;

    public ConsumingInputStream(InputStream inputStream) {
        super(inputStream);
        this.closed = false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.closed || ((FilterInputStream) this).in == null) {
            return;
        }
        try {
            int i = c00.a;
            while (read(new byte[8192]) != -1) {
            }
            ((FilterInputStream) this).in.close();
        } finally {
            this.closed = true;
        }
    }
}

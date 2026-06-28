package com.google.api.client.http;

import com.google.android.gms.common.api.Api;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class GzipSupport {
    private GzipSupport() {
    }

    public static GZIPInputStream newGzipInputStream(InputStream inputStream) {
        return new GZIPInputStream(new OptimisticAvailabilityInputStream(inputStream));
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static final class OptimisticAvailabilityInputStream extends FilterInputStream {
        private int lastRead;

        public OptimisticAvailabilityInputStream(InputStream inputStream) {
            super(inputStream);
            this.lastRead = 0;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int available() {
            if (this.lastRead > -1) {
                return Api.BaseClientBuilder.API_PRIORITY_OTHER;
            }
            return 0;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int i = super.read();
            this.lastRead = i;
            return i;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr) throws IOException {
            int i = super.read(bArr);
            this.lastRead = i;
            return i;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int i3 = super.read(bArr, i, i2);
            this.lastRead = i3;
            return i3;
        }
    }
}

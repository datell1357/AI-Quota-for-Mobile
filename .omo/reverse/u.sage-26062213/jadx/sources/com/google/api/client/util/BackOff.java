package com.google.api.client.util;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface BackOff {
    public static final long STOP = -1;
    public static final BackOff ZERO_BACKOFF = new BackOff() { // from class: com.google.api.client.util.BackOff.1
        @Override // com.google.api.client.util.BackOff
        public long nextBackOffMillis() {
            return 0L;
        }

        @Override // com.google.api.client.util.BackOff
        public void reset() {
        }
    };
    public static final BackOff STOP_BACKOFF = new BackOff() { // from class: com.google.api.client.util.BackOff.2
        @Override // com.google.api.client.util.BackOff
        public long nextBackOffMillis() {
            return -1L;
        }

        @Override // com.google.api.client.util.BackOff
        public void reset() {
        }
    };

    long nextBackOffMillis();

    void reset();
}

package com.google.api.client.testing.util;

import com.google.api.client.util.Sleeper;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class MockSleeper implements Sleeper {
    private int count;
    private long lastMillis;

    public final int getCount() {
        return this.count;
    }

    public final long getLastMillis() {
        return this.lastMillis;
    }

    @Override // com.google.api.client.util.Sleeper
    public void sleep(long j) {
        this.count++;
        this.lastMillis = j;
    }
}

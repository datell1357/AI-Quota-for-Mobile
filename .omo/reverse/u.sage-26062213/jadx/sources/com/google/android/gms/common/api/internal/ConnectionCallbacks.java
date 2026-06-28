package com.google.android.gms.common.api.internal;

import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface ConnectionCallbacks {
    void onConnected(Bundle bundle);

    void onConnectionSuspended(int i);
}

package com.google.api.client.util.store;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface DataStoreFactory {
    <V extends Serializable> DataStore<V> getDataStore(String str);
}

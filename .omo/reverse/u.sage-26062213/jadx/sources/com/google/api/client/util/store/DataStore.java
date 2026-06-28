package com.google.api.client.util.store;

import java.io.Serializable;
import java.util.Collection;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public interface DataStore<V extends Serializable> {
    DataStore<V> clear();

    boolean containsKey(String str);

    boolean containsValue(V v);

    DataStore<V> delete(String str);

    V get(String str);

    DataStoreFactory getDataStoreFactory();

    String getId();

    boolean isEmpty();

    Set<String> keySet();

    DataStore<V> set(String str, V v);

    int size();

    Collection<V> values();
}

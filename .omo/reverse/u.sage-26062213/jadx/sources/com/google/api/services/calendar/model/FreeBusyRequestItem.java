package com.google.api.services.calendar.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class FreeBusyRequestItem extends GenericJson {

    @Key
    private String id;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public FreeBusyRequestItem clone() {
        return (FreeBusyRequestItem) super.clone();
    }

    public String getId() {
        return this.id;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public FreeBusyRequestItem set(String str, Object obj) {
        return (FreeBusyRequestItem) super.set(str, obj);
    }

    public FreeBusyRequestItem setId(String str) {
        this.id = str;
        return this;
    }
}

package com.google.api.services.calendar.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ConferenceSolutionKey extends GenericJson {

    @Key
    private String type;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public ConferenceSolutionKey clone() {
        return (ConferenceSolutionKey) super.clone();
    }

    public String getType() {
        return this.type;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public ConferenceSolutionKey set(String str, Object obj) {
        return (ConferenceSolutionKey) super.set(str, obj);
    }

    public ConferenceSolutionKey setType(String str) {
        this.type = str;
        return this;
    }
}

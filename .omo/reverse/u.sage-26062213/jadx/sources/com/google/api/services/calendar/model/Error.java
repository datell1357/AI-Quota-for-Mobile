package com.google.api.services.calendar.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class Error extends GenericJson {

    @Key
    private String domain;

    @Key
    private String reason;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public Error clone() {
        return (Error) super.clone();
    }

    public String getDomain() {
        return this.domain;
    }

    public String getReason() {
        return this.reason;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public Error set(String str, Object obj) {
        return (Error) super.set(str, obj);
    }

    public Error setDomain(String str) {
        this.domain = str;
        return this;
    }

    public Error setReason(String str) {
        this.reason = str;
        return this;
    }
}

package com.google.api.services.calendar.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ConferenceRequestStatus extends GenericJson {

    @Key
    private String statusCode;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public ConferenceRequestStatus clone() {
        return (ConferenceRequestStatus) super.clone();
    }

    public String getStatusCode() {
        return this.statusCode;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public ConferenceRequestStatus set(String str, Object obj) {
        return (ConferenceRequestStatus) super.set(str, obj);
    }

    public ConferenceRequestStatus setStatusCode(String str) {
        this.statusCode = str;
        return this;
    }
}

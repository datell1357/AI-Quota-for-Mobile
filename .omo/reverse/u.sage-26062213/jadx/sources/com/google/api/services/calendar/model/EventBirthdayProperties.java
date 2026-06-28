package com.google.api.services.calendar.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class EventBirthdayProperties extends GenericJson {

    @Key
    private String contact;

    @Key
    private String customTypeName;

    @Key
    private String type;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public EventBirthdayProperties clone() {
        return (EventBirthdayProperties) super.clone();
    }

    public String getContact() {
        return this.contact;
    }

    public String getCustomTypeName() {
        return this.customTypeName;
    }

    public String getType() {
        return this.type;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public EventBirthdayProperties set(String str, Object obj) {
        return (EventBirthdayProperties) super.set(str, obj);
    }

    public EventBirthdayProperties setContact(String str) {
        this.contact = str;
        return this;
    }

    public EventBirthdayProperties setCustomTypeName(String str) {
        this.customTypeName = str;
        return this;
    }

    public EventBirthdayProperties setType(String str) {
        this.type = str;
        return this;
    }
}

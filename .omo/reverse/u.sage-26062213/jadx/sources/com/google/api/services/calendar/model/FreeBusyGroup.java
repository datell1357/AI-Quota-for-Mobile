package com.google.api.services.calendar.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Data;
import com.google.api.client.util.Key;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class FreeBusyGroup extends GenericJson {

    @Key
    private List<String> calendars;

    @Key
    private List<Error> errors;

    static {
        Data.nullOf(Error.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public FreeBusyGroup clone() {
        return (FreeBusyGroup) super.clone();
    }

    public List<String> getCalendars() {
        return this.calendars;
    }

    public List<Error> getErrors() {
        return this.errors;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public FreeBusyGroup set(String str, Object obj) {
        return (FreeBusyGroup) super.set(str, obj);
    }

    public FreeBusyGroup setCalendars(List<String> list) {
        this.calendars = list;
        return this;
    }

    public FreeBusyGroup setErrors(List<Error> list) {
        this.errors = list;
        return this;
    }
}

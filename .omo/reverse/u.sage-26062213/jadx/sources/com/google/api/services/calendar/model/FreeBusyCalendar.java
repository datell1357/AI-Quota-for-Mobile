package com.google.api.services.calendar.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Data;
import com.google.api.client.util.Key;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class FreeBusyCalendar extends GenericJson {

    @Key
    private List<TimePeriod> busy;

    @Key
    private List<Error> errors;

    static {
        Data.nullOf(Error.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public FreeBusyCalendar clone() {
        return (FreeBusyCalendar) super.clone();
    }

    public List<TimePeriod> getBusy() {
        return this.busy;
    }

    public List<Error> getErrors() {
        return this.errors;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public FreeBusyCalendar set(String str, Object obj) {
        return (FreeBusyCalendar) super.set(str, obj);
    }

    public FreeBusyCalendar setBusy(List<TimePeriod> list) {
        this.busy = list;
        return this;
    }

    public FreeBusyCalendar setErrors(List<Error> list) {
        this.errors = list;
        return this;
    }
}

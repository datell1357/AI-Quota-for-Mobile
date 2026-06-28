package com.google.api.services.calendar.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class CalendarList extends GenericJson {

    @Key
    private String etag;

    @Key
    private List<CalendarListEntry> items;

    @Key
    private String kind;

    @Key
    private String nextPageToken;

    @Key
    private String nextSyncToken;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public CalendarList clone() {
        return (CalendarList) super.clone();
    }

    public String getEtag() {
        return this.etag;
    }

    public List<CalendarListEntry> getItems() {
        return this.items;
    }

    public String getKind() {
        return this.kind;
    }

    public String getNextPageToken() {
        return this.nextPageToken;
    }

    public String getNextSyncToken() {
        return this.nextSyncToken;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public CalendarList set(String str, Object obj) {
        return (CalendarList) super.set(str, obj);
    }

    public CalendarList setEtag(String str) {
        this.etag = str;
        return this;
    }

    public CalendarList setItems(List<CalendarListEntry> list) {
        this.items = list;
        return this;
    }

    public CalendarList setKind(String str) {
        this.kind = str;
        return this;
    }

    public CalendarList setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public CalendarList setNextSyncToken(String str) {
        this.nextSyncToken = str;
        return this;
    }
}

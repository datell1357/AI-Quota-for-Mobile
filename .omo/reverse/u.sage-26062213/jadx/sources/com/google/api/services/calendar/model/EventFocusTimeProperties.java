package com.google.api.services.calendar.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class EventFocusTimeProperties extends GenericJson {

    @Key
    private String autoDeclineMode;

    @Key
    private String chatStatus;

    @Key
    private String declineMessage;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public EventFocusTimeProperties clone() {
        return (EventFocusTimeProperties) super.clone();
    }

    public String getAutoDeclineMode() {
        return this.autoDeclineMode;
    }

    public String getChatStatus() {
        return this.chatStatus;
    }

    public String getDeclineMessage() {
        return this.declineMessage;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public EventFocusTimeProperties set(String str, Object obj) {
        return (EventFocusTimeProperties) super.set(str, obj);
    }

    public EventFocusTimeProperties setAutoDeclineMode(String str) {
        this.autoDeclineMode = str;
        return this;
    }

    public EventFocusTimeProperties setChatStatus(String str) {
        this.chatStatus = str;
        return this;
    }

    public EventFocusTimeProperties setDeclineMessage(String str) {
        this.declineMessage = str;
        return this;
    }
}

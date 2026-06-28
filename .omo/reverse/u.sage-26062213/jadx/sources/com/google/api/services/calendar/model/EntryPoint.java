package com.google.api.services.calendar.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class EntryPoint extends GenericJson {

    @Key
    private String accessCode;

    @Key
    private List<String> entryPointFeatures;

    @Key
    private String entryPointType;

    @Key
    private String label;

    @Key
    private String meetingCode;

    @Key
    private String passcode;

    @Key
    private String password;

    @Key
    private String pin;

    @Key
    private String regionCode;

    @Key
    private String uri;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public EntryPoint clone() {
        return (EntryPoint) super.clone();
    }

    public String getAccessCode() {
        return this.accessCode;
    }

    public List<String> getEntryPointFeatures() {
        return this.entryPointFeatures;
    }

    public String getEntryPointType() {
        return this.entryPointType;
    }

    public String getLabel() {
        return this.label;
    }

    public String getMeetingCode() {
        return this.meetingCode;
    }

    public String getPasscode() {
        return this.passcode;
    }

    public String getPassword() {
        return this.password;
    }

    public String getPin() {
        return this.pin;
    }

    public String getRegionCode() {
        return this.regionCode;
    }

    public String getUri() {
        return this.uri;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public EntryPoint set(String str, Object obj) {
        return (EntryPoint) super.set(str, obj);
    }

    public EntryPoint setAccessCode(String str) {
        this.accessCode = str;
        return this;
    }

    public EntryPoint setEntryPointFeatures(List<String> list) {
        this.entryPointFeatures = list;
        return this;
    }

    public EntryPoint setEntryPointType(String str) {
        this.entryPointType = str;
        return this;
    }

    public EntryPoint setLabel(String str) {
        this.label = str;
        return this;
    }

    public EntryPoint setMeetingCode(String str) {
        this.meetingCode = str;
        return this;
    }

    public EntryPoint setPasscode(String str) {
        this.passcode = str;
        return this;
    }

    public EntryPoint setPassword(String str) {
        this.password = str;
        return this;
    }

    public EntryPoint setPin(String str) {
        this.pin = str;
        return this;
    }

    public EntryPoint setRegionCode(String str) {
        this.regionCode = str;
        return this;
    }

    public EntryPoint setUri(String str) {
        this.uri = str;
        return this;
    }
}

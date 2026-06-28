package com.google.api.services.calendar.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ConferenceProperties extends GenericJson {

    @Key
    private List<String> allowedConferenceSolutionTypes;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public ConferenceProperties clone() {
        return (ConferenceProperties) super.clone();
    }

    public List<String> getAllowedConferenceSolutionTypes() {
        return this.allowedConferenceSolutionTypes;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public ConferenceProperties set(String str, Object obj) {
        return (ConferenceProperties) super.set(str, obj);
    }

    public ConferenceProperties setAllowedConferenceSolutionTypes(List<String> list) {
        this.allowedConferenceSolutionTypes = list;
        return this;
    }
}

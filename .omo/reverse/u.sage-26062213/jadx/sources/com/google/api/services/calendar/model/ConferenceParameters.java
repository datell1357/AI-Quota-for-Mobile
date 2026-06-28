package com.google.api.services.calendar.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ConferenceParameters extends GenericJson {

    @Key
    private ConferenceParametersAddOnParameters addOnParameters;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public ConferenceParameters clone() {
        return (ConferenceParameters) super.clone();
    }

    public ConferenceParametersAddOnParameters getAddOnParameters() {
        return this.addOnParameters;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public ConferenceParameters set(String str, Object obj) {
        return (ConferenceParameters) super.set(str, obj);
    }

    public ConferenceParameters setAddOnParameters(ConferenceParametersAddOnParameters conferenceParametersAddOnParameters) {
        this.addOnParameters = conferenceParametersAddOnParameters;
        return this;
    }
}

package com.google.api.services.calendar.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ColorDefinition extends GenericJson {

    @Key
    private String background;

    @Key
    private String foreground;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public ColorDefinition clone() {
        return (ColorDefinition) super.clone();
    }

    public String getBackground() {
        return this.background;
    }

    public String getForeground() {
        return this.foreground;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public ColorDefinition set(String str, Object obj) {
        return (ColorDefinition) super.set(str, obj);
    }

    public ColorDefinition setBackground(String str) {
        this.background = str;
        return this;
    }

    public ColorDefinition setForeground(String str) {
        this.foreground = str;
        return this;
    }
}

package com.google.api.services.calendar.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class EventWorkingLocationProperties extends GenericJson {

    @Key
    private CustomLocation customLocation;

    @Key
    private Object homeOffice;

    @Key
    private OfficeLocation officeLocation;

    @Key
    private String type;

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static final class CustomLocation extends GenericJson {

        @Key
        private String label;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
        public CustomLocation clone() {
            return (CustomLocation) super.clone();
        }

        public String getLabel() {
            return this.label;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
        public CustomLocation set(String str, Object obj) {
            return (CustomLocation) super.set(str, obj);
        }

        public CustomLocation setLabel(String str) {
            this.label = str;
            return this;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static final class OfficeLocation extends GenericJson {

        @Key
        private String buildingId;

        @Key
        private String deskId;

        @Key
        private String floorId;

        @Key
        private String floorSectionId;

        @Key
        private String label;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
        public OfficeLocation clone() {
            return (OfficeLocation) super.clone();
        }

        public String getBuildingId() {
            return this.buildingId;
        }

        public String getDeskId() {
            return this.deskId;
        }

        public String getFloorId() {
            return this.floorId;
        }

        public String getFloorSectionId() {
            return this.floorSectionId;
        }

        public String getLabel() {
            return this.label;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
        public OfficeLocation set(String str, Object obj) {
            return (OfficeLocation) super.set(str, obj);
        }

        public OfficeLocation setBuildingId(String str) {
            this.buildingId = str;
            return this;
        }

        public OfficeLocation setDeskId(String str) {
            this.deskId = str;
            return this;
        }

        public OfficeLocation setFloorId(String str) {
            this.floorId = str;
            return this;
        }

        public OfficeLocation setFloorSectionId(String str) {
            this.floorSectionId = str;
            return this;
        }

        public OfficeLocation setLabel(String str) {
            this.label = str;
            return this;
        }
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public EventWorkingLocationProperties clone() {
        return (EventWorkingLocationProperties) super.clone();
    }

    public CustomLocation getCustomLocation() {
        return this.customLocation;
    }

    public Object getHomeOffice() {
        return this.homeOffice;
    }

    public OfficeLocation getOfficeLocation() {
        return this.officeLocation;
    }

    public String getType() {
        return this.type;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public EventWorkingLocationProperties set(String str, Object obj) {
        return (EventWorkingLocationProperties) super.set(str, obj);
    }

    public EventWorkingLocationProperties setCustomLocation(CustomLocation customLocation) {
        this.customLocation = customLocation;
        return this;
    }

    public EventWorkingLocationProperties setHomeOffice(Object obj) {
        this.homeOffice = obj;
        return this;
    }

    public EventWorkingLocationProperties setOfficeLocation(OfficeLocation officeLocation) {
        this.officeLocation = officeLocation;
        return this;
    }

    public EventWorkingLocationProperties setType(String str) {
        this.type = str;
        return this;
    }
}

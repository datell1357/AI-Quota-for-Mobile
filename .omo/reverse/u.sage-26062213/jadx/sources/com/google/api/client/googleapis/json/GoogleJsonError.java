package com.google.api.client.googleapis.json;

import com.google.api.client.http.HttpResponse;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonObjectParser;
import com.google.api.client.util.Data;
import com.google.api.client.util.Key;
import defpackage.lp1;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class GoogleJsonError extends GenericJson {

    @Key
    private int code;

    @Key
    private List<Details> details;

    @Key
    private List<ErrorInfo> errors;

    @Key
    private String message;

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static class Details extends GenericJson {

        @Key
        private String detail;

        @Key
        private List<ParameterViolations> parameterViolations;

        @Key
        private String reason;

        @Key("@type")
        private String type;

        public String getDetail() {
            return this.detail;
        }

        public List<ParameterViolations> getParameterViolations() {
            return this.parameterViolations;
        }

        public String getReason() {
            return this.reason;
        }

        public String getType() {
            return this.type;
        }

        public void setDetail(String str) {
            this.detail = str;
        }

        public void setParameterViolations(List<ParameterViolations> list) {
            this.parameterViolations = lp1.l(list);
        }

        public void setReason(String str) {
            this.reason = str;
        }

        public void setType(String str) {
            this.type = str;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static class ErrorInfo extends GenericJson {

        @Key
        private String domain;

        @Key
        private String location;

        @Key
        private String locationType;

        @Key
        private String message;

        @Key
        private String reason;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
        public ErrorInfo clone() {
            return (ErrorInfo) super.clone();
        }

        public final String getDomain() {
            return this.domain;
        }

        public final String getLocation() {
            return this.location;
        }

        public final String getLocationType() {
            return this.locationType;
        }

        public final String getMessage() {
            return this.message;
        }

        public final String getReason() {
            return this.reason;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
        public ErrorInfo set(String str, Object obj) {
            return (ErrorInfo) super.set(str, obj);
        }

        public final void setDomain(String str) {
            this.domain = str;
        }

        public final void setLocation(String str) {
            this.location = str;
        }

        public final void setLocationType(String str) {
            this.locationType = str;
        }

        public final void setMessage(String str) {
            this.message = str;
        }

        public final void setReason(String str) {
            this.reason = str;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static class ParameterViolations {

        @Key
        private String description;

        @Key
        private String parameter;

        public String getDescription() {
            return this.description;
        }

        public String getParameter() {
            return this.parameter;
        }

        public void setDescription(String str) {
            this.description = str;
        }

        public void setParameter(String str) {
            this.parameter = str;
        }
    }

    static {
        Data.nullOf(ErrorInfo.class);
    }

    public static GoogleJsonError parse(JsonFactory jsonFactory, HttpResponse httpResponse) {
        return (GoogleJsonError) new JsonObjectParser.Builder(jsonFactory).setWrapperKeys(Collections.singleton("error")).build().parseAndClose(httpResponse.getContent(), httpResponse.getContentCharset(), GoogleJsonError.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public GoogleJsonError clone() {
        return (GoogleJsonError) super.clone();
    }

    public final int getCode() {
        return this.code;
    }

    public List<Details> getDetails() {
        return this.details;
    }

    public final List<ErrorInfo> getErrors() {
        return this.errors;
    }

    public final String getMessage() {
        return this.message;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public GoogleJsonError set(String str, Object obj) {
        return (GoogleJsonError) super.set(str, obj);
    }

    public final void setCode(int i) {
        this.code = i;
    }

    public void setDetails(List<Details> list) {
        this.details = lp1.l(list);
    }

    public final void setErrors(List<ErrorInfo> list) {
        this.errors = lp1.l(list);
    }

    public final void setMessage(String str) {
        this.message = str;
    }
}

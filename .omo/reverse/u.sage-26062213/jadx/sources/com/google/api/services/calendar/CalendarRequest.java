package com.google.api.services.calendar;

import com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest;
import com.google.api.client.http.HttpHeaders;
import com.google.api.client.util.Key;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class CalendarRequest<T> extends AbstractGoogleJsonClientRequest<T> {

    @Key
    private String alt;

    @Key
    private String fields;

    @Key
    private String key;

    @Key("oauth_token")
    private String oauthToken;

    @Key
    private Boolean prettyPrint;

    @Key
    private String quotaUser;

    @Key
    private String userIp;

    public CalendarRequest(Calendar calendar, String str, String str2, Object obj, Class<T> cls) {
        super(calendar, str, str2, obj, cls);
    }

    @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest
    public final Calendar getAbstractGoogleClient() {
        return (Calendar) super.getAbstractGoogleClient();
    }

    public String getAlt() {
        return this.alt;
    }

    public String getFields() {
        return this.fields;
    }

    public String getKey() {
        return this.key;
    }

    public String getOauthToken() {
        return this.oauthToken;
    }

    public Boolean getPrettyPrint() {
        return this.prettyPrint;
    }

    public String getQuotaUser() {
        return this.quotaUser;
    }

    public String getUserIp() {
        return this.userIp;
    }

    @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
    public CalendarRequest<T> set(String str, Object obj) {
        return (CalendarRequest) super.set(str, obj);
    }

    /* JADX INFO: renamed from: setAlt */
    public CalendarRequest<T> setAlt2(String str) {
        this.alt = str;
        return this;
    }

    @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest
    public CalendarRequest<T> setDisableGZipContent(boolean z) {
        return (CalendarRequest) super.setDisableGZipContent(z);
    }

    /* JADX INFO: renamed from: setFields */
    public CalendarRequest<T> setFields2(String str) {
        this.fields = str;
        return this;
    }

    /* JADX INFO: renamed from: setKey */
    public CalendarRequest<T> setKey2(String str) {
        this.key = str;
        return this;
    }

    /* JADX INFO: renamed from: setOauthToken */
    public CalendarRequest<T> setOauthToken2(String str) {
        this.oauthToken = str;
        return this;
    }

    /* JADX INFO: renamed from: setPrettyPrint */
    public CalendarRequest<T> setPrettyPrint2(Boolean bool) {
        this.prettyPrint = bool;
        return this;
    }

    /* JADX INFO: renamed from: setQuotaUser */
    public CalendarRequest<T> setQuotaUser2(String str) {
        this.quotaUser = str;
        return this;
    }

    @Override // com.google.api.client.googleapis.services.json.AbstractGoogleJsonClientRequest, com.google.api.client.googleapis.services.AbstractGoogleClientRequest
    public CalendarRequest<T> setRequestHeaders(HttpHeaders httpHeaders) {
        return (CalendarRequest) super.setRequestHeaders(httpHeaders);
    }

    /* JADX INFO: renamed from: setUserIp */
    public CalendarRequest<T> setUserIp2(String str) {
        this.userIp = str;
        return this;
    }
}

package com.google.api.client.auth.oauth2;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import java.util.Collection;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class ClientCredentialsTokenRequest extends TokenRequest {
    public ClientCredentialsTokenRequest(HttpTransport httpTransport, JsonFactory jsonFactory, GenericUrl genericUrl) {
        super(httpTransport, jsonFactory, genericUrl, "client_credentials");
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest, com.google.api.client.util.GenericData
    public ClientCredentialsTokenRequest set(String str, Object obj) {
        return (ClientCredentialsTokenRequest) super.set(str, obj);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public ClientCredentialsTokenRequest setClientAuthentication(HttpExecuteInterceptor httpExecuteInterceptor) {
        return (ClientCredentialsTokenRequest) super.setClientAuthentication(httpExecuteInterceptor);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public ClientCredentialsTokenRequest setGrantType(String str) {
        return (ClientCredentialsTokenRequest) super.setGrantType(str);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public ClientCredentialsTokenRequest setRequestInitializer(HttpRequestInitializer httpRequestInitializer) {
        return (ClientCredentialsTokenRequest) super.setRequestInitializer(httpRequestInitializer);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public ClientCredentialsTokenRequest setResponseClass(Class<? extends TokenResponse> cls) {
        return (ClientCredentialsTokenRequest) super.setResponseClass(cls);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public ClientCredentialsTokenRequest setScopes(Collection<String> collection) {
        return (ClientCredentialsTokenRequest) super.setScopes(collection);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public ClientCredentialsTokenRequest setTokenServerUrl(GenericUrl genericUrl) {
        return (ClientCredentialsTokenRequest) super.setTokenServerUrl(genericUrl);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public /* bridge */ /* synthetic */ TokenRequest setResponseClass(Class cls) {
        return setResponseClass((Class<? extends TokenResponse>) cls);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public /* bridge */ /* synthetic */ TokenRequest setScopes(Collection collection) {
        return setScopes((Collection<String>) collection);
    }
}

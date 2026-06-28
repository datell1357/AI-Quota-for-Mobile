package com.google.api.client.http;

import com.google.api.client.util.Preconditions;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class BasicAuthentication implements HttpRequestInitializer, HttpExecuteInterceptor {
    private final String password;
    private final String username;

    public BasicAuthentication(String str, String str2) {
        this.username = (String) Preconditions.checkNotNull(str);
        this.password = (String) Preconditions.checkNotNull(str2);
    }

    public String getPassword() {
        return this.password;
    }

    public String getUsername() {
        return this.username;
    }

    @Override // com.google.api.client.http.HttpRequestInitializer
    public void initialize(HttpRequest httpRequest) {
        httpRequest.setInterceptor(this);
    }

    @Override // com.google.api.client.http.HttpExecuteInterceptor
    public void intercept(HttpRequest httpRequest) {
        httpRequest.getHeaders().setBasicAuthentication(this.username, this.password);
    }
}

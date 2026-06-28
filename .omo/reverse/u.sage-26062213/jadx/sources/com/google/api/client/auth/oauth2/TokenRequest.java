package com.google.api.client.auth.oauth2;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.UrlEncodedContent;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonObjectParser;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.Joiner;
import com.google.api.client.util.Key;
import com.google.api.client.util.Preconditions;
import java.util.Collection;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class TokenRequest extends GenericData {
    HttpExecuteInterceptor clientAuthentication;

    @Key("grant_type")
    private String grantType;
    private final JsonFactory jsonFactory;
    HttpRequestInitializer requestInitializer;
    protected Class<? extends TokenResponse> responseClass;

    @Key("scope")
    private String scopes;
    private GenericUrl tokenServerUrl;
    private final HttpTransport transport;

    public TokenRequest(HttpTransport httpTransport, JsonFactory jsonFactory, GenericUrl genericUrl, String str, Class<? extends TokenResponse> cls) {
        this.transport = (HttpTransport) Preconditions.checkNotNull(httpTransport);
        this.jsonFactory = (JsonFactory) Preconditions.checkNotNull(jsonFactory);
        setTokenServerUrl(genericUrl);
        setGrantType(str);
        setResponseClass(cls);
    }

    public TokenResponse execute() {
        return (TokenResponse) executeUnparsed().parseAs((Class) this.responseClass);
    }

    public final HttpResponse executeUnparsed() throws TokenResponseException {
        HttpRequest httpRequestBuildPostRequest = this.transport.createRequestFactory(new HttpRequestInitializer() { // from class: com.google.api.client.auth.oauth2.TokenRequest.1
            @Override // com.google.api.client.http.HttpRequestInitializer
            public void initialize(HttpRequest httpRequest) {
                HttpRequestInitializer httpRequestInitializer = TokenRequest.this.requestInitializer;
                if (httpRequestInitializer != null) {
                    httpRequestInitializer.initialize(httpRequest);
                }
                final HttpExecuteInterceptor interceptor = httpRequest.getInterceptor();
                httpRequest.setInterceptor(new HttpExecuteInterceptor() { // from class: com.google.api.client.auth.oauth2.TokenRequest.1.1
                    @Override // com.google.api.client.http.HttpExecuteInterceptor
                    public void intercept(HttpRequest httpRequest2) {
                        HttpExecuteInterceptor httpExecuteInterceptor = interceptor;
                        if (httpExecuteInterceptor != null) {
                            httpExecuteInterceptor.intercept(httpRequest2);
                        }
                        HttpExecuteInterceptor httpExecuteInterceptor2 = TokenRequest.this.clientAuthentication;
                        if (httpExecuteInterceptor2 != null) {
                            httpExecuteInterceptor2.intercept(httpRequest2);
                        }
                    }
                });
            }
        }).buildPostRequest(this.tokenServerUrl, new UrlEncodedContent(this));
        httpRequestBuildPostRequest.setParser(new JsonObjectParser(this.jsonFactory));
        httpRequestBuildPostRequest.setThrowExceptionOnExecuteError(false);
        HttpResponse httpResponseExecute = httpRequestBuildPostRequest.execute();
        if (httpResponseExecute.isSuccessStatusCode()) {
            return httpResponseExecute;
        }
        throw TokenResponseException.from(this.jsonFactory, httpResponseExecute);
    }

    public final HttpExecuteInterceptor getClientAuthentication() {
        return this.clientAuthentication;
    }

    public final String getGrantType() {
        return this.grantType;
    }

    public final JsonFactory getJsonFactory() {
        return this.jsonFactory;
    }

    public final HttpRequestInitializer getRequestInitializer() {
        return this.requestInitializer;
    }

    public final Class<? extends TokenResponse> getResponseClass() {
        return this.responseClass;
    }

    public final String getScopes() {
        return this.scopes;
    }

    public final GenericUrl getTokenServerUrl() {
        return this.tokenServerUrl;
    }

    public final HttpTransport getTransport() {
        return this.transport;
    }

    @Override // com.google.api.client.util.GenericData
    public TokenRequest set(String str, Object obj) {
        return (TokenRequest) super.set(str, obj);
    }

    public TokenRequest setClientAuthentication(HttpExecuteInterceptor httpExecuteInterceptor) {
        this.clientAuthentication = httpExecuteInterceptor;
        return this;
    }

    public TokenRequest setGrantType(String str) {
        this.grantType = (String) Preconditions.checkNotNull(str);
        return this;
    }

    public TokenRequest setRequestInitializer(HttpRequestInitializer httpRequestInitializer) {
        this.requestInitializer = httpRequestInitializer;
        return this;
    }

    public TokenRequest setResponseClass(Class<? extends TokenResponse> cls) {
        this.responseClass = cls;
        return this;
    }

    public TokenRequest setScopes(Collection<String> collection) {
        this.scopes = collection == null ? null : Joiner.on(' ').join(collection);
        return this;
    }

    public TokenRequest setTokenServerUrl(GenericUrl genericUrl) {
        this.tokenServerUrl = genericUrl;
        Preconditions.checkArgument(genericUrl.getFragment() == null);
        return this;
    }

    public TokenRequest(HttpTransport httpTransport, JsonFactory jsonFactory, GenericUrl genericUrl, String str) {
        this(httpTransport, jsonFactory, genericUrl, str, TokenResponse.class);
    }
}

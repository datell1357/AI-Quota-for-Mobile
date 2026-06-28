package com.google.api.client.http;

import java.util.Arrays;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class HttpTransport {
    static final Logger LOGGER = Logger.getLogger(HttpTransport.class.getName());
    private static final String[] SUPPORTED_METHODS;

    static {
        String[] strArr = {HttpMethods.DELETE, HttpMethods.GET, HttpMethods.POST, HttpMethods.PUT};
        SUPPORTED_METHODS = strArr;
        Arrays.sort(strArr);
    }

    public HttpRequest buildRequest() {
        return new HttpRequest(this, null);
    }

    public abstract LowLevelHttpRequest buildRequest(String str, String str2);

    public final HttpRequestFactory createRequestFactory() {
        return createRequestFactory(null);
    }

    public boolean isMtls() {
        return false;
    }

    public boolean isShutdown() {
        return true;
    }

    public boolean supportsMethod(String str) {
        return Arrays.binarySearch(SUPPORTED_METHODS, str) >= 0;
    }

    public final HttpRequestFactory createRequestFactory(HttpRequestInitializer httpRequestInitializer) {
        return new HttpRequestFactory(this, httpRequestInitializer);
    }

    public void shutdown() {
    }
}

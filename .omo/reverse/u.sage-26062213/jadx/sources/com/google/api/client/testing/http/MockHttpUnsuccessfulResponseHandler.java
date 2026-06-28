package com.google.api.client.testing.http;

import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpUnsuccessfulResponseHandler;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class MockHttpUnsuccessfulResponseHandler implements HttpUnsuccessfulResponseHandler {
    private boolean isCalled;
    private boolean successfullyHandleResponse;

    public MockHttpUnsuccessfulResponseHandler(boolean z) {
        this.successfullyHandleResponse = z;
    }

    @Override // com.google.api.client.http.HttpUnsuccessfulResponseHandler
    public boolean handleResponse(HttpRequest httpRequest, HttpResponse httpResponse, boolean z) {
        this.isCalled = true;
        return this.successfullyHandleResponse;
    }

    public boolean isCalled() {
        return this.isCalled;
    }
}

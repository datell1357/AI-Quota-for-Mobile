package com.google.api.client.http.apache;

import com.google.api.client.http.LowLevelHttpResponse;
import defpackage.gj1;
import defpackage.kv;
import defpackage.pm1;
import defpackage.vm1;
import defpackage.xl1;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class ApacheHttpResponse extends LowLevelHttpResponse {
    private final gj1[] allHeaders;
    private final pm1 request;
    private final vm1 response;

    public ApacheHttpResponse(pm1 pm1Var, vm1 vm1Var) {
        this.request = pm1Var;
        this.response = vm1Var;
        this.allHeaders = vm1Var.getAllHeaders();
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public void disconnect() {
        this.request.abort();
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public InputStream getContent() {
        xl1 entity = this.response.getEntity();
        if (entity == null) {
            return null;
        }
        return entity.getContent();
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public String getContentEncoding() {
        gj1 contentEncoding;
        xl1 entity = this.response.getEntity();
        if (entity == null || (contentEncoding = entity.getContentEncoding()) == null) {
            return null;
        }
        return contentEncoding.getValue();
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public long getContentLength() {
        xl1 entity = this.response.getEntity();
        if (entity == null) {
            return -1L;
        }
        return entity.getContentLength();
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public String getContentType() {
        gj1 contentType;
        xl1 entity = this.response.getEntity();
        if (entity == null || (contentType = entity.getContentType()) == null) {
            return null;
        }
        return contentType.getValue();
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public int getHeaderCount() {
        return this.allHeaders.length;
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public String getHeaderName(int i) {
        return this.allHeaders[i].getName();
    }

    public String getHeaderValue(String str) {
        return this.response.getLastHeader(str).getValue();
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public String getReasonPhrase() {
        kv kvVarB = this.response.b();
        if (kvVarB == null) {
            return null;
        }
        return kvVarB.p;
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public int getStatusCode() {
        kv kvVarB = this.response.b();
        if (kvVarB == null) {
            return 0;
        }
        return kvVarB.o;
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public String getStatusLine() {
        kv kvVarB = this.response.b();
        if (kvVarB == null) {
            return null;
        }
        return kvVarB.toString();
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public String getHeaderValue(int i) {
        return this.allHeaders[i].getValue();
    }
}

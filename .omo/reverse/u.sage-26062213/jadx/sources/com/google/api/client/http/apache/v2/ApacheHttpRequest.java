package com.google.api.client.http.apache.v2;

import com.google.api.client.http.LowLevelHttpRequest;
import com.google.api.client.http.LowLevelHttpResponse;
import com.google.api.client.util.Preconditions;
import defpackage.hv;
import defpackage.nl1;
import defpackage.pm1;
import defpackage.u63;
import defpackage.v63;
import defpackage.zl1;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class ApacheHttpRequest extends LowLevelHttpRequest {
    private final nl1 httpClient;
    private final pm1 request;
    private u63 requestConfig;

    public ApacheHttpRequest(nl1 nl1Var, pm1 pm1Var) {
        this.httpClient = nl1Var;
        this.request = pm1Var;
        u63 u63Var = new u63();
        u63Var.d = 50;
        u63Var.c = true;
        u63Var.e = true;
        u63Var.f = -1;
        u63Var.g = -1;
        u63Var.h = -1;
        u63Var.b = false;
        u63Var.i = false;
        u63Var.a = false;
        this.requestConfig = u63Var;
    }

    @Override // com.google.api.client.http.LowLevelHttpRequest
    public void addHeader(String str, String str2) {
        this.request.addHeader(str, str2);
    }

    @Override // com.google.api.client.http.LowLevelHttpRequest
    public LowLevelHttpResponse execute() {
        if (getStreamingContent() != null) {
            pm1 pm1Var = this.request;
            Preconditions.checkState(pm1Var instanceof zl1, "Apache HTTP client does not support %s requests with content.", ((hv) pm1Var.getRequestLine()).o);
            ContentEntity contentEntity = new ContentEntity(getContentLength(), getStreamingContent());
            contentEntity.setContentEncoding(getContentEncoding());
            contentEntity.setContentType(getContentType());
            if (getContentLength() == -1) {
                contentEntity.setChunked(true);
            }
            ((zl1) this.request).setEntity(contentEntity);
        }
        pm1 pm1Var2 = this.request;
        u63 u63Var = this.requestConfig;
        pm1Var2.setConfig(new v63(false, null, null, u63Var.a, null, u63Var.b, u63Var.c, false, u63Var.d, u63Var.e, null, null, u63Var.f, u63Var.g, u63Var.h, u63Var.i));
        pm1 pm1Var3 = this.request;
        return new ApacheHttpResponse(pm1Var3, this.httpClient.execute(pm1Var3));
    }

    @Override // com.google.api.client.http.LowLevelHttpRequest
    public void setTimeout(int i, int i2) {
        u63 u63Var = this.requestConfig;
        u63Var.g = i;
        u63Var.h = i2;
    }
}

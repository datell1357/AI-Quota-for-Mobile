package com.google.api.client.http.apache;

import com.google.api.client.http.LowLevelHttpRequest;
import com.google.api.client.http.LowLevelHttpResponse;
import com.google.api.client.util.Preconditions;
import defpackage.f1;
import defpackage.hv;
import defpackage.km1;
import defpackage.nl1;
import defpackage.pm1;
import defpackage.w80;
import defpackage.zl1;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class ApacheHttpRequest extends LowLevelHttpRequest {
    private final nl1 httpClient;
    private final pm1 request;

    public ApacheHttpRequest(nl1 nl1Var, pm1 pm1Var) {
        this.httpClient = nl1Var;
        this.request = pm1Var;
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
        return new ApacheHttpResponse(pm1Var2, this.httpClient.execute(pm1Var2));
    }

    @Override // com.google.api.client.http.LowLevelHttpRequest
    public void setTimeout(int i, int i2) {
        km1 params = this.request.getParams();
        w80.L(params, "HTTP parameters");
        f1 f1Var = (f1) params;
        f1Var.a(Long.valueOf(i), "http.conn-manager.timeout");
        f1Var.a(Integer.valueOf(i), "http.connection.timeout");
        f1Var.a(Integer.valueOf(i2), "http.socket.timeout");
    }
}

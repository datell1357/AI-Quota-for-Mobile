package com.google.api.client.http.apache.v2;

import com.google.api.client.http.HttpMethods;
import com.google.api.client.http.HttpStatusCodes;
import com.google.api.client.http.HttpTransport;
import defpackage.dm0;
import defpackage.lm1;
import defpackage.nl1;
import defpackage.ol1;
import defpackage.pm1;
import defpackage.qb3;
import defpackage.s60;
import defpackage.sv3;
import defpackage.u03;
import defpackage.wl1;
import defpackage.zo0;
import java.io.IOException;
import java.net.ProxySelector;
import java.net.URI;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class ApacheHttpTransport extends HttpTransport {
    private final nl1 httpClient;
    private final boolean isMtls;

    public ApacheHttpTransport() {
        this(newDefaultHttpClient(), false);
    }

    public static nl1 newDefaultHttpClient() {
        return newDefaultHttpClientBuilder().a();
    }

    public static ol1 newDefaultHttpClientBuilder() {
        ol1 ol1Var = new ol1();
        ol1Var.g = 0;
        ol1Var.h = 0;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        ol1Var.i = timeUnit;
        ol1Var.d = true;
        ol1Var.a = new qb3(dm0.t(), new zo0(u03.a()));
        ol1Var.g = HttpStatusCodes.STATUS_CODE_OK;
        ol1Var.h = 20;
        ol1Var.i = timeUnit;
        ol1Var.c = new sv3(null, ProxySelector.getDefault());
        ol1Var.e = true;
        ol1Var.f = true;
        return ol1Var;
    }

    @Override // com.google.api.client.http.HttpTransport
    public ApacheHttpRequest buildRequest(String str, String str2) {
        pm1 lm1Var;
        if (str.equals(HttpMethods.DELETE)) {
            lm1Var = new wl1(str2, 0);
        } else if (str.equals(HttpMethods.GET)) {
            lm1Var = new wl1(str2, 1);
        } else if (str.equals(HttpMethods.HEAD)) {
            lm1Var = new wl1(str2, 2);
        } else if (str.equals(HttpMethods.PATCH)) {
            lm1Var = new lm1();
            lm1Var.setURI(URI.create(str2));
        } else {
            lm1Var = str.equals(HttpMethods.POST) ? new lm1(str2, 1) : str.equals(HttpMethods.PUT) ? new lm1(str2, 2) : str.equals(HttpMethods.TRACE) ? new wl1(str2, 4) : str.equals(HttpMethods.OPTIONS) ? new wl1(str2, 3) : new HttpExtensionMethod(str, str2);
        }
        return new ApacheHttpRequest(this.httpClient, lm1Var);
    }

    public nl1 getHttpClient() {
        return this.httpClient;
    }

    @Override // com.google.api.client.http.HttpTransport
    public boolean isMtls() {
        return this.isMtls;
    }

    @Override // com.google.api.client.http.HttpTransport
    public void shutdown() throws IOException {
        nl1 nl1Var = this.httpClient;
        if (nl1Var instanceof s60) {
            ((s60) nl1Var).close();
        }
    }

    @Override // com.google.api.client.http.HttpTransport
    public boolean supportsMethod(String str) {
        return true;
    }

    public ApacheHttpTransport(nl1 nl1Var) {
        this.httpClient = nl1Var;
        this.isMtls = false;
    }

    public ApacheHttpTransport(nl1 nl1Var, boolean z) {
        this.httpClient = nl1Var;
        this.isMtls = z;
    }
}

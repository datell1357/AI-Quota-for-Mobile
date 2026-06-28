package com.google.api.client.http.apache.v2;

import com.google.api.client.util.Preconditions;
import defpackage.am1;
import java.net.URI;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class HttpExtensionMethod extends am1 {
    private final String methodName;

    public HttpExtensionMethod(String str, String str2) {
        this.methodName = (String) Preconditions.checkNotNull(str);
        setURI(URI.create(str2));
    }

    @Override // defpackage.pm1, defpackage.an1
    public String getMethod() {
        return this.methodName;
    }
}

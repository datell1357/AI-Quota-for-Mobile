package com.google.api.client.googleapis.services.json;

import com.google.api.client.googleapis.services.AbstractGoogleClientRequest;
import com.google.api.client.googleapis.services.CommonGoogleClientRequestInitializer;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class CommonGoogleJsonClientRequestInitializer extends CommonGoogleClientRequestInitializer {
    @Deprecated
    public CommonGoogleJsonClientRequestInitializer() {
    }

    @Override // com.google.api.client.googleapis.services.CommonGoogleClientRequestInitializer, com.google.api.client.googleapis.services.GoogleClientRequestInitializer
    public final void initialize(AbstractGoogleClientRequest<?> abstractGoogleClientRequest) {
        super.initialize(abstractGoogleClientRequest);
        initializeJsonRequest((AbstractGoogleJsonClientRequest) abstractGoogleClientRequest);
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static class Builder extends CommonGoogleClientRequestInitializer.Builder {
        @Override // com.google.api.client.googleapis.services.CommonGoogleClientRequestInitializer.Builder
        public Builder self() {
            return this;
        }
    }

    @Deprecated
    public CommonGoogleJsonClientRequestInitializer(String str) {
        super(str);
    }

    @Deprecated
    public CommonGoogleJsonClientRequestInitializer(String str, String str2) {
        super(str, str2);
    }

    public void initializeJsonRequest(AbstractGoogleJsonClientRequest<?> abstractGoogleJsonClientRequest) {
    }
}

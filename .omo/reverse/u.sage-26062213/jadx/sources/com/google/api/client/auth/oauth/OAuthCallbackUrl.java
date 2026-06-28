package com.google.api.client.auth.oauth;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.util.Key;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class OAuthCallbackUrl extends GenericUrl {

    @Key("oauth_token")
    public String token;

    @Key("oauth_verifier")
    public String verifier;

    public OAuthCallbackUrl(String str) {
        super(str);
    }
}

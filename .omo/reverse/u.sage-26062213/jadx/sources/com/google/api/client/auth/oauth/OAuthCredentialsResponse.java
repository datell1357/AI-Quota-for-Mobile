package com.google.api.client.auth.oauth;

import com.google.api.client.util.Key;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class OAuthCredentialsResponse {

    @Key("oauth_callback_confirmed")
    public Boolean callbackConfirmed;

    @Key("oauth_token")
    public String token;

    @Key("oauth_token_secret")
    public String tokenSecret;
}

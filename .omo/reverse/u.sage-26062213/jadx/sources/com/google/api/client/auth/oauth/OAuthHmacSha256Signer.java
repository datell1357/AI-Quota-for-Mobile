package com.google.api.client.auth.oauth;

import com.google.api.client.util.StringUtils;
import defpackage.lr;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class OAuthHmacSha256Signer implements OAuthSigner {
    private final String clientSharedSecret;
    private String tokenSharedSecret;

    public OAuthHmacSha256Signer(String str) {
        this.clientSharedSecret = str;
    }

    @Override // com.google.api.client.auth.oauth.OAuthSigner
    public String computeSignature(String str) throws NoSuchAlgorithmException, InvalidKeyException {
        StringBuilder sb = new StringBuilder();
        String str2 = this.clientSharedSecret;
        if (str2 != null) {
            sb.append(OAuthParameters.escape(str2));
        }
        sb.append('&');
        String str3 = this.tokenSharedSecret;
        if (str3 != null) {
            sb.append(OAuthParameters.escape(str3));
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(StringUtils.getBytesUtf8(sb.toString()), "HmacSHA256");
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(secretKeySpec);
        return lr.a.c(mac.doFinal(StringUtils.getBytesUtf8(str)));
    }

    @Override // com.google.api.client.auth.oauth.OAuthSigner
    public String getSignatureMethod() {
        return "HMAC-SHA256";
    }

    public void setTokenSecret(String str) {
        this.tokenSharedSecret = str;
    }
}

package com.google.api.client.auth.oauth;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpContent;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.UrlEncodedContent;
import com.google.api.client.util.Data;
import com.google.api.client.util.escape.PercentEscaper;
import defpackage.h24;
import defpackage.hf2;
import defpackage.vp3;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class OAuthParameters implements HttpExecuteInterceptor, HttpRequestInitializer {
    public String callback;
    public String consumerKey;
    public String nonce;
    public String realm;
    public String signature;
    public String signatureMethod;
    public OAuthSigner signer;
    public String timestamp;
    public String token;
    public String verifier;
    public String version;
    private static final SecureRandom RANDOM = new SecureRandom();
    private static final PercentEscaper ESCAPER = new PercentEscaper("-_.~");

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static class Parameter implements Comparable<Parameter> {
        private final String key;
        private final String value;

        public Parameter(String str, String str2) {
            this.key = str;
            this.value = str2;
        }

        @Override // java.lang.Comparable
        public int compareTo(Parameter parameter) {
            int iCompareTo = this.key.compareTo(parameter.key);
            return iCompareTo == 0 ? this.value.compareTo(parameter.value) : iCompareTo;
        }

        public String getKey() {
            return this.key;
        }

        public String getValue() {
            return this.value;
        }
    }

    private void appendParameter(StringBuilder sb, String str, String str2) {
        if (str2 != null) {
            sb.append(' ');
            sb.append(escape(str));
            sb.append("=\"");
            sb.append(escape(str2));
            sb.append("\",");
        }
    }

    public static String escape(String str) {
        return ESCAPER.escape(str);
    }

    private void putParameter(hf2 hf2Var, String str, Object obj) {
        hf2Var.add(new Parameter(escape(str), obj == null ? null : escape(obj.toString())));
    }

    private void putParameterIfValueNotNull(hf2 hf2Var, String str, String str2) {
        if (str2 != null) {
            putParameter(hf2Var, str, str2);
        }
    }

    public void computeNonce() {
        this.nonce = Long.toHexString(Math.abs(RANDOM.nextLong()));
    }

    public void computeSignature(String str, GenericUrl genericUrl) {
        OAuthSigner oAuthSigner = this.signer;
        String signatureMethod = oAuthSigner.getSignatureMethod();
        this.signatureMethod = signatureMethod;
        h24 h24Var = new h24();
        putParameterIfValueNotNull(h24Var, "oauth_callback", this.callback);
        putParameterIfValueNotNull(h24Var, "oauth_consumer_key", this.consumerKey);
        putParameterIfValueNotNull(h24Var, "oauth_nonce", this.nonce);
        putParameterIfValueNotNull(h24Var, "oauth_signature_method", signatureMethod);
        putParameterIfValueNotNull(h24Var, "oauth_timestamp", this.timestamp);
        putParameterIfValueNotNull(h24Var, "oauth_token", this.token);
        putParameterIfValueNotNull(h24Var, "oauth_verifier", this.verifier);
        putParameterIfValueNotNull(h24Var, "oauth_version", this.version);
        for (Map.Entry<String, Object> entry : genericUrl.entrySet()) {
            Object value = entry.getValue();
            if (value != null) {
                String key = entry.getKey();
                if (value instanceof Collection) {
                    Iterator it = ((Collection) value).iterator();
                    while (it.hasNext()) {
                        putParameter(h24Var, key, it.next());
                    }
                } else {
                    putParameter(h24Var, key, value);
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Parameter parameter : (vp3) h24Var.r()) {
            if (z) {
                z = false;
            } else {
                sb.append('&');
            }
            sb.append(parameter.getKey());
            String value2 = parameter.getValue();
            if (value2 != null) {
                sb.append('=');
                sb.append(value2);
            }
        }
        String string = sb.toString();
        GenericUrl genericUrl2 = new GenericUrl();
        String scheme = genericUrl.getScheme();
        genericUrl2.setScheme(scheme);
        genericUrl2.setHost(genericUrl.getHost());
        genericUrl2.setPathParts(genericUrl.getPathParts());
        int port = genericUrl.getPort();
        if (("http".equals(scheme) && port == 80) || ("https".equals(scheme) && port == 443)) {
            port = -1;
        }
        genericUrl2.setPort(port);
        this.signature = oAuthSigner.computeSignature(escape(str) + '&' + escape(genericUrl2.build()) + '&' + escape(string));
    }

    public void computeTimestamp() {
        this.timestamp = Long.toString(System.currentTimeMillis() / 1000);
    }

    public String getAuthorizationHeader() {
        StringBuilder sb = new StringBuilder("OAuth");
        appendParameter(sb, "realm", this.realm);
        appendParameter(sb, "oauth_callback", this.callback);
        appendParameter(sb, "oauth_consumer_key", this.consumerKey);
        appendParameter(sb, "oauth_nonce", this.nonce);
        appendParameter(sb, "oauth_signature", this.signature);
        appendParameter(sb, "oauth_signature_method", this.signatureMethod);
        appendParameter(sb, "oauth_timestamp", this.timestamp);
        appendParameter(sb, "oauth_token", this.token);
        appendParameter(sb, "oauth_verifier", this.verifier);
        appendParameter(sb, "oauth_version", this.version);
        return sb.substring(0, sb.length() - 1);
    }

    @Override // com.google.api.client.http.HttpRequestInitializer
    public void initialize(HttpRequest httpRequest) {
        httpRequest.setInterceptor(this);
    }

    @Override // com.google.api.client.http.HttpExecuteInterceptor
    public void intercept(HttpRequest httpRequest) throws IOException {
        Map<String, Object> mapMapOf;
        computeNonce();
        computeTimestamp();
        try {
            GenericUrl url = httpRequest.getUrl();
            HttpContent content = httpRequest.getContent();
            if (content instanceof UrlEncodedContent) {
                mapMapOf = Data.mapOf(((UrlEncodedContent) content).getData());
                url.putAll(mapMapOf);
            } else {
                mapMapOf = null;
            }
            computeSignature(httpRequest.getRequestMethod(), url);
            if (mapMapOf != null) {
                Iterator<Map.Entry<String, Object>> it = mapMapOf.entrySet().iterator();
                while (it.hasNext()) {
                    url.remove(it.next().getKey());
                }
            }
            httpRequest.getHeaders().setAuthorization(getAuthorizationHeader());
        } catch (GeneralSecurityException e) {
            IOException iOException = new IOException();
            iOException.initCause(e);
            throw iOException;
        }
    }
}

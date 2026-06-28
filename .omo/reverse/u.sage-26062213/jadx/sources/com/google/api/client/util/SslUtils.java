package com.google.api.client.util;

import defpackage.rb3;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class SslUtils {
    private SslUtils() {
    }

    public static KeyManagerFactory getDefaultKeyManagerFactory() {
        return KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
    }

    public static TrustManagerFactory getDefaultTrustManagerFactory() {
        return TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
    }

    public static KeyManagerFactory getPkixKeyManagerFactory() {
        return KeyManagerFactory.getInstance("PKIX");
    }

    public static TrustManagerFactory getPkixTrustManagerFactory() {
        return TrustManagerFactory.getInstance("PKIX");
    }

    public static SSLContext getSslContext() {
        return SSLContext.getInstance(rb3.SSL);
    }

    public static SSLContext getTlsSslContext() {
        return SSLContext.getInstance(rb3.TLS);
    }

    public static SSLContext initSslContext(SSLContext sSLContext, KeyStore keyStore, TrustManagerFactory trustManagerFactory, KeyStore keyStore2, String str, KeyManagerFactory keyManagerFactory) throws NoSuchAlgorithmException, UnrecoverableKeyException, KeyStoreException, KeyManagementException {
        trustManagerFactory.init(keyStore);
        keyManagerFactory.init(keyStore2, str.toCharArray());
        sSLContext.init(keyManagerFactory.getKeyManagers(), trustManagerFactory.getTrustManagers(), null);
        return sSLContext;
    }

    public static HostnameVerifier trustAllHostnameVerifier() {
        return new HostnameVerifier() { // from class: com.google.api.client.util.SslUtils.2
            @Override // javax.net.ssl.HostnameVerifier
            public boolean verify(String str, SSLSession sSLSession) {
                return true;
            }
        };
    }

    public static SSLContext trustAllSSLContext() throws KeyManagementException {
        TrustManager[] trustManagerArr = {new X509TrustManager() { // from class: com.google.api.client.util.SslUtils.1
            @Override // javax.net.ssl.X509TrustManager
            public X509Certificate[] getAcceptedIssuers() {
                return null;
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            }
        }};
        SSLContext tlsSslContext = getTlsSslContext();
        tlsSslContext.init(null, trustManagerArr, null);
        return tlsSslContext;
    }

    public static SSLContext initSslContext(SSLContext sSLContext, KeyStore keyStore, TrustManagerFactory trustManagerFactory) throws KeyStoreException, KeyManagementException {
        trustManagerFactory.init(keyStore);
        sSLContext.init(null, trustManagerFactory.getTrustManagers(), null);
        return sSLContext;
    }
}

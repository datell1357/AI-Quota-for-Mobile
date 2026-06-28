package com.google.api.client.googleapis.javanet;

import com.google.api.client.googleapis.GoogleUtils;
import com.google.api.client.googleapis.mtls.MtlsProvider;
import com.google.api.client.googleapis.mtls.MtlsUtils;
import com.google.api.client.http.javanet.NetHttpTransport;
import java.security.KeyStore;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class GoogleNetHttpTransport {
    private GoogleNetHttpTransport() {
    }

    public static NetHttpTransport newTrustedTransport(MtlsProvider mtlsProvider) {
        KeyStore keyStore;
        String keyStorePassword;
        if (mtlsProvider.useMtlsClientCertificate()) {
            keyStore = mtlsProvider.getKeyStore();
            keyStorePassword = mtlsProvider.getKeyStorePassword();
        } else {
            keyStore = null;
            keyStorePassword = null;
        }
        return (keyStore == null || keyStorePassword == null) ? new NetHttpTransport.Builder().trustCertificates(GoogleUtils.getCertificateTrustStore()).build() : new NetHttpTransport.Builder().trustCertificates(GoogleUtils.getCertificateTrustStore(), keyStore, keyStorePassword).build();
    }

    public static NetHttpTransport newTrustedTransport() {
        return newTrustedTransport(MtlsUtils.getDefaultMtlsProvider());
    }
}

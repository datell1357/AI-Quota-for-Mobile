package com.google.api.client.http.apache;

import defpackage.k2;
import defpackage.rb3;
import java.io.IOException;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.LinkedHashSet;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
final class SSLSocketFactoryExtension extends rb3 {
    private final SSLSocketFactory socketFactory;

    public SSLSocketFactoryExtension(SSLContext sSLContext) throws NoSuchAlgorithmException, KeyStoreException, KeyManagementException {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init((KeyStore) null);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        if (trustManagers != null) {
            Collections.addAll(linkedHashSet2, trustManagers);
        }
        SSLContext sSLContext2 = SSLContext.getInstance(rb3.TLS);
        sSLContext2.init(!linkedHashSet.isEmpty() ? (KeyManager[]) linkedHashSet.toArray(new KeyManager[linkedHashSet.size()]) : null, !linkedHashSet2.isEmpty() ? (TrustManager[]) linkedHashSet2.toArray(new TrustManager[linkedHashSet2.size()]) : null, null);
        super(sSLContext2, rb3.BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
        this.socketFactory = sSLContext.getSocketFactory();
    }

    @Override // defpackage.rb3
    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        SSLSocket sSLSocket = (SSLSocket) this.socketFactory.createSocket(socket, str, i, z);
        ((k2) getHostnameVerifier()).d(str, sSLSocket);
        return sSLSocket;
    }

    @Override // defpackage.rb3, defpackage.np3
    public Socket createSocket() {
        return this.socketFactory.createSocket();
    }
}

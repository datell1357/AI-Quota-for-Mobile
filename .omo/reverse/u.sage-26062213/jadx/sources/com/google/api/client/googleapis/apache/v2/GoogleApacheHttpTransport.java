package com.google.api.client.googleapis.apache.v2;

import com.google.api.client.googleapis.GoogleUtils;
import com.google.api.client.googleapis.mtls.MtlsProvider;
import com.google.api.client.googleapis.mtls.MtlsUtils;
import com.google.api.client.http.HttpStatusCodes;
import com.google.api.client.http.apache.v2.ApacheHttpTransport;
import com.google.api.client.util.SslUtils;
import defpackage.ax2;
import defpackage.hv2;
import defpackage.ol1;
import defpackage.qb3;
import defpackage.sv3;
import defpackage.u03;
import defpackage.w80;
import defpackage.y43;
import defpackage.zo0;
import java.net.ProxySelector;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLContext;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class GoogleApacheHttpTransport {

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static class SocketFactoryRegistryHandler {
        private final boolean isMtls;
        private final y43 socketFactoryRegistry;

        public SocketFactoryRegistryHandler(MtlsProvider mtlsProvider) throws NoSuchAlgorithmException, UnrecoverableKeyException, KeyStoreException, KeyManagementException {
            KeyStore keyStore;
            String keyStorePassword;
            if (mtlsProvider.useMtlsClientCertificate()) {
                KeyStore keyStore2 = mtlsProvider.getKeyStore();
                keyStorePassword = mtlsProvider.getKeyStorePassword();
                keyStore = keyStore2;
            } else {
                keyStore = null;
                keyStorePassword = null;
            }
            KeyStore certificateTrustStore = GoogleUtils.getCertificateTrustStore();
            SSLContext tlsSslContext = SslUtils.getTlsSslContext();
            if (keyStore == null || keyStorePassword == null) {
                this.isMtls = false;
                SslUtils.initSslContext(tlsSslContext, certificateTrustStore, SslUtils.getPkixTrustManagerFactory());
            } else {
                this.isMtls = true;
                SslUtils.initSslContext(tlsSslContext, certificateTrustStore, SslUtils.getPkixTrustManagerFactory(), keyStore, keyStorePassword, SslUtils.getDefaultKeyManagerFactory());
            }
            qb3 qb3Var = new qb3(tlsSslContext, new zo0(u03.a()));
            HashMap map = new HashMap();
            w80.H("http", "ID");
            Locale locale = Locale.ROOT;
            map.put("http".toLowerCase(locale), hv2.n);
            w80.H("https", "ID");
            map.put("https".toLowerCase(locale), qb3Var);
            this.socketFactoryRegistry = new y43(map);
        }

        public y43 getSocketFactoryRegistry() {
            return this.socketFactoryRegistry;
        }

        public boolean isMtls() {
            return this.isMtls;
        }
    }

    private GoogleApacheHttpTransport() {
    }

    public static ApacheHttpTransport newTrustedTransport(MtlsProvider mtlsProvider) {
        SocketFactoryRegistryHandler socketFactoryRegistryHandler = new SocketFactoryRegistryHandler(mtlsProvider);
        y43 socketFactoryRegistry = socketFactoryRegistryHandler.getSocketFactoryRegistry();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        ax2 ax2Var = new ax2(socketFactoryRegistry, timeUnit);
        ax2Var.p.l = -1;
        ol1 ol1Var = new ol1();
        ol1Var.i = timeUnit;
        ol1Var.d = true;
        ol1Var.g = HttpStatusCodes.STATUS_CODE_OK;
        ol1Var.h = 20;
        ol1Var.c = new sv3(null, ProxySelector.getDefault());
        ol1Var.b = ax2Var;
        ol1Var.e = true;
        ol1Var.f = true;
        return new ApacheHttpTransport(ol1Var.a(), socketFactoryRegistryHandler.isMtls());
    }

    public static ApacheHttpTransport newTrustedTransport() {
        return newTrustedTransport(MtlsUtils.getDefaultMtlsProvider());
    }
}

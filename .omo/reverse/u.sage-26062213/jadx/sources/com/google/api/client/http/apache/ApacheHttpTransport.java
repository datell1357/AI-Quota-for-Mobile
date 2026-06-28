package com.google.api.client.http.apache;

import com.google.api.client.http.HttpMethods;
import com.google.api.client.http.HttpStatusCodes;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.SecurityUtils;
import com.google.api.client.util.SslUtils;
import defpackage.ap0;
import defpackage.cp0;
import defpackage.dn1;
import defpackage.em1;
import defpackage.f1;
import defpackage.fe3;
import defpackage.je3;
import defpackage.km1;
import defpackage.lm1;
import defpackage.nl1;
import defpackage.qy3;
import defpackage.qz0;
import defpackage.rb3;
import defpackage.rd0;
import defpackage.td0;
import defpackage.w80;
import defpackage.wl1;
import defpackage.xh1;
import defpackage.xu;
import java.io.IOException;
import java.io.InputStream;
import java.net.ProxySelector;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import javax.net.ssl.SSLContext;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class ApacheHttpTransport extends HttpTransport {
    private final nl1 httpClient;

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static final class Builder {
        private rb3 socketFactory = rb3.getSocketFactory();
        private km1 params = ApacheHttpTransport.newDefaultHttpParams();
        private ProxySelector proxySelector = ProxySelector.getDefault();

        public ApacheHttpTransport build() {
            return new ApacheHttpTransport(ApacheHttpTransport.newDefaultHttpClient(this.socketFactory, this.params, this.proxySelector));
        }

        public Builder doNotValidateCertificate() {
            SSLSocketFactoryExtension sSLSocketFactoryExtension = new SSLSocketFactoryExtension(SslUtils.trustAllSSLContext());
            this.socketFactory = sSLSocketFactoryExtension;
            sSLSocketFactoryExtension.setHostnameVerifier(rb3.ALLOW_ALL_HOSTNAME_VERIFIER);
            return this;
        }

        public km1 getHttpParams() {
            return this.params;
        }

        public rb3 getSSLSocketFactory() {
            return this.socketFactory;
        }

        public Builder setProxy(em1 em1Var) {
            km1 km1Var = this.params;
            em1 em1Var2 = td0.a;
            w80.L(km1Var, "Parameters");
            km1Var.a(em1Var, "http.route.default-proxy");
            if (em1Var != null) {
                this.proxySelector = null;
            }
            return this;
        }

        public Builder setProxySelector(ProxySelector proxySelector) {
            this.proxySelector = proxySelector;
            if (proxySelector != null) {
                km1 km1Var = this.params;
                em1 em1Var = td0.a;
                w80.L(km1Var, "Parameters");
                km1Var.a(null, "http.route.default-proxy");
            }
            return this;
        }

        public Builder setSocketFactory(rb3 rb3Var) {
            this.socketFactory = (rb3) Preconditions.checkNotNull(rb3Var);
            return this;
        }

        public Builder trustCertificates(KeyStore keyStore) throws KeyStoreException, KeyManagementException {
            SSLContext tlsSslContext = SslUtils.getTlsSslContext();
            SslUtils.initSslContext(tlsSslContext, keyStore, SslUtils.getPkixTrustManagerFactory());
            return setSocketFactory(new SSLSocketFactoryExtension(tlsSslContext));
        }

        public Builder trustCertificatesFromJavaKeyStore(InputStream inputStream, String str) throws IOException {
            KeyStore javaKeyStore = SecurityUtils.getJavaKeyStore();
            SecurityUtils.loadKeyStore(javaKeyStore, inputStream, str);
            return trustCertificates(javaKeyStore);
        }

        public Builder trustCertificatesFromStream(InputStream inputStream) throws NoSuchAlgorithmException, IOException, CertificateException, KeyStoreException {
            KeyStore javaKeyStore = SecurityUtils.getJavaKeyStore();
            javaKeyStore.load(null, null);
            SecurityUtils.loadKeyStoreFromCertificates(javaKeyStore, SecurityUtils.getX509CertificateFactory(), inputStream);
            return trustCertificates(javaKeyStore);
        }
    }

    public ApacheHttpTransport(nl1 nl1Var) {
        this.httpClient = nl1Var;
        km1 params = nl1Var.getParams();
        params = params == null ? newDefaultHttpClient().getParams() : params;
        dn1 dn1Var = dn1.s;
        w80.L(params, "HTTP parameters");
        params.a(dn1Var, "http.protocol.version");
        ((f1) params).a(Boolean.FALSE, "http.protocol.handle-redirects");
    }

    public static ap0 newDefaultHttpClient(rb3 rb3Var, km1 km1Var, ProxySelector proxySelector) {
        je3 je3Var = new je3();
        je3Var.b(new fe3("http", new qz0(17), 80));
        je3Var.b(new fe3("https", rb3Var, 443));
        ap0 ap0Var = new ap0(new qy3(km1Var, je3Var), km1Var);
        ap0Var.setHttpRequestRetryHandler(new cp0(0));
        if (proxySelector != null) {
            ap0Var.setRoutePlanner(new xh1(je3Var, proxySelector));
        }
        return ap0Var;
    }

    public static km1 newDefaultHttpParams() {
        xu xuVar = new xu();
        xuVar.a(Boolean.FALSE, "http.connection.stalecheck");
        xuVar.a(8192, "http.socket.buffer-size");
        xuVar.a(Integer.valueOf(HttpStatusCodes.STATUS_CODE_OK), "http.conn-manager.max-total");
        xuVar.a(new rd0(20), "http.conn-manager.max-per-route");
        return xuVar;
    }

    @Override // com.google.api.client.http.HttpTransport
    public ApacheHttpRequest buildRequest(String str, String str2) {
        return new ApacheHttpRequest(this.httpClient, str.equals(HttpMethods.DELETE) ? new wl1(str2, 0) : str.equals(HttpMethods.GET) ? new wl1(str2, 1) : str.equals(HttpMethods.HEAD) ? new wl1(str2, 2) : str.equals(HttpMethods.POST) ? new lm1(str2, 1) : str.equals(HttpMethods.PUT) ? new lm1(str2, 2) : str.equals(HttpMethods.TRACE) ? new wl1(str2, 4) : str.equals(HttpMethods.OPTIONS) ? new wl1(str2, 3) : new HttpExtensionMethod(str, str2));
    }

    public nl1 getHttpClient() {
        return this.httpClient;
    }

    @Override // com.google.api.client.http.HttpTransport
    public void shutdown() {
        this.httpClient.getConnectionManager().shutdown();
    }

    @Override // com.google.api.client.http.HttpTransport
    public boolean supportsMethod(String str) {
        return true;
    }

    public ApacheHttpTransport() {
        this(newDefaultHttpClient());
    }

    public static ap0 newDefaultHttpClient() {
        return newDefaultHttpClient(rb3.getSocketFactory(), newDefaultHttpParams(), ProxySelector.getDefault());
    }
}

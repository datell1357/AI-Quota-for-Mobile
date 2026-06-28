package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpHeaders;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonParser;
import com.google.api.client.json.JsonToken;
import com.google.api.client.util.Clock;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.SecurityUtils;
import com.google.api.client.util.StringUtils;
import java.io.ByteArrayInputStream;
import java.security.PublicKey;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class GooglePublicKeysManager {
    private static final Pattern MAX_AGE_PATTERN = Pattern.compile("\\s*max-age\\s*=\\s*(\\d+)\\s*");
    private static final long REFRESH_SKEW_MILLIS = 300000;
    private final Clock clock;
    private long expirationTimeMilliseconds;
    private final JsonFactory jsonFactory;
    private final Lock lock;
    private final String publicCertsEncodedUrl;
    private List<PublicKey> publicKeys;
    private final HttpTransport transport;

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static class Builder {
        final JsonFactory jsonFactory;
        final HttpTransport transport;
        Clock clock = Clock.SYSTEM;
        String publicCertsEncodedUrl = GoogleOAuthConstants.DEFAULT_PUBLIC_CERTS_ENCODED_URL;

        public Builder(HttpTransport httpTransport, JsonFactory jsonFactory) {
            this.transport = (HttpTransport) Preconditions.checkNotNull(httpTransport);
            this.jsonFactory = (JsonFactory) Preconditions.checkNotNull(jsonFactory);
        }

        public GooglePublicKeysManager build() {
            return new GooglePublicKeysManager(this);
        }

        public final Clock getClock() {
            return this.clock;
        }

        public final JsonFactory getJsonFactory() {
            return this.jsonFactory;
        }

        public final String getPublicCertsEncodedUrl() {
            return this.publicCertsEncodedUrl;
        }

        public final HttpTransport getTransport() {
            return this.transport;
        }

        public Builder setClock(Clock clock) {
            this.clock = (Clock) Preconditions.checkNotNull(clock);
            return this;
        }

        public Builder setPublicCertsEncodedUrl(String str) {
            this.publicCertsEncodedUrl = (String) Preconditions.checkNotNull(str);
            return this;
        }
    }

    public GooglePublicKeysManager(Builder builder) {
        this.lock = new ReentrantLock();
        this.transport = builder.transport;
        this.jsonFactory = builder.jsonFactory;
        this.clock = builder.clock;
        this.publicCertsEncodedUrl = builder.publicCertsEncodedUrl;
    }

    public long getCacheTimeInSec(HttpHeaders httpHeaders) {
        long jLongValue;
        if (httpHeaders.getCacheControl() != null) {
            for (String str : httpHeaders.getCacheControl().split(",")) {
                Matcher matcher = MAX_AGE_PATTERN.matcher(str);
                if (matcher.matches()) {
                    jLongValue = Long.parseLong(matcher.group(1));
                    break;
                }
            }
            jLongValue = 0;
        } else {
            jLongValue = 0;
        }
        if (httpHeaders.getAge() != null) {
            jLongValue -= httpHeaders.getAge().longValue();
        }
        return Math.max(0L, jLongValue);
    }

    public final Clock getClock() {
        return this.clock;
    }

    public final long getExpirationTimeMilliseconds() {
        return this.expirationTimeMilliseconds;
    }

    public final JsonFactory getJsonFactory() {
        return this.jsonFactory;
    }

    public final String getPublicCertsEncodedUrl() {
        return this.publicCertsEncodedUrl;
    }

    public final List<PublicKey> getPublicKeys() {
        this.lock.lock();
        try {
            if (this.publicKeys == null || this.clock.currentTimeMillis() + REFRESH_SKEW_MILLIS > this.expirationTimeMilliseconds) {
                refresh();
            }
            List<PublicKey> list = this.publicKeys;
            this.lock.unlock();
            return list;
        } catch (Throwable th) {
            this.lock.unlock();
            throw th;
        }
    }

    public final HttpTransport getTransport() {
        return this.transport;
    }

    public GooglePublicKeysManager refresh() {
        this.lock.lock();
        try {
            this.publicKeys = new ArrayList();
            CertificateFactory x509CertificateFactory = SecurityUtils.getX509CertificateFactory();
            HttpResponse httpResponseExecute = this.transport.createRequestFactory().buildGetRequest(new GenericUrl(this.publicCertsEncodedUrl)).execute();
            this.expirationTimeMilliseconds = (getCacheTimeInSec(httpResponseExecute.getHeaders()) * 1000) + this.clock.currentTimeMillis();
            JsonParser jsonParserCreateJsonParser = this.jsonFactory.createJsonParser(httpResponseExecute.getContent());
            JsonToken currentToken = jsonParserCreateJsonParser.getCurrentToken();
            if (currentToken == null) {
                currentToken = jsonParserCreateJsonParser.nextToken();
            }
            Preconditions.checkArgument(currentToken == JsonToken.START_OBJECT);
            while (jsonParserCreateJsonParser.nextToken() != JsonToken.END_OBJECT) {
                try {
                    jsonParserCreateJsonParser.nextToken();
                    this.publicKeys.add(((X509Certificate) x509CertificateFactory.generateCertificate(new ByteArrayInputStream(StringUtils.getBytesUtf8(jsonParserCreateJsonParser.getText())))).getPublicKey());
                } catch (Throwable th) {
                    jsonParserCreateJsonParser.close();
                    throw th;
                }
            }
            this.publicKeys = Collections.unmodifiableList(this.publicKeys);
            jsonParserCreateJsonParser.close();
            this.lock.unlock();
            return this;
        } catch (Throwable th2) {
            this.lock.unlock();
            throw th2;
        }
    }

    public GooglePublicKeysManager(HttpTransport httpTransport, JsonFactory jsonFactory) {
        this(new Builder(httpTransport, jsonFactory));
    }
}

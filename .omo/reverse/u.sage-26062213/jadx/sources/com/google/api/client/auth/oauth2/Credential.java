package com.google.api.client.auth.oauth2;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.HttpUnsuccessfulResponseHandler;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.util.Clock;
import com.google.api.client.util.Lists;
import com.google.api.client.util.Objects;
import com.google.api.client.util.Preconditions;
import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public class Credential implements HttpExecuteInterceptor, HttpRequestInitializer, HttpUnsuccessfulResponseHandler {
    static final Logger LOGGER = Logger.getLogger(Credential.class.getName());
    private String accessToken;
    private final HttpExecuteInterceptor clientAuthentication;
    private final Clock clock;
    private Long expirationTimeMilliseconds;
    private final JsonFactory jsonFactory;
    private final Lock lock;
    private final AccessMethod method;
    private final Collection<CredentialRefreshListener> refreshListeners;
    private String refreshToken;
    private final HttpRequestInitializer requestInitializer;
    private final String tokenServerEncodedUrl;
    private final HttpTransport transport;

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public interface AccessMethod {
        String getAccessTokenFromRequest(HttpRequest httpRequest);

        void intercept(HttpRequest httpRequest, String str);
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static class Builder {
        HttpExecuteInterceptor clientAuthentication;
        JsonFactory jsonFactory;
        final AccessMethod method;
        HttpRequestInitializer requestInitializer;
        GenericUrl tokenServerUrl;
        HttpTransport transport;
        Clock clock = Clock.SYSTEM;
        Collection<CredentialRefreshListener> refreshListeners = Lists.newArrayList();

        public Builder(AccessMethod accessMethod) {
            this.method = (AccessMethod) Preconditions.checkNotNull(accessMethod);
        }

        public Builder addRefreshListener(CredentialRefreshListener credentialRefreshListener) {
            this.refreshListeners.add((CredentialRefreshListener) Preconditions.checkNotNull(credentialRefreshListener));
            return this;
        }

        public Credential build() {
            return new Credential(this);
        }

        public final HttpExecuteInterceptor getClientAuthentication() {
            return this.clientAuthentication;
        }

        public final Clock getClock() {
            return this.clock;
        }

        public final JsonFactory getJsonFactory() {
            return this.jsonFactory;
        }

        public final AccessMethod getMethod() {
            return this.method;
        }

        public final Collection<CredentialRefreshListener> getRefreshListeners() {
            return this.refreshListeners;
        }

        public final HttpRequestInitializer getRequestInitializer() {
            return this.requestInitializer;
        }

        public final GenericUrl getTokenServerUrl() {
            return this.tokenServerUrl;
        }

        public final HttpTransport getTransport() {
            return this.transport;
        }

        public Builder setClientAuthentication(HttpExecuteInterceptor httpExecuteInterceptor) {
            this.clientAuthentication = httpExecuteInterceptor;
            return this;
        }

        public Builder setClock(Clock clock) {
            this.clock = (Clock) Preconditions.checkNotNull(clock);
            return this;
        }

        public Builder setJsonFactory(JsonFactory jsonFactory) {
            this.jsonFactory = jsonFactory;
            return this;
        }

        public Builder setRefreshListeners(Collection<CredentialRefreshListener> collection) {
            this.refreshListeners = (Collection) Preconditions.checkNotNull(collection);
            return this;
        }

        public Builder setRequestInitializer(HttpRequestInitializer httpRequestInitializer) {
            this.requestInitializer = httpRequestInitializer;
            return this;
        }

        public Builder setTokenServerEncodedUrl(String str) {
            this.tokenServerUrl = str == null ? null : new GenericUrl(str);
            return this;
        }

        public Builder setTokenServerUrl(GenericUrl genericUrl) {
            this.tokenServerUrl = genericUrl;
            return this;
        }

        public Builder setTransport(HttpTransport httpTransport) {
            this.transport = httpTransport;
            return this;
        }
    }

    public Credential(Builder builder) {
        this.lock = new ReentrantLock();
        this.method = (AccessMethod) Preconditions.checkNotNull(builder.method);
        this.transport = builder.transport;
        this.jsonFactory = builder.jsonFactory;
        GenericUrl genericUrl = builder.tokenServerUrl;
        this.tokenServerEncodedUrl = genericUrl == null ? null : genericUrl.build();
        this.clientAuthentication = builder.clientAuthentication;
        this.requestInitializer = builder.requestInitializer;
        this.refreshListeners = Collections.unmodifiableCollection(builder.refreshListeners);
        this.clock = (Clock) Preconditions.checkNotNull(builder.clock);
    }

    public TokenResponse executeRefreshToken() {
        if (this.refreshToken == null) {
            return null;
        }
        return new RefreshTokenRequest(this.transport, this.jsonFactory, new GenericUrl(this.tokenServerEncodedUrl), this.refreshToken).setClientAuthentication(this.clientAuthentication).setRequestInitializer(this.requestInitializer).execute();
    }

    public final String getAccessToken() {
        this.lock.lock();
        try {
            return this.accessToken;
        } finally {
            this.lock.unlock();
        }
    }

    public final HttpExecuteInterceptor getClientAuthentication() {
        return this.clientAuthentication;
    }

    public final Clock getClock() {
        return this.clock;
    }

    public final Long getExpirationTimeMilliseconds() {
        this.lock.lock();
        try {
            return this.expirationTimeMilliseconds;
        } finally {
            this.lock.unlock();
        }
    }

    public final Long getExpiresInSeconds() {
        this.lock.lock();
        try {
            Long l = this.expirationTimeMilliseconds;
            if (l != null) {
                return Long.valueOf((l.longValue() - this.clock.currentTimeMillis()) / 1000);
            }
            this.lock.unlock();
            return null;
        } finally {
            this.lock.unlock();
        }
    }

    public final JsonFactory getJsonFactory() {
        return this.jsonFactory;
    }

    public final AccessMethod getMethod() {
        return this.method;
    }

    public final Collection<CredentialRefreshListener> getRefreshListeners() {
        return this.refreshListeners;
    }

    public final String getRefreshToken() {
        this.lock.lock();
        try {
            return this.refreshToken;
        } finally {
            this.lock.unlock();
        }
    }

    public final HttpRequestInitializer getRequestInitializer() {
        return this.requestInitializer;
    }

    public final String getTokenServerEncodedUrl() {
        return this.tokenServerEncodedUrl;
    }

    public final HttpTransport getTransport() {
        return this.transport;
    }

    @Override // com.google.api.client.http.HttpUnsuccessfulResponseHandler
    public boolean handleResponse(HttpRequest httpRequest, HttpResponse httpResponse, boolean z) {
        boolean zFind;
        boolean z2;
        List<String> authenticateAsList = httpResponse.getHeaders().getAuthenticateAsList();
        boolean z3 = true;
        if (authenticateAsList != null) {
            for (String str : authenticateAsList) {
                if (str.startsWith("Bearer ")) {
                    zFind = BearerToken.INVALID_TOKEN_ERROR.matcher(str).find();
                    z2 = true;
                    break;
                }
            }
            zFind = false;
            z2 = false;
        } else {
            zFind = false;
            z2 = false;
        }
        if (!z2) {
            zFind = httpResponse.getStatusCode() == 401;
        }
        if (zFind) {
            try {
                this.lock.lock();
                try {
                    if (Objects.equal(this.accessToken, this.method.getAccessTokenFromRequest(httpRequest))) {
                        if (!refreshToken()) {
                            z3 = false;
                        }
                    }
                    return z3;
                } finally {
                    this.lock.unlock();
                }
            } catch (IOException e) {
                LOGGER.log(Level.SEVERE, "unable to refresh token", (Throwable) e);
            }
        }
        return false;
    }

    @Override // com.google.api.client.http.HttpRequestInitializer
    public void initialize(HttpRequest httpRequest) {
        httpRequest.setInterceptor(this);
        httpRequest.setUnsuccessfulResponseHandler(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0029 A[Catch: all -> 0x001a, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x001a, blocks: (B:3:0x0005, B:6:0x000f, B:15:0x0029, B:11:0x001c), top: B:19:0x0005 }] */
    @Override // com.google.api.client.http.HttpExecuteInterceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void intercept(com.google.api.client.http.HttpRequest r5) {
        /*
            r4 = this;
            java.util.concurrent.locks.Lock r0 = r4.lock
            r0.lock()
            java.lang.Long r0 = r4.getExpiresInSeconds()     // Catch: java.lang.Throwable -> L1a
            java.lang.String r1 = r4.accessToken     // Catch: java.lang.Throwable -> L1a
            if (r1 == 0) goto L1c
            if (r0 == 0) goto L29
            long r0 = r0.longValue()     // Catch: java.lang.Throwable -> L1a
            r2 = 60
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 > 0) goto L29
            goto L1c
        L1a:
            r5 = move-exception
            goto L31
        L1c:
            r4.refreshToken()     // Catch: java.lang.Throwable -> L1a
            java.lang.String r0 = r4.accessToken     // Catch: java.lang.Throwable -> L1a
            if (r0 != 0) goto L29
        L23:
            java.util.concurrent.locks.Lock r4 = r4.lock
            r4.unlock()
            return
        L29:
            com.google.api.client.auth.oauth2.Credential$AccessMethod r0 = r4.method     // Catch: java.lang.Throwable -> L1a
            java.lang.String r1 = r4.accessToken     // Catch: java.lang.Throwable -> L1a
            r0.intercept(r5, r1)     // Catch: java.lang.Throwable -> L1a
            goto L23
        L31:
            java.util.concurrent.locks.Lock r4 = r4.lock
            r4.unlock()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.auth.oauth2.Credential.intercept(com.google.api.client.http.HttpRequest):void");
    }

    public final boolean refreshToken() {
        this.lock.lock();
        boolean z = true;
        try {
            try {
                TokenResponse tokenResponseExecuteRefreshToken = executeRefreshToken();
                if (tokenResponseExecuteRefreshToken != null) {
                    setFromTokenResponse(tokenResponseExecuteRefreshToken);
                    Iterator<CredentialRefreshListener> it = this.refreshListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onTokenResponse(this, tokenResponseExecuteRefreshToken);
                    }
                    return true;
                }
            } catch (TokenResponseException e) {
                if (400 > e.getStatusCode() || e.getStatusCode() >= 500) {
                    z = false;
                }
                if (e.getDetails() != null && z) {
                    setAccessToken(null);
                    setExpiresInSeconds(null);
                }
                Iterator<CredentialRefreshListener> it2 = this.refreshListeners.iterator();
                while (it2.hasNext()) {
                    it2.next().onTokenErrorResponse(this, e.getDetails());
                }
                if (z) {
                    throw e;
                }
            }
            return false;
        } finally {
            this.lock.unlock();
        }
    }

    public Credential setAccessToken(String str) {
        this.lock.lock();
        try {
            this.accessToken = str;
            return this;
        } finally {
            this.lock.unlock();
        }
    }

    public Credential setExpirationTimeMilliseconds(Long l) {
        this.lock.lock();
        try {
            this.expirationTimeMilliseconds = l;
            return this;
        } finally {
            this.lock.unlock();
        }
    }

    public Credential setExpiresInSeconds(Long l) {
        Long lValueOf;
        if (l == null) {
            lValueOf = null;
        } else {
            lValueOf = Long.valueOf((l.longValue() * 1000) + this.clock.currentTimeMillis());
        }
        return setExpirationTimeMilliseconds(lValueOf);
    }

    public Credential setFromTokenResponse(TokenResponse tokenResponse) {
        setAccessToken(tokenResponse.getAccessToken());
        if (tokenResponse.getRefreshToken() != null) {
            setRefreshToken(tokenResponse.getRefreshToken());
        }
        setExpiresInSeconds(tokenResponse.getExpiresInSeconds());
        return this;
    }

    public Credential setRefreshToken(String str) {
        this.lock.lock();
        if (str != null) {
            try {
                Preconditions.checkArgument((this.jsonFactory == null || this.transport == null || this.clientAuthentication == null || this.tokenServerEncodedUrl == null) ? false : true, "Please use the Builder and call setJsonFactory, setTransport, setClientAuthentication and setTokenServerUrl/setTokenServerEncodedUrl");
            } catch (Throwable th) {
                this.lock.unlock();
                throw th;
            }
        }
        this.refreshToken = str;
        this.lock.unlock();
        return this;
    }

    public Credential(AccessMethod accessMethod) {
        this(new Builder(accessMethod));
    }
}

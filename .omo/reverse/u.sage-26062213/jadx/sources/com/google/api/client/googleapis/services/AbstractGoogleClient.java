package com.google.api.client.googleapis.services;

import com.google.api.client.googleapis.batch.BatchRequest;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpRequestFactory;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.util.ObjectParser;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.Strings;
import defpackage.di0;
import defpackage.k21;
import defpackage.xw1;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractGoogleClient {
    private static final String GOOGLE_CLOUD_UNIVERSE_DOMAIN = "GOOGLE_CLOUD_UNIVERSE_DOMAIN";
    private static final Logger logger = Logger.getLogger(AbstractGoogleClient.class.getName());
    private final String applicationName;
    private final String batchPath;
    private final GoogleClientRequestInitializer googleClientRequestInitializer;
    private final HttpRequestInitializer httpRequestInitializer;
    private final ObjectParser objectParser;
    private final HttpRequestFactory requestFactory;
    private final String rootUrl;
    private final String servicePath;
    private final boolean suppressPatternChecks;
    private final boolean suppressRequiredParameterChecks;
    private final String universeDomain;

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static abstract class Builder {
        String applicationName;
        String batchPath;
        Pattern defaultEndpointRegex = Pattern.compile("https://([a-zA-Z]*)(\\.mtls)?\\.googleapis.com/?");
        GoogleClientRequestInitializer googleClientRequestInitializer;
        HttpRequestInitializer httpRequestInitializer;
        boolean isUserConfiguredEndpoint;
        final ObjectParser objectParser;
        String rootUrl;
        String serviceName;
        String servicePath;
        boolean suppressPatternChecks;
        boolean suppressRequiredParameterChecks;
        final HttpTransport transport;
        String universeDomain;

        public Builder(HttpTransport httpTransport, String str, String str2, ObjectParser objectParser, HttpRequestInitializer httpRequestInitializer) {
            this.transport = (HttpTransport) Preconditions.checkNotNull(httpTransport);
            this.objectParser = objectParser;
            this.rootUrl = AbstractGoogleClient.normalizeRootUrl(str);
            this.servicePath = AbstractGoogleClient.normalizeServicePath(str2);
            this.httpRequestInitializer = httpRequestInitializer;
            Matcher matcher = this.defaultEndpointRegex.matcher(str);
            boolean zMatches = matcher.matches();
            this.isUserConfiguredEndpoint = !zMatches;
            this.serviceName = zMatches ? matcher.group(1) : null;
        }

        public abstract AbstractGoogleClient build();

        public final String getApplicationName() {
            return this.applicationName;
        }

        public final GoogleClientRequestInitializer getGoogleClientRequestInitializer() {
            return this.googleClientRequestInitializer;
        }

        public final HttpRequestInitializer getHttpRequestInitializer() {
            return this.httpRequestInitializer;
        }

        public ObjectParser getObjectParser() {
            return this.objectParser;
        }

        public final String getRootUrl() {
            return this.rootUrl;
        }

        public String getServiceName() {
            return this.serviceName;
        }

        public final String getServicePath() {
            return this.servicePath;
        }

        public final boolean getSuppressPatternChecks() {
            return this.suppressPatternChecks;
        }

        public final boolean getSuppressRequiredParameterChecks() {
            return this.suppressRequiredParameterChecks;
        }

        public final HttpTransport getTransport() {
            return this.transport;
        }

        public Builder setApplicationName(String str) {
            this.applicationName = str;
            return this;
        }

        public Builder setBatchPath(String str) {
            this.batchPath = str;
            return this;
        }

        public Builder setGoogleClientRequestInitializer(GoogleClientRequestInitializer googleClientRequestInitializer) {
            this.googleClientRequestInitializer = googleClientRequestInitializer;
            return this;
        }

        public Builder setHttpRequestInitializer(HttpRequestInitializer httpRequestInitializer) {
            this.httpRequestInitializer = httpRequestInitializer;
            return this;
        }

        public Builder setRootUrl(String str) {
            this.isUserConfiguredEndpoint = true;
            this.rootUrl = AbstractGoogleClient.normalizeRootUrl(str);
            return this;
        }

        public Builder setServicePath(String str) {
            this.servicePath = AbstractGoogleClient.normalizeServicePath(str);
            return this;
        }

        public Builder setSuppressAllChecks(boolean z) {
            return setSuppressPatternChecks(true).setSuppressRequiredParameterChecks(true);
        }

        public Builder setSuppressPatternChecks(boolean z) {
            this.suppressPatternChecks = z;
            return this;
        }

        public Builder setSuppressRequiredParameterChecks(boolean z) {
            this.suppressRequiredParameterChecks = z;
            return this;
        }

        public Builder setUniverseDomain(String str) {
            if (str == null || !str.isEmpty()) {
                this.universeDomain = str;
                return this;
            }
            k21.f("The universe domain value cannot be empty.");
            return null;
        }
    }

    public AbstractGoogleClient(Builder builder) {
        this.googleClientRequestInitializer = builder.googleClientRequestInitializer;
        this.universeDomain = determineUniverseDomain(builder);
        this.rootUrl = normalizeRootUrl(determineEndpoint(builder));
        this.servicePath = normalizeServicePath(builder.servicePath);
        this.batchPath = builder.batchPath;
        if (Strings.isNullOrEmpty(builder.applicationName)) {
            logger.warning("Application name is not set. Call Builder#setApplicationName.");
        }
        this.applicationName = builder.applicationName;
        HttpRequestInitializer httpRequestInitializer = builder.httpRequestInitializer;
        HttpTransport httpTransport = builder.transport;
        this.requestFactory = httpRequestInitializer == null ? httpTransport.createRequestFactory() : httpTransport.createRequestFactory(httpRequestInitializer);
        this.objectParser = builder.objectParser;
        this.suppressPatternChecks = builder.suppressPatternChecks;
        this.suppressRequiredParameterChecks = builder.suppressRequiredParameterChecks;
        this.httpRequestInitializer = builder.httpRequestInitializer;
    }

    private String determineEndpoint(Builder builder) {
        boolean zContains = builder.rootUrl.contains(".mtls.");
        if (zContains && !this.universeDomain.equals("googleapis.com")) {
            k21.n("mTLS is not supported in any universe other than googleapis.com");
            return null;
        }
        if (builder.isUserConfiguredEndpoint || builder.serviceName == null) {
            return builder.rootUrl;
        }
        String str = builder.serviceName;
        return zContains ? xw1.s(di0.A("https://", str, ".mtls."), this.universeDomain, "/") : xw1.s(di0.A("https://", str, "."), this.universeDomain, "/");
    }

    private String determineUniverseDomain(Builder builder) {
        String str = builder.universeDomain;
        if (str == null) {
            str = System.getenv(GOOGLE_CLOUD_UNIVERSE_DOMAIN);
        }
        return str == null ? "googleapis.com" : str;
    }

    public static String normalizeRootUrl(String str) {
        Preconditions.checkNotNull(str, "root URL cannot be null.");
        return !str.endsWith("/") ? str.concat("/") : str;
    }

    public static String normalizeServicePath(String str) {
        Preconditions.checkNotNull(str, "service path cannot be null");
        if (str.length() == 1) {
            Preconditions.checkArgument("/".equals(str), "service path must equal \"/\" if it is of length 1.");
            return "";
        }
        if (str.length() <= 0) {
            return str;
        }
        if (!str.endsWith("/")) {
            str = str.concat("/");
        }
        return str.startsWith("/") ? str.substring(1) : str;
    }

    public final BatchRequest batch(HttpRequestInitializer httpRequestInitializer) {
        BatchRequest batchRequest = new BatchRequest(getRequestFactory().getTransport(), httpRequestInitializer);
        if (Strings.isNullOrEmpty(this.batchPath)) {
            batchRequest.setBatchUrl(new GenericUrl(getRootUrl() + "batch"));
            return batchRequest;
        }
        batchRequest.setBatchUrl(new GenericUrl(getRootUrl() + this.batchPath));
        return batchRequest;
    }

    public final String getApplicationName() {
        return this.applicationName;
    }

    public final String getBaseUrl() {
        return this.rootUrl + this.servicePath;
    }

    public final GoogleClientRequestInitializer getGoogleClientRequestInitializer() {
        return this.googleClientRequestInitializer;
    }

    public ObjectParser getObjectParser() {
        return this.objectParser;
    }

    public final HttpRequestFactory getRequestFactory() {
        return this.requestFactory;
    }

    public final String getRootUrl() {
        return this.rootUrl;
    }

    public final String getServicePath() {
        return this.servicePath;
    }

    public final boolean getSuppressPatternChecks() {
        return this.suppressPatternChecks;
    }

    public final boolean getSuppressRequiredParameterChecks() {
        return this.suppressRequiredParameterChecks;
    }

    public final String getUniverseDomain() {
        return this.universeDomain;
    }

    public void initialize(AbstractGoogleClientRequest<?> abstractGoogleClientRequest) {
        validateUniverseDomain();
        if (getGoogleClientRequestInitializer() != null) {
            getGoogleClientRequestInitializer().initialize(abstractGoogleClientRequest);
        }
    }

    public void validateUniverseDomain() {
    }

    public final BatchRequest batch() {
        return batch(null);
    }
}

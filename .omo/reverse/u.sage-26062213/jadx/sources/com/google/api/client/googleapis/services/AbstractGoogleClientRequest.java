package com.google.api.client.googleapis.services;

import com.google.api.client.googleapis.GoogleUtils;
import com.google.api.client.googleapis.MethodOverride;
import com.google.api.client.googleapis.batch.BatchCallback;
import com.google.api.client.googleapis.batch.BatchRequest;
import com.google.api.client.googleapis.media.MediaHttpDownloader;
import com.google.api.client.googleapis.media.MediaHttpUploader;
import com.google.api.client.http.AbstractInputStreamContent;
import com.google.api.client.http.EmptyContent;
import com.google.api.client.http.GZipEncoding;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpContent;
import com.google.api.client.http.HttpHeaders;
import com.google.api.client.http.HttpMethods;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestFactory;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpResponseException;
import com.google.api.client.http.HttpResponseInterceptor;
import com.google.api.client.http.UriTemplate;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.Preconditions;
import defpackage.ev1;
import defpackage.xw1;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractGoogleClientRequest<T> extends GenericData {
    private static final String API_CLIENT_HEADER = "X-Goog-Api-Client";
    protected static final String API_VERSION_HEADER = "X-Goog-Api-Version";
    public static final String USER_AGENT_SUFFIX = "Google-API-Java-Client";
    private final AbstractGoogleClient abstractGoogleClient;
    private boolean disableGZipContent;
    private MediaHttpDownloader downloader;
    private final HttpContent httpContent;
    private HttpHeaders lastResponseHeaders;
    private String lastStatusMessage;
    private final String requestMethod;
    private Class<T> responseClass;
    private boolean returnRawInputStream;
    private MediaHttpUploader uploader;
    private final String uriTemplate;
    private HttpHeaders requestHeaders = new HttpHeaders();
    private int lastStatusCode = -1;

    public AbstractGoogleClientRequest(AbstractGoogleClient abstractGoogleClient, String str, String str2, HttpContent httpContent, Class<T> cls) {
        this.responseClass = (Class) Preconditions.checkNotNull(cls);
        this.abstractGoogleClient = (AbstractGoogleClient) Preconditions.checkNotNull(abstractGoogleClient);
        this.requestMethod = (String) Preconditions.checkNotNull(str);
        this.uriTemplate = (String) Preconditions.checkNotNull(str2);
        this.httpContent = httpContent;
        String applicationName = abstractGoogleClient.getApplicationName();
        HttpHeaders httpHeaders = this.requestHeaders;
        if (applicationName != null) {
            httpHeaders.setUserAgent(applicationName + " Google-API-Java-Client/" + GoogleUtils.VERSION);
        } else {
            httpHeaders.setUserAgent("Google-API-Java-Client/" + GoogleUtils.VERSION);
        }
        this.requestHeaders.set(API_CLIENT_HEADER, (Object) ApiClientVersion.DEFAULT_VERSION);
    }

    private HttpRequest buildHttpRequest(boolean z) {
        Preconditions.checkArgument(this.uploader == null);
        Preconditions.checkArgument(!z || this.requestMethod.equals(HttpMethods.GET));
        final HttpRequest httpRequestBuildRequest = getAbstractGoogleClient().getRequestFactory().buildRequest(z ? HttpMethods.HEAD : this.requestMethod, buildHttpRequestUrl(), this.httpContent);
        new MethodOverride().intercept(httpRequestBuildRequest);
        httpRequestBuildRequest.setParser(getAbstractGoogleClient().getObjectParser());
        if (this.httpContent == null && (this.requestMethod.equals(HttpMethods.POST) || this.requestMethod.equals(HttpMethods.PUT) || this.requestMethod.equals(HttpMethods.PATCH))) {
            httpRequestBuildRequest.setContent(new EmptyContent());
        }
        httpRequestBuildRequest.getHeaders().putAll(this.requestHeaders);
        if (!this.disableGZipContent) {
            httpRequestBuildRequest.setEncoding(new GZipEncoding());
        }
        httpRequestBuildRequest.setResponseReturnRawInputStream(this.returnRawInputStream);
        final HttpResponseInterceptor responseInterceptor = httpRequestBuildRequest.getResponseInterceptor();
        httpRequestBuildRequest.setResponseInterceptor(new HttpResponseInterceptor() { // from class: com.google.api.client.googleapis.services.AbstractGoogleClientRequest.3
            @Override // com.google.api.client.http.HttpResponseInterceptor
            public void interceptResponse(HttpResponse httpResponse) throws IOException {
                HttpResponseInterceptor httpResponseInterceptor = responseInterceptor;
                if (httpResponseInterceptor != null) {
                    httpResponseInterceptor.interceptResponse(httpResponse);
                }
                if (!httpResponse.isSuccessStatusCode() && httpRequestBuildRequest.getThrowExceptionOnExecuteError()) {
                    throw AbstractGoogleClientRequest.this.newExceptionOnError(httpResponse);
                }
            }
        });
        return httpRequestBuildRequest;
    }

    private HttpResponse executeUnparsed(boolean z) throws IOException {
        HttpResponse httpResponseUpload;
        if (this.uploader == null) {
            httpResponseUpload = buildHttpRequest(z).execute();
        } else {
            GenericUrl genericUrlBuildHttpRequestUrl = buildHttpRequestUrl();
            boolean throwExceptionOnExecuteError = getAbstractGoogleClient().getRequestFactory().buildRequest(this.requestMethod, genericUrlBuildHttpRequestUrl, this.httpContent).getThrowExceptionOnExecuteError();
            httpResponseUpload = this.uploader.setInitiationHeaders(this.requestHeaders).setDisableGZipContent(this.disableGZipContent).upload(genericUrlBuildHttpRequestUrl);
            httpResponseUpload.getRequest().setParser(getAbstractGoogleClient().getObjectParser());
            if (throwExceptionOnExecuteError && !httpResponseUpload.isSuccessStatusCode()) {
                throw newExceptionOnError(httpResponseUpload);
            }
        }
        this.lastResponseHeaders = httpResponseUpload.getHeaders();
        this.lastStatusCode = httpResponseUpload.getStatusCode();
        this.lastStatusMessage = httpResponseUpload.getStatusMessage();
        return httpResponseUpload;
    }

    private static HttpRequestInitializer mediaUploadRequestUserAgentInitializer(final String str, final HttpRequestInitializer httpRequestInitializer) {
        return str == null ? httpRequestInitializer : httpRequestInitializer == null ? new HttpRequestInitializer() { // from class: com.google.api.client.googleapis.services.AbstractGoogleClientRequest.1
            @Override // com.google.api.client.http.HttpRequestInitializer
            public void initialize(HttpRequest httpRequest) {
                httpRequest.getHeaders().setUserAgent(str);
            }
        } : new HttpRequestInitializer() { // from class: com.google.api.client.googleapis.services.AbstractGoogleClientRequest.2
            @Override // com.google.api.client.http.HttpRequestInitializer
            public void initialize(HttpRequest httpRequest) {
                httpRequestInitializer.initialize(httpRequest);
                httpRequest.getHeaders().setUserAgent(str);
            }
        };
    }

    public GenericUrl buildHttpRequestUrl() {
        return new GenericUrl(UriTemplate.expand(this.abstractGoogleClient.getBaseUrl(), this.uriTemplate, this, true));
    }

    public HttpRequest buildHttpRequestUsingHead() {
        return buildHttpRequest(true);
    }

    public final void checkRequiredParameter(Object obj, String str) {
        Preconditions.checkArgument(this.abstractGoogleClient.getSuppressRequiredParameterChecks() || obj != null, "Required parameter %s must be specified", str);
    }

    public T execute() {
        return (T) executeUnparsed().parseAs((Class) this.responseClass);
    }

    public void executeAndDownloadTo(OutputStream outputStream) throws IOException {
        executeUnparsed().download(outputStream);
    }

    public InputStream executeAsInputStream() {
        return executeUnparsed().getContent();
    }

    public HttpResponse executeMedia() {
        set("alt", (Object) "media");
        return executeUnparsed();
    }

    public void executeMediaAndDownloadTo(OutputStream outputStream) throws IOException {
        MediaHttpDownloader mediaHttpDownloader = this.downloader;
        if (mediaHttpDownloader == null) {
            executeMedia().download(outputStream);
        } else {
            mediaHttpDownloader.download(buildHttpRequestUrl(), this.requestHeaders, outputStream);
        }
    }

    public InputStream executeMediaAsInputStream() {
        return executeMedia().getContent();
    }

    public HttpResponse executeUsingHead() throws IOException {
        Preconditions.checkArgument(this.uploader == null);
        HttpResponse httpResponseExecuteUnparsed = executeUnparsed(true);
        httpResponseExecuteUnparsed.ignore();
        return httpResponseExecuteUnparsed;
    }

    public AbstractGoogleClient getAbstractGoogleClient() {
        return this.abstractGoogleClient;
    }

    public String getApiVersionHeader() {
        return (String) this.requestHeaders.get(API_VERSION_HEADER);
    }

    public final boolean getDisableGZipContent() {
        return this.disableGZipContent;
    }

    public final HttpContent getHttpContent() {
        return this.httpContent;
    }

    public final HttpHeaders getLastResponseHeaders() {
        return this.lastResponseHeaders;
    }

    public final int getLastStatusCode() {
        return this.lastStatusCode;
    }

    public final String getLastStatusMessage() {
        return this.lastStatusMessage;
    }

    public final MediaHttpDownloader getMediaHttpDownloader() {
        return this.downloader;
    }

    public final MediaHttpUploader getMediaHttpUploader() {
        return this.uploader;
    }

    public final HttpHeaders getRequestHeaders() {
        return this.requestHeaders;
    }

    public final String getRequestMethod() {
        return this.requestMethod;
    }

    public final Class<T> getResponseClass() {
        return this.responseClass;
    }

    public final boolean getReturnRawInputSteam() {
        return this.returnRawInputStream;
    }

    public final String getUriTemplate() {
        return this.uriTemplate;
    }

    public final void initializeMediaDownload() {
        HttpRequestFactory requestFactory = this.abstractGoogleClient.getRequestFactory();
        this.downloader = new MediaHttpDownloader(requestFactory.getTransport(), requestFactory.getInitializer());
    }

    public final void initializeMediaUpload(AbstractInputStreamContent abstractInputStreamContent) {
        HttpRequestFactory requestFactory = this.abstractGoogleClient.getRequestFactory();
        MediaHttpUploader mediaHttpUploader = new MediaHttpUploader(abstractInputStreamContent, requestFactory.getTransport(), mediaUploadRequestUserAgentInitializer(this.abstractGoogleClient.getApplicationName(), requestFactory.getInitializer()));
        this.uploader = mediaHttpUploader;
        mediaHttpUploader.setInitiationRequestMethod(this.requestMethod);
        HttpContent httpContent = this.httpContent;
        if (httpContent != null) {
            this.uploader.setMetadata(httpContent);
        }
    }

    public IOException newExceptionOnError(HttpResponse httpResponse) {
        return new HttpResponseException(httpResponse);
    }

    public final <E> void queue(BatchRequest batchRequest, Class<E> cls, BatchCallback<T, E> batchCallback) {
        Preconditions.checkArgument(this.uploader == null, "Batching media requests is not supported");
        batchRequest.queue(buildHttpRequest(), getResponseClass(), cls, batchCallback);
    }

    @Override // com.google.api.client.util.GenericData
    public AbstractGoogleClientRequest<T> set(String str, Object obj) {
        return (AbstractGoogleClientRequest) super.set(str, obj);
    }

    public AbstractGoogleClientRequest<T> setDisableGZipContent(boolean z) {
        this.disableGZipContent = z;
        return this;
    }

    public AbstractGoogleClientRequest<T> setRequestHeaders(HttpHeaders httpHeaders) {
        this.requestHeaders = httpHeaders;
        return this;
    }

    public AbstractGoogleClientRequest<T> setReturnRawInputStream(boolean z) {
        this.returnRawInputStream = z;
        return this;
    }

    /* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
    public static class ApiClientVersion {
        static final String DEFAULT_VERSION = new ApiClientVersion().toString();
        private final String versionString;

        public ApiClientVersion(String str, String str2, String str3, String str4) {
            StringBuilder sb = new StringBuilder("gl-java/");
            sb.append(formatSemver(str));
            sb.append(" gdcl/");
            sb.append(formatSemver(str4));
            if (str2 != null && str3 != null) {
                sb.append(" ");
                sb.append(formatName(str2));
                sb.append("/");
                sb.append(formatSemver(str3));
            }
            this.versionString = sb.toString();
        }

        private static String formatName(String str) {
            return str.toLowerCase().replaceAll("[^\\w\\d\\-]", "-");
        }

        private static String formatSemver(String str, String str2) {
            if (str == null) {
                return null;
            }
            Matcher matcher = Pattern.compile("(\\d+\\.\\d+\\.\\d+).*").matcher(str);
            return matcher.find() ? matcher.group(1) : str2;
        }

        private static String getJavaVersion() {
            String property = System.getProperty("java.version");
            if (property == null) {
                return null;
            }
            String semver = formatSemver(property, null);
            if (semver != null) {
                return semver;
            }
            Matcher matcher = Pattern.compile("^(\\d+)[^\\d]?").matcher(property);
            if (!matcher.find()) {
                return null;
            }
            return matcher.group(1) + ".0.0";
        }

        public String toString() {
            String property = System.getProperty("org.graalvm.nativeimage.imagecode");
            if (property != null && property.equals("runtime")) {
                String[] strArrSplit = this.versionString.split(" ");
                if (strArrSplit.length > 0 && strArrSplit[0].startsWith("gl-java")) {
                    strArrSplit[0] = xw1.s(new StringBuilder(), strArrSplit[0], "-graalvm");
                    ev1 ev1Var = new ev1(" ");
                    Iterator<T> it = Arrays.asList(strArrSplit).iterator();
                    StringBuilder sb = new StringBuilder();
                    ev1Var.a(sb, it);
                    return sb.toString();
                }
            }
            return this.versionString;
        }

        private static String formatSemver(String str) {
            return formatSemver(str, str);
        }

        public ApiClientVersion() {
            this(getJavaVersion(), System.getProperty("os.name"), System.getProperty("os.version"), GoogleUtils.VERSION);
        }
    }

    public HttpResponse executeUnparsed() {
        return executeUnparsed(false);
    }

    public HttpRequest buildHttpRequest() {
        return buildHttpRequest(false);
    }
}

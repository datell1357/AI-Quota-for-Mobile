.class public final Lcom/google/api/services/calendar/Calendar$Builder;
.super Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/calendar/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/api/services/calendar/Calendar$Builder;->chooseEndpoint(Lcom/google/api/client/http/HttpTransport;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    const-string v4, "calendar/v3/"

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-object v2, p2

    .line 11
    move-object v5, p3

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpRequestInitializer;Z)V

    .line 13
    .line 14
    .line 15
    const-string p0, "batch/calendar/v3"

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/google/api/services/calendar/Calendar$Builder;->setBatchPath(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Builder;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static chooseEndpoint(Lcom/google/api/client/http/HttpTransport;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "GOOGLE_API_USE_MTLS_ENDPOINT"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "auto"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    const-string v2, "always"

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_2

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpTransport;->isMtls()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string p0, "https://www.googleapis.com/"

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_2
    :goto_0
    const-string p0, "https://www.mtls.googleapis.com/"

    .line 39
    .line 40
    return-object p0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/google/api/services/calendar/Calendar$Builder;->build()Lcom/google/api/services/calendar/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/google/api/services/calendar/Calendar$Builder;->build()Lcom/google/api/services/calendar/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/google/api/services/calendar/Calendar;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/services/calendar/Calendar;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/api/services/calendar/Calendar;-><init>(Lcom/google/api/services/calendar/Calendar$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public bridge synthetic setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setApplicationName(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/Calendar$Builder;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic setBatchPath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Builder;->setBatchPath(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setBatchPath(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->setBatchPath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/Calendar$Builder;

    .line 6
    .line 7
    return-object p0
.end method

.method public setCalendarRequestInitializer(Lcom/google/api/services/calendar/CalendarRequestInitializer;)Lcom/google/api/services/calendar/Calendar$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/Calendar$Builder;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/services/calendar/Calendar$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/services/calendar/Calendar$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/services/calendar/Calendar$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setGoogleClientRequestInitializer(Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/Calendar$Builder;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/services/calendar/Calendar$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/services/calendar/Calendar$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/services/calendar/Calendar$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/Calendar$Builder;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setRootUrl(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setRootUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/Calendar$Builder;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setServicePath(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setServicePath(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/Calendar$Builder;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Builder;->setSuppressAllChecks(Z)Lcom/google/api/services/calendar/Calendar$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Builder;->setSuppressAllChecks(Z)Lcom/google/api/services/calendar/Calendar$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setSuppressAllChecks(Z)Lcom/google/api/services/calendar/Calendar$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setSuppressAllChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/Calendar$Builder;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Builder;->setSuppressPatternChecks(Z)Lcom/google/api/services/calendar/Calendar$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Builder;->setSuppressPatternChecks(Z)Lcom/google/api/services/calendar/Calendar$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setSuppressPatternChecks(Z)Lcom/google/api/services/calendar/Calendar$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setSuppressPatternChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/Calendar$Builder;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Builder;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/services/calendar/Calendar$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Builder;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/services/calendar/Calendar$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setSuppressRequiredParameterChecks(Z)Lcom/google/api/services/calendar/Calendar$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;->setSuppressRequiredParameterChecks(Z)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/Calendar$Builder;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic setUniverseDomain(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Builder;->setUniverseDomain(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setUniverseDomain(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->setUniverseDomain(Ljava/lang/String;)Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/Calendar$Builder;

    .line 6
    .line 7
    return-object p0
.end method

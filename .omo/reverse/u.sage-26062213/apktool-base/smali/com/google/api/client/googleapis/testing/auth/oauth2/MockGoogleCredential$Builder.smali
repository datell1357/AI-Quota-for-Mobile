.class public Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;
.super Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/api/client/auth/oauth2/Credential;
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;->build()Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;->build()Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->getTransport()Lcom/google/api/client/http/HttpTransport;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/google/api/client/testing/http/MockHttpTransport$Builder;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/google/api/client/testing/http/MockHttpTransport$Builder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/api/client/testing/http/MockHttpTransport$Builder;->build()Lcom/google/api/client/testing/http/MockHttpTransport;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;->setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->getClientAuthentication()Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$MockClientAuthentication;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1}, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$MockClientAuthentication;-><init>(Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$1;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/Credential$Builder;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    new-instance v0, Lcom/google/api/client/json/gson/GsonFactory;

    .line 41
    .line 42
    invoke-direct {v0}, Lcom/google/api/client/json/gson/GsonFactory;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;->setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;

    .line 46
    .line 47
    .line 48
    :cond_2
    new-instance v0, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential;-><init>(Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method public bridge synthetic setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/Credential$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic setClock(Lcom/google/api/client/util/Clock;)Lcom/google/api/client/auth/oauth2/Credential$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;->setClock(Lcom/google/api/client/util/Clock;)Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setClock(Lcom/google/api/client/util/Clock;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;->setClock(Lcom/google/api/client/util/Clock;)Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setClock(Lcom/google/api/client/util/Clock;)Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setClock(Lcom/google/api/client/util/Clock;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/auth/oauth2/Credential$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;->setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;->setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/auth/oauth2/Credential$Builder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;->setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;->setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockGoogleCredential$Builder;

    .line 6
    .line 7
    return-object p0
.end method

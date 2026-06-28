.class final Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest$2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcom/google/api/client/http/HttpRequestInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->mediaUploadRequestUserAgentInitializer(Ljava/lang/String;Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/HttpRequestInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationName:Ljava/lang/String;

.field final synthetic val$originalInitializer:Lcom/google/api/client/http/HttpRequestInitializer;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpRequestInitializer;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest$2;->val$originalInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest$2;->val$applicationName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public initialize(Lcom/google/api/client/http/HttpRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest$2;->val$originalInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/api/client/http/HttpRequestInitializer;->initialize(Lcom/google/api/client/http/HttpRequest;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest$2;->val$applicationName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.class public Lcom/google/api/client/googleapis/testing/services/MockGoogleClient;
.super Lcom/google/api/client/googleapis/services/AbstractGoogleClient;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/testing/services/MockGoogleClient$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/api/client/googleapis/testing/services/MockGoogleClient$Builder;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;-><init>(Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/util/ObjectParser;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/api/client/googleapis/testing/services/MockGoogleClient$Builder;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/googleapis/testing/services/MockGoogleClient$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/util/ObjectParser;Lcom/google/api/client/http/HttpRequestInitializer;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/testing/services/MockGoogleClient;-><init>(Lcom/google/api/client/googleapis/testing/services/MockGoogleClient$Builder;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

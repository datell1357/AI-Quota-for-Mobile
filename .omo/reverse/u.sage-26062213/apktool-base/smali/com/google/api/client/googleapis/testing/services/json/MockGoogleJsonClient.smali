.class public Lcom/google/api/client/googleapis/testing/services/json/MockGoogleJsonClient;
.super Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/testing/services/json/MockGoogleJsonClient$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/api/client/googleapis/testing/services/json/MockGoogleJsonClient$Builder;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient;-><init>(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClient$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpRequestInitializer;Z)V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/api/client/googleapis/testing/services/json/MockGoogleJsonClient$Builder;

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
    move v6, p6

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/googleapis/testing/services/json/MockGoogleJsonClient$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpRequestInitializer;Z)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/testing/services/json/MockGoogleJsonClient;-><init>(Lcom/google/api/client/googleapis/testing/services/json/MockGoogleJsonClient$Builder;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

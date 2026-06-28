.class public final Lcom/google/api/client/googleapis/util/Utils;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/util/Utils$TransportInstanceHolder;,
        Lcom/google/api/client/googleapis/util/Utils$JsonFactoryInstanceHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getDefaultJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/client/googleapis/util/Utils$JsonFactoryInstanceHolder;->INSTANCE:Lcom/google/api/client/json/JsonFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getDefaultTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/client/googleapis/util/Utils$TransportInstanceHolder;->INSTANCE:Lcom/google/api/client/http/HttpTransport;

    .line 2
    .line 3
    return-object v0
.end method

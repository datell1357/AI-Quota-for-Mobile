.class public Lcom/google/api/client/testing/http/apache/MockHttpClient;
.super Lap0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field responseCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0}, Lc1;-><init>(Lqy3;Lkm1;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public createClientRequestDirector(Lqm1;Lg60;Lie0;Lbe0;Lzm1;Lnm1;Lsm1;Lp33;Lxj;Lxj;Ld94;Lkm1;)Ly63;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/api/client/testing/http/apache/MockHttpClient$1;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/google/api/client/testing/http/apache/MockHttpClient$1;-><init>(Lcom/google/api/client/testing/http/apache/MockHttpClient;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public final getResponseCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/api/client/testing/http/apache/MockHttpClient;->responseCode:I

    .line 2
    .line 3
    return p0
.end method

.method public setResponseCode(I)Lcom/google/api/client/testing/http/apache/MockHttpClient;
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/google/api/client/testing/http/apache/MockHttpClient;->responseCode:I

    .line 10
    .line 11
    return-object p0
.end method

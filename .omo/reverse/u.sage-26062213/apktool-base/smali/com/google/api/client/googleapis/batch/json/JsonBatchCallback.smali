.class public abstract Lcom/google/api/client/googleapis/batch/json/JsonBatchCallback;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcom/google/api/client/googleapis/batch/BatchCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/api/client/googleapis/batch/BatchCallback<",
        "TT;",
        "Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract onFailure(Lcom/google/api/client/googleapis/json/GoogleJsonError;Lcom/google/api/client/http/HttpHeaders;)V
.end method

.method public final onFailure(Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;Lcom/google/api/client/http/HttpHeaders;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;->getError()Lcom/google/api/client/googleapis/json/GoogleJsonError;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/batch/json/JsonBatchCallback;->onFailure(Lcom/google/api/client/googleapis/json/GoogleJsonError;Lcom/google/api/client/http/HttpHeaders;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic onFailure(Ljava/lang/Object;Lcom/google/api/client/http/HttpHeaders;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;

    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/batch/json/JsonBatchCallback;->onFailure(Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;Lcom/google/api/client/http/HttpHeaders;)V

    return-void
.end method

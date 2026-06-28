.class public interface abstract Lcom/google/api/client/googleapis/batch/BatchCallback;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/Object;Lcom/google/api/client/http/HttpHeaders;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/api/client/http/HttpHeaders;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onSuccess(Ljava/lang/Object;Lcom/google/api/client/http/HttpHeaders;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/api/client/http/HttpHeaders;",
            ")V"
        }
    .end annotation
.end method

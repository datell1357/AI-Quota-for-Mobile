.class public interface abstract Lcom/google/api/client/http/HttpContent;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcom/google/api/client/util/StreamingContent;


# virtual methods
.method public abstract getLength()J
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract retrySupported()Z
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
.end method

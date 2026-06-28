.class public interface abstract Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/auth/oauth2/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccessMethod"
.end annotation


# virtual methods
.method public abstract getAccessTokenFromRequest(Lcom/google/api/client/http/HttpRequest;)Ljava/lang/String;
.end method

.method public abstract intercept(Lcom/google/api/client/http/HttpRequest;Ljava/lang/String;)V
.end method

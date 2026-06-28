.class public interface abstract Lcom/google/android/gms/auth/api/proxy/ProxyClient;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcom/google/android/gms/common/api/HasApiKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/HasApiKey<",
        "Lcom/google/android/gms/auth/api/AuthProxyOptions;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getSpatulaHeader()Low3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Low3;"
        }
    .end annotation
.end method

.method public abstract performProxyRequest(Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)Low3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/proxy/ProxyRequest;",
            ")",
            "Low3;"
        }
    .end annotation
.end method

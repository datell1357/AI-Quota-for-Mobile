.class public interface abstract Lcom/google/android/gms/auth/api/identity/AuthorizationClient;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcom/google/android/gms/common/api/HasApiKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/HasApiKey<",
        "Lcom/google/android/gms/auth/api/identity/zba;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract authorize(Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;)Low3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;",
            ")",
            "Low3;"
        }
    .end annotation
.end method

.method public abstract clearToken(Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;)Low3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;",
            ")",
            "Low3;"
        }
    .end annotation
.end method

.method public abstract getAuthorizationResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/identity/AuthorizationResult;
.end method

.method public abstract revokeAccess(Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;)Low3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;",
            ")",
            "Low3;"
        }
    .end annotation
.end method

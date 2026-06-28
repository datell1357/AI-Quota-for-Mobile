.class public interface abstract Lcom/google/android/gms/auth/api/phone/SmsCodeAutofillClient;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcom/google/android/gms/common/api/HasApiKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/phone/SmsCodeAutofillClient$PermissionState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/HasApiKey<",
        "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract checkPermissionState()Low3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Low3;"
        }
    .end annotation
.end method

.method public abstract hasOngoingSmsRequest(Ljava/lang/String;)Low3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Low3;"
        }
    .end annotation
.end method

.method public abstract startSmsCodeRetriever()Low3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Low3;"
        }
    .end annotation
.end method

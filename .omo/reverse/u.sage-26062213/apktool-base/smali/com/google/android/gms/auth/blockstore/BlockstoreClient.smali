.class public interface abstract Lcom/google/android/gms/auth/blockstore/BlockstoreClient;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcom/google/android/gms/common/api/HasApiKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/HasApiKey<",
        "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_BYTES_DATA_KEY:Ljava/lang/String; = "com.google.android.gms.auth.blockstore.DEFAULT_BYTES_DATA_KEY"

.field public static final MAX_ENTRY_COUNT:I = 0x10

.field public static final MAX_SIZE:I = 0x1000


# virtual methods
.method public abstract deleteBytes(Lcom/google/android/gms/auth/blockstore/DeleteBytesRequest;)Low3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/blockstore/DeleteBytesRequest;",
            ")",
            "Low3;"
        }
    .end annotation
.end method

.method public abstract isEndToEndEncryptionAvailable()Low3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Low3;"
        }
    .end annotation
.end method

.method public abstract retrieveBytes()Low3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Low3;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract retrieveBytes(Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest;)Low3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest;",
            ")",
            "Low3;"
        }
    .end annotation
.end method

.method public abstract storeBytes(Lcom/google/android/gms/auth/blockstore/StoreBytesData;)Low3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/blockstore/StoreBytesData;",
            ")",
            "Low3;"
        }
    .end annotation
.end method

.class public final Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/util/List;

.field private zzb:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest$Builder;->zza:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest$Builder;->zzb:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest$Builder;->zza:Ljava/util/List;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest$Builder;->zzb:Z

    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest;-><init>(Ljava/util/List;Z)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public setKeys(Ljava/util/List;)Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest$Builder;"
        }
    .end annotation

    .line 1
    const-string v0, "Keys cannot be set to null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest$Builder;->zza:Ljava/util/List;

    .line 7
    .line 8
    return-object p0
.end method

.method public setRetrieveAll(Z)Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/auth/blockstore/RetrieveBytesRequest$Builder;->zzb:Z

    .line 2
    .line 3
    return-object p0
.end method

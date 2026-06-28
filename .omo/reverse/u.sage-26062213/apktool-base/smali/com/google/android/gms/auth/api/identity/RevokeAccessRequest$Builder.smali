.class public final Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zba:Lzj4;

.field private zbb:Landroid/accounts/Account;

.field private zbc:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    const/4 p0, 0x0

    throw p0
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->zbb()Lzj4;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;->zba:Lzj4;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->zbc()Landroid/accounts/Account;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;->zbb:Landroid/accounts/Account;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;->zbd()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;->zbc:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public synthetic constructor <init>([B)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;->zba:Lzj4;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;->zbb:Landroid/accounts/Account;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;->zbc:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;-><init>(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public setAccount(Landroid/accounts/Account;)Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;->zbb:Landroid/accounts/Account;

    .line 2
    .line 3
    return-object p0
.end method

.method public setScopes(Ljava/util/List;)Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lzj4;->h(Ljava/util/List;)Lzj4;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;->zba:Lzj4;

    .line 6
    .line 7
    return-object p0
.end method

.method public final zba(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;->zbc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

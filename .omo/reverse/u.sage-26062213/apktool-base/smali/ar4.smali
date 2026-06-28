.class public final Lar4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcom/google/android/gms/auth/account/WorkAccountApi$AddAccountResult;


# static fields
.field public static final p:Landroid/accounts/Account;


# instance fields
.field public final n:Lcom/google/android/gms/common/api/Status;

.field public final o:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/accounts/Account;

    .line 2
    .line 3
    const-string v1, "DUMMY_NAME"

    .line 4
    .line 5
    const-string v2, "com.google"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lar4;->p:Landroid/accounts/Account;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/accounts/Account;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lar4;->n:Lcom/google/android/gms/common/api/Status;

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    sget-object p2, Lar4;->p:Landroid/accounts/Account;

    .line 9
    .line 10
    :cond_0
    iput-object p2, p0, Lar4;->o:Landroid/accounts/Account;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getAccount()Landroid/accounts/Account;
    .locals 0

    .line 1
    iget-object p0, p0, Lar4;->o:Landroid/accounts/Account;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 0

    .line 1
    iget-object p0, p0, Lar4;->n:Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    return-object p0
.end method

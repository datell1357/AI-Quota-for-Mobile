.class public abstract Lvc1;
.super Lsc1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final n:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

.field public final o:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

.field public final p:Landroid/os/Handler;

.field public final q:Lid1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lid1;

    .line 10
    .line 11
    invoke-direct {v1}, Lhd1;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lvc1;->q:Lid1;

    .line 15
    .line 16
    iput-object p1, p0, Lvc1;->n:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 17
    .line 18
    iput-object p1, p0, Lvc1;->o:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 19
    .line 20
    iput-object v0, p0, Lvc1;->p:Landroid/os/Handler;

    .line 21
    .line 22
    return-void
.end method

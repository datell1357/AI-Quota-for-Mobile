.class public final Lso2;
.super Lgk2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final c:Lck2;


# direct methods
.method public constructor <init>(Luo2;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lck2;

    .line 5
    .line 6
    new-instance v1, Lr6;

    .line 7
    .line 8
    const/16 v2, 0xd

    .line 9
    .line 10
    invoke-direct {v1, v2, p1}, Lr6;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lck2;-><init>(Lr6;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lck2;->b(Lgk2;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lso2;->c:Lck2;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 0

    .line 1
    return-void
.end method

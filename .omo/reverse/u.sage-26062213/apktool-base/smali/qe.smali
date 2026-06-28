.class public final Lqe;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe;


# instance fields
.field public final a:Lws2;

.field public final b:Lzl3;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lrs1;

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lrs1;-><init>(J)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lqe;->a:Lws2;

    .line 16
    .line 17
    new-instance v0, Lzl3;

    .line 18
    .line 19
    invoke-direct {v0}, Lzl3;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lqe;->b:Lzl3;

    .line 23
    .line 24
    return-void
.end method

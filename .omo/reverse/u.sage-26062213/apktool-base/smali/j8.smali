.class public final Lj8;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ljava/lang/Object;

.field public volatile b:Ljava/lang/Object;

.field public volatile c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ldr2;)V
    .locals 3

    .line 1
    new-instance v0, Llu0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lpr3;

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    invoke-direct {v1, v2}, Lpr3;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lj8;->c:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lj8;->a:Ljava/lang/Object;

    .line 24
    .line 25
    iput-object v1, p0, Lj8;->b:Ljava/lang/Object;

    .line 26
    .line 27
    new-instance v0, Li8;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Li8;-><init>(Lj8;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ldr2;->a(Lxq0;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(Lhz0;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lj8;->a:Ljava/lang/Object;

    return-void
.end method

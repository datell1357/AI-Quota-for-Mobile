.class public final Lhh;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Log1;


# instance fields
.field public volatile n:Lvl0;

.field public final o:Ljava/lang/Object;

.field public final p:Ldd1;


# direct methods
.method public constructor <init>(Ldd1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lhh;->o:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lhh;->p:Ldd1;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lhh;->n:Lvl0;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lhh;->o:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lhh;->n:Lvl0;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lhh;->p:Ldd1;

    .line 13
    .line 14
    new-instance v2, Lih;

    .line 15
    .line 16
    iget-object v1, v1, Ldd1;->o:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lu/sage/MainApplication;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v2, v1, v3}, Lih;-><init>(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lvl0;

    .line 25
    .line 26
    invoke-direct {v1, v2}, Lvl0;-><init>(Lih;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lhh;->n:Lvl0;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v0

    .line 35
    goto :goto_2

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0

    .line 38
    :cond_1
    :goto_2
    iget-object p0, p0, Lhh;->n:Lvl0;

    .line 39
    .line 40
    return-object p0
.end method

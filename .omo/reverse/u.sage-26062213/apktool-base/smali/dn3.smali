.class public final Ldn3;
.super Lib0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Llg2;

.field public e:Llg2;

.field public f:Lyh3;

.field public final g:Ldi3;

.field public final h:Lr6;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lib0;-><init>(I)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Ldi3;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, v1, p0}, Ldi3;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ldn3;->g:Ldi3;

    .line 12
    .line 13
    new-instance v0, Lsp0;

    .line 14
    .line 15
    const/16 v1, 0x12

    .line 16
    .line 17
    invoke-direct {v0, v1, p0}, Lsp0;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lwo3;->a:Ljd3;

    .line 21
    .line 22
    invoke-static {v1}, Lwo3;->e(Lpe1;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    sget-object v1, Lwo3;->c:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v2, Lwo3;->h:Ljava/util/List;

    .line 29
    .line 30
    invoke-static {v2, v0}, Lo70;->r0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    sput-object v2, Lwo3;->h:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    monitor-exit v1

    .line 37
    new-instance v1, Lr6;

    .line 38
    .line 39
    const/16 v2, 0xf

    .line 40
    .line 41
    invoke-direct {v1, v2, v0}, Lr6;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Ldn3;->h:Lr6;

    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    monitor-exit v1

    .line 49
    throw p0
.end method


# virtual methods
.method public final i(Lyh3;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ldn3;->c:Ljava/lang/Object;

    .line 3
    .line 4
    iput-object p1, p0, Ldn3;->e:Llg2;

    .line 5
    .line 6
    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ldn3;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object v1, p0, Ldn3;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v1, p0, Ldn3;->e:Llg2;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Ldn3;->d:Llg2;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v1, p0, Ldn3;->d:Llg2;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    sget-object v1, Lud3;->a:Llg2;

    .line 23
    .line 24
    new-instance v1, Llg2;

    .line 25
    .line 26
    invoke-direct {v1}, Llg2;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Ldn3;->d:Llg2;

    .line 30
    .line 31
    :cond_1
    iget-object v1, p0, Ldn3;->d:Llg2;

    .line 32
    .line 33
    iget-object v2, p0, Ldn3;->e:Llg2;

    .line 34
    .line 35
    iput-object v2, p0, Ldn3;->d:Llg2;

    .line 36
    .line 37
    iput-object v1, p0, Ldn3;->e:Llg2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    :goto_0
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit v0

    .line 42
    throw p0
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldn3;->h:Lr6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr6;->g()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Ldn3;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object v0, p0, Ldn3;->e:Llg2;

    .line 10
    .line 11
    iget-object v1, p0, Lib0;->a:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iput-object v0, p0, Ldn3;->f:Lyh3;

    .line 15
    .line 16
    iput-object v0, p0, Ldn3;->b:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object v0, p0, Ldn3;->d:Llg2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v1

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v1

    .line 24
    throw p0
.end method

.method public final o(Lyh3;)Lpe1;
    .locals 1

    .line 1
    iget-object v0, p0, Ldn3;->f:Lyh3;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "Requested a SingleSubscriptionSnapshotFlowManager to manage multiple subscriptions"

    .line 13
    .line 14
    invoke-static {v0}, Lix2;->b(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    iput-object p1, p0, Ldn3;->f:Lyh3;

    .line 18
    .line 19
    iget-object p0, p0, Ldn3;->g:Ldi3;

    .line 20
    .line 21
    return-object p0
.end method

.method public final p(Ln30;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ldn3;->f:Lyh3;

    .line 3
    .line 4
    iput-object p1, p0, Ldn3;->c:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p1, p0, Ldn3;->e:Llg2;

    .line 7
    .line 8
    invoke-virtual {p0}, Ldn3;->j()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

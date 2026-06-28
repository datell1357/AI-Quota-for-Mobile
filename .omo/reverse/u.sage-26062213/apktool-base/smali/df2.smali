.class public final Ldf2;
.super Lib0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final b:Lkg2;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lkg2;

.field public final e:Lr6;


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
    invoke-static {}, Lht4;->k()Lkg2;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Ldf2;->b:Lkg2;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ldf2;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Lkg2;

    .line 19
    .line 20
    invoke-direct {v0}, Lkg2;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Ldf2;->d:Lkg2;

    .line 24
    .line 25
    new-instance v0, Lsp0;

    .line 26
    .line 27
    const/16 v1, 0xd

    .line 28
    .line 29
    invoke-direct {v0, v1, p0}, Lsp0;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lwo3;->a:Ljd3;

    .line 33
    .line 34
    invoke-static {v1}, Lwo3;->e(Lpe1;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    sget-object v1, Lwo3;->c:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v2, Lwo3;->h:Ljava/util/List;

    .line 41
    .line 42
    invoke-static {v2, v0}, Lo70;->r0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    sput-object v2, Lwo3;->h:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    monitor-exit v1

    .line 49
    new-instance v1, Lr6;

    .line 50
    .line 51
    const/16 v2, 0xf

    .line 52
    .line 53
    invoke-direct {v1, v2, v0}, Lr6;-><init>(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Ldf2;->e:Lr6;

    .line 57
    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    monitor-exit v1

    .line 61
    throw p0
.end method


# virtual methods
.method public final i(Lyh3;)V
    .locals 1

    .line 1
    new-instance v0, Lbf2;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lbf2;-><init>(Lyh3;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ldf2;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final j()V
    .locals 7

    .line 1
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ldf2;->c:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-ge v3, v2, :cond_2

    .line 12
    .line 13
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Lcf2;

    .line 18
    .line 19
    instance-of v5, v4, Laf2;

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    iget-object v5, p0, Ldf2;->b:Lkg2;

    .line 24
    .line 25
    move-object v6, v4

    .line 26
    check-cast v6, Laf2;

    .line 27
    .line 28
    iget-object v6, v6, Laf2;->a:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v4, Laf2;

    .line 31
    .line 32
    iget-object v4, v4, Laf2;->b:Lyh3;

    .line 33
    .line 34
    invoke-static {v5, v6, v4}, Lht4;->b(Lkg2;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    instance-of v5, v4, Lbf2;

    .line 41
    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    iget-object v5, p0, Ldf2;->b:Lkg2;

    .line 45
    .line 46
    check-cast v4, Lbf2;

    .line 47
    .line 48
    iget-object v4, v4, Lbf2;->a:Lyh3;

    .line 49
    .line 50
    invoke-static {v5, v4}, Lht4;->B(Lkg2;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    new-instance p0, Lv00;

    .line 57
    .line 58
    const/4 v1, 0x7

    .line 59
    invoke-direct {p0, v1}, Lv00;-><init>(I)V

    .line 60
    .line 61
    .line 62
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_2
    monitor-exit v0

    .line 64
    iget-object p0, p0, Ldf2;->c:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :goto_2
    monitor-exit v0

    .line 71
    throw p0
.end method

.method public final k()V
    .locals 1

    .line 1
    iget-object v0, p0, Ldf2;->e:Lr6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr6;->g()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ldf2;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ldf2;->d:Lkg2;

    .line 12
    .line 13
    invoke-virtual {v0}, Lkg2;->a()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object p0, p0, Ldf2;->b:Lkg2;

    .line 20
    .line 21
    invoke-virtual {p0}, Lkg2;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0

    .line 28
    throw p0
.end method

.method public final o(Lyh3;)Lpe1;
    .locals 4

    .line 1
    iget-object v0, p0, Ldf2;->d:Lkg2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lpe1;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    new-instance v1, Lm;

    .line 12
    .line 13
    const/16 v2, 0xe

    .line 14
    .line 15
    invoke-direct {v1, v2, p0, p1}, Lm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lkg2;->f(Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-gez p0, :cond_0

    .line 23
    .line 24
    not-int p0, p0

    .line 25
    :cond_0
    iget-object v2, v0, Lkg2;->c:[Ljava/lang/Object;

    .line 26
    .line 27
    aget-object v3, v2, p0

    .line 28
    .line 29
    iget-object v0, v0, Lkg2;->b:[Ljava/lang/Object;

    .line 30
    .line 31
    aput-object p1, v0, p0

    .line 32
    .line 33
    aput-object v1, v2, p0

    .line 34
    .line 35
    :cond_1
    return-object v1
.end method

.method public final p(Ln30;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldf2;->d:Lkg2;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lkg2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ldf2;->i(Lyh3;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ldf2;->j()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

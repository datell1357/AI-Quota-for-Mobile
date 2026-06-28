.class public final Lef5;
.super Low3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lft1;

.field public c:Z

.field public volatile d:Z

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 2

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
    iput-object v0, p0, Lef5;->a:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lft1;

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-direct {v0, v1}, Lft1;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lef5;->b:Lft1;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Lwo2;)Lef5;
    .locals 1

    .line 1
    new-instance v0, Ln25;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Ln25;-><init>(Ljava/util/concurrent/Executor;Lwo2;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lef5;->b:Lft1;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lft1;->b(Lfc5;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lef5;->s()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public final b(Ljava/util/concurrent/Executor;Lbp2;)Lef5;
    .locals 1

    .line 1
    new-instance v0, Ln25;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Ln25;-><init>(Ljava/util/concurrent/Executor;Lbp2;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lef5;->b:Lft1;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lft1;->b(Lfc5;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lef5;->s()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public final c(Ljava/util/concurrent/Executor;Ljp2;)Lef5;
    .locals 1

    .line 1
    new-instance v0, Ln25;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Ln25;-><init>(Ljava/util/concurrent/Executor;Ljp2;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lef5;->b:Lft1;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lft1;->b(Lfc5;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lef5;->s()V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public final d(Ljava/util/concurrent/Executor;Leh0;)Lef5;
    .locals 3

    .line 1
    new-instance v0, Lef5;

    .line 2
    .line 3
    invoke-direct {v0}, Lef5;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcx4;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p1, p2, v0, v2}, Lcx4;-><init>(Ljava/util/concurrent/Executor;Leh0;Lef5;I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lef5;->b:Lft1;

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Lft1;->b(Lfc5;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lef5;->s()V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final e(Ljava/util/concurrent/Executor;Leh0;)Lef5;
    .locals 3

    .line 1
    new-instance v0, Lef5;

    .line 2
    .line 3
    invoke-direct {v0}, Lef5;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcx4;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, p1, p2, v0, v2}, Lcx4;-><init>(Ljava/util/concurrent/Executor;Leh0;Lef5;I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lef5;->b:Lft1;

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Lft1;->b(Lfc5;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lef5;->s()V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final f()Ljava/lang/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Lef5;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lef5;->f:Ljava/lang/Exception;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final g()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lef5;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lef5;->c:Z

    .line 5
    .line 6
    const-string v2, "Task is not yet complete"

    .line 7
    .line 8
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lef5;->d:Z

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lef5;->f:Ljava/lang/Exception;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lef5;->e:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Lhb3;

    .line 26
    .line 27
    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1
    new-instance p0, Ljava/util/concurrent/CancellationException;

    .line 32
    .line 33
    const-string v1, "Task is already canceled."

    .line 34
    .line 35
    invoke-direct {p0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0

    .line 39
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final h()Ljava/lang/Object;
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/common/api/ApiException;

    .line 2
    .line 3
    iget-object v1, p0, Lef5;->a:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-boolean v2, p0, Lef5;->c:Z

    .line 7
    .line 8
    const-string v3, "Task is not yet complete"

    .line 9
    .line 10
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v2, p0, Lef5;->d:Z

    .line 14
    .line 15
    if-nez v2, :cond_2

    .line 16
    .line 17
    iget-object v2, p0, Lef5;->f:Ljava/lang/Exception;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object v3, p0, Lef5;->f:Ljava/lang/Exception;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    :try_start_1
    iget-object p0, p0, Lef5;->e:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-exit v1

    .line 32
    return-object p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p0, Lhb3;

    .line 36
    .line 37
    invoke-direct {p0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Ljava/lang/Throwable;

    .line 46
    .line 47
    throw p0

    .line 48
    :cond_2
    new-instance p0, Ljava/util/concurrent/CancellationException;

    .line 49
    .line 50
    const-string v0, "Task is already canceled."

    .line 51
    .line 52
    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lef5;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lef5;->c:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final j()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lef5;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lef5;->c:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-boolean v1, p0, Lef5;->d:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lef5;->f:Ljava/lang/Exception;

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit v0

    .line 22
    return v2

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final k(Lwt3;)Lef5;
    .locals 3

    .line 1
    sget-object v0, Lqw3;->a:Lc73;

    .line 2
    .line 3
    new-instance v1, Lef5;

    .line 4
    .line 5
    invoke-direct {v1}, Lef5;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ln25;

    .line 9
    .line 10
    invoke-direct {v2, v0, p1, v1}, Ln25;-><init>(Ljava/util/concurrent/Executor;Lwt3;Lef5;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lef5;->b:Lft1;

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Lft1;->b(Lfc5;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lef5;->s()V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method

.method public final l(Ljava/util/concurrent/Executor;Lwt3;)Lef5;
    .locals 2

    .line 1
    new-instance v0, Lef5;

    .line 2
    .line 3
    invoke-direct {v0}, Lef5;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ln25;

    .line 7
    .line 8
    invoke-direct {v1, p1, p2, v0}, Ln25;-><init>(Ljava/util/concurrent/Executor;Lwt3;Lef5;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lef5;->b:Lft1;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lft1;->b(Lfc5;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lef5;->s()V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final m(Lxo2;)Lef5;
    .locals 2

    .line 1
    sget-object v0, Lqw3;->a:Lc73;

    .line 2
    .line 3
    new-instance v1, Ln25;

    .line 4
    .line 5
    invoke-direct {v1, v0, p1}, Ln25;-><init>(Ljava/util/concurrent/Executor;Lxo2;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lef5;->b:Lft1;

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Lft1;->b(Lfc5;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lef5;->s()V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public final n(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lef5;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lef5;->r()V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lef5;->c:Z

    .line 9
    .line 10
    iput-object p1, p0, Lef5;->e:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object p1, p0, Lef5;->b:Lft1;

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Lft1;->c(Low3;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p0
.end method

.method public final o(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lef5;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lef5;->c:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lef5;->c:Z

    .line 15
    .line 16
    iput-object p1, p0, Lef5;->e:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iget-object p1, p0, Lef5;->b:Lft1;

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Lft1;->c(Low3;)V

    .line 22
    .line 23
    .line 24
    return v1

    .line 25
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method

.method public final p(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "Exception must not be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lef5;->a:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lef5;->r()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lef5;->c:Z

    .line 14
    .line 15
    iput-object p1, p0, Lef5;->f:Ljava/lang/Exception;

    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object p1, p0, Lef5;->b:Lft1;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Lft1;->c(Low3;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method

.method public final q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lef5;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lef5;->c:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lef5;->c:Z

    .line 14
    .line 15
    iput-boolean v1, p0, Lef5;->d:Z

    .line 16
    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object v0, p0, Lef5;->b:Lft1;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lft1;->c(Low3;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p0
.end method

.method public final r()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lef5;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {p0}, Lef5;->i()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {p0}, Lef5;->f()Ljava/lang/Exception;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lef5;->j()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iget-boolean p0, p0, Lef5;->d:Z

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const-string p0, "cancellation"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p0, "unknown issue"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lef5;->g()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string v1, "result "

    .line 42
    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const-string p0, "failure"

    .line 49
    .line 50
    :goto_0
    new-instance v1, Lx60;

    .line 51
    .line 52
    const-string v2, "Complete with: "

    .line 53
    .line 54
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string p0, "DuplicateTaskCompletionException can only be created from completed Task."

    .line 65
    .line 66
    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :goto_1
    throw v1

    .line 70
    :cond_4
    return-void
.end method

.method public final s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lef5;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lef5;->c:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v0, p0, Lef5;->b:Lft1;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lft1;->c(Low3;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p0
.end method

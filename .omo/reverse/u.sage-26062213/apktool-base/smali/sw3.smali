.class public final Lsw3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ltw3;

.field public final b:Ljava/lang/String;

.field public c:Z

.field public d:Lnw3;

.field public final e:Ljava/util/ArrayList;

.field public f:Z


# direct methods
.method public constructor <init>(Ltw3;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsw3;->a:Ltw3;

    .line 5
    .line 6
    iput-object p2, p0, Lsw3;->b:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lsw3;->e:Ljava/util/ArrayList;

    .line 14
    .line 15
    return-void
.end method

.method public static b(Lsw3;Ljava/lang/String;Lne1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v0, Lj23;

    .line 11
    .line 12
    invoke-direct {v0, p1, p2}, Lj23;-><init>(Ljava/lang/String;Lne1;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 p1, 0x0

    .line 16
    .line 17
    invoke-virtual {p0, v0, p1, p2}, Lsw3;->c(Lnw3;J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lsw3;->d:Lnw3;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, v0, Lnw3;->b:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-boolean v1, p0, Lsw3;->f:Z

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lsw3;->e:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    sub-int/2addr v2, v1

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    const/4 v4, -0x1

    .line 21
    if-ge v4, v2, :cond_3

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lnw3;

    .line 28
    .line 29
    iget-boolean v4, v4, Lnw3;->b:Z

    .line 30
    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    iget-object v3, p0, Lsw3;->a:Ltw3;

    .line 34
    .line 35
    iget-object v3, v3, Ltw3;->b:Ljava/util/logging/Logger;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lnw3;

    .line 42
    .line 43
    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 44
    .line 45
    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    const-string v5, "canceled"

    .line 52
    .line 53
    invoke-static {v3, v4, p0, v5}, Lqn0;->g(Ljava/util/logging/Logger;Lnw3;Lsw3;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move v3, v1

    .line 60
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    return v3
.end method

.method public final c(Lnw3;J)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lsw3;->a:Ltw3;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-boolean v1, p0, Lsw3;->c:Z

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget-boolean p2, p1, Lnw3;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    iget-object p3, p0, Lsw3;->a:Ltw3;

    .line 14
    .line 15
    iget-object p3, p3, Ltw3;->b:Ljava/util/logging/Logger;

    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    :try_start_1
    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 20
    .line 21
    invoke-virtual {p3, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    const-string p2, "schedule canceled (queue is shutdown)"

    .line 28
    .line 29
    invoke-static {p3, p1, p0, p2}, Lqn0;->g(Ljava/util/logging/Logger;Lnw3;Lsw3;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :cond_1
    :try_start_2
    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 38
    .line 39
    invoke-virtual {p3, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    const-string p2, "schedule failed (queue is shutdown)"

    .line 46
    .line 47
    invoke-static {p3, p1, p0, p2}, Lqn0;->g(Ljava/util/logging/Logger;Lnw3;Lsw3;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    new-instance p0, Ljava/util/concurrent/RejectedExecutionException;

    .line 51
    .line 52
    invoke-direct {p0}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_3
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0, p1, p2, p3, v1}, Lsw3;->d(Lnw3;JZ)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    iget-object p1, p0, Lsw3;->a:Ltw3;

    .line 64
    .line 65
    invoke-virtual {p1, p0}, Ltw3;->c(Lsw3;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .line 67
    .line 68
    :cond_4
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :goto_1
    monitor-exit v0

    .line 71
    throw p0
.end method

.method public final d(Lnw3;JZ)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lsw3;->a:Ltw3;

    .line 2
    .line 3
    iget-object v0, v0, Ltw3;->b:Ljava/util/logging/Logger;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, p1, Lnw3;->c:Lsw3;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-ne v1, p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-nez v1, :cond_9

    .line 15
    .line 16
    iput-object p0, p1, Lnw3;->c:Lsw3;

    .line 17
    .line 18
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    add-long v5, v3, p2

    .line 23
    .line 24
    iget-object v1, p0, Lsw3;->e:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    const/4 v8, -0x1

    .line 31
    if-eq v7, v8, :cond_2

    .line 32
    .line 33
    iget-wide v9, p1, Lnw3;->d:J

    .line 34
    .line 35
    cmp-long v9, v9, v5

    .line 36
    .line 37
    if-gtz v9, :cond_1

    .line 38
    .line 39
    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 40
    .line 41
    invoke-virtual {v0, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_8

    .line 46
    .line 47
    const-string p2, "already scheduled"

    .line 48
    .line 49
    invoke-static {v0, p1, p0, p2}, Lqn0;->g(Ljava/util/logging/Logger;Lnw3;Lsw3;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return v2

    .line 53
    :cond_1
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_2
    iput-wide v5, p1, Lnw3;->d:J

    .line 57
    .line 58
    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 59
    .line 60
    invoke-virtual {v0, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_4

    .line 65
    .line 66
    if-eqz p4, :cond_3

    .line 67
    .line 68
    sub-long/2addr v5, v3

    .line 69
    invoke-static {v5, v6}, Lqn0;->q(J)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    const-string v5, "run again after "

    .line 74
    .line 75
    invoke-virtual {v5, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p4

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    sub-long/2addr v5, v3

    .line 81
    invoke-static {v5, v6}, Lqn0;->q(J)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p4

    .line 85
    const-string v5, "scheduled after "

    .line 86
    .line 87
    invoke-virtual {v5, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p4

    .line 91
    :goto_1
    invoke-static {v0, p1, p0, p4}, Lqn0;->g(Ljava/util/logging/Logger;Lnw3;Lsw3;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    move p4, v2

    .line 99
    move v0, p4

    .line 100
    :goto_2
    if-ge v0, p0, :cond_6

    .line 101
    .line 102
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    add-int/lit8 v0, v0, 0x1

    .line 107
    .line 108
    check-cast v5, Lnw3;

    .line 109
    .line 110
    iget-wide v5, v5, Lnw3;->d:J

    .line 111
    .line 112
    sub-long/2addr v5, v3

    .line 113
    cmp-long v5, v5, p2

    .line 114
    .line 115
    if-lez v5, :cond_5

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_5
    add-int/lit8 p4, p4, 0x1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_6
    move p4, v8

    .line 122
    :goto_3
    if-ne p4, v8, :cond_7

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result p4

    .line 128
    :cond_7
    invoke-virtual {v1, p4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    if-nez p4, :cond_8

    .line 132
    .line 133
    const/4 p0, 0x1

    .line 134
    return p0

    .line 135
    :cond_8
    return v2

    .line 136
    :cond_9
    const-string p0, "task is in multiple queues"

    .line 137
    .line 138
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return v2
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsw3;->a:Ltw3;

    .line 2
    .line 3
    sget-object v1, Lhi4;->a:Ljava/util/TimeZone;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x1

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lsw3;->c:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lsw3;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lsw3;->a:Ltw3;

    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ltw3;->c(Lsw3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0

    .line 26
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lsw3;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

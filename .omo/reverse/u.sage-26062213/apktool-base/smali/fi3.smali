.class public final Lfi3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final s:Lq12;


# instance fields
.field public final n:Ljava/util/concurrent/Executor;

.field public final o:Ljava/util/ArrayDeque;

.field public p:I

.field public q:J

.field public final r:Lrf1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lq12;

    .line 2
    .line 3
    const-class v1, Lfi3;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lq12;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lfi3;->s:Lq12;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lfi3;->o:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lfi3;->p:I

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    iput-wide v0, p0, Lfi3;->q:J

    .line 17
    .line 18
    new-instance v0, Lrf1;

    .line 19
    .line 20
    const/16 v1, 0xc

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Lrf1;-><init>(Ljava/util/concurrent/Executor;I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lfi3;->r:Lrf1;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lfi3;->n:Ljava/util/concurrent/Executor;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfi3;->o:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget v1, p0, Lfi3;->p:I

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    if-eq v1, v2, :cond_6

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    goto :goto_5

    .line 16
    :cond_0
    iget-wide v3, p0, Lfi3;->q:J

    .line 17
    .line 18
    new-instance v1, Lbc3;

    .line 19
    .line 20
    const/4 v5, 0x2

    .line 21
    invoke-direct {v1, p1, v5}, Lbc3;-><init>(Ljava/lang/Runnable;I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lfi3;->o:Ljava/util/ArrayDeque;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iput v5, p0, Lfi3;->p:I

    .line 30
    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 32
    :try_start_1
    iget-object p1, p0, Lfi3;->n:Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    iget-object v0, p0, Lfi3;->r:Lrf1;

    .line 35
    .line 36
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    .line 38
    .line 39
    iget p1, p0, Lfi3;->p:I

    .line 40
    .line 41
    if-eq p1, v5, :cond_1

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_1
    iget-object p1, p0, Lfi3;->o:Ljava/util/ArrayDeque;

    .line 45
    .line 46
    monitor-enter p1

    .line 47
    :try_start_2
    iget-wide v0, p0, Lfi3;->q:J

    .line 48
    .line 49
    cmp-long v0, v0, v3

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    iget v0, p0, Lfi3;->p:I

    .line 54
    .line 55
    if-ne v0, v5, :cond_2

    .line 56
    .line 57
    iput v2, p0, Lfi3;->p:I

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    monitor-exit p1

    .line 63
    return-void

    .line 64
    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    throw p0

    .line 66
    :catchall_1
    move-exception p1

    .line 67
    iget-object v2, p0, Lfi3;->o:Ljava/util/ArrayDeque;

    .line 68
    .line 69
    monitor-enter v2

    .line 70
    :try_start_3
    iget v0, p0, Lfi3;->p:I

    .line 71
    .line 72
    const/4 v3, 0x1

    .line 73
    if-eq v0, v3, :cond_3

    .line 74
    .line 75
    if-ne v0, v5, :cond_4

    .line 76
    .line 77
    :cond_3
    iget-object p0, p0, Lfi3;->o:Ljava/util/ArrayDeque;

    .line 78
    .line 79
    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->removeLastOccurrence(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    const/4 v3, 0x0

    .line 87
    :goto_2
    instance-of p0, p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 88
    .line 89
    if-eqz p0, :cond_5

    .line 90
    .line 91
    if-nez v3, :cond_5

    .line 92
    .line 93
    monitor-exit v2

    .line 94
    :goto_3
    return-void

    .line 95
    :catchall_2
    move-exception p0

    .line 96
    goto :goto_4

    .line 97
    :cond_5
    throw p1

    .line 98
    :goto_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 99
    throw p0

    .line 100
    :catchall_3
    move-exception p0

    .line 101
    goto :goto_6

    .line 102
    :cond_6
    :goto_5
    :try_start_4
    iget-object p0, p0, Lfi3;->o:Ljava/util/ArrayDeque;

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    monitor-exit v0

    .line 108
    return-void

    .line 109
    :goto_6
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 110
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SequentialExecutor@"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "{"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lfi3;->n:Ljava/util/concurrent/Executor;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p0, "}"

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

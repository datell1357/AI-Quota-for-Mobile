.class public final Lsd0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lorg/apache/commons/logging/Log;

.field public final b:Ljava/util/concurrent/locks/ReentrantLock;

.field public final c:Leo0;

.field public final d:Lqd0;

.field public final e:Ljava/util/HashSet;

.field public final f:Ljava/util/LinkedList;

.field public final g:Ljava/util/LinkedList;

.field public final h:Ljava/util/HashMap;

.field public final i:J

.field public final j:Ljava/util/concurrent/TimeUnit;

.field public volatile k:Z

.field public volatile l:I

.field public volatile m:I


# direct methods
.method public constructor <init>(Leo0;Lkm1;)V
    .locals 4

    .line 1
    const-string v0, "HTTP parameters"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "http.conn-manager.max-per-route"

    .line 7
    .line 8
    invoke-interface {p2, v0}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lqd0;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    sget-object v0, Lnt1;->b:Lpd0;

    .line 17
    .line 18
    :cond_0
    const/16 v1, 0x14

    .line 19
    .line 20
    check-cast p2, Lf1;

    .line 21
    .line 22
    const-string v2, "http.conn-manager.max-total"

    .line 23
    .line 24
    invoke-virtual {p2, v1, v2}, Lf1;->e(ILjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    const-class v1, Lsd0;

    .line 32
    .line 33
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 34
    .line 35
    .line 36
    new-instance v2, Ljava/util/HashSet;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v3, Lvn1;

    .line 42
    .line 43
    invoke-direct {v3}, Lvn1;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iput-object v1, p0, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 56
    .line 57
    iput-object v3, p0, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 58
    .line 59
    iput-object v2, p0, Lsd0;->e:Ljava/util/HashSet;

    .line 60
    .line 61
    iput-object p1, p0, Lsd0;->c:Leo0;

    .line 62
    .line 63
    iput-object v0, p0, Lsd0;->d:Lqd0;

    .line 64
    .line 65
    iput p2, p0, Lsd0;->l:I

    .line 66
    .line 67
    new-instance p1, Ljava/util/LinkedList;

    .line 68
    .line 69
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lsd0;->f:Ljava/util/LinkedList;

    .line 73
    .line 74
    new-instance p1, Ljava/util/LinkedList;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lsd0;->g:Ljava/util/LinkedList;

    .line 80
    .line 81
    new-instance p1, Ljava/util/HashMap;

    .line 82
    .line 83
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lsd0;->h:Ljava/util/HashMap;

    .line 87
    .line 88
    const-wide/16 p1, -0x1

    .line 89
    .line 90
    iput-wide p1, p0, Lsd0;->i:J

    .line 91
    .line 92
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 93
    .line 94
    iput-object p1, p0, Lsd0;->j:Ljava/util/concurrent/TimeUnit;

    .line 95
    .line 96
    return-void
.end method


# virtual methods
.method public final a(Lfv;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lfv;->b:Ldo0;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Ldo0;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    iget-object p0, p0, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 11
    .line 12
    const-string v0, "I/O error closing connection"

    .line 13
    .line 14
    invoke-interface {p0, v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Lxa3;Leo0;)Lfv;
    .locals 8

    .line 1
    iget-object v0, p0, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "Creating new connection ["

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p1, Lxa3;->b:Lym1;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, "]"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    new-instance v2, Lfv;

    .line 36
    .line 37
    iget-object v4, p1, Lxa3;->b:Lym1;

    .line 38
    .line 39
    iget-wide v5, p0, Lsd0;->i:J

    .line 40
    .line 41
    iget-object v7, p0, Lsd0;->j:Ljava/util/concurrent/TimeUnit;

    .line 42
    .line 43
    move-object v3, p2

    .line 44
    invoke-direct/range {v2 .. v7}, Lfv;-><init>(Lh60;Lym1;JLjava/util/concurrent/TimeUnit;)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 50
    .line 51
    .line 52
    :try_start_0
    iget-object p2, p1, Lxa3;->b:Lym1;

    .line 53
    .line 54
    iget-object v0, v2, Lfv;->c:Lym1;

    .line 55
    .line 56
    invoke-virtual {p2, v0}, Lym1;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    const-string v0, "Entry not planned for this pool"

    .line 61
    .line 62
    invoke-static {v0, p2}, Lw80;->l(Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    iget p2, p1, Lxa3;->g:I

    .line 66
    .line 67
    add-int/lit8 p2, p2, 0x1

    .line 68
    .line 69
    iput p2, p1, Lxa3;->g:I

    .line 70
    .line 71
    iget p1, p0, Lsd0;->m:I

    .line 72
    .line 73
    add-int/lit8 p1, p1, 0x1

    .line 74
    .line 75
    iput p1, p0, Lsd0;->m:I

    .line 76
    .line 77
    iget-object p1, p0, Lsd0;->e:Ljava/util/HashSet;

    .line 78
    .line 79
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 85
    .line 86
    .line 87
    return-object v2

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    move-object p1, v0

    .line 90
    iget-object p0, p0, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 93
    .line 94
    .line 95
    throw p1
.end method

.method public final c(Lfv;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lfv;->c:Lym1;

    .line 2
    .line 3
    iget-object v1, p0, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 4
    .line 5
    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "Deleting connection ["

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v3, "]["

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v3, p1, Lfv;->d:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, "]"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object v1, p0, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 48
    .line 49
    .line 50
    :try_start_0
    invoke-virtual {p0, p1}, Lsd0;->a(Lfv;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lsd0;->g(Lym1;)Lxa3;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget-object v2, v1, Lxa3;->e:Ljava/util/LinkedList;

    .line 58
    .line 59
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    const/4 v2, 0x1

    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    iget p1, v1, Lxa3;->g:I

    .line 67
    .line 68
    sub-int/2addr p1, v2

    .line 69
    iput p1, v1, Lxa3;->g:I

    .line 70
    .line 71
    :cond_1
    iget p1, p0, Lsd0;->m:I

    .line 72
    .line 73
    sub-int/2addr p1, v2

    .line 74
    iput p1, p0, Lsd0;->m:I

    .line 75
    .line 76
    iget p1, v1, Lxa3;->g:I

    .line 77
    .line 78
    if-ge p1, v2, :cond_2

    .line 79
    .line 80
    iget-object p1, v1, Lxa3;->f:Ljava/util/LinkedList;

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    iget-object p1, p0, Lsd0;->h:Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    :goto_0
    iget-object p0, p0, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :goto_1
    iget-object p0, p0, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 105
    .line 106
    .line 107
    throw p1
.end method

.method public final d(Lfv;ZJ)V
    .locals 9

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-string v1, "Pooling connection ["

    .line 4
    .line 5
    const-string v2, "for "

    .line 6
    .line 7
    iget-object v3, p1, Lfv;->c:Lym1;

    .line 8
    .line 9
    iget-object v4, p0, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 10
    .line 11
    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const-string v5, "]["

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    iget-object v4, p0, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 20
    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v7, "Releasing connection ["

    .line 24
    .line 25
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v7, p1, Lfv;->d:Ljava/lang/Object;

    .line 35
    .line 36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v7, "]"

    .line 40
    .line 41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-interface {v4, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v4, p0, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 54
    .line 55
    .line 56
    :try_start_0
    iget-boolean v4, p0, Lsd0;->k:Z

    .line 57
    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lsd0;->a(Lfv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    :goto_0
    iget-object p0, p0, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto/16 :goto_6

    .line 71
    .line 72
    :cond_1
    :try_start_1
    iget-object v4, p0, Lsd0;->e:Ljava/util/HashSet;

    .line 73
    .line 74
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v3}, Lsd0;->g(Lym1;)Lxa3;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const/4 v6, 0x1

    .line 82
    if-eqz p2, :cond_7

    .line 83
    .line 84
    iget-object p2, v4, Lxa3;->d:Lqd0;

    .line 85
    .line 86
    iget-object v7, v4, Lxa3;->b:Lym1;

    .line 87
    .line 88
    invoke-interface {p2, v7}, Lqd0;->a(Lym1;)I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    iget v7, v4, Lxa3;->g:I

    .line 93
    .line 94
    sub-int/2addr p2, v7

    .line 95
    if-ltz p2, :cond_7

    .line 96
    .line 97
    iget-object p2, p0, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 98
    .line 99
    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    const-wide/16 v7, 0x0

    .line 104
    .line 105
    if-eqz p2, :cond_3

    .line 106
    .line 107
    cmp-long p2, p3, v7

    .line 108
    .line 109
    if-lez p2, :cond_2

    .line 110
    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v2, " "

    .line 120
    .line 121
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    goto :goto_1

    .line 132
    :cond_2
    const-string p2, "indefinitely"

    .line 133
    .line 134
    :goto_1
    iget-object v0, p0, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 135
    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object v1, p1, Lfv;->d:Ljava/lang/Object;

    .line 148
    .line 149
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v1, "]; keep alive "

    .line 153
    .line 154
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-interface {v0, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_3
    iget-object p2, v4, Lxa3;->e:Ljava/util/LinkedList;

    .line 168
    .line 169
    iget-object v0, v4, Lxa3;->b:Lym1;

    .line 170
    .line 171
    iget v1, v4, Lxa3;->g:I

    .line 172
    .line 173
    if-lt v1, v6, :cond_5

    .line 174
    .line 175
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-le v1, v2, :cond_4

    .line 180
    .line 181
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_4
    const-string p2, "No entry allocated from this pool. "

    .line 186
    .line 187
    invoke-static {v0, p2}, Lq73;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_5
    const-string p2, "No entry created for this pool. "

    .line 192
    .line 193
    invoke-static {v0, p2}, Lq73;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 197
    .line 198
    .line 199
    move-result-wide v0

    .line 200
    cmp-long p2, p3, v7

    .line 201
    .line 202
    if-lez p2, :cond_6

    .line 203
    .line 204
    add-long/2addr p3, v0

    .line 205
    goto :goto_3

    .line 206
    :cond_6
    const-wide p3, 0x7fffffffffffffffL

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    :goto_3
    iget-wide v0, p1, Lfv;->f:J

    .line 212
    .line 213
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    .line 214
    .line 215
    .line 216
    move-result-wide p2

    .line 217
    iput-wide p2, p1, Lfv;->g:J

    .line 218
    .line 219
    iget-object p2, p0, Lsd0;->f:Ljava/util/LinkedList;

    .line 220
    .line 221
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_7
    invoke-virtual {p0, p1}, Lsd0;->a(Lfv;)V

    .line 226
    .line 227
    .line 228
    iget p1, v4, Lxa3;->g:I

    .line 229
    .line 230
    if-lez p1, :cond_8

    .line 231
    .line 232
    move p1, v6

    .line 233
    goto :goto_4

    .line 234
    :cond_8
    const/4 p1, 0x0

    .line 235
    :goto_4
    const-string p2, "There is no entry that could be dropped"

    .line 236
    .line 237
    invoke-static {p2, p1}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 238
    .line 239
    .line 240
    iget p1, v4, Lxa3;->g:I

    .line 241
    .line 242
    sub-int/2addr p1, v6

    .line 243
    iput p1, v4, Lxa3;->g:I

    .line 244
    .line 245
    iget p1, p0, Lsd0;->m:I

    .line 246
    .line 247
    sub-int/2addr p1, v6

    .line 248
    iput p1, p0, Lsd0;->m:I

    .line 249
    .line 250
    :goto_5
    invoke-virtual {p0, v4}, Lsd0;->h(Lxa3;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :goto_6
    iget-object p0, p0, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 256
    .line 257
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 258
    .line 259
    .line 260
    throw p1
.end method

.method public final e(Lym1;Ljava/lang/Object;JLsb0;)Lfv;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    cmp-long v4, p3, v4

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    if-lez v4, :cond_0

    .line 15
    .line 16
    new-instance v4, Ljava/util/Date;

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v6

    .line 22
    add-long v6, v6, p3

    .line 23
    .line 24
    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v4, v5

    .line 29
    :goto_0
    iget-object v6, v1, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 30
    .line 31
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lsd0;->g(Lym1;)Lxa3;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    move-object v7, v6

    .line 39
    move-object v6, v5

    .line 40
    :cond_1
    :goto_1
    if-nez v5, :cond_e

    .line 41
    .line 42
    iget-boolean v5, v1, Lsd0;->k:Z

    .line 43
    .line 44
    const/4 v8, 0x1

    .line 45
    xor-int/2addr v5, v8

    .line 46
    const-string v9, "Connection pool shut down"

    .line 47
    .line 48
    invoke-static {v9, v5}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    iget-object v5, v1, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 52
    .line 53
    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 54
    .line 55
    .line 56
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    const-string v9, " out of "

    .line 58
    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    :try_start_1
    iget-object v5, v1, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 62
    .line 63
    new-instance v10, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v11, "["

    .line 69
    .line 70
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v11, "] total kept alive: "

    .line 77
    .line 78
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v11, v1, Lsd0;->f:Ljava/util/LinkedList;

    .line 82
    .line 83
    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v11, ", total issued: "

    .line 91
    .line 92
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v11, v1, Lsd0;->e:Ljava/util/HashSet;

    .line 96
    .line 97
    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v11, ", total allocated: "

    .line 105
    .line 106
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget v11, v1, Lsd0;->m:I

    .line 110
    .line 111
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget v11, v1, Lsd0;->l:I

    .line 118
    .line 119
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    invoke-interface {v5, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    goto/16 :goto_7

    .line 132
    .line 133
    :cond_2
    :goto_2
    invoke-virtual {v1, v7, v2}, Lsd0;->f(Lxa3;Ljava/lang/Object;)Lfv;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    if-eqz v5, :cond_3

    .line 138
    .line 139
    goto/16 :goto_6

    .line 140
    .line 141
    :cond_3
    iget-object v10, v7, Lxa3;->d:Lqd0;

    .line 142
    .line 143
    iget-object v11, v7, Lxa3;->b:Lym1;

    .line 144
    .line 145
    invoke-interface {v10, v11}, Lqd0;->a(Lym1;)I

    .line 146
    .line 147
    .line 148
    move-result v10

    .line 149
    iget v11, v7, Lxa3;->g:I

    .line 150
    .line 151
    sub-int/2addr v10, v11

    .line 152
    if-lez v10, :cond_4

    .line 153
    .line 154
    move v10, v8

    .line 155
    goto :goto_3

    .line 156
    :cond_4
    const/4 v10, 0x0

    .line 157
    :goto_3
    iget-object v11, v1, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 158
    .line 159
    invoke-interface {v11}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 160
    .line 161
    .line 162
    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    const-string v12, "]"

    .line 164
    .line 165
    const-string v13, "]["

    .line 166
    .line 167
    if-eqz v11, :cond_5

    .line 168
    .line 169
    :try_start_2
    iget-object v11, v1, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 170
    .line 171
    new-instance v14, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string v15, "Available capacity: "

    .line 177
    .line 178
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object v15, v7, Lxa3;->d:Lqd0;

    .line 182
    .line 183
    iget-object v8, v7, Lxa3;->b:Lym1;

    .line 184
    .line 185
    invoke-interface {v15, v8}, Lqd0;->a(Lym1;)I

    .line 186
    .line 187
    .line 188
    move-result v8

    .line 189
    iget v15, v7, Lxa3;->g:I

    .line 190
    .line 191
    sub-int/2addr v8, v15

    .line 192
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget v8, v7, Lxa3;->c:I

    .line 199
    .line 200
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v8, " ["

    .line 204
    .line 205
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    invoke-interface {v11, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    :cond_5
    if-eqz v10, :cond_6

    .line 228
    .line 229
    iget v8, v1, Lsd0;->m:I

    .line 230
    .line 231
    iget v9, v1, Lsd0;->l:I

    .line 232
    .line 233
    if-ge v8, v9, :cond_6

    .line 234
    .line 235
    iget-object v5, v1, Lsd0;->c:Leo0;

    .line 236
    .line 237
    invoke-virtual {v1, v7, v5}, Lsd0;->b(Lxa3;Leo0;)Lfv;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    goto/16 :goto_1

    .line 242
    .line 243
    :cond_6
    if-eqz v10, :cond_9

    .line 244
    .line 245
    iget-object v8, v1, Lsd0;->f:Ljava/util/LinkedList;

    .line 246
    .line 247
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 248
    .line 249
    .line 250
    move-result v8

    .line 251
    if-nez v8, :cond_9

    .line 252
    .line 253
    iget-object v5, v1, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 254
    .line 255
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    .line 257
    .line 258
    :try_start_3
    iget-object v7, v1, Lsd0;->f:Ljava/util/LinkedList;

    .line 259
    .line 260
    invoke-virtual {v7}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    check-cast v7, Lfv;

    .line 265
    .line 266
    if-eqz v7, :cond_7

    .line 267
    .line 268
    invoke-virtual {v1, v7}, Lsd0;->c(Lfv;)V

    .line 269
    .line 270
    .line 271
    goto :goto_4

    .line 272
    :catchall_1
    move-exception v0

    .line 273
    goto :goto_5

    .line 274
    :cond_7
    iget-object v7, v1, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 275
    .line 276
    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    if-eqz v7, :cond_8

    .line 281
    .line 282
    iget-object v7, v1, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 283
    .line 284
    const-string v8, "No free connection to delete"

    .line 285
    .line 286
    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 287
    .line 288
    .line 289
    :cond_8
    :goto_4
    :try_start_4
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 290
    .line 291
    .line 292
    invoke-virtual/range {p0 .. p1}, Lsd0;->g(Lym1;)Lxa3;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    iget-object v7, v1, Lsd0;->c:Leo0;

    .line 297
    .line 298
    invoke-virtual {v1, v5, v7}, Lsd0;->b(Lxa3;Leo0;)Lfv;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    move-object/from16 v16, v7

    .line 303
    .line 304
    move-object v7, v5

    .line 305
    move-object/from16 v5, v16

    .line 306
    .line 307
    goto/16 :goto_1

    .line 308
    .line 309
    :goto_5
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 310
    .line 311
    .line 312
    throw v0

    .line 313
    :cond_9
    iget-object v8, v1, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 314
    .line 315
    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 316
    .line 317
    .line 318
    move-result v8

    .line 319
    if-eqz v8, :cond_a

    .line 320
    .line 321
    iget-object v8, v1, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 322
    .line 323
    new-instance v9, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    const-string v10, "Need to wait for connection ["

    .line 329
    .line 330
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v9

    .line 349
    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    :cond_a
    if-nez v6, :cond_c

    .line 353
    .line 354
    iget-object v6, v1, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 355
    .line 356
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 357
    .line 358
    .line 359
    move-result-object v6

    .line 360
    new-instance v8, Llc4;

    .line 361
    .line 362
    invoke-direct {v8, v6}, Llc4;-><init>(Ljava/util/concurrent/locks/Condition;)V

    .line 363
    .line 364
    .line 365
    iput-object v8, v3, Lsb0;->o:Ljava/lang/Object;

    .line 366
    .line 367
    iget-boolean v6, v3, Lsb0;->n:Z

    .line 368
    .line 369
    if-eqz v6, :cond_b

    .line 370
    .line 371
    const/4 v6, 0x1

    .line 372
    iput-boolean v6, v8, Llc4;->c:Z

    .line 373
    .line 374
    iget-object v6, v8, Llc4;->a:Ljava/util/concurrent/locks/Condition;

    .line 375
    .line 376
    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 377
    .line 378
    .line 379
    :cond_b
    move-object v6, v8

    .line 380
    :cond_c
    :try_start_5
    iget-object v8, v7, Lxa3;->f:Ljava/util/LinkedList;

    .line 381
    .line 382
    invoke-virtual {v8, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    iget-object v8, v1, Lsd0;->g:Ljava/util/LinkedList;

    .line 386
    .line 387
    invoke-virtual {v8, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    invoke-virtual {v6, v4}, Llc4;->a(Ljava/util/Date;)Z

    .line 391
    .line 392
    .line 393
    move-result v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 394
    :try_start_6
    iget-object v9, v7, Lxa3;->f:Ljava/util/LinkedList;

    .line 395
    .line 396
    invoke-virtual {v9, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    iget-object v9, v1, Lsd0;->g:Ljava/util/LinkedList;

    .line 400
    .line 401
    invoke-virtual {v9, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    if-nez v8, :cond_1

    .line 405
    .line 406
    if-eqz v4, :cond_1

    .line 407
    .line 408
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 409
    .line 410
    .line 411
    move-result-wide v8

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 413
    .line 414
    .line 415
    move-result-wide v10

    .line 416
    cmp-long v8, v8, v10

    .line 417
    .line 418
    if-lez v8, :cond_d

    .line 419
    .line 420
    goto/16 :goto_1

    .line 421
    .line 422
    :cond_d
    new-instance v0, Lge0;

    .line 423
    .line 424
    const-string v2, "Timeout waiting for connection from pool"

    .line 425
    .line 426
    invoke-direct {v0, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    throw v0

    .line 430
    :catchall_2
    move-exception v0

    .line 431
    iget-object v2, v7, Lxa3;->f:Ljava/util/LinkedList;

    .line 432
    .line 433
    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    iget-object v2, v1, Lsd0;->g:Ljava/util/LinkedList;

    .line 437
    .line 438
    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 442
    :cond_e
    :goto_6
    iget-object v0, v1, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 443
    .line 444
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 445
    .line 446
    .line 447
    return-object v5

    .line 448
    :goto_7
    iget-object v1, v1, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 449
    .line 450
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 451
    .line 452
    .line 453
    throw v0
.end method

.method public final f(Lxa3;Ljava/lang/Object;)Lfv;
    .locals 11

    .line 1
    iget-object v0, p0, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-nez v2, :cond_6

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p1, p2}, Lxa3;->a(Ljava/lang/Object;)Lfv;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v3, p0, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 16
    .line 17
    const-string v4, "]"

    .line 18
    .line 19
    const-string v5, "]["

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    if-eqz v0, :cond_5

    .line 23
    .line 24
    :try_start_1
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    iget-object v3, p0, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 31
    .line 32
    new-instance v7, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v8, "Getting free connection ["

    .line 38
    .line 39
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v8, p1, Lxa3;->b:Lym1;

    .line 43
    .line 44
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-interface {v3, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto/16 :goto_4

    .line 66
    .line 67
    :cond_0
    :goto_1
    iget-object v3, p0, Lsd0;->f:Ljava/util/LinkedList;

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v7

    .line 76
    iget-wide v9, v0, Lfv;->g:J

    .line 77
    .line 78
    cmp-long v3, v7, v9

    .line 79
    .line 80
    if-ltz v3, :cond_3

    .line 81
    .line 82
    iget-object v3, p0, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 83
    .line 84
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_1

    .line 89
    .line 90
    iget-object v3, p0, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 91
    .line 92
    new-instance v7, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v8, "Closing expired free connection ["

    .line 98
    .line 99
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v8, p1, Lxa3;->b:Lym1;

    .line 103
    .line 104
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_1
    invoke-virtual {p0, v0}, Lsd0;->a(Lfv;)V

    .line 124
    .line 125
    .line 126
    iget v3, p1, Lxa3;->g:I

    .line 127
    .line 128
    if-lez v3, :cond_2

    .line 129
    .line 130
    move v3, v6

    .line 131
    goto :goto_2

    .line 132
    :cond_2
    move v3, v1

    .line 133
    :goto_2
    const-string v4, "There is no entry that could be dropped"

    .line 134
    .line 135
    invoke-static {v4, v3}, Lmt1;->n(Ljava/lang/String;Z)V

    .line 136
    .line 137
    .line 138
    iget v3, p1, Lxa3;->g:I

    .line 139
    .line 140
    sub-int/2addr v3, v6

    .line 141
    iput v3, p1, Lxa3;->g:I

    .line 142
    .line 143
    iget v3, p0, Lsd0;->m:I

    .line 144
    .line 145
    sub-int/2addr v3, v6

    .line 146
    iput v3, p0, Lsd0;->m:I

    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :cond_3
    iget-object v2, p0, Lsd0;->e:Ljava/util/HashSet;

    .line 151
    .line 152
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    :cond_4
    :goto_3
    move v2, v6

    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_5
    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_4

    .line 163
    .line 164
    iget-object v2, p0, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 165
    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v7, "No free connections ["

    .line 172
    .line 173
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget-object v7, p1, Lxa3;->b:Lym1;

    .line 177
    .line 178
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :goto_4
    iget-object p0, p0, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 199
    .line 200
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 201
    .line 202
    .line 203
    throw p1

    .line 204
    :cond_6
    iget-object p0, p0, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 205
    .line 206
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 207
    .line 208
    .line 209
    return-object v0
.end method

.method public final g(Lym1;)Lxa3;
    .locals 3

    .line 1
    iget-object v0, p0, Lsd0;->h:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v1, p0, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lxa3;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    new-instance v2, Lxa3;

    .line 17
    .line 18
    iget-object p0, p0, Lsd0;->d:Lqd0;

    .line 19
    .line 20
    invoke-direct {v2, p1, p0}, Lxa3;-><init>(Lym1;Lqd0;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 30
    .line 31
    .line 32
    return-object v2

    .line 33
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public final h(Lxa3;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lsd0;->g:Ljava/util/LinkedList;

    .line 2
    .line 3
    const-string v1, "Notifying thread waiting on pool ["

    .line 4
    .line 5
    iget-object v2, p0, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    :try_start_0
    iget-object v3, p1, Lxa3;->f:Ljava/util/LinkedList;

    .line 13
    .line 14
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 21
    .line 22
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p1, Lxa3;->b:Lym1;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, "]"

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_3

    .line 55
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Llc4;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget-object v1, p0, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 67
    .line 68
    if-nez p1, :cond_3

    .line 69
    .line 70
    :try_start_1
    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    iget-object p0, p0, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 77
    .line 78
    const-string p1, "Notifying thread waiting on any pool"

    .line 79
    .line 80
    invoke-interface {p0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    check-cast p0, Llc4;

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    iget-object p0, p0, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 97
    .line 98
    const-string p1, "Notifying no-one, there are no waiting threads"

    .line 99
    .line 100
    invoke-interface {p0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_4
    const/4 p0, 0x0

    .line 104
    :goto_1
    if-eqz p0, :cond_6

    .line 105
    .line 106
    iget-object p1, p0, Llc4;->b:Ljava/lang/Thread;

    .line 107
    .line 108
    if-eqz p1, :cond_5

    .line 109
    .line 110
    iget-object p0, p0, Llc4;->a:Ljava/util/concurrent/locks/Condition;

    .line 111
    .line 112
    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    const-string p1, "Nobody waiting on this object."

    .line 119
    .line 120
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :cond_6
    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :goto_3
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 129
    .line 130
    .line 131
    throw p0
.end method

.method public final i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean v0, p0, Lsd0;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    :goto_0
    iget-object p0, p0, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    :try_start_1
    iput-boolean v0, p0, Lsd0;->k:Z

    .line 18
    .line 19
    iget-object v0, p0, Lsd0;->e:Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lfv;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lsd0;->a(Lfv;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto/16 :goto_4

    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lsd0;->f:Ljava/util/LinkedList;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lfv;

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 66
    .line 67
    .line 68
    iget-object v2, p0, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 69
    .line 70
    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    iget-object v2, p0, Lsd0;->a:Lorg/apache/commons/logging/Log;

    .line 77
    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v4, "Closing connection ["

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v4, v1, Lfv;->c:Lym1;

    .line 89
    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v4, "]["

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v4, v1, Lfv;->d:Ljava/lang/Object;

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v4, "]"

    .line 104
    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_2
    invoke-virtual {p0, v1}, Lsd0;->a(Lfv;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    iget-object v0, p0, Lsd0;->g:Ljava/util/LinkedList;

    .line 120
    .line 121
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_5

    .line 130
    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Llc4;

    .line 136
    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 138
    .line 139
    .line 140
    iget-object v2, v1, Llc4;->b:Ljava/lang/Thread;

    .line 141
    .line 142
    if-eqz v2, :cond_4

    .line 143
    .line 144
    iget-object v1, v1, Llc4;->a:Ljava/util/concurrent/locks/Condition;

    .line 145
    .line 146
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 151
    .line 152
    const-string v1, "Nobody waiting on this object."

    .line 153
    .line 154
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v0

    .line 158
    :cond_5
    iget-object v0, p0, Lsd0;->h:Ljava/util/HashMap;

    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :goto_4
    iget-object p0, p0, Lsd0;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 166
    .line 167
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 168
    .line 169
    .line 170
    throw v0
.end method

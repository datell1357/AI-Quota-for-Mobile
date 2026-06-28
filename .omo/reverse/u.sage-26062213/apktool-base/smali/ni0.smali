.class public final Lni0;
.super Ljava/lang/Thread;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final synthetic v:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile indexInArray:I

.field public final n:Llg4;

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field public final o:Lw33;

.field public p:Loi0;

.field public q:J

.field public r:J

.field public s:I

.field public t:Z

.field public final synthetic u:Lpi0;

.field private volatile synthetic workerCtl$volatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lni0;

    .line 2
    .line 3
    const-string v1, "workerCtl$volatile"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lni0;->v:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lpi0;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Lni0;->u:Lpi0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 8
    .line 9
    .line 10
    const-class p1, Lpi0;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Llg4;

    .line 20
    .line 21
    invoke-direct {p1}, Llg4;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lni0;->n:Llg4;

    .line 25
    .line 26
    new-instance p1, Lw33;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lni0;->o:Lw33;

    .line 32
    .line 33
    sget-object p1, Loi0;->q:Loi0;

    .line 34
    .line 35
    iput-object p1, p0, Lni0;->p:Loi0;

    .line 36
    .line 37
    sget-object p1, Lpi0;->x:Lsg0;

    .line 38
    .line 39
    iput-object p1, p0, Lni0;->nextParkedWorker:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    long-to-int p1, v0

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/16 p1, 0x2a

    .line 50
    .line 51
    :goto_0
    iput p1, p0, Lni0;->s:I

    .line 52
    .line 53
    invoke-virtual {p0, p2}, Lni0;->f(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final a(Z)Lmw3;
    .locals 10

    .line 1
    iget-object v0, p0, Lni0;->p:Loi0;

    .line 2
    .line 3
    iget-object v2, p0, Lni0;->u:Lpi0;

    .line 4
    .line 5
    const/4 v7, 0x1

    .line 6
    iget-object v8, p0, Lni0;->n:Llg4;

    .line 7
    .line 8
    sget-object v9, Loi0;->n:Loi0;

    .line 9
    .line 10
    if-ne v0, v9, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Lpi0;->v:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 14
    .line 15
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    const-wide v5, 0x7ffffc0000000000L

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    and-long/2addr v5, v3

    .line 25
    const/16 v1, 0x2a

    .line 26
    .line 27
    shr-long/2addr v5, v1

    .line 28
    long-to-int v1, v5

    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {v8}, Llg4;->g()Lmw3;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    iget-object p1, v2, Lpi0;->s:Lgh1;

    .line 38
    .line 39
    invoke-virtual {p1}, Lj72;->d()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lmw3;

    .line 44
    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0, v7}, Lni0;->i(I)Lmw3;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_2
    return-object p1

    .line 53
    :cond_3
    const-wide v5, 0x40000000000L

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    sub-long v5, v3, v5

    .line 59
    .line 60
    sget-object v1, Lpi0;->v:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 61
    .line 62
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    iput-object v9, p0, Lni0;->p:Loi0;

    .line 69
    .line 70
    :goto_0
    if-eqz p1, :cond_7

    .line 71
    .line 72
    iget p1, v2, Lpi0;->n:I

    .line 73
    .line 74
    mul-int/lit8 p1, p1, 0x2

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lni0;->d(I)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_4

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    const/4 v7, 0x0

    .line 84
    :goto_1
    if-eqz v7, :cond_5

    .line 85
    .line 86
    invoke-virtual {p0}, Lni0;->e()Lmw3;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_5

    .line 91
    .line 92
    return-object p1

    .line 93
    :cond_5
    invoke-virtual {v8}, Llg4;->e()Lmw3;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_6

    .line 98
    .line 99
    return-object p1

    .line 100
    :cond_6
    if-nez v7, :cond_8

    .line 101
    .line 102
    invoke-virtual {p0}, Lni0;->e()Lmw3;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eqz p1, :cond_8

    .line 107
    .line 108
    return-object p1

    .line 109
    :cond_7
    invoke-virtual {p0}, Lni0;->e()Lmw3;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-eqz p1, :cond_8

    .line 114
    .line 115
    return-object p1

    .line 116
    :cond_8
    const/4 p1, 0x3

    .line 117
    invoke-virtual {p0, p1}, Lni0;->i(I)Lmw3;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0
.end method

.method public final b()I
    .locals 0

    .line 1
    iget p0, p0, Lni0;->indexInArray:I

    .line 2
    .line 3
    return p0
.end method

.method public final c()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lni0;->nextParkedWorker:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(I)I
    .locals 2

    .line 1
    iget v0, p0, Lni0;->s:I

    .line 2
    .line 3
    shl-int/lit8 v1, v0, 0xd

    .line 4
    .line 5
    xor-int/2addr v0, v1

    .line 6
    shr-int/lit8 v1, v0, 0x11

    .line 7
    .line 8
    xor-int/2addr v0, v1

    .line 9
    shl-int/lit8 v1, v0, 0x5

    .line 10
    .line 11
    xor-int/2addr v0, v1

    .line 12
    iput v0, p0, Lni0;->s:I

    .line 13
    .line 14
    add-int/lit8 p0, p1, -0x1

    .line 15
    .line 16
    and-int v1, p0, p1

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    and-int/2addr p0, v0

    .line 21
    return p0

    .line 22
    :cond_0
    const p0, 0x7fffffff

    .line 23
    .line 24
    .line 25
    and-int/2addr p0, v0

    .line 26
    rem-int/2addr p0, p1

    .line 27
    return p0
.end method

.method public final e()Lmw3;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lni0;->d(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object p0, p0, Lni0;->u:Lpi0;

    .line 7
    .line 8
    iget-object v1, p0, Lpi0;->s:Lgh1;

    .line 9
    .line 10
    iget-object p0, p0, Lpi0;->r:Lgh1;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lj72;->d()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lmw3;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    invoke-virtual {v1}, Lj72;->d()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lmw3;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_1
    invoke-virtual {v1}, Lj72;->d()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lmw3;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_2
    invoke-virtual {p0}, Lj72;->d()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lmw3;

    .line 44
    .line 45
    return-object p0
.end method

.method public final f(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lni0;->u:Lpi0;

    .line 7
    .line 8
    iget-object v1, v1, Lpi0;->q:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "-worker-"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const-string v1, "TERMINATED"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput p1, p0, Lni0;->indexInArray:I

    .line 38
    .line 39
    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lni0;->nextParkedWorker:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public final h(Loi0;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lni0;->p:Loi0;

    .line 2
    .line 3
    sget-object v1, Loi0;->n:Loi0;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-eqz v1, :cond_1

    .line 11
    .line 12
    sget-object v2, Lpi0;->v:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 13
    .line 14
    const-wide v3, 0x40000000000L

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    iget-object v5, p0, Lni0;->u:Lpi0;

    .line 20
    .line 21
    invoke-virtual {v2, v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 22
    .line 23
    .line 24
    :cond_1
    if-eq v0, p1, :cond_2

    .line 25
    .line 26
    iput-object p1, p0, Lni0;->p:Loi0;

    .line 27
    .line 28
    :cond_2
    return v1
.end method

.method public final i(I)Lmw3;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lpi0;->v:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 6
    .line 7
    iget-object v3, v0, Lni0;->u:Lpi0;

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    const-wide/32 v6, 0x1fffff

    .line 14
    .line 15
    .line 16
    and-long/2addr v4, v6

    .line 17
    long-to-int v2, v4

    .line 18
    const/4 v4, 0x2

    .line 19
    const/4 v5, 0x0

    .line 20
    if-ge v2, v4, :cond_0

    .line 21
    .line 22
    return-object v5

    .line 23
    :cond_0
    invoke-virtual {v0, v2}, Lni0;->d(I)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/4 v9, 0x0

    .line 28
    const-wide v10, 0x7fffffffffffffffL

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    :goto_0
    const-wide/16 v12, 0x0

    .line 34
    .line 35
    if-ge v9, v2, :cond_b

    .line 36
    .line 37
    const/4 v14, 0x1

    .line 38
    add-int/2addr v4, v14

    .line 39
    if-le v4, v2, :cond_1

    .line 40
    .line 41
    move v4, v14

    .line 42
    :cond_1
    iget-object v15, v3, Lpi0;->t:Li73;

    .line 43
    .line 44
    invoke-virtual {v15, v4}, Li73;->b(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v15

    .line 48
    check-cast v15, Lni0;

    .line 49
    .line 50
    if-eqz v15, :cond_9

    .line 51
    .line 52
    if-eq v15, v0, :cond_9

    .line 53
    .line 54
    iget-object v15, v15, Lni0;->n:Llg4;

    .line 55
    .line 56
    const/4 v6, 0x3

    .line 57
    if-ne v1, v6, :cond_2

    .line 58
    .line 59
    invoke-virtual {v15}, Llg4;->f()Lmw3;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    const-wide v16, 0x7fffffffffffffffL

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    sget-object v6, Llg4;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 73
    .line 74
    invoke-virtual {v6, v15}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    const-wide v16, 0x7fffffffffffffffL

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    sget-object v7, Llg4;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 84
    .line 85
    invoke-virtual {v7, v15}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-ne v1, v14, :cond_3

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    const/4 v14, 0x0

    .line 93
    :goto_1
    if-eq v6, v7, :cond_4

    .line 94
    .line 95
    if-eqz v14, :cond_5

    .line 96
    .line 97
    sget-object v8, Llg4;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 98
    .line 99
    invoke-virtual {v8, v15}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    if-nez v8, :cond_5

    .line 104
    .line 105
    :cond_4
    move-object v6, v5

    .line 106
    goto :goto_2

    .line 107
    :cond_5
    add-int/lit8 v8, v6, 0x1

    .line 108
    .line 109
    invoke-virtual {v15, v6, v14}, Llg4;->h(IZ)Lmw3;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    if-nez v6, :cond_6

    .line 114
    .line 115
    move v6, v8

    .line 116
    goto :goto_1

    .line 117
    :cond_6
    :goto_2
    iget-object v14, v0, Lni0;->o:Lw33;

    .line 118
    .line 119
    if-eqz v6, :cond_7

    .line 120
    .line 121
    iput-object v6, v14, Lw33;->n:Ljava/lang/Object;

    .line 122
    .line 123
    const-wide/16 v7, -0x1

    .line 124
    .line 125
    :goto_3
    const-wide/16 v20, -0x1

    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_7
    invoke-virtual {v15, v1, v14}, Llg4;->i(ILw33;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v18

    .line 132
    move-wide/from16 v7, v18

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :goto_4
    cmp-long v6, v7, v20

    .line 136
    .line 137
    if-nez v6, :cond_8

    .line 138
    .line 139
    iget-object v0, v14, Lw33;->n:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v0, Lmw3;

    .line 142
    .line 143
    iput-object v5, v14, Lw33;->n:Ljava/lang/Object;

    .line 144
    .line 145
    return-object v0

    .line 146
    :cond_8
    cmp-long v6, v7, v12

    .line 147
    .line 148
    if-lez v6, :cond_a

    .line 149
    .line 150
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 151
    .line 152
    .line 153
    move-result-wide v10

    .line 154
    goto :goto_5

    .line 155
    :cond_9
    const-wide v16, 0x7fffffffffffffffL

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    :cond_a
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_b
    const-wide v16, 0x7fffffffffffffffL

    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    cmp-long v1, v10, v16

    .line 170
    .line 171
    if-eqz v1, :cond_c

    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_c
    move-wide v10, v12

    .line 175
    :goto_6
    iput-wide v10, v0, Lni0;->r:J

    .line 176
    .line 177
    return-object v5
.end method

.method public final run()V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :cond_0
    :goto_0
    move v0, v2

    .line 5
    :cond_1
    :goto_1
    iget-object v3, v1, Lni0;->u:Lpi0;

    .line 6
    .line 7
    sget-object v4, Lpi0;->w:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 8
    .line 9
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x1

    .line 14
    if-ne v3, v4, :cond_2

    .line 15
    .line 16
    goto/16 :goto_a

    .line 17
    .line 18
    :cond_2
    iget-object v3, v1, Lni0;->p:Loi0;

    .line 19
    .line 20
    sget-object v5, Loi0;->r:Loi0;

    .line 21
    .line 22
    if-eq v3, v5, :cond_17

    .line 23
    .line 24
    iget-boolean v3, v1, Lni0;->t:Z

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Lni0;->a(Z)Lmw3;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-wide/32 v6, -0x200000

    .line 31
    .line 32
    .line 33
    const-wide/16 v8, 0x0

    .line 34
    .line 35
    if-eqz v3, :cond_8

    .line 36
    .line 37
    iput-wide v8, v1, Lni0;->r:J

    .line 38
    .line 39
    iget-object v4, v1, Lni0;->u:Lpi0;

    .line 40
    .line 41
    iput-wide v8, v1, Lni0;->q:J

    .line 42
    .line 43
    iget-object v0, v1, Lni0;->p:Loi0;

    .line 44
    .line 45
    sget-object v8, Loi0;->p:Loi0;

    .line 46
    .line 47
    if-ne v0, v8, :cond_3

    .line 48
    .line 49
    sget-object v0, Loi0;->o:Loi0;

    .line 50
    .line 51
    iput-object v0, v1, Lni0;->p:Loi0;

    .line 52
    .line 53
    :cond_3
    iget-boolean v0, v3, Lmw3;->o:Z

    .line 54
    .line 55
    if-eqz v0, :cond_7

    .line 56
    .line 57
    sget-object v0, Loi0;->o:Loi0;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Lni0;->h(Loi0;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    invoke-virtual {v4}, Lpi0;->B()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    sget-object v0, Lpi0;->v:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 73
    .line 74
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v8

    .line 78
    invoke-virtual {v4, v8, v9}, Lpi0;->A(J)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    invoke-virtual {v4}, Lpi0;->B()Z

    .line 86
    .line 87
    .line 88
    :cond_6
    :goto_2
    :try_start_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    invoke-interface {v8, v3, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    :goto_3
    sget-object v0, Lpi0;->v:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 105
    .line 106
    invoke-virtual {v0, v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 107
    .line 108
    .line 109
    iget-object v0, v1, Lni0;->p:Loi0;

    .line 110
    .line 111
    if-eq v0, v5, :cond_0

    .line 112
    .line 113
    sget-object v0, Loi0;->q:Loi0;

    .line 114
    .line 115
    iput-object v0, v1, Lni0;->p:Loi0;

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_7
    :try_start_1
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :catchall_1
    move-exception v0

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-interface {v4, v3, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_0

    .line 135
    .line 136
    :cond_8
    iput-boolean v2, v1, Lni0;->t:Z

    .line 137
    .line 138
    iget-wide v10, v1, Lni0;->r:J

    .line 139
    .line 140
    cmp-long v3, v10, v8

    .line 141
    .line 142
    if-eqz v3, :cond_a

    .line 143
    .line 144
    if-nez v0, :cond_9

    .line 145
    .line 146
    move v0, v4

    .line 147
    goto/16 :goto_1

    .line 148
    .line 149
    :cond_9
    sget-object v0, Loi0;->p:Loi0;

    .line 150
    .line 151
    invoke-virtual {v1, v0}, Lni0;->h(Loi0;)Z

    .line 152
    .line 153
    .line 154
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 155
    .line 156
    .line 157
    iget-wide v3, v1, Lni0;->r:J

    .line 158
    .line 159
    invoke-static {v3, v4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 160
    .line 161
    .line 162
    iput-wide v8, v1, Lni0;->r:J

    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_a
    iget-object v3, v1, Lni0;->nextParkedWorker:Ljava/lang/Object;

    .line 167
    .line 168
    sget-object v5, Lpi0;->x:Lsg0;

    .line 169
    .line 170
    if-eq v3, v5, :cond_14

    .line 171
    .line 172
    sget-object v3, Lni0;->v:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 173
    .line 174
    const/4 v5, -0x1

    .line 175
    invoke-virtual {v3, v1, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 176
    .line 177
    .line 178
    :cond_b
    :goto_4
    iget-object v3, v1, Lni0;->nextParkedWorker:Ljava/lang/Object;

    .line 179
    .line 180
    sget-object v6, Lpi0;->x:Lsg0;

    .line 181
    .line 182
    if-eq v3, v6, :cond_1

    .line 183
    .line 184
    sget-object v3, Lni0;->v:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 185
    .line 186
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-ne v6, v5, :cond_1

    .line 191
    .line 192
    iget-object v6, v1, Lni0;->u:Lpi0;

    .line 193
    .line 194
    sget-object v7, Lpi0;->w:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 195
    .line 196
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    if-ne v6, v4, :cond_c

    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :cond_c
    iget-object v6, v1, Lni0;->p:Loi0;

    .line 205
    .line 206
    sget-object v12, Loi0;->r:Loi0;

    .line 207
    .line 208
    if-ne v6, v12, :cond_d

    .line 209
    .line 210
    goto/16 :goto_1

    .line 211
    .line 212
    :cond_d
    sget-object v6, Loi0;->p:Loi0;

    .line 213
    .line 214
    invoke-virtual {v1, v6}, Lni0;->h(Loi0;)Z

    .line 215
    .line 216
    .line 217
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 218
    .line 219
    .line 220
    iget-wide v13, v1, Lni0;->q:J

    .line 221
    .line 222
    cmp-long v6, v13, v8

    .line 223
    .line 224
    if-nez v6, :cond_e

    .line 225
    .line 226
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 227
    .line 228
    .line 229
    move-result-wide v13

    .line 230
    iget-object v6, v1, Lni0;->u:Lpi0;

    .line 231
    .line 232
    const-wide/32 v15, 0x1fffff

    .line 233
    .line 234
    .line 235
    iget-wide v10, v6, Lpi0;->p:J

    .line 236
    .line 237
    add-long/2addr v13, v10

    .line 238
    iput-wide v13, v1, Lni0;->q:J

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_e
    const-wide/32 v15, 0x1fffff

    .line 242
    .line 243
    .line 244
    :goto_5
    iget-object v6, v1, Lni0;->u:Lpi0;

    .line 245
    .line 246
    iget-wide v10, v6, Lpi0;->p:J

    .line 247
    .line 248
    invoke-static {v10, v11}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 249
    .line 250
    .line 251
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 252
    .line 253
    .line 254
    move-result-wide v10

    .line 255
    iget-wide v13, v1, Lni0;->q:J

    .line 256
    .line 257
    sub-long/2addr v10, v13

    .line 258
    cmp-long v6, v10, v8

    .line 259
    .line 260
    if-ltz v6, :cond_b

    .line 261
    .line 262
    iput-wide v8, v1, Lni0;->q:J

    .line 263
    .line 264
    iget-object v6, v1, Lni0;->u:Lpi0;

    .line 265
    .line 266
    iget-object v10, v6, Lpi0;->t:Li73;

    .line 267
    .line 268
    monitor-enter v10

    .line 269
    :try_start_2
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 270
    .line 271
    .line 272
    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 273
    if-ne v7, v4, :cond_f

    .line 274
    .line 275
    move v7, v4

    .line 276
    goto :goto_6

    .line 277
    :cond_f
    move v7, v2

    .line 278
    :goto_6
    if-eqz v7, :cond_10

    .line 279
    .line 280
    monitor-exit v10

    .line 281
    goto :goto_4

    .line 282
    :cond_10
    :try_start_3
    sget-object v7, Lpi0;->v:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 283
    .line 284
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 285
    .line 286
    .line 287
    move-result-wide v13

    .line 288
    and-long/2addr v13, v15

    .line 289
    long-to-int v11, v13

    .line 290
    iget v13, v6, Lpi0;->n:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 291
    .line 292
    if-gt v11, v13, :cond_11

    .line 293
    .line 294
    monitor-exit v10

    .line 295
    goto :goto_4

    .line 296
    :cond_11
    :try_start_4
    invoke-virtual {v3, v1, v5, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 297
    .line 298
    .line 299
    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 300
    if-nez v3, :cond_12

    .line 301
    .line 302
    monitor-exit v10

    .line 303
    goto :goto_4

    .line 304
    :cond_12
    :try_start_5
    iget v3, v1, Lni0;->indexInArray:I

    .line 305
    .line 306
    invoke-virtual {v1, v2}, Lni0;->f(I)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v6, v1, v3, v2}, Lpi0;->z(Lni0;II)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    .line 313
    .line 314
    .line 315
    move-result-wide v13

    .line 316
    and-long/2addr v13, v15

    .line 317
    long-to-int v7, v13

    .line 318
    if-eq v7, v3, :cond_13

    .line 319
    .line 320
    iget-object v11, v6, Lpi0;->t:Li73;

    .line 321
    .line 322
    invoke-virtual {v11, v7}, Li73;->b(I)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v11

    .line 326
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    check-cast v11, Lni0;

    .line 330
    .line 331
    iget-object v13, v6, Lpi0;->t:Li73;

    .line 332
    .line 333
    invoke-virtual {v13, v3, v11}, Li73;->c(ILni0;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v11, v3}, Lni0;->f(I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v6, v11, v7, v3}, Lpi0;->z(Lni0;II)V

    .line 340
    .line 341
    .line 342
    goto :goto_7

    .line 343
    :catchall_2
    move-exception v0

    .line 344
    goto :goto_8

    .line 345
    :cond_13
    :goto_7
    iget-object v3, v6, Lpi0;->t:Li73;

    .line 346
    .line 347
    const/4 v6, 0x0

    .line 348
    invoke-virtual {v3, v7, v6}, Li73;->c(ILni0;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 349
    .line 350
    .line 351
    monitor-exit v10

    .line 352
    iput-object v12, v1, Lni0;->p:Loi0;

    .line 353
    .line 354
    goto/16 :goto_4

    .line 355
    .line 356
    :goto_8
    monitor-exit v10

    .line 357
    throw v0

    .line 358
    :cond_14
    const-wide/32 v15, 0x1fffff

    .line 359
    .line 360
    .line 361
    iget-object v3, v1, Lni0;->u:Lpi0;

    .line 362
    .line 363
    iget-object v4, v1, Lni0;->nextParkedWorker:Ljava/lang/Object;

    .line 364
    .line 365
    if-eq v4, v5, :cond_15

    .line 366
    .line 367
    goto/16 :goto_1

    .line 368
    .line 369
    :cond_15
    sget-object v4, Lpi0;->u:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 370
    .line 371
    :goto_9
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 372
    .line 373
    .line 374
    move-result-wide v19

    .line 375
    and-long v8, v19, v15

    .line 376
    .line 377
    long-to-int v5, v8

    .line 378
    const-wide/32 v8, 0x200000

    .line 379
    .line 380
    .line 381
    add-long v8, v19, v8

    .line 382
    .line 383
    and-long/2addr v8, v6

    .line 384
    iget v10, v1, Lni0;->indexInArray:I

    .line 385
    .line 386
    iget-object v11, v3, Lpi0;->t:Li73;

    .line 387
    .line 388
    invoke-virtual {v11, v5}, Li73;->b(I)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    iput-object v5, v1, Lni0;->nextParkedWorker:Ljava/lang/Object;

    .line 393
    .line 394
    sget-object v17, Lpi0;->u:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 395
    .line 396
    int-to-long v10, v10

    .line 397
    or-long v21, v8, v10

    .line 398
    .line 399
    move-object/from16 v18, v3

    .line 400
    .line 401
    invoke-virtual/range {v17 .. v22}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    if-eqz v3, :cond_16

    .line 406
    .line 407
    goto/16 :goto_1

    .line 408
    .line 409
    :cond_16
    move-object/from16 v3, v18

    .line 410
    .line 411
    goto :goto_9

    .line 412
    :cond_17
    :goto_a
    sget-object v0, Loi0;->r:Loi0;

    .line 413
    .line 414
    invoke-virtual {v1, v0}, Lni0;->h(Loi0;)Z

    .line 415
    .line 416
    .line 417
    return-void
.end method

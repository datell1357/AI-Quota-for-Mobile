.class public final Lip3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lpe1;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public c:Z

.field public final d:Lsp0;

.field public final e:Ldi3;

.field public final f:Lug2;

.field public final g:Ljava/lang/Object;

.field public h:Lr6;

.field public i:Lhp3;

.field public j:J


# direct methods
.method public constructor <init>(Lpe1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lip3;->a:Lpe1;

    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lip3;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    new-instance p1, Lsp0;

    .line 15
    .line 16
    const/16 v0, 0x13

    .line 17
    .line 18
    invoke-direct {p1, v0, p0}, Lsp0;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lip3;->d:Lsp0;

    .line 22
    .line 23
    new-instance p1, Ldi3;

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    invoke-direct {p1, v0, p0}, Ldi3;-><init>(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lip3;->e:Ldi3;

    .line 30
    .line 31
    new-instance p1, Lug2;

    .line 32
    .line 33
    const/16 v0, 0x10

    .line 34
    .line 35
    new-array v0, v0, [Lhp3;

    .line 36
    .line 37
    invoke-direct {p1, v0}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lip3;->f:Lug2;

    .line 41
    .line 42
    new-instance p1, Ljava/lang/Object;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lip3;->g:Ljava/lang/Object;

    .line 48
    .line 49
    const-wide/16 v0, -0x1

    .line 50
    .line 51
    iput-wide v0, p0, Lip3;->j:J

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lip3;->g:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v0, v0, Lip3;->f:Lug2;

    .line 9
    .line 10
    iget v3, v0, Lug2;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    :goto_0
    iget-object v7, v0, Lug2;->n:[Ljava/lang/Object;

    .line 15
    .line 16
    if-ge v5, v3, :cond_8

    .line 17
    .line 18
    :try_start_1
    aget-object v7, v7, v5

    .line 19
    .line 20
    check-cast v7, Lhp3;

    .line 21
    .line 22
    iget-object v8, v7, Lhp3;->f:Lkg2;

    .line 23
    .line 24
    invoke-virtual {v8, v1}, Lkg2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    check-cast v8, Lcg2;

    .line 29
    .line 30
    if-nez v8, :cond_1

    .line 31
    .line 32
    :cond_0
    move v15, v5

    .line 33
    goto :goto_4

    .line 34
    :cond_1
    iget-object v9, v8, Lcg2;->b:[Ljava/lang/Object;

    .line 35
    .line 36
    iget-object v10, v8, Lcg2;->c:[I

    .line 37
    .line 38
    iget-object v8, v8, Lcg2;->a:[J

    .line 39
    .line 40
    array-length v11, v8

    .line 41
    add-int/lit8 v11, v11, -0x2

    .line 42
    .line 43
    if-ltz v11, :cond_0

    .line 44
    .line 45
    const/4 v12, 0x0

    .line 46
    :goto_1
    aget-wide v13, v8, v12

    .line 47
    .line 48
    move v15, v5

    .line 49
    not-long v4, v13

    .line 50
    const/16 v16, 0x7

    .line 51
    .line 52
    shl-long v4, v4, v16

    .line 53
    .line 54
    and-long/2addr v4, v13

    .line 55
    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    and-long v4, v4, v16

    .line 61
    .line 62
    cmp-long v4, v4, v16

    .line 63
    .line 64
    if-eqz v4, :cond_4

    .line 65
    .line 66
    sub-int v4, v12, v11

    .line 67
    .line 68
    not-int v4, v4

    .line 69
    ushr-int/lit8 v4, v4, 0x1f

    .line 70
    .line 71
    const/16 v5, 0x8

    .line 72
    .line 73
    rsub-int/lit8 v4, v4, 0x8

    .line 74
    .line 75
    move/from16 v16, v5

    .line 76
    .line 77
    const/4 v5, 0x0

    .line 78
    :goto_2
    if-ge v5, v4, :cond_3

    .line 79
    .line 80
    const-wide/16 v17, 0xff

    .line 81
    .line 82
    and-long v17, v13, v17

    .line 83
    .line 84
    const-wide/16 v19, 0x80

    .line 85
    .line 86
    cmp-long v17, v17, v19

    .line 87
    .line 88
    if-gez v17, :cond_2

    .line 89
    .line 90
    shl-int/lit8 v17, v12, 0x3

    .line 91
    .line 92
    add-int v17, v17, v5

    .line 93
    .line 94
    move/from16 v18, v5

    .line 95
    .line 96
    aget-object v5, v9, v17

    .line 97
    .line 98
    aget v17, v10, v17

    .line 99
    .line 100
    invoke-virtual {v7, v1, v5}, Lhp3;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_2
    move/from16 v18, v5

    .line 105
    .line 106
    :goto_3
    shr-long v13, v13, v16

    .line 107
    .line 108
    add-int/lit8 v5, v18, 0x1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    move/from16 v5, v16

    .line 112
    .line 113
    if-ne v4, v5, :cond_5

    .line 114
    .line 115
    :cond_4
    if-eq v12, v11, :cond_5

    .line 116
    .line 117
    add-int/lit8 v12, v12, 0x1

    .line 118
    .line 119
    move v5, v15

    .line 120
    goto :goto_1

    .line 121
    :cond_5
    :goto_4
    iget-object v4, v7, Lhp3;->f:Lkg2;

    .line 122
    .line 123
    invoke-virtual {v4}, Lkg2;->j()Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-nez v4, :cond_6

    .line 128
    .line 129
    add-int/lit8 v6, v6, 0x1

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_6
    if-lez v6, :cond_7

    .line 133
    .line 134
    iget-object v4, v0, Lug2;->n:[Ljava/lang/Object;

    .line 135
    .line 136
    sub-int v5, v15, v6

    .line 137
    .line 138
    aget-object v7, v4, v15

    .line 139
    .line 140
    aput-object v7, v4, v5

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :catchall_0
    move-exception v0

    .line 144
    goto :goto_6

    .line 145
    :cond_7
    :goto_5
    add-int/lit8 v5, v15, 0x1

    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :cond_8
    sub-int v1, v3, v6

    .line 150
    .line 151
    const/4 v4, 0x0

    .line 152
    invoke-static {v7, v1, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    iput v1, v0, Lug2;->p:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .line 157
    monitor-exit v2

    .line 158
    return-void

    .line 159
    :goto_6
    monitor-exit v2

    .line 160
    throw v0
.end method

.method public final b()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lip3;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lip3;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    move v1, v0

    .line 12
    :goto_0
    iget-object v2, p0, Lip3;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x1

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    goto :goto_4

    .line 23
    :cond_1
    instance-of v6, v3, Ljava/util/Set;

    .line 24
    .line 25
    if-eqz v6, :cond_2

    .line 26
    .line 27
    move-object v6, v3

    .line 28
    check-cast v6, Ljava/util/Set;

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_2
    instance-of v6, v3, Ljava/util/List;

    .line 32
    .line 33
    if-eqz v6, :cond_b

    .line 34
    .line 35
    move-object v6, v3

    .line 36
    check-cast v6, Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    check-cast v7, Ljava/util/Set;

    .line 43
    .line 44
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    const/4 v9, 0x2

    .line 49
    if-ne v8, v9, :cond_3

    .line 50
    .line 51
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-le v8, v9, :cond_4

    .line 61
    .line 62
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-interface {v6, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    :cond_4
    :goto_2
    move-object v6, v7

    .line 71
    :cond_5
    :goto_3
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_a

    .line 76
    .line 77
    move-object v4, v6

    .line 78
    :goto_4
    if-nez v4, :cond_6

    .line 79
    .line 80
    return v1

    .line 81
    :cond_6
    iget-object v2, p0, Lip3;->g:Ljava/lang/Object;

    .line 82
    .line 83
    monitor-enter v2

    .line 84
    :try_start_1
    iget-object v3, p0, Lip3;->f:Lug2;

    .line 85
    .line 86
    iget-object v6, v3, Lug2;->n:[Ljava/lang/Object;

    .line 87
    .line 88
    iget v3, v3, Lug2;->p:I

    .line 89
    .line 90
    move v7, v0

    .line 91
    :goto_5
    if-ge v7, v3, :cond_9

    .line 92
    .line 93
    aget-object v8, v6, v7

    .line 94
    .line 95
    check-cast v8, Lhp3;

    .line 96
    .line 97
    invoke-virtual {v8, v4}, Lhp3;->a(Ljava/util/Set;)Z

    .line 98
    .line 99
    .line 100
    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    if-nez v8, :cond_8

    .line 102
    .line 103
    if-eqz v1, :cond_7

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_7
    move v1, v0

    .line 107
    goto :goto_7

    .line 108
    :cond_8
    :goto_6
    move v1, v5

    .line 109
    :goto_7
    add-int/lit8 v7, v7, 0x1

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    goto :goto_8

    .line 114
    :cond_9
    monitor-exit v2

    .line 115
    goto :goto_0

    .line 116
    :goto_8
    monitor-exit v2

    .line 117
    throw p0

    .line 118
    :cond_a
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    if-eq v7, v3, :cond_5

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_b
    const-string p0, "Unexpected notification"

    .line 126
    .line 127
    invoke-static {p0}, Lwb0;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lp61;->q()V

    .line 131
    .line 132
    .line 133
    return v0

    .line 134
    :catchall_1
    move-exception p0

    .line 135
    monitor-exit v0

    .line 136
    throw p0
.end method

.method public final c(Ljava/lang/Object;Lpe1;Lne1;)V
    .locals 26

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
    invoke-static {}, Lc75;->w()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    iget-object v5, v1, Lip3;->g:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v5

    .line 14
    :try_start_0
    iget-object v6, v1, Lip3;->f:Lug2;

    .line 15
    .line 16
    iget-object v7, v6, Lug2;->n:[Ljava/lang/Object;

    .line 17
    .line 18
    iget v8, v6, Lug2;->p:I

    .line 19
    .line 20
    const/4 v10, 0x0

    .line 21
    :goto_0
    if-ge v10, v8, :cond_1

    .line 22
    .line 23
    aget-object v12, v7, v10

    .line 24
    .line 25
    move-object v13, v12

    .line 26
    check-cast v13, Lhp3;

    .line 27
    .line 28
    iget-object v13, v13, Lhp3;->a:Lpe1;

    .line 29
    .line 30
    if-ne v13, v2, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v12, 0x0

    .line 37
    :goto_1
    check-cast v12, Lhp3;

    .line 38
    .line 39
    const/4 v7, 0x1

    .line 40
    if-nez v12, :cond_2

    .line 41
    .line 42
    new-instance v12, Lhp3;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {v7, v2}, Ln44;->R(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v12, v2}, Lhp3;-><init>(Lpe1;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6, v12}, Lug2;->c(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object v2, v1, Lip3;->i:Lhp3;

    .line 57
    .line 58
    iget-wide v13, v1, Lip3;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    .line 59
    .line 60
    monitor-exit v5

    .line 61
    const-wide/16 v5, -0x1

    .line 62
    .line 63
    cmp-long v5, v13, v5

    .line 64
    .line 65
    if-eqz v5, :cond_4

    .line 66
    .line 67
    cmp-long v5, v13, v3

    .line 68
    .line 69
    if-nez v5, :cond_3

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v8, "Detected multithreaded access to SnapshotStateObserver: previousThreadId="

    .line 83
    .line 84
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v8, "), currentThread={id="

    .line 91
    .line 92
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v8, ", name="

    .line 99
    .line 100
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v5, "}. Note that observation on multiple threads in layout/draw is not supported. Make sure your measure/layout/draw for each Owner (AndroidComposeView) is executed on the same thread."

    .line 107
    .line 108
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-static {v5}, Lix2;->a(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    :goto_2
    :try_start_1
    iget-object v5, v1, Lip3;->g:Ljava/lang/Object;

    .line 119
    .line 120
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :try_start_2
    iput-object v12, v1, Lip3;->i:Lhp3;

    .line 122
    .line 123
    iput-wide v3, v1, Lip3;->j:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    .line 124
    .line 125
    :try_start_3
    monitor-exit v5

    .line 126
    iget-object v3, v1, Lip3;->e:Ldi3;

    .line 127
    .line 128
    iget-object v4, v12, Lhp3;->b:Ljava/lang/Object;

    .line 129
    .line 130
    iget-object v5, v12, Lhp3;->c:Lcg2;

    .line 131
    .line 132
    iget v6, v12, Lhp3;->d:I

    .line 133
    .line 134
    iput-object v0, v12, Lhp3;->b:Ljava/lang/Object;

    .line 135
    .line 136
    iget-object v8, v12, Lhp3;->f:Lkg2;

    .line 137
    .line 138
    invoke-virtual {v8, v0}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Lcg2;

    .line 143
    .line 144
    iput-object v0, v12, Lhp3;->c:Lcg2;

    .line 145
    .line 146
    iget v0, v12, Lhp3;->d:I

    .line 147
    .line 148
    const/4 v8, -0x1

    .line 149
    if-ne v0, v8, :cond_5

    .line 150
    .line 151
    invoke-static {}, Lwo3;->j()Lpo3;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lpo3;->g()J

    .line 156
    .line 157
    .line 158
    move-result-wide v15

    .line 159
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->hashCode(J)I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    iput v0, v12, Lhp3;->d:I

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    move-wide v6, v13

    .line 168
    goto/16 :goto_11

    .line 169
    .line 170
    :cond_5
    :goto_3
    iget-object v0, v12, Lhp3;->i:Lzf1;

    .line 171
    .line 172
    invoke-static {}, Lca;->l()Lug2;

    .line 173
    .line 174
    .line 175
    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    :try_start_4
    invoke-virtual {v8, v0}, Lug2;->c(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    if-nez v3, :cond_6

    .line 180
    .line 181
    invoke-interface/range {p3 .. p3}, Lne1;->a()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-object/from16 p2, v12

    .line 185
    .line 186
    goto/16 :goto_7

    .line 187
    .line 188
    :catchall_1
    move-exception v0

    .line 189
    move/from16 v18, v7

    .line 190
    .line 191
    move-wide v6, v13

    .line 192
    goto/16 :goto_10

    .line 193
    .line 194
    :cond_6
    sget-object v0, Lwo3;->b:Lui3;

    .line 195
    .line 196
    invoke-virtual {v0}, Lui3;->c()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    move-object v10, v0

    .line 201
    check-cast v10, Lpo3;

    .line 202
    .line 203
    instance-of v0, v10, Ls14;

    .line 204
    .line 205
    if-eqz v0, :cond_7

    .line 206
    .line 207
    move-object v0, v10

    .line 208
    check-cast v0, Ls14;

    .line 209
    .line 210
    move-object/from16 p2, v12

    .line 211
    .line 212
    iget-wide v11, v0, Ls14;->t:J

    .line 213
    .line 214
    invoke-static {}, Lc75;->w()J

    .line 215
    .line 216
    .line 217
    move-result-wide v16

    .line 218
    cmp-long v0, v11, v16

    .line 219
    .line 220
    if-nez v0, :cond_8

    .line 221
    .line 222
    move-object v0, v10

    .line 223
    check-cast v0, Ls14;

    .line 224
    .line 225
    iget-object v11, v0, Ls14;->r:Lpe1;

    .line 226
    .line 227
    move-object v0, v10

    .line 228
    check-cast v0, Ls14;

    .line 229
    .line 230
    iget-object v12, v0, Ls14;->s:Lpe1;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 231
    .line 232
    :try_start_5
    move-object v0, v10

    .line 233
    check-cast v0, Ls14;

    .line 234
    .line 235
    invoke-static {v3, v11, v7}, Lwo3;->k(Lpe1;Lpe1;Z)Lpe1;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    iput-object v3, v0, Ls14;->r:Lpe1;

    .line 240
    .line 241
    move-object v0, v10

    .line 242
    check-cast v0, Ls14;

    .line 243
    .line 244
    iput-object v12, v0, Ls14;->s:Lpe1;

    .line 245
    .line 246
    invoke-interface/range {p3 .. p3}, Lne1;->a()Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 247
    .line 248
    .line 249
    :try_start_6
    move-object v0, v10

    .line 250
    check-cast v0, Ls14;

    .line 251
    .line 252
    iput-object v11, v0, Ls14;->r:Lpe1;

    .line 253
    .line 254
    check-cast v10, Ls14;

    .line 255
    .line 256
    iput-object v12, v10, Ls14;->s:Lpe1;

    .line 257
    .line 258
    goto :goto_7

    .line 259
    :catchall_2
    move-exception v0

    .line 260
    move-object v3, v10

    .line 261
    check-cast v3, Ls14;

    .line 262
    .line 263
    iput-object v11, v3, Ls14;->r:Lpe1;

    .line 264
    .line 265
    check-cast v10, Ls14;

    .line 266
    .line 267
    iput-object v12, v10, Ls14;->s:Lpe1;

    .line 268
    .line 269
    throw v0

    .line 270
    :cond_7
    move-object/from16 p2, v12

    .line 271
    .line 272
    :cond_8
    if-eqz v10, :cond_9

    .line 273
    .line 274
    instance-of v0, v10, Log2;

    .line 275
    .line 276
    if-eqz v0, :cond_a

    .line 277
    .line 278
    :cond_9
    const/4 v0, 0x0

    .line 279
    goto :goto_4

    .line 280
    :cond_a
    invoke-virtual {v10, v3}, Lpo3;->u(Lpe1;)Lpo3;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    move-object v15, v0

    .line 285
    goto :goto_6

    .line 286
    :goto_4
    new-instance v15, Ls14;

    .line 287
    .line 288
    instance-of v11, v10, Log2;

    .line 289
    .line 290
    if-eqz v11, :cond_b

    .line 291
    .line 292
    move-object v11, v10

    .line 293
    check-cast v11, Log2;

    .line 294
    .line 295
    move-object/from16 v16, v11

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_b
    move-object/from16 v16, v0

    .line 299
    .line 300
    :goto_5
    const/16 v19, 0x1

    .line 301
    .line 302
    const/16 v20, 0x0

    .line 303
    .line 304
    const/16 v18, 0x0

    .line 305
    .line 306
    move-object/from16 v17, v3

    .line 307
    .line 308
    invoke-direct/range {v15 .. v20}, Ls14;-><init>(Log2;Lpe1;Lpe1;ZZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 309
    .line 310
    .line 311
    :goto_6
    :try_start_7
    invoke-virtual {v15}, Lpo3;->j()Lpo3;

    .line 312
    .line 313
    .line 314
    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 315
    :try_start_8
    invoke-interface/range {p3 .. p3}, Lne1;->a()Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 316
    .line 317
    .line 318
    :try_start_9
    invoke-static {v3}, Lpo3;->q(Lpo3;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 319
    .line 320
    .line 321
    :try_start_a
    invoke-virtual {v15}, Lpo3;->c()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 322
    .line 323
    .line 324
    :goto_7
    :try_start_b
    iget v0, v8, Lug2;->p:I

    .line 325
    .line 326
    sub-int/2addr v0, v7

    .line 327
    invoke-virtual {v8, v0}, Lug2;->l(I)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-object/from16 v12, p2

    .line 331
    .line 332
    iget-object v0, v12, Lhp3;->b:Ljava/lang/Object;

    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    iget v3, v12, Lhp3;->d:I

    .line 338
    .line 339
    iget-object v8, v12, Lhp3;->c:Lcg2;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 340
    .line 341
    if-eqz v8, :cond_12

    .line 342
    .line 343
    :try_start_c
    iget-object v10, v8, Lcg2;->a:[J

    .line 344
    .line 345
    array-length v11, v10

    .line 346
    add-int/lit8 v11, v11, -0x2

    .line 347
    .line 348
    if-ltz v11, :cond_12

    .line 349
    .line 350
    move-object/from16 v17, v10

    .line 351
    .line 352
    const/4 v15, 0x0

    .line 353
    :goto_8
    aget-wide v9, v17, v15

    .line 354
    .line 355
    move/from16 v18, v7

    .line 356
    .line 357
    move-object/from16 v19, v8

    .line 358
    .line 359
    not-long v7, v9

    .line 360
    const/16 v20, 0x7

    .line 361
    .line 362
    shl-long v7, v7, v20

    .line 363
    .line 364
    and-long/2addr v7, v9

    .line 365
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    and-long v7, v7, v20

    .line 371
    .line 372
    cmp-long v7, v7, v20

    .line 373
    .line 374
    if-eqz v7, :cond_11

    .line 375
    .line 376
    sub-int v7, v15, v11

    .line 377
    .line 378
    not-int v7, v7

    .line 379
    ushr-int/lit8 v7, v7, 0x1f

    .line 380
    .line 381
    const/16 v8, 0x8

    .line 382
    .line 383
    rsub-int/lit8 v7, v7, 0x8

    .line 384
    .line 385
    move/from16 p1, v8

    .line 386
    .line 387
    const/4 v8, 0x0

    .line 388
    :goto_9
    if-ge v8, v7, :cond_10

    .line 389
    .line 390
    const-wide/16 v20, 0xff

    .line 391
    .line 392
    and-long v20, v9, v20

    .line 393
    .line 394
    const-wide/16 v22, 0x80

    .line 395
    .line 396
    cmp-long v20, v20, v22

    .line 397
    .line 398
    if-gez v20, :cond_e

    .line 399
    .line 400
    shl-int/lit8 v20, v15, 0x3

    .line 401
    .line 402
    move/from16 v21, v8

    .line 403
    .line 404
    add-int v8, v20, v21

    .line 405
    .line 406
    move-wide/from16 p2, v9

    .line 407
    .line 408
    move-object/from16 v9, v19

    .line 409
    .line 410
    iget-object v10, v9, Lcg2;->b:[Ljava/lang/Object;

    .line 411
    .line 412
    aget-object v10, v10, v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 413
    .line 414
    move-wide/from16 v19, v13

    .line 415
    .line 416
    :try_start_d
    iget-object v13, v9, Lcg2;->c:[I

    .line 417
    .line 418
    aget v13, v13, v8

    .line 419
    .line 420
    if-eq v13, v3, :cond_c

    .line 421
    .line 422
    move/from16 v13, v18

    .line 423
    .line 424
    goto :goto_a

    .line 425
    :cond_c
    const/4 v13, 0x0

    .line 426
    :goto_a
    if-eqz v13, :cond_d

    .line 427
    .line 428
    invoke-virtual {v12, v0, v10}, Lhp3;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    :cond_d
    if-eqz v13, :cond_f

    .line 432
    .line 433
    invoke-virtual {v9, v8}, Lcg2;->f(I)V

    .line 434
    .line 435
    .line 436
    goto :goto_b

    .line 437
    :cond_e
    move/from16 v21, v8

    .line 438
    .line 439
    move-wide/from16 p2, v9

    .line 440
    .line 441
    move-object/from16 v9, v19

    .line 442
    .line 443
    move-wide/from16 v19, v13

    .line 444
    .line 445
    :cond_f
    :goto_b
    shr-long v13, p2, p1

    .line 446
    .line 447
    add-int/lit8 v8, v21, 0x1

    .line 448
    .line 449
    move-wide/from16 v24, v19

    .line 450
    .line 451
    move-object/from16 v19, v9

    .line 452
    .line 453
    move-wide v9, v13

    .line 454
    move-wide/from16 v13, v24

    .line 455
    .line 456
    goto :goto_9

    .line 457
    :cond_10
    move/from16 v8, p1

    .line 458
    .line 459
    move-object/from16 v9, v19

    .line 460
    .line 461
    move-wide/from16 v19, v13

    .line 462
    .line 463
    if-ne v7, v8, :cond_13

    .line 464
    .line 465
    goto :goto_c

    .line 466
    :cond_11
    move-object/from16 v9, v19

    .line 467
    .line 468
    move-wide/from16 v19, v13

    .line 469
    .line 470
    :goto_c
    if-eq v15, v11, :cond_13

    .line 471
    .line 472
    add-int/lit8 v15, v15, 0x1

    .line 473
    .line 474
    move-object v8, v9

    .line 475
    move/from16 v7, v18

    .line 476
    .line 477
    move-wide/from16 v13, v19

    .line 478
    .line 479
    goto :goto_8

    .line 480
    :cond_12
    move-wide/from16 v19, v13

    .line 481
    .line 482
    goto :goto_d

    .line 483
    :catchall_3
    move-exception v0

    .line 484
    move-wide/from16 v19, v13

    .line 485
    .line 486
    goto :goto_e

    .line 487
    :cond_13
    :goto_d
    iput-object v4, v12, Lhp3;->b:Ljava/lang/Object;

    .line 488
    .line 489
    iput-object v5, v12, Lhp3;->c:Lcg2;

    .line 490
    .line 491
    iput v6, v12, Lhp3;->d:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 492
    .line 493
    iget-object v3, v1, Lip3;->g:Ljava/lang/Object;

    .line 494
    .line 495
    monitor-enter v3

    .line 496
    :try_start_e
    iput-object v2, v1, Lip3;->i:Lhp3;

    .line 497
    .line 498
    move-wide/from16 v6, v19

    .line 499
    .line 500
    iput-wide v6, v1, Lip3;->j:J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 501
    .line 502
    monitor-exit v3

    .line 503
    return-void

    .line 504
    :catchall_4
    move-exception v0

    .line 505
    monitor-exit v3

    .line 506
    throw v0

    .line 507
    :catchall_5
    move-exception v0

    .line 508
    :goto_e
    move-wide/from16 v6, v19

    .line 509
    .line 510
    goto :goto_11

    .line 511
    :catchall_6
    move-exception v0

    .line 512
    move/from16 v18, v7

    .line 513
    .line 514
    move-wide v6, v13

    .line 515
    goto :goto_f

    .line 516
    :catchall_7
    move-exception v0

    .line 517
    move/from16 v18, v7

    .line 518
    .line 519
    move-wide v6, v13

    .line 520
    :try_start_f
    invoke-static {v3}, Lpo3;->q(Lpo3;)V

    .line 521
    .line 522
    .line 523
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 524
    :catchall_8
    move-exception v0

    .line 525
    :goto_f
    :try_start_10
    invoke-virtual {v15}, Lpo3;->c()V

    .line 526
    .line 527
    .line 528
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 529
    :catchall_9
    move-exception v0

    .line 530
    :goto_10
    :try_start_11
    iget v3, v8, Lug2;->p:I

    .line 531
    .line 532
    add-int/lit8 v3, v3, -0x1

    .line 533
    .line 534
    invoke-virtual {v8, v3}, Lug2;->l(I)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    throw v0

    .line 538
    :catchall_a
    move-exception v0

    .line 539
    goto :goto_11

    .line 540
    :catchall_b
    move-exception v0

    .line 541
    move-wide v6, v13

    .line 542
    monitor-exit v5

    .line 543
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 544
    :goto_11
    iget-object v3, v1, Lip3;->g:Ljava/lang/Object;

    .line 545
    .line 546
    monitor-enter v3

    .line 547
    :try_start_12
    iput-object v2, v1, Lip3;->i:Lhp3;

    .line 548
    .line 549
    iput-wide v6, v1, Lip3;->j:J
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    .line 550
    .line 551
    monitor-exit v3

    .line 552
    throw v0

    .line 553
    :catchall_c
    move-exception v0

    .line 554
    monitor-exit v3

    .line 555
    throw v0

    .line 556
    :catchall_d
    move-exception v0

    .line 557
    monitor-exit v5

    .line 558
    throw v0
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lip3;->d:Lsp0;

    .line 2
    .line 3
    sget-object v1, Lwo3;->a:Ljd3;

    .line 4
    .line 5
    invoke-static {v1}, Lwo3;->e(Lpe1;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    sget-object v1, Lwo3;->c:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    sget-object v2, Lwo3;->h:Ljava/util/List;

    .line 12
    .line 13
    invoke-static {v2, v0}, Lo70;->r0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sput-object v2, Lwo3;->h:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    monitor-exit v1

    .line 20
    new-instance v1, Lr6;

    .line 21
    .line 22
    const/16 v2, 0xf

    .line 23
    .line 24
    invoke-direct {v1, v2, v0}, Lr6;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lip3;->h:Lr6;

    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v1

    .line 32
    throw p0
.end method

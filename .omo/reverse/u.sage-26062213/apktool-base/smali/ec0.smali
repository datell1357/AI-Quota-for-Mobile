.class public final Lec0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lyb0;


# instance fields
.field public A:Lkg2;

.field public B:Z

.field public C:Lsm3;

.field public D:Lzt2;

.field public E:Lec0;

.field public F:I

.field public final G:Lwu4;

.field public final H:Ll53;

.field public final I:Lag1;

.field public J:I

.field public final n:Lzb0;

.field public final o:Lg64;

.field public final p:Ljava/util/concurrent/atomic/AtomicReference;

.field public final q:Ljava/lang/Object;

.field public final r:Lng2;

.field public final s:Lun3;

.field public final t:Lkg2;

.field public final u:Llg2;

.field public final v:Llg2;

.field public final w:Lkg2;

.field public final x:Lk30;

.field public final y:Lk30;

.field public final z:Lkg2;


# direct methods
.method public constructor <init>(Lzb0;Lg64;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lec0;->n:Lzb0;

    .line 5
    .line 6
    iput-object p2, p0, Lec0;->o:Lg64;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lec0;->p:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lec0;->q:Ljava/lang/Object;

    .line 22
    .line 23
    new-instance v0, Llg2;

    .line 24
    .line 25
    invoke-direct {v0}, Llg2;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v5, Lng2;

    .line 29
    .line 30
    invoke-direct {v5, v0}, Lng2;-><init>(Llg2;)V

    .line 31
    .line 32
    .line 33
    iput-object v5, p0, Lec0;->r:Lng2;

    .line 34
    .line 35
    new-instance v0, Lun3;

    .line 36
    .line 37
    invoke-direct {v0}, Lun3;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lzb0;->d()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    new-instance v1, Ltf2;

    .line 47
    .line 48
    invoke-direct {v1}, Ltf2;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v1, v0, Lun3;->x:Ltf2;

    .line 52
    .line 53
    :cond_0
    invoke-virtual {p1}, Lzb0;->f()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0}, Lun3;->d()V

    .line 60
    .line 61
    .line 62
    :cond_1
    iput-object v0, p0, Lec0;->s:Lun3;

    .line 63
    .line 64
    invoke-static {}, Lht4;->k()Lkg2;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iput-object v1, p0, Lec0;->t:Lkg2;

    .line 69
    .line 70
    new-instance v1, Llg2;

    .line 71
    .line 72
    invoke-direct {v1}, Llg2;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lec0;->u:Llg2;

    .line 76
    .line 77
    new-instance v1, Llg2;

    .line 78
    .line 79
    invoke-direct {v1}, Llg2;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lec0;->v:Llg2;

    .line 83
    .line 84
    invoke-static {}, Lht4;->k()Lkg2;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iput-object v1, p0, Lec0;->w:Lkg2;

    .line 89
    .line 90
    new-instance v6, Lk30;

    .line 91
    .line 92
    invoke-direct {v6}, Lk30;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v6, p0, Lec0;->x:Lk30;

    .line 96
    .line 97
    new-instance v7, Lk30;

    .line 98
    .line 99
    invoke-direct {v7}, Lk30;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v7, p0, Lec0;->y:Lk30;

    .line 103
    .line 104
    invoke-static {}, Lht4;->k()Lkg2;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iput-object v1, p0, Lec0;->z:Lkg2;

    .line 109
    .line 110
    invoke-static {}, Lht4;->k()Lkg2;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iput-object v1, p0, Lec0;->A:Lkg2;

    .line 115
    .line 116
    new-instance v8, Lwu4;

    .line 117
    .line 118
    const/16 v1, 0xf

    .line 119
    .line 120
    invoke-direct {v8, v1, p1}, Lwu4;-><init>(ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    iput-object v8, p0, Lec0;->G:Lwu4;

    .line 124
    .line 125
    new-instance v1, Ll53;

    .line 126
    .line 127
    invoke-direct {v1}, Ll53;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object v1, p0, Lec0;->H:Ll53;

    .line 131
    .line 132
    invoke-static {v0}, Lwn3;->d(Lun3;)Lun3;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    new-instance v1, Lag1;

    .line 137
    .line 138
    move-object v9, p0

    .line 139
    move-object v3, p1

    .line 140
    move-object v2, p2

    .line 141
    invoke-direct/range {v1 .. v9}, Lag1;-><init>(Lg64;Lzb0;Lun3;Lng2;Lk30;Lk30;Lwu4;Lec0;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v1}, Lzb0;->p(Lag1;)V

    .line 145
    .line 146
    .line 147
    iput-object v1, v9, Lec0;->I:Lag1;

    .line 148
    .line 149
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lec0;->q:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lec0;->u(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lec0;->w:Lkg2;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_4

    .line 14
    .line 15
    instance-of v1, p1, Llg2;

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    check-cast p1, Llg2;

    .line 20
    .line 21
    iget-object v1, p1, Llg2;->b:[Ljava/lang/Object;

    .line 22
    .line 23
    iget-object p1, p1, Llg2;->a:[J

    .line 24
    .line 25
    array-length v2, p1

    .line 26
    add-int/lit8 v2, v2, -0x2

    .line 27
    .line 28
    if-ltz v2, :cond_4

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    move v4, v3

    .line 32
    :goto_0
    aget-wide v5, p1, v4

    .line 33
    .line 34
    not-long v7, v5

    .line 35
    const/4 v9, 0x7

    .line 36
    shl-long/2addr v7, v9

    .line 37
    and-long/2addr v7, v5

    .line 38
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    and-long/2addr v7, v9

    .line 44
    cmp-long v7, v7, v9

    .line 45
    .line 46
    if-eqz v7, :cond_2

    .line 47
    .line 48
    sub-int v7, v4, v2

    .line 49
    .line 50
    not-int v7, v7

    .line 51
    ushr-int/lit8 v7, v7, 0x1f

    .line 52
    .line 53
    const/16 v8, 0x8

    .line 54
    .line 55
    rsub-int/lit8 v7, v7, 0x8

    .line 56
    .line 57
    move v9, v3

    .line 58
    :goto_1
    if-ge v9, v7, :cond_1

    .line 59
    .line 60
    const-wide/16 v10, 0xff

    .line 61
    .line 62
    and-long/2addr v10, v5

    .line 63
    const-wide/16 v12, 0x80

    .line 64
    .line 65
    cmp-long v10, v10, v12

    .line 66
    .line 67
    if-gez v10, :cond_0

    .line 68
    .line 69
    shl-int/lit8 v10, v4, 0x3

    .line 70
    .line 71
    add-int/2addr v10, v9

    .line 72
    aget-object v10, v1, v10

    .line 73
    .line 74
    check-cast v10, Los0;

    .line 75
    .line 76
    invoke-virtual {p0, v10}, Lec0;->u(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_3

    .line 82
    :cond_0
    :goto_2
    shr-long/2addr v5, v8

    .line 83
    add-int/lit8 v9, v9, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    if-ne v7, v8, :cond_4

    .line 87
    .line 88
    :cond_2
    if-eq v4, v2, :cond_4

    .line 89
    .line 90
    add-int/lit8 v4, v4, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    check-cast p1, Los0;

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Lec0;->u(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    :cond_4
    monitor-exit v0

    .line 99
    return-void

    .line 100
    :goto_3
    monitor-exit v0

    .line 101
    throw p0
.end method

.method public final B(Ldf1;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lec0;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lec0;->q()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lec0;->n:Lzb0;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lec0;->I:Lag1;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput v2, v0, Lag1;->z:I

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    iput-boolean v3, v0, Lag1;->y:Z

    .line 19
    .line 20
    invoke-virtual {v1, p0, p1}, Lzb0;->a(Lec0;Ldf1;)V

    .line 21
    .line 22
    .line 23
    iget-boolean p0, v0, Lag1;->F:Z

    .line 24
    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    iget p0, v0, Lag1;->z:I

    .line 28
    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p0, "Cannot disable reuse from root if it was caused by other groups"

    .line 33
    .line 34
    invoke-static {p0}, Lix2;->a(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    const/4 p0, -0x1

    .line 38
    iput p0, v0, Lag1;->z:I

    .line 39
    .line 40
    iput-boolean v2, v0, Lag1;->y:Z

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-virtual {v1, p0, p1}, Lzb0;->a(Lec0;Ldf1;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lec0;->p:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lec0;->x:Lk30;

    .line 8
    .line 9
    iget-object v0, v0, Lk30;->a:Lbr2;

    .line 10
    .line 11
    invoke-virtual {v0}, Lbr2;->P0()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lec0;->y:Lk30;

    .line 15
    .line 16
    iget-object v0, v0, Lk30;->a:Lbr2;

    .line 17
    .line 18
    invoke-virtual {v0}, Lbr2;->P0()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lec0;->r:Lng2;

    .line 22
    .line 23
    iget-object v1, v0, Lng2;->n:Llg2;

    .line 24
    .line 25
    invoke-virtual {v1}, Llg2;->g()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lec0;->H:Ll53;

    .line 32
    .line 33
    iget-object p0, p0, Lec0;->I:Lag1;

    .line 34
    .line 35
    invoke-virtual {p0}, Lag1;->y()Lcc0;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :try_start_0
    invoke-virtual {v1, v0, p0}, Ll53;->g(Ljava/util/Set;Lcc0;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ll53;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ll53;->a()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-virtual {v1}, Ll53;->a()V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;Z)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lec0;->t:Lkg2;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_6

    .line 12
    .line 13
    instance-of v3, v2, Llg2;

    .line 14
    .line 15
    sget-object v4, Lau1;->n:Lau1;

    .line 16
    .line 17
    iget-object v5, v0, Lec0;->u:Llg2;

    .line 18
    .line 19
    iget-object v6, v0, Lec0;->v:Llg2;

    .line 20
    .line 21
    iget-object v0, v0, Lec0;->z:Lkg2;

    .line 22
    .line 23
    if-eqz v3, :cond_4

    .line 24
    .line 25
    check-cast v2, Llg2;

    .line 26
    .line 27
    iget-object v3, v2, Llg2;->b:[Ljava/lang/Object;

    .line 28
    .line 29
    iget-object v2, v2, Llg2;->a:[J

    .line 30
    .line 31
    array-length v7, v2

    .line 32
    add-int/lit8 v7, v7, -0x2

    .line 33
    .line 34
    if-ltz v7, :cond_6

    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    :goto_0
    aget-wide v10, v2, v9

    .line 38
    .line 39
    not-long v12, v10

    .line 40
    const/4 v14, 0x7

    .line 41
    shl-long/2addr v12, v14

    .line 42
    and-long/2addr v12, v10

    .line 43
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    and-long/2addr v12, v14

    .line 49
    cmp-long v12, v12, v14

    .line 50
    .line 51
    if-eqz v12, :cond_3

    .line 52
    .line 53
    sub-int v12, v9, v7

    .line 54
    .line 55
    not-int v12, v12

    .line 56
    ushr-int/lit8 v12, v12, 0x1f

    .line 57
    .line 58
    const/16 v13, 0x8

    .line 59
    .line 60
    rsub-int/lit8 v12, v12, 0x8

    .line 61
    .line 62
    const/4 v14, 0x0

    .line 63
    :goto_1
    if-ge v14, v12, :cond_2

    .line 64
    .line 65
    const-wide/16 v15, 0xff

    .line 66
    .line 67
    and-long/2addr v15, v10

    .line 68
    const-wide/16 v17, 0x80

    .line 69
    .line 70
    cmp-long v15, v15, v17

    .line 71
    .line 72
    if-gez v15, :cond_1

    .line 73
    .line 74
    shl-int/lit8 v15, v9, 0x3

    .line 75
    .line 76
    add-int/2addr v15, v14

    .line 77
    aget-object v15, v3, v15

    .line 78
    .line 79
    check-cast v15, Lc33;

    .line 80
    .line 81
    invoke-static {v0, v1, v15}, Lht4;->A(Lkg2;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v16

    .line 85
    if-nez v16, :cond_1

    .line 86
    .line 87
    invoke-virtual {v15, v1}, Lc33;->b(Ljava/lang/Object;)Lau1;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    if-eq v8, v4, :cond_1

    .line 92
    .line 93
    iget-object v8, v15, Lc33;->g:Lkg2;

    .line 94
    .line 95
    if-eqz v8, :cond_0

    .line 96
    .line 97
    if-nez p2, :cond_0

    .line 98
    .line 99
    invoke-virtual {v6, v15}, Llg2;->a(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_0
    invoke-virtual {v5, v15}, Llg2;->a(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    :cond_1
    :goto_2
    shr-long/2addr v10, v13

    .line 107
    add-int/lit8 v14, v14, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    if-ne v12, v13, :cond_6

    .line 111
    .line 112
    :cond_3
    if-eq v9, v7, :cond_6

    .line 113
    .line 114
    add-int/lit8 v9, v9, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    check-cast v2, Lc33;

    .line 118
    .line 119
    invoke-static {v0, v1, v2}, Lht4;->A(Lkg2;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_6

    .line 124
    .line 125
    invoke-virtual {v2, v1}, Lc33;->b(Ljava/lang/Object;)Lau1;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eq v0, v4, :cond_6

    .line 130
    .line 131
    iget-object v0, v2, Lc33;->g:Lkg2;

    .line 132
    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    if-nez p2, :cond_5

    .line 136
    .line 137
    invoke-virtual {v6, v2}, Llg2;->a(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_5
    invoke-virtual {v5, v2}, Llg2;->a(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    :cond_6
    return-void
.end method

.method public final c(Ljava/util/Set;Z)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    instance-of v3, v1, Lvd3;

    .line 8
    .line 9
    iget-object v4, v0, Lec0;->w:Lkg2;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/16 v14, 0x8

    .line 13
    .line 14
    if-eqz v3, :cond_b

    .line 15
    .line 16
    check-cast v1, Lvd3;

    .line 17
    .line 18
    iget-object v1, v1, Lvd3;->n:Llg2;

    .line 19
    .line 20
    iget-object v3, v1, Llg2;->b:[Ljava/lang/Object;

    .line 21
    .line 22
    iget-object v1, v1, Llg2;->a:[J

    .line 23
    .line 24
    array-length v15, v1

    .line 25
    add-int/lit8 v15, v15, -0x2

    .line 26
    .line 27
    if-ltz v15, :cond_a

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    const-wide/16 v16, 0x80

    .line 31
    .line 32
    const-wide/16 v18, 0xff

    .line 33
    .line 34
    :goto_0
    aget-wide v8, v1, v6

    .line 35
    .line 36
    const/4 v7, 0x7

    .line 37
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    not-long v10, v8

    .line 43
    shl-long/2addr v10, v7

    .line 44
    and-long/2addr v10, v8

    .line 45
    and-long v10, v10, v20

    .line 46
    .line 47
    cmp-long v10, v10, v20

    .line 48
    .line 49
    if-eqz v10, :cond_9

    .line 50
    .line 51
    sub-int v10, v6, v15

    .line 52
    .line 53
    not-int v10, v10

    .line 54
    ushr-int/lit8 v10, v10, 0x1f

    .line 55
    .line 56
    rsub-int/lit8 v10, v10, 0x8

    .line 57
    .line 58
    const/4 v11, 0x0

    .line 59
    :goto_1
    if-ge v11, v10, :cond_8

    .line 60
    .line 61
    and-long v22, v8, v18

    .line 62
    .line 63
    cmp-long v12, v22, v16

    .line 64
    .line 65
    if-gez v12, :cond_7

    .line 66
    .line 67
    shl-int/lit8 v12, v6, 0x3

    .line 68
    .line 69
    add-int/2addr v12, v11

    .line 70
    aget-object v12, v3, v12

    .line 71
    .line 72
    move/from16 v22, v7

    .line 73
    .line 74
    instance-of v7, v12, Lc33;

    .line 75
    .line 76
    if-eqz v7, :cond_1

    .line 77
    .line 78
    check-cast v12, Lc33;

    .line 79
    .line 80
    invoke-virtual {v12, v5}, Lc33;->b(Ljava/lang/Object;)Lau1;

    .line 81
    .line 82
    .line 83
    :cond_0
    move-object/from16 v29, v1

    .line 84
    .line 85
    move-wide/from16 v26, v8

    .line 86
    .line 87
    move/from16 p1, v15

    .line 88
    .line 89
    goto/16 :goto_6

    .line 90
    .line 91
    :cond_1
    invoke-virtual {v0, v12, v2}, Lec0;->b(Ljava/lang/Object;Z)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v12}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    if-eqz v7, :cond_0

    .line 99
    .line 100
    instance-of v12, v7, Llg2;

    .line 101
    .line 102
    if-eqz v12, :cond_5

    .line 103
    .line 104
    check-cast v7, Llg2;

    .line 105
    .line 106
    iget-object v12, v7, Llg2;->b:[Ljava/lang/Object;

    .line 107
    .line 108
    iget-object v7, v7, Llg2;->a:[J

    .line 109
    .line 110
    array-length v13, v7

    .line 111
    add-int/lit8 v13, v13, -0x2

    .line 112
    .line 113
    if-ltz v13, :cond_0

    .line 114
    .line 115
    move/from16 v25, v14

    .line 116
    .line 117
    move/from16 p1, v15

    .line 118
    .line 119
    const/4 v5, 0x0

    .line 120
    :goto_2
    aget-wide v14, v7, v5

    .line 121
    .line 122
    move-wide/from16 v26, v8

    .line 123
    .line 124
    move-object v9, v7

    .line 125
    not-long v7, v14

    .line 126
    shl-long v7, v7, v22

    .line 127
    .line 128
    and-long/2addr v7, v14

    .line 129
    and-long v7, v7, v20

    .line 130
    .line 131
    cmp-long v7, v7, v20

    .line 132
    .line 133
    if-eqz v7, :cond_4

    .line 134
    .line 135
    sub-int v7, v5, v13

    .line 136
    .line 137
    not-int v7, v7

    .line 138
    ushr-int/lit8 v7, v7, 0x1f

    .line 139
    .line 140
    rsub-int/lit8 v7, v7, 0x8

    .line 141
    .line 142
    const/4 v8, 0x0

    .line 143
    :goto_3
    if-ge v8, v7, :cond_3

    .line 144
    .line 145
    and-long v28, v14, v18

    .line 146
    .line 147
    cmp-long v28, v28, v16

    .line 148
    .line 149
    if-gez v28, :cond_2

    .line 150
    .line 151
    shl-int/lit8 v28, v5, 0x3

    .line 152
    .line 153
    add-int v28, v28, v8

    .line 154
    .line 155
    aget-object v28, v12, v28

    .line 156
    .line 157
    move-object/from16 v29, v1

    .line 158
    .line 159
    move-object/from16 v1, v28

    .line 160
    .line 161
    check-cast v1, Los0;

    .line 162
    .line 163
    invoke-virtual {v0, v1, v2}, Lec0;->b(Ljava/lang/Object;Z)V

    .line 164
    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_2
    move-object/from16 v29, v1

    .line 168
    .line 169
    :goto_4
    shr-long v14, v14, v25

    .line 170
    .line 171
    add-int/lit8 v8, v8, 0x1

    .line 172
    .line 173
    move-object/from16 v1, v29

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_3
    move-object/from16 v29, v1

    .line 177
    .line 178
    move/from16 v1, v25

    .line 179
    .line 180
    if-ne v7, v1, :cond_6

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_4
    move-object/from16 v29, v1

    .line 184
    .line 185
    :goto_5
    if-eq v5, v13, :cond_6

    .line 186
    .line 187
    add-int/lit8 v5, v5, 0x1

    .line 188
    .line 189
    move-object v7, v9

    .line 190
    move-wide/from16 v8, v26

    .line 191
    .line 192
    move-object/from16 v1, v29

    .line 193
    .line 194
    const/16 v25, 0x8

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_5
    move-object/from16 v29, v1

    .line 198
    .line 199
    move-wide/from16 v26, v8

    .line 200
    .line 201
    move/from16 p1, v15

    .line 202
    .line 203
    check-cast v7, Los0;

    .line 204
    .line 205
    invoke-virtual {v0, v7, v2}, Lec0;->b(Ljava/lang/Object;Z)V

    .line 206
    .line 207
    .line 208
    :cond_6
    :goto_6
    const/16 v1, 0x8

    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_7
    move-object/from16 v29, v1

    .line 212
    .line 213
    move/from16 v22, v7

    .line 214
    .line 215
    move-wide/from16 v26, v8

    .line 216
    .line 217
    move/from16 p1, v15

    .line 218
    .line 219
    move v1, v14

    .line 220
    :goto_7
    shr-long v8, v26, v1

    .line 221
    .line 222
    add-int/lit8 v11, v11, 0x1

    .line 223
    .line 224
    move/from16 v15, p1

    .line 225
    .line 226
    move v14, v1

    .line 227
    move/from16 v7, v22

    .line 228
    .line 229
    move-object/from16 v1, v29

    .line 230
    .line 231
    const/4 v5, 0x0

    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :cond_8
    move-object/from16 v29, v1

    .line 235
    .line 236
    move/from16 v22, v7

    .line 237
    .line 238
    move v1, v14

    .line 239
    move/from16 p1, v15

    .line 240
    .line 241
    if-ne v10, v1, :cond_12

    .line 242
    .line 243
    move/from16 v15, p1

    .line 244
    .line 245
    goto :goto_8

    .line 246
    :cond_9
    move-object/from16 v29, v1

    .line 247
    .line 248
    move/from16 v22, v7

    .line 249
    .line 250
    :goto_8
    if-eq v6, v15, :cond_12

    .line 251
    .line 252
    add-int/lit8 v6, v6, 0x1

    .line 253
    .line 254
    move-object/from16 v1, v29

    .line 255
    .line 256
    const/4 v5, 0x0

    .line 257
    const/16 v14, 0x8

    .line 258
    .line 259
    goto/16 :goto_0

    .line 260
    .line 261
    :cond_a
    const-wide/16 v16, 0x80

    .line 262
    .line 263
    const-wide/16 v18, 0xff

    .line 264
    .line 265
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    const/16 v22, 0x7

    .line 271
    .line 272
    goto/16 :goto_c

    .line 273
    .line 274
    :cond_b
    const-wide/16 v16, 0x80

    .line 275
    .line 276
    const-wide/16 v18, 0xff

    .line 277
    .line 278
    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    const/16 v22, 0x7

    .line 284
    .line 285
    check-cast v1, Ljava/lang/Iterable;

    .line 286
    .line 287
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    :cond_c
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    if-eqz v3, :cond_12

    .line 296
    .line 297
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    instance-of v5, v3, Lc33;

    .line 302
    .line 303
    if-eqz v5, :cond_d

    .line 304
    .line 305
    check-cast v3, Lc33;

    .line 306
    .line 307
    const/4 v5, 0x0

    .line 308
    invoke-virtual {v3, v5}, Lc33;->b(Ljava/lang/Object;)Lau1;

    .line 309
    .line 310
    .line 311
    goto :goto_9

    .line 312
    :cond_d
    const/4 v5, 0x0

    .line 313
    invoke-virtual {v0, v3, v2}, Lec0;->b(Ljava/lang/Object;Z)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v4, v3}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    if-eqz v3, :cond_c

    .line 321
    .line 322
    instance-of v6, v3, Llg2;

    .line 323
    .line 324
    if-eqz v6, :cond_11

    .line 325
    .line 326
    check-cast v3, Llg2;

    .line 327
    .line 328
    iget-object v6, v3, Llg2;->b:[Ljava/lang/Object;

    .line 329
    .line 330
    iget-object v3, v3, Llg2;->a:[J

    .line 331
    .line 332
    array-length v7, v3

    .line 333
    add-int/lit8 v7, v7, -0x2

    .line 334
    .line 335
    if-ltz v7, :cond_c

    .line 336
    .line 337
    const/4 v8, 0x0

    .line 338
    :goto_a
    aget-wide v9, v3, v8

    .line 339
    .line 340
    not-long v11, v9

    .line 341
    shl-long v11, v11, v22

    .line 342
    .line 343
    and-long/2addr v11, v9

    .line 344
    and-long v11, v11, v20

    .line 345
    .line 346
    cmp-long v11, v11, v20

    .line 347
    .line 348
    if-eqz v11, :cond_10

    .line 349
    .line 350
    sub-int v11, v8, v7

    .line 351
    .line 352
    not-int v11, v11

    .line 353
    ushr-int/lit8 v11, v11, 0x1f

    .line 354
    .line 355
    const/16 v25, 0x8

    .line 356
    .line 357
    rsub-int/lit8 v14, v11, 0x8

    .line 358
    .line 359
    const/4 v11, 0x0

    .line 360
    :goto_b
    if-ge v11, v14, :cond_f

    .line 361
    .line 362
    and-long v12, v9, v18

    .line 363
    .line 364
    cmp-long v12, v12, v16

    .line 365
    .line 366
    if-gez v12, :cond_e

    .line 367
    .line 368
    shl-int/lit8 v12, v8, 0x3

    .line 369
    .line 370
    add-int/2addr v12, v11

    .line 371
    aget-object v12, v6, v12

    .line 372
    .line 373
    check-cast v12, Los0;

    .line 374
    .line 375
    invoke-virtual {v0, v12, v2}, Lec0;->b(Ljava/lang/Object;Z)V

    .line 376
    .line 377
    .line 378
    :cond_e
    const/16 v12, 0x8

    .line 379
    .line 380
    shr-long/2addr v9, v12

    .line 381
    add-int/lit8 v11, v11, 0x1

    .line 382
    .line 383
    goto :goto_b

    .line 384
    :cond_f
    const/16 v12, 0x8

    .line 385
    .line 386
    if-ne v14, v12, :cond_c

    .line 387
    .line 388
    :cond_10
    if-eq v8, v7, :cond_c

    .line 389
    .line 390
    add-int/lit8 v8, v8, 0x1

    .line 391
    .line 392
    goto :goto_a

    .line 393
    :cond_11
    check-cast v3, Los0;

    .line 394
    .line 395
    invoke-virtual {v0, v3, v2}, Lec0;->b(Ljava/lang/Object;Z)V

    .line 396
    .line 397
    .line 398
    goto :goto_9

    .line 399
    :cond_12
    :goto_c
    iget-object v1, v0, Lec0;->t:Lkg2;

    .line 400
    .line 401
    iget-object v3, v0, Lec0;->u:Llg2;

    .line 402
    .line 403
    if-eqz v2, :cond_22

    .line 404
    .line 405
    iget-object v2, v0, Lec0;->v:Llg2;

    .line 406
    .line 407
    invoke-virtual {v2}, Llg2;->h()Z

    .line 408
    .line 409
    .line 410
    move-result v4

    .line 411
    if-eqz v4, :cond_22

    .line 412
    .line 413
    iget-object v4, v1, Lkg2;->a:[J

    .line 414
    .line 415
    array-length v5, v4

    .line 416
    add-int/lit8 v5, v5, -0x2

    .line 417
    .line 418
    if-ltz v5, :cond_21

    .line 419
    .line 420
    const/4 v6, 0x0

    .line 421
    :goto_d
    aget-wide v7, v4, v6

    .line 422
    .line 423
    not-long v9, v7

    .line 424
    shl-long v9, v9, v22

    .line 425
    .line 426
    and-long/2addr v9, v7

    .line 427
    and-long v9, v9, v20

    .line 428
    .line 429
    cmp-long v9, v9, v20

    .line 430
    .line 431
    if-eqz v9, :cond_20

    .line 432
    .line 433
    sub-int v9, v6, v5

    .line 434
    .line 435
    not-int v9, v9

    .line 436
    ushr-int/lit8 v9, v9, 0x1f

    .line 437
    .line 438
    const/16 v25, 0x8

    .line 439
    .line 440
    rsub-int/lit8 v14, v9, 0x8

    .line 441
    .line 442
    const/4 v9, 0x0

    .line 443
    :goto_e
    if-ge v9, v14, :cond_1f

    .line 444
    .line 445
    and-long v10, v7, v18

    .line 446
    .line 447
    cmp-long v10, v10, v16

    .line 448
    .line 449
    if-gez v10, :cond_1e

    .line 450
    .line 451
    shl-int/lit8 v10, v6, 0x3

    .line 452
    .line 453
    add-int/2addr v10, v9

    .line 454
    iget-object v11, v1, Lkg2;->b:[Ljava/lang/Object;

    .line 455
    .line 456
    aget-object v11, v11, v10

    .line 457
    .line 458
    iget-object v11, v1, Lkg2;->c:[Ljava/lang/Object;

    .line 459
    .line 460
    aget-object v11, v11, v10

    .line 461
    .line 462
    instance-of v12, v11, Llg2;

    .line 463
    .line 464
    if-eqz v12, :cond_1a

    .line 465
    .line 466
    check-cast v11, Llg2;

    .line 467
    .line 468
    iget-object v12, v11, Llg2;->b:[Ljava/lang/Object;

    .line 469
    .line 470
    iget-object v13, v11, Llg2;->a:[J

    .line 471
    .line 472
    array-length v15, v13

    .line 473
    add-int/lit8 v15, v15, -0x2

    .line 474
    .line 475
    if-ltz v15, :cond_18

    .line 476
    .line 477
    move-wide/from16 p1, v7

    .line 478
    .line 479
    const/4 v0, 0x0

    .line 480
    :goto_f
    aget-wide v7, v13, v0

    .line 481
    .line 482
    move-object/from16 v24, v12

    .line 483
    .line 484
    move-object/from16 v26, v13

    .line 485
    .line 486
    not-long v12, v7

    .line 487
    shl-long v12, v12, v22

    .line 488
    .line 489
    and-long/2addr v12, v7

    .line 490
    and-long v12, v12, v20

    .line 491
    .line 492
    cmp-long v12, v12, v20

    .line 493
    .line 494
    if-eqz v12, :cond_17

    .line 495
    .line 496
    sub-int v12, v0, v15

    .line 497
    .line 498
    not-int v12, v12

    .line 499
    ushr-int/lit8 v12, v12, 0x1f

    .line 500
    .line 501
    const/16 v25, 0x8

    .line 502
    .line 503
    rsub-int/lit8 v12, v12, 0x8

    .line 504
    .line 505
    const/4 v13, 0x0

    .line 506
    :goto_10
    if-ge v13, v12, :cond_16

    .line 507
    .line 508
    and-long v27, v7, v18

    .line 509
    .line 510
    cmp-long v27, v27, v16

    .line 511
    .line 512
    if-gez v27, :cond_15

    .line 513
    .line 514
    shl-int/lit8 v27, v0, 0x3

    .line 515
    .line 516
    move-object/from16 v28, v4

    .line 517
    .line 518
    add-int v4, v27, v13

    .line 519
    .line 520
    aget-object v27, v24, v4

    .line 521
    .line 522
    move-wide/from16 v29, v7

    .line 523
    .line 524
    move-object/from16 v7, v27

    .line 525
    .line 526
    check-cast v7, Lc33;

    .line 527
    .line 528
    invoke-virtual {v2, v7}, Llg2;->c(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v8

    .line 532
    if-nez v8, :cond_13

    .line 533
    .line 534
    invoke-virtual {v3, v7}, Llg2;->c(Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    move-result v7

    .line 538
    if-eqz v7, :cond_14

    .line 539
    .line 540
    :cond_13
    invoke-virtual {v11, v4}, Llg2;->m(I)V

    .line 541
    .line 542
    .line 543
    :cond_14
    :goto_11
    const/16 v4, 0x8

    .line 544
    .line 545
    goto :goto_12

    .line 546
    :cond_15
    move-object/from16 v28, v4

    .line 547
    .line 548
    move-wide/from16 v29, v7

    .line 549
    .line 550
    goto :goto_11

    .line 551
    :goto_12
    shr-long v7, v29, v4

    .line 552
    .line 553
    add-int/lit8 v13, v13, 0x1

    .line 554
    .line 555
    move-object/from16 v4, v28

    .line 556
    .line 557
    goto :goto_10

    .line 558
    :cond_16
    move-object/from16 v28, v4

    .line 559
    .line 560
    const/16 v4, 0x8

    .line 561
    .line 562
    if-ne v12, v4, :cond_19

    .line 563
    .line 564
    goto :goto_13

    .line 565
    :cond_17
    move-object/from16 v28, v4

    .line 566
    .line 567
    :goto_13
    if-eq v0, v15, :cond_19

    .line 568
    .line 569
    add-int/lit8 v0, v0, 0x1

    .line 570
    .line 571
    move-object/from16 v12, v24

    .line 572
    .line 573
    move-object/from16 v13, v26

    .line 574
    .line 575
    move-object/from16 v4, v28

    .line 576
    .line 577
    goto :goto_f

    .line 578
    :cond_18
    move-object/from16 v28, v4

    .line 579
    .line 580
    move-wide/from16 p1, v7

    .line 581
    .line 582
    :cond_19
    invoke-virtual {v11}, Llg2;->g()Z

    .line 583
    .line 584
    .line 585
    move-result v0

    .line 586
    goto :goto_15

    .line 587
    :cond_1a
    move-object/from16 v28, v4

    .line 588
    .line 589
    move-wide/from16 p1, v7

    .line 590
    .line 591
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 592
    .line 593
    .line 594
    check-cast v11, Lc33;

    .line 595
    .line 596
    invoke-virtual {v2, v11}, Llg2;->c(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    move-result v0

    .line 600
    if-nez v0, :cond_1c

    .line 601
    .line 602
    invoke-virtual {v3, v11}, Llg2;->c(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    move-result v0

    .line 606
    if-eqz v0, :cond_1b

    .line 607
    .line 608
    goto :goto_14

    .line 609
    :cond_1b
    const/4 v0, 0x0

    .line 610
    goto :goto_15

    .line 611
    :cond_1c
    :goto_14
    const/4 v0, 0x1

    .line 612
    :goto_15
    if-eqz v0, :cond_1d

    .line 613
    .line 614
    invoke-virtual {v1, v10}, Lkg2;->l(I)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    :cond_1d
    :goto_16
    const/16 v4, 0x8

    .line 618
    .line 619
    goto :goto_17

    .line 620
    :cond_1e
    move-object/from16 v28, v4

    .line 621
    .line 622
    move-wide/from16 p1, v7

    .line 623
    .line 624
    goto :goto_16

    .line 625
    :goto_17
    shr-long v7, p1, v4

    .line 626
    .line 627
    add-int/lit8 v9, v9, 0x1

    .line 628
    .line 629
    move-object/from16 v0, p0

    .line 630
    .line 631
    move-object/from16 v4, v28

    .line 632
    .line 633
    goto/16 :goto_e

    .line 634
    .line 635
    :cond_1f
    move-object/from16 v28, v4

    .line 636
    .line 637
    const/16 v4, 0x8

    .line 638
    .line 639
    if-ne v14, v4, :cond_21

    .line 640
    .line 641
    goto :goto_18

    .line 642
    :cond_20
    move-object/from16 v28, v4

    .line 643
    .line 644
    :goto_18
    if-eq v6, v5, :cond_21

    .line 645
    .line 646
    add-int/lit8 v6, v6, 0x1

    .line 647
    .line 648
    move-object/from16 v0, p0

    .line 649
    .line 650
    move-object/from16 v4, v28

    .line 651
    .line 652
    goto/16 :goto_d

    .line 653
    .line 654
    :cond_21
    invoke-virtual {v2}, Llg2;->b()V

    .line 655
    .line 656
    .line 657
    invoke-virtual/range {p0 .. p0}, Lec0;->h()V

    .line 658
    .line 659
    .line 660
    return-void

    .line 661
    :cond_22
    invoke-virtual {v3}, Llg2;->h()Z

    .line 662
    .line 663
    .line 664
    move-result v0

    .line 665
    if-eqz v0, :cond_2f

    .line 666
    .line 667
    iget-object v0, v1, Lkg2;->a:[J

    .line 668
    .line 669
    array-length v2, v0

    .line 670
    add-int/lit8 v2, v2, -0x2

    .line 671
    .line 672
    if-ltz v2, :cond_2e

    .line 673
    .line 674
    const/4 v4, 0x0

    .line 675
    :goto_19
    aget-wide v5, v0, v4

    .line 676
    .line 677
    not-long v7, v5

    .line 678
    shl-long v7, v7, v22

    .line 679
    .line 680
    and-long/2addr v7, v5

    .line 681
    and-long v7, v7, v20

    .line 682
    .line 683
    cmp-long v7, v7, v20

    .line 684
    .line 685
    if-eqz v7, :cond_2d

    .line 686
    .line 687
    sub-int v7, v4, v2

    .line 688
    .line 689
    not-int v7, v7

    .line 690
    ushr-int/lit8 v7, v7, 0x1f

    .line 691
    .line 692
    const/16 v25, 0x8

    .line 693
    .line 694
    rsub-int/lit8 v14, v7, 0x8

    .line 695
    .line 696
    const/4 v7, 0x0

    .line 697
    :goto_1a
    if-ge v7, v14, :cond_2c

    .line 698
    .line 699
    and-long v8, v5, v18

    .line 700
    .line 701
    cmp-long v8, v8, v16

    .line 702
    .line 703
    if-gez v8, :cond_2b

    .line 704
    .line 705
    shl-int/lit8 v8, v4, 0x3

    .line 706
    .line 707
    add-int/2addr v8, v7

    .line 708
    iget-object v9, v1, Lkg2;->b:[Ljava/lang/Object;

    .line 709
    .line 710
    aget-object v9, v9, v8

    .line 711
    .line 712
    iget-object v9, v1, Lkg2;->c:[Ljava/lang/Object;

    .line 713
    .line 714
    aget-object v9, v9, v8

    .line 715
    .line 716
    instance-of v10, v9, Llg2;

    .line 717
    .line 718
    if-eqz v10, :cond_29

    .line 719
    .line 720
    check-cast v9, Llg2;

    .line 721
    .line 722
    iget-object v10, v9, Llg2;->b:[Ljava/lang/Object;

    .line 723
    .line 724
    iget-object v11, v9, Llg2;->a:[J

    .line 725
    .line 726
    array-length v12, v11

    .line 727
    add-int/lit8 v12, v12, -0x2

    .line 728
    .line 729
    if-ltz v12, :cond_27

    .line 730
    .line 731
    move-wide/from16 p1, v5

    .line 732
    .line 733
    const/4 v13, 0x0

    .line 734
    :goto_1b
    aget-wide v5, v11, v13

    .line 735
    .line 736
    move-object v15, v10

    .line 737
    move-object/from16 v24, v11

    .line 738
    .line 739
    not-long v10, v5

    .line 740
    shl-long v10, v10, v22

    .line 741
    .line 742
    and-long/2addr v10, v5

    .line 743
    and-long v10, v10, v20

    .line 744
    .line 745
    cmp-long v10, v10, v20

    .line 746
    .line 747
    if-eqz v10, :cond_26

    .line 748
    .line 749
    sub-int v10, v13, v12

    .line 750
    .line 751
    not-int v10, v10

    .line 752
    ushr-int/lit8 v10, v10, 0x1f

    .line 753
    .line 754
    const/16 v25, 0x8

    .line 755
    .line 756
    rsub-int/lit8 v10, v10, 0x8

    .line 757
    .line 758
    const/4 v11, 0x0

    .line 759
    :goto_1c
    if-ge v11, v10, :cond_25

    .line 760
    .line 761
    and-long v26, v5, v18

    .line 762
    .line 763
    cmp-long v26, v26, v16

    .line 764
    .line 765
    if-gez v26, :cond_24

    .line 766
    .line 767
    shl-int/lit8 v26, v13, 0x3

    .line 768
    .line 769
    move-object/from16 v27, v0

    .line 770
    .line 771
    add-int v0, v26, v11

    .line 772
    .line 773
    aget-object v26, v15, v0

    .line 774
    .line 775
    move-wide/from16 v28, v5

    .line 776
    .line 777
    move-object/from16 v5, v26

    .line 778
    .line 779
    check-cast v5, Lc33;

    .line 780
    .line 781
    invoke-virtual {v3, v5}, Llg2;->c(Ljava/lang/Object;)Z

    .line 782
    .line 783
    .line 784
    move-result v5

    .line 785
    if-eqz v5, :cond_23

    .line 786
    .line 787
    invoke-virtual {v9, v0}, Llg2;->m(I)V

    .line 788
    .line 789
    .line 790
    :cond_23
    :goto_1d
    const/16 v0, 0x8

    .line 791
    .line 792
    goto :goto_1e

    .line 793
    :cond_24
    move-object/from16 v27, v0

    .line 794
    .line 795
    move-wide/from16 v28, v5

    .line 796
    .line 797
    goto :goto_1d

    .line 798
    :goto_1e
    shr-long v5, v28, v0

    .line 799
    .line 800
    add-int/lit8 v11, v11, 0x1

    .line 801
    .line 802
    move-object/from16 v0, v27

    .line 803
    .line 804
    goto :goto_1c

    .line 805
    :cond_25
    move-object/from16 v27, v0

    .line 806
    .line 807
    const/16 v0, 0x8

    .line 808
    .line 809
    if-ne v10, v0, :cond_28

    .line 810
    .line 811
    goto :goto_1f

    .line 812
    :cond_26
    move-object/from16 v27, v0

    .line 813
    .line 814
    :goto_1f
    if-eq v13, v12, :cond_28

    .line 815
    .line 816
    add-int/lit8 v13, v13, 0x1

    .line 817
    .line 818
    move-object v10, v15

    .line 819
    move-object/from16 v11, v24

    .line 820
    .line 821
    move-object/from16 v0, v27

    .line 822
    .line 823
    goto :goto_1b

    .line 824
    :cond_27
    move-object/from16 v27, v0

    .line 825
    .line 826
    move-wide/from16 p1, v5

    .line 827
    .line 828
    :cond_28
    invoke-virtual {v9}, Llg2;->g()Z

    .line 829
    .line 830
    .line 831
    move-result v0

    .line 832
    goto :goto_20

    .line 833
    :cond_29
    move-object/from16 v27, v0

    .line 834
    .line 835
    move-wide/from16 p1, v5

    .line 836
    .line 837
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 838
    .line 839
    .line 840
    check-cast v9, Lc33;

    .line 841
    .line 842
    invoke-virtual {v3, v9}, Llg2;->c(Ljava/lang/Object;)Z

    .line 843
    .line 844
    .line 845
    move-result v0

    .line 846
    :goto_20
    if-eqz v0, :cond_2a

    .line 847
    .line 848
    invoke-virtual {v1, v8}, Lkg2;->l(I)Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    :cond_2a
    :goto_21
    const/16 v0, 0x8

    .line 852
    .line 853
    goto :goto_22

    .line 854
    :cond_2b
    move-object/from16 v27, v0

    .line 855
    .line 856
    move-wide/from16 p1, v5

    .line 857
    .line 858
    goto :goto_21

    .line 859
    :goto_22
    shr-long v5, p1, v0

    .line 860
    .line 861
    add-int/lit8 v7, v7, 0x1

    .line 862
    .line 863
    move-object/from16 v0, v27

    .line 864
    .line 865
    goto/16 :goto_1a

    .line 866
    .line 867
    :cond_2c
    move-object/from16 v27, v0

    .line 868
    .line 869
    const/16 v0, 0x8

    .line 870
    .line 871
    if-ne v14, v0, :cond_2e

    .line 872
    .line 873
    goto :goto_23

    .line 874
    :cond_2d
    move-object/from16 v27, v0

    .line 875
    .line 876
    const/16 v0, 0x8

    .line 877
    .line 878
    :goto_23
    if-eq v4, v2, :cond_2e

    .line 879
    .line 880
    add-int/lit8 v4, v4, 0x1

    .line 881
    .line 882
    move-object/from16 v0, v27

    .line 883
    .line 884
    goto/16 :goto_19

    .line 885
    .line 886
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lec0;->h()V

    .line 887
    .line 888
    .line 889
    invoke-virtual {v3}, Llg2;->b()V

    .line 890
    .line 891
    .line 892
    :cond_2f
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lec0;->q:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lec0;->x:Lk30;

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lec0;->e(Lk30;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lec0;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    :try_start_1
    iget-object v2, p0, Lec0;->r:Lng2;

    .line 16
    .line 17
    iget-object v2, v2, Lng2;->n:Llg2;

    .line 18
    .line 19
    invoke-virtual {v2}, Llg2;->g()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Lec0;->H:Ll53;

    .line 26
    .line 27
    iget-object v3, p0, Lec0;->r:Lng2;

    .line 28
    .line 29
    iget-object v4, p0, Lec0;->I:Lag1;

    .line 30
    .line 31
    invoke-virtual {v4}, Lag1;->y()Lcc0;

    .line 32
    .line 33
    .line 34
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    :try_start_2
    invoke-virtual {v2, v3, v4}, Ll53;->g(Ljava/util/Set;Lcc0;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ll53;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 39
    .line 40
    .line 41
    :try_start_3
    invoke-virtual {v2}, Ll53;->a()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_1
    move-exception v1

    .line 46
    goto :goto_1

    .line 47
    :catchall_2
    move-exception v1

    .line 48
    invoke-virtual {v2}, Ll53;->a()V

    .line 49
    .line 50
    .line 51
    throw v1

    .line 52
    :cond_0
    :goto_0
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Lec0;->a()V

    .line 54
    .line 55
    .line 56
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 57
    :catchall_3
    move-exception p0

    .line 58
    monitor-exit v0

    .line 59
    throw p0
.end method

.method public final e(Lk30;)V
    .locals 33

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lec0;->y:Lk30;

    .line 6
    .line 7
    iget-object v3, v1, Lec0;->I:Lag1;

    .line 8
    .line 9
    invoke-virtual {v3}, Lag1;->y()Lcc0;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iget-object v5, v1, Lec0;->H:Ll53;

    .line 14
    .line 15
    iget-object v6, v1, Lec0;->r:Lng2;

    .line 16
    .line 17
    invoke-virtual {v5, v6, v4}, Ll53;->g(Ljava/util/Set;Lcc0;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object v4, v0, Lk30;->a:Lbr2;

    .line 21
    .line 22
    invoke-virtual {v4}, Lbr2;->R0()Z

    .line 23
    .line 24
    .line 25
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    :try_start_1
    iget-object v0, v2, Lk30;->a:Lbr2;

    .line 29
    .line 30
    invoke-virtual {v0}, Lbr2;->R0()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, v1, Lec0;->D:Lzt2;

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {v5}, Ll53;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ll53;->a()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :goto_1
    invoke-virtual {v5}, Ll53;->a()V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_1
    :try_start_2
    iget-object v4, v1, Lec0;->D:Lzt2;

    .line 55
    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    iget-object v6, v4, Lzt2;->l:Li33;

    .line 59
    .line 60
    if-eqz v6, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catchall_1
    move-exception v0

    .line 64
    move-object/from16 v26, v5

    .line 65
    .line 66
    goto/16 :goto_13

    .line 67
    .line 68
    :cond_2
    iget-object v6, v1, Lec0;->o:Lg64;

    .line 69
    .line 70
    :goto_2
    if-eqz v4, :cond_3

    .line 71
    .line 72
    iget-object v4, v4, Lzt2;->l:Li33;

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    const/4 v4, 0x0

    .line 76
    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_4

    .line 81
    .line 82
    const-string v4, "Compose:recordChanges"

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_4
    const-string v4, "Compose:applyChanges"

    .line 86
    .line 87
    :goto_4
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    .line 89
    .line 90
    :try_start_3
    iget-object v4, v1, Lec0;->D:Lzt2;

    .line 91
    .line 92
    if-eqz v4, :cond_5

    .line 93
    .line 94
    iget-object v4, v4, Lzt2;->k:Ll53;

    .line 95
    .line 96
    if-nez v4, :cond_6

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :catchall_2
    move-exception v0

    .line 100
    move-object/from16 v26, v5

    .line 101
    .line 102
    goto/16 :goto_12

    .line 103
    .line 104
    :cond_5
    :goto_5
    move-object v4, v5

    .line 105
    :cond_6
    iget-object v7, v1, Lec0;->s:Lun3;

    .line 106
    .line 107
    invoke-virtual {v3}, Lag1;->y()Lcc0;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-static {v7}, Lwn3;->d(Lun3;)Lun3;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v7}, Lun3;->f()Lxn3;

    .line 116
    .line 117
    .line 118
    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 119
    const/4 v8, 0x0

    .line 120
    :try_start_4
    invoke-virtual {v0, v6, v7, v4, v3}, Lk30;->p(Lkh;Lxn3;Ll53;Lar2;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 121
    .line 122
    .line 123
    const/4 v0, 0x1

    .line 124
    :try_start_5
    invoke-virtual {v7, v0}, Lxn3;->e(Z)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v6}, Lkh;->g()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 128
    .line 129
    .line 130
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5}, Ll53;->c()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5}, Ll53;->d()V

    .line 137
    .line 138
    .line 139
    iget-boolean v3, v1, Lec0;->B:Z

    .line 140
    .line 141
    if-eqz v3, :cond_15

    .line 142
    .line 143
    const-string v3, "Compose:unobserve"

    .line 144
    .line 145
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 146
    .line 147
    .line 148
    :try_start_7
    iput-boolean v8, v1, Lec0;->B:Z

    .line 149
    .line 150
    iget-object v3, v1, Lec0;->t:Lkg2;

    .line 151
    .line 152
    iget-object v4, v3, Lkg2;->a:[J

    .line 153
    .line 154
    array-length v6, v4

    .line 155
    add-int/lit8 v6, v6, -0x2

    .line 156
    .line 157
    if-ltz v6, :cond_13

    .line 158
    .line 159
    move v7, v8

    .line 160
    :goto_6
    aget-wide v9, v4, v7

    .line 161
    .line 162
    not-long v11, v9

    .line 163
    const/4 v13, 0x7

    .line 164
    shl-long/2addr v11, v13

    .line 165
    and-long/2addr v11, v9

    .line 166
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    and-long/2addr v11, v14

    .line 172
    cmp-long v11, v11, v14

    .line 173
    .line 174
    if-eqz v11, :cond_12

    .line 175
    .line 176
    sub-int v11, v7, v6

    .line 177
    .line 178
    not-int v11, v11

    .line 179
    ushr-int/lit8 v11, v11, 0x1f

    .line 180
    .line 181
    const/16 v12, 0x8

    .line 182
    .line 183
    rsub-int/lit8 v11, v11, 0x8

    .line 184
    .line 185
    move v0, v8

    .line 186
    :goto_7
    if-ge v0, v11, :cond_11

    .line 187
    .line 188
    const-wide/16 v16, 0xff

    .line 189
    .line 190
    and-long v18, v9, v16

    .line 191
    .line 192
    const-wide/16 v20, 0x80

    .line 193
    .line 194
    cmp-long v18, v18, v20

    .line 195
    .line 196
    if-gez v18, :cond_10

    .line 197
    .line 198
    shl-int/lit8 v18, v7, 0x3

    .line 199
    .line 200
    move/from16 v19, v13

    .line 201
    .line 202
    add-int v13, v18, v0

    .line 203
    .line 204
    move-wide/from16 v22, v14

    .line 205
    .line 206
    iget-object v14, v3, Lkg2;->b:[Ljava/lang/Object;

    .line 207
    .line 208
    aget-object v14, v14, v13

    .line 209
    .line 210
    iget-object v14, v3, Lkg2;->c:[Ljava/lang/Object;

    .line 211
    .line 212
    aget-object v14, v14, v13

    .line 213
    .line 214
    instance-of v15, v14, Llg2;

    .line 215
    .line 216
    if-eqz v15, :cond_d

    .line 217
    .line 218
    check-cast v14, Llg2;

    .line 219
    .line 220
    iget-object v15, v14, Llg2;->b:[Ljava/lang/Object;

    .line 221
    .line 222
    iget-object v8, v14, Llg2;->a:[J

    .line 223
    .line 224
    move/from16 v24, v12

    .line 225
    .line 226
    array-length v12, v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 227
    add-int/lit8 v12, v12, -0x2

    .line 228
    .line 229
    move/from16 v25, v0

    .line 230
    .line 231
    move-object/from16 v27, v4

    .line 232
    .line 233
    move-object/from16 v26, v5

    .line 234
    .line 235
    if-ltz v12, :cond_b

    .line 236
    .line 237
    const/4 v0, 0x0

    .line 238
    :goto_8
    :try_start_8
    aget-wide v4, v8, v0

    .line 239
    .line 240
    move-wide/from16 v28, v9

    .line 241
    .line 242
    move-object v10, v8

    .line 243
    not-long v8, v4

    .line 244
    shl-long v8, v8, v19

    .line 245
    .line 246
    and-long/2addr v8, v4

    .line 247
    and-long v8, v8, v22

    .line 248
    .line 249
    cmp-long v8, v8, v22

    .line 250
    .line 251
    if-eqz v8, :cond_a

    .line 252
    .line 253
    sub-int v8, v0, v12

    .line 254
    .line 255
    not-int v8, v8

    .line 256
    ushr-int/lit8 v8, v8, 0x1f

    .line 257
    .line 258
    rsub-int/lit8 v8, v8, 0x8

    .line 259
    .line 260
    const/4 v9, 0x0

    .line 261
    :goto_9
    if-ge v9, v8, :cond_9

    .line 262
    .line 263
    and-long v30, v4, v16

    .line 264
    .line 265
    cmp-long v30, v30, v20

    .line 266
    .line 267
    if-gez v30, :cond_7

    .line 268
    .line 269
    shl-int/lit8 v30, v0, 0x3

    .line 270
    .line 271
    move-wide/from16 v31, v4

    .line 272
    .line 273
    add-int v4, v30, v9

    .line 274
    .line 275
    aget-object v5, v15, v4

    .line 276
    .line 277
    check-cast v5, Lc33;

    .line 278
    .line 279
    invoke-virtual {v5}, Lc33;->a()Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    if-nez v5, :cond_8

    .line 284
    .line 285
    invoke-virtual {v14, v4}, Llg2;->m(I)V

    .line 286
    .line 287
    .line 288
    goto :goto_a

    .line 289
    :catchall_3
    move-exception v0

    .line 290
    goto/16 :goto_e

    .line 291
    .line 292
    :cond_7
    move-wide/from16 v31, v4

    .line 293
    .line 294
    :cond_8
    :goto_a
    shr-long v4, v31, v24

    .line 295
    .line 296
    add-int/lit8 v9, v9, 0x1

    .line 297
    .line 298
    goto :goto_9

    .line 299
    :cond_9
    move/from16 v4, v24

    .line 300
    .line 301
    if-ne v8, v4, :cond_c

    .line 302
    .line 303
    :cond_a
    if-eq v0, v12, :cond_c

    .line 304
    .line 305
    add-int/lit8 v0, v0, 0x1

    .line 306
    .line 307
    move-object v8, v10

    .line 308
    move-wide/from16 v9, v28

    .line 309
    .line 310
    const/16 v24, 0x8

    .line 311
    .line 312
    goto :goto_8

    .line 313
    :cond_b
    move-wide/from16 v28, v9

    .line 314
    .line 315
    :cond_c
    invoke-virtual {v14}, Llg2;->g()Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    goto :goto_b

    .line 320
    :catchall_4
    move-exception v0

    .line 321
    move-object/from16 v26, v5

    .line 322
    .line 323
    goto/16 :goto_e

    .line 324
    .line 325
    :cond_d
    move/from16 v25, v0

    .line 326
    .line 327
    move-object/from16 v27, v4

    .line 328
    .line 329
    move-object/from16 v26, v5

    .line 330
    .line 331
    move-wide/from16 v28, v9

    .line 332
    .line 333
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    check-cast v14, Lc33;

    .line 337
    .line 338
    invoke-virtual {v14}, Lc33;->a()Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-nez v0, :cond_e

    .line 343
    .line 344
    const/4 v0, 0x1

    .line 345
    goto :goto_b

    .line 346
    :cond_e
    const/4 v0, 0x0

    .line 347
    :goto_b
    if-eqz v0, :cond_f

    .line 348
    .line 349
    invoke-virtual {v3, v13}, Lkg2;->l(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    :cond_f
    const/16 v4, 0x8

    .line 353
    .line 354
    goto :goto_c

    .line 355
    :cond_10
    move/from16 v25, v0

    .line 356
    .line 357
    move-object/from16 v27, v4

    .line 358
    .line 359
    move-object/from16 v26, v5

    .line 360
    .line 361
    move-wide/from16 v28, v9

    .line 362
    .line 363
    move/from16 v19, v13

    .line 364
    .line 365
    move-wide/from16 v22, v14

    .line 366
    .line 367
    move v4, v12

    .line 368
    :goto_c
    shr-long v9, v28, v4

    .line 369
    .line 370
    add-int/lit8 v0, v25, 0x1

    .line 371
    .line 372
    move v12, v4

    .line 373
    move/from16 v13, v19

    .line 374
    .line 375
    move-wide/from16 v14, v22

    .line 376
    .line 377
    move-object/from16 v5, v26

    .line 378
    .line 379
    move-object/from16 v4, v27

    .line 380
    .line 381
    const/4 v8, 0x0

    .line 382
    goto/16 :goto_7

    .line 383
    .line 384
    :cond_11
    move-object/from16 v27, v4

    .line 385
    .line 386
    move-object/from16 v26, v5

    .line 387
    .line 388
    move v4, v12

    .line 389
    if-ne v11, v4, :cond_14

    .line 390
    .line 391
    goto :goto_d

    .line 392
    :cond_12
    move-object/from16 v27, v4

    .line 393
    .line 394
    move-object/from16 v26, v5

    .line 395
    .line 396
    :goto_d
    if-eq v7, v6, :cond_14

    .line 397
    .line 398
    add-int/lit8 v7, v7, 0x1

    .line 399
    .line 400
    move-object/from16 v5, v26

    .line 401
    .line 402
    move-object/from16 v4, v27

    .line 403
    .line 404
    const/4 v0, 0x1

    .line 405
    const/4 v8, 0x0

    .line 406
    goto/16 :goto_6

    .line 407
    .line 408
    :cond_13
    move-object/from16 v26, v5

    .line 409
    .line 410
    :cond_14
    invoke-virtual {v1}, Lec0;->h()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 411
    .line 412
    .line 413
    :try_start_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 414
    .line 415
    .line 416
    goto :goto_f

    .line 417
    :catchall_5
    move-exception v0

    .line 418
    goto :goto_13

    .line 419
    :goto_e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 420
    .line 421
    .line 422
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 423
    :cond_15
    move-object/from16 v26, v5

    .line 424
    .line 425
    :goto_f
    :try_start_a
    iget-object v0, v2, Lk30;->a:Lbr2;

    .line 426
    .line 427
    invoke-virtual {v0}, Lbr2;->R0()Z

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-eqz v0, :cond_16

    .line 432
    .line 433
    iget-object v0, v1, Lec0;->D:Lzt2;

    .line 434
    .line 435
    if-nez v0, :cond_16

    .line 436
    .line 437
    invoke-virtual/range {v26 .. v26}, Ll53;->b()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 438
    .line 439
    .line 440
    goto :goto_10

    .line 441
    :catchall_6
    move-exception v0

    .line 442
    goto :goto_11

    .line 443
    :cond_16
    :goto_10
    invoke-virtual/range {v26 .. v26}, Ll53;->a()V

    .line 444
    .line 445
    .line 446
    return-void

    .line 447
    :goto_11
    invoke-virtual/range {v26 .. v26}, Ll53;->a()V

    .line 448
    .line 449
    .line 450
    throw v0

    .line 451
    :catchall_7
    move-exception v0

    .line 452
    move-object/from16 v26, v5

    .line 453
    .line 454
    const/4 v3, 0x0

    .line 455
    :try_start_b
    invoke-virtual {v7, v3}, Lxn3;->e(Z)V

    .line 456
    .line 457
    .line 458
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 459
    :catchall_8
    move-exception v0

    .line 460
    :goto_12
    :try_start_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 461
    .line 462
    .line 463
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 464
    :goto_13
    :try_start_d
    iget-object v2, v2, Lk30;->a:Lbr2;

    .line 465
    .line 466
    invoke-virtual {v2}, Lbr2;->R0()Z

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    if-eqz v2, :cond_17

    .line 471
    .line 472
    iget-object v1, v1, Lec0;->D:Lzt2;

    .line 473
    .line 474
    if-nez v1, :cond_17

    .line 475
    .line 476
    invoke-virtual/range {v26 .. v26}, Ll53;->b()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 477
    .line 478
    .line 479
    goto :goto_14

    .line 480
    :catchall_9
    move-exception v0

    .line 481
    goto :goto_15

    .line 482
    :cond_17
    :goto_14
    invoke-virtual/range {v26 .. v26}, Ll53;->a()V

    .line 483
    .line 484
    .line 485
    throw v0

    .line 486
    :goto_15
    invoke-virtual/range {v26 .. v26}, Ll53;->a()V

    .line 487
    .line 488
    .line 489
    throw v0
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lec0;->q:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lec0;->y:Lk30;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v1, v1, Lk30;->a:Lbr2;

    .line 10
    .line 11
    invoke-virtual {v1}, Lbr2;->R0()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lec0;->y:Lk30;

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lec0;->e(Lk30;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_1
    :try_start_1
    iget-object v2, p0, Lec0;->r:Lng2;

    .line 28
    .line 29
    iget-object v2, v2, Lng2;->n:Llg2;

    .line 30
    .line 31
    invoke-virtual {v2}, Llg2;->g()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    iget-object v2, p0, Lec0;->H:Ll53;

    .line 38
    .line 39
    iget-object v3, p0, Lec0;->r:Lng2;

    .line 40
    .line 41
    iget-object v4, p0, Lec0;->I:Lag1;

    .line 42
    .line 43
    invoke-virtual {v4}, Lag1;->y()Lcc0;

    .line 44
    .line 45
    .line 46
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    :try_start_2
    invoke-virtual {v2, v3, v4}, Ll53;->g(Ljava/util/Set;Lcc0;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ll53;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 51
    .line 52
    .line 53
    :try_start_3
    invoke-virtual {v2}, Ll53;->a()V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catchall_1
    move-exception v1

    .line 58
    goto :goto_3

    .line 59
    :catchall_2
    move-exception v1

    .line 60
    invoke-virtual {v2}, Ll53;->a()V

    .line 61
    .line 62
    .line 63
    throw v1

    .line 64
    :cond_1
    :goto_2
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lec0;->a()V

    .line 66
    .line 67
    .line 68
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 69
    :catchall_3
    move-exception p0

    .line 70
    monitor-exit v0

    .line 71
    throw p0
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lec0;->q:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lec0;->I:Lag1;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iput-object v2, v1, Lag1;->v:Ltf2;

    .line 8
    .line 9
    iget-object v1, p0, Lec0;->r:Lng2;

    .line 10
    .line 11
    iget-object v1, v1, Lng2;->n:Llg2;

    .line 12
    .line 13
    invoke-virtual {v1}, Llg2;->g()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lec0;->H:Ll53;

    .line 20
    .line 21
    iget-object v2, p0, Lec0;->r:Lng2;

    .line 22
    .line 23
    iget-object v3, p0, Lec0;->I:Lag1;

    .line 24
    .line 25
    invoke-virtual {v3}, Lag1;->y()Lcc0;

    .line 26
    .line 27
    .line 28
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    invoke-virtual {v1, v2, v3}, Ll53;->g(Ljava/util/Set;Lcc0;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ll53;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    .line 35
    :try_start_2
    invoke-virtual {v1}, Ll53;->a()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    goto :goto_1

    .line 41
    :catchall_1
    move-exception v2

    .line 42
    invoke-virtual {v1}, Ll53;->a()V

    .line 43
    .line 44
    .line 45
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :cond_0
    :goto_0
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :goto_1
    :try_start_3
    iget-object v2, p0, Lec0;->r:Lng2;

    .line 49
    .line 50
    iget-object v2, v2, Lng2;->n:Llg2;

    .line 51
    .line 52
    invoke-virtual {v2}, Llg2;->g()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_1

    .line 57
    .line 58
    iget-object v2, p0, Lec0;->H:Ll53;

    .line 59
    .line 60
    iget-object v3, p0, Lec0;->r:Lng2;

    .line 61
    .line 62
    iget-object v4, p0, Lec0;->I:Lag1;

    .line 63
    .line 64
    invoke-virtual {v4}, Lag1;->y()Lcc0;

    .line 65
    .line 66
    .line 67
    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 68
    :try_start_4
    invoke-virtual {v2, v3, v4}, Ll53;->g(Ljava/util/Set;Lcc0;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ll53;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 72
    .line 73
    .line 74
    :try_start_5
    invoke-virtual {v2}, Ll53;->a()V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catchall_2
    move-exception v1

    .line 79
    goto :goto_3

    .line 80
    :catchall_3
    move-exception v1

    .line 81
    invoke-virtual {v2}, Ll53;->a()V

    .line 82
    .line 83
    .line 84
    throw v1

    .line 85
    :cond_1
    :goto_2
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 86
    :goto_3
    :try_start_6
    invoke-virtual {p0}, Lec0;->a()V

    .line 87
    .line 88
    .line 89
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 90
    :catchall_4
    move-exception p0

    .line 91
    monitor-exit v0

    .line 92
    throw p0
.end method

.method public final h()V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lec0;->w:Lkg2;

    .line 4
    .line 5
    iget-object v2, v1, Lkg2;->a:[J

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    add-int/lit8 v3, v3, -0x2

    .line 9
    .line 10
    const-wide/16 v6, 0xff

    .line 11
    .line 12
    const/4 v8, 0x7

    .line 13
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const/16 v11, 0x8

    .line 19
    .line 20
    if-ltz v3, :cond_c

    .line 21
    .line 22
    const/4 v13, 0x0

    .line 23
    :goto_0
    aget-wide v14, v2, v13

    .line 24
    .line 25
    const-wide/16 v16, 0x80

    .line 26
    .line 27
    not-long v4, v14

    .line 28
    shl-long/2addr v4, v8

    .line 29
    and-long/2addr v4, v14

    .line 30
    and-long/2addr v4, v9

    .line 31
    cmp-long v4, v4, v9

    .line 32
    .line 33
    if-eqz v4, :cond_b

    .line 34
    .line 35
    sub-int v4, v13, v3

    .line 36
    .line 37
    not-int v4, v4

    .line 38
    ushr-int/lit8 v4, v4, 0x1f

    .line 39
    .line 40
    rsub-int/lit8 v4, v4, 0x8

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    :goto_1
    if-ge v5, v4, :cond_a

    .line 44
    .line 45
    and-long v18, v14, v6

    .line 46
    .line 47
    cmp-long v18, v18, v16

    .line 48
    .line 49
    if-gez v18, :cond_9

    .line 50
    .line 51
    shl-int/lit8 v18, v13, 0x3

    .line 52
    .line 53
    move-wide/from16 v19, v6

    .line 54
    .line 55
    add-int v6, v18, v5

    .line 56
    .line 57
    iget-object v7, v1, Lkg2;->b:[Ljava/lang/Object;

    .line 58
    .line 59
    aget-object v7, v7, v6

    .line 60
    .line 61
    iget-object v7, v1, Lkg2;->c:[Ljava/lang/Object;

    .line 62
    .line 63
    aget-object v7, v7, v6

    .line 64
    .line 65
    move/from16 v18, v8

    .line 66
    .line 67
    instance-of v8, v7, Llg2;

    .line 68
    .line 69
    move-wide/from16 v21, v9

    .line 70
    .line 71
    iget-object v9, v0, Lec0;->t:Lkg2;

    .line 72
    .line 73
    if-eqz v8, :cond_6

    .line 74
    .line 75
    check-cast v7, Llg2;

    .line 76
    .line 77
    iget-object v8, v7, Llg2;->b:[Ljava/lang/Object;

    .line 78
    .line 79
    iget-object v10, v7, Llg2;->a:[J

    .line 80
    .line 81
    array-length v12, v10

    .line 82
    add-int/lit8 v12, v12, -0x2

    .line 83
    .line 84
    if-ltz v12, :cond_4

    .line 85
    .line 86
    move/from16 v23, v11

    .line 87
    .line 88
    move-wide/from16 v24, v14

    .line 89
    .line 90
    const/4 v11, 0x0

    .line 91
    :goto_2
    aget-wide v14, v10, v11

    .line 92
    .line 93
    move-object/from16 v26, v2

    .line 94
    .line 95
    move/from16 v27, v3

    .line 96
    .line 97
    not-long v2, v14

    .line 98
    shl-long v2, v2, v18

    .line 99
    .line 100
    and-long/2addr v2, v14

    .line 101
    and-long v2, v2, v21

    .line 102
    .line 103
    cmp-long v2, v2, v21

    .line 104
    .line 105
    if-eqz v2, :cond_3

    .line 106
    .line 107
    sub-int v2, v11, v12

    .line 108
    .line 109
    not-int v2, v2

    .line 110
    ushr-int/lit8 v2, v2, 0x1f

    .line 111
    .line 112
    rsub-int/lit8 v2, v2, 0x8

    .line 113
    .line 114
    const/4 v3, 0x0

    .line 115
    :goto_3
    if-ge v3, v2, :cond_2

    .line 116
    .line 117
    and-long v28, v14, v19

    .line 118
    .line 119
    cmp-long v28, v28, v16

    .line 120
    .line 121
    if-gez v28, :cond_0

    .line 122
    .line 123
    shl-int/lit8 v28, v11, 0x3

    .line 124
    .line 125
    move/from16 v29, v3

    .line 126
    .line 127
    add-int v3, v28, v29

    .line 128
    .line 129
    aget-object v28, v8, v3

    .line 130
    .line 131
    move/from16 v30, v5

    .line 132
    .line 133
    move-object/from16 v5, v28

    .line 134
    .line 135
    check-cast v5, Los0;

    .line 136
    .line 137
    invoke-virtual {v9, v5}, Lkg2;->c(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-nez v5, :cond_1

    .line 142
    .line 143
    invoke-virtual {v7, v3}, Llg2;->m(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_0
    move/from16 v29, v3

    .line 148
    .line 149
    move/from16 v30, v5

    .line 150
    .line 151
    :cond_1
    :goto_4
    shr-long v14, v14, v23

    .line 152
    .line 153
    add-int/lit8 v3, v29, 0x1

    .line 154
    .line 155
    move/from16 v5, v30

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_2
    move/from16 v30, v5

    .line 159
    .line 160
    move/from16 v3, v23

    .line 161
    .line 162
    if-ne v2, v3, :cond_5

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_3
    move/from16 v30, v5

    .line 166
    .line 167
    :goto_5
    if-eq v11, v12, :cond_5

    .line 168
    .line 169
    add-int/lit8 v11, v11, 0x1

    .line 170
    .line 171
    move-object/from16 v2, v26

    .line 172
    .line 173
    move/from16 v3, v27

    .line 174
    .line 175
    move/from16 v5, v30

    .line 176
    .line 177
    const/16 v23, 0x8

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_4
    move-object/from16 v26, v2

    .line 181
    .line 182
    move/from16 v27, v3

    .line 183
    .line 184
    move/from16 v30, v5

    .line 185
    .line 186
    move-wide/from16 v24, v14

    .line 187
    .line 188
    :cond_5
    invoke-virtual {v7}, Llg2;->g()Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    goto :goto_6

    .line 193
    :cond_6
    move-object/from16 v26, v2

    .line 194
    .line 195
    move/from16 v27, v3

    .line 196
    .line 197
    move/from16 v30, v5

    .line 198
    .line 199
    move-wide/from16 v24, v14

    .line 200
    .line 201
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    check-cast v7, Los0;

    .line 205
    .line 206
    invoke-virtual {v9, v7}, Lkg2;->c(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-nez v2, :cond_7

    .line 211
    .line 212
    const/4 v2, 0x1

    .line 213
    goto :goto_6

    .line 214
    :cond_7
    const/4 v2, 0x0

    .line 215
    :goto_6
    if-eqz v2, :cond_8

    .line 216
    .line 217
    invoke-virtual {v1, v6}, Lkg2;->l(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    :cond_8
    const/16 v3, 0x8

    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_9
    move-object/from16 v26, v2

    .line 224
    .line 225
    move/from16 v27, v3

    .line 226
    .line 227
    move/from16 v30, v5

    .line 228
    .line 229
    move-wide/from16 v19, v6

    .line 230
    .line 231
    move/from16 v18, v8

    .line 232
    .line 233
    move-wide/from16 v21, v9

    .line 234
    .line 235
    move-wide/from16 v24, v14

    .line 236
    .line 237
    move v3, v11

    .line 238
    :goto_7
    shr-long v14, v24, v3

    .line 239
    .line 240
    add-int/lit8 v5, v30, 0x1

    .line 241
    .line 242
    move v11, v3

    .line 243
    move/from16 v8, v18

    .line 244
    .line 245
    move-wide/from16 v6, v19

    .line 246
    .line 247
    move-wide/from16 v9, v21

    .line 248
    .line 249
    move-object/from16 v2, v26

    .line 250
    .line 251
    move/from16 v3, v27

    .line 252
    .line 253
    goto/16 :goto_1

    .line 254
    .line 255
    :cond_a
    move-object/from16 v26, v2

    .line 256
    .line 257
    move/from16 v27, v3

    .line 258
    .line 259
    move-wide/from16 v19, v6

    .line 260
    .line 261
    move/from16 v18, v8

    .line 262
    .line 263
    move-wide/from16 v21, v9

    .line 264
    .line 265
    move v3, v11

    .line 266
    if-ne v4, v3, :cond_d

    .line 267
    .line 268
    move/from16 v3, v27

    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_b
    move-object/from16 v26, v2

    .line 272
    .line 273
    move-wide/from16 v19, v6

    .line 274
    .line 275
    move/from16 v18, v8

    .line 276
    .line 277
    move-wide/from16 v21, v9

    .line 278
    .line 279
    :goto_8
    if-eq v13, v3, :cond_d

    .line 280
    .line 281
    add-int/lit8 v13, v13, 0x1

    .line 282
    .line 283
    move/from16 v8, v18

    .line 284
    .line 285
    move-wide/from16 v6, v19

    .line 286
    .line 287
    move-wide/from16 v9, v21

    .line 288
    .line 289
    move-object/from16 v2, v26

    .line 290
    .line 291
    const/16 v11, 0x8

    .line 292
    .line 293
    goto/16 :goto_0

    .line 294
    .line 295
    :cond_c
    move-wide/from16 v19, v6

    .line 296
    .line 297
    move/from16 v18, v8

    .line 298
    .line 299
    move-wide/from16 v21, v9

    .line 300
    .line 301
    const-wide/16 v16, 0x80

    .line 302
    .line 303
    :cond_d
    iget-object v0, v0, Lec0;->v:Llg2;

    .line 304
    .line 305
    invoke-virtual {v0}, Llg2;->h()Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-eqz v1, :cond_12

    .line 310
    .line 311
    iget-object v1, v0, Llg2;->b:[Ljava/lang/Object;

    .line 312
    .line 313
    iget-object v2, v0, Llg2;->a:[J

    .line 314
    .line 315
    array-length v3, v2

    .line 316
    add-int/lit8 v3, v3, -0x2

    .line 317
    .line 318
    if-ltz v3, :cond_12

    .line 319
    .line 320
    const/4 v4, 0x0

    .line 321
    :goto_9
    aget-wide v5, v2, v4

    .line 322
    .line 323
    not-long v7, v5

    .line 324
    shl-long v7, v7, v18

    .line 325
    .line 326
    and-long/2addr v7, v5

    .line 327
    and-long v7, v7, v21

    .line 328
    .line 329
    cmp-long v7, v7, v21

    .line 330
    .line 331
    if-eqz v7, :cond_11

    .line 332
    .line 333
    sub-int v7, v4, v3

    .line 334
    .line 335
    not-int v7, v7

    .line 336
    ushr-int/lit8 v7, v7, 0x1f

    .line 337
    .line 338
    const/16 v23, 0x8

    .line 339
    .line 340
    rsub-int/lit8 v11, v7, 0x8

    .line 341
    .line 342
    const/4 v7, 0x0

    .line 343
    :goto_a
    if-ge v7, v11, :cond_10

    .line 344
    .line 345
    and-long v8, v5, v19

    .line 346
    .line 347
    cmp-long v8, v8, v16

    .line 348
    .line 349
    if-gez v8, :cond_f

    .line 350
    .line 351
    shl-int/lit8 v8, v4, 0x3

    .line 352
    .line 353
    add-int/2addr v8, v7

    .line 354
    aget-object v9, v1, v8

    .line 355
    .line 356
    check-cast v9, Lc33;

    .line 357
    .line 358
    iget-object v9, v9, Lc33;->g:Lkg2;

    .line 359
    .line 360
    if-eqz v9, :cond_e

    .line 361
    .line 362
    goto :goto_b

    .line 363
    :cond_e
    invoke-virtual {v0, v8}, Llg2;->m(I)V

    .line 364
    .line 365
    .line 366
    :cond_f
    :goto_b
    const/16 v8, 0x8

    .line 367
    .line 368
    shr-long/2addr v5, v8

    .line 369
    add-int/lit8 v7, v7, 0x1

    .line 370
    .line 371
    goto :goto_a

    .line 372
    :cond_10
    const/16 v8, 0x8

    .line 373
    .line 374
    if-ne v11, v8, :cond_12

    .line 375
    .line 376
    goto :goto_c

    .line 377
    :cond_11
    const/16 v8, 0x8

    .line 378
    .line 379
    :goto_c
    if-eq v4, v3, :cond_12

    .line 380
    .line 381
    add-int/lit8 v4, v4, 0x1

    .line 382
    .line 383
    goto :goto_9

    .line 384
    :cond_12
    return-void
.end method

.method public final i()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lec0;->q:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lec0;->J:I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-ne v1, v3, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v2

    .line 12
    :goto_0
    if-eqz v3, :cond_1

    .line 13
    .line 14
    iput v2, p0, Lec0;->J:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_2

    .line 19
    :cond_1
    :goto_1
    monitor-exit v0

    .line 20
    return v3

    .line 21
    :goto_2
    monitor-exit v0

    .line 22
    throw p0
.end method

.method public final j(Ldf1;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lec0;->q:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {p0}, Lec0;->n()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lec0;->A:Lkg2;

    .line 8
    .line 9
    invoke-static {}, Lht4;->k()Lkg2;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iput-object v2, p0, Lec0;->A:Lkg2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 14
    .line 15
    :try_start_2
    iget-object v2, p0, Lec0;->I:Lag1;

    .line 16
    .line 17
    iget-object v3, p0, Lec0;->C:Lsm3;

    .line 18
    .line 19
    iget-object v4, v2, Lag1;->e:Lk30;

    .line 20
    .line 21
    iget-object v4, v4, Lk30;->a:Lbr2;

    .line 22
    .line 23
    invoke-virtual {v4}, Lbr2;->R0()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    const-string v4, "Expected applyChanges() to have been called"

    .line 30
    .line 31
    invoke-static {v4}, Lwb0;->a(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iput-object v3, v2, Lag1;->P:Lsm3;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    :try_start_3
    invoke-virtual {v2, v1, p1}, Lag1;->n(Lkg2;Ldf1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    .line 39
    .line 40
    :try_start_4
    iput-object v3, v2, Lag1;->P:Lsm3;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 41
    .line 42
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_0

    .line 46
    :catchall_1
    move-exception p1

    .line 47
    :try_start_6
    iput-object v3, v2, Lag1;->P:Lsm3;

    .line 48
    .line 49
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 50
    :catchall_2
    move-exception p1

    .line 51
    :try_start_7
    iput-object v1, p0, Lec0;->A:Lkg2;

    .line 52
    .line 53
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 54
    :catchall_3
    move-exception p1

    .line 55
    :try_start_8
    monitor-exit v0

    .line 56
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 57
    :goto_0
    :try_start_9
    iget-object v0, p0, Lec0;->r:Lng2;

    .line 58
    .line 59
    iget-object v0, v0, Lng2;->n:Llg2;

    .line 60
    .line 61
    invoke-virtual {v0}, Llg2;->g()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lec0;->H:Ll53;

    .line 68
    .line 69
    iget-object v1, p0, Lec0;->r:Lng2;

    .line 70
    .line 71
    iget-object v2, p0, Lec0;->I:Lag1;

    .line 72
    .line 73
    invoke-virtual {v2}, Lag1;->y()Lcc0;

    .line 74
    .line 75
    .line 76
    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 77
    :try_start_a
    invoke-virtual {v0, v1, v2}, Ll53;->g(Ljava/util/Set;Lcc0;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ll53;->b()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 81
    .line 82
    .line 83
    :try_start_b
    invoke-virtual {v0}, Ll53;->a()V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catchall_4
    move-exception p1

    .line 88
    goto :goto_2

    .line 89
    :catchall_5
    move-exception p1

    .line 90
    invoke-virtual {v0}, Ll53;->a()V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_1
    :goto_1
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 95
    :goto_2
    invoke-virtual {p0}, Lec0;->a()V

    .line 96
    .line 97
    .line 98
    throw p1
.end method

.method public final k(ZLdf1;)Lzt2;
    .locals 10

    .line 1
    iget-object v0, p0, Lec0;->D:Lzt2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "A pausable composition is in progress"

    .line 7
    .line 8
    invoke-static {v0}, Lix2;->b(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    new-instance v1, Lzt2;

    .line 12
    .line 13
    iget-object v3, p0, Lec0;->n:Lzb0;

    .line 14
    .line 15
    iget-object v4, p0, Lec0;->I:Lag1;

    .line 16
    .line 17
    iget-object v5, p0, Lec0;->r:Lng2;

    .line 18
    .line 19
    iget-object v8, p0, Lec0;->o:Lg64;

    .line 20
    .line 21
    iget-object v9, p0, Lec0;->q:Ljava/lang/Object;

    .line 22
    .line 23
    move-object v2, p0

    .line 24
    move v7, p1

    .line 25
    move-object v6, p2

    .line 26
    invoke-direct/range {v1 .. v9}, Lzt2;-><init>(Lec0;Lzb0;Lag1;Lng2;Ldf1;ZLg64;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, v2, Lec0;->D:Lzt2;

    .line 30
    .line 31
    return-object v1
.end method

.method public final l()V
    .locals 9

    .line 1
    iget-object v0, p0, Lec0;->q:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lec0;->D:Lzt2;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v1, "Deactivate is not supported while pausable composition is in progress"

    .line 10
    .line 11
    invoke-static {v1}, Lix2;->b(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget-object v1, p0, Lec0;->s:Lun3;

    .line 15
    .line 16
    iget v1, v1, Lun3;->o:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    move v1, v3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v1, v2

    .line 25
    :goto_1
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v4, p0, Lec0;->r:Lng2;

    .line 28
    .line 29
    iget-object v4, v4, Lng2;->n:Llg2;

    .line 30
    .line 31
    invoke-virtual {v4}, Llg2;->g()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_4

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto/16 :goto_6

    .line 40
    .line 41
    :cond_2
    :goto_2
    const-string v4, "Compose:deactivate"

    .line 42
    .line 43
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :try_start_1
    iget-object v4, p0, Lec0;->H:Ll53;

    .line 47
    .line 48
    iget-object v5, p0, Lec0;->r:Lng2;

    .line 49
    .line 50
    iget-object v6, p0, Lec0;->I:Lag1;

    .line 51
    .line 52
    invoke-virtual {v6}, Lag1;->y()Lcc0;

    .line 53
    .line 54
    .line 55
    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 56
    :try_start_2
    invoke-virtual {v4, v5, v6}, Ll53;->g(Ljava/util/Set;Lcc0;)V

    .line 57
    .line 58
    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    iget-object v1, p0, Lec0;->s:Lun3;

    .line 62
    .line 63
    iget-object v5, p0, Lec0;->H:Ll53;

    .line 64
    .line 65
    invoke-virtual {v1}, Lun3;->f()Lxn3;

    .line 66
    .line 67
    .line 68
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    :try_start_3
    iget v6, v1, Lxn3;->t:I

    .line 70
    .line 71
    new-instance v7, Ll4;

    .line 72
    .line 73
    const/16 v8, 0x9

    .line 74
    .line 75
    invoke-direct {v7, v8, v5, v1}, Ll4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v6, v7}, Lxn3;->n(ILdf1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 79
    .line 80
    .line 81
    :try_start_4
    invoke-virtual {v1, v3}, Lxn3;->e(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lec0;->o:Lg64;

    .line 85
    .line 86
    invoke-virtual {v1}, Lg64;->g()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Ll53;->c()V

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :catchall_1
    move-exception p0

    .line 94
    goto :goto_4

    .line 95
    :catchall_2
    move-exception p0

    .line 96
    invoke-virtual {v1, v2}, Lxn3;->e(Z)V

    .line 97
    .line 98
    .line 99
    throw p0

    .line 100
    :cond_3
    :goto_3
    invoke-virtual {v4}, Ll53;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 101
    .line 102
    .line 103
    :try_start_5
    invoke-virtual {v4}, Ll53;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 104
    .line 105
    .line 106
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 107
    .line 108
    .line 109
    :cond_4
    iget-object v1, p0, Lec0;->t:Lkg2;

    .line 110
    .line 111
    invoke-virtual {v1}, Lkg2;->a()V

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lec0;->w:Lkg2;

    .line 115
    .line 116
    invoke-virtual {v1}, Lkg2;->a()V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lec0;->A:Lkg2;

    .line 120
    .line 121
    invoke-virtual {v1}, Lkg2;->a()V

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Lec0;->x:Lk30;

    .line 125
    .line 126
    iget-object v1, v1, Lk30;->a:Lbr2;

    .line 127
    .line 128
    invoke-virtual {v1}, Lbr2;->P0()V

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lec0;->y:Lk30;

    .line 132
    .line 133
    iget-object v1, v1, Lk30;->a:Lbr2;

    .line 134
    .line 135
    invoke-virtual {v1}, Lbr2;->P0()V

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lec0;->I:Lag1;

    .line 139
    .line 140
    iget-object v2, v1, Lag1;->E:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 143
    .line 144
    .line 145
    iget-object v2, v1, Lag1;->s:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 148
    .line 149
    .line 150
    iget-object v2, v1, Lag1;->e:Lk30;

    .line 151
    .line 152
    iget-object v2, v2, Lk30;->a:Lbr2;

    .line 153
    .line 154
    invoke-virtual {v2}, Lbr2;->P0()V

    .line 155
    .line 156
    .line 157
    const/4 v2, 0x0

    .line 158
    iput-object v2, v1, Lag1;->v:Ltf2;

    .line 159
    .line 160
    iput v3, p0, Lec0;->J:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 161
    .line 162
    monitor-exit v0

    .line 163
    return-void

    .line 164
    :catchall_3
    move-exception p0

    .line 165
    goto :goto_5

    .line 166
    :goto_4
    :try_start_7
    invoke-virtual {v4}, Ll53;->a()V

    .line 167
    .line 168
    .line 169
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 170
    :goto_5
    :try_start_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 171
    .line 172
    .line 173
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 174
    :goto_6
    monitor-exit v0

    .line 175
    throw p0
.end method

.method public final m()V
    .locals 9

    .line 1
    iget-object v0, p0, Lec0;->q:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lec0;->I:Lag1;

    .line 5
    .line 6
    iget-boolean v1, v1, Lag1;->F:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "Composition is disposed while composing. If dispose is triggered by a call in @Composable function, consider wrapping it with SideEffect block."

    .line 11
    .line 12
    invoke-static {v1}, Lix2;->b(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_0
    :goto_0
    iget v1, p0, Lec0;->J:I

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    if-eq v1, v2, :cond_6

    .line 23
    .line 24
    iput v2, p0, Lec0;->J:I

    .line 25
    .line 26
    iget-object v1, p0, Lec0;->I:Lag1;

    .line 27
    .line 28
    iget-object v1, v1, Lag1;->L:Lk30;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lec0;->e(Lk30;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v1, p0, Lec0;->s:Lun3;

    .line 36
    .line 37
    iget v1, v1, Lun3;->o:I

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x1

    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    move v1, v3

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v1, v2

    .line 46
    :goto_1
    if-eqz v1, :cond_3

    .line 47
    .line 48
    iget-object v4, p0, Lec0;->r:Lng2;

    .line 49
    .line 50
    iget-object v4, v4, Lng2;->n:Llg2;

    .line 51
    .line 52
    invoke-virtual {v4}, Llg2;->g()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_5

    .line 57
    .line 58
    :cond_3
    iget-object v4, p0, Lec0;->H:Ll53;

    .line 59
    .line 60
    iget-object v5, p0, Lec0;->r:Lng2;

    .line 61
    .line 62
    iget-object v6, p0, Lec0;->I:Lag1;

    .line 63
    .line 64
    invoke-virtual {v6}, Lag1;->y()Lcc0;

    .line 65
    .line 66
    .line 67
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :try_start_1
    invoke-virtual {v4, v5, v6}, Ll53;->g(Ljava/util/Set;Lcc0;)V

    .line 69
    .line 70
    .line 71
    if-nez v1, :cond_4

    .line 72
    .line 73
    iget-object v1, p0, Lec0;->s:Lun3;

    .line 74
    .line 75
    iget-object v5, p0, Lec0;->H:Ll53;

    .line 76
    .line 77
    invoke-virtual {v1}, Lun3;->f()Lxn3;

    .line 78
    .line 79
    .line 80
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    :try_start_2
    iget v6, v1, Lxn3;->t:I

    .line 82
    .line 83
    new-instance v7, Lsp0;

    .line 84
    .line 85
    const/4 v8, 0x4

    .line 86
    invoke-direct {v7, v8, v5}, Lsp0;-><init>(ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v6, v7}, Lxn3;->n(ILdf1;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Lxn3;->H()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 93
    .line 94
    .line 95
    :try_start_3
    invoke-virtual {v1, v3}, Lxn3;->e(Z)V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lec0;->o:Lg64;

    .line 99
    .line 100
    invoke-virtual {v1}, Lg64;->a()V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lec0;->o:Lg64;

    .line 104
    .line 105
    invoke-virtual {v1}, Lg64;->g()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Ll53;->c()V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :catchall_1
    move-exception p0

    .line 113
    goto :goto_3

    .line 114
    :catchall_2
    move-exception p0

    .line 115
    invoke-virtual {v1, v2}, Lxn3;->e(Z)V

    .line 116
    .line 117
    .line 118
    throw p0

    .line 119
    :cond_4
    :goto_2
    invoke-virtual {v4}, Ll53;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    .line 121
    .line 122
    :try_start_4
    invoke-virtual {v4}, Ll53;->a()V

    .line 123
    .line 124
    .line 125
    :cond_5
    iget-object v1, p0, Lec0;->I:Lag1;

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    const-string v2, "Compose:Composer.dispose"

    .line 131
    .line 132
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 133
    .line 134
    .line 135
    :try_start_5
    iget-object v2, v1, Lag1;->b:Lzb0;

    .line 136
    .line 137
    invoke-virtual {v2, v1}, Lzb0;->u(Lag1;)V

    .line 138
    .line 139
    .line 140
    iget-object v2, v1, Lag1;->E:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 143
    .line 144
    .line 145
    iget-object v2, v1, Lag1;->s:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 148
    .line 149
    .line 150
    iget-object v2, v1, Lag1;->e:Lk30;

    .line 151
    .line 152
    iget-object v2, v2, Lk30;->a:Lbr2;

    .line 153
    .line 154
    invoke-virtual {v2}, Lbr2;->P0()V

    .line 155
    .line 156
    .line 157
    const/4 v2, 0x0

    .line 158
    iput-object v2, v1, Lag1;->v:Ltf2;

    .line 159
    .line 160
    iget-object v1, v1, Lag1;->a:Lg64;

    .line 161
    .line 162
    invoke-virtual {v1}, Lg64;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 163
    .line 164
    .line 165
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :catchall_3
    move-exception p0

    .line 170
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 171
    .line 172
    .line 173
    throw p0

    .line 174
    :goto_3
    invoke-virtual {v4}, Ll53;->a()V

    .line 175
    .line 176
    .line 177
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 178
    :cond_6
    :goto_4
    monitor-exit v0

    .line 179
    iget-object v0, p0, Lec0;->n:Lzb0;

    .line 180
    .line 181
    invoke-virtual {v0, p0}, Lzb0;->v(Lec0;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :goto_5
    monitor-exit v0

    .line 186
    throw p0
.end method

.method public final n()V
    .locals 5

    .line 1
    sget-object v0, Lmt1;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Lec0;->p:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_3

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    instance-of v0, v2, Ljava/util/Set;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    check-cast v2, Ljava/util/Set;

    .line 23
    .line 24
    invoke-virtual {p0, v2, v3}, Lec0;->c(Ljava/util/Set;Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    instance-of v0, v2, [Ljava/lang/Object;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    check-cast v2, [Ljava/util/Set;

    .line 33
    .line 34
    array-length v0, v2

    .line 35
    const/4 v1, 0x0

    .line 36
    :goto_0
    if-ge v1, v0, :cond_3

    .line 37
    .line 38
    aget-object v4, v2, v1

    .line 39
    .line 40
    invoke-virtual {p0, v4, v3}, Lec0;->c(Ljava/util/Set;Z)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v0, "corrupt pendingModifications drain: "

    .line 49
    .line 50
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0}, Lwb0;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lp61;->q()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    const-string p0, "pending composition has not been applied"

    .line 68
    .line 69
    invoke-static {p0}, Lwb0;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lp61;->q()V

    .line 73
    .line 74
    .line 75
    :cond_3
    return-void
.end method

.method public final o()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lec0;->p:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v2, Lmt1;->a:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {v0, v2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_3

    .line 15
    .line 16
    instance-of v2, v0, Ljava/util/Set;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    check-cast v0, Ljava/util/Set;

    .line 22
    .line 23
    invoke-virtual {p0, v0, v3}, Lec0;->c(Ljava/util/Set;Z)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    instance-of v2, v0, [Ljava/lang/Object;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    check-cast v0, [Ljava/util/Set;

    .line 32
    .line 33
    array-length v1, v0

    .line 34
    move v2, v3

    .line 35
    :goto_0
    if-ge v2, v1, :cond_3

    .line 36
    .line 37
    aget-object v4, v0, v2

    .line 38
    .line 39
    invoke-virtual {p0, v4, v3}, Lec0;->c(Ljava/util/Set;Z)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    if-nez v0, :cond_2

    .line 46
    .line 47
    iget-object p0, p0, Lec0;->D:Lzt2;

    .line 48
    .line 49
    if-nez p0, :cond_3

    .line 50
    .line 51
    const-string p0, "calling recordModificationsOf and applyChanges concurrently is not supported"

    .line 52
    .line 53
    invoke-static {p0}, Lwb0;->a(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v0, "corrupt pendingModifications drain: "

    .line 60
    .line 61
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Lwb0;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lp61;->q()V

    .line 75
    .line 76
    .line 77
    :cond_3
    return-void
.end method

.method public final p()V
    .locals 5

    .line 1
    sget-object v0, Lk01;->n:Lk01;

    .line 2
    .line 3
    iget-object v1, p0, Lec0;->p:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v2, Lmt1;->a:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {v0, v2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_3

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    instance-of v2, v0, Ljava/util/Set;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    check-cast v0, Ljava/util/Set;

    .line 26
    .line 27
    invoke-virtual {p0, v0, v3}, Lec0;->c(Ljava/util/Set;Z)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    instance-of v2, v0, [Ljava/lang/Object;

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    check-cast v0, [Ljava/util/Set;

    .line 36
    .line 37
    array-length v1, v0

    .line 38
    move v2, v3

    .line 39
    :goto_0
    if-ge v2, v1, :cond_3

    .line 40
    .line 41
    aget-object v4, v0, v2

    .line 42
    .line 43
    invoke-virtual {p0, v4, v3}, Lec0;->c(Ljava/util/Set;Z)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v0, "corrupt pendingModifications drain: "

    .line 52
    .line 53
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Lwb0;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lp61;->q()V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_1
    return-void
.end method

.method public final q()V
    .locals 2

    .line 1
    iget v0, p0, Lec0;->J:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    if-eq v0, v1, :cond_3

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const-string v0, "The composition is disposed"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    const-string v0, "A previous pausable composition for this composition was cancelled. This composition must be disposed."

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_3
    const-string v0, "The composition should be activated before setting content."

    .line 25
    .line 26
    :goto_0
    invoke-static {v0}, Lix2;->b(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_1
    iget-object p0, p0, Lec0;->D:Lzt2;

    .line 30
    .line 31
    if-nez p0, :cond_4

    .line 32
    .line 33
    return-void

    .line 34
    :cond_4
    const-string p0, "A pausable composition is in progress"

    .line 35
    .line 36
    invoke-static {p0}, Lix2;->b(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final r(Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lec0;->r:Lng2;

    .line 2
    .line 3
    iget-object v1, p0, Lec0;->I:Lag1;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-lez v2, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljs2;

    .line 17
    .line 18
    iget-object v2, v2, Ljs2;->n:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Loe2;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string v2, "Check failed"

    .line 26
    .line 27
    invoke-static {v2}, Lwb0;->a(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const-string v2, "Compose:insertMovableContent"

    .line 34
    .line 35
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 36
    .line 37
    .line 38
    :try_start_1
    invoke-virtual {v1, p1}, Lag1;->A(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    .line 40
    .line 41
    :try_start_2
    invoke-virtual {v1}, Lag1;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    .line 43
    .line 44
    :try_start_3
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_0

    .line 50
    :catchall_1
    move-exception p1

    .line 51
    :try_start_4
    invoke-virtual {v1}, Lag1;->a()V

    .line 52
    .line 53
    .line 54
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 55
    :goto_0
    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 56
    .line 57
    .line 58
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 59
    :catchall_2
    move-exception p1

    .line 60
    :try_start_6
    iget-object v2, v0, Lng2;->n:Llg2;

    .line 61
    .line 62
    invoke-virtual {v2}, Llg2;->g()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_1

    .line 67
    .line 68
    iget-object v2, p0, Lec0;->H:Ll53;

    .line 69
    .line 70
    invoke-virtual {v1}, Lag1;->y()Lcc0;

    .line 71
    .line 72
    .line 73
    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 74
    :try_start_7
    invoke-virtual {v2, v0, v1}, Ll53;->g(Ljava/util/Set;Lcc0;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ll53;->b()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 78
    .line 79
    .line 80
    :try_start_8
    invoke-virtual {v2}, Ll53;->a()V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catchall_3
    move-exception p1

    .line 85
    goto :goto_2

    .line 86
    :catchall_4
    move-exception p1

    .line 87
    invoke-virtual {v2}, Ll53;->a()V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_1
    :goto_1
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 92
    :goto_2
    invoke-virtual {p0}, Lec0;->a()V

    .line 93
    .line 94
    .line 95
    throw p1
.end method

.method public final s(Lc33;Ljava/lang/Object;)Lau1;
    .locals 3

    .line 1
    iget v0, p1, Lc33;->b:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    or-int/lit8 v0, v0, 0x4

    .line 8
    .line 9
    iput v0, p1, Lc33;->b:I

    .line 10
    .line 11
    :cond_0
    iget-object v0, p1, Lc33;->c:Lvf1;

    .line 12
    .line 13
    if-eqz v0, :cond_6

    .line 14
    .line 15
    invoke-virtual {v0}, Lvf1;->a()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v1, p0, Lec0;->s:Lun3;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v2, p1, Lc33;->c:Lvf1;

    .line 28
    .line 29
    if-eqz v2, :cond_4

    .line 30
    .line 31
    invoke-static {v2}, Lk30;->i(Lvf1;)Lvf1;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Lun3;->g(Lvf1;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x1

    .line 40
    if-ne v1, v2, :cond_4

    .line 41
    .line 42
    iget-object v1, p1, Lc33;->d:Ldf1;

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0, p1, v0, p2}, Lec0;->t(Lc33;Lvf1;Ljava/lang/Object;)Lau1;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    sget-object p2, Lau1;->n:Lau1;

    .line 51
    .line 52
    if-eq p1, p2, :cond_2

    .line 53
    .line 54
    iget-object p0, p0, Lec0;->G:Lwu4;

    .line 55
    .line 56
    invoke-virtual {p0}, Lwu4;->j()V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-object p1

    .line 60
    :cond_3
    sget-object p0, Lau1;->n:Lau1;

    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_4
    iget-object v0, p0, Lec0;->q:Ljava/lang/Object;

    .line 64
    .line 65
    monitor-enter v0

    .line 66
    :try_start_0
    iget-object p0, p0, Lec0;->E:Lec0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    monitor-exit v0

    .line 69
    if-eqz p0, :cond_5

    .line 70
    .line 71
    iget-object p0, p0, Lec0;->I:Lag1;

    .line 72
    .line 73
    iget-boolean v0, p0, Lag1;->F:Z

    .line 74
    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    invoke-virtual {p0, p1, p2}, Lag1;->b0(Lc33;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_5

    .line 82
    .line 83
    sget-object p0, Lau1;->q:Lau1;

    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_5
    sget-object p0, Lau1;->n:Lau1;

    .line 87
    .line 88
    return-object p0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    monitor-exit v0

    .line 91
    throw p0

    .line 92
    :cond_6
    :goto_0
    sget-object p0, Lau1;->n:Lau1;

    .line 93
    .line 94
    return-object p0
.end method

.method public final t(Lc33;Lvf1;Ljava/lang/Object;)Lau1;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Lec0;->q:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v3

    .line 10
    :try_start_0
    iget-object v4, v0, Lec0;->E:Lec0;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v4, :cond_3

    .line 14
    .line 15
    iget-object v6, v0, Lec0;->s:Lun3;

    .line 16
    .line 17
    iget v7, v0, Lec0;->F:I

    .line 18
    .line 19
    iget-boolean v8, v6, Lun3;->t:Z

    .line 20
    .line 21
    if-eqz v8, :cond_0

    .line 22
    .line 23
    const-string v8, "Writer is active"

    .line 24
    .line 25
    invoke-static {v8}, Lwb0;->a(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    if-ltz v7, :cond_1

    .line 29
    .line 30
    iget v8, v6, Lun3;->o:I

    .line 31
    .line 32
    if-ge v7, v8, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string v8, "Invalid group index"

    .line 36
    .line 37
    invoke-static {v8}, Lwb0;->a(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-static/range {p2 .. p2}, Lk30;->i(Lvf1;)Lvf1;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    invoke-virtual {v6, v8}, Lun3;->g(Lvf1;)Z

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    if-eqz v9, :cond_2

    .line 49
    .line 50
    iget-object v6, v6, Lun3;->n:[I

    .line 51
    .line 52
    mul-int/lit8 v9, v7, 0x5

    .line 53
    .line 54
    add-int/lit8 v9, v9, 0x3

    .line 55
    .line 56
    aget v6, v6, v9

    .line 57
    .line 58
    add-int/2addr v6, v7

    .line 59
    iget v8, v8, Lvf1;->a:I

    .line 60
    .line 61
    if-gt v7, v8, :cond_2

    .line 62
    .line 63
    if-ge v8, v6, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move-object v4, v5

    .line 67
    :goto_1
    move-object v5, v4

    .line 68
    goto :goto_2

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    goto/16 :goto_7

    .line 71
    .line 72
    :cond_3
    :goto_2
    if-nez v5, :cond_d

    .line 73
    .line 74
    iget-object v4, v0, Lec0;->I:Lag1;

    .line 75
    .line 76
    iget-boolean v6, v4, Lag1;->F:Z

    .line 77
    .line 78
    if-eqz v6, :cond_4

    .line 79
    .line 80
    invoke-virtual {v4, v1, v2}, Lag1;->b0(Lc33;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_4

    .line 85
    .line 86
    const/4 v4, 0x1

    .line 87
    goto :goto_3

    .line 88
    :cond_4
    const/4 v4, 0x0

    .line 89
    :goto_3
    if-eqz v4, :cond_5

    .line 90
    .line 91
    sget-object v0, Lau1;->q:Lau1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    monitor-exit v3

    .line 94
    return-object v0

    .line 95
    :cond_5
    if-nez v2, :cond_6

    .line 96
    .line 97
    :try_start_1
    iget-object v4, v0, Lec0;->A:Lkg2;

    .line 98
    .line 99
    sget-object v6, Lmj1;->f0:Lmj1;

    .line 100
    .line 101
    invoke-virtual {v4, v1, v6}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto :goto_6

    .line 105
    :cond_6
    instance-of v4, v2, Los0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    iget-object v6, v0, Lec0;->A:Lkg2;

    .line 108
    .line 109
    if-nez v4, :cond_7

    .line 110
    .line 111
    :try_start_2
    sget-object v4, Lmj1;->f0:Lmj1;

    .line 112
    .line 113
    invoke-virtual {v6, v1, v4}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_7
    invoke-virtual {v6, v1}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    if-eqz v4, :cond_c

    .line 122
    .line 123
    instance-of v6, v4, Llg2;

    .line 124
    .line 125
    if-eqz v6, :cond_b

    .line 126
    .line 127
    check-cast v4, Llg2;

    .line 128
    .line 129
    iget-object v6, v4, Llg2;->b:[Ljava/lang/Object;

    .line 130
    .line 131
    iget-object v4, v4, Llg2;->a:[J

    .line 132
    .line 133
    array-length v8, v4

    .line 134
    add-int/lit8 v8, v8, -0x2

    .line 135
    .line 136
    if-ltz v8, :cond_c

    .line 137
    .line 138
    const/4 v9, 0x0

    .line 139
    :goto_4
    aget-wide v10, v4, v9

    .line 140
    .line 141
    not-long v12, v10

    .line 142
    const/4 v14, 0x7

    .line 143
    shl-long/2addr v12, v14

    .line 144
    and-long/2addr v12, v10

    .line 145
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    and-long/2addr v12, v14

    .line 151
    cmp-long v12, v12, v14

    .line 152
    .line 153
    if-eqz v12, :cond_a

    .line 154
    .line 155
    sub-int v12, v9, v8

    .line 156
    .line 157
    not-int v12, v12

    .line 158
    ushr-int/lit8 v12, v12, 0x1f

    .line 159
    .line 160
    const/16 v13, 0x8

    .line 161
    .line 162
    rsub-int/lit8 v12, v12, 0x8

    .line 163
    .line 164
    const/4 v14, 0x0

    .line 165
    :goto_5
    if-ge v14, v12, :cond_9

    .line 166
    .line 167
    const-wide/16 v15, 0xff

    .line 168
    .line 169
    and-long/2addr v15, v10

    .line 170
    const-wide/16 v17, 0x80

    .line 171
    .line 172
    cmp-long v15, v15, v17

    .line 173
    .line 174
    if-gez v15, :cond_8

    .line 175
    .line 176
    shl-int/lit8 v15, v9, 0x3

    .line 177
    .line 178
    add-int/2addr v15, v14

    .line 179
    aget-object v15, v6, v15

    .line 180
    .line 181
    sget-object v7, Lmj1;->f0:Lmj1;

    .line 182
    .line 183
    if-ne v15, v7, :cond_8

    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_8
    shr-long/2addr v10, v13

    .line 187
    add-int/lit8 v14, v14, 0x1

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_9
    if-ne v12, v13, :cond_c

    .line 191
    .line 192
    :cond_a
    if-eq v9, v8, :cond_c

    .line 193
    .line 194
    add-int/lit8 v9, v9, 0x1

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_b
    sget-object v6, Lmj1;->f0:Lmj1;

    .line 198
    .line 199
    if-ne v4, v6, :cond_c

    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_c
    iget-object v4, v0, Lec0;->A:Lkg2;

    .line 203
    .line 204
    invoke-static {v4, v1, v2}, Lht4;->b(Lkg2;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    .line 206
    .line 207
    :cond_d
    :goto_6
    monitor-exit v3

    .line 208
    if-eqz v5, :cond_e

    .line 209
    .line 210
    move-object/from16 v3, p2

    .line 211
    .line 212
    invoke-virtual {v5, v1, v3, v2}, Lec0;->t(Lc33;Lvf1;Ljava/lang/Object;)Lau1;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    return-object v0

    .line 217
    :cond_e
    iget-object v1, v0, Lec0;->n:Lzb0;

    .line 218
    .line 219
    invoke-virtual {v1, v0}, Lzb0;->l(Lec0;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, v0, Lec0;->I:Lag1;

    .line 223
    .line 224
    iget-boolean v0, v0, Lag1;->F:Z

    .line 225
    .line 226
    if-eqz v0, :cond_f

    .line 227
    .line 228
    sget-object v0, Lau1;->p:Lau1;

    .line 229
    .line 230
    return-object v0

    .line 231
    :cond_f
    sget-object v0, Lau1;->o:Lau1;

    .line 232
    .line 233
    return-object v0

    .line 234
    :goto_7
    monitor-exit v3

    .line 235
    throw v0
.end method

.method public final u(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lec0;->t:Lkg2;

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_4

    .line 12
    .line 13
    instance-of v3, v2, Llg2;

    .line 14
    .line 15
    sget-object v4, Lau1;->q:Lau1;

    .line 16
    .line 17
    iget-object v0, v0, Lec0;->z:Lkg2;

    .line 18
    .line 19
    if-eqz v3, :cond_3

    .line 20
    .line 21
    check-cast v2, Llg2;

    .line 22
    .line 23
    iget-object v3, v2, Llg2;->b:[Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v2, v2, Llg2;->a:[J

    .line 26
    .line 27
    array-length v5, v2

    .line 28
    add-int/lit8 v5, v5, -0x2

    .line 29
    .line 30
    if-ltz v5, :cond_4

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    move v7, v6

    .line 34
    :goto_0
    aget-wide v8, v2, v7

    .line 35
    .line 36
    not-long v10, v8

    .line 37
    const/4 v12, 0x7

    .line 38
    shl-long/2addr v10, v12

    .line 39
    and-long/2addr v10, v8

    .line 40
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    and-long/2addr v10, v12

    .line 46
    cmp-long v10, v10, v12

    .line 47
    .line 48
    if-eqz v10, :cond_2

    .line 49
    .line 50
    sub-int v10, v7, v5

    .line 51
    .line 52
    not-int v10, v10

    .line 53
    ushr-int/lit8 v10, v10, 0x1f

    .line 54
    .line 55
    const/16 v11, 0x8

    .line 56
    .line 57
    rsub-int/lit8 v10, v10, 0x8

    .line 58
    .line 59
    move v12, v6

    .line 60
    :goto_1
    if-ge v12, v10, :cond_1

    .line 61
    .line 62
    const-wide/16 v13, 0xff

    .line 63
    .line 64
    and-long/2addr v13, v8

    .line 65
    const-wide/16 v15, 0x80

    .line 66
    .line 67
    cmp-long v13, v13, v15

    .line 68
    .line 69
    if-gez v13, :cond_0

    .line 70
    .line 71
    shl-int/lit8 v13, v7, 0x3

    .line 72
    .line 73
    add-int/2addr v13, v12

    .line 74
    aget-object v13, v3, v13

    .line 75
    .line 76
    check-cast v13, Lc33;

    .line 77
    .line 78
    invoke-virtual {v13, v1}, Lc33;->b(Ljava/lang/Object;)Lau1;

    .line 79
    .line 80
    .line 81
    move-result-object v14

    .line 82
    if-ne v14, v4, :cond_0

    .line 83
    .line 84
    invoke-static {v0, v1, v13}, Lht4;->b(Lkg2;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_0
    shr-long/2addr v8, v11

    .line 88
    add-int/lit8 v12, v12, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    if-ne v10, v11, :cond_4

    .line 92
    .line 93
    :cond_2
    if-eq v7, v5, :cond_4

    .line 94
    .line 95
    add-int/lit8 v7, v7, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    check-cast v2, Lc33;

    .line 99
    .line 100
    invoke-virtual {v2, v1}, Lc33;->b(Ljava/lang/Object;)Lau1;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    if-ne v3, v4, :cond_4

    .line 105
    .line 106
    invoke-static {v0, v1, v2}, Lht4;->b(Lkg2;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    return-void
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget p0, p0, Lec0;->J:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final w(Ljava/util/Set;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    instance-of v2, v1, Lvd3;

    .line 6
    .line 7
    iget-object v3, v0, Lec0;->w:Lkg2;

    .line 8
    .line 9
    iget-object v0, v0, Lec0;->t:Lkg2;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-eqz v2, :cond_4

    .line 14
    .line 15
    check-cast v1, Lvd3;

    .line 16
    .line 17
    iget-object v1, v1, Lvd3;->n:Llg2;

    .line 18
    .line 19
    iget-object v2, v1, Llg2;->b:[Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v1, v1, Llg2;->a:[J

    .line 22
    .line 23
    array-length v6, v1

    .line 24
    add-int/lit8 v6, v6, -0x2

    .line 25
    .line 26
    if-ltz v6, :cond_7

    .line 27
    .line 28
    move v7, v4

    .line 29
    :goto_0
    aget-wide v8, v1, v7

    .line 30
    .line 31
    not-long v10, v8

    .line 32
    const/4 v12, 0x7

    .line 33
    shl-long/2addr v10, v12

    .line 34
    and-long/2addr v10, v8

    .line 35
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    and-long/2addr v10, v12

    .line 41
    cmp-long v10, v10, v12

    .line 42
    .line 43
    if-eqz v10, :cond_3

    .line 44
    .line 45
    sub-int v10, v7, v6

    .line 46
    .line 47
    not-int v10, v10

    .line 48
    ushr-int/lit8 v10, v10, 0x1f

    .line 49
    .line 50
    const/16 v11, 0x8

    .line 51
    .line 52
    rsub-int/lit8 v10, v10, 0x8

    .line 53
    .line 54
    move v12, v4

    .line 55
    :goto_1
    if-ge v12, v10, :cond_2

    .line 56
    .line 57
    const-wide/16 v13, 0xff

    .line 58
    .line 59
    and-long/2addr v13, v8

    .line 60
    const-wide/16 v15, 0x80

    .line 61
    .line 62
    cmp-long v13, v13, v15

    .line 63
    .line 64
    if-gez v13, :cond_1

    .line 65
    .line 66
    shl-int/lit8 v13, v7, 0x3

    .line 67
    .line 68
    add-int/2addr v13, v12

    .line 69
    aget-object v13, v2, v13

    .line 70
    .line 71
    invoke-virtual {v0, v13}, Lkg2;->c(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v14

    .line 75
    if-nez v14, :cond_0

    .line 76
    .line 77
    invoke-virtual {v3, v13}, Lkg2;->c(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    if-eqz v13, :cond_1

    .line 82
    .line 83
    :cond_0
    return v5

    .line 84
    :cond_1
    shr-long/2addr v8, v11

    .line 85
    add-int/lit8 v12, v12, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    if-ne v10, v11, :cond_7

    .line 89
    .line 90
    :cond_3
    if-eq v7, v6, :cond_7

    .line 91
    .line 92
    add-int/lit8 v7, v7, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    check-cast v1, Ljava/lang/Iterable;

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_7

    .line 106
    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v0, v2}, Lkg2;->c(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-nez v6, :cond_6

    .line 116
    .line 117
    invoke-virtual {v3, v2}, Lkg2;->c(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_5

    .line 122
    .line 123
    :cond_6
    return v5

    .line 124
    :cond_7
    return v4
.end method

.method public final x()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lec0;->q:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lec0;->D:Lzt2;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    iget-object v3, v1, Lzt2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    sget-object v4, Lbu2;->r:Lbu2;

    .line 16
    .line 17
    if-ne v3, v4, :cond_0

    .line 18
    .line 19
    iget-wide v3, v1, Lzt2;->i:J

    .line 20
    .line 21
    invoke-static {}, Lc75;->w()J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    cmp-long v3, v3, v5

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object p0, v1, Lzt2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 31
    .line 32
    sget-object v3, Lbu2;->s:Lbu2;

    .line 33
    .line 34
    sget-object v4, Lbu2;->q:Lbu2;

    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    if-eq v5, v3, :cond_1

    .line 48
    .line 49
    :goto_0
    iget-object p0, v1, Lzt2;->l:Li33;

    .line 50
    .line 51
    iget-object p0, p0, Li33;->n:Lsf2;

    .line 52
    .line 53
    const/16 v1, 0x9

    .line 54
    .line 55
    invoke-virtual {p0, v1}, Lsf2;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    monitor-exit v0

    .line 59
    return v2

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto/16 :goto_7

    .line 62
    .line 63
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lec0;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    :try_start_2
    iget-object v1, p0, Lec0;->A:Lkg2;

    .line 67
    .line 68
    invoke-static {}, Lht4;->k()Lkg2;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    iput-object v3, p0, Lec0;->A:Lkg2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 73
    .line 74
    :try_start_3
    iget-object v3, p0, Lec0;->I:Lag1;

    .line 75
    .line 76
    iget-object v4, p0, Lec0;->C:Lsm3;

    .line 77
    .line 78
    iget-object v5, v3, Lag1;->e:Lk30;

    .line 79
    .line 80
    iget-object v5, v5, Lk30;->a:Lbr2;

    .line 81
    .line 82
    invoke-virtual {v5}, Lbr2;->R0()Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-nez v6, :cond_4

    .line 87
    .line 88
    const-string v6, "Expected applyChanges() to have been called"

    .line 89
    .line 90
    invoke-static {v6}, Lwb0;->a(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    iget v6, v1, Lkg2;->e:I

    .line 94
    .line 95
    if-gtz v6, :cond_5

    .line 96
    .line 97
    iget-object v6, v3, Lag1;->s:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-eqz v6, :cond_5

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    iput-object v4, v3, Lag1;->P:Lsm3;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    .line 108
    const/4 v2, 0x0

    .line 109
    :try_start_4
    invoke-virtual {v3, v1, v2}, Lag1;->n(Lkg2;Ldf1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 110
    .line 111
    .line 112
    :try_start_5
    iput-object v2, v3, Lag1;->P:Lsm3;

    .line 113
    .line 114
    invoke-virtual {v5}, Lbr2;->R0()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    xor-int/lit8 v2, v2, 0x1

    .line 119
    .line 120
    :goto_2
    if-nez v2, :cond_6

    .line 121
    .line 122
    invoke-virtual {p0}, Lec0;->o()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :catchall_1
    move-exception v2

    .line 127
    goto :goto_4

    .line 128
    :cond_6
    :goto_3
    monitor-exit v0

    .line 129
    return v2

    .line 130
    :catchall_2
    move-exception v4

    .line 131
    :try_start_6
    iput-object v2, v3, Lag1;->P:Lsm3;

    .line 132
    .line 133
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 134
    :goto_4
    :try_start_7
    iput-object v1, p0, Lec0;->A:Lkg2;

    .line 135
    .line 136
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 137
    :catchall_3
    move-exception v1

    .line 138
    :try_start_8
    iget-object v2, p0, Lec0;->r:Lng2;

    .line 139
    .line 140
    iget-object v2, v2, Lng2;->n:Llg2;

    .line 141
    .line 142
    invoke-virtual {v2}, Llg2;->g()Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-nez v2, :cond_7

    .line 147
    .line 148
    iget-object v2, p0, Lec0;->H:Ll53;

    .line 149
    .line 150
    iget-object v3, p0, Lec0;->r:Lng2;

    .line 151
    .line 152
    iget-object v4, p0, Lec0;->I:Lag1;

    .line 153
    .line 154
    invoke-virtual {v4}, Lag1;->y()Lcc0;

    .line 155
    .line 156
    .line 157
    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 158
    :try_start_9
    invoke-virtual {v2, v3, v4}, Ll53;->g(Ljava/util/Set;Lcc0;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Ll53;->b()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 162
    .line 163
    .line 164
    :try_start_a
    invoke-virtual {v2}, Ll53;->a()V

    .line 165
    .line 166
    .line 167
    goto :goto_5

    .line 168
    :catchall_4
    move-exception v1

    .line 169
    goto :goto_6

    .line 170
    :catchall_5
    move-exception v1

    .line 171
    invoke-virtual {v2}, Ll53;->a()V

    .line 172
    .line 173
    .line 174
    throw v1

    .line 175
    :cond_7
    :goto_5
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 176
    :goto_6
    :try_start_b
    invoke-virtual {p0}, Lec0;->a()V

    .line 177
    .line 178
    .line 179
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 180
    :goto_7
    monitor-exit v0

    .line 181
    throw p0
.end method

.method public final y(Lvd3;)V
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Lec0;->p:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    sget-object v1, Lmt1;->a:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    instance-of v1, v0, Ljava/util/Set;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    new-array v1, v1, [Ljava/util/Set;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    aput-object v0, v1, v2

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    aput-object p1, v1, v2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    instance-of v1, v0, [Ljava/lang/Object;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    move-object v1, v0

    .line 37
    check-cast v1, [Ljava/util/Set;

    .line 38
    .line 39
    array-length v2, v1

    .line 40
    add-int/lit8 v3, v2, 0x1

    .line 41
    .line 42
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    aput-object p1, v1, v2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    iget-object p0, p0, Lec0;->p:Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v1, "corrupt pendingModifications: "

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :cond_3
    :goto_1
    move-object v1, p1

    .line 76
    :goto_2
    iget-object v2, p0, Lec0;->p:Ljava/util/concurrent/atomic/AtomicReference;

    .line 77
    .line 78
    :cond_4
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_6

    .line 83
    .line 84
    if-nez v0, :cond_5

    .line 85
    .line 86
    iget-object p1, p0, Lec0;->q:Ljava/lang/Object;

    .line 87
    .line 88
    monitor-enter p1

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lec0;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    monitor-exit p1

    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    monitor-exit p1

    .line 96
    throw p0

    .line 97
    :cond_5
    return-void

    .line 98
    :cond_6
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-eq v3, v0, :cond_4

    .line 103
    .line 104
    goto :goto_0
.end method

.method public final z(Ljava/lang/Object;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lec0;->I:Lag1;

    .line 6
    .line 7
    iget v3, v2, Lag1;->A:I

    .line 8
    .line 9
    if-lez v3, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    invoke-virtual {v2}, Lag1;->w()Lc33;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_c

    .line 18
    .line 19
    iget v3, v2, Lc33;->b:I

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    or-int/2addr v3, v4

    .line 23
    iput v3, v2, Lc33;->b:I

    .line 24
    .line 25
    and-int/lit8 v3, v3, 0x20

    .line 26
    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    :cond_1
    const/4 v3, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    iget-object v3, v2, Lc33;->f:Lcg2;

    .line 32
    .line 33
    if-nez v3, :cond_3

    .line 34
    .line 35
    new-instance v3, Lcg2;

    .line 36
    .line 37
    invoke-direct {v3}, Lcg2;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v3, v2, Lc33;->f:Lcg2;

    .line 41
    .line 42
    :cond_3
    iget v6, v2, Lc33;->e:I

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Lcg2;->c(Ljava/lang/Object;)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-gez v7, :cond_4

    .line 49
    .line 50
    not-int v7, v7

    .line 51
    const/4 v8, -0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_4
    iget-object v8, v3, Lcg2;->c:[I

    .line 54
    .line 55
    aget v8, v8, v7

    .line 56
    .line 57
    :goto_0
    iget-object v9, v3, Lcg2;->b:[Ljava/lang/Object;

    .line 58
    .line 59
    aput-object v1, v9, v7

    .line 60
    .line 61
    iget-object v3, v3, Lcg2;->c:[I

    .line 62
    .line 63
    aput v6, v3, v7

    .line 64
    .line 65
    iget v3, v2, Lc33;->e:I

    .line 66
    .line 67
    if-ne v8, v3, :cond_1

    .line 68
    .line 69
    move v3, v4

    .line 70
    :goto_1
    iget-object v6, v0, Lec0;->G:Lwu4;

    .line 71
    .line 72
    invoke-virtual {v6}, Lwu4;->j()V

    .line 73
    .line 74
    .line 75
    if-nez v3, :cond_c

    .line 76
    .line 77
    instance-of v3, v1, Lcs3;

    .line 78
    .line 79
    if-eqz v3, :cond_5

    .line 80
    .line 81
    move-object v3, v1

    .line 82
    check-cast v3, Lcs3;

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Lcs3;->f(I)V

    .line 85
    .line 86
    .line 87
    :cond_5
    iget-object v3, v0, Lec0;->t:Lkg2;

    .line 88
    .line 89
    invoke-static {v3, v1, v2}, Lht4;->b(Lkg2;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    instance-of v3, v1, Los0;

    .line 93
    .line 94
    if-eqz v3, :cond_c

    .line 95
    .line 96
    move-object v3, v1

    .line 97
    check-cast v3, Los0;

    .line 98
    .line 99
    invoke-virtual {v3}, Los0;->h()Lns0;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    iget-object v0, v0, Lec0;->w:Lkg2;

    .line 104
    .line 105
    invoke-static {v0, v1}, Lht4;->B(Lkg2;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iget-object v7, v6, Lns0;->e:Lcg2;

    .line 109
    .line 110
    iget-object v8, v7, Lcg2;->b:[Ljava/lang/Object;

    .line 111
    .line 112
    iget-object v7, v7, Lcg2;->a:[J

    .line 113
    .line 114
    array-length v9, v7

    .line 115
    add-int/lit8 v9, v9, -0x2

    .line 116
    .line 117
    if-ltz v9, :cond_a

    .line 118
    .line 119
    const/4 v10, 0x0

    .line 120
    :goto_2
    aget-wide v11, v7, v10

    .line 121
    .line 122
    not-long v13, v11

    .line 123
    const/4 v15, 0x7

    .line 124
    shl-long/2addr v13, v15

    .line 125
    and-long/2addr v13, v11

    .line 126
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    and-long/2addr v13, v15

    .line 132
    cmp-long v13, v13, v15

    .line 133
    .line 134
    if-eqz v13, :cond_9

    .line 135
    .line 136
    sub-int v13, v10, v9

    .line 137
    .line 138
    not-int v13, v13

    .line 139
    ushr-int/lit8 v13, v13, 0x1f

    .line 140
    .line 141
    const/16 v14, 0x8

    .line 142
    .line 143
    rsub-int/lit8 v13, v13, 0x8

    .line 144
    .line 145
    const/4 v15, 0x0

    .line 146
    :goto_3
    if-ge v15, v13, :cond_8

    .line 147
    .line 148
    const-wide/16 v16, 0xff

    .line 149
    .line 150
    and-long v16, v11, v16

    .line 151
    .line 152
    const-wide/16 v18, 0x80

    .line 153
    .line 154
    cmp-long v16, v16, v18

    .line 155
    .line 156
    if-gez v16, :cond_7

    .line 157
    .line 158
    shl-int/lit8 v16, v10, 0x3

    .line 159
    .line 160
    add-int v16, v16, v15

    .line 161
    .line 162
    aget-object v16, v8, v16

    .line 163
    .line 164
    move-object/from16 v5, v16

    .line 165
    .line 166
    check-cast v5, Lbs3;

    .line 167
    .line 168
    move/from16 p0, v14

    .line 169
    .line 170
    instance-of v14, v5, Lcs3;

    .line 171
    .line 172
    if-eqz v14, :cond_6

    .line 173
    .line 174
    move-object v14, v5

    .line 175
    check-cast v14, Lcs3;

    .line 176
    .line 177
    invoke-virtual {v14, v4}, Lcs3;->f(I)V

    .line 178
    .line 179
    .line 180
    :cond_6
    invoke-static {v0, v5, v1}, Lht4;->b(Lkg2;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_7
    move/from16 p0, v14

    .line 185
    .line 186
    :goto_4
    shr-long v11, v11, p0

    .line 187
    .line 188
    add-int/lit8 v15, v15, 0x1

    .line 189
    .line 190
    move/from16 v14, p0

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_8
    move v5, v14

    .line 194
    if-ne v13, v5, :cond_a

    .line 195
    .line 196
    :cond_9
    if-eq v10, v9, :cond_a

    .line 197
    .line 198
    add-int/lit8 v10, v10, 0x1

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_a
    iget-object v0, v6, Lns0;->f:Ljava/lang/Object;

    .line 202
    .line 203
    iget-object v1, v2, Lc33;->g:Lkg2;

    .line 204
    .line 205
    if-nez v1, :cond_b

    .line 206
    .line 207
    new-instance v1, Lkg2;

    .line 208
    .line 209
    invoke-direct {v1}, Lkg2;-><init>()V

    .line 210
    .line 211
    .line 212
    iput-object v1, v2, Lc33;->g:Lkg2;

    .line 213
    .line 214
    :cond_b
    invoke-virtual {v1, v3, v0}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    :cond_c
    :goto_5
    return-void
.end method

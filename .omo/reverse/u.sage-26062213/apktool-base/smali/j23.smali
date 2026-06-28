.class public final Lj23;
.super Lnw3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Laz0;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lj23;->e:I

    .line 3
    .line 4
    iput-object p1, p0, Lj23;->f:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p0, p2}, Lnw3;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lne1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj23;->e:I

    iput-object p2, p0, Lj23;->f:Ljava/lang/Object;

    .line 10
    invoke-direct {p0, p1}, Lnw3;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lj23;->e:I

    .line 4
    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lj23;->f:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lne1;

    .line 13
    .line 14
    invoke-interface {v0}, Lne1;->a()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-wide v2

    .line 18
    :pswitch_0
    iget-object v0, v0, Lj23;->f:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Laz0;

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    iget-wide v6, v0, Laz0;->a:J

    .line 27
    .line 28
    sub-long v6, v4, v6

    .line 29
    .line 30
    const-wide/16 v8, 0x1

    .line 31
    .line 32
    add-long/2addr v6, v8

    .line 33
    iget-object v1, v0, Laz0;->d:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const/4 v8, 0x0

    .line 45
    const-wide v9, 0x7fffffffffffffffL

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    const/4 v11, 0x0

    .line 51
    move-object v13, v8

    .line 52
    move-object v14, v13

    .line 53
    move v12, v11

    .line 54
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v15

    .line 58
    if-eqz v15, :cond_3

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v15

    .line 64
    check-cast v15, Li23;

    .line 65
    .line 66
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    monitor-enter v15

    .line 70
    :try_start_0
    invoke-virtual {v0, v15, v4, v5}, Laz0;->a(Li23;J)I

    .line 71
    .line 72
    .line 73
    move-result v16

    .line 74
    if-lez v16, :cond_0

    .line 75
    .line 76
    add-int/lit8 v12, v12, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_0
    iget-wide v2, v15, Li23;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    cmp-long v17, v2, v6

    .line 82
    .line 83
    if-gez v17, :cond_1

    .line 84
    .line 85
    move-wide v6, v2

    .line 86
    move-object v13, v15

    .line 87
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 88
    .line 89
    cmp-long v17, v2, v9

    .line 90
    .line 91
    if-gez v17, :cond_2

    .line 92
    .line 93
    move-wide v9, v2

    .line 94
    move-object v14, v15

    .line 95
    :cond_2
    :goto_1
    monitor-exit v15

    .line 96
    const-wide/16 v2, -0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    monitor-exit v15

    .line 101
    throw v0

    .line 102
    :cond_3
    if-eqz v13, :cond_4

    .line 103
    .line 104
    move-object v8, v13

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    const/4 v1, 0x5

    .line 107
    if-le v11, v1, :cond_5

    .line 108
    .line 109
    move-wide v6, v9

    .line 110
    move-object v8, v14

    .line 111
    goto :goto_2

    .line 112
    :cond_5
    const-wide/16 v6, -0x1

    .line 113
    .line 114
    :goto_2
    if-eqz v8, :cond_9

    .line 115
    .line 116
    monitor-enter v8

    .line 117
    :try_start_1
    iget-object v1, v8, Li23;->p:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 123
    const-wide/16 v2, 0x0

    .line 124
    .line 125
    if-nez v1, :cond_6

    .line 126
    .line 127
    :goto_3
    monitor-exit v8

    .line 128
    goto :goto_6

    .line 129
    :cond_6
    :try_start_2
    iget-wide v4, v8, Li23;->q:J

    .line 130
    .line 131
    cmp-long v1, v4, v6

    .line 132
    .line 133
    if-eqz v1, :cond_7

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_7
    const/4 v1, 0x1

    .line 137
    iput-boolean v1, v8, Li23;->j:Z

    .line 138
    .line 139
    iget-object v1, v0, Laz0;->d:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 142
    .line 143
    invoke-virtual {v1, v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 144
    .line 145
    .line 146
    monitor-exit v8

    .line 147
    iget-object v1, v8, Li23;->e:Ljava/net/Socket;

    .line 148
    .line 149
    invoke-static {v1}, Lhi4;->b(Ljava/net/Socket;)V

    .line 150
    .line 151
    .line 152
    iget-object v1, v0, Laz0;->d:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_c

    .line 161
    .line 162
    iget-object v0, v0, Laz0;->b:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v0, Lsw3;

    .line 165
    .line 166
    iget-object v1, v0, Lsw3;->a:Ltw3;

    .line 167
    .line 168
    monitor-enter v1

    .line 169
    :try_start_3
    invoke-virtual {v0}, Lsw3;->a()Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-eqz v4, :cond_8

    .line 174
    .line 175
    iget-object v4, v0, Lsw3;->a:Ltw3;

    .line 176
    .line 177
    invoke-virtual {v4, v0}, Ltw3;->c(Lsw3;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :catchall_1
    move-exception v0

    .line 182
    goto :goto_5

    .line 183
    :cond_8
    :goto_4
    monitor-exit v1

    .line 184
    goto :goto_6

    .line 185
    :goto_5
    monitor-exit v1

    .line 186
    throw v0

    .line 187
    :catchall_2
    move-exception v0

    .line 188
    monitor-exit v8

    .line 189
    throw v0

    .line 190
    :cond_9
    if-eqz v14, :cond_a

    .line 191
    .line 192
    iget-wide v0, v0, Laz0;->a:J

    .line 193
    .line 194
    add-long/2addr v9, v0

    .line 195
    sub-long v2, v9, v4

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_a
    if-lez v12, :cond_b

    .line 199
    .line 200
    iget-wide v2, v0, Laz0;->a:J

    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_b
    const-wide/16 v2, -0x1

    .line 204
    .line 205
    :cond_c
    :goto_6
    return-wide v2

    .line 206
    nop

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lh4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 14
    iput p1, p0, Lh4;->n:I

    iput-object p2, p0, Lh4;->o:Ljava/lang/Object;

    iput-object p3, p0, Lh4;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 13
    iput p1, p0, Lh4;->n:I

    iput-object p2, p0, Lh4;->p:Ljava/lang/Object;

    iput-object p3, p0, Lh4;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lei2;Lyh2;Z)V
    .locals 0

    .line 1
    const/16 p3, 0x15

    .line 2
    .line 3
    iput p3, p0, Lh4;->n:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lh4;->o:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p2, p0, Lh4;->p:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method private final c()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lbl1;

    .line 4
    .line 5
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Llk3;

    .line 8
    .line 9
    new-instance v1, Lw33;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lbl1;->p:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lcl1;

    .line 17
    .line 18
    iget-object v2, v0, Lcl1;->J:Lkl1;

    .line 19
    .line 20
    monitor-enter v2

    .line 21
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    iget-object v3, v0, Lcl1;->E:Llk3;

    .line 23
    .line 24
    new-instance v4, Llk3;

    .line 25
    .line 26
    invoke-direct {v4}, Llk3;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    move v6, v5

    .line 34
    :goto_0
    const/16 v7, 0xa

    .line 35
    .line 36
    const/4 v8, 0x1

    .line 37
    if-ge v6, v7, :cond_1

    .line 38
    .line 39
    shl-int v7, v8, v6

    .line 40
    .line 41
    iget v8, v3, Llk3;->a:I

    .line 42
    .line 43
    and-int/2addr v7, v8

    .line 44
    if-eqz v7, :cond_0

    .line 45
    .line 46
    iget-object v7, v3, Llk3;->b:[I

    .line 47
    .line 48
    aget v7, v7, v6

    .line 49
    .line 50
    invoke-virtual {v4, v6, v7}, Llk3;->b(II)V

    .line 51
    .line 52
    .line 53
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v6, v5

    .line 57
    :goto_1
    if-ge v6, v7, :cond_3

    .line 58
    .line 59
    shl-int v9, v8, v6

    .line 60
    .line 61
    iget v10, p0, Llk3;->a:I

    .line 62
    .line 63
    and-int/2addr v9, v10

    .line 64
    if-eqz v9, :cond_2

    .line 65
    .line 66
    iget-object v9, p0, Llk3;->b:[I

    .line 67
    .line 68
    aget v9, v9, v6

    .line 69
    .line 70
    invoke-virtual {v4, v6, v9}, Llk3;->b(II)V

    .line 71
    .line 72
    .line 73
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    iput-object v4, v1, Lw33;->n:Ljava/lang/Object;

    .line 77
    .line 78
    invoke-virtual {v4}, Llk3;->a()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    int-to-long v6, p0

    .line 83
    invoke-virtual {v3}, Llk3;->a()I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    int-to-long v3, p0

    .line 88
    sub-long/2addr v6, v3

    .line 89
    const-wide/16 v3, 0x0

    .line 90
    .line 91
    cmp-long p0, v6, v3

    .line 92
    .line 93
    if-eqz p0, :cond_5

    .line 94
    .line 95
    iget-object v3, v0, Lcl1;->o:Ljava/util/LinkedHashMap;

    .line 96
    .line 97
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_4

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    iget-object v3, v0, Lcl1;->o:Ljava/util/LinkedHashMap;

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    new-array v4, v5, [Ljl1;

    .line 111
    .line 112
    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, [Ljl1;

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    goto :goto_6

    .line 121
    :cond_5
    :goto_2
    const/4 v3, 0x0

    .line 122
    :goto_3
    iget-object v4, v1, Lw33;->n:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v4, Llk3;

    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    iput-object v4, v0, Lcl1;->E:Llk3;

    .line 130
    .line 131
    iget-object v4, v0, Lcl1;->w:Lsw3;

    .line 132
    .line 133
    new-instance v8, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    iget-object v9, v0, Lcl1;->p:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v9, " onSettings"

    .line 144
    .line 145
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    new-instance v9, Lh4;

    .line 153
    .line 154
    const/16 v10, 0x10

    .line 155
    .line 156
    invoke-direct {v9, v10, v0, v1}, Lh4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v4, v8, v9}, Lsw3;->b(Lsw3;Ljava/lang/String;Lne1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    .line 161
    .line 162
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    :try_start_3
    iget-object v4, v0, Lcl1;->J:Lkl1;

    .line 164
    .line 165
    iget-object v1, v1, Lw33;->n:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v1, Llk3;

    .line 168
    .line 169
    invoke-virtual {v4, v1}, Lkl1;->b(Llk3;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :catchall_1
    move-exception p0

    .line 174
    goto :goto_7

    .line 175
    :catch_0
    move-exception v1

    .line 176
    :try_start_4
    sget-object v4, Ld21;->q:Ld21;

    .line 177
    .line 178
    invoke-virtual {v0, v4, v4, v1}, Lcl1;->b(Ld21;Ld21;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 179
    .line 180
    .line 181
    :goto_4
    monitor-exit v2

    .line 182
    if-eqz v3, :cond_7

    .line 183
    .line 184
    array-length v0, v3

    .line 185
    :goto_5
    if-ge v5, v0, :cond_7

    .line 186
    .line 187
    aget-object v1, v3, v5

    .line 188
    .line 189
    monitor-enter v1

    .line 190
    :try_start_5
    iget-wide v8, v1, Ljl1;->r:J

    .line 191
    .line 192
    add-long/2addr v8, v6

    .line 193
    iput-wide v8, v1, Ljl1;->r:J

    .line 194
    .line 195
    if-lez p0, :cond_6

    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 198
    .line 199
    .line 200
    :cond_6
    monitor-exit v1

    .line 201
    add-int/lit8 v5, v5, 0x1

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :catchall_2
    move-exception p0

    .line 205
    monitor-exit v1

    .line 206
    throw p0

    .line 207
    :cond_7
    sget-object p0, Lt64;->a:Lt64;

    .line 208
    .line 209
    return-object p0

    .line 210
    :goto_6
    :try_start_6
    monitor-exit v0

    .line 211
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 212
    :goto_7
    monitor-exit v2

    .line 213
    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lh4;->n:I

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroid/content/Context;

    .line 14
    .line 15
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, p0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_0
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lm;

    .line 30
    .line 31
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 34
    .line 35
    sget-object v1, Lam3;->b:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v2, Lam3;->c:Ljava/util/LinkedHashMap;

    .line 39
    .line 40
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    invoke-static {}, Lt72;->g()Lt72;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sget-object v2, Lsf4;->a:Ljava/lang/String;

    .line 54
    .line 55
    const-string v5, "NetworkRequestConstraintController unregister shared callback"

    .line 56
    .line 57
    invoke-virtual {v0, v2, v5}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lam3;->a:Lam3;

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 63
    .line 64
    .line 65
    sput-object v3, Lam3;->f:Ljava/lang/Boolean;

    .line 66
    .line 67
    sput-object v3, Lam3;->d:Landroid/net/NetworkCapabilities;

    .line 68
    .line 69
    sput-boolean v4, Lam3;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    move-object p0, v0

    .line 74
    goto :goto_1

    .line 75
    :cond_0
    :goto_0
    monitor-exit v1

    .line 76
    sget-object p0, Lt64;->a:Lt64;

    .line 77
    .line 78
    return-object p0

    .line 79
    :goto_1
    monitor-exit v1

    .line 80
    throw p0

    .line 81
    :pswitch_1
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Lpe1;

    .line 84
    .line 85
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p0, Lpg2;

    .line 88
    .line 89
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    check-cast p0, Ly84;

    .line 94
    .line 95
    invoke-interface {v0, p0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    sget-object p0, Lt64;->a:Lt64;

    .line 99
    .line 100
    return-object p0

    .line 101
    :pswitch_2
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, Llg2;

    .line 104
    .line 105
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p0, Lec0;

    .line 108
    .line 109
    iget-object v1, v0, Llg2;->b:[Ljava/lang/Object;

    .line 110
    .line 111
    iget-object v0, v0, Llg2;->a:[J

    .line 112
    .line 113
    array-length v2, v0

    .line 114
    add-int/lit8 v2, v2, -0x2

    .line 115
    .line 116
    if-ltz v2, :cond_4

    .line 117
    .line 118
    move v3, v4

    .line 119
    :goto_2
    aget-wide v5, v0, v3

    .line 120
    .line 121
    not-long v7, v5

    .line 122
    const/4 v9, 0x7

    .line 123
    shl-long/2addr v7, v9

    .line 124
    and-long/2addr v7, v5

    .line 125
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    and-long/2addr v7, v9

    .line 131
    cmp-long v7, v7, v9

    .line 132
    .line 133
    if-eqz v7, :cond_3

    .line 134
    .line 135
    sub-int v7, v3, v2

    .line 136
    .line 137
    not-int v7, v7

    .line 138
    ushr-int/lit8 v7, v7, 0x1f

    .line 139
    .line 140
    const/16 v8, 0x8

    .line 141
    .line 142
    rsub-int/lit8 v7, v7, 0x8

    .line 143
    .line 144
    move v9, v4

    .line 145
    :goto_3
    if-ge v9, v7, :cond_2

    .line 146
    .line 147
    const-wide/16 v10, 0xff

    .line 148
    .line 149
    and-long/2addr v10, v5

    .line 150
    const-wide/16 v12, 0x80

    .line 151
    .line 152
    cmp-long v10, v10, v12

    .line 153
    .line 154
    if-gez v10, :cond_1

    .line 155
    .line 156
    shl-int/lit8 v10, v3, 0x3

    .line 157
    .line 158
    add-int/2addr v10, v9

    .line 159
    aget-object v10, v1, v10

    .line 160
    .line 161
    invoke-virtual {p0, v10}, Lec0;->A(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    :cond_1
    shr-long/2addr v5, v8

    .line 165
    add-int/lit8 v9, v9, 0x1

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_2
    if-ne v7, v8, :cond_4

    .line 169
    .line 170
    :cond_3
    if-eq v3, v2, :cond_4

    .line 171
    .line 172
    add-int/lit8 v3, v3, 0x1

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_4
    sget-object p0, Lt64;->a:Lt64;

    .line 176
    .line 177
    return-object p0

    .line 178
    :pswitch_3
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v0, Landroid/content/Context;

    .line 181
    .line 182
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast p0, Lqx2;

    .line 185
    .line 186
    iget-object p0, p0, Lqx2;->a:Ljava/lang/String;

    .line 187
    .line 188
    const-string v1, ".preferences_pb"

    .line 189
    .line 190
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-static {v0, p0}, Lon4;->q(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    return-object p0

    .line 199
    :pswitch_4
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v0, Lcb0;

    .line 202
    .line 203
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast p0, Ldf1;

    .line 206
    .line 207
    iput-object p0, v0, Lcb0;->d:Ldf1;

    .line 208
    .line 209
    sget-object p0, Lt64;->a:Lt64;

    .line 210
    .line 211
    return-object p0

    .line 212
    :pswitch_5
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v0, Leh;

    .line 215
    .line 216
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast p0, Ld33;

    .line 219
    .line 220
    iget-object v0, v0, Leh;->o:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v0, Llj;

    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_5

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_5
    invoke-virtual {p0}, Ld33;->a()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    :goto_4
    sget-object p0, Lt64;->a:Lt64;

    .line 235
    .line 236
    return-object p0

    .line 237
    :pswitch_6
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v0, Las0;

    .line 240
    .line 241
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast p0, Lts2;

    .line 244
    .line 245
    const/high16 v2, 0x42600000    # 56.0f

    .line 246
    .line 247
    invoke-interface {v0, v2}, Las0;->N(F)I

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    invoke-virtual {p0}, Lts2;->g()I

    .line 252
    .line 253
    .line 254
    move-result p0

    .line 255
    sub-int/2addr p0, v2

    .line 256
    int-to-float p0, p0

    .line 257
    const/high16 v2, 0x40000000    # 2.0f

    .line 258
    .line 259
    div-float/2addr p0, v2

    .line 260
    sget v2, Lzj2;->f:F

    .line 261
    .line 262
    invoke-interface {v0, v2}, Las0;->v(F)F

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 267
    .line 268
    .line 269
    move-result p0

    .line 270
    int-to-long v2, p0

    .line 271
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 272
    .line 273
    .line 274
    move-result p0

    .line 275
    int-to-long v4, p0

    .line 276
    shl-long v0, v2, v1

    .line 277
    .line 278
    const-wide v2, 0xffffffffL

    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    and-long/2addr v2, v4

    .line 284
    or-long/2addr v0, v2

    .line 285
    new-instance p0, Lgo2;

    .line 286
    .line 287
    invoke-direct {p0, v0, v1}, Lgo2;-><init>(J)V

    .line 288
    .line 289
    .line 290
    return-object p0

    .line 291
    :pswitch_7
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 292
    .line 293
    check-cast v0, Lei2;

    .line 294
    .line 295
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 296
    .line 297
    check-cast p0, Lyh2;

    .line 298
    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    iget-object v1, v0, Lei2;->a:Lpr3;

    .line 303
    .line 304
    monitor-enter v1

    .line 305
    :try_start_1
    iget-object v0, v0, Lei2;->b:Lwr3;

    .line 306
    .line 307
    invoke-virtual {v0}, Lwr3;->getValue()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    check-cast v2, Ljava/lang/Iterable;

    .line 312
    .line 313
    new-instance v4, Ljava/util/ArrayList;

    .line 314
    .line 315
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .line 317
    .line 318
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 323
    .line 324
    .line 325
    move-result v5

    .line 326
    if-eqz v5, :cond_7

    .line 327
    .line 328
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    move-object v6, v5

    .line 333
    check-cast v6, Lyh2;

    .line 334
    .line 335
    invoke-static {v6, p0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v6

    .line 339
    if-eqz v6, :cond_6

    .line 340
    .line 341
    goto :goto_6

    .line 342
    :cond_6
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    goto :goto_5

    .line 346
    :catchall_1
    move-exception v0

    .line 347
    move-object p0, v0

    .line 348
    goto :goto_7

    .line 349
    :cond_7
    :goto_6
    invoke-virtual {v0, v3, v4}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 350
    .line 351
    .line 352
    monitor-exit v1

    .line 353
    sget-object p0, Lt64;->a:Lt64;

    .line 354
    .line 355
    return-object p0

    .line 356
    :goto_7
    monitor-exit v1

    .line 357
    throw p0

    .line 358
    :pswitch_8
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 359
    .line 360
    check-cast v0, Lu/sage/MainActivity;

    .line 361
    .line 362
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 363
    .line 364
    check-cast p0, Lxi2;

    .line 365
    .line 366
    sget v1, Lu/sage/MainActivity;->C:I

    .line 367
    .line 368
    sget-object v1, Lte3;->c:Lte3;

    .line 369
    .line 370
    iget-object v1, v1, Lnq0;->a:Ljava/lang/Object;

    .line 371
    .line 372
    check-cast v1, Ljava/lang/String;

    .line 373
    .line 374
    invoke-virtual {v0}, Lu/sage/MainActivity;->i()Ln8;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    const-string v2, "DeveloperSettingsScreen"

    .line 379
    .line 380
    invoke-virtual {v0, v1, v2}, Ln8;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-static {p0, v1}, Lxi2;->b(Lxi2;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    sget-object p0, Lt64;->a:Lt64;

    .line 387
    .line 388
    return-object p0

    .line 389
    :pswitch_9
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 390
    .line 391
    check-cast v0, Lxi2;

    .line 392
    .line 393
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast p0, Ly84;

    .line 396
    .line 397
    sget v1, Lu/sage/MainActivity;->C:I

    .line 398
    .line 399
    sget-object v1, Lne3;->c:Lne3;

    .line 400
    .line 401
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p0

    .line 405
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    .line 407
    .line 408
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    .line 410
    .line 411
    const-string v1, "account/"

    .line 412
    .line 413
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object p0

    .line 417
    invoke-static {v0, p0}, Lxi2;->b(Lxi2;Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    sget-object p0, Lt64;->a:Lt64;

    .line 421
    .line 422
    return-object p0

    .line 423
    :pswitch_a
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast v0, Lic3;

    .line 426
    .line 427
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 428
    .line 429
    check-cast p0, Lfc3;

    .line 430
    .line 431
    new-instance v1, Lr12;

    .line 432
    .line 433
    sget-object v2, Lh01;->n:Lh01;

    .line 434
    .line 435
    invoke-direct {v1, v0, v2, p0}, Lr12;-><init>(Lic3;Ljava/util/Map;Lfc3;)V

    .line 436
    .line 437
    .line 438
    return-object v1

    .line 439
    :pswitch_b
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 440
    .line 441
    check-cast v0, Lgi3;

    .line 442
    .line 443
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 444
    .line 445
    check-cast p0, Lfv1;

    .line 446
    .line 447
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 448
    .line 449
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 450
    .line 451
    .line 452
    iget-object v5, p0, Lfv1;->a:Lpv1;

    .line 453
    .line 454
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 455
    .line 456
    .line 457
    invoke-static {p0, v0}, Ljw1;->a(Lfv1;Lgi3;)V

    .line 458
    .line 459
    .line 460
    invoke-interface {v0}, Lgi3;->d()I

    .line 461
    .line 462
    .line 463
    move-result p0

    .line 464
    move v5, v4

    .line 465
    :goto_8
    if-ge v5, p0, :cond_e

    .line 466
    .line 467
    invoke-interface {v0, v5}, Lgi3;->i(I)Ljava/util/List;

    .line 468
    .line 469
    .line 470
    move-result-object v6

    .line 471
    new-instance v7, Ljava/util/ArrayList;

    .line 472
    .line 473
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .line 475
    .line 476
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 477
    .line 478
    .line 479
    move-result-object v6

    .line 480
    :cond_8
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 481
    .line 482
    .line 483
    move-result v8

    .line 484
    if-eqz v8, :cond_9

    .line 485
    .line 486
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v8

    .line 490
    instance-of v9, v8, Liw1;

    .line 491
    .line 492
    if-eqz v9, :cond_8

    .line 493
    .line 494
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    goto :goto_9

    .line 498
    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 499
    .line 500
    .line 501
    move-result v6

    .line 502
    const/4 v8, 0x1

    .line 503
    if-ne v6, v8, :cond_a

    .line 504
    .line 505
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v6

    .line 509
    goto :goto_a

    .line 510
    :cond_a
    move-object v6, v3

    .line 511
    :goto_a
    check-cast v6, Liw1;

    .line 512
    .line 513
    if-eqz v6, :cond_d

    .line 514
    .line 515
    invoke-interface {v6}, Liw1;->names()[Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v6

    .line 519
    if-eqz v6, :cond_d

    .line 520
    .line 521
    array-length v7, v6

    .line 522
    move v8, v4

    .line 523
    :goto_b
    if-ge v8, v7, :cond_d

    .line 524
    .line 525
    aget-object v9, v6, v8

    .line 526
    .line 527
    invoke-interface {v0}, Lgi3;->c()Ldm0;

    .line 528
    .line 529
    .line 530
    move-result-object v10

    .line 531
    sget-object v11, Lki3;->Q:Lki3;

    .line 532
    .line 533
    invoke-static {v10, v11}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    move-result v10

    .line 537
    if-eqz v10, :cond_b

    .line 538
    .line 539
    const-string v10, "enum value"

    .line 540
    .line 541
    goto :goto_c

    .line 542
    :cond_b
    const-string v10, "property"

    .line 543
    .line 544
    :goto_c
    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    move-result v11

    .line 548
    if-nez v11, :cond_c

    .line 549
    .line 550
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 551
    .line 552
    .line 553
    move-result-object v10

    .line 554
    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    add-int/lit8 v8, v8, 0x1

    .line 558
    .line 559
    goto :goto_b

    .line 560
    :cond_c
    new-instance p0, Lew1;

    .line 561
    .line 562
    const-string v3, "The suggested name \'"

    .line 563
    .line 564
    const-string v4, "\' for "

    .line 565
    .line 566
    invoke-interface {v0, v5}, Lgi3;->e(I)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v5

    .line 570
    const-string v6, " is already one of the names for "

    .line 571
    .line 572
    invoke-static {v9, v2}, Loa2;->Z(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    check-cast v2, Ljava/lang/Number;

    .line 577
    .line 578
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    invoke-interface {v0, v2}, Lgi3;->e(I)Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v2

    .line 586
    new-instance v7, Ljava/lang/StringBuilder;

    .line 587
    .line 588
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    const-string v1, " in "

    .line 619
    .line 620
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    throw p0

    .line 634
    :cond_d
    add-int/lit8 v5, v5, 0x1

    .line 635
    .line 636
    goto/16 :goto_8

    .line 637
    .line 638
    :cond_e
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 639
    .line 640
    .line 641
    move-result p0

    .line 642
    if-eqz p0, :cond_f

    .line 643
    .line 644
    sget-object v2, Lh01;->n:Lh01;

    .line 645
    .line 646
    :cond_f
    return-object v2

    .line 647
    :pswitch_c
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 648
    .line 649
    check-cast v0, Lcl1;

    .line 650
    .line 651
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 652
    .line 653
    check-cast p0, Lw33;

    .line 654
    .line 655
    iget-object v1, v0, Lcl1;->n:Lzk1;

    .line 656
    .line 657
    iget-object p0, p0, Lw33;->n:Ljava/lang/Object;

    .line 658
    .line 659
    check-cast p0, Llk3;

    .line 660
    .line 661
    invoke-virtual {v1, v0, p0}, Lzk1;->a(Lcl1;Llk3;)V

    .line 662
    .line 663
    .line 664
    sget-object p0, Lt64;->a:Lt64;

    .line 665
    .line 666
    return-object p0

    .line 667
    :pswitch_d
    invoke-direct {p0}, Lh4;->c()Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object p0

    .line 671
    return-object p0

    .line 672
    :pswitch_e
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 673
    .line 674
    move-object v1, v0

    .line 675
    check-cast v1, Lcl1;

    .line 676
    .line 677
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 678
    .line 679
    check-cast p0, Ljl1;

    .line 680
    .line 681
    :try_start_2
    iget-object v0, v1, Lcl1;->n:Lzk1;

    .line 682
    .line 683
    invoke-virtual {v0, p0}, Lzk1;->b(Ljl1;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 684
    .line 685
    .line 686
    goto :goto_d

    .line 687
    :catch_0
    move-exception v0

    .line 688
    sget-object v3, Liv2;->a:Liv2;

    .line 689
    .line 690
    sget-object v3, Liv2;->a:Liv2;

    .line 691
    .line 692
    new-instance v4, Ljava/lang/StringBuilder;

    .line 693
    .line 694
    const-string v5, "Http2Connection.Listener failure for "

    .line 695
    .line 696
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    iget-object v1, v1, Lcl1;->p:Ljava/lang/String;

    .line 700
    .line 701
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v1

    .line 708
    invoke-virtual {v3, v2, v1, v0}, Liv2;->i(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 709
    .line 710
    .line 711
    :try_start_3
    sget-object v1, Ld21;->q:Ld21;

    .line 712
    .line 713
    invoke-virtual {p0, v1, v0}, Ljl1;->c(Ld21;Ljava/io/IOException;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 714
    .line 715
    .line 716
    :catch_1
    :goto_d
    sget-object p0, Lt64;->a:Lt64;

    .line 717
    .line 718
    return-object p0

    .line 719
    :pswitch_f
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 720
    .line 721
    check-cast v0, Lw33;

    .line 722
    .line 723
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 724
    .line 725
    check-cast p0, Lna1;

    .line 726
    .line 727
    sget-object v1, Lbv2;->a:Llc0;

    .line 728
    .line 729
    invoke-static {p0, v1}, Ln44;->g0(Lfc0;Lh03;)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object p0

    .line 733
    iput-object p0, v0, Lw33;->n:Ljava/lang/Object;

    .line 734
    .line 735
    sget-object p0, Lt64;->a:Lt64;

    .line 736
    .line 737
    return-object p0

    .line 738
    :pswitch_10
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 739
    .line 740
    check-cast v0, Lut0;

    .line 741
    .line 742
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 743
    .line 744
    check-cast p0, Lyh2;

    .line 745
    .line 746
    invoke-virtual {v0, p0, v4}, Lut0;->e(Lyh2;Z)V

    .line 747
    .line 748
    .line 749
    sget-object p0, Lt64;->a:Lt64;

    .line 750
    .line 751
    return-object p0

    .line 752
    :pswitch_11
    iget-object v0, p0, Lh4;->p:Ljava/lang/Object;

    .line 753
    .line 754
    check-cast v0, Lpg2;

    .line 755
    .line 756
    iget-object p0, p0, Lh4;->o:Ljava/lang/Object;

    .line 757
    .line 758
    check-cast p0, Lts2;

    .line 759
    .line 760
    sget-object v1, Lit0;->b:Ljava/io/File;

    .line 761
    .line 762
    if-nez v1, :cond_10

    .line 763
    .line 764
    goto :goto_f

    .line 765
    :cond_10
    monitor-enter v1

    .line 766
    :try_start_4
    const-string v2, ""

    .line 767
    .line 768
    invoke-static {v1, v2}, Lix;->c0(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 769
    .line 770
    .line 771
    goto :goto_e

    .line 772
    :catchall_2
    move-exception v0

    .line 773
    move-object p0, v0

    .line 774
    goto :goto_10

    .line 775
    :catch_2
    :try_start_5
    sget-object v2, Lez3;->a:Lra3;

    .line 776
    .line 777
    new-array v3, v4, [Ljava/lang/Object;

    .line 778
    .line 779
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 780
    .line 781
    .line 782
    invoke-static {v3}, Lra3;->g([Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 783
    .line 784
    .line 785
    :goto_e
    monitor-exit v1

    .line 786
    :goto_f
    const-string v1, ""

    .line 787
    .line 788
    invoke-interface {v0, v1}, Lpg2;->setValue(Ljava/lang/Object;)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {p0, v4}, Lts2;->h(I)V

    .line 792
    .line 793
    .line 794
    sget-object p0, Lt64;->a:Lt64;

    .line 795
    .line 796
    return-object p0

    .line 797
    :goto_10
    monitor-exit v1

    .line 798
    throw p0

    .line 799
    :pswitch_12
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 800
    .line 801
    check-cast v0, Landroid/content/Context;

    .line 802
    .line 803
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 804
    .line 805
    check-cast p0, Lpg2;

    .line 806
    .line 807
    new-instance v1, Landroid/content/Intent;

    .line 808
    .line 809
    const-string v2, "android.intent.action.SEND"

    .line 810
    .line 811
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    const-string v2, "text/plain"

    .line 815
    .line 816
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    .line 818
    .line 819
    const-string v2, "android.intent.extra.SUBJECT"

    .line 820
    .line 821
    const-string v3, "Sage Diagnostic Logs"

    .line 822
    .line 823
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    .line 825
    .line 826
    const-string v2, "android.intent.extra.TEXT"

    .line 827
    .line 828
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object p0

    .line 832
    check-cast p0, Ljava/lang/String;

    .line 833
    .line 834
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    .line 836
    .line 837
    const-string p0, "Share Logs via"

    .line 838
    .line 839
    invoke-static {v1, p0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 840
    .line 841
    .line 842
    move-result-object p0

    .line 843
    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 844
    .line 845
    .line 846
    sget-object p0, Lt64;->a:Lt64;

    .line 847
    .line 848
    return-object p0

    .line 849
    :pswitch_13
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 850
    .line 851
    check-cast v0, Ln8;

    .line 852
    .line 853
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 854
    .line 855
    check-cast p0, Landroid/content/Context;

    .line 856
    .line 857
    iget-object v0, v0, Ln8;->c:Lwr3;

    .line 858
    .line 859
    invoke-virtual {v0}, Lwr3;->getValue()Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    move-object v3, v0

    .line 864
    check-cast v3, Ljava/util/List;

    .line 865
    .line 866
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 867
    .line 868
    .line 869
    move-result v0

    .line 870
    if-eqz v0, :cond_11

    .line 871
    .line 872
    const-string v0, "No events logged."

    .line 873
    .line 874
    goto :goto_11

    .line 875
    :cond_11
    const-string v4, "\n\n"

    .line 876
    .line 877
    new-instance v7, Lt3;

    .line 878
    .line 879
    invoke-direct {v7, v2}, Lt3;-><init>(I)V

    .line 880
    .line 881
    .line 882
    const/16 v8, 0x1e

    .line 883
    .line 884
    const/4 v5, 0x0

    .line 885
    const/4 v6, 0x0

    .line 886
    invoke-static/range {v3 .. v8}, Lo70;->n0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lpe1;I)Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v0

    .line 890
    :goto_11
    new-instance v1, Landroid/content/Intent;

    .line 891
    .line 892
    const-string v2, "android.intent.action.SEND"

    .line 893
    .line 894
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    const-string v2, "text/plain"

    .line 898
    .line 899
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 900
    .line 901
    .line 902
    const-string v2, "android.intent.extra.SUBJECT"

    .line 903
    .line 904
    const-string v3, "Sage Analytics Debug Logs"

    .line 905
    .line 906
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 907
    .line 908
    .line 909
    const-string v2, "android.intent.extra.TEXT"

    .line 910
    .line 911
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 912
    .line 913
    .line 914
    const-string v0, "Share Logs via"

    .line 915
    .line 916
    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 921
    .line 922
    .line 923
    sget-object p0, Lt64;->a:Lt64;

    .line 924
    .line 925
    return-object p0

    .line 926
    :pswitch_14
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 927
    .line 928
    check-cast v0, Lcc0;

    .line 929
    .line 930
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 931
    .line 932
    iget-object v0, v0, Lcc0;->n:Lag1;

    .line 933
    .line 934
    iget-object v1, v0, Lag1;->c:Lun3;

    .line 935
    .line 936
    invoke-virtual {v1}, Lun3;->e()Ltn3;

    .line 937
    .line 938
    .line 939
    move-result-object v5

    .line 940
    move v6, v4

    .line 941
    :goto_12
    :try_start_6
    iget v7, v1, Lun3;->o:I

    .line 942
    .line 943
    if-ge v6, v7, :cond_1b

    .line 944
    .line 945
    invoke-virtual {v5, v6}, Ltn3;->l(I)Z

    .line 946
    .line 947
    .line 948
    move-result v7

    .line 949
    if-eqz v7, :cond_15

    .line 950
    .line 951
    invoke-virtual {v5, v6}, Ltn3;->n(I)Ljava/lang/Object;

    .line 952
    .line 953
    .line 954
    move-result-object v7

    .line 955
    if-eq v7, p0, :cond_14

    .line 956
    .line 957
    instance-of v8, v7, Leg1;

    .line 958
    .line 959
    if-eqz v8, :cond_12

    .line 960
    .line 961
    check-cast v7, Leg1;

    .line 962
    .line 963
    goto :goto_13

    .line 964
    :cond_12
    move-object v7, v3

    .line 965
    :goto_13
    if-eqz v7, :cond_13

    .line 966
    .line 967
    iget-object v7, v7, Leg1;->a:Lm53;

    .line 968
    .line 969
    goto :goto_14

    .line 970
    :cond_13
    move-object v7, v3

    .line 971
    :goto_14
    if-ne v7, p0, :cond_15

    .line 972
    .line 973
    :cond_14
    new-instance p0, Lun2;

    .line 974
    .line 975
    invoke-direct {p0, v6, v3}, Lun2;-><init>(ILjava/lang/Integer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 976
    .line 977
    .line 978
    invoke-virtual {v5}, Ltn3;->c()V

    .line 979
    .line 980
    .line 981
    move-object v3, p0

    .line 982
    goto :goto_1a

    .line 983
    :catchall_3
    move-exception v0

    .line 984
    move-object p0, v0

    .line 985
    goto/16 :goto_1c

    .line 986
    .line 987
    :cond_15
    :try_start_7
    iget-object v7, v5, Ltn3;->b:[I

    .line 988
    .line 989
    invoke-static {v7, v6}, Lwn3;->b([II)I

    .line 990
    .line 991
    .line 992
    move-result v8

    .line 993
    add-int/lit8 v9, v6, 0x1

    .line 994
    .line 995
    iget v10, v5, Ltn3;->c:I

    .line 996
    .line 997
    if-ge v9, v10, :cond_16

    .line 998
    .line 999
    mul-int/lit8 v10, v9, 0x5

    .line 1000
    .line 1001
    add-int/2addr v10, v2

    .line 1002
    aget v7, v7, v10

    .line 1003
    .line 1004
    goto :goto_15

    .line 1005
    :cond_16
    iget v7, v5, Ltn3;->e:I

    .line 1006
    .line 1007
    :goto_15
    sub-int/2addr v7, v8

    .line 1008
    move v8, v4

    .line 1009
    :goto_16
    if-ge v8, v7, :cond_1c

    .line 1010
    .line 1011
    invoke-virtual {v5, v6, v8}, Ltn3;->h(II)Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v10

    .line 1015
    if-eq v10, p0, :cond_1a

    .line 1016
    .line 1017
    instance-of v11, v10, Leg1;

    .line 1018
    .line 1019
    if-eqz v11, :cond_17

    .line 1020
    .line 1021
    check-cast v10, Leg1;

    .line 1022
    .line 1023
    goto :goto_17

    .line 1024
    :cond_17
    move-object v10, v3

    .line 1025
    :goto_17
    if-eqz v10, :cond_18

    .line 1026
    .line 1027
    iget-object v10, v10, Leg1;->a:Lm53;

    .line 1028
    .line 1029
    goto :goto_18

    .line 1030
    :cond_18
    move-object v10, v3

    .line 1031
    :goto_18
    if-ne v10, p0, :cond_19

    .line 1032
    .line 1033
    goto :goto_19

    .line 1034
    :cond_19
    add-int/lit8 v8, v8, 0x1

    .line 1035
    .line 1036
    goto :goto_16

    .line 1037
    :cond_1a
    :goto_19
    new-instance v3, Lun2;

    .line 1038
    .line 1039
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1040
    .line 1041
    .line 1042
    move-result-object p0

    .line 1043
    invoke-direct {v3, v6, p0}, Lun2;-><init>(ILjava/lang/Integer;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1044
    .line 1045
    .line 1046
    :cond_1b
    invoke-virtual {v5}, Ltn3;->c()V

    .line 1047
    .line 1048
    .line 1049
    goto :goto_1a

    .line 1050
    :cond_1c
    move v6, v9

    .line 1051
    goto :goto_12

    .line 1052
    :goto_1a
    if-eqz v3, :cond_1d

    .line 1053
    .line 1054
    iget p0, v3, Lun2;->a:I

    .line 1055
    .line 1056
    iget-object v2, v3, Lun2;->b:Ljava/lang/Integer;

    .line 1057
    .line 1058
    invoke-virtual {v1}, Lun3;->e()Ltn3;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v1

    .line 1062
    :try_start_8
    invoke-static {v1, p0, v2}, Lqn0;->K(Ltn3;ILjava/lang/Integer;)Ljava/util/ArrayList;

    .line 1063
    .line 1064
    .line 1065
    move-result-object p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1066
    invoke-virtual {v1}, Ltn3;->c()V

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v0}, Lag1;->D()Ljava/util/List;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v1

    .line 1073
    invoke-static {p0, v1}, Lo70;->s0(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 1074
    .line 1075
    .line 1076
    move-result-object p0

    .line 1077
    goto :goto_1b

    .line 1078
    :catchall_4
    move-exception v0

    .line 1079
    move-object p0, v0

    .line 1080
    invoke-virtual {v1}, Ltn3;->c()V

    .line 1081
    .line 1082
    .line 1083
    throw p0

    .line 1084
    :cond_1d
    sget-object p0, Lg01;->n:Lg01;

    .line 1085
    .line 1086
    :goto_1b
    new-instance v1, Lhb0;

    .line 1087
    .line 1088
    iget-boolean v0, v0, Lag1;->C:Z

    .line 1089
    .line 1090
    invoke-direct {v1, p0, v0}, Lhb0;-><init>(Ljava/util/List;Z)V

    .line 1091
    .line 1092
    .line 1093
    return-object v1

    .line 1094
    :goto_1c
    invoke-virtual {v5}, Ltn3;->c()V

    .line 1095
    .line 1096
    .line 1097
    throw p0

    .line 1098
    :pswitch_15
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 1099
    .line 1100
    check-cast v0, Ly41;

    .line 1101
    .line 1102
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 1103
    .line 1104
    check-cast p0, Li50;

    .line 1105
    .line 1106
    new-instance v1, Ljs2;

    .line 1107
    .line 1108
    invoke-direct {v1, v0, p0}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1109
    .line 1110
    .line 1111
    invoke-static {v1}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 1112
    .line 1113
    .line 1114
    move-result-object p0

    .line 1115
    return-object p0

    .line 1116
    :pswitch_16
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 1117
    .line 1118
    check-cast v0, Ljava/lang/String;

    .line 1119
    .line 1120
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 1121
    .line 1122
    check-cast p0, Leg4;

    .line 1123
    .line 1124
    iget-object v1, p0, Leg4;->c:Landroidx/work/impl/WorkDatabase;

    .line 1125
    .line 1126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1127
    .line 1128
    .line 1129
    new-instance v2, Ll20;

    .line 1130
    .line 1131
    invoke-direct {v2, v1, v0, p0, v4}, Ll20;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v1, v2}, Lga3;->o(Ljava/lang/Runnable;)V

    .line 1135
    .line 1136
    .line 1137
    iget-object v0, p0, Leg4;->b:Lmd0;

    .line 1138
    .line 1139
    iget-object p0, p0, Leg4;->e:Ljava/util/List;

    .line 1140
    .line 1141
    invoke-static {v0, v1, p0}, Lzd3;->b(Lmd0;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 1142
    .line 1143
    .line 1144
    sget-object p0, Lt64;->a:Lt64;

    .line 1145
    .line 1146
    return-object p0

    .line 1147
    :pswitch_17
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 1148
    .line 1149
    check-cast v0, Leg4;

    .line 1150
    .line 1151
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 1152
    .line 1153
    check-cast p0, Ljava/util/UUID;

    .line 1154
    .line 1155
    iget-object v1, v0, Leg4;->c:Landroidx/work/impl/WorkDatabase;

    .line 1156
    .line 1157
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1158
    .line 1159
    .line 1160
    new-instance v3, Lh7;

    .line 1161
    .line 1162
    invoke-direct {v3, v2, v0, p0}, Lh7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1163
    .line 1164
    .line 1165
    invoke-virtual {v1, v3}, Lga3;->o(Ljava/lang/Runnable;)V

    .line 1166
    .line 1167
    .line 1168
    iget-object p0, v0, Leg4;->b:Lmd0;

    .line 1169
    .line 1170
    iget-object v1, v0, Leg4;->c:Landroidx/work/impl/WorkDatabase;

    .line 1171
    .line 1172
    iget-object v0, v0, Leg4;->e:Ljava/util/List;

    .line 1173
    .line 1174
    invoke-static {p0, v1, v0}, Lzd3;->b(Lmd0;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 1175
    .line 1176
    .line 1177
    sget-object p0, Lt64;->a:Lt64;

    .line 1178
    .line 1179
    return-object p0

    .line 1180
    :pswitch_18
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 1181
    .line 1182
    check-cast v0, Lcr;

    .line 1183
    .line 1184
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 1185
    .line 1186
    check-cast p0, Lbr;

    .line 1187
    .line 1188
    iget-object v0, v0, Lcr;->a:Lcf0;

    .line 1189
    .line 1190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1191
    .line 1192
    .line 1193
    iget-object v1, v0, Lcf0;->c:Ljava/lang/Object;

    .line 1194
    .line 1195
    monitor-enter v1

    .line 1196
    :try_start_9
    iget-object v2, v0, Lcf0;->e:Ljava/lang/Object;

    .line 1197
    .line 1198
    check-cast v2, Ljava/util/LinkedHashSet;

    .line 1199
    .line 1200
    invoke-virtual {v2, p0}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 1201
    .line 1202
    .line 1203
    move-result p0

    .line 1204
    if-eqz p0, :cond_1e

    .line 1205
    .line 1206
    iget-object p0, v0, Lcf0;->e:Ljava/lang/Object;

    .line 1207
    .line 1208
    check-cast p0, Ljava/util/LinkedHashSet;

    .line 1209
    .line 1210
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 1211
    .line 1212
    .line 1213
    move-result p0

    .line 1214
    if-eqz p0, :cond_1e

    .line 1215
    .line 1216
    invoke-virtual {v0}, Lcf0;->f()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1217
    .line 1218
    .line 1219
    goto :goto_1d

    .line 1220
    :catchall_5
    move-exception v0

    .line 1221
    move-object p0, v0

    .line 1222
    goto :goto_1e

    .line 1223
    :cond_1e
    :goto_1d
    monitor-exit v1

    .line 1224
    sget-object p0, Lt64;->a:Lt64;

    .line 1225
    .line 1226
    return-object p0

    .line 1227
    :goto_1e
    monitor-exit v1

    .line 1228
    throw p0

    .line 1229
    :pswitch_19
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 1230
    .line 1231
    check-cast v0, Lhq;

    .line 1232
    .line 1233
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 1234
    .line 1235
    check-cast p0, Lzy1;

    .line 1236
    .line 1237
    iget-object v1, v0, Lhq;->C:Ljl3;

    .line 1238
    .line 1239
    iget-object v2, p0, Lzy1;->n:Lx20;

    .line 1240
    .line 1241
    invoke-interface {v2}, Lkx0;->d()J

    .line 1242
    .line 1243
    .line 1244
    move-result-wide v2

    .line 1245
    invoke-virtual {p0}, Lzy1;->getLayoutDirection()Lhy1;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v4

    .line 1249
    invoke-interface {v1, v2, v3, v4, p0}, Ljl3;->a(JLhy1;Las0;)Lfl4;

    .line 1250
    .line 1251
    .line 1252
    move-result-object p0

    .line 1253
    iput-object p0, v0, Lhq;->H:Lfl4;

    .line 1254
    .line 1255
    sget-object p0, Lt64;->a:Lt64;

    .line 1256
    .line 1257
    return-object p0

    .line 1258
    :pswitch_1a
    iget-object v0, p0, Lh4;->p:Ljava/lang/Object;

    .line 1259
    .line 1260
    check-cast v0, Lra0;

    .line 1261
    .line 1262
    iget-object p0, p0, Lh4;->o:Ljava/lang/Object;

    .line 1263
    .line 1264
    check-cast p0, Lne1;

    .line 1265
    .line 1266
    iput-object p0, v0, Lra0;->c:Lne1;

    .line 1267
    .line 1268
    sget-object p0, Lt64;->a:Lt64;

    .line 1269
    .line 1270
    return-object p0

    .line 1271
    :pswitch_1b
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 1272
    .line 1273
    check-cast v0, Ln30;

    .line 1274
    .line 1275
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 1276
    .line 1277
    invoke-interface {v0, p0}, Lyh3;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    .line 1279
    .line 1280
    sget-object p0, Lt64;->a:Lt64;

    .line 1281
    .line 1282
    return-object p0

    .line 1283
    :pswitch_1c
    iget-object v0, p0, Lh4;->o:Ljava/lang/Object;

    .line 1284
    .line 1285
    check-cast v0, Lne1;

    .line 1286
    .line 1287
    iget-object p0, p0, Lh4;->p:Ljava/lang/Object;

    .line 1288
    .line 1289
    check-cast p0, Lpg2;

    .line 1290
    .line 1291
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1292
    .line 1293
    invoke-interface {p0, v1}, Lpg2;->setValue(Ljava/lang/Object;)V

    .line 1294
    .line 1295
    .line 1296
    invoke-interface {v0}, Lne1;->a()Ljava/lang/Object;

    .line 1297
    .line 1298
    .line 1299
    sget-object p0, Lt64;->a:Lt64;

    .line 1300
    .line 1301
    return-object p0

    .line 1302
    nop

    .line 1303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

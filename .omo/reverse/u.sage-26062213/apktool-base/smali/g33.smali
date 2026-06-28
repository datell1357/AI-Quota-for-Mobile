.class public final Lg33;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lff1;


# instance fields
.field public synthetic A:Lqc;

.field public final synthetic B:Lh33;

.field public r:Ljava/util/List;

.field public s:Ljava/util/List;

.field public t:Ljava/util/List;

.field public u:Llg2;

.field public v:Llg2;

.field public w:Llg2;

.field public x:Ljava/util/Set;

.field public y:Llg2;

.field public z:I


# direct methods
.method public constructor <init>(Lh33;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg33;->B:Lh33;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static final t(Lh33;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llg2;Llg2;Llg2;Llg2;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    move-object/from16 v3, p7

    .line 8
    .line 9
    iget-object v4, v0, Lh33;->c:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v4

    .line 12
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 13
    .line 14
    .line 15
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    .line 16
    .line 17
    .line 18
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    const/4 v7, 0x0

    .line 23
    :goto_0
    if-ge v7, v5, :cond_0

    .line 24
    .line 25
    move-object/from16 v8, p3

    .line 26
    .line 27
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    check-cast v9, Lec0;

    .line 32
    .line 33
    invoke-virtual {v9}, Lec0;->a()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v9}, Lh33;->L(Lec0;)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v7, v7, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto/16 :goto_7

    .line 44
    .line 45
    :cond_0
    move-object/from16 v8, p3

    .line 46
    .line 47
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 48
    .line 49
    .line 50
    iget-object v5, v1, Llg2;->b:[Ljava/lang/Object;

    .line 51
    .line 52
    iget-object v7, v1, Llg2;->a:[J

    .line 53
    .line 54
    array-length v8, v7

    .line 55
    add-int/lit8 v8, v8, -0x2

    .line 56
    .line 57
    const/16 v6, 0x8

    .line 58
    .line 59
    const-wide/16 p2, 0x80

    .line 60
    .line 61
    if-ltz v8, :cond_4

    .line 62
    .line 63
    const/4 v9, 0x0

    .line 64
    const-wide/16 v16, 0xff

    .line 65
    .line 66
    :goto_1
    aget-wide v11, v7, v9

    .line 67
    .line 68
    const/4 v10, 0x7

    .line 69
    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    not-long v13, v11

    .line 75
    shl-long/2addr v13, v10

    .line 76
    and-long/2addr v13, v11

    .line 77
    and-long v13, v13, v18

    .line 78
    .line 79
    cmp-long v13, v13, v18

    .line 80
    .line 81
    if-eqz v13, :cond_3

    .line 82
    .line 83
    sub-int v13, v9, v8

    .line 84
    .line 85
    not-int v13, v13

    .line 86
    ushr-int/lit8 v13, v13, 0x1f

    .line 87
    .line 88
    rsub-int/lit8 v13, v13, 0x8

    .line 89
    .line 90
    const/4 v14, 0x0

    .line 91
    :goto_2
    if-ge v14, v13, :cond_2

    .line 92
    .line 93
    and-long v20, v11, v16

    .line 94
    .line 95
    cmp-long v15, v20, p2

    .line 96
    .line 97
    if-gez v15, :cond_1

    .line 98
    .line 99
    shl-int/lit8 v15, v9, 0x3

    .line 100
    .line 101
    add-int/2addr v15, v14

    .line 102
    aget-object v15, v5, v15

    .line 103
    .line 104
    check-cast v15, Lec0;

    .line 105
    .line 106
    invoke-virtual {v15}, Lec0;->a()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v15}, Lh33;->L(Lec0;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    shr-long/2addr v11, v6

    .line 113
    add-int/lit8 v14, v14, 0x1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_2
    if-ne v13, v6, :cond_5

    .line 117
    .line 118
    :cond_3
    if-eq v9, v8, :cond_5

    .line 119
    .line 120
    add-int/lit8 v9, v9, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    const/4 v10, 0x7

    .line 124
    const-wide/16 v16, 0xff

    .line 125
    .line 126
    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :cond_5
    invoke-virtual {v1}, Llg2;->b()V

    .line 132
    .line 133
    .line 134
    iget-object v1, v2, Llg2;->b:[Ljava/lang/Object;

    .line 135
    .line 136
    iget-object v5, v2, Llg2;->a:[J

    .line 137
    .line 138
    array-length v7, v5

    .line 139
    add-int/lit8 v7, v7, -0x2

    .line 140
    .line 141
    if-ltz v7, :cond_9

    .line 142
    .line 143
    const/4 v8, 0x0

    .line 144
    :goto_3
    aget-wide v11, v5, v8

    .line 145
    .line 146
    not-long v13, v11

    .line 147
    shl-long/2addr v13, v10

    .line 148
    and-long/2addr v13, v11

    .line 149
    and-long v13, v13, v18

    .line 150
    .line 151
    cmp-long v9, v13, v18

    .line 152
    .line 153
    if-eqz v9, :cond_8

    .line 154
    .line 155
    sub-int v9, v8, v7

    .line 156
    .line 157
    not-int v9, v9

    .line 158
    ushr-int/lit8 v9, v9, 0x1f

    .line 159
    .line 160
    rsub-int/lit8 v9, v9, 0x8

    .line 161
    .line 162
    const/4 v13, 0x0

    .line 163
    :goto_4
    if-ge v13, v9, :cond_7

    .line 164
    .line 165
    and-long v14, v11, v16

    .line 166
    .line 167
    cmp-long v14, v14, p2

    .line 168
    .line 169
    if-gez v14, :cond_6

    .line 170
    .line 171
    shl-int/lit8 v14, v8, 0x3

    .line 172
    .line 173
    add-int/2addr v14, v13

    .line 174
    aget-object v14, v1, v14

    .line 175
    .line 176
    check-cast v14, Lec0;

    .line 177
    .line 178
    invoke-virtual {v14}, Lec0;->g()V

    .line 179
    .line 180
    .line 181
    :cond_6
    shr-long/2addr v11, v6

    .line 182
    add-int/lit8 v13, v13, 0x1

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_7
    if-ne v9, v6, :cond_9

    .line 186
    .line 187
    :cond_8
    if-eq v8, v7, :cond_9

    .line 188
    .line 189
    add-int/lit8 v8, v8, 0x1

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_9
    invoke-virtual {v2}, Llg2;->b()V

    .line 193
    .line 194
    .line 195
    invoke-virtual/range {p6 .. p6}, Llg2;->b()V

    .line 196
    .line 197
    .line 198
    iget-object v1, v3, Llg2;->b:[Ljava/lang/Object;

    .line 199
    .line 200
    iget-object v2, v3, Llg2;->a:[J

    .line 201
    .line 202
    array-length v5, v2

    .line 203
    add-int/lit8 v5, v5, -0x2

    .line 204
    .line 205
    if-ltz v5, :cond_d

    .line 206
    .line 207
    const/4 v7, 0x0

    .line 208
    :goto_5
    aget-wide v8, v2, v7

    .line 209
    .line 210
    not-long v11, v8

    .line 211
    shl-long/2addr v11, v10

    .line 212
    and-long/2addr v11, v8

    .line 213
    and-long v11, v11, v18

    .line 214
    .line 215
    cmp-long v11, v11, v18

    .line 216
    .line 217
    if-eqz v11, :cond_c

    .line 218
    .line 219
    sub-int v11, v7, v5

    .line 220
    .line 221
    not-int v11, v11

    .line 222
    ushr-int/lit8 v11, v11, 0x1f

    .line 223
    .line 224
    rsub-int/lit8 v11, v11, 0x8

    .line 225
    .line 226
    const/4 v12, 0x0

    .line 227
    :goto_6
    if-ge v12, v11, :cond_b

    .line 228
    .line 229
    and-long v13, v8, v16

    .line 230
    .line 231
    cmp-long v13, v13, p2

    .line 232
    .line 233
    if-gez v13, :cond_a

    .line 234
    .line 235
    shl-int/lit8 v13, v7, 0x3

    .line 236
    .line 237
    add-int/2addr v13, v12

    .line 238
    aget-object v13, v1, v13

    .line 239
    .line 240
    check-cast v13, Lec0;

    .line 241
    .line 242
    invoke-virtual {v13}, Lec0;->a()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v13}, Lh33;->L(Lec0;)V

    .line 246
    .line 247
    .line 248
    :cond_a
    shr-long/2addr v8, v6

    .line 249
    add-int/lit8 v12, v12, 0x1

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_b
    if-ne v11, v6, :cond_d

    .line 253
    .line 254
    :cond_c
    if-eq v7, v5, :cond_d

    .line 255
    .line 256
    add-int/lit8 v7, v7, 0x1

    .line 257
    .line 258
    goto :goto_5

    .line 259
    :cond_d
    invoke-virtual {v3}, Llg2;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    .line 261
    .line 262
    monitor-exit v4

    .line 263
    return-void

    .line 264
    :goto_7
    monitor-exit v4

    .line 265
    throw v0
.end method

.method public static final u(Ljava/util/List;Lh33;)V
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lh33;->c:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p1, Lh33;->k:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Loe2;

    .line 21
    .line 22
    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object p0, p1, Lh33;->k:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0

    .line 38
    throw p0
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lqi0;

    .line 2
    .line 3
    check-cast p2, Lqc;

    .line 4
    .line 5
    check-cast p3, Ldh0;

    .line 6
    .line 7
    new-instance p1, Lg33;

    .line 8
    .line 9
    iget-object p0, p0, Lg33;->B:Lh33;

    .line 10
    .line 11
    invoke-direct {p1, p0, p3}, Lg33;-><init>(Lh33;Ldh0;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p1, Lg33;->A:Lqc;

    .line 15
    .line 16
    sget-object p0, Lt64;->a:Lt64;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lg33;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    sget-object p0, Lri0;->n:Lri0;

    .line 22
    .line 23
    return-object p0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lri0;->n:Lri0;

    .line 4
    .line 5
    iget v2, v0, Lg33;->z:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    if-eq v2, v5, :cond_1

    .line 13
    .line 14
    if-ne v2, v4, :cond_0

    .line 15
    .line 16
    iget-object v2, v0, Lg33;->y:Llg2;

    .line 17
    .line 18
    iget-object v6, v0, Lg33;->x:Ljava/util/Set;

    .line 19
    .line 20
    check-cast v6, Ljava/util/Set;

    .line 21
    .line 22
    iget-object v7, v0, Lg33;->w:Llg2;

    .line 23
    .line 24
    iget-object v8, v0, Lg33;->v:Llg2;

    .line 25
    .line 26
    iget-object v9, v0, Lg33;->u:Llg2;

    .line 27
    .line 28
    iget-object v10, v0, Lg33;->t:Ljava/util/List;

    .line 29
    .line 30
    iget-object v11, v0, Lg33;->s:Ljava/util/List;

    .line 31
    .line 32
    iget-object v12, v0, Lg33;->r:Ljava/util/List;

    .line 33
    .line 34
    iget-object v13, v0, Lg33;->A:Lqc;

    .line 35
    .line 36
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    move-object/from16 v27, v13

    .line 40
    .line 41
    move-object v13, v2

    .line 42
    move-object/from16 v2, v27

    .line 43
    .line 44
    goto/16 :goto_6

    .line 45
    .line 46
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v3

    .line 52
    :cond_1
    iget-object v2, v0, Lg33;->y:Llg2;

    .line 53
    .line 54
    iget-object v6, v0, Lg33;->x:Ljava/util/Set;

    .line 55
    .line 56
    check-cast v6, Ljava/util/Set;

    .line 57
    .line 58
    iget-object v7, v0, Lg33;->w:Llg2;

    .line 59
    .line 60
    iget-object v8, v0, Lg33;->v:Llg2;

    .line 61
    .line 62
    iget-object v9, v0, Lg33;->u:Llg2;

    .line 63
    .line 64
    iget-object v10, v0, Lg33;->t:Ljava/util/List;

    .line 65
    .line 66
    iget-object v11, v0, Lg33;->s:Ljava/util/List;

    .line 67
    .line 68
    iget-object v12, v0, Lg33;->r:Ljava/util/List;

    .line 69
    .line 70
    iget-object v13, v0, Lg33;->A:Lqc;

    .line 71
    .line 72
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    move-object/from16 v19, v2

    .line 76
    .line 77
    move-object v2, v13

    .line 78
    :goto_0
    move-object/from16 v25, v6

    .line 79
    .line 80
    move-object/from16 v18, v7

    .line 81
    .line 82
    move-object/from16 v24, v8

    .line 83
    .line 84
    move-object/from16 v22, v9

    .line 85
    .line 86
    move-object/from16 v23, v10

    .line 87
    .line 88
    move-object/from16 v21, v11

    .line 89
    .line 90
    move-object/from16 v20, v12

    .line 91
    .line 92
    goto/16 :goto_4

    .line 93
    .line 94
    :cond_2
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object v2, v0, Lg33;->A:Lqc;

    .line 98
    .line 99
    new-instance v6, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance v7, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    new-instance v8, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    sget-object v9, Lud3;->a:Llg2;

    .line 115
    .line 116
    new-instance v9, Llg2;

    .line 117
    .line 118
    invoke-direct {v9}, Llg2;-><init>()V

    .line 119
    .line 120
    .line 121
    new-instance v10, Llg2;

    .line 122
    .line 123
    invoke-direct {v10}, Llg2;-><init>()V

    .line 124
    .line 125
    .line 126
    new-instance v11, Llg2;

    .line 127
    .line 128
    invoke-direct {v11}, Llg2;-><init>()V

    .line 129
    .line 130
    .line 131
    new-instance v12, Lvd3;

    .line 132
    .line 133
    invoke-direct {v12, v11}, Lvd3;-><init>(Llg2;)V

    .line 134
    .line 135
    .line 136
    new-instance v13, Llg2;

    .line 137
    .line 138
    invoke-direct {v13}, Llg2;-><init>()V

    .line 139
    .line 140
    .line 141
    move-object/from16 v27, v12

    .line 142
    .line 143
    move-object v12, v6

    .line 144
    move-object/from16 v6, v27

    .line 145
    .line 146
    move-object/from16 v27, v11

    .line 147
    .line 148
    move-object v11, v7

    .line 149
    move-object/from16 v7, v27

    .line 150
    .line 151
    move-object/from16 v27, v10

    .line 152
    .line 153
    move-object v10, v8

    .line 154
    move-object/from16 v8, v27

    .line 155
    .line 156
    :goto_1
    iget-object v14, v0, Lg33;->B:Lh33;

    .line 157
    .line 158
    iget-object v14, v14, Lh33;->c:Ljava/lang/Object;

    .line 159
    .line 160
    monitor-enter v14

    .line 161
    monitor-exit v14

    .line 162
    iget-object v14, v0, Lg33;->B:Lh33;

    .line 163
    .line 164
    iput-object v2, v0, Lg33;->A:Lqc;

    .line 165
    .line 166
    iput-object v12, v0, Lg33;->r:Ljava/util/List;

    .line 167
    .line 168
    iput-object v11, v0, Lg33;->s:Ljava/util/List;

    .line 169
    .line 170
    iput-object v10, v0, Lg33;->t:Ljava/util/List;

    .line 171
    .line 172
    iput-object v9, v0, Lg33;->u:Llg2;

    .line 173
    .line 174
    iput-object v8, v0, Lg33;->v:Llg2;

    .line 175
    .line 176
    iput-object v7, v0, Lg33;->w:Llg2;

    .line 177
    .line 178
    move-object v15, v6

    .line 179
    check-cast v15, Ljava/util/Set;

    .line 180
    .line 181
    iput-object v15, v0, Lg33;->x:Ljava/util/Set;

    .line 182
    .line 183
    iput-object v13, v0, Lg33;->y:Llg2;

    .line 184
    .line 185
    iput v5, v0, Lg33;->z:I

    .line 186
    .line 187
    invoke-virtual {v14}, Lh33;->C()Z

    .line 188
    .line 189
    .line 190
    move-result v15

    .line 191
    if-nez v15, :cond_6

    .line 192
    .line 193
    new-instance v15, Lo20;

    .line 194
    .line 195
    invoke-static {v0}, Ldm0;->A(Ldh0;)Ldh0;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-direct {v15, v5, v3}, Lo20;-><init>(ILdh0;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v15}, Lo20;->x()V

    .line 203
    .line 204
    .line 205
    iget-object v3, v14, Lh33;->c:Ljava/lang/Object;

    .line 206
    .line 207
    monitor-enter v3

    .line 208
    :try_start_0
    invoke-virtual {v14}, Lh33;->C()Z

    .line 209
    .line 210
    .line 211
    move-result v16

    .line 212
    if-eqz v16, :cond_3

    .line 213
    .line 214
    move-object v14, v15

    .line 215
    goto :goto_2

    .line 216
    :cond_3
    iput-object v15, v14, Lh33;->r:Lo20;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .line 218
    const/4 v14, 0x0

    .line 219
    :goto_2
    monitor-exit v3

    .line 220
    if-eqz v14, :cond_4

    .line 221
    .line 222
    sget-object v3, Lt64;->a:Lt64;

    .line 223
    .line 224
    invoke-virtual {v14, v3}, Lo20;->g(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    :cond_4
    invoke-virtual {v15}, Lo20;->v()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    sget-object v14, Lri0;->n:Lri0;

    .line 232
    .line 233
    if-ne v3, v14, :cond_5

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_5
    sget-object v3, Lt64;->a:Lt64;

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :catchall_0
    move-exception v0

    .line 240
    monitor-exit v3

    .line 241
    throw v0

    .line 242
    :cond_6
    sget-object v3, Lt64;->a:Lt64;

    .line 243
    .line 244
    :goto_3
    if-ne v3, v1, :cond_7

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_7
    move-object/from16 v19, v13

    .line 248
    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :goto_4
    iget-object v3, v0, Lg33;->B:Lh33;

    .line 252
    .line 253
    sget-object v6, Lh33;->z:Lwr3;

    .line 254
    .line 255
    invoke-virtual {v3}, Lh33;->K()Z

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    if-eqz v3, :cond_c

    .line 260
    .line 261
    iget-object v3, v0, Lg33;->B:Lh33;

    .line 262
    .line 263
    new-instance v16, Lc4;

    .line 264
    .line 265
    const/16 v26, 0x1

    .line 266
    .line 267
    move-object/from16 v17, v3

    .line 268
    .line 269
    invoke-direct/range {v16 .. v26}, Lc4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 270
    .line 271
    .line 272
    move-object/from16 v3, v16

    .line 273
    .line 274
    move-object/from16 v7, v18

    .line 275
    .line 276
    move-object/from16 v13, v19

    .line 277
    .line 278
    move-object/from16 v12, v20

    .line 279
    .line 280
    move-object/from16 v11, v21

    .line 281
    .line 282
    move-object/from16 v9, v22

    .line 283
    .line 284
    move-object/from16 v10, v23

    .line 285
    .line 286
    move-object/from16 v8, v24

    .line 287
    .line 288
    iput-object v2, v0, Lg33;->A:Lqc;

    .line 289
    .line 290
    iput-object v12, v0, Lg33;->r:Ljava/util/List;

    .line 291
    .line 292
    iput-object v11, v0, Lg33;->s:Ljava/util/List;

    .line 293
    .line 294
    iput-object v10, v0, Lg33;->t:Ljava/util/List;

    .line 295
    .line 296
    iput-object v9, v0, Lg33;->u:Llg2;

    .line 297
    .line 298
    iput-object v8, v0, Lg33;->v:Llg2;

    .line 299
    .line 300
    iput-object v7, v0, Lg33;->w:Llg2;

    .line 301
    .line 302
    move-object/from16 v6, v25

    .line 303
    .line 304
    check-cast v6, Ljava/util/Set;

    .line 305
    .line 306
    iput-object v6, v0, Lg33;->x:Ljava/util/Set;

    .line 307
    .line 308
    iput-object v13, v0, Lg33;->y:Llg2;

    .line 309
    .line 310
    iput v4, v0, Lg33;->z:I

    .line 311
    .line 312
    invoke-virtual {v2, v3, v0}, Lqc;->a(Lpe1;Ldh0;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    if-ne v3, v1, :cond_8

    .line 317
    .line 318
    :goto_5
    return-object v1

    .line 319
    :cond_8
    move-object/from16 v6, v25

    .line 320
    .line 321
    :goto_6
    iget-object v3, v0, Lg33;->B:Lh33;

    .line 322
    .line 323
    iget-object v14, v3, Lh33;->c:Ljava/lang/Object;

    .line 324
    .line 325
    monitor-enter v14

    .line 326
    :try_start_1
    iget-object v15, v3, Lh33;->l:Lkg2;

    .line 327
    .line 328
    invoke-virtual {v15}, Lkg2;->j()Z

    .line 329
    .line 330
    .line 331
    move-result v15

    .line 332
    if-eqz v15, :cond_a

    .line 333
    .line 334
    iget-object v15, v3, Lh33;->l:Lkg2;

    .line 335
    .line 336
    invoke-static {v15}, Lef2;->b(Lkg2;)Ldg2;

    .line 337
    .line 338
    .line 339
    move-result-object v15

    .line 340
    iget-object v5, v3, Lh33;->l:Lkg2;

    .line 341
    .line 342
    invoke-virtual {v5}, Lkg2;->a()V

    .line 343
    .line 344
    .line 345
    iget-object v5, v3, Lh33;->m:Lxh1;

    .line 346
    .line 347
    iget-object v4, v5, Lxh1;->n:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast v4, Lkg2;

    .line 350
    .line 351
    invoke-virtual {v4}, Lkg2;->a()V

    .line 352
    .line 353
    .line 354
    iget-object v4, v5, Lxh1;->o:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast v4, Lkg2;

    .line 357
    .line 358
    invoke-virtual {v4}, Lkg2;->a()V

    .line 359
    .line 360
    .line 361
    iget-object v4, v3, Lh33;->o:Lkg2;

    .line 362
    .line 363
    invoke-virtual {v4}, Lkg2;->a()V

    .line 364
    .line 365
    .line 366
    new-instance v4, Ldg2;

    .line 367
    .line 368
    iget v5, v15, Ldg2;->b:I

    .line 369
    .line 370
    invoke-direct {v4, v5}, Ldg2;-><init>(I)V

    .line 371
    .line 372
    .line 373
    iget-object v5, v15, Ldg2;->a:[Ljava/lang/Object;

    .line 374
    .line 375
    iget v15, v15, Ldg2;->b:I

    .line 376
    .line 377
    move-object/from16 v18, v1

    .line 378
    .line 379
    const/4 v1, 0x0

    .line 380
    :goto_7
    if-ge v1, v15, :cond_9

    .line 381
    .line 382
    aget-object v19, v5, v1

    .line 383
    .line 384
    move/from16 v20, v1

    .line 385
    .line 386
    move-object/from16 v1, v19

    .line 387
    .line 388
    check-cast v1, Loe2;

    .line 389
    .line 390
    move-object/from16 v19, v2

    .line 391
    .line 392
    iget-object v2, v3, Lh33;->n:Lkg2;

    .line 393
    .line 394
    invoke-virtual {v2, v1}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    move-object/from16 v21, v5

    .line 399
    .line 400
    new-instance v5, Ljs2;

    .line 401
    .line 402
    invoke-direct {v5, v1, v2}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v4, v5}, Ldg2;->a(Ljava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    add-int/lit8 v1, v20, 0x1

    .line 409
    .line 410
    move-object/from16 v2, v19

    .line 411
    .line 412
    move-object/from16 v5, v21

    .line 413
    .line 414
    goto :goto_7

    .line 415
    :catchall_1
    move-exception v0

    .line 416
    goto :goto_a

    .line 417
    :cond_9
    move-object/from16 v19, v2

    .line 418
    .line 419
    iget-object v1, v3, Lh33;->n:Lkg2;

    .line 420
    .line 421
    invoke-virtual {v1}, Lkg2;->a()V

    .line 422
    .line 423
    .line 424
    goto :goto_8

    .line 425
    :cond_a
    move-object/from16 v18, v1

    .line 426
    .line 427
    move-object/from16 v19, v2

    .line 428
    .line 429
    sget-object v4, Ltn2;->b:Ldg2;

    .line 430
    .line 431
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 432
    .line 433
    .line 434
    :goto_8
    monitor-exit v14

    .line 435
    iget-object v1, v4, Ldg2;->a:[Ljava/lang/Object;

    .line 436
    .line 437
    iget v2, v4, Ldg2;->b:I

    .line 438
    .line 439
    const/4 v3, 0x0

    .line 440
    :goto_9
    if-ge v3, v2, :cond_b

    .line 441
    .line 442
    aget-object v4, v1, v3

    .line 443
    .line 444
    check-cast v4, Ljs2;

    .line 445
    .line 446
    iget-object v5, v4, Ljs2;->n:Ljava/lang/Object;

    .line 447
    .line 448
    check-cast v5, Loe2;

    .line 449
    .line 450
    iget-object v4, v4, Ljs2;->o:Ljava/lang/Object;

    .line 451
    .line 452
    check-cast v4, Lne2;

    .line 453
    .line 454
    add-int/lit8 v3, v3, 0x1

    .line 455
    .line 456
    goto :goto_9

    .line 457
    :cond_b
    iget-object v1, v0, Lg33;->B:Lh33;

    .line 458
    .line 459
    iget-object v1, v1, Lh33;->b:Leh;

    .line 460
    .line 461
    iget-object v2, v1, Leh;->o:Ljava/lang/Object;

    .line 462
    .line 463
    check-cast v2, Llj;

    .line 464
    .line 465
    const/4 v3, 0x0

    .line 466
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 467
    .line 468
    .line 469
    iget-object v1, v1, Leh;->p:Ljava/lang/Object;

    .line 470
    .line 471
    check-cast v1, Lrp;

    .line 472
    .line 473
    new-instance v2, Lz82;

    .line 474
    .line 475
    const/16 v3, 0x11

    .line 476
    .line 477
    invoke-direct {v2, v3}, Lz82;-><init>(I)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v1, v2}, Lrp;->g(Lpe1;)V

    .line 481
    .line 482
    .line 483
    move-object/from16 v1, v18

    .line 484
    .line 485
    move-object/from16 v2, v19

    .line 486
    .line 487
    const/4 v3, 0x0

    .line 488
    const/4 v4, 0x2

    .line 489
    const/4 v5, 0x1

    .line 490
    goto/16 :goto_1

    .line 491
    .line 492
    :goto_a
    monitor-exit v14

    .line 493
    throw v0

    .line 494
    :cond_c
    move-object/from16 v7, v18

    .line 495
    .line 496
    move-object/from16 v13, v19

    .line 497
    .line 498
    move-object/from16 v12, v20

    .line 499
    .line 500
    move-object/from16 v11, v21

    .line 501
    .line 502
    move-object/from16 v9, v22

    .line 503
    .line 504
    move-object/from16 v10, v23

    .line 505
    .line 506
    move-object/from16 v8, v24

    .line 507
    .line 508
    move-object/from16 v6, v25

    .line 509
    .line 510
    const/4 v3, 0x0

    .line 511
    goto/16 :goto_1
.end method

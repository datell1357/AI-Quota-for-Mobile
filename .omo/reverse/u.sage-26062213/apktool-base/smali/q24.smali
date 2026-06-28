.class public final Lq24;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public synthetic t:Ljava/lang/Object;

.field public final synthetic u:Lv24;


# direct methods
.method public synthetic constructor <init>(Lv24;Ldh0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lq24;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Lq24;->u:Lv24;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lq24;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ld14;

    .line 9
    .line 10
    check-cast p2, Ldh0;

    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Lq24;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lq24;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lq24;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Ld14;

    .line 24
    .line 25
    check-cast p2, Ldh0;

    .line 26
    .line 27
    invoke-virtual {p0, p2, p1}, Lq24;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lq24;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lq24;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Lpw2;

    .line 39
    .line 40
    check-cast p2, Ldh0;

    .line 41
    .line 42
    invoke-virtual {p0, p2, p1}, Lq24;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lq24;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lq24;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 2

    .line 1
    iget v0, p0, Lq24;->r:I

    .line 2
    .line 3
    iget-object p0, p0, Lq24;->u:Lv24;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lq24;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {v0, p0, p1, v1}, Lq24;-><init>(Lv24;Ldh0;I)V

    .line 12
    .line 13
    .line 14
    iput-object p2, v0, Lq24;->t:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Lq24;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, p0, p1, v1}, Lq24;-><init>(Lv24;Ldh0;I)V

    .line 21
    .line 22
    .line 23
    iput-object p2, v0, Lq24;->t:Ljava/lang/Object;

    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_1
    new-instance v0, Lq24;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, p0, p1, v1}, Lq24;-><init>(Lv24;Ldh0;I)V

    .line 30
    .line 31
    .line 32
    iput-object p2, v0, Lq24;->t:Ljava/lang/Object;

    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lq24;->r:I

    .line 4
    .line 5
    sget-object v2, Lc14;->o:Lc14;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    sget-object v6, Lri0;->n:Lri0;

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    iget-object v8, v0, Lq24;->u:Lv24;

    .line 15
    .line 16
    const/4 v9, 0x0

    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    iget v1, v0, Lq24;->s:I

    .line 21
    .line 22
    sget-object v10, Lt64;->a:Lt64;

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    if-eq v1, v7, :cond_2

    .line 27
    .line 28
    if-ne v1, v4, :cond_1

    .line 29
    .line 30
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    move-object v6, v10

    .line 34
    goto/16 :goto_7

    .line 35
    .line 36
    :cond_1
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    move-object v6, v9

    .line 40
    goto/16 :goto_7

    .line 41
    .line 42
    :cond_2
    iget-object v1, v0, Lq24;->t:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Ld14;

    .line 45
    .line 46
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    move-object/from16 v5, p1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lq24;->t:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, Ld14;

    .line 58
    .line 59
    iput-object v1, v0, Lq24;->t:Ljava/lang/Object;

    .line 60
    .line 61
    iput v7, v0, Lq24;->s:I

    .line 62
    .line 63
    invoke-interface {v1, v0}, Ld14;->c(Lbv3;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    if-ne v5, v6, :cond_4

    .line 68
    .line 69
    goto/16 :goto_7

    .line 70
    .line 71
    :cond_4
    :goto_1
    check-cast v5, Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_5

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    iget-object v5, v8, Lv24;->h:Lmu0;

    .line 81
    .line 82
    iget-object v11, v5, Lmu0;->d:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v11, [J

    .line 85
    .line 86
    iget-object v12, v5, Lmu0;->b:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v12, Ljava/util/concurrent/locks/ReentrantLock;

    .line 89
    .line 90
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 91
    .line 92
    .line 93
    :try_start_0
    iget-boolean v13, v5, Lmu0;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    if-nez v13, :cond_6

    .line 96
    .line 97
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 98
    .line 99
    .line 100
    move-object v14, v9

    .line 101
    goto :goto_6

    .line 102
    :cond_6
    :try_start_1
    iput-boolean v3, v5, Lmu0;->a:Z

    .line 103
    .line 104
    array-length v13, v11

    .line 105
    new-array v14, v13, [Lzn2;

    .line 106
    .line 107
    move v15, v3

    .line 108
    move/from16 v16, v15

    .line 109
    .line 110
    :goto_2
    if-ge v15, v13, :cond_a

    .line 111
    .line 112
    aget-wide v17, v11, v15

    .line 113
    .line 114
    const-wide/16 v19, 0x0

    .line 115
    .line 116
    cmp-long v17, v17, v19

    .line 117
    .line 118
    if-lez v17, :cond_7

    .line 119
    .line 120
    move v3, v7

    .line 121
    :cond_7
    iget-object v7, v5, Lmu0;->c:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v7, [Z

    .line 124
    .line 125
    aget-boolean v4, v7, v15

    .line 126
    .line 127
    if-eq v3, v4, :cond_9

    .line 128
    .line 129
    aput-boolean v3, v7, v15

    .line 130
    .line 131
    if-eqz v3, :cond_8

    .line 132
    .line 133
    sget-object v3, Lzn2;->o:Lzn2;

    .line 134
    .line 135
    :goto_3
    const/16 v16, 0x1

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    goto :goto_8

    .line 140
    :cond_8
    sget-object v3, Lzn2;->p:Lzn2;

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_9
    sget-object v3, Lzn2;->n:Lzn2;

    .line 144
    .line 145
    :goto_4
    aput-object v3, v14, v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .line 147
    add-int/lit8 v15, v15, 0x1

    .line 148
    .line 149
    const/4 v3, 0x0

    .line 150
    const/4 v4, 0x2

    .line 151
    const/4 v7, 0x1

    .line 152
    goto :goto_2

    .line 153
    :cond_a
    if-eqz v16, :cond_b

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_b
    move-object v14, v9

    .line 157
    :goto_5
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 158
    .line 159
    .line 160
    :goto_6
    if-eqz v14, :cond_0

    .line 161
    .line 162
    new-instance v3, Lu24;

    .line 163
    .line 164
    invoke-direct {v3, v14, v8, v1, v9}, Lu24;-><init>([Lzn2;Lv24;Ld14;Ldh0;)V

    .line 165
    .line 166
    .line 167
    iput-object v9, v0, Lq24;->t:Ljava/lang/Object;

    .line 168
    .line 169
    const/4 v4, 0x2

    .line 170
    iput v4, v0, Lq24;->s:I

    .line 171
    .line 172
    invoke-interface {v1, v2, v3, v0}, Ld14;->d(Lc14;Ldf1;Lbv3;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    if-ne v0, v6, :cond_0

    .line 177
    .line 178
    :goto_7
    return-object v6

    .line 179
    :goto_8
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 180
    .line 181
    .line 182
    throw v0

    .line 183
    :pswitch_0
    iget v1, v0, Lq24;->s:I

    .line 184
    .line 185
    if-eqz v1, :cond_e

    .line 186
    .line 187
    const/4 v3, 0x1

    .line 188
    if-eq v1, v3, :cond_d

    .line 189
    .line 190
    const/4 v4, 0x2

    .line 191
    if-ne v1, v4, :cond_c

    .line 192
    .line 193
    :try_start_2
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 194
    .line 195
    .line 196
    move-object/from16 v0, p1

    .line 197
    .line 198
    goto :goto_a

    .line 199
    :cond_c
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    move-object v6, v9

    .line 203
    goto :goto_c

    .line 204
    :cond_d
    iget-object v1, v0, Lq24;->t:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v1, Ld14;

    .line 207
    .line 208
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    move-object/from16 v3, p1

    .line 212
    .line 213
    goto :goto_9

    .line 214
    :cond_e
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    iget-object v1, v0, Lq24;->t:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v1, Ld14;

    .line 220
    .line 221
    iput-object v1, v0, Lq24;->t:Ljava/lang/Object;

    .line 222
    .line 223
    const/4 v3, 0x1

    .line 224
    iput v3, v0, Lq24;->s:I

    .line 225
    .line 226
    invoke-interface {v1, v0}, Ld14;->c(Lbv3;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    if-ne v3, v6, :cond_f

    .line 231
    .line 232
    goto :goto_c

    .line 233
    :cond_f
    :goto_9
    check-cast v3, Ljava/lang/Boolean;

    .line 234
    .line 235
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-eqz v3, :cond_10

    .line 240
    .line 241
    goto :goto_b

    .line 242
    :cond_10
    :try_start_3
    new-instance v3, Lq24;

    .line 243
    .line 244
    const/4 v4, 0x0

    .line 245
    invoke-direct {v3, v8, v9, v4}, Lq24;-><init>(Lv24;Ldh0;I)V

    .line 246
    .line 247
    .line 248
    iput-object v9, v0, Lq24;->t:Ljava/lang/Object;

    .line 249
    .line 250
    const/4 v4, 0x2

    .line 251
    iput v4, v0, Lq24;->s:I

    .line 252
    .line 253
    invoke-interface {v1, v2, v3, v0}, Ld14;->d(Lc14;Ldf1;Lbv3;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    if-ne v0, v6, :cond_11

    .line 258
    .line 259
    goto :goto_c

    .line 260
    :cond_11
    :goto_a
    move-object v6, v0

    .line 261
    check-cast v6, Ljava/util/Set;
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 262
    .line 263
    goto :goto_c

    .line 264
    :catch_0
    :goto_b
    sget-object v6, Lk01;->n:Lk01;

    .line 265
    .line 266
    :goto_c
    return-object v6

    .line 267
    :pswitch_1
    iget v1, v0, Lq24;->s:I

    .line 268
    .line 269
    const/4 v3, 0x1

    .line 270
    if-eqz v1, :cond_13

    .line 271
    .line 272
    if-ne v1, v3, :cond_12

    .line 273
    .line 274
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    move-object/from16 v0, p1

    .line 278
    .line 279
    goto :goto_d

    .line 280
    :cond_12
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    move-object v0, v9

    .line 284
    goto :goto_d

    .line 285
    :cond_13
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    iget-object v1, v0, Lq24;->t:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast v1, Lpw2;

    .line 291
    .line 292
    iput v3, v0, Lq24;->s:I

    .line 293
    .line 294
    invoke-static {v8, v1, v0}, Lv24;->a(Lv24;Lnw2;Lfh0;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    if-ne v0, v6, :cond_14

    .line 299
    .line 300
    move-object v0, v6

    .line 301
    :cond_14
    :goto_d
    return-object v0

    .line 302
    nop

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Lcy2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lm02;


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:Z

.field public final synthetic E:Lmu0;

.field public final n:I

.field public final o:Leh;

.field public final p:Lpe1;

.field public q:Lmf0;

.field public r:Lnt3;

.field public s:Lkz1;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Ljava/lang/Object;

.field public x:Z

.field public y:Lby2;

.field public z:Z


# direct methods
.method public constructor <init>(Lmu0;ILeh;Lt3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcy2;->E:Lmu0;

    .line 5
    .line 6
    iput p2, p0, Lcy2;->n:I

    .line 7
    .line 8
    iput-object p3, p0, Lcy2;->o:Leh;

    .line 9
    .line 10
    iput-object p4, p0, Lcy2;->p:Lpe1;

    .line 11
    .line 12
    invoke-static {}, Lsd2;->a()J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    iput-wide p1, p0, Lcy2;->C:J

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcy2;->z:Z

    .line 3
    .line 4
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcy2;->s:Lkz1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v2, v0, Lkz1;->a:I

    .line 7
    .line 8
    packed-switch v2, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkz1;->b()Ldz1;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v2, v2, Ldz1;->f:Lzt2;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, v1

    .line 21
    :goto_0
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget-object v2, v0, Lkz1;->b:Llz1;

    .line 24
    .line 25
    iget-object v0, v0, Lkz1;->c:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {v2, v0}, Llz1;->a(Llz1;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :pswitch_0
    iput-object v1, p0, Lcy2;->s:Lkz1;

    .line 31
    .line 32
    iget-object v0, p0, Lcy2;->r:Lnt3;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-interface {v0}, Lnt3;->a()V

    .line 37
    .line 38
    .line 39
    :cond_2
    iput-object v1, p0, Lcy2;->r:Lnt3;

    .line 40
    .line 41
    iput-object v1, p0, Lcy2;->y:Lby2;

    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lzb;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcy2;->E:Lmu0;

    .line 2
    .line 3
    iget-boolean v0, v0, Lmu0;->a:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcy2;->z:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v0, "compose:lazy:prefetch:execute:urgent"

    .line 14
    .line 15
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p0, p1}, Lcy2;->d(Lzb;)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1
    invoke-virtual {p0, p1}, Lcy2;->d(Lzb;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    :goto_0
    const-string p1, "compose:lazy:prefetch:execute:item"

    .line 36
    .line 37
    const-wide/16 v0, -0x1

    .line 38
    .line 39
    invoke-static {v0, v1, p1}, Lkt4;->h0(JLjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return p0
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcy2;->u:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcy2;->u:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcy2;->b()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final d(Lzb;)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcy2;->n:I

    .line 4
    .line 5
    int-to-long v2, v1

    .line 6
    const-string v4, "compose:lazy:prefetch:execute:item"

    .line 7
    .line 8
    invoke-static {v2, v3, v4}, Lkt4;->h0(JLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v5, v0, Lcy2;->E:Lmu0;

    .line 12
    .line 13
    iget-object v5, v5, Lmu0;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v5, Lc02;

    .line 16
    .line 17
    iget-object v5, v5, Lc02;->b:Lf02;

    .line 18
    .line 19
    invoke-virtual {v5}, Lf02;->a()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    check-cast v5, La12;

    .line 24
    .line 25
    iget-boolean v6, v0, Lcy2;->u:Z

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    if-nez v6, :cond_29

    .line 29
    .line 30
    invoke-virtual {v5}, La12;->c()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-ltz v1, :cond_29

    .line 35
    .line 36
    if-ge v1, v6, :cond_29

    .line 37
    .line 38
    invoke-virtual {v5, v1}, La12;->d(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    iget-object v8, v0, Lcy2;->w:Ljava/lang/Object;

    .line 43
    .line 44
    if-eqz v8, :cond_0

    .line 45
    .line 46
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    if-nez v8, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0}, Lcy2;->b()V

    .line 53
    .line 54
    .line 55
    return v7

    .line 56
    :cond_0
    invoke-virtual {v5, v1}, La12;->b(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-object v5, v0, Lcy2;->o:Leh;

    .line 61
    .line 62
    iget-object v8, v5, Leh;->q:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v8, Lmp;

    .line 65
    .line 66
    iget-object v9, v5, Leh;->p:Ljava/lang/Object;

    .line 67
    .line 68
    const/4 v10, -0x1

    .line 69
    if-ne v9, v1, :cond_1

    .line 70
    .line 71
    if-eqz v8, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object v8, v5, Leh;->o:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v8, Lkg2;

    .line 77
    .line 78
    invoke-virtual {v8, v1}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    if-nez v9, :cond_2

    .line 83
    .line 84
    new-instance v9, Lmp;

    .line 85
    .line 86
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 87
    .line 88
    .line 89
    iput v10, v9, Lmp;->e:I

    .line 90
    .line 91
    invoke-virtual {v8, v1, v9}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    move-object v8, v9

    .line 95
    check-cast v8, Lmp;

    .line 96
    .line 97
    iput-object v1, v5, Leh;->p:Ljava/lang/Object;

    .line 98
    .line 99
    iput-object v8, v5, Leh;->q:Ljava/lang/Object;

    .line 100
    .line 101
    :goto_0
    invoke-virtual {v0}, Lcy2;->e()Z

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p1 .. p1}, Lzb;->a()J

    .line 105
    .line 106
    .line 107
    move-result-wide v11

    .line 108
    iput-wide v11, v0, Lcy2;->A:J

    .line 109
    .line 110
    invoke-static {}, Lsd2;->a()J

    .line 111
    .line 112
    .line 113
    move-result-wide v13

    .line 114
    iput-wide v13, v0, Lcy2;->C:J

    .line 115
    .line 116
    const-wide/16 v13, 0x0

    .line 117
    .line 118
    iput-wide v13, v0, Lcy2;->B:J

    .line 119
    .line 120
    const-string v5, "compose:lazy:prefetch:available_time_nanos"

    .line 121
    .line 122
    invoke-static {v11, v12, v5}, Lkt4;->h0(JLjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcy2;->e()Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-nez v5, :cond_5

    .line 130
    .line 131
    iget-wide v11, v0, Lcy2;->A:J

    .line 132
    .line 133
    move-wide v15, v13

    .line 134
    iget-wide v13, v8, Lmp;->a:J

    .line 135
    .line 136
    iget-wide v9, v8, Lmp;->b:J

    .line 137
    .line 138
    add-long/2addr v13, v9

    .line 139
    invoke-virtual {v0, v11, v12, v13, v14}, Lcy2;->g(JJ)Z

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-eqz v9, :cond_3

    .line 144
    .line 145
    const-string v9, "compose:lazy:prefetch:compose"

    .line 146
    .line 147
    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :try_start_0
    invoke-virtual {v0, v6, v1, v8}, Lcy2;->f(Ljava/lang/Object;Ljava/lang/Object;Lmp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .line 152
    .line 153
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :catchall_0
    move-exception v0

    .line 158
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 159
    .line 160
    .line 161
    throw v0

    .line 162
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcy2;->e()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-nez v1, :cond_6

    .line 167
    .line 168
    :cond_4
    const/16 v17, 0x1

    .line 169
    .line 170
    goto/16 :goto_12

    .line 171
    .line 172
    :cond_5
    move-wide v15, v13

    .line 173
    :cond_6
    iget-object v1, v0, Lcy2;->s:Lkz1;

    .line 174
    .line 175
    const/4 v6, 0x0

    .line 176
    if-eqz v1, :cond_9

    .line 177
    .line 178
    iget-wide v9, v0, Lcy2;->A:J

    .line 179
    .line 180
    iget-wide v11, v8, Lmp;->c:J

    .line 181
    .line 182
    invoke-virtual {v0, v9, v10, v11, v12}, Lcy2;->g(JJ)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_4

    .line 187
    .line 188
    const-string v1, "compose:lazy:prefetch:apply"

    .line 189
    .line 190
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :try_start_1
    iget-object v1, v0, Lcy2;->s:Lkz1;

    .line 194
    .line 195
    if-eqz v1, :cond_8

    .line 196
    .line 197
    iget v9, v1, Lkz1;->a:I

    .line 198
    .line 199
    packed-switch v9, :pswitch_data_0

    .line 200
    .line 201
    .line 202
    iget-object v9, v1, Lkz1;->b:Llz1;

    .line 203
    .line 204
    invoke-virtual {v1}, Lkz1;->b()Ldz1;

    .line 205
    .line 206
    .line 207
    move-result-object v10

    .line 208
    if-eqz v10, :cond_7

    .line 209
    .line 210
    invoke-virtual {v9, v10, v7}, Llz1;->b(Ldz1;Z)V

    .line 211
    .line 212
    .line 213
    :cond_7
    iget-object v1, v1, Lkz1;->c:Ljava/lang/Object;

    .line 214
    .line 215
    invoke-virtual {v9, v1}, Llz1;->d(Ljava/lang/Object;)Lnt3;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    goto :goto_2

    .line 220
    :pswitch_0
    iget-object v9, v1, Lkz1;->b:Llz1;

    .line 221
    .line 222
    iget-object v1, v1, Lkz1;->c:Ljava/lang/Object;

    .line 223
    .line 224
    invoke-virtual {v9, v1}, Llz1;->d(Ljava/lang/Object;)Lnt3;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    :goto_2
    iput-object v1, v0, Lcy2;->r:Lnt3;

    .line 229
    .line 230
    iput-object v6, v0, Lcy2;->s:Lkz1;

    .line 231
    .line 232
    const/4 v1, 0x1

    .line 233
    iput-boolean v1, v0, Lcy2;->v:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 234
    .line 235
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Lcy2;->h()V

    .line 239
    .line 240
    .line 241
    iget-wide v9, v0, Lcy2;->B:J

    .line 242
    .line 243
    iget-wide v11, v8, Lmp;->c:J

    .line 244
    .line 245
    invoke-static {v9, v10, v11, v12}, Lmp;->a(JJ)J

    .line 246
    .line 247
    .line 248
    move-result-wide v9

    .line 249
    iput-wide v9, v8, Lmp;->c:J

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_8
    :try_start_2
    const-string v0, "Nothing to apply!"

    .line 253
    .line 254
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 255
    .line 256
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 260
    :catchall_1
    move-exception v0

    .line 261
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 262
    .line 263
    .line 264
    throw v0

    .line 265
    :cond_9
    :goto_3
    iget-boolean v1, v0, Lcy2;->x:Z

    .line 266
    .line 267
    const/4 v9, 0x2

    .line 268
    if-nez v1, :cond_c

    .line 269
    .line 270
    iget-wide v10, v0, Lcy2;->A:J

    .line 271
    .line 272
    cmp-long v1, v10, v15

    .line 273
    .line 274
    if-lez v1, :cond_4

    .line 275
    .line 276
    const-string v1, "compose:lazy:prefetch:resolve-nested"

    .line 277
    .line 278
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    :try_start_3
    iget-object v1, v0, Lcy2;->r:Lnt3;

    .line 282
    .line 283
    if-eqz v1, :cond_b

    .line 284
    .line 285
    new-instance v10, Lw33;

    .line 286
    .line 287
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 288
    .line 289
    .line 290
    new-instance v11, Lc60;

    .line 291
    .line 292
    invoke-direct {v11, v9, v10}, Lc60;-><init>(ILw33;)V

    .line 293
    .line 294
    .line 295
    invoke-interface {v1, v11}, Lnt3;->b(Lc60;)V

    .line 296
    .line 297
    .line 298
    iget-object v1, v10, Lw33;->n:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast v1, Ljava/util/List;

    .line 301
    .line 302
    if-eqz v1, :cond_a

    .line 303
    .line 304
    new-instance v10, Lby2;

    .line 305
    .line 306
    invoke-direct {v10, v0, v1}, Lby2;-><init>(Lcy2;Ljava/util/List;)V

    .line 307
    .line 308
    .line 309
    goto :goto_5

    .line 310
    :cond_a
    :goto_4
    move-object v10, v6

    .line 311
    goto :goto_5

    .line 312
    :cond_b
    const-string v1, "Should precompose before resolving nested prefetch states"

    .line 313
    .line 314
    invoke-static {v1}, Ldr1;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 315
    .line 316
    .line 317
    invoke-static {}, Lp61;->q()V

    .line 318
    .line 319
    .line 320
    goto :goto_4

    .line 321
    :goto_5
    iput-object v10, v0, Lcy2;->y:Lby2;

    .line 322
    .line 323
    const/4 v1, 0x1

    .line 324
    iput-boolean v1, v0, Lcy2;->x:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 325
    .line 326
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 327
    .line 328
    .line 329
    goto :goto_6

    .line 330
    :catchall_2
    move-exception v0

    .line 331
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 332
    .line 333
    .line 334
    throw v0

    .line 335
    :cond_c
    :goto_6
    iget-object v1, v0, Lcy2;->y:Lby2;

    .line 336
    .line 337
    if-eqz v1, :cond_1c

    .line 338
    .line 339
    iget v10, v8, Lmp;->e:I

    .line 340
    .line 341
    iget-boolean v11, v0, Lcy2;->z:Z

    .line 342
    .line 343
    iget-object v12, v1, Lby2;->b:[Ljava/util/List;

    .line 344
    .line 345
    iget v13, v1, Lby2;->c:I

    .line 346
    .line 347
    iget-object v14, v1, Lby2;->a:Ljava/util/List;

    .line 348
    .line 349
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 350
    .line 351
    .line 352
    move-result v5

    .line 353
    if-lt v13, v5, :cond_d

    .line 354
    .line 355
    goto/16 :goto_10

    .line 356
    .line 357
    :cond_d
    iget-object v5, v1, Lby2;->f:Lcy2;

    .line 358
    .line 359
    iget-boolean v5, v5, Lcy2;->u:Z

    .line 360
    .line 361
    if-eqz v5, :cond_e

    .line 362
    .line 363
    const-string v5, "Should not execute nested prefetch on canceled request"

    .line 364
    .line 365
    invoke-static {v5}, Ldr1;->c(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    :cond_e
    const-string v5, "compose:lazy:prefetch:update_nested_prefetch_count"

    .line 369
    .line 370
    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    :try_start_4
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    .line 374
    .line 375
    .line 376
    move-result v5

    .line 377
    move v13, v7

    .line 378
    :goto_7
    if-ge v13, v5, :cond_f

    .line 379
    .line 380
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v18

    .line 384
    move-object/from16 v9, v18

    .line 385
    .line 386
    check-cast v9, Ln02;

    .line 387
    .line 388
    iput v10, v9, Ln02;->d:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 389
    .line 390
    add-int/lit8 v13, v13, 0x1

    .line 391
    .line 392
    const/4 v9, 0x2

    .line 393
    goto :goto_7

    .line 394
    :cond_f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 395
    .line 396
    .line 397
    const-string v5, "compose:lazy:prefetch:nested"

    .line 398
    .line 399
    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    :goto_8
    :try_start_5
    iget v5, v1, Lby2;->c:I

    .line 403
    .line 404
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 405
    .line 406
    .line 407
    move-result v9

    .line 408
    if-ge v5, v9, :cond_1b

    .line 409
    .line 410
    iget v5, v1, Lby2;->c:I

    .line 411
    .line 412
    aget-object v5, v12, v5

    .line 413
    .line 414
    if-nez v5, :cond_16

    .line 415
    .line 416
    invoke-virtual/range {p1 .. p1}, Lzb;->a()J

    .line 417
    .line 418
    .line 419
    move-result-wide v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 420
    cmp-long v5, v9, v15

    .line 421
    .line 422
    if-gtz v5, :cond_10

    .line 423
    .line 424
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 425
    .line 426
    .line 427
    const/16 v17, 0x1

    .line 428
    .line 429
    return v17

    .line 430
    :cond_10
    :try_start_6
    iget v9, v1, Lby2;->c:I

    .line 431
    .line 432
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v5

    .line 436
    move-object v10, v5

    .line 437
    check-cast v10, Ln02;

    .line 438
    .line 439
    iget-object v5, v10, Ln02;->a:Li12;

    .line 440
    .line 441
    if-nez v5, :cond_11

    .line 442
    .line 443
    sget-object v5, Lg01;->n:Lg01;

    .line 444
    .line 445
    move/from16 v21, v9

    .line 446
    .line 447
    move/from16 v22, v11

    .line 448
    .line 449
    move-object v11, v6

    .line 450
    goto :goto_b

    .line 451
    :cond_11
    iget v13, v10, Ln02;->d:I

    .line 452
    .line 453
    new-instance v15, Ljava/util/ArrayList;

    .line 454
    .line 455
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .line 457
    .line 458
    iget v5, v5, Li12;->o:I

    .line 459
    .line 460
    invoke-static {}, Lk75;->x()Lpo3;

    .line 461
    .line 462
    .line 463
    move-result-object v7

    .line 464
    if-eqz v7, :cond_12

    .line 465
    .line 466
    invoke-virtual {v7}, Lpo3;->e()Lpe1;

    .line 467
    .line 468
    .line 469
    move-result-object v18

    .line 470
    move-object/from16 v6, v18

    .line 471
    .line 472
    :cond_12
    move/from16 v19, v5

    .line 473
    .line 474
    invoke-static {v7}, Lk75;->E(Lpo3;)Lpo3;

    .line 475
    .line 476
    .line 477
    move-result-object v5

    .line 478
    invoke-static {v7, v5, v6}, Lk75;->L(Lpo3;Lpo3;Lpe1;)V

    .line 479
    .line 480
    .line 481
    const/4 v5, -0x1

    .line 482
    if-ne v13, v5, :cond_13

    .line 483
    .line 484
    const/4 v13, 0x2

    .line 485
    :cond_13
    const/4 v6, 0x0

    .line 486
    :goto_9
    if-ge v6, v13, :cond_15

    .line 487
    .line 488
    add-int v7, v19, v6

    .line 489
    .line 490
    iget-object v5, v10, Ln02;->c:Lmu0;

    .line 491
    .line 492
    if-nez v5, :cond_14

    .line 493
    .line 494
    move/from16 v20, v6

    .line 495
    .line 496
    move/from16 v21, v9

    .line 497
    .line 498
    move/from16 v22, v11

    .line 499
    .line 500
    const/4 v11, 0x0

    .line 501
    goto :goto_a

    .line 502
    :cond_14
    move/from16 v20, v6

    .line 503
    .line 504
    iget-object v6, v10, Ln02;->b:Leh;

    .line 505
    .line 506
    move/from16 v21, v9

    .line 507
    .line 508
    new-instance v9, Lcy2;

    .line 509
    .line 510
    move/from16 v22, v11

    .line 511
    .line 512
    const/4 v11, 0x0

    .line 513
    invoke-direct {v9, v5, v7, v6, v11}, Lcy2;-><init>(Lmu0;ILeh;Lt3;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    :goto_a
    add-int/lit8 v6, v20, 0x1

    .line 520
    .line 521
    move/from16 v9, v21

    .line 522
    .line 523
    move/from16 v11, v22

    .line 524
    .line 525
    goto :goto_9

    .line 526
    :cond_15
    move/from16 v21, v9

    .line 527
    .line 528
    move/from16 v22, v11

    .line 529
    .line 530
    const/4 v11, 0x0

    .line 531
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 532
    .line 533
    .line 534
    move-result v5

    .line 535
    iput v5, v10, Ln02;->f:I

    .line 536
    .line 537
    move-object v5, v15

    .line 538
    :goto_b
    aput-object v5, v12, v21

    .line 539
    .line 540
    goto :goto_c

    .line 541
    :cond_16
    move/from16 v22, v11

    .line 542
    .line 543
    move-object v11, v6

    .line 544
    :goto_c
    iget v5, v1, Lby2;->c:I

    .line 545
    .line 546
    aget-object v5, v12, v5

    .line 547
    .line 548
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 549
    .line 550
    .line 551
    :goto_d
    iget v6, v1, Lby2;->d:I

    .line 552
    .line 553
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 554
    .line 555
    .line 556
    move-result v7

    .line 557
    if-ge v6, v7, :cond_1a

    .line 558
    .line 559
    iget v6, v1, Lby2;->d:I

    .line 560
    .line 561
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v6

    .line 565
    check-cast v6, Lcy2;

    .line 566
    .line 567
    if-eqz v22, :cond_18

    .line 568
    .line 569
    if-eqz v6, :cond_17

    .line 570
    .line 571
    move-object v7, v6

    .line 572
    goto :goto_e

    .line 573
    :cond_17
    move-object v7, v11

    .line 574
    :goto_e
    if-eqz v7, :cond_18

    .line 575
    .line 576
    const/4 v9, 0x1

    .line 577
    iput-boolean v9, v7, Lcy2;->z:Z

    .line 578
    .line 579
    goto :goto_f

    .line 580
    :cond_18
    const/4 v9, 0x1

    .line 581
    :goto_f
    iput-boolean v9, v1, Lby2;->e:Z

    .line 582
    .line 583
    move-object/from16 v7, p1

    .line 584
    .line 585
    invoke-virtual {v6, v7}, Lcy2;->c(Lzb;)Z

    .line 586
    .line 587
    .line 588
    move-result v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 589
    if-eqz v6, :cond_19

    .line 590
    .line 591
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 592
    .line 593
    .line 594
    return v9

    .line 595
    :cond_19
    :try_start_7
    iget v6, v1, Lby2;->d:I

    .line 596
    .line 597
    add-int/2addr v6, v9

    .line 598
    iput v6, v1, Lby2;->d:I

    .line 599
    .line 600
    goto :goto_d

    .line 601
    :cond_1a
    move-object/from16 v7, p1

    .line 602
    .line 603
    const/4 v5, 0x0

    .line 604
    iput v5, v1, Lby2;->d:I

    .line 605
    .line 606
    iget v5, v1, Lby2;->c:I

    .line 607
    .line 608
    const/16 v17, 0x1

    .line 609
    .line 610
    add-int/lit8 v5, v5, 0x1

    .line 611
    .line 612
    iput v5, v1, Lby2;->c:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 613
    .line 614
    move-object v6, v11

    .line 615
    move/from16 v11, v22

    .line 616
    .line 617
    const/4 v7, 0x0

    .line 618
    const-wide/16 v15, 0x0

    .line 619
    .line 620
    goto/16 :goto_8

    .line 621
    .line 622
    :cond_1b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 623
    .line 624
    .line 625
    goto :goto_10

    .line 626
    :catchall_3
    move-exception v0

    .line 627
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 628
    .line 629
    .line 630
    throw v0

    .line 631
    :catchall_4
    move-exception v0

    .line 632
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 633
    .line 634
    .line 635
    throw v0

    .line 636
    :cond_1c
    :goto_10
    iget-object v1, v0, Lcy2;->y:Lby2;

    .line 637
    .line 638
    if-eqz v1, :cond_1d

    .line 639
    .line 640
    iget-boolean v1, v1, Lby2;->e:Z

    .line 641
    .line 642
    const/4 v9, 0x1

    .line 643
    if-ne v1, v9, :cond_1d

    .line 644
    .line 645
    invoke-virtual {v0}, Lcy2;->h()V

    .line 646
    .line 647
    .line 648
    invoke-static {v2, v3, v4}, Lkt4;->h0(JLjava/lang/String;)V

    .line 649
    .line 650
    .line 651
    iget-object v1, v0, Lcy2;->y:Lby2;

    .line 652
    .line 653
    if-eqz v1, :cond_1d

    .line 654
    .line 655
    const/4 v5, 0x0

    .line 656
    iput-boolean v5, v1, Lby2;->e:Z

    .line 657
    .line 658
    :cond_1d
    iget-object v1, v0, Lcy2;->q:Lmf0;

    .line 659
    .line 660
    iget-boolean v2, v0, Lcy2;->t:Z

    .line 661
    .line 662
    if-nez v2, :cond_22

    .line 663
    .line 664
    if-eqz v1, :cond_22

    .line 665
    .line 666
    iget-wide v2, v0, Lcy2;->A:J

    .line 667
    .line 668
    iget-wide v4, v8, Lmp;->d:J

    .line 669
    .line 670
    invoke-virtual {v0, v2, v3, v4, v5}, Lcy2;->g(JJ)Z

    .line 671
    .line 672
    .line 673
    move-result v2

    .line 674
    if-eqz v2, :cond_4

    .line 675
    .line 676
    const-string v2, "compose:lazy:prefetch:measure"

    .line 677
    .line 678
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    :try_start_8
    iget-wide v1, v1, Lmf0;->a:J

    .line 682
    .line 683
    iget-boolean v3, v0, Lcy2;->u:Z

    .line 684
    .line 685
    if-eqz v3, :cond_1e

    .line 686
    .line 687
    const-string v3, "Callers should check whether the request is still valid before calling performMeasure()"

    .line 688
    .line 689
    invoke-static {v3}, Ldr1;->a(Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    :cond_1e
    iget-boolean v3, v0, Lcy2;->t:Z

    .line 693
    .line 694
    if-eqz v3, :cond_1f

    .line 695
    .line 696
    const-string v3, "Request was already measured!"

    .line 697
    .line 698
    invoke-static {v3}, Ldr1;->a(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    :cond_1f
    const/4 v9, 0x1

    .line 702
    iput-boolean v9, v0, Lcy2;->t:Z

    .line 703
    .line 704
    iget-object v3, v0, Lcy2;->r:Lnt3;

    .line 705
    .line 706
    if-eqz v3, :cond_20

    .line 707
    .line 708
    invoke-interface {v3}, Lnt3;->c()I

    .line 709
    .line 710
    .line 711
    move-result v4

    .line 712
    const/4 v5, 0x0

    .line 713
    :goto_11
    if-ge v5, v4, :cond_21

    .line 714
    .line 715
    invoke-interface {v3, v5, v1, v2}, Lnt3;->d(IJ)V

    .line 716
    .line 717
    .line 718
    add-int/lit8 v5, v5, 0x1

    .line 719
    .line 720
    goto :goto_11

    .line 721
    :cond_20
    const-string v1, "performComposition() must be called before performMeasure()"

    .line 722
    .line 723
    invoke-static {v1}, Ldr1;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 724
    .line 725
    .line 726
    invoke-static {}, Lp61;->q()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 727
    .line 728
    .line 729
    :cond_21
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 730
    .line 731
    .line 732
    invoke-virtual {v0}, Lcy2;->h()V

    .line 733
    .line 734
    .line 735
    iget-wide v1, v0, Lcy2;->B:J

    .line 736
    .line 737
    iget-wide v3, v8, Lmp;->d:J

    .line 738
    .line 739
    invoke-static {v1, v2, v3, v4}, Lmp;->a(JJ)J

    .line 740
    .line 741
    .line 742
    move-result-wide v1

    .line 743
    iput-wide v1, v8, Lmp;->d:J

    .line 744
    .line 745
    iget-object v1, v0, Lcy2;->p:Lpe1;

    .line 746
    .line 747
    if-eqz v1, :cond_22

    .line 748
    .line 749
    invoke-interface {v1, v0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    goto :goto_13

    .line 753
    :catchall_5
    move-exception v0

    .line 754
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 755
    .line 756
    .line 757
    throw v0

    .line 758
    :goto_12
    return v17

    .line 759
    :cond_22
    :goto_13
    iget-object v1, v0, Lcy2;->y:Lby2;

    .line 760
    .line 761
    iget-boolean v2, v0, Lcy2;->t:Z

    .line 762
    .line 763
    if-eqz v2, :cond_28

    .line 764
    .line 765
    iget-boolean v0, v0, Lcy2;->x:Z

    .line 766
    .line 767
    if-eqz v0, :cond_28

    .line 768
    .line 769
    if-eqz v1, :cond_28

    .line 770
    .line 771
    iget-object v0, v1, Lby2;->a:Ljava/util/List;

    .line 772
    .line 773
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 774
    .line 775
    .line 776
    move-result v1

    .line 777
    const v2, 0x7fffffff

    .line 778
    .line 779
    .line 780
    move v3, v2

    .line 781
    const/4 v5, 0x0

    .line 782
    :goto_14
    if-ge v5, v1, :cond_23

    .line 783
    .line 784
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v4

    .line 788
    check-cast v4, Ln02;

    .line 789
    .line 790
    iget v4, v4, Ln02;->e:I

    .line 791
    .line 792
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 793
    .line 794
    .line 795
    move-result v3

    .line 796
    add-int/lit8 v5, v5, 0x1

    .line 797
    .line 798
    goto :goto_14

    .line 799
    :cond_23
    if-ne v3, v2, :cond_24

    .line 800
    .line 801
    const/4 v5, 0x0

    .line 802
    goto :goto_15

    .line 803
    :cond_24
    move v5, v3

    .line 804
    :goto_15
    iget v1, v8, Lmp;->e:I

    .line 805
    .line 806
    const/4 v3, -0x1

    .line 807
    if-ne v1, v3, :cond_25

    .line 808
    .line 809
    move v1, v5

    .line 810
    goto :goto_16

    .line 811
    :cond_25
    mul-int/lit8 v1, v1, 0x3

    .line 812
    .line 813
    add-int/2addr v1, v5

    .line 814
    div-int/lit8 v1, v1, 0x4

    .line 815
    .line 816
    :goto_16
    iput v1, v8, Lmp;->e:I

    .line 817
    .line 818
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 819
    .line 820
    .line 821
    move-result v1

    .line 822
    move v4, v2

    .line 823
    const/4 v3, 0x0

    .line 824
    :goto_17
    if-ge v3, v1, :cond_26

    .line 825
    .line 826
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    move-result-object v6

    .line 830
    check-cast v6, Ln02;

    .line 831
    .line 832
    iget v6, v6, Ln02;->f:I

    .line 833
    .line 834
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    .line 835
    .line 836
    .line 837
    move-result v4

    .line 838
    add-int/lit8 v3, v3, 0x1

    .line 839
    .line 840
    goto :goto_17

    .line 841
    :cond_26
    if-ne v4, v2, :cond_27

    .line 842
    .line 843
    const/4 v4, 0x0

    .line 844
    :cond_27
    if-ge v4, v5, :cond_28

    .line 845
    .line 846
    const-wide/16 v0, 0x0

    .line 847
    .line 848
    iput-wide v0, v8, Lmp;->d:J

    .line 849
    .line 850
    const/16 v16, 0x0

    .line 851
    .line 852
    return v16

    .line 853
    :cond_28
    const/16 v16, 0x0

    .line 854
    .line 855
    return v16

    .line 856
    :cond_29
    move/from16 v16, v7

    .line 857
    .line 858
    invoke-virtual {v0}, Lcy2;->b()V

    .line 859
    .line 860
    .line 861
    return v16

    .line 862
    nop

    .line 863
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcy2;->v:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object p0, p0, Lcy2;->s:Lkz1;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lkz1;->c()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-ne p0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_1
    :goto_0
    return v1
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;Lmp;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcy2;->s:Lkz1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcy2;->E:Lmu0;

    .line 7
    .line 8
    iget-object v2, v0, Lmu0;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Lc02;

    .line 11
    .line 12
    iget v3, p0, Lcy2;->n:I

    .line 13
    .line 14
    invoke-virtual {v2, v3, p1, p2}, Lc02;->a(ILjava/lang/Object;Ljava/lang/Object;)Ldf1;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-object v0, v0, Lmu0;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lpt3;

    .line 21
    .line 22
    invoke-virtual {v0}, Lpt3;->a()Llz1;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v2, v0, Llz1;->n:Lxy1;

    .line 27
    .line 28
    invoke-virtual {v2}, Lxy1;->H()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    new-instance p2, Lkz1;

    .line 35
    .line 36
    invoke-direct {p2, v0, p1, v1}, Lkz1;-><init>(Llz1;Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    :goto_0
    move-object v0, p2

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const/4 v2, 0x1

    .line 42
    invoke-virtual {v0, p1, p2, v2}, Llz1;->k(Ljava/lang/Object;Ldf1;Z)V

    .line 43
    .line 44
    .line 45
    new-instance p2, Lkz1;

    .line 46
    .line 47
    invoke-direct {p2, v0, p1, v2}, Lkz1;-><init>(Llz1;Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :goto_1
    iput-object v0, p0, Lcy2;->s:Lkz1;

    .line 52
    .line 53
    iput-object p1, p0, Lcy2;->w:Ljava/lang/Object;

    .line 54
    .line 55
    :cond_1
    iput-boolean v1, p0, Lcy2;->D:Z

    .line 56
    .line 57
    :cond_2
    :goto_2
    :pswitch_0
    invoke-virtual {v0}, Lkz1;->c()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_5

    .line 62
    .line 63
    iget-boolean p1, p0, Lcy2;->D:Z

    .line 64
    .line 65
    if-nez p1, :cond_5

    .line 66
    .line 67
    new-instance p1, Lrr;

    .line 68
    .line 69
    const/16 p2, 0x9

    .line 70
    .line 71
    invoke-direct {p1, p2, p0, p3}, Lrr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget p2, v0, Lkz1;->a:I

    .line 75
    .line 76
    packed-switch p2, :pswitch_data_0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lkz1;->b()Ldz1;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    const/4 v1, 0x0

    .line 84
    if-eqz p2, :cond_3

    .line 85
    .line 86
    iget-object v2, p2, Ldz1;->f:Lzt2;

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_3
    move-object v2, v1

    .line 90
    :goto_3
    if-eqz v2, :cond_2

    .line 91
    .line 92
    invoke-virtual {v2}, Lzt2;->c()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-nez v3, :cond_2

    .line 97
    .line 98
    invoke-static {}, Lk75;->x()Lpo3;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-eqz v3, :cond_4

    .line 103
    .line 104
    invoke-virtual {v3}, Lpo3;->e()Lpe1;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    :cond_4
    invoke-static {v3}, Lk75;->E(Lpo3;)Lpo3;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    :try_start_0
    invoke-virtual {v2, p1}, Lzt2;->e(Lsm3;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    invoke-static {v3, v4, v1}, Lk75;->L(Lpo3;Lpo3;Lpe1;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    :catchall_1
    move-exception p0

    .line 125
    invoke-static {v3, v4, v1}, Lk75;->L(Lpo3;Lpo3;Lpe1;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :cond_5
    invoke-virtual {p0}, Lcy2;->h()V

    .line 130
    .line 131
    .line 132
    iget-boolean p1, p0, Lcy2;->D:Z

    .line 133
    .line 134
    iget-wide v0, p0, Lcy2;->B:J

    .line 135
    .line 136
    if-eqz p1, :cond_6

    .line 137
    .line 138
    iget-wide p0, p3, Lmp;->b:J

    .line 139
    .line 140
    invoke-static {v0, v1, p0, p1}, Lmp;->a(JJ)J

    .line 141
    .line 142
    .line 143
    move-result-wide p0

    .line 144
    iput-wide p0, p3, Lmp;->b:J

    .line 145
    .line 146
    return-void

    .line 147
    :cond_6
    iget-wide p0, p3, Lmp;->a:J

    .line 148
    .line 149
    invoke-static {v0, v1, p0, p1}, Lmp;->a(JJ)J

    .line 150
    .line 151
    .line 152
    move-result-wide p0

    .line 153
    iput-wide p0, p3, Lmp;->a:J

    .line 154
    .line 155
    return-void

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(JJ)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcy2;->z:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-wide/16 p3, 0x0

    .line 6
    .line 7
    :cond_0
    cmp-long p0, p1, p3

    .line 8
    .line 9
    if-lez p0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_1
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final h()V
    .locals 10

    .line 1
    invoke-static {}, Lsd2;->a()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcy2;->C:J

    .line 6
    .line 7
    sget v4, Lsd2;->b:I

    .line 8
    .line 9
    const-wide/16 v4, 0x1

    .line 10
    .line 11
    sub-long v6, v2, v4

    .line 12
    .line 13
    or-long/2addr v6, v4

    .line 14
    const-wide v8, 0x7fffffffffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmp-long v6, v6, v8

    .line 20
    .line 21
    if-nez v6, :cond_1

    .line 22
    .line 23
    cmp-long v4, v0, v2

    .line 24
    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    sget-object v2, Lcy0;->o:Lbx3;

    .line 28
    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v2, v3}, Ldm0;->z(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-static {v2, v3}, Lcy0;->i(J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sub-long v6, v0, v4

    .line 42
    .line 43
    or-long/2addr v4, v6

    .line 44
    cmp-long v4, v4, v8

    .line 45
    .line 46
    if-nez v4, :cond_2

    .line 47
    .line 48
    invoke-static {v0, v1}, Ldm0;->z(J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-static {v0, v1, v2, v3}, Ldm0;->K(JJ)J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    :goto_0
    const/4 v4, 0x1

    .line 58
    shr-long v5, v2, v4

    .line 59
    .line 60
    sget-object v7, Lcy0;->o:Lbx3;

    .line 61
    .line 62
    long-to-int v2, v2

    .line 63
    and-int/2addr v2, v4

    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    move-wide v8, v5

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const-wide v2, 0x8637bd05af6L

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    cmp-long v2, v5, v2

    .line 74
    .line 75
    if-lez v2, :cond_4

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    const-wide v2, -0x8637bd05af6L

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    cmp-long v2, v5, v2

    .line 84
    .line 85
    if-gez v2, :cond_5

    .line 86
    .line 87
    const-wide/high16 v8, -0x8000000000000000L

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_5
    const-wide/32 v2, 0xf4240

    .line 91
    .line 92
    .line 93
    mul-long v8, v5, v2

    .line 94
    .line 95
    :goto_1
    iput-wide v8, p0, Lcy2;->B:J

    .line 96
    .line 97
    iget-wide v2, p0, Lcy2;->A:J

    .line 98
    .line 99
    sub-long/2addr v2, v8

    .line 100
    iput-wide v2, p0, Lcy2;->A:J

    .line 101
    .line 102
    iput-wide v0, p0, Lcy2;->C:J

    .line 103
    .line 104
    const-string p0, "compose:lazy:prefetch:available_time_nanos"

    .line 105
    .line 106
    invoke-static {v2, v3, p0}, Lkt4;->h0(JLjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcy2;->q:Lmf0;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcy2;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-boolean v2, p0, Lcy2;->t:Z

    .line 8
    .line 9
    iget-boolean v3, p0, Lcy2;->u:Z

    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v5, "HandleAndRequestImpl { index = "

    .line 14
    .line 15
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget p0, p0, Lcy2;->n:I

    .line 19
    .line 20
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ", constraints = "

    .line 24
    .line 25
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p0, ", isComposed = "

    .line 32
    .line 33
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p0, ", isMeasured = "

    .line 40
    .line 41
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, ", isCanceled = "

    .line 48
    .line 49
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p0, " }"

    .line 56
    .line 57
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method

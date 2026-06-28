.class public final Lme2;
.super Lwm2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final f:Lwu4;

.field public final g:Lzy;

.field public h:Lir3;


# direct methods
.method public constructor <init>(Ldg3;Lwu4;Lja0;Las0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lwm2;-><init>(Ldg3;Ldf1;Las0;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lme2;->f:Lwu4;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    const/4 p2, 0x6

    .line 8
    const p3, 0x7fffffff

    .line 9
    .line 10
    .line 11
    invoke-static {p3, p2, p1}, Lix;->c(IILvy;)Lzy;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lme2;->g:Lzy;

    .line 16
    .line 17
    return-void
.end method

.method public static final c(Lme2;Ldg3;Lie2;FFLfh0;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v1, p5

    .line 8
    .line 9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v9, v5, Lwm2;->e:Lgw4;

    .line 13
    .line 14
    instance-of v2, v1, Lje2;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    move-object v2, v1

    .line 19
    check-cast v2, Lje2;

    .line 20
    .line 21
    iget v3, v2, Lje2;->v:I

    .line 22
    .line 23
    const/high16 v4, -0x80000000

    .line 24
    .line 25
    and-int v6, v3, v4

    .line 26
    .line 27
    if-eqz v6, :cond_0

    .line 28
    .line 29
    sub-int/2addr v3, v4

    .line 30
    iput v3, v2, Lje2;->v:I

    .line 31
    .line 32
    :goto_0
    move-object v10, v2

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    new-instance v2, Lje2;

    .line 35
    .line 36
    invoke-direct {v2, v5, v1}, Lje2;-><init>(Lme2;Lfh0;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :goto_1
    iget-object v1, v10, Lje2;->t:Ljava/lang/Object;

    .line 41
    .line 42
    iget v2, v10, Lje2;->v:I

    .line 43
    .line 44
    const/4 v11, 0x0

    .line 45
    const/4 v12, 0x0

    .line 46
    sget-object v13, Lt64;->a:Lt64;

    .line 47
    .line 48
    const/4 v14, 0x2

    .line 49
    const/4 v15, 0x1

    .line 50
    sget-object v3, Lri0;->n:Lri0;

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    if-eq v2, v15, :cond_2

    .line 55
    .line 56
    if-ne v2, v14, :cond_1

    .line 57
    .line 58
    invoke-static {v1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-object v13

    .line 62
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-object v12

    .line 68
    :cond_2
    iget v0, v10, Lje2;->s:F

    .line 69
    .line 70
    iget-object v2, v10, Lje2;->r:Lt33;

    .line 71
    .line 72
    iget-object v4, v10, Lje2;->q:Ldg3;

    .line 73
    .line 74
    invoke-static {v1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    move-object v12, v3

    .line 78
    move-object/from16 v16, v13

    .line 79
    .line 80
    goto/16 :goto_4

    .line 81
    .line 82
    :cond_3
    invoke-static {v1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    move-object v1, v3

    .line 86
    new-instance v3, Lw33;

    .line 87
    .line 88
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object v0, v3, Lw33;->n:Ljava/lang/Object;

    .line 92
    .line 93
    move-object/from16 v16, v13

    .line 94
    .line 95
    iget-wide v12, v0, Lie2;->b:J

    .line 96
    .line 97
    iget-wide v14, v0, Lie2;->a:J

    .line 98
    .line 99
    iget-object v0, v9, Lgw4;->o:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Lta4;

    .line 102
    .line 103
    move-object v4, v3

    .line 104
    const/16 p2, 0x20

    .line 105
    .line 106
    shr-long v2, v14, p2

    .line 107
    .line 108
    long-to-int v2, v2

    .line 109
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-virtual {v0, v2, v12, v13}, Lta4;->a(FJ)V

    .line 114
    .line 115
    .line 116
    iget-object v0, v9, Lgw4;->p:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v0, Lta4;

    .line 119
    .line 120
    const-wide v2, 0xffffffffL

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    and-long/2addr v14, v2

    .line 126
    long-to-int v6, v14

    .line 127
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    invoke-virtual {v0, v6, v12, v13}, Lta4;->a(FJ)V

    .line 132
    .line 133
    .line 134
    iget-object v0, v5, Lme2;->g:Lzy;

    .line 135
    .line 136
    invoke-static {v0}, Lme2;->g(Lzy;)Lie2;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    if-eqz v0, :cond_4

    .line 141
    .line 142
    iget-wide v12, v0, Lie2;->b:J

    .line 143
    .line 144
    iget-wide v14, v0, Lie2;->a:J

    .line 145
    .line 146
    iget-object v6, v9, Lgw4;->o:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v6, Lta4;

    .line 149
    .line 150
    move-wide/from16 v17, v2

    .line 151
    .line 152
    shr-long v2, v14, p2

    .line 153
    .line 154
    long-to-int v2, v2

    .line 155
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    invoke-virtual {v6, v2, v12, v13}, Lta4;->a(FJ)V

    .line 160
    .line 161
    .line 162
    iget-object v2, v9, Lgw4;->p:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v2, Lta4;

    .line 165
    .line 166
    and-long v14, v14, v17

    .line 167
    .line 168
    long-to-int v3, v14

    .line 169
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    invoke-virtual {v2, v3, v12, v13}, Lta4;->a(FJ)V

    .line 174
    .line 175
    .line 176
    move-object v3, v4

    .line 177
    iget-object v2, v3, Lw33;->n:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v2, Lie2;

    .line 180
    .line 181
    invoke-virtual {v2, v0}, Lie2;->a(Lie2;)Lie2;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    iput-object v0, v3, Lw33;->n:Ljava/lang/Object;

    .line 186
    .line 187
    :goto_2
    move-object v0, v1

    .line 188
    goto :goto_3

    .line 189
    :cond_4
    move-object v3, v4

    .line 190
    goto :goto_2

    .line 191
    :goto_3
    new-instance v1, Lt33;

    .line 192
    .line 193
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 194
    .line 195
    .line 196
    iget-object v2, v3, Lw33;->n:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v2, Lie2;

    .line 199
    .line 200
    iget-wide v12, v2, Lie2;->a:J

    .line 201
    .line 202
    invoke-virtual {v7, v12, v13}, Ldg3;->f(J)J

    .line 203
    .line 204
    .line 205
    move-result-wide v12

    .line 206
    invoke-virtual {v7, v12, v13}, Ldg3;->h(J)F

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    iput v2, v1, Lt33;->n:F

    .line 211
    .line 212
    invoke-static {v2}, Lw80;->e(F)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-eqz v2, :cond_5

    .line 217
    .line 218
    goto/16 :goto_8

    .line 219
    .line 220
    :cond_5
    new-instance v2, Lw33;

    .line 221
    .line 222
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 223
    .line 224
    .line 225
    const/16 v4, 0x1e

    .line 226
    .line 227
    invoke-static {v4, v11}, Lk30;->a(IF)Lwe;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    iput-object v4, v2, Lw33;->n:Ljava/lang/Object;

    .line 232
    .line 233
    move-object v4, v0

    .line 234
    new-instance v0, Lke2;

    .line 235
    .line 236
    const/4 v8, 0x0

    .line 237
    move/from16 v6, p4

    .line 238
    .line 239
    move-object v12, v4

    .line 240
    move/from16 v4, p3

    .line 241
    .line 242
    invoke-direct/range {v0 .. v8}, Lke2;-><init>(Lt33;Lw33;Lw33;FLme2;FLdg3;Ldh0;)V

    .line 243
    .line 244
    .line 245
    iput-object v7, v10, Lje2;->q:Ldg3;

    .line 246
    .line 247
    iput-object v1, v10, Lje2;->r:Lt33;

    .line 248
    .line 249
    iput v6, v10, Lje2;->s:F

    .line 250
    .line 251
    const/4 v2, 0x1

    .line 252
    iput v2, v10, Lje2;->v:I

    .line 253
    .line 254
    invoke-virtual {v5, v0, v10}, Lwm2;->b(Ldf1;Lfh0;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    if-ne v0, v12, :cond_6

    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_6
    move-object v2, v1

    .line 262
    move v0, v6

    .line 263
    move-object v4, v7

    .line 264
    :goto_4
    iget-object v1, v9, Lgw4;->o:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v1, Lta4;

    .line 267
    .line 268
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, v3}, Lta4;->c(F)F

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    iget-object v6, v9, Lgw4;->p:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v6, Lta4;

    .line 278
    .line 279
    invoke-virtual {v6, v3}, Lta4;->c(F)F

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    invoke-static {v1, v3}, Lis0;->g(FF)J

    .line 284
    .line 285
    .line 286
    move-result-wide v6

    .line 287
    const-wide/16 v8, 0x0

    .line 288
    .line 289
    cmp-long v1, v6, v8

    .line 290
    .line 291
    if-nez v1, :cond_9

    .line 292
    .line 293
    iget v1, v2, Lt33;->n:F

    .line 294
    .line 295
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    const/high16 v3, 0x42c80000    # 100.0f

    .line 300
    .line 301
    div-float/2addr v1, v3

    .line 302
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    iget v1, v2, Lt33;->n:F

    .line 307
    .line 308
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    invoke-virtual {v4, v1}, Ldg3;->e(F)F

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    mul-float/2addr v1, v0

    .line 317
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 318
    .line 319
    mul-float/2addr v1, v0

    .line 320
    cmpg-float v0, v1, v11

    .line 321
    .line 322
    if-nez v0, :cond_7

    .line 323
    .line 324
    move-wide v6, v8

    .line 325
    goto :goto_6

    .line 326
    :cond_7
    iget-object v0, v4, Ldg3;->d:Lhr2;

    .line 327
    .line 328
    sget-object v2, Lhr2;->o:Lhr2;

    .line 329
    .line 330
    if-ne v0, v2, :cond_8

    .line 331
    .line 332
    invoke-static {v1, v11}, Lis0;->g(FF)J

    .line 333
    .line 334
    .line 335
    move-result-wide v0

    .line 336
    :goto_5
    move-wide v6, v0

    .line 337
    goto :goto_6

    .line 338
    :cond_8
    invoke-static {v11, v1}, Lis0;->g(FF)J

    .line 339
    .line 340
    .line 341
    move-result-wide v0

    .line 342
    goto :goto_5

    .line 343
    :cond_9
    :goto_6
    iget-object v0, v5, Lwm2;->b:Ldf1;

    .line 344
    .line 345
    new-instance v1, Lra4;

    .line 346
    .line 347
    invoke-direct {v1, v6, v7}, Lra4;-><init>(J)V

    .line 348
    .line 349
    .line 350
    const/4 v2, 0x0

    .line 351
    iput-object v2, v10, Lje2;->q:Ldg3;

    .line 352
    .line 353
    iput-object v2, v10, Lje2;->r:Lt33;

    .line 354
    .line 355
    const/4 v2, 0x2

    .line 356
    iput v2, v10, Lje2;->v:I

    .line 357
    .line 358
    invoke-interface {v0, v1, v10}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    if-ne v0, v12, :cond_a

    .line 363
    .line 364
    :goto_7
    return-object v12

    .line 365
    :cond_a
    :goto_8
    return-object v16
.end method

.method public static final d(Lme2;Lw33;Lt33;Ldg3;Lw33;JLfh0;)Ljava/lang/Object;
    .locals 11

    .line 1
    move-wide/from16 v0, p5

    .line 2
    .line 3
    move-object/from16 v2, p7

    .line 4
    .line 5
    instance-of v3, v2, Lle2;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    move-object v3, v2

    .line 10
    check-cast v3, Lle2;

    .line 11
    .line 12
    iget v4, v3, Lle2;->w:I

    .line 13
    .line 14
    const/high16 v5, -0x80000000

    .line 15
    .line 16
    and-int v6, v4, v5

    .line 17
    .line 18
    if-eqz v6, :cond_0

    .line 19
    .line 20
    sub-int/2addr v4, v5

    .line 21
    iput v4, v3, Lle2;->w:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v3, Lle2;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Lfh0;-><init>(Ldh0;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v2, v3, Lle2;->v:Ljava/lang/Object;

    .line 30
    .line 31
    iget v4, v3, Lle2;->w:I

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x1

    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    if-ne v4, v6, :cond_1

    .line 38
    .line 39
    iget-object p0, v3, Lle2;->u:Lw33;

    .line 40
    .line 41
    iget-object p1, v3, Lle2;->t:Ldg3;

    .line 42
    .line 43
    iget-object v0, v3, Lle2;->s:Lt33;

    .line 44
    .line 45
    iget-object v1, v3, Lle2;->r:Lw33;

    .line 46
    .line 47
    iget-object v3, v3, Lle2;->q:Lme2;

    .line 48
    .line 49
    invoke-static {v2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    move-object v7, p0

    .line 53
    move-object v5, p1

    .line 54
    move-object p1, v1

    .line 55
    move-object p0, v3

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v5

    .line 63
    :cond_2
    invoke-static {v2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const-wide/16 v7, 0x0

    .line 67
    .line 68
    cmp-long v2, v0, v7

    .line 69
    .line 70
    if-gez v2, :cond_3

    .line 71
    .line 72
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_3
    new-instance v2, Lx50;

    .line 76
    .line 77
    const/16 v4, 0xe

    .line 78
    .line 79
    invoke-direct {v2, p0, v5, v4}, Lx50;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 80
    .line 81
    .line 82
    iput-object p0, v3, Lle2;->q:Lme2;

    .line 83
    .line 84
    iput-object p1, v3, Lle2;->r:Lw33;

    .line 85
    .line 86
    iput-object p2, v3, Lle2;->s:Lt33;

    .line 87
    .line 88
    iput-object p3, v3, Lle2;->t:Ldg3;

    .line 89
    .line 90
    iput-object p4, v3, Lle2;->u:Lw33;

    .line 91
    .line 92
    iput v6, v3, Lle2;->w:I

    .line 93
    .line 94
    invoke-static {v0, v1, v2, v3}, Lw80;->Z(JLdf1;Lfh0;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    sget-object v0, Lri0;->n:Lri0;

    .line 99
    .line 100
    if-ne v2, v0, :cond_4

    .line 101
    .line 102
    return-object v0

    .line 103
    :cond_4
    move-object v0, p2

    .line 104
    move-object v5, p3

    .line 105
    move-object v7, p4

    .line 106
    :goto_1
    check-cast v2, Lie2;

    .line 107
    .line 108
    if-eqz v2, :cond_5

    .line 109
    .line 110
    iget-object v1, p1, Lw33;->n:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v1, Lie2;

    .line 113
    .line 114
    iget-boolean v1, v1, Lie2;->c:Z

    .line 115
    .line 116
    iget-wide v3, v2, Lie2;->a:J

    .line 117
    .line 118
    iget-wide v8, v2, Lie2;->b:J

    .line 119
    .line 120
    new-instance v10, Lie2;

    .line 121
    .line 122
    move/from16 p7, v1

    .line 123
    .line 124
    move-wide p3, v3

    .line 125
    move-wide/from16 p5, v8

    .line 126
    .line 127
    move-object p2, v10

    .line 128
    invoke-direct/range {p2 .. p7}, Lie2;-><init>(JJZ)V

    .line 129
    .line 130
    .line 131
    move-object v1, p2

    .line 132
    iput-object v1, p1, Lw33;->n:Ljava/lang/Object;

    .line 133
    .line 134
    invoke-virtual {v5, v3, v4}, Ldg3;->f(J)J

    .line 135
    .line 136
    .line 137
    move-result-wide v3

    .line 138
    invoke-virtual {v5, v3, v4}, Ldg3;->j(J)F

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    iput p1, v0, Lt33;->n:F

    .line 143
    .line 144
    const/4 p1, 0x0

    .line 145
    const/16 v1, 0x1e

    .line 146
    .line 147
    invoke-static {v1, p1}, Lk30;->a(IF)Lwe;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iput-object p1, v7, Lw33;->n:Ljava/lang/Object;

    .line 152
    .line 153
    iget-object p0, p0, Lwm2;->e:Lgw4;

    .line 154
    .line 155
    iget-wide v3, v2, Lie2;->b:J

    .line 156
    .line 157
    iget-wide v1, v2, Lie2;->a:J

    .line 158
    .line 159
    iget-object p1, p0, Lgw4;->o:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast p1, Lta4;

    .line 162
    .line 163
    const/16 v5, 0x20

    .line 164
    .line 165
    shr-long v7, v1, v5

    .line 166
    .line 167
    long-to-int v5, v7

    .line 168
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    invoke-virtual {p1, v5, v3, v4}, Lta4;->a(FJ)V

    .line 173
    .line 174
    .line 175
    iget-object p0, p0, Lgw4;->p:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast p0, Lta4;

    .line 178
    .line 179
    const-wide v7, 0xffffffffL

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    and-long/2addr v1, v7

    .line 185
    long-to-int p1, v1

    .line 186
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    invoke-virtual {p0, p1, v3, v4}, Lta4;->a(FJ)V

    .line 191
    .line 192
    .line 193
    iget p0, v0, Lt33;->n:F

    .line 194
    .line 195
    invoke-static {p0}, Lw80;->e(F)Z

    .line 196
    .line 197
    .line 198
    move-result p0

    .line 199
    xor-int/2addr p0, v6

    .line 200
    goto :goto_2

    .line 201
    :cond_5
    const/4 p0, 0x0

    .line 202
    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    return-object p0
.end method

.method public static g(Lzy;)Lie2;
    .locals 2

    .line 1
    new-instance v0, Lhe2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lhe2;-><init>(Ln30;I)V

    .line 5
    .line 6
    .line 7
    new-instance p0, Ltb1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1}, Ltb1;-><init>(Lne1;Ldh0;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lse0;->y(Ldf1;)Lbi3;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lbi3;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lbi3;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lie2;

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    :goto_1
    move-object v1, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1, v0}, Lie2;->a(Lie2;)Lie2;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final e(Lbg3;F)F
    .locals 3

    .line 1
    iget-object p0, p0, Lwm2;->a:Ldg3;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Ldg3;->e(F)F

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-virtual {p0, p2}, Ldg3;->i(F)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-object p1, p1, Lbg3;->a:Ldg3;

    .line 12
    .line 13
    iget-object p2, p1, Ldg3;->k:Ljf3;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {p1, p2, v0, v1, v2}, Ldg3;->d(Ljf3;JI)J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    invoke-virtual {p0, p1, p2}, Ldg3;->f(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    invoke-virtual {p0, p1, p2}, Ldg3;->h(J)F

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public final f(Lvv2;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lwm2;->c:Las0;

    .line 2
    .line 3
    iget-object v1, p0, Lme2;->f:Lwu4;

    .line 4
    .line 5
    iget-object v1, v1, Lwu4;->o:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/view/ViewConfiguration;

    .line 8
    .line 9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/high16 v3, 0x42800000    # 64.0f

    .line 12
    .line 13
    const/16 v4, 0x1a

    .line 14
    .line 15
    if-le v2, v4, :cond_0

    .line 16
    .line 17
    invoke-static {v1}, Lsf;->h(Landroid/view/ViewConfiguration;)F

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {v0, v3}, Las0;->v(F)F

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    :goto_0
    neg-float v5, v5

    .line 27
    if-le v2, v4, :cond_1

    .line 28
    .line 29
    invoke-static {v1}, Lsf;->e(Landroid/view/ViewConfiguration;)F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-interface {v0, v3}, Las0;->v(F)F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    :goto_1
    neg-float v0, v0

    .line 39
    iget-object v1, p1, Lvv2;->a:Ljava/util/List;

    .line 40
    .line 41
    new-instance v2, Lgo2;

    .line 42
    .line 43
    const-wide/16 v3, 0x0

    .line 44
    .line 45
    invoke-direct {v2, v3, v4}, Lgo2;-><init>(J)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/4 v4, 0x0

    .line 53
    move v6, v4

    .line 54
    :goto_2
    iget-wide v7, v2, Lgo2;->a:J

    .line 55
    .line 56
    if-ge v6, v3, :cond_2

    .line 57
    .line 58
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lzv2;

    .line 63
    .line 64
    iget-wide v9, v2, Lzv2;->j:J

    .line 65
    .line 66
    invoke-static {v7, v8, v9, v10}, Lgo2;->e(JJ)J

    .line 67
    .line 68
    .line 69
    move-result-wide v7

    .line 70
    new-instance v2, Lgo2;

    .line 71
    .line 72
    invoke-direct {v2, v7, v8}, Lgo2;-><init>(J)V

    .line 73
    .line 74
    .line 75
    add-int/lit8 v6, v6, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    const/16 v1, 0x20

    .line 79
    .line 80
    shr-long v2, v7, v1

    .line 81
    .line 82
    long-to-int v2, v2

    .line 83
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    mul-float/2addr v2, v0

    .line 88
    const-wide v9, 0xffffffffL

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    and-long v6, v7, v9

    .line 94
    .line 95
    long-to-int v0, v6

    .line 96
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    mul-float/2addr v0, v5

    .line 101
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    int-to-long v2, v2

    .line 106
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    int-to-long v5, v0

    .line 111
    shl-long v0, v2, v1

    .line 112
    .line 113
    and-long v2, v5, v9

    .line 114
    .line 115
    or-long v6, v0, v2

    .line 116
    .line 117
    iget-object v0, p0, Lwm2;->a:Ldg3;

    .line 118
    .line 119
    invoke-virtual {v0, v6, v7}, Ldg3;->f(J)J

    .line 120
    .line 121
    .line 122
    move-result-wide v1

    .line 123
    invoke-virtual {v0, v1, v2}, Ldg3;->j(J)F

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    const/4 v2, 0x0

    .line 128
    cmpg-float v3, v1, v2

    .line 129
    .line 130
    if-nez v3, :cond_3

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_3
    cmpl-float v1, v1, v2

    .line 134
    .line 135
    iget-object v0, v0, Ldg3;->a:Lxf3;

    .line 136
    .line 137
    if-lez v1, :cond_4

    .line 138
    .line 139
    invoke-interface {v0}, Lxf3;->i()Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    goto :goto_3

    .line 144
    :cond_4
    invoke-interface {v0}, Lxf3;->c()Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    :goto_3
    if-eqz v4, :cond_5

    .line 149
    .line 150
    new-instance v5, Lie2;

    .line 151
    .line 152
    iget-object p1, p1, Lvv2;->a:Ljava/util/List;

    .line 153
    .line 154
    invoke-static {p1}, Lo70;->h0(Ljava/util/List;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Lzv2;

    .line 159
    .line 160
    iget-wide v8, p1, Lzv2;->b:J

    .line 161
    .line 162
    const/4 v10, 0x0

    .line 163
    invoke-direct/range {v5 .. v10}, Lie2;-><init>(JJZ)V

    .line 164
    .line 165
    .line 166
    iget-object p0, p0, Lme2;->g:Lzy;

    .line 167
    .line 168
    invoke-interface {p0, v5}, Lyh3;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    instance-of p0, p0, Ly30;

    .line 173
    .line 174
    xor-int/lit8 p0, p0, 0x1

    .line 175
    .line 176
    return p0

    .line 177
    :cond_5
    iget-boolean p0, p0, Lwm2;->d:Z

    .line 178
    .line 179
    return p0
.end method

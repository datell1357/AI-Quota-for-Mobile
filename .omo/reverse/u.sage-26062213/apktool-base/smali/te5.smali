.class public abstract Lte5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lrf5;


# instance fields
.field public final n:Lte5;

.field public final o:Ljava/util/UUID;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public r:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Lqf5;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lte5;->q:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lte5;->n:Lte5;

    iput-object p2, p0, Lte5;->o:Ljava/util/UUID;

    iput-object p3, p0, Lte5;->p:Ljava/lang/String;

    .line 24
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lte5;->r:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lte5;Lqf5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lte5;->q:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lte5;->n:Lte5;

    .line 7
    .line 8
    iget-object p1, p2, Lte5;->o:Ljava/util/UUID;

    .line 9
    .line 10
    iput-object p1, p0, Lte5;->o:Ljava/util/UUID;

    .line 11
    .line 12
    iget-object p1, p2, Lte5;->p:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p0, Lte5;->p:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lte5;->r:Ljava/lang/Thread;

    .line 21
    .line 22
    return-void
.end method

.method public static b(Ljava/util/UUID;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 p0, 0x1

    .line 6
    ushr-long/2addr v0, p0

    .line 7
    const/16 p0, 0x24

    .line 8
    .line 9
    invoke-static {v0, v1, p0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "tk-trace-id: "

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 5

    .line 1
    invoke-static {}, Lye5;->c()Lqf5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lqf5;->b:Lrf5;

    .line 6
    .line 7
    iget-object v2, p0, Lte5;->q:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne p0, v1, :cond_0

    .line 12
    .line 13
    check-cast v1, Lte5;

    .line 14
    .line 15
    iget-object v1, v1, Lte5;->n:Lte5;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lye5;->b(Lqf5;Lrf5;)Lrf5;

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lte5;->r:Ljava/lang/Thread;

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    check-cast v1, Lte5;

    .line 25
    .line 26
    iget-object p0, v1, Lte5;->q:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v0, Lx60;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    add-int/lit8 v1, v1, 0x4f

    .line 39
    .line 40
    add-int/2addr v1, v3

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 46
    .line 47
    .line 48
    const-string v1, "Tried to end span "

    .line 49
    .line 50
    const-string v4, ", but that span is not the current span. The current span is "

    .line 51
    .line 52
    invoke-static {v3, v1, v2, v4, p0}, Ldi0;->E(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string p0, "."

    .line 56
    .line 57
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_1
    new-instance p0, Lx60;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    add-int/lit8 v0, v0, 0x65

    .line 77
    .line 78
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 79
    .line 80
    .line 81
    const-string v0, "Tried to end ["

    .line 82
    .line 83
    const-string v3, "], but no trace was active. This is caused by mismatched or missing calls to beginSpan."

    .line 84
    .line 85
    invoke-static {v1, v0, v2, v3}, Ldi0;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 20

    .line 1
    sget-object v0, Lye5;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    move-object/from16 v1, p0

    .line 5
    .line 6
    move v2, v0

    .line 7
    move v3, v2

    .line 8
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 9
    .line 10
    add-int/lit8 v2, v2, 0x1

    .line 11
    .line 12
    iget-object v4, v1, Lte5;->q:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    add-int/2addr v3, v4

    .line 19
    iget-object v1, v1, Lte5;->n:Lte5;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x4

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/16 v1, 0xfa

    .line 27
    .line 28
    const/4 v4, 0x4

    .line 29
    const-string v5, " -> "

    .line 30
    .line 31
    if-le v2, v1, :cond_1f

    .line 32
    .line 33
    add-int/lit8 v1, v2, -0x1

    .line 34
    .line 35
    new-array v6, v2, [Ljava/lang/String;

    .line 36
    .line 37
    move-object/from16 v7, p0

    .line 38
    .line 39
    :goto_1
    if-ltz v1, :cond_2

    .line 40
    .line 41
    iget-object v8, v7, Lte5;->q:Ljava/lang/String;

    .line 42
    .line 43
    aput-object v8, v6, v1

    .line 44
    .line 45
    iget-object v7, v7, Lte5;->n:Lte5;

    .line 46
    .line 47
    add-int/lit8 v1, v1, -0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    new-instance v1, Lhb;

    .line 51
    .line 52
    invoke-direct {v1, v4}, Lhb;-><init>(I)V

    .line 53
    .line 54
    .line 55
    const/4 v7, 0x1

    .line 56
    if-eqz v2, :cond_4

    .line 57
    .line 58
    if-eq v2, v7, :cond_3

    .line 59
    .line 60
    invoke-virtual {v6}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    check-cast v8, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-static {v2, v8}, Lnp1;->k(I[Ljava/lang/Object;)Lnp1;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    aget-object v8, v6, v0

    .line 72
    .line 73
    new-instance v9, Ljn3;

    .line 74
    .line 75
    invoke-direct {v9, v8}, Ljn3;-><init>(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    move-object v8, v9

    .line 79
    goto :goto_2

    .line 80
    :cond_4
    sget-object v8, Lf53;->w:Lf53;

    .line 81
    .line 82
    :goto_2
    invoke-virtual {v8}, Ldp1;->h()Ly64;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    move v9, v0

    .line 87
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    if-eqz v10, :cond_5

    .line 92
    .line 93
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    add-int/lit8 v11, v9, 0x1

    .line 98
    .line 99
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-virtual {v1, v10, v9}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    move v9, v11

    .line 107
    goto :goto_3

    .line 108
    :cond_5
    invoke-virtual {v1, v7}, Lhb;->b(Z)Le53;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget v8, v1, Le53;->s:I

    .line 113
    .line 114
    shr-int/lit8 v9, v2, 0x2

    .line 115
    .line 116
    if-le v8, v9, :cond_6

    .line 117
    .line 118
    :goto_4
    const/4 v10, 0x0

    .line 119
    goto/16 :goto_11

    .line 120
    .line 121
    :cond_6
    add-int/lit8 v11, v2, 0x1

    .line 122
    .line 123
    new-array v12, v11, [I

    .line 124
    .line 125
    move v13, v0

    .line 126
    :goto_5
    if-ge v13, v2, :cond_7

    .line 127
    .line 128
    aget-object v14, v6, v13

    .line 129
    .line 130
    invoke-virtual {v1, v14}, Le53;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v14

    .line 134
    check-cast v14, Ljava/lang/Integer;

    .line 135
    .line 136
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v14

    .line 140
    aput v14, v12, v13

    .line 141
    .line 142
    add-int/lit8 v13, v13, 0x1

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_7
    aput v8, v12, v2

    .line 146
    .line 147
    new-instance v1, Ltz0;

    .line 148
    .line 149
    invoke-direct {v1, v12}, Ltz0;-><init>([I)V

    .line 150
    .line 151
    .line 152
    move v8, v0

    .line 153
    :goto_6
    const/4 v13, -0x1

    .line 154
    if-ge v8, v11, :cond_10

    .line 155
    .line 156
    iget v14, v1, Ltz0;->d:I

    .line 157
    .line 158
    add-int/2addr v14, v7

    .line 159
    iput v14, v1, Ltz0;->d:I

    .line 160
    .line 161
    aget v14, v12, v8

    .line 162
    .line 163
    :goto_7
    const/4 v15, 0x0

    .line 164
    :goto_8
    iget v10, v1, Ltz0;->d:I

    .line 165
    .line 166
    if-lez v10, :cond_f

    .line 167
    .line 168
    iget v10, v1, Ltz0;->c:I

    .line 169
    .line 170
    iget-object v4, v1, Ltz0;->g:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v4, Lpf5;

    .line 173
    .line 174
    move/from16 v16, v7

    .line 175
    .line 176
    const/high16 v7, 0x40000000    # 2.0f

    .line 177
    .line 178
    if-nez v10, :cond_b

    .line 179
    .line 180
    iget-object v4, v4, Lpf5;->d:Ljava/util/HashMap;

    .line 181
    .line 182
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-nez v4, :cond_9

    .line 191
    .line 192
    new-instance v4, Lpf5;

    .line 193
    .line 194
    invoke-direct {v4, v8, v7}, Lpf5;-><init>(II)V

    .line 195
    .line 196
    .line 197
    iget-object v7, v1, Ltz0;->g:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v7, Lpf5;

    .line 200
    .line 201
    iget-object v7, v7, Lpf5;->d:Ljava/util/HashMap;

    .line 202
    .line 203
    invoke-virtual {v7, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    if-eqz v15, :cond_8

    .line 207
    .line 208
    iget-object v4, v1, Ltz0;->g:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v4, Lpf5;

    .line 211
    .line 212
    iput-object v4, v15, Lpf5;->c:Lpf5;

    .line 213
    .line 214
    :cond_8
    iget v4, v1, Ltz0;->d:I

    .line 215
    .line 216
    add-int/2addr v4, v13

    .line 217
    iput v4, v1, Ltz0;->d:I

    .line 218
    .line 219
    invoke-virtual {v1}, Ltz0;->d()V

    .line 220
    .line 221
    .line 222
    move/from16 v7, v16

    .line 223
    .line 224
    const/4 v4, 0x4

    .line 225
    goto :goto_7

    .line 226
    :cond_9
    if-eqz v15, :cond_a

    .line 227
    .line 228
    iget-object v4, v1, Ltz0;->g:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v4, Lpf5;

    .line 231
    .line 232
    iput-object v4, v15, Lpf5;->c:Lpf5;

    .line 233
    .line 234
    :cond_a
    iput v8, v1, Ltz0;->b:I

    .line 235
    .line 236
    iget v4, v1, Ltz0;->c:I

    .line 237
    .line 238
    add-int/lit8 v4, v4, 0x1

    .line 239
    .line 240
    iput v4, v1, Ltz0;->c:I

    .line 241
    .line 242
    invoke-virtual {v1}, Ltz0;->c()V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_9

    .line 246
    .line 247
    :cond_b
    iget-object v4, v4, Lpf5;->d:Ljava/util/HashMap;

    .line 248
    .line 249
    iget v10, v1, Ltz0;->b:I

    .line 250
    .line 251
    aget v10, v12, v10

    .line 252
    .line 253
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    check-cast v4, Lpf5;

    .line 262
    .line 263
    iget v4, v4, Lpf5;->a:I

    .line 264
    .line 265
    iget v10, v1, Ltz0;->c:I

    .line 266
    .line 267
    add-int/2addr v4, v10

    .line 268
    aget v4, v12, v4

    .line 269
    .line 270
    if-ne v4, v14, :cond_d

    .line 271
    .line 272
    if-eqz v15, :cond_c

    .line 273
    .line 274
    iget-object v4, v1, Ltz0;->g:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v4, Lpf5;

    .line 277
    .line 278
    iput-object v4, v15, Lpf5;->c:Lpf5;

    .line 279
    .line 280
    :cond_c
    add-int/lit8 v10, v10, 0x1

    .line 281
    .line 282
    iput v10, v1, Ltz0;->c:I

    .line 283
    .line 284
    invoke-virtual {v1}, Ltz0;->c()V

    .line 285
    .line 286
    .line 287
    goto :goto_9

    .line 288
    :cond_d
    iget-object v4, v1, Ltz0;->g:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast v4, Lpf5;

    .line 291
    .line 292
    iget-object v4, v4, Lpf5;->d:Ljava/util/HashMap;

    .line 293
    .line 294
    iget v10, v1, Ltz0;->b:I

    .line 295
    .line 296
    aget v10, v12, v10

    .line 297
    .line 298
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 299
    .line 300
    .line 301
    move-result-object v10

    .line 302
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    check-cast v4, Lpf5;

    .line 307
    .line 308
    new-instance v10, Lpf5;

    .line 309
    .line 310
    iget v0, v4, Lpf5;->a:I

    .line 311
    .line 312
    move/from16 v17, v13

    .line 313
    .line 314
    iget v13, v1, Ltz0;->c:I

    .line 315
    .line 316
    add-int/2addr v13, v0

    .line 317
    add-int/lit8 v13, v13, -0x1

    .line 318
    .line 319
    invoke-direct {v10, v0, v13}, Lpf5;-><init>(II)V

    .line 320
    .line 321
    .line 322
    iget-object v0, v1, Ltz0;->g:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast v0, Lpf5;

    .line 325
    .line 326
    iget-object v0, v0, Lpf5;->d:Ljava/util/HashMap;

    .line 327
    .line 328
    iget v13, v1, Ltz0;->b:I

    .line 329
    .line 330
    aget v13, v12, v13

    .line 331
    .line 332
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 333
    .line 334
    .line 335
    move-result-object v13

    .line 336
    invoke-virtual {v0, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    iget v0, v10, Lpf5;->b:I

    .line 340
    .line 341
    add-int/lit8 v0, v0, 0x1

    .line 342
    .line 343
    aget v13, v12, v0

    .line 344
    .line 345
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 346
    .line 347
    .line 348
    move-result-object v13

    .line 349
    iget-object v7, v10, Lpf5;->d:Ljava/util/HashMap;

    .line 350
    .line 351
    invoke-virtual {v7, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    iput v0, v4, Lpf5;->a:I

    .line 355
    .line 356
    if-eqz v15, :cond_e

    .line 357
    .line 358
    iput-object v10, v15, Lpf5;->c:Lpf5;

    .line 359
    .line 360
    :cond_e
    new-instance v0, Lpf5;

    .line 361
    .line 362
    const/high16 v4, 0x40000000    # 2.0f

    .line 363
    .line 364
    invoke-direct {v0, v8, v4}, Lpf5;-><init>(II)V

    .line 365
    .line 366
    .line 367
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    invoke-virtual {v7, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    iget v0, v1, Ltz0;->d:I

    .line 375
    .line 376
    add-int/lit8 v0, v0, -0x1

    .line 377
    .line 378
    iput v0, v1, Ltz0;->d:I

    .line 379
    .line 380
    invoke-virtual {v1}, Ltz0;->d()V

    .line 381
    .line 382
    .line 383
    move-object v15, v10

    .line 384
    move/from16 v7, v16

    .line 385
    .line 386
    move/from16 v13, v17

    .line 387
    .line 388
    const/4 v0, 0x0

    .line 389
    const/4 v4, 0x4

    .line 390
    goto/16 :goto_8

    .line 391
    .line 392
    :cond_f
    move/from16 v16, v7

    .line 393
    .line 394
    :goto_9
    add-int/lit8 v8, v8, 0x1

    .line 395
    .line 396
    move/from16 v7, v16

    .line 397
    .line 398
    const/4 v0, 0x0

    .line 399
    const/4 v4, 0x4

    .line 400
    goto/16 :goto_6

    .line 401
    .line 402
    :cond_10
    move/from16 v16, v7

    .line 403
    .line 404
    move/from16 v17, v13

    .line 405
    .line 406
    new-instance v0, Ljava/util/ArrayDeque;

    .line 407
    .line 408
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 409
    .line 410
    .line 411
    new-instance v4, Lof5;

    .line 412
    .line 413
    iget-object v7, v1, Ltz0;->f:Ljava/lang/Object;

    .line 414
    .line 415
    check-cast v7, Lpf5;

    .line 416
    .line 417
    move/from16 v8, v17

    .line 418
    .line 419
    const/4 v10, 0x0

    .line 420
    invoke-direct {v4, v7, v10, v8, v8}, Lof5;-><init>(Lpf5;III)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    :goto_a
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 427
    .line 428
    .line 429
    move-result v8

    .line 430
    if-nez v8, :cond_16

    .line 431
    .line 432
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v8

    .line 436
    check-cast v8, Lof5;

    .line 437
    .line 438
    iget-object v10, v8, Lof5;->d:Lpf5;

    .line 439
    .line 440
    iget-object v10, v10, Lpf5;->d:Ljava/util/HashMap;

    .line 441
    .line 442
    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 443
    .line 444
    .line 445
    move-result-object v10

    .line 446
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 447
    .line 448
    .line 449
    move-result-object v10

    .line 450
    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 451
    .line 452
    .line 453
    move-result v11

    .line 454
    if-eqz v11, :cond_15

    .line 455
    .line 456
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v11

    .line 460
    check-cast v11, Lpf5;

    .line 461
    .line 462
    iget v13, v8, Lof5;->b:I

    .line 463
    .line 464
    iget v14, v8, Lof5;->c:I

    .line 465
    .line 466
    iget v15, v11, Lpf5;->a:I

    .line 467
    .line 468
    move-object/from16 v17, v7

    .line 469
    .line 470
    iget v7, v11, Lpf5;->b:I

    .line 471
    .line 472
    invoke-virtual {v1, v13, v14, v15, v7}, Ltz0;->g(IIII)Z

    .line 473
    .line 474
    .line 475
    move-result v15

    .line 476
    if-nez v15, :cond_13

    .line 477
    .line 478
    iget-object v15, v11, Lpf5;->d:Ljava/util/HashMap;

    .line 479
    .line 480
    invoke-virtual {v15}, Ljava/util/HashMap;->isEmpty()Z

    .line 481
    .line 482
    .line 483
    move-result v15

    .line 484
    if-eqz v15, :cond_11

    .line 485
    .line 486
    iget v15, v11, Lpf5;->a:I

    .line 487
    .line 488
    add-int v18, v15, v14

    .line 489
    .line 490
    move-object/from16 v19, v10

    .line 491
    .line 492
    sub-int v10, v18, v13

    .line 493
    .line 494
    invoke-virtual {v1, v13, v14, v15, v10}, Ltz0;->g(IIII)Z

    .line 495
    .line 496
    .line 497
    move-result v10

    .line 498
    if-eqz v10, :cond_12

    .line 499
    .line 500
    :goto_c
    move/from16 v15, v16

    .line 501
    .line 502
    goto :goto_d

    .line 503
    :cond_11
    move-object/from16 v19, v10

    .line 504
    .line 505
    :cond_12
    new-instance v10, Lof5;

    .line 506
    .line 507
    iget v13, v11, Lpf5;->a:I

    .line 508
    .line 509
    move/from16 v15, v16

    .line 510
    .line 511
    invoke-direct {v10, v11, v15, v13, v7}, Lof5;-><init>(Lpf5;III)V

    .line 512
    .line 513
    .line 514
    goto :goto_e

    .line 515
    :cond_13
    move-object/from16 v19, v10

    .line 516
    .line 517
    goto :goto_c

    .line 518
    :goto_d
    new-instance v10, Lof5;

    .line 519
    .line 520
    iget v7, v8, Lof5;->a:I

    .line 521
    .line 522
    add-int/2addr v7, v15

    .line 523
    invoke-direct {v10, v11, v7, v13, v14}, Lof5;-><init>(Lpf5;III)V

    .line 524
    .line 525
    .line 526
    :goto_e
    iget v7, v4, Lof5;->a:I

    .line 527
    .line 528
    iget v11, v10, Lof5;->a:I

    .line 529
    .line 530
    if-ge v7, v11, :cond_14

    .line 531
    .line 532
    move-object v4, v10

    .line 533
    :cond_14
    invoke-virtual {v0, v10}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 534
    .line 535
    .line 536
    move-object/from16 v7, v17

    .line 537
    .line 538
    move-object/from16 v10, v19

    .line 539
    .line 540
    const/16 v16, 0x1

    .line 541
    .line 542
    goto :goto_b

    .line 543
    :cond_15
    const/16 v16, 0x1

    .line 544
    .line 545
    goto :goto_a

    .line 546
    :cond_16
    move-object/from16 v17, v7

    .line 547
    .line 548
    iget v0, v4, Lof5;->c:I

    .line 549
    .line 550
    const/16 v16, 0x1

    .line 551
    .line 552
    add-int/lit8 v0, v0, 0x1

    .line 553
    .line 554
    array-length v1, v12

    .line 555
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    const/4 v10, 0x0

    .line 560
    :cond_17
    iget v1, v4, Lof5;->b:I

    .line 561
    .line 562
    sub-int v8, v0, v1

    .line 563
    .line 564
    rem-int v11, v10, v8

    .line 565
    .line 566
    add-int/2addr v11, v1

    .line 567
    aget v11, v12, v11

    .line 568
    .line 569
    iget-object v7, v7, Lpf5;->d:Ljava/util/HashMap;

    .line 570
    .line 571
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 572
    .line 573
    .line 574
    move-result-object v11

    .line 575
    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v7

    .line 579
    check-cast v7, Lpf5;

    .line 580
    .line 581
    if-nez v7, :cond_18

    .line 582
    .line 583
    goto :goto_10

    .line 584
    :cond_18
    iget v11, v7, Lpf5;->a:I

    .line 585
    .line 586
    :goto_f
    iget v13, v7, Lpf5;->b:I

    .line 587
    .line 588
    const/16 v16, 0x1

    .line 589
    .line 590
    add-int/lit8 v13, v13, 0x1

    .line 591
    .line 592
    if-ge v11, v13, :cond_17

    .line 593
    .line 594
    array-length v13, v12

    .line 595
    if-ge v11, v13, :cond_17

    .line 596
    .line 597
    rem-int v13, v10, v8

    .line 598
    .line 599
    add-int/2addr v13, v1

    .line 600
    aget v13, v12, v13

    .line 601
    .line 602
    aget v14, v12, v11

    .line 603
    .line 604
    if-ne v13, v14, :cond_19

    .line 605
    .line 606
    add-int/lit8 v10, v10, 0x1

    .line 607
    .line 608
    add-int/lit8 v11, v11, 0x1

    .line 609
    .line 610
    goto :goto_f

    .line 611
    :cond_19
    :goto_10
    new-instance v4, Lky0;

    .line 612
    .line 613
    div-int/2addr v10, v8

    .line 614
    invoke-direct {v4, v1, v0, v10}, Lky0;-><init>(III)V

    .line 615
    .line 616
    .line 617
    mul-int/2addr v8, v10

    .line 618
    if-ge v8, v9, :cond_1a

    .line 619
    .line 620
    goto/16 :goto_4

    .line 621
    .line 622
    :cond_1a
    move-object v10, v4

    .line 623
    :goto_11
    const-string v0, ""

    .line 624
    .line 625
    if-nez v10, :cond_1b

    .line 626
    .line 627
    goto :goto_13

    .line 628
    :cond_1b
    iget v1, v10, Lky0;->b:I

    .line 629
    .line 630
    if-lez v1, :cond_1c

    .line 631
    .line 632
    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v4

    .line 636
    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v4

    .line 640
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v4

    .line 644
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v4

    .line 648
    goto :goto_12

    .line 649
    :cond_1c
    move-object v4, v0

    .line 650
    :goto_12
    iget v7, v10, Lky0;->c:I

    .line 651
    .line 652
    iget v8, v10, Lky0;->d:I

    .line 653
    .line 654
    sub-int v9, v7, v1

    .line 655
    .line 656
    mul-int/2addr v9, v8

    .line 657
    add-int/2addr v9, v1

    .line 658
    if-ge v9, v2, :cond_1d

    .line 659
    .line 660
    invoke-static {v6, v9, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    :cond_1d
    invoke-static {v6, v1, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    invoke-static {v5, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 685
    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    .line 687
    .line 688
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 689
    .line 690
    .line 691
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    const-string v4, "{"

    .line 695
    .line 696
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    const-string v1, "}x"

    .line 703
    .line 704
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    :goto_13
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 718
    .line 719
    .line 720
    move-result v1

    .line 721
    if-eqz v1, :cond_1e

    .line 722
    .line 723
    goto :goto_14

    .line 724
    :cond_1e
    return-object v0

    .line 725
    :cond_1f
    :goto_14
    new-array v0, v3, [C

    .line 726
    .line 727
    move-object/from16 v1, p0

    .line 728
    .line 729
    :cond_20
    :goto_15
    if-eqz v1, :cond_21

    .line 730
    .line 731
    iget-object v2, v1, Lte5;->q:Ljava/lang/String;

    .line 732
    .line 733
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 734
    .line 735
    .line 736
    move-result v4

    .line 737
    sub-int/2addr v3, v4

    .line 738
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 739
    .line 740
    .line 741
    move-result v4

    .line 742
    const/4 v10, 0x0

    .line 743
    invoke-virtual {v2, v10, v4, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 744
    .line 745
    .line 746
    iget-object v1, v1, Lte5;->n:Lte5;

    .line 747
    .line 748
    if-eqz v1, :cond_20

    .line 749
    .line 750
    add-int/lit8 v3, v3, -0x4

    .line 751
    .line 752
    const/4 v2, 0x4

    .line 753
    invoke-virtual {v5, v10, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 754
    .line 755
    .line 756
    goto :goto_15

    .line 757
    :cond_21
    new-instance v1, Ljava/lang/String;

    .line 758
    .line 759
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 760
    .line 761
    .line 762
    return-object v1
.end method

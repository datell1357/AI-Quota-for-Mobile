.class public final Ljc3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lic3;


# instance fields
.field public final n:Lpe1;

.field public final o:Lkg2;

.field public p:Lkg2;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lpe1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ljc3;->n:Lpe1;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    new-instance p2, Lkg2;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-direct {p2, v0}, Lkg2;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/util/Map$Entry;

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p2, v1, v0}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    :goto_1
    const/4 p2, 0x0

    .line 57
    :cond_2
    iput-object p2, p0, Ljc3;->o:Lkg2;

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lne1;)Lhc3;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-static {v2}, Lqj0;->P(C)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Ljc3;->p:Lkg2;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    sget-object v0, Ltd3;->a:[J

    .line 23
    .line 24
    new-instance v0, Lkg2;

    .line 25
    .line 26
    invoke-direct {v0}, Lkg2;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Ljc3;->p:Lkg2;

    .line 30
    .line 31
    :cond_0
    move-object v2, v0

    .line 32
    invoke-virtual {v2, p1}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    new-instance p0, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p1, p0}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    check-cast p0, Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    new-instance v1, Leh;

    .line 52
    .line 53
    const/16 v5, 0x1d

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    move-object v3, p1

    .line 57
    move-object v4, p2

    .line 58
    invoke-direct/range {v1 .. v6}, Leh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_2
    move-object v3, p1

    .line 63
    move-object v4, p2

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const-string p0, "Registered key is empty or blank"

    .line 68
    .line 69
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x0

    .line 73
    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Ljc3;->n:Lpe1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final c()Ljava/util/Map;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ljc3;->o:Lkg2;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v2, v0, Ljc3;->p:Lkg2;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    sget-object v0, Lh01;->n:Lh01;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget v3, v1, Lkg2;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v3, v2

    .line 21
    :goto_0
    iget-object v4, v0, Ljc3;->p:Lkg2;

    .line 22
    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    iget v4, v4, Lkg2;->e:I

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    move v4, v2

    .line 29
    :goto_1
    add-int/2addr v3, v4

    .line 30
    new-instance v4, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x7

    .line 36
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    const/16 v11, 0x8

    .line 42
    .line 43
    if-eqz v1, :cond_6

    .line 44
    .line 45
    iget-object v12, v1, Lkg2;->b:[Ljava/lang/Object;

    .line 46
    .line 47
    iget-object v13, v1, Lkg2;->c:[Ljava/lang/Object;

    .line 48
    .line 49
    iget-object v1, v1, Lkg2;->a:[J

    .line 50
    .line 51
    array-length v14, v1

    .line 52
    add-int/lit8 v14, v14, -0x2

    .line 53
    .line 54
    if-ltz v14, :cond_6

    .line 55
    .line 56
    move v15, v2

    .line 57
    const-wide/16 v16, 0x80

    .line 58
    .line 59
    :goto_2
    aget-wide v5, v1, v15

    .line 60
    .line 61
    const-wide/16 v18, 0xff

    .line 62
    .line 63
    not-long v7, v5

    .line 64
    shl-long/2addr v7, v3

    .line 65
    and-long/2addr v7, v5

    .line 66
    and-long/2addr v7, v9

    .line 67
    cmp-long v7, v7, v9

    .line 68
    .line 69
    if-eqz v7, :cond_5

    .line 70
    .line 71
    sub-int v7, v15, v14

    .line 72
    .line 73
    not-int v7, v7

    .line 74
    ushr-int/lit8 v7, v7, 0x1f

    .line 75
    .line 76
    rsub-int/lit8 v7, v7, 0x8

    .line 77
    .line 78
    move v8, v2

    .line 79
    :goto_3
    if-ge v8, v7, :cond_4

    .line 80
    .line 81
    and-long v20, v5, v18

    .line 82
    .line 83
    cmp-long v20, v20, v16

    .line 84
    .line 85
    if-gez v20, :cond_3

    .line 86
    .line 87
    shl-int/lit8 v20, v15, 0x3

    .line 88
    .line 89
    add-int v20, v20, v8

    .line 90
    .line 91
    aget-object v21, v12, v20

    .line 92
    .line 93
    aget-object v20, v13, v20

    .line 94
    .line 95
    move/from16 v22, v3

    .line 96
    .line 97
    move-object/from16 v3, v20

    .line 98
    .line 99
    check-cast v3, Ljava/util/List;

    .line 100
    .line 101
    move-wide/from16 v23, v9

    .line 102
    .line 103
    move-object/from16 v9, v21

    .line 104
    .line 105
    check-cast v9, Ljava/lang/String;

    .line 106
    .line 107
    invoke-interface {v4, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_3
    move/from16 v22, v3

    .line 112
    .line 113
    move-wide/from16 v23, v9

    .line 114
    .line 115
    :goto_4
    shr-long/2addr v5, v11

    .line 116
    add-int/lit8 v8, v8, 0x1

    .line 117
    .line 118
    move/from16 v3, v22

    .line 119
    .line 120
    move-wide/from16 v9, v23

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_4
    move/from16 v22, v3

    .line 124
    .line 125
    move-wide/from16 v23, v9

    .line 126
    .line 127
    if-ne v7, v11, :cond_7

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_5
    move/from16 v22, v3

    .line 131
    .line 132
    move-wide/from16 v23, v9

    .line 133
    .line 134
    :goto_5
    if-eq v15, v14, :cond_7

    .line 135
    .line 136
    add-int/lit8 v15, v15, 0x1

    .line 137
    .line 138
    move/from16 v3, v22

    .line 139
    .line 140
    move-wide/from16 v9, v23

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_6
    move/from16 v22, v3

    .line 144
    .line 145
    move-wide/from16 v23, v9

    .line 146
    .line 147
    const-wide/16 v16, 0x80

    .line 148
    .line 149
    const-wide/16 v18, 0xff

    .line 150
    .line 151
    :cond_7
    iget-object v1, v0, Ljc3;->p:Lkg2;

    .line 152
    .line 153
    if-eqz v1, :cond_11

    .line 154
    .line 155
    iget-object v3, v1, Lkg2;->b:[Ljava/lang/Object;

    .line 156
    .line 157
    iget-object v5, v1, Lkg2;->c:[Ljava/lang/Object;

    .line 158
    .line 159
    iget-object v1, v1, Lkg2;->a:[J

    .line 160
    .line 161
    array-length v6, v1

    .line 162
    add-int/lit8 v6, v6, -0x2

    .line 163
    .line 164
    if-ltz v6, :cond_11

    .line 165
    .line 166
    move v7, v2

    .line 167
    :goto_6
    aget-wide v8, v1, v7

    .line 168
    .line 169
    not-long v12, v8

    .line 170
    shl-long v12, v12, v22

    .line 171
    .line 172
    and-long/2addr v12, v8

    .line 173
    and-long v12, v12, v23

    .line 174
    .line 175
    cmp-long v10, v12, v23

    .line 176
    .line 177
    if-eqz v10, :cond_10

    .line 178
    .line 179
    sub-int v10, v7, v6

    .line 180
    .line 181
    not-int v10, v10

    .line 182
    ushr-int/lit8 v10, v10, 0x1f

    .line 183
    .line 184
    rsub-int/lit8 v10, v10, 0x8

    .line 185
    .line 186
    move v12, v2

    .line 187
    :goto_7
    if-ge v12, v10, :cond_f

    .line 188
    .line 189
    and-long v13, v8, v18

    .line 190
    .line 191
    cmp-long v13, v13, v16

    .line 192
    .line 193
    if-gez v13, :cond_e

    .line 194
    .line 195
    shl-int/lit8 v13, v7, 0x3

    .line 196
    .line 197
    add-int/2addr v13, v12

    .line 198
    aget-object v14, v3, v13

    .line 199
    .line 200
    aget-object v13, v5, v13

    .line 201
    .line 202
    check-cast v13, Ljava/util/List;

    .line 203
    .line 204
    check-cast v14, Ljava/lang/String;

    .line 205
    .line 206
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 207
    .line 208
    .line 209
    move-result v15

    .line 210
    const/16 v20, 0x0

    .line 211
    .line 212
    move/from16 v21, v11

    .line 213
    .line 214
    const/4 v11, 0x1

    .line 215
    if-ne v15, v11, :cond_a

    .line 216
    .line 217
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    check-cast v11, Lne1;

    .line 222
    .line 223
    invoke-interface {v11}, Lne1;->a()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v11

    .line 227
    if-eqz v11, :cond_8

    .line 228
    .line 229
    invoke-virtual {v0, v11}, Ljc3;->b(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v13

    .line 233
    if-eqz v13, :cond_9

    .line 234
    .line 235
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v11

    .line 239
    invoke-static {v11}, Ltv4;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 240
    .line 241
    .line 242
    move-result-object v11

    .line 243
    invoke-interface {v4, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    :cond_8
    move-object/from16 v26, v1

    .line 247
    .line 248
    goto :goto_a

    .line 249
    :cond_9
    invoke-static {v11}, Ln44;->m0(Ljava/lang/Object;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-static {v0}, Lp61;->e(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    return-object v20

    .line 257
    :cond_a
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 258
    .line 259
    .line 260
    move-result v11

    .line 261
    new-instance v15, Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-direct {v15, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    .line 265
    .line 266
    :goto_8
    if-ge v2, v11, :cond_d

    .line 267
    .line 268
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v25

    .line 272
    check-cast v25, Lne1;

    .line 273
    .line 274
    move-object/from16 v26, v1

    .line 275
    .line 276
    invoke-interface/range {v25 .. v25}, Lne1;->a()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    if-eqz v1, :cond_c

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljc3;->b(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v25

    .line 286
    if-eqz v25, :cond_b

    .line 287
    .line 288
    goto :goto_9

    .line 289
    :cond_b
    invoke-static {v1}, Ln44;->m0(Ljava/lang/Object;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-static {v0}, Lp61;->e(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    return-object v20

    .line 297
    :cond_c
    :goto_9
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    add-int/lit8 v2, v2, 0x1

    .line 301
    .line 302
    move-object/from16 v1, v26

    .line 303
    .line 304
    goto :goto_8

    .line 305
    :cond_d
    move-object/from16 v26, v1

    .line 306
    .line 307
    invoke-interface {v4, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    goto :goto_a

    .line 311
    :cond_e
    move-object/from16 v26, v1

    .line 312
    .line 313
    move/from16 v21, v11

    .line 314
    .line 315
    :goto_a
    shr-long v8, v8, v21

    .line 316
    .line 317
    add-int/lit8 v12, v12, 0x1

    .line 318
    .line 319
    move/from16 v11, v21

    .line 320
    .line 321
    move-object/from16 v1, v26

    .line 322
    .line 323
    const/4 v2, 0x0

    .line 324
    goto/16 :goto_7

    .line 325
    .line 326
    :cond_f
    move-object/from16 v26, v1

    .line 327
    .line 328
    move v1, v11

    .line 329
    if-ne v10, v1, :cond_11

    .line 330
    .line 331
    goto :goto_b

    .line 332
    :cond_10
    move-object/from16 v26, v1

    .line 333
    .line 334
    move v1, v11

    .line 335
    :goto_b
    if-eq v7, v6, :cond_11

    .line 336
    .line 337
    add-int/lit8 v7, v7, 0x1

    .line 338
    .line 339
    move v11, v1

    .line 340
    move-object/from16 v1, v26

    .line 341
    .line 342
    const/4 v2, 0x0

    .line 343
    goto/16 :goto_6

    .line 344
    .line 345
    :cond_11
    return-object v4
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Ljc3;->o:Lkg2;

    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lkg2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/List;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v0

    .line 14
    :goto_0
    if-eqz v1, :cond_4

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x1

    .line 28
    if-le v0, v2, :cond_3

    .line 29
    .line 30
    if-eqz p0, :cond_3

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-interface {v1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0, p1}, Lkg2;->f(Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-gez v2, :cond_2

    .line 45
    .line 46
    not-int v2, v2

    .line 47
    :cond_2
    iget-object v3, p0, Lkg2;->c:[Ljava/lang/Object;

    .line 48
    .line 49
    aget-object v4, v3, v2

    .line 50
    .line 51
    iget-object p0, p0, Lkg2;->b:[Ljava/lang/Object;

    .line 52
    .line 53
    aput-object p1, p0, v2

    .line 54
    .line 55
    aput-object v0, v3, v2

    .line 56
    .line 57
    check-cast v4, Ljava/util/List;

    .line 58
    .line 59
    :cond_3
    const/4 p0, 0x0

    .line 60
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_4
    :goto_1
    return-object v0
.end method

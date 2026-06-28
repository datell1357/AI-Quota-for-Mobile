.class public final Ln33;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lhs1;

.field public final b:Lq9;

.field public final c:Lhb;

.field public final d:Lwy3;

.field public final e:Ldg2;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Ld9;

.field public j:J

.field public final k:Lje;

.field public final l:Ljg2;


# direct methods
.method public constructor <init>(Ltf2;Lq9;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln33;->a:Lhs1;

    .line 5
    .line 6
    iput-object p2, p0, Ln33;->b:Lq9;

    .line 7
    .line 8
    new-instance p1, Lhb;

    .line 9
    .line 10
    const/4 p2, 0x6

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p1, p2, v0}, Lhb;-><init>(IB)V

    .line 13
    .line 14
    .line 15
    const/16 p2, 0xc0

    .line 16
    .line 17
    new-array v0, p2, [J

    .line 18
    .line 19
    iput-object v0, p1, Lhb;->c:Ljava/lang/Object;

    .line 20
    .line 21
    new-array p2, p2, [J

    .line 22
    .line 23
    iput-object p2, p1, Lhb;->d:Ljava/lang/Object;

    .line 24
    .line 25
    iput-object p1, p0, Ln33;->c:Lhb;

    .line 26
    .line 27
    new-instance p1, Lwy3;

    .line 28
    .line 29
    invoke-direct {p1}, Lwy3;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Ln33;->d:Lwy3;

    .line 33
    .line 34
    new-instance p1, Ldg2;

    .line 35
    .line 36
    invoke-direct {p1}, Ldg2;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Ln33;->e:Ldg2;

    .line 40
    .line 41
    const-wide/16 p1, -0x1

    .line 42
    .line 43
    iput-wide p1, p0, Ln33;->j:J

    .line 44
    .line 45
    new-instance p1, Lje;

    .line 46
    .line 47
    const/16 p2, 0xb

    .line 48
    .line 49
    invoke-direct {p1, p2, p0}, Lje;-><init>(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Ln33;->k:Lje;

    .line 53
    .line 54
    new-instance p1, Ljg2;

    .line 55
    .line 56
    invoke-direct {p1}, Ljg2;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Ln33;->l:Ljg2;

    .line 60
    .line 61
    return-void
.end method

.method public static c(Lmm2;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmm2;->c0:Lrr2;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lci1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lci1;->b()[F

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lgg4;->J([F)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public static d(Lxy1;)Z
    .locals 1

    .line 1
    iget p0, p0, Lxy1;->t:I

    .line 2
    .line 3
    const/4 v0, -0x4

    .line 4
    if-eq p0, v0, :cond_0

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

.method public static g(Lxy1;)J
    .locals 5

    .line 1
    iget-object p0, p0, Lxy1;->S:Lbo;

    .line 2
    .line 3
    iget-object v0, p0, Lbo;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lmm2;

    .line 6
    .line 7
    iget-object p0, p0, Lbo;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lgr1;

    .line 10
    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    :goto_0
    if-eqz p0, :cond_1

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    invoke-static {p0}, Ln33;->c(Lmm2;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    const-wide v0, 0x7fffffff7fffffffL

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    return-wide v0

    .line 29
    :cond_0
    iget-wide v3, p0, Lmm2;->Q:J

    .line 30
    .line 31
    invoke-static {v1, v2, v3, v4}, Ljs1;->c(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    iget-object p0, p0, Lmm2;->H:Lmm2;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-wide v1
.end method

.method public static j(Lxy1;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lxy1;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lxy1;->S:Lbo;

    .line 6
    .line 7
    iget-object v0, v0, Lbo;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lmm2;

    .line 10
    .line 11
    invoke-static {v0}, Ln33;->c(Lmm2;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lxy1;->p:Z

    .line 19
    .line 20
    iget-boolean v1, p0, Lxy1;->r:Z

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-static {p0}, Ln33;->g(Lxy1;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    iput-wide v1, p0, Lxy1;->q:J

    .line 29
    .line 30
    iput-boolean v0, p0, Lxy1;->r:Z

    .line 31
    .line 32
    :cond_0
    iget-wide v1, p0, Lxy1;->q:J

    .line 33
    .line 34
    const-wide v3, 0x7fffffff7fffffffL

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    invoke-static {v1, v2, v3, v4}, Ljs1;->a(JJ)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Lxy1;->z()Lug2;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    iget-object v1, p0, Lug2;->n:[Ljava/lang/Object;

    .line 50
    .line 51
    iget p0, p0, Lug2;->p:I

    .line 52
    .line 53
    :goto_0
    if-ge v0, p0, :cond_1

    .line 54
    .line 55
    aget-object v2, v1, v0

    .line 56
    .line 57
    check-cast v2, Lxy1;

    .line 58
    .line 59
    invoke-static {v2}, Ln33;->j(Lxy1;)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ln33;->i:Ld9;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v2, v0, Ln33;->b:Lq9;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, Ln33;->i:Ld9;

    .line 14
    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v8

    .line 19
    iget-boolean v1, v0, Ln33;->f:Z

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v12, 0x0

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    iget-boolean v3, v0, Ln33;->g:Z

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v11, v12

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    move v11, v2

    .line 33
    :goto_1
    const-wide/16 v15, 0x0

    .line 34
    .line 35
    iget-object v3, v0, Ln33;->c:Lhb;

    .line 36
    .line 37
    move v4, v2

    .line 38
    iget-object v2, v0, Ln33;->d:Lwy3;

    .line 39
    .line 40
    if-eqz v1, :cond_f

    .line 41
    .line 42
    iput-boolean v12, v0, Ln33;->f:Z

    .line 43
    .line 44
    iget-object v1, v0, Ln33;->e:Ldg2;

    .line 45
    .line 46
    iget-object v5, v1, Ldg2;->a:[Ljava/lang/Object;

    .line 47
    .line 48
    iget v1, v1, Ldg2;->b:I

    .line 49
    .line 50
    move v6, v12

    .line 51
    :goto_2
    if-ge v6, v1, :cond_3

    .line 52
    .line 53
    aget-object v7, v5, v6

    .line 54
    .line 55
    check-cast v7, Lne1;

    .line 56
    .line 57
    invoke-interface {v7}, Lne1;->a()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    add-int/lit8 v6, v6, 0x1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    iget-object v1, v3, Lhb;->c:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, [J

    .line 66
    .line 67
    iget v5, v3, Lhb;->b:I

    .line 68
    .line 69
    move v6, v12

    .line 70
    :goto_3
    array-length v7, v1

    .line 71
    add-int/lit8 v7, v7, -0x2

    .line 72
    .line 73
    if-ge v6, v7, :cond_e

    .line 74
    .line 75
    if-ge v6, v5, :cond_e

    .line 76
    .line 77
    add-int/lit8 v7, v6, 0x2

    .line 78
    .line 79
    move v10, v4

    .line 80
    move/from16 v17, v5

    .line 81
    .line 82
    aget-wide v4, v1, v7

    .line 83
    .line 84
    const/16 v7, 0x3c

    .line 85
    .line 86
    move/from16 v19, v10

    .line 87
    .line 88
    move/from16 v18, v11

    .line 89
    .line 90
    shr-long v10, v4, v7

    .line 91
    .line 92
    long-to-int v7, v10

    .line 93
    and-int/lit8 v7, v7, 0x1

    .line 94
    .line 95
    if-eqz v7, :cond_d

    .line 96
    .line 97
    aget-wide v10, v1, v6

    .line 98
    .line 99
    add-int/lit8 v7, v6, 0x1

    .line 100
    .line 101
    aget-wide v12, v1, v7

    .line 102
    .line 103
    long-to-int v4, v4

    .line 104
    const v5, 0x1ffffff

    .line 105
    .line 106
    .line 107
    and-int/2addr v4, v5

    .line 108
    iget-object v5, v2, Lwy3;->a:Ltf2;

    .line 109
    .line 110
    invoke-virtual {v5, v4}, Lhs1;->b(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Lvy3;

    .line 115
    .line 116
    :goto_4
    if-eqz v4, :cond_d

    .line 117
    .line 118
    iget-object v5, v4, Lvy3;->f:Lvy3;

    .line 119
    .line 120
    move-object v14, v5

    .line 121
    move v7, v6

    .line 122
    iget-wide v5, v4, Lvy3;->i:J

    .line 123
    .line 124
    move-wide/from16 v20, v5

    .line 125
    .line 126
    iget-wide v5, v4, Lvy3;->b:J

    .line 127
    .line 128
    move-wide/from16 v22, v5

    .line 129
    .line 130
    iget-wide v5, v4, Lvy3;->c:J

    .line 131
    .line 132
    sub-long v24, v8, v20

    .line 133
    .line 134
    cmp-long v24, v24, v22

    .line 135
    .line 136
    if-gez v24, :cond_5

    .line 137
    .line 138
    const-wide/high16 v24, -0x8000000000000000L

    .line 139
    .line 140
    cmp-long v20, v20, v24

    .line 141
    .line 142
    if-nez v20, :cond_4

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_4
    const/16 v20, 0x0

    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_5
    :goto_5
    move/from16 v20, v19

    .line 149
    .line 150
    :goto_6
    cmp-long v21, v5, v15

    .line 151
    .line 152
    if-nez v21, :cond_6

    .line 153
    .line 154
    move/from16 v21, v19

    .line 155
    .line 156
    goto :goto_7

    .line 157
    :cond_6
    const/16 v21, 0x0

    .line 158
    .line 159
    :goto_7
    cmp-long v22, v22, v15

    .line 160
    .line 161
    if-nez v22, :cond_7

    .line 162
    .line 163
    move/from16 v22, v19

    .line 164
    .line 165
    goto :goto_8

    .line 166
    :cond_7
    const/16 v22, 0x0

    .line 167
    .line 168
    :goto_8
    iput-wide v10, v4, Lvy3;->g:J

    .line 169
    .line 170
    iput-wide v12, v4, Lvy3;->h:J

    .line 171
    .line 172
    if-nez v21, :cond_8

    .line 173
    .line 174
    if-eqz v22, :cond_9

    .line 175
    .line 176
    :cond_8
    if-eqz v21, :cond_a

    .line 177
    .line 178
    :cond_9
    move/from16 v22, v19

    .line 179
    .line 180
    goto :goto_9

    .line 181
    :cond_a
    const/16 v22, 0x0

    .line 182
    .line 183
    :goto_9
    if-eqz v20, :cond_b

    .line 184
    .line 185
    if-eqz v22, :cond_b

    .line 186
    .line 187
    move-wide/from16 v23, v12

    .line 188
    .line 189
    const-wide/16 v12, -0x1

    .line 190
    .line 191
    iput-wide v12, v4, Lvy3;->j:J

    .line 192
    .line 193
    iput-wide v8, v4, Lvy3;->i:J

    .line 194
    .line 195
    iget-wide v5, v2, Lwy3;->d:J

    .line 196
    .line 197
    iget-wide v12, v2, Lwy3;->e:J

    .line 198
    .line 199
    move-wide/from16 v30, v15

    .line 200
    .line 201
    iget-object v15, v2, Lwy3;->g:[F

    .line 202
    .line 203
    move-object/from16 v20, v4

    .line 204
    .line 205
    move-wide/from16 v25, v5

    .line 206
    .line 207
    move-wide/from16 v21, v10

    .line 208
    .line 209
    move-wide/from16 v27, v12

    .line 210
    .line 211
    move-object/from16 v29, v15

    .line 212
    .line 213
    invoke-virtual/range {v20 .. v29}, Lvy3;->a(JJJJ[F)V

    .line 214
    .line 215
    .line 216
    goto :goto_a

    .line 217
    :cond_b
    move-wide/from16 v23, v12

    .line 218
    .line 219
    move-wide/from16 v30, v15

    .line 220
    .line 221
    if-nez v21, :cond_c

    .line 222
    .line 223
    iput-wide v8, v4, Lvy3;->j:J

    .line 224
    .line 225
    iget-wide v12, v2, Lwy3;->c:J

    .line 226
    .line 227
    add-long/2addr v5, v8

    .line 228
    cmp-long v4, v12, v30

    .line 229
    .line 230
    if-lez v4, :cond_c

    .line 231
    .line 232
    cmp-long v4, v5, v12

    .line 233
    .line 234
    if-gez v4, :cond_c

    .line 235
    .line 236
    iput-wide v12, v2, Lwy3;->c:J

    .line 237
    .line 238
    :cond_c
    :goto_a
    move v6, v7

    .line 239
    move-object v4, v14

    .line 240
    move-wide/from16 v12, v23

    .line 241
    .line 242
    move-wide/from16 v15, v30

    .line 243
    .line 244
    goto/16 :goto_4

    .line 245
    .line 246
    :cond_d
    move v7, v6

    .line 247
    move-wide/from16 v30, v15

    .line 248
    .line 249
    add-int/lit8 v6, v7, 0x3

    .line 250
    .line 251
    move/from16 v5, v17

    .line 252
    .line 253
    move/from16 v11, v18

    .line 254
    .line 255
    move/from16 v4, v19

    .line 256
    .line 257
    move-wide/from16 v15, v30

    .line 258
    .line 259
    const/4 v12, 0x0

    .line 260
    goto/16 :goto_3

    .line 261
    .line 262
    :cond_e
    move/from16 v18, v11

    .line 263
    .line 264
    move-wide/from16 v30, v15

    .line 265
    .line 266
    iget-object v1, v3, Lhb;->c:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v1, [J

    .line 269
    .line 270
    iget v4, v3, Lhb;->b:I

    .line 271
    .line 272
    const/4 v5, 0x0

    .line 273
    :goto_b
    array-length v6, v1

    .line 274
    add-int/lit8 v6, v6, -0x2

    .line 275
    .line 276
    if-ge v5, v6, :cond_10

    .line 277
    .line 278
    if-ge v5, v4, :cond_10

    .line 279
    .line 280
    add-int/lit8 v6, v5, 0x2

    .line 281
    .line 282
    aget-wide v10, v1, v6

    .line 283
    .line 284
    const-wide v12, -0x1000000000000001L    # -3.1050361846014175E231

    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    and-long/2addr v10, v12

    .line 290
    aput-wide v10, v1, v6

    .line 291
    .line 292
    add-int/lit8 v5, v5, 0x3

    .line 293
    .line 294
    goto :goto_b

    .line 295
    :cond_f
    move/from16 v18, v11

    .line 296
    .line 297
    move-wide/from16 v30, v15

    .line 298
    .line 299
    :cond_10
    iget-boolean v1, v0, Ln33;->g:Z

    .line 300
    .line 301
    const/16 v16, 0x7

    .line 302
    .line 303
    const-wide v19, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    if-eqz v1, :cond_15

    .line 309
    .line 310
    const/4 v1, 0x0

    .line 311
    iput-boolean v1, v0, Ln33;->g:Z

    .line 312
    .line 313
    iget-wide v4, v2, Lwy3;->d:J

    .line 314
    .line 315
    iget-wide v6, v2, Lwy3;->e:J

    .line 316
    .line 317
    move-wide v9, v8

    .line 318
    iget-object v8, v2, Lwy3;->g:[F

    .line 319
    .line 320
    iget-object v1, v2, Lwy3;->a:Ltf2;

    .line 321
    .line 322
    const-wide/16 v21, 0x80

    .line 323
    .line 324
    iget-object v12, v1, Lhs1;->c:[Ljava/lang/Object;

    .line 325
    .line 326
    iget-object v1, v1, Lhs1;->a:[J

    .line 327
    .line 328
    array-length v13, v1

    .line 329
    add-int/lit8 v13, v13, -0x2

    .line 330
    .line 331
    if-ltz v13, :cond_14

    .line 332
    .line 333
    move-object/from16 v17, v12

    .line 334
    .line 335
    const/4 v14, 0x0

    .line 336
    const-wide/16 v23, 0xff

    .line 337
    .line 338
    :goto_c
    const/16 v15, 0x8

    .line 339
    .line 340
    aget-wide v11, v1, v14

    .line 341
    .line 342
    move-object/from16 v26, v1

    .line 343
    .line 344
    move-object/from16 v25, v2

    .line 345
    .line 346
    not-long v1, v11

    .line 347
    shl-long v1, v1, v16

    .line 348
    .line 349
    and-long/2addr v1, v11

    .line 350
    and-long v1, v1, v19

    .line 351
    .line 352
    cmp-long v1, v1, v19

    .line 353
    .line 354
    if-eqz v1, :cond_13

    .line 355
    .line 356
    sub-int v1, v14, v13

    .line 357
    .line 358
    not-int v1, v1

    .line 359
    ushr-int/lit8 v1, v1, 0x1f

    .line 360
    .line 361
    rsub-int/lit8 v1, v1, 0x8

    .line 362
    .line 363
    move-wide/from16 v27, v11

    .line 364
    .line 365
    const/4 v11, 0x0

    .line 366
    :goto_d
    if-ge v11, v1, :cond_12

    .line 367
    .line 368
    and-long v32, v27, v23

    .line 369
    .line 370
    cmp-long v2, v32, v21

    .line 371
    .line 372
    if-gez v2, :cond_11

    .line 373
    .line 374
    shl-int/lit8 v2, v14, 0x3

    .line 375
    .line 376
    add-int/2addr v2, v11

    .line 377
    aget-object v2, v17, v2

    .line 378
    .line 379
    check-cast v2, Lvy3;

    .line 380
    .line 381
    :goto_e
    if-eqz v2, :cond_11

    .line 382
    .line 383
    move-object v12, v3

    .line 384
    move-object v3, v2

    .line 385
    move-object/from16 v2, v25

    .line 386
    .line 387
    invoke-virtual/range {v2 .. v10}, Lwy3;->b(Lvy3;JJ[FJ)V

    .line 388
    .line 389
    .line 390
    iget-object v3, v3, Lvy3;->f:Lvy3;

    .line 391
    .line 392
    move-object v2, v3

    .line 393
    move-object v3, v12

    .line 394
    goto :goto_e

    .line 395
    :cond_11
    move-object v12, v3

    .line 396
    move-object/from16 v2, v25

    .line 397
    .line 398
    shr-long v27, v27, v15

    .line 399
    .line 400
    add-int/lit8 v11, v11, 0x1

    .line 401
    .line 402
    move-object/from16 v25, v2

    .line 403
    .line 404
    move-object v3, v12

    .line 405
    goto :goto_d

    .line 406
    :cond_12
    move-object v12, v3

    .line 407
    move-object/from16 v2, v25

    .line 408
    .line 409
    if-ne v1, v15, :cond_16

    .line 410
    .line 411
    goto :goto_f

    .line 412
    :cond_13
    move-object v12, v3

    .line 413
    move-object/from16 v2, v25

    .line 414
    .line 415
    :goto_f
    if-eq v14, v13, :cond_16

    .line 416
    .line 417
    add-int/lit8 v14, v14, 0x1

    .line 418
    .line 419
    move-object v3, v12

    .line 420
    move-object/from16 v1, v26

    .line 421
    .line 422
    goto :goto_c

    .line 423
    :cond_14
    move-object v12, v3

    .line 424
    goto :goto_10

    .line 425
    :cond_15
    move-object v12, v3

    .line 426
    move-wide v9, v8

    .line 427
    const-wide/16 v21, 0x80

    .line 428
    .line 429
    :goto_10
    const-wide/16 v23, 0xff

    .line 430
    .line 431
    :cond_16
    if-eqz v18, :cond_17

    .line 432
    .line 433
    iget-wide v4, v2, Lwy3;->d:J

    .line 434
    .line 435
    iget-wide v6, v2, Lwy3;->e:J

    .line 436
    .line 437
    iget-object v8, v2, Lwy3;->g:[F

    .line 438
    .line 439
    iget-object v1, v2, Lwy3;->b:Lvy3;

    .line 440
    .line 441
    if-eqz v1, :cond_17

    .line 442
    .line 443
    move-object v3, v1

    .line 444
    :goto_11
    if-eqz v3, :cond_17

    .line 445
    .line 446
    iget-object v1, v3, Lvy3;->d:Lmd2;

    .line 447
    .line 448
    invoke-static {v1}, Lw80;->R(Ljr0;)Lxy1;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    invoke-static {v1}, Laz1;->a(Lxy1;)Lsr2;

    .line 453
    .line 454
    .line 455
    move-result-object v11

    .line 456
    check-cast v11, Lq9;

    .line 457
    .line 458
    invoke-virtual {v11}, Lq9;->getRectManager()Ln33;

    .line 459
    .line 460
    .line 461
    move-result-object v11

    .line 462
    invoke-virtual {v11, v1}, Ln33;->b(Lxy1;)J

    .line 463
    .line 464
    .line 465
    move-result-wide v13

    .line 466
    iput-wide v13, v3, Lvy3;->g:J

    .line 467
    .line 468
    move-object/from16 v17, v12

    .line 469
    .line 470
    const/16 v18, 0x20

    .line 471
    .line 472
    shr-long v11, v13, v18

    .line 473
    .line 474
    long-to-int v11, v11

    .line 475
    iget-object v1, v1, Lxy1;->T:Lbz1;

    .line 476
    .line 477
    iget-object v1, v1, Lbz1;->p:Lcb2;

    .line 478
    .line 479
    iget v12, v1, Ldv2;->n:I

    .line 480
    .line 481
    add-int/2addr v12, v11

    .line 482
    const-wide v25, 0xffffffffL

    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    and-long v13, v13, v25

    .line 488
    .line 489
    long-to-int v11, v13

    .line 490
    iget v1, v1, Ldv2;->o:I

    .line 491
    .line 492
    add-int/2addr v1, v11

    .line 493
    int-to-long v11, v12

    .line 494
    shl-long v11, v11, v18

    .line 495
    .line 496
    int-to-long v13, v1

    .line 497
    and-long v13, v13, v25

    .line 498
    .line 499
    or-long/2addr v11, v13

    .line 500
    iput-wide v11, v3, Lvy3;->h:J

    .line 501
    .line 502
    invoke-virtual/range {v2 .. v10}, Lwy3;->b(Lvy3;JJ[FJ)V

    .line 503
    .line 504
    .line 505
    move-object v1, v2

    .line 506
    iget-object v3, v3, Lvy3;->f:Lvy3;

    .line 507
    .line 508
    move-object/from16 v12, v17

    .line 509
    .line 510
    goto :goto_11

    .line 511
    :cond_17
    move-object v1, v2

    .line 512
    move-object/from16 v17, v12

    .line 513
    .line 514
    iget-boolean v2, v0, Ln33;->h:Z

    .line 515
    .line 516
    const/4 v12, 0x0

    .line 517
    if-eqz v2, :cond_1a

    .line 518
    .line 519
    iput-boolean v12, v0, Ln33;->h:Z

    .line 520
    .line 521
    move-object/from16 v2, v17

    .line 522
    .line 523
    iget-object v3, v2, Lhb;->c:Ljava/lang/Object;

    .line 524
    .line 525
    check-cast v3, [J

    .line 526
    .line 527
    iget v4, v2, Lhb;->b:I

    .line 528
    .line 529
    iget-object v5, v2, Lhb;->d:Ljava/lang/Object;

    .line 530
    .line 531
    check-cast v5, [J

    .line 532
    .line 533
    move v6, v12

    .line 534
    move v7, v6

    .line 535
    :goto_12
    array-length v8, v3

    .line 536
    add-int/lit8 v8, v8, -0x2

    .line 537
    .line 538
    if-ge v6, v8, :cond_19

    .line 539
    .line 540
    array-length v8, v5

    .line 541
    add-int/lit8 v8, v8, -0x2

    .line 542
    .line 543
    if-ge v7, v8, :cond_19

    .line 544
    .line 545
    if-ge v6, v4, :cond_19

    .line 546
    .line 547
    add-int/lit8 v8, v6, 0x2

    .line 548
    .line 549
    aget-wide v13, v3, v8

    .line 550
    .line 551
    sget-wide v17, Lm33;->a:J

    .line 552
    .line 553
    cmp-long v11, v13, v17

    .line 554
    .line 555
    if-eqz v11, :cond_18

    .line 556
    .line 557
    aget-wide v13, v3, v6

    .line 558
    .line 559
    aput-wide v13, v5, v7

    .line 560
    .line 561
    add-int/lit8 v11, v7, 0x1

    .line 562
    .line 563
    add-int/lit8 v13, v6, 0x1

    .line 564
    .line 565
    aget-wide v13, v3, v13

    .line 566
    .line 567
    aput-wide v13, v5, v11

    .line 568
    .line 569
    add-int/lit8 v11, v7, 0x2

    .line 570
    .line 571
    aget-wide v13, v3, v8

    .line 572
    .line 573
    aput-wide v13, v5, v11

    .line 574
    .line 575
    add-int/lit8 v7, v7, 0x3

    .line 576
    .line 577
    :cond_18
    add-int/lit8 v6, v6, 0x3

    .line 578
    .line 579
    goto :goto_12

    .line 580
    :cond_19
    iput v7, v2, Lhb;->b:I

    .line 581
    .line 582
    iput-object v5, v2, Lhb;->c:Ljava/lang/Object;

    .line 583
    .line 584
    iput-object v3, v2, Lhb;->d:Ljava/lang/Object;

    .line 585
    .line 586
    :cond_1a
    iget-wide v2, v1, Lwy3;->c:J

    .line 587
    .line 588
    cmp-long v2, v2, v9

    .line 589
    .line 590
    if-lez v2, :cond_1b

    .line 591
    .line 592
    goto/16 :goto_1a

    .line 593
    .line 594
    :cond_1b
    iget-wide v3, v1, Lwy3;->d:J

    .line 595
    .line 596
    iget-wide v5, v1, Lwy3;->e:J

    .line 597
    .line 598
    iget-object v7, v1, Lwy3;->g:[F

    .line 599
    .line 600
    iget-object v2, v1, Lwy3;->a:Ltf2;

    .line 601
    .line 602
    iget-object v13, v2, Lhs1;->c:[Ljava/lang/Object;

    .line 603
    .line 604
    iget-object v14, v2, Lhs1;->a:[J

    .line 605
    .line 606
    array-length v2, v14

    .line 607
    add-int/lit8 v2, v2, -0x2

    .line 608
    .line 609
    const-wide v17, 0x7fffffffffffffffL

    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    if-ltz v2, :cond_20

    .line 615
    .line 616
    move v8, v12

    .line 617
    move-object/from16 v27, v13

    .line 618
    .line 619
    move-wide/from16 v25, v17

    .line 620
    .line 621
    :goto_13
    aget-wide v12, v14, v8

    .line 622
    .line 623
    move-wide/from16 v28, v3

    .line 624
    .line 625
    move v4, v2

    .line 626
    not-long v2, v12

    .line 627
    shl-long v2, v2, v16

    .line 628
    .line 629
    and-long/2addr v2, v12

    .line 630
    and-long v2, v2, v19

    .line 631
    .line 632
    cmp-long v2, v2, v19

    .line 633
    .line 634
    if-eqz v2, :cond_1e

    .line 635
    .line 636
    sub-int v2, v8, v4

    .line 637
    .line 638
    not-int v2, v2

    .line 639
    ushr-int/lit8 v2, v2, 0x1f

    .line 640
    .line 641
    const/16 v15, 0x8

    .line 642
    .line 643
    rsub-int/lit8 v2, v2, 0x8

    .line 644
    .line 645
    move-wide/from16 v32, v25

    .line 646
    .line 647
    move-wide/from16 v25, v12

    .line 648
    .line 649
    const/4 v12, 0x0

    .line 650
    :goto_14
    if-ge v12, v2, :cond_1d

    .line 651
    .line 652
    and-long v34, v25, v23

    .line 653
    .line 654
    cmp-long v3, v34, v21

    .line 655
    .line 656
    if-gez v3, :cond_1c

    .line 657
    .line 658
    shl-int/lit8 v3, v8, 0x3

    .line 659
    .line 660
    add-int/2addr v3, v12

    .line 661
    aget-object v3, v27, v3

    .line 662
    .line 663
    check-cast v3, Lvy3;

    .line 664
    .line 665
    :goto_15
    if-eqz v3, :cond_1c

    .line 666
    .line 667
    move v0, v2

    .line 668
    move-object v2, v3

    .line 669
    move v13, v4

    .line 670
    move-wide/from16 v3, v28

    .line 671
    .line 672
    move/from16 v28, v12

    .line 673
    .line 674
    move v12, v15

    .line 675
    move v15, v8

    .line 676
    move-wide v8, v9

    .line 677
    move-wide/from16 v10, v32

    .line 678
    .line 679
    invoke-static/range {v2 .. v11}, Lwy3;->a(Lvy3;JJ[FJJ)J

    .line 680
    .line 681
    .line 682
    move-result-wide v32

    .line 683
    move-wide v9, v8

    .line 684
    iget-object v2, v2, Lvy3;->f:Lvy3;

    .line 685
    .line 686
    move v8, v15

    .line 687
    move v15, v12

    .line 688
    move/from16 v12, v28

    .line 689
    .line 690
    move-wide/from16 v28, v3

    .line 691
    .line 692
    move v4, v13

    .line 693
    move-object v3, v2

    .line 694
    move v2, v0

    .line 695
    move-object/from16 v0, p0

    .line 696
    .line 697
    goto :goto_15

    .line 698
    :cond_1c
    move v0, v2

    .line 699
    move v13, v4

    .line 700
    move-wide/from16 v3, v28

    .line 701
    .line 702
    move/from16 v28, v12

    .line 703
    .line 704
    move v12, v15

    .line 705
    move v15, v8

    .line 706
    shr-long v25, v25, v12

    .line 707
    .line 708
    add-int/lit8 v2, v28, 0x1

    .line 709
    .line 710
    move-wide/from16 v28, v3

    .line 711
    .line 712
    move v4, v13

    .line 713
    move v8, v15

    .line 714
    move v15, v12

    .line 715
    move v12, v2

    .line 716
    move v2, v0

    .line 717
    move-object/from16 v0, p0

    .line 718
    .line 719
    goto :goto_14

    .line 720
    :cond_1d
    move v0, v2

    .line 721
    move v13, v4

    .line 722
    move v12, v15

    .line 723
    move-wide/from16 v3, v28

    .line 724
    .line 725
    move v15, v8

    .line 726
    if-ne v0, v12, :cond_21

    .line 727
    .line 728
    move-wide/from16 v25, v32

    .line 729
    .line 730
    goto :goto_16

    .line 731
    :cond_1e
    move v13, v4

    .line 732
    move v15, v8

    .line 733
    move-wide/from16 v3, v28

    .line 734
    .line 735
    const/16 v12, 0x8

    .line 736
    .line 737
    :goto_16
    if-eq v15, v13, :cond_1f

    .line 738
    .line 739
    add-int/lit8 v8, v15, 0x1

    .line 740
    .line 741
    move-object/from16 v0, p0

    .line 742
    .line 743
    move v2, v13

    .line 744
    goto :goto_13

    .line 745
    :cond_1f
    move-wide/from16 v32, v25

    .line 746
    .line 747
    goto :goto_17

    .line 748
    :cond_20
    move-wide/from16 v32, v17

    .line 749
    .line 750
    :cond_21
    :goto_17
    iget-object v0, v1, Lwy3;->b:Lvy3;

    .line 751
    .line 752
    if-eqz v0, :cond_22

    .line 753
    .line 754
    move-object v2, v0

    .line 755
    :goto_18
    if-eqz v2, :cond_22

    .line 756
    .line 757
    move-wide v8, v9

    .line 758
    move-wide/from16 v10, v32

    .line 759
    .line 760
    invoke-static/range {v2 .. v11}, Lwy3;->a(Lvy3;JJ[FJJ)J

    .line 761
    .line 762
    .line 763
    move-result-wide v32

    .line 764
    move-wide v9, v8

    .line 765
    iget-object v2, v2, Lvy3;->f:Lvy3;

    .line 766
    .line 767
    goto :goto_18

    .line 768
    :cond_22
    cmp-long v0, v32, v17

    .line 769
    .line 770
    if-nez v0, :cond_23

    .line 771
    .line 772
    const-wide/16 v13, -0x1

    .line 773
    .line 774
    goto :goto_19

    .line 775
    :cond_23
    move-wide/from16 v13, v32

    .line 776
    .line 777
    :goto_19
    iput-wide v13, v1, Lwy3;->c:J

    .line 778
    .line 779
    :goto_1a
    iget-wide v0, v1, Lwy3;->c:J

    .line 780
    .line 781
    cmp-long v0, v0, v30

    .line 782
    .line 783
    if-lez v0, :cond_24

    .line 784
    .line 785
    invoke-virtual/range {p0 .. p0}, Ln33;->k()V

    .line 786
    .line 787
    .line 788
    :cond_24
    return-void
.end method

.method public final b(Lxy1;)J
    .locals 4

    .line 1
    invoke-static {p1}, Ln33;->d(Lxy1;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ln33;->e(Lxy1;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object p0, p0, Ln33;->c:Lhb;

    .line 12
    .line 13
    iget-object p0, p0, Lhb;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, [J

    .line 16
    .line 17
    aget-wide v0, p0, p1

    .line 18
    .line 19
    const/16 p0, 0x20

    .line 20
    .line 21
    shr-long v2, v0, p0

    .line 22
    .line 23
    long-to-int p1, v2

    .line 24
    long-to-int v0, v0

    .line 25
    int-to-long v1, p1

    .line 26
    shl-long p0, v1, p0

    .line 27
    .line 28
    int-to-long v0, v0

    .line 29
    const-wide v2, 0xffffffffL

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    and-long/2addr v0, v2

    .line 35
    or-long/2addr p0, v0

    .line 36
    return-wide p0

    .line 37
    :cond_0
    const-wide p0, 0x7fffffff7fffffffL

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    return-wide p0
.end method

.method public final e(Lxy1;)I
    .locals 7

    .line 1
    iget v0, p1, Lxy1;->t:I

    .line 2
    .line 3
    const/4 v1, -0x4

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    :cond_0
    move v0, v1

    .line 7
    goto :goto_1

    .line 8
    :cond_1
    iget v2, p1, Lxy1;->o:I

    .line 9
    .line 10
    iget-object p0, p0, Ln33;->c:Lhb;

    .line 11
    .line 12
    iget-object v3, p0, Lhb;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v3, [J

    .line 15
    .line 16
    const v4, 0x1ffffff

    .line 17
    .line 18
    .line 19
    if-ltz v0, :cond_2

    .line 20
    .line 21
    iget v5, p0, Lhb;->b:I

    .line 22
    .line 23
    add-int/lit8 v5, v5, -0x2

    .line 24
    .line 25
    if-ge v0, v5, :cond_2

    .line 26
    .line 27
    add-int/lit8 v5, v0, 0x2

    .line 28
    .line 29
    aget-wide v5, v3, v5

    .line 30
    .line 31
    long-to-int v5, v5

    .line 32
    and-int/2addr v5, v4

    .line 33
    and-int v6, v2, v4

    .line 34
    .line 35
    if-ne v5, v6, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    and-int v0, v2, v4

    .line 39
    .line 40
    iget p0, p0, Lhb;->b:I

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_0
    add-int/lit8 v5, p0, -0x2

    .line 44
    .line 45
    if-ge v2, v5, :cond_0

    .line 46
    .line 47
    add-int/lit8 v5, v2, 0x2

    .line 48
    .line 49
    aget-wide v5, v3, v5

    .line 50
    .line 51
    long-to-int v5, v5

    .line 52
    and-int/2addr v5, v4

    .line 53
    if-ne v5, v0, :cond_3

    .line 54
    .line 55
    move v0, v2

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    add-int/lit8 v2, v2, 0x3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :goto_1
    if-eq v0, v1, :cond_4

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    iget p0, p1, Lxy1;->o:I

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v2, "LayoutNode "

    .line 68
    .line 69
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p0, " not found in RectList"

    .line 76
    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0}, Lar1;->a(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :goto_2
    iput v0, p1, Lxy1;->t:I

    .line 88
    .line 89
    return v0
.end method

.method public final f(Lxy1;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v1, Lxy1;->p:Z

    .line 7
    .line 8
    iget-object v3, v1, Lxy1;->S:Lbo;

    .line 9
    .line 10
    iget-object v4, v3, Lbo;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v4, Lmm2;

    .line 13
    .line 14
    iget-object v5, v1, Lxy1;->T:Lbz1;

    .line 15
    .line 16
    iget-object v5, v5, Lbz1;->p:Lcb2;

    .line 17
    .line 18
    invoke-virtual {v5}, Lcb2;->a0()I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    invoke-virtual {v5}, Lcb2;->Y()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    int-to-float v6, v6

    .line 27
    int-to-float v5, v5

    .line 28
    iget-object v7, v0, Ln33;->l:Ljg2;

    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    iput v8, v7, Ljg2;->a:F

    .line 32
    .line 33
    iput v8, v7, Ljg2;->b:F

    .line 34
    .line 35
    iput v6, v7, Ljg2;->c:F

    .line 36
    .line 37
    iput v5, v7, Ljg2;->d:F

    .line 38
    .line 39
    :goto_0
    const-wide v5, 0xffffffffL

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    const/16 v8, 0x20

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    iget-object v9, v4, Lmm2;->F:Lxy1;

    .line 49
    .line 50
    iget-object v10, v9, Lxy1;->S:Lbo;

    .line 51
    .line 52
    iget-object v10, v10, Lbo;->e:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v10, Lmm2;

    .line 55
    .line 56
    if-ne v4, v10, :cond_0

    .line 57
    .line 58
    iget-boolean v10, v9, Lxy1;->p:Z

    .line 59
    .line 60
    if-nez v10, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0, v9}, Ln33;->b(Lxy1;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v9

    .line 66
    const-wide v11, 0x7fffffff7fffffffL

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    invoke-static {v9, v10, v11, v12}, Ljs1;->a(JJ)Z

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    if-nez v11, :cond_0

    .line 76
    .line 77
    shr-long v11, v9, v8

    .line 78
    .line 79
    long-to-int v4, v11

    .line 80
    int-to-float v4, v4

    .line 81
    and-long/2addr v9, v5

    .line 82
    long-to-int v9, v9

    .line 83
    int-to-float v9, v9

    .line 84
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    int-to-long v10, v4

    .line 89
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    int-to-long v12, v4

    .line 94
    shl-long v9, v10, v8

    .line 95
    .line 96
    and-long v11, v12, v5

    .line 97
    .line 98
    or-long/2addr v9, v11

    .line 99
    invoke-virtual {v7, v9, v10}, Ljg2;->c(J)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_0
    iget-object v9, v4, Lmm2;->c0:Lrr2;

    .line 104
    .line 105
    if-eqz v9, :cond_1

    .line 106
    .line 107
    check-cast v9, Lci1;

    .line 108
    .line 109
    invoke-virtual {v9}, Lci1;->b()[F

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    invoke-static {v9}, Lgg4;->J([F)Z

    .line 114
    .line 115
    .line 116
    move-result v10

    .line 117
    if-nez v10, :cond_1

    .line 118
    .line 119
    invoke-static {v9, v7}, Lxa2;->c([FLjg2;)V

    .line 120
    .line 121
    .line 122
    :cond_1
    iget-wide v9, v4, Lmm2;->Q:J

    .line 123
    .line 124
    shr-long v11, v9, v8

    .line 125
    .line 126
    long-to-int v11, v11

    .line 127
    int-to-float v11, v11

    .line 128
    and-long/2addr v9, v5

    .line 129
    long-to-int v9, v9

    .line 130
    int-to-float v9, v9

    .line 131
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    int-to-long v10, v10

    .line 136
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    int-to-long v12, v9

    .line 141
    shl-long v8, v10, v8

    .line 142
    .line 143
    and-long/2addr v5, v12

    .line 144
    or-long/2addr v5, v8

    .line 145
    invoke-virtual {v7, v5, v6}, Ljg2;->c(J)V

    .line 146
    .line 147
    .line 148
    iget-object v4, v4, Lmm2;->H:Lmm2;

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_2
    :goto_1
    iget v4, v7, Ljg2;->a:F

    .line 152
    .line 153
    float-to-int v11, v4

    .line 154
    iget v4, v7, Ljg2;->b:F

    .line 155
    .line 156
    float-to-int v12, v4

    .line 157
    iget v4, v7, Ljg2;->c:F

    .line 158
    .line 159
    float-to-int v13, v4

    .line 160
    iget v4, v7, Ljg2;->d:F

    .line 161
    .line 162
    float-to-int v14, v4

    .line 163
    iget v10, v1, Lxy1;->o:I

    .line 164
    .line 165
    iget v4, v1, Lxy1;->t:I

    .line 166
    .line 167
    iget-object v9, v0, Ln33;->c:Lhb;

    .line 168
    .line 169
    const/4 v7, -0x4

    .line 170
    if-eq v4, v7, :cond_3

    .line 171
    .line 172
    invoke-virtual/range {p0 .. p1}, Ln33;->e(Lxy1;)I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    iget-object v4, v9, Lhb;->c:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v4, [J

    .line 179
    .line 180
    int-to-long v9, v11

    .line 181
    shl-long/2addr v9, v8

    .line 182
    int-to-long v11, v12

    .line 183
    and-long/2addr v11, v5

    .line 184
    or-long/2addr v9, v11

    .line 185
    aput-wide v9, v4, v3

    .line 186
    .line 187
    add-int/lit8 v7, v3, 0x1

    .line 188
    .line 189
    int-to-long v9, v13

    .line 190
    shl-long v8, v9, v8

    .line 191
    .line 192
    int-to-long v10, v14

    .line 193
    and-long/2addr v5, v10

    .line 194
    or-long/2addr v5, v8

    .line 195
    aput-wide v5, v4, v7

    .line 196
    .line 197
    add-int/lit8 v3, v3, 0x2

    .line 198
    .line 199
    aget-wide v5, v4, v3

    .line 200
    .line 201
    const/16 v7, 0x3f

    .line 202
    .line 203
    shr-long v7, v5, v7

    .line 204
    .line 205
    const-wide/16 v9, 0x1

    .line 206
    .line 207
    and-long/2addr v7, v9

    .line 208
    const/16 v9, 0x3c

    .line 209
    .line 210
    shl-long/2addr v7, v9

    .line 211
    or-long/2addr v5, v7

    .line 212
    aput-wide v5, v4, v3

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_3
    invoke-virtual {v1}, Lxy1;->u()Lxy1;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    if-eqz v4, :cond_4

    .line 220
    .line 221
    iget v5, v4, Lxy1;->o:I

    .line 222
    .line 223
    :goto_2
    move v15, v5

    .line 224
    goto :goto_3

    .line 225
    :cond_4
    const/4 v5, -0x1

    .line 226
    goto :goto_2

    .line 227
    :goto_3
    if-eqz v4, :cond_5

    .line 228
    .line 229
    invoke-virtual {v0, v4}, Ln33;->e(Lxy1;)I

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    :cond_5
    move/from16 v16, v7

    .line 234
    .line 235
    const/16 v4, 0x400

    .line 236
    .line 237
    invoke-virtual {v3, v4}, Lbo;->f(I)Z

    .line 238
    .line 239
    .line 240
    move-result v17

    .line 241
    const/16 v4, 0x10

    .line 242
    .line 243
    invoke-virtual {v3, v4}, Lbo;->f(I)Z

    .line 244
    .line 245
    .line 246
    move-result v18

    .line 247
    iget-object v3, v0, Ln33;->d:Lwy3;

    .line 248
    .line 249
    iget-object v3, v3, Lwy3;->a:Ltf2;

    .line 250
    .line 251
    invoke-virtual {v3, v10}, Lhs1;->a(I)Z

    .line 252
    .line 253
    .line 254
    move-result v19

    .line 255
    invoke-virtual/range {v9 .. v19}, Lhb;->f(IIIIIIIZZZ)I

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    iput v3, v1, Lxy1;->t:I

    .line 260
    .line 261
    :goto_4
    const/4 v3, 0x0

    .line 262
    iput-boolean v3, v1, Lxy1;->s:Z

    .line 263
    .line 264
    iput-boolean v2, v0, Ln33;->f:Z

    .line 265
    .line 266
    invoke-virtual {v1}, Lxy1;->z()Lug2;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    iget-object v2, v1, Lug2;->n:[Ljava/lang/Object;

    .line 271
    .line 272
    iget v1, v1, Lug2;->p:I

    .line 273
    .line 274
    :goto_5
    if-ge v3, v1, :cond_7

    .line 275
    .line 276
    aget-object v4, v2, v3

    .line 277
    .line 278
    check-cast v4, Lxy1;

    .line 279
    .line 280
    invoke-virtual {v4}, Lxy1;->I()Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    if-eqz v5, :cond_6

    .line 285
    .line 286
    invoke-virtual {v0, v4}, Ln33;->f(Lxy1;)V

    .line 287
    .line 288
    .line 289
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 290
    .line 291
    goto :goto_5

    .line 292
    :cond_7
    return-void
.end method

.method public final h(Lxy1;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Lxy1;->I()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, v1, Lxy1;->S:Lbo;

    .line 10
    .line 11
    if-eqz v2, :cond_d

    .line 12
    .line 13
    iget-boolean v2, v1, Lxy1;->s:Z

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v1}, Lxy1;->u()Lxy1;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-wide v4, 0x7fffffff7fffffffL

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget-boolean v7, v2, Lxy1;->p:Z

    .line 32
    .line 33
    if-nez v7, :cond_2

    .line 34
    .line 35
    iget-boolean v7, v2, Lxy1;->r:Z

    .line 36
    .line 37
    if-eqz v7, :cond_1

    .line 38
    .line 39
    iput-boolean v6, v2, Lxy1;->r:Z

    .line 40
    .line 41
    invoke-static {v2}, Ln33;->g(Lxy1;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v7

    .line 45
    iput-wide v7, v2, Lxy1;->q:J

    .line 46
    .line 47
    :cond_1
    iget-wide v7, v2, Lxy1;->q:J

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    if-nez v2, :cond_3

    .line 51
    .line 52
    const-wide/16 v7, 0x0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    move-wide v7, v4

    .line 56
    :goto_0
    iget-object v9, v3, Lbo;->e:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v9, Lmm2;

    .line 59
    .line 60
    invoke-static {v7, v8, v4, v5}, Ljs1;->a(JJ)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_c

    .line 65
    .line 66
    invoke-static {v9}, Ln33;->c(Lmm2;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_c

    .line 71
    .line 72
    iget-boolean v4, v1, Lxy1;->p:Z

    .line 73
    .line 74
    if-nez v4, :cond_b

    .line 75
    .line 76
    iget-wide v4, v9, Lmm2;->Q:J

    .line 77
    .line 78
    invoke-static {v7, v8, v4, v5}, Ljs1;->c(JJ)J

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    iget-object v7, v1, Lxy1;->T:Lbz1;

    .line 83
    .line 84
    iget-object v7, v7, Lbz1;->p:Lcb2;

    .line 85
    .line 86
    invoke-virtual {v7}, Lcb2;->a0()I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    invoke-virtual {v7}, Lcb2;->Y()I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    iget v9, v1, Lxy1;->t:I

    .line 95
    .line 96
    const/4 v10, -0x4

    .line 97
    iget-object v11, v0, Ln33;->c:Lhb;

    .line 98
    .line 99
    const-wide v12, 0xffffffffL

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    const/16 v14, 0x20

    .line 105
    .line 106
    if-eq v9, v10, :cond_8

    .line 107
    .line 108
    move v9, v14

    .line 109
    invoke-virtual/range {p0 .. p1}, Ln33;->e(Lxy1;)I

    .line 110
    .line 111
    .line 112
    move-result v14

    .line 113
    const-wide/16 v15, 0x1

    .line 114
    .line 115
    if-eqz v2, :cond_6

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Ln33;->e(Lxy1;)I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    move-wide/from16 v17, v4

    .line 122
    .line 123
    const/16 v5, 0x3c

    .line 124
    .line 125
    shr-long v3, v17, v9

    .line 126
    .line 127
    long-to-int v3, v3

    .line 128
    move v4, v9

    .line 129
    const/16 v19, 0x3f

    .line 130
    .line 131
    and-long v9, v17, v12

    .line 132
    .line 133
    long-to-int v9, v9

    .line 134
    iget-object v10, v11, Lhb;->c:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v10, [J

    .line 137
    .line 138
    move/from16 v21, v4

    .line 139
    .line 140
    move/from16 v20, v5

    .line 141
    .line 142
    aget-wide v4, v10, v2

    .line 143
    .line 144
    move-wide/from16 v22, v12

    .line 145
    .line 146
    shr-long v12, v4, v21

    .line 147
    .line 148
    long-to-int v2, v12

    .line 149
    long-to-int v4, v4

    .line 150
    add-int/2addr v2, v3

    .line 151
    add-int/2addr v4, v9

    .line 152
    add-int/2addr v8, v2

    .line 153
    add-int/2addr v7, v4

    .line 154
    aget-wide v12, v10, v14

    .line 155
    .line 156
    move v3, v7

    .line 157
    shr-long v6, v12, v21

    .line 158
    .line 159
    long-to-int v6, v6

    .line 160
    long-to-int v7, v12

    .line 161
    sub-int v6, v2, v6

    .line 162
    .line 163
    sub-int v7, v4, v7

    .line 164
    .line 165
    add-int/lit8 v9, v14, 0x2

    .line 166
    .line 167
    aget-wide v12, v10, v9

    .line 168
    .line 169
    move/from16 v17, v6

    .line 170
    .line 171
    int-to-long v5, v2

    .line 172
    shl-long v5, v5, v21

    .line 173
    .line 174
    move/from16 v18, v3

    .line 175
    .line 176
    int-to-long v2, v4

    .line 177
    and-long v2, v2, v22

    .line 178
    .line 179
    or-long/2addr v2, v5

    .line 180
    aput-wide v2, v10, v14

    .line 181
    .line 182
    add-int/lit8 v2, v14, 0x1

    .line 183
    .line 184
    int-to-long v3, v8

    .line 185
    shl-long v3, v3, v21

    .line 186
    .line 187
    move/from16 v5, v18

    .line 188
    .line 189
    int-to-long v5, v5

    .line 190
    and-long v5, v5, v22

    .line 191
    .line 192
    or-long/2addr v3, v5

    .line 193
    aput-wide v3, v10, v2

    .line 194
    .line 195
    shr-long v2, v12, v19

    .line 196
    .line 197
    and-long/2addr v2, v15

    .line 198
    shl-long v2, v2, v20

    .line 199
    .line 200
    or-long/2addr v2, v12

    .line 201
    aput-wide v2, v10, v9

    .line 202
    .line 203
    if-nez v17, :cond_4

    .line 204
    .line 205
    if-eqz v7, :cond_5

    .line 206
    .line 207
    :cond_4
    move/from16 v16, v7

    .line 208
    .line 209
    move/from16 v15, v17

    .line 210
    .line 211
    invoke-virtual/range {v11 .. v16}, Lhb;->j(JIII)V

    .line 212
    .line 213
    .line 214
    :cond_5
    :goto_1
    const/4 v5, 0x0

    .line 215
    goto/16 :goto_3

    .line 216
    .line 217
    :cond_6
    move-wide/from16 v17, v4

    .line 218
    .line 219
    move/from16 v21, v9

    .line 220
    .line 221
    move-wide/from16 v22, v12

    .line 222
    .line 223
    const/16 v19, 0x3f

    .line 224
    .line 225
    const/16 v20, 0x3c

    .line 226
    .line 227
    invoke-virtual/range {p0 .. p1}, Ln33;->e(Lxy1;)I

    .line 228
    .line 229
    .line 230
    move-result v14

    .line 231
    shr-long v2, v17, v21

    .line 232
    .line 233
    long-to-int v2, v2

    .line 234
    and-long v3, v17, v22

    .line 235
    .line 236
    long-to-int v3, v3

    .line 237
    add-int/2addr v8, v2

    .line 238
    add-int/2addr v7, v3

    .line 239
    iget-object v4, v11, Lhb;->c:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v4, [J

    .line 242
    .line 243
    aget-wide v5, v4, v14

    .line 244
    .line 245
    int-to-long v9, v2

    .line 246
    shl-long v9, v9, v21

    .line 247
    .line 248
    int-to-long v12, v3

    .line 249
    and-long v12, v12, v22

    .line 250
    .line 251
    or-long/2addr v9, v12

    .line 252
    aput-wide v9, v4, v14

    .line 253
    .line 254
    add-int/lit8 v9, v14, 0x1

    .line 255
    .line 256
    int-to-long v12, v8

    .line 257
    shl-long v12, v12, v21

    .line 258
    .line 259
    int-to-long v7, v7

    .line 260
    and-long v7, v7, v22

    .line 261
    .line 262
    or-long/2addr v7, v12

    .line 263
    aput-wide v7, v4, v9

    .line 264
    .line 265
    add-int/lit8 v7, v14, 0x2

    .line 266
    .line 267
    aget-wide v12, v4, v7

    .line 268
    .line 269
    shr-long v8, v12, v19

    .line 270
    .line 271
    and-long/2addr v8, v15

    .line 272
    shl-long v8, v8, v20

    .line 273
    .line 274
    or-long/2addr v8, v12

    .line 275
    aput-wide v8, v4, v7

    .line 276
    .line 277
    shr-long v7, v5, v21

    .line 278
    .line 279
    long-to-int v4, v7

    .line 280
    sub-int v15, v2, v4

    .line 281
    .line 282
    long-to-int v2, v5

    .line 283
    sub-int v16, v3, v2

    .line 284
    .line 285
    if-nez v15, :cond_7

    .line 286
    .line 287
    if-eqz v16, :cond_5

    .line 288
    .line 289
    :cond_7
    invoke-virtual/range {v11 .. v16}, Lhb;->j(JIII)V

    .line 290
    .line 291
    .line 292
    goto :goto_1

    .line 293
    :cond_8
    move-wide/from16 v17, v4

    .line 294
    .line 295
    move-wide/from16 v22, v12

    .line 296
    .line 297
    move/from16 v21, v14

    .line 298
    .line 299
    iget v12, v1, Lxy1;->o:I

    .line 300
    .line 301
    const/16 v4, 0x400

    .line 302
    .line 303
    invoke-virtual {v3, v4}, Lbo;->f(I)Z

    .line 304
    .line 305
    .line 306
    move-result v19

    .line 307
    const/16 v4, 0x10

    .line 308
    .line 309
    invoke-virtual {v3, v4}, Lbo;->f(I)Z

    .line 310
    .line 311
    .line 312
    move-result v20

    .line 313
    iget-object v3, v0, Ln33;->d:Lwy3;

    .line 314
    .line 315
    iget-object v3, v3, Lwy3;->a:Ltf2;

    .line 316
    .line 317
    invoke-virtual {v3, v12}, Lhs1;->a(I)Z

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    if-eqz v2, :cond_a

    .line 322
    .line 323
    iget v4, v2, Lxy1;->o:I

    .line 324
    .line 325
    invoke-virtual {v0, v2}, Ln33;->e(Lxy1;)I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    shr-long v5, v17, v21

    .line 330
    .line 331
    long-to-int v5, v5

    .line 332
    and-long v9, v17, v22

    .line 333
    .line 334
    long-to-int v6, v9

    .line 335
    const v9, 0x1ffffff

    .line 336
    .line 337
    .line 338
    and-int/2addr v12, v9

    .line 339
    iget-object v10, v11, Lhb;->c:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast v10, [J

    .line 342
    .line 343
    add-int/lit8 v13, v2, 0x2

    .line 344
    .line 345
    aget-wide v13, v10, v13

    .line 346
    .line 347
    long-to-int v13, v13

    .line 348
    and-int/2addr v13, v9

    .line 349
    and-int/2addr v9, v4

    .line 350
    if-ne v13, v9, :cond_9

    .line 351
    .line 352
    goto :goto_2

    .line 353
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    const-string v13, "Inserted child "

    .line 356
    .line 357
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string v13, " without valid parent index or parent "

    .line 364
    .line 365
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const-string v13, " not found"

    .line 372
    .line 373
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v9

    .line 380
    invoke-static {v9}, Lar1;->a(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    :goto_2
    aget-wide v9, v10, v2

    .line 384
    .line 385
    shr-long v13, v9, v21

    .line 386
    .line 387
    long-to-int v13, v13

    .line 388
    long-to-int v9, v9

    .line 389
    add-int/2addr v13, v5

    .line 390
    add-int v14, v9, v6

    .line 391
    .line 392
    add-int v15, v13, v8

    .line 393
    .line 394
    add-int v16, v14, v7

    .line 395
    .line 396
    move/from16 v18, v2

    .line 397
    .line 398
    move/from16 v21, v3

    .line 399
    .line 400
    move/from16 v17, v4

    .line 401
    .line 402
    invoke-virtual/range {v11 .. v21}, Lhb;->f(IIIIIIIZZZ)I

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    iput v2, v1, Lxy1;->t:I

    .line 407
    .line 408
    goto/16 :goto_1

    .line 409
    .line 410
    :cond_a
    move/from16 v4, v21

    .line 411
    .line 412
    move/from16 v21, v3

    .line 413
    .line 414
    shr-long v2, v17, v4

    .line 415
    .line 416
    long-to-int v13, v2

    .line 417
    and-long v2, v17, v22

    .line 418
    .line 419
    long-to-int v14, v2

    .line 420
    add-int v15, v13, v8

    .line 421
    .line 422
    add-int v16, v14, v7

    .line 423
    .line 424
    const/16 v17, -0x1

    .line 425
    .line 426
    const/16 v18, -0x4

    .line 427
    .line 428
    invoke-virtual/range {v11 .. v21}, Lhb;->f(IIIIIIIZZZ)I

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    iput v2, v1, Lxy1;->t:I

    .line 433
    .line 434
    goto/16 :goto_1

    .line 435
    .line 436
    :cond_b
    invoke-virtual/range {p0 .. p1}, Ln33;->f(Lxy1;)V

    .line 437
    .line 438
    .line 439
    invoke-static {v1}, Ln33;->j(Lxy1;)V

    .line 440
    .line 441
    .line 442
    goto/16 :goto_1

    .line 443
    .line 444
    :cond_c
    invoke-virtual/range {p0 .. p1}, Ln33;->f(Lxy1;)V

    .line 445
    .line 446
    .line 447
    goto/16 :goto_1

    .line 448
    .line 449
    :goto_3
    iput-boolean v5, v1, Lxy1;->s:Z

    .line 450
    .line 451
    const/4 v1, 0x1

    .line 452
    iput-boolean v1, v0, Ln33;->f:Z

    .line 453
    .line 454
    invoke-virtual {v0}, Ln33;->k()V

    .line 455
    .line 456
    .line 457
    :cond_d
    :goto_4
    return-void
.end method

.method public final i(Lxy1;)V
    .locals 5

    .line 1
    invoke-static {p1}, Ln33;->d(Lxy1;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ln33;->e(Lxy1;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Ln33;->c:Lhb;

    .line 12
    .line 13
    iget-object v1, v1, Lhb;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, [J

    .line 16
    .line 17
    const-wide/16 v2, -0x1

    .line 18
    .line 19
    aput-wide v2, v1, v0

    .line 20
    .line 21
    add-int/lit8 v4, v0, 0x1

    .line 22
    .line 23
    aput-wide v2, v1, v4

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x2

    .line 26
    .line 27
    sget-wide v2, Lm33;->a:J

    .line 28
    .line 29
    aput-wide v2, v1, v0

    .line 30
    .line 31
    const/4 v0, -0x4

    .line 32
    iput v0, p1, Lxy1;->t:I

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p1, Lxy1;->s:Z

    .line 36
    .line 37
    iput-boolean v0, p0, Ln33;->f:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Ln33;->h:Z

    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 9

    .line 1
    iget-object v0, p0, Ln33;->i:Ld9;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, v1

    .line 9
    :goto_0
    iget-object v3, p0, Ln33;->d:Lwy3;

    .line 10
    .line 11
    iget-wide v3, v3, Lwy3;->c:J

    .line 12
    .line 13
    const-wide/16 v5, 0x0

    .line 14
    .line 15
    cmp-long v5, v3, v5

    .line 16
    .line 17
    if-gez v5, :cond_1

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-wide v5, p0, Ln33;->j:J

    .line 23
    .line 24
    cmp-long v5, v5, v3

    .line 25
    .line 26
    if-nez v5, :cond_2

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    :goto_1
    return-void

    .line 31
    :cond_2
    iget-object v2, p0, Ln33;->b:Lq9;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    const-wide/16 v7, 0x10

    .line 43
    .line 44
    add-long/2addr v7, v5

    .line 45
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    iput-wide v3, p0, Ln33;->j:J

    .line 50
    .line 51
    sub-long/2addr v3, v5

    .line 52
    new-instance v0, Ld9;

    .line 53
    .line 54
    iget-object v5, p0, Ln33;->k:Lje;

    .line 55
    .line 56
    invoke-direct {v0, v1, v5}, Ld9;-><init>(ILne1;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Ln33;->i:Ld9;

    .line 63
    .line 64
    return-void
.end method

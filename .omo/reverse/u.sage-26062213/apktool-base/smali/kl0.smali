.class public final Lkl0;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:Z

.field public t:I

.field public final synthetic u:Z

.field public v:Ljava/lang/Object;

.field public w:Ljava/lang/Object;

.field public final synthetic x:Ljava/lang/Object;

.field public final synthetic y:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ldh0;Lpe1;Lga3;ZZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lkl0;->r:I

    .line 3
    .line 4
    iput-boolean p4, p0, Lkl0;->s:Z

    .line 5
    .line 6
    iput-boolean p5, p0, Lkl0;->u:Z

    .line 7
    .line 8
    iput-object p3, p0, Lkl0;->x:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p2, p0, Lkl0;->y:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 p2, 0x2

    .line 13
    invoke-direct {p0, p2, p1}, Lbv3;-><init>(ILdh0;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lu/sage/MainActivity;Ly84;ZLdh0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkl0;->r:I

    .line 17
    iput-object p1, p0, Lkl0;->x:Ljava/lang/Object;

    iput-object p2, p0, Lkl0;->y:Ljava/lang/Object;

    iput-boolean p3, p0, Lkl0;->u:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lkl0;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lqi0;

    .line 9
    .line 10
    check-cast p2, Ldh0;

    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Lkl0;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lkl0;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lkl0;->q(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p2, p1}, Lkl0;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lkl0;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lkl0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 9

    .line 1
    iget v0, p0, Lkl0;->r:I

    .line 2
    .line 3
    iget-object v1, p0, Lkl0;->y:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lkl0;->x:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p2, Lkl0;

    .line 11
    .line 12
    check-cast v2, Lu/sage/MainActivity;

    .line 13
    .line 14
    check-cast v1, Ly84;

    .line 15
    .line 16
    iget-boolean p0, p0, Lkl0;->u:Z

    .line 17
    .line 18
    invoke-direct {p2, v2, v1, p0, p1}, Lkl0;-><init>(Lu/sage/MainActivity;Ly84;ZLdh0;)V

    .line 19
    .line 20
    .line 21
    return-object p2

    .line 22
    :pswitch_0
    new-instance v3, Lkl0;

    .line 23
    .line 24
    iget-boolean v7, p0, Lkl0;->s:Z

    .line 25
    .line 26
    move-object v6, v2

    .line 27
    check-cast v6, Lga3;

    .line 28
    .line 29
    move-object v5, v1

    .line 30
    check-cast v5, Lpe1;

    .line 31
    .line 32
    iget-boolean v8, p0, Lkl0;->u:Z

    .line 33
    .line 34
    move-object v4, p1

    .line 35
    invoke-direct/range {v3 .. v8}, Lkl0;-><init>(Ldh0;Lpe1;Lga3;ZZ)V

    .line 36
    .line 37
    .line 38
    iput-object p2, v3, Lkl0;->w:Ljava/lang/Object;

    .line 39
    .line 40
    return-object v3

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lkl0;->r:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 7
    .line 8
    sget-object v4, Lri0;->n:Lri0;

    .line 9
    .line 10
    const/4 v5, 0x3

    .line 11
    iget-object v6, v0, Lkl0;->x:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v7, v0, Lkl0;->y:Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    const/4 v9, 0x2

    .line 17
    const/4 v10, 0x0

    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move-object v1, v7

    .line 22
    check-cast v1, Ly84;

    .line 23
    .line 24
    move-object v14, v6

    .line 25
    check-cast v14, Lu/sage/MainActivity;

    .line 26
    .line 27
    iget v6, v0, Lkl0;->t:I

    .line 28
    .line 29
    sget-object v17, Lt64;->a:Lt64;

    .line 30
    .line 31
    if-eqz v6, :cond_5

    .line 32
    .line 33
    if-eq v6, v8, :cond_4

    .line 34
    .line 35
    if-eq v6, v9, :cond_2

    .line 36
    .line 37
    if-ne v6, v5, :cond_1

    .line 38
    .line 39
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    move-object/from16 v4, v17

    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_1
    invoke-static {v3}, Lk21;->n(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    move-object v4, v10

    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :cond_2
    iget-boolean v1, v0, Lkl0;->s:Z

    .line 53
    .line 54
    iget-object v3, v0, Lkl0;->w:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v3, Lps;

    .line 57
    .line 58
    iget-object v6, v0, Lkl0;->v:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v6, Lpt;

    .line 61
    .line 62
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    move-object v15, v3

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    iget-object v1, v0, Lkl0;->w:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v1, Lps;

    .line 70
    .line 71
    iget-object v3, v0, Lkl0;->v:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v3, Lpt;

    .line 74
    .line 75
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    move-object v6, v3

    .line 79
    move-object v3, v1

    .line 80
    move-object/from16 v1, p1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    sget v3, Lu/sage/MainActivity;->C:I

    .line 87
    .line 88
    invoke-virtual {v14, v1}, Lu/sage/MainActivity;->j(Ly84;)Lpt;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v14, v1}, Lmt1;->I(Landroid/content/Context;Ly84;)Lps;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-static {v14, v1}, Lmt1;->v(Landroid/content/Context;Ly84;)Ln1;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iput-object v3, v0, Lkl0;->v:Ljava/lang/Object;

    .line 101
    .line 102
    iput-object v6, v0, Lkl0;->w:Ljava/lang/Object;

    .line 103
    .line 104
    iput v8, v0, Lkl0;->t:I

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Ln1;->b(Lfh0;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-ne v1, v4, :cond_6

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    move-object/from16 v18, v6

    .line 114
    .line 115
    move-object v6, v3

    .line 116
    move-object/from16 v3, v18

    .line 117
    .line 118
    :goto_0
    check-cast v1, Lw3;

    .line 119
    .line 120
    invoke-virtual {v1}, Lw3;->l()Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    iput-object v6, v0, Lkl0;->v:Ljava/lang/Object;

    .line 125
    .line 126
    iput-object v3, v0, Lkl0;->w:Ljava/lang/Object;

    .line 127
    .line 128
    iput-boolean v1, v0, Lkl0;->s:Z

    .line 129
    .line 130
    iput v9, v0, Lkl0;->t:I

    .line 131
    .line 132
    invoke-virtual {v3}, Lps;->a()Llm0;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    new-instance v12, Lp4;

    .line 137
    .line 138
    invoke-direct {v12, v3, v10, v9}, Lp4;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 139
    .line 140
    .line 141
    invoke-static {v11, v12, v0}, Lht4;->o(Llm0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    if-ne v9, v4, :cond_7

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_7
    move-object/from16 v9, v17

    .line 149
    .line 150
    :goto_1
    if-ne v9, v4, :cond_3

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :goto_2
    iget-object v3, v6, Lpt;->e:Lnv3;

    .line 154
    .line 155
    invoke-virtual {v3}, Lnv3;->getValue()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    check-cast v3, La81;

    .line 160
    .line 161
    invoke-virtual {v15}, Lps;->d()La81;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    new-instance v9, Lbt;

    .line 166
    .line 167
    invoke-direct {v9, v5, v10, v8}, Lbt;-><init>(ILdh0;I)V

    .line 168
    .line 169
    .line 170
    new-instance v8, Lc91;

    .line 171
    .line 172
    invoke-direct {v8, v3, v6, v9, v2}, Lc91;-><init>(La81;Ljava/lang/Object;Lef1;I)V

    .line 173
    .line 174
    .line 175
    new-instance v11, Lol0;

    .line 176
    .line 177
    move-object v12, v7

    .line 178
    check-cast v12, Ly84;

    .line 179
    .line 180
    iget-boolean v13, v0, Lkl0;->u:Z

    .line 181
    .line 182
    const/16 v16, 0x0

    .line 183
    .line 184
    invoke-direct/range {v11 .. v16}, Lol0;-><init>(Ly84;ZLu/sage/MainActivity;Lps;Ldh0;)V

    .line 185
    .line 186
    .line 187
    iput-object v10, v0, Lkl0;->v:Ljava/lang/Object;

    .line 188
    .line 189
    iput-object v10, v0, Lkl0;->w:Ljava/lang/Object;

    .line 190
    .line 191
    iput-boolean v1, v0, Lkl0;->s:Z

    .line 192
    .line 193
    iput v5, v0, Lkl0;->t:I

    .line 194
    .line 195
    invoke-static {v8, v11, v0}, Lqj0;->A(La81;Ldf1;Lbv3;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    if-ne v0, v4, :cond_0

    .line 200
    .line 201
    :goto_3
    return-object v4

    .line 202
    :pswitch_0
    check-cast v7, Lpe1;

    .line 203
    .line 204
    check-cast v6, Lga3;

    .line 205
    .line 206
    iget v1, v0, Lkl0;->t:I

    .line 207
    .line 208
    iget-boolean v11, v0, Lkl0;->u:Z

    .line 209
    .line 210
    const/4 v12, 0x4

    .line 211
    if-eqz v1, :cond_c

    .line 212
    .line 213
    if-eq v1, v8, :cond_b

    .line 214
    .line 215
    if-eq v1, v9, :cond_a

    .line 216
    .line 217
    if-eq v1, v5, :cond_9

    .line 218
    .line 219
    if-ne v1, v12, :cond_8

    .line 220
    .line 221
    iget-object v0, v0, Lkl0;->w:Ljava/lang/Object;

    .line 222
    .line 223
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    move-object v4, v0

    .line 227
    move-object/from16 v0, p1

    .line 228
    .line 229
    goto/16 :goto_8

    .line 230
    .line 231
    :cond_8
    invoke-static {v3}, Lk21;->n(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    move-object v4, v10

    .line 235
    goto/16 :goto_9

    .line 236
    .line 237
    :cond_9
    iget-object v1, v0, Lkl0;->w:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v1, Ld14;

    .line 240
    .line 241
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    move-object/from16 v2, p1

    .line 245
    .line 246
    goto/16 :goto_7

    .line 247
    .line 248
    :cond_a
    iget-object v1, v0, Lkl0;->v:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v1, Lc14;

    .line 251
    .line 252
    iget-object v3, v0, Lkl0;->w:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v3, Ld14;

    .line 255
    .line 256
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_b
    iget-object v1, v0, Lkl0;->v:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v1, Lc14;

    .line 263
    .line 264
    iget-object v3, v0, Lkl0;->w:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v3, Ld14;

    .line 267
    .line 268
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    move-object/from16 v8, p1

    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_c
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    iget-object v1, v0, Lkl0;->w:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v1, Ld14;

    .line 280
    .line 281
    iget-boolean v3, v0, Lkl0;->s:Z

    .line 282
    .line 283
    if-eqz v3, :cond_14

    .line 284
    .line 285
    if-eqz v11, :cond_d

    .line 286
    .line 287
    sget-object v3, Lc14;->n:Lc14;

    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_d
    sget-object v3, Lc14;->o:Lc14;

    .line 291
    .line 292
    :goto_4
    if-nez v11, :cond_10

    .line 293
    .line 294
    iput-object v1, v0, Lkl0;->w:Ljava/lang/Object;

    .line 295
    .line 296
    iput-object v3, v0, Lkl0;->v:Ljava/lang/Object;

    .line 297
    .line 298
    iput v8, v0, Lkl0;->t:I

    .line 299
    .line 300
    invoke-interface {v1, v0}, Ld14;->c(Lbv3;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v8

    .line 304
    if-ne v8, v4, :cond_e

    .line 305
    .line 306
    goto/16 :goto_9

    .line 307
    .line 308
    :cond_e
    move-object/from16 v18, v3

    .line 309
    .line 310
    move-object v3, v1

    .line 311
    move-object/from16 v1, v18

    .line 312
    .line 313
    :goto_5
    check-cast v8, Ljava/lang/Boolean;

    .line 314
    .line 315
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 316
    .line 317
    .line 318
    move-result v8

    .line 319
    if-nez v8, :cond_f

    .line 320
    .line 321
    invoke-virtual {v6}, Lga3;->f()Lbu1;

    .line 322
    .line 323
    .line 324
    move-result-object v8

    .line 325
    iput-object v3, v0, Lkl0;->w:Ljava/lang/Object;

    .line 326
    .line 327
    iput-object v1, v0, Lkl0;->v:Ljava/lang/Object;

    .line 328
    .line 329
    iput v9, v0, Lkl0;->t:I

    .line 330
    .line 331
    invoke-virtual {v8, v0}, Lbu1;->a(Lbv3;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v8

    .line 335
    if-ne v8, v4, :cond_f

    .line 336
    .line 337
    goto :goto_9

    .line 338
    :cond_f
    :goto_6
    move-object/from16 v18, v3

    .line 339
    .line 340
    move-object v3, v1

    .line 341
    move-object/from16 v1, v18

    .line 342
    .line 343
    :cond_10
    new-instance v8, Ljl0;

    .line 344
    .line 345
    invoke-direct {v8, v10, v7, v2}, Ljl0;-><init>(Ldh0;Lpe1;I)V

    .line 346
    .line 347
    .line 348
    iput-object v1, v0, Lkl0;->w:Ljava/lang/Object;

    .line 349
    .line 350
    iput-object v10, v0, Lkl0;->v:Ljava/lang/Object;

    .line 351
    .line 352
    iput v5, v0, Lkl0;->t:I

    .line 353
    .line 354
    invoke-interface {v1, v3, v8, v0}, Ld14;->d(Lc14;Ldf1;Lbv3;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    if-ne v2, v4, :cond_11

    .line 359
    .line 360
    goto :goto_9

    .line 361
    :cond_11
    :goto_7
    if-nez v11, :cond_13

    .line 362
    .line 363
    iput-object v2, v0, Lkl0;->w:Ljava/lang/Object;

    .line 364
    .line 365
    iput v12, v0, Lkl0;->t:I

    .line 366
    .line 367
    invoke-interface {v1, v0}, Ld14;->c(Lbv3;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    if-ne v0, v4, :cond_12

    .line 372
    .line 373
    goto :goto_9

    .line 374
    :cond_12
    move-object v4, v2

    .line 375
    :goto_8
    check-cast v0, Ljava/lang/Boolean;

    .line 376
    .line 377
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-nez v0, :cond_15

    .line 382
    .line 383
    invoke-virtual {v6}, Lga3;->f()Lbu1;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    iget-object v1, v0, Lbu1;->b:Lv24;

    .line 388
    .line 389
    iget-object v2, v0, Lbu1;->e:Ll6;

    .line 390
    .line 391
    iget-object v0, v0, Lbu1;->f:Ll6;

    .line 392
    .line 393
    invoke-virtual {v1, v2, v0}, Lv24;->e(Lne1;Lne1;)V

    .line 394
    .line 395
    .line 396
    goto :goto_9

    .line 397
    :cond_13
    move-object v4, v2

    .line 398
    goto :goto_9

    .line 399
    :cond_14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    check-cast v1, Lu13;

    .line 403
    .line 404
    invoke-interface {v1}, Lu13;->b()Ljb3;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-interface {v7, v0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    :cond_15
    :goto_9
    return-object v4

    .line 413
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

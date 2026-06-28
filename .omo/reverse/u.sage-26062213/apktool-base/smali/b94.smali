.class public final Lb94;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic A:Ly84;

.field public final synthetic B:Z

.field public final synthetic C:Landroid/os/Bundle;

.field public final synthetic D:Landroid/appwidget/AppWidgetManager;

.field public final synthetic E:Lu/sage/widget/UsageWidgetProvider;

.field public final synthetic F:I

.field public final synthetic G:I

.field public r:J

.field public s:Lps;

.field public t:Ln1;

.field public u:Lw33;

.field public v:Lw33;

.field public w:I

.field public final synthetic x:I

.field public final synthetic y:J

.field public final synthetic z:Landroid/content/Context;


# direct methods
.method public constructor <init>(IJLandroid/content/Context;Ly84;ZLandroid/os/Bundle;Landroid/appwidget/AppWidgetManager;Lu/sage/widget/UsageWidgetProvider;IILdh0;)V
    .locals 0

    .line 1
    iput p1, p0, Lb94;->x:I

    .line 2
    .line 3
    iput-wide p2, p0, Lb94;->y:J

    .line 4
    .line 5
    iput-object p4, p0, Lb94;->z:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p5, p0, Lb94;->A:Ly84;

    .line 8
    .line 9
    iput-boolean p6, p0, Lb94;->B:Z

    .line 10
    .line 11
    iput-object p7, p0, Lb94;->C:Landroid/os/Bundle;

    .line 12
    .line 13
    iput-object p8, p0, Lb94;->D:Landroid/appwidget/AppWidgetManager;

    .line 14
    .line 15
    iput-object p9, p0, Lb94;->E:Lu/sage/widget/UsageWidgetProvider;

    .line 16
    .line 17
    iput p10, p0, Lb94;->F:I

    .line 18
    .line 19
    iput p11, p0, Lb94;->G:I

    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    invoke-direct {p0, p1, p12}, Lbv3;-><init>(ILdh0;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lqi0;

    .line 2
    .line 3
    check-cast p2, Ldh0;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p1}, Lb94;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lb94;

    .line 10
    .line 11
    sget-object p1, Lt64;->a:Lt64;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lb94;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 13

    .line 1
    new-instance v0, Lb94;

    .line 2
    .line 3
    iget v10, p0, Lb94;->F:I

    .line 4
    .line 5
    iget v11, p0, Lb94;->G:I

    .line 6
    .line 7
    iget v1, p0, Lb94;->x:I

    .line 8
    .line 9
    iget-wide v2, p0, Lb94;->y:J

    .line 10
    .line 11
    iget-object v4, p0, Lb94;->z:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v5, p0, Lb94;->A:Ly84;

    .line 14
    .line 15
    iget-boolean v6, p0, Lb94;->B:Z

    .line 16
    .line 17
    iget-object v7, p0, Lb94;->C:Landroid/os/Bundle;

    .line 18
    .line 19
    iget-object v8, p0, Lb94;->D:Landroid/appwidget/AppWidgetManager;

    .line 20
    .line 21
    iget-object v9, p0, Lb94;->E:Lu/sage/widget/UsageWidgetProvider;

    .line 22
    .line 23
    move-object v12, p1

    .line 24
    invoke-direct/range {v0 .. v12}, Lb94;-><init>(IJLandroid/content/Context;Ly84;ZLandroid/os/Bundle;Landroid/appwidget/AppWidgetManager;Lu/sage/widget/UsageWidgetProvider;IILdh0;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lb94;->x:I

    .line 4
    .line 5
    iget v2, v0, Lb94;->w:I

    .line 6
    .line 7
    iget-object v6, v0, Lb94;->A:Ly84;

    .line 8
    .line 9
    const/4 v3, 0x5

    .line 10
    const/4 v4, 0x4

    .line 11
    const/4 v5, 0x3

    .line 12
    const/4 v7, 0x2

    .line 13
    iget-object v8, v0, Lb94;->z:Landroid/content/Context;

    .line 14
    .line 15
    const/4 v9, 0x1

    .line 16
    const/4 v12, 0x0

    .line 17
    const/4 v13, 0x0

    .line 18
    sget-object v10, Lri0;->n:Lri0;

    .line 19
    .line 20
    if-eqz v2, :cond_5

    .line 21
    .line 22
    if-eq v2, v9, :cond_4

    .line 23
    .line 24
    if-eq v2, v7, :cond_3

    .line 25
    .line 26
    if-eq v2, v5, :cond_2

    .line 27
    .line 28
    if-eq v2, v4, :cond_1

    .line 29
    .line 30
    if-ne v2, v3, :cond_0

    .line 31
    .line 32
    iget-object v2, v0, Lb94;->u:Lw33;

    .line 33
    .line 34
    :try_start_0
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    move-object/from16 v3, p1

    .line 38
    .line 39
    move-object v4, v6

    .line 40
    goto/16 :goto_6

    .line 41
    .line 42
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v12

    .line 48
    :cond_1
    iget-wide v4, v0, Lb94;->r:J

    .line 49
    .line 50
    iget-object v2, v0, Lb94;->v:Lw33;

    .line 51
    .line 52
    iget-object v11, v0, Lb94;->u:Lw33;

    .line 53
    .line 54
    iget-object v14, v0, Lb94;->s:Lps;

    .line 55
    .line 56
    :try_start_1
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    .line 58
    .line 59
    move-wide/from16 v18, v4

    .line 60
    .line 61
    move-object v5, v14

    .line 62
    move-wide/from16 v14, v18

    .line 63
    .line 64
    move-object/from16 v3, p1

    .line 65
    .line 66
    move-object v4, v6

    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :cond_2
    iget-wide v14, v0, Lb94;->r:J

    .line 70
    .line 71
    iget-object v2, v0, Lb94;->u:Lw33;

    .line 72
    .line 73
    iget-object v5, v0, Lb94;->s:Lps;

    .line 74
    .line 75
    :try_start_2
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    .line 77
    .line 78
    move-object v4, v6

    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :cond_3
    iget-wide v14, v0, Lb94;->r:J

    .line 82
    .line 83
    iget-object v2, v0, Lb94;->u:Lw33;

    .line 84
    .line 85
    iget-object v11, v0, Lb94;->s:Lps;

    .line 86
    .line 87
    :try_start_3
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 88
    .line 89
    .line 90
    move-object v4, v6

    .line 91
    move-wide v5, v14

    .line 92
    move-object v14, v2

    .line 93
    move-object/from16 v2, p1

    .line 94
    .line 95
    goto/16 :goto_1

    .line 96
    .line 97
    :cond_4
    iget-wide v14, v0, Lb94;->r:J

    .line 98
    .line 99
    iget-object v2, v0, Lb94;->v:Lw33;

    .line 100
    .line 101
    iget-object v11, v0, Lb94;->u:Lw33;

    .line 102
    .line 103
    iget-object v3, v0, Lb94;->t:Ln1;

    .line 104
    .line 105
    iget-object v4, v0, Lb94;->s:Lps;

    .line 106
    .line 107
    :try_start_4
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 108
    .line 109
    .line 110
    move-object/from16 v18, v11

    .line 111
    .line 112
    move-object v11, v4

    .line 113
    move-object v4, v6

    .line 114
    move-wide v5, v14

    .line 115
    move-object/from16 v14, v18

    .line 116
    .line 117
    move-object/from16 v15, p1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_5
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 124
    .line 125
    .line 126
    move-result-wide v2

    .line 127
    sget-object v4, Lez3;->a:Lra3;

    .line 128
    .line 129
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    new-array v11, v13, [Ljava/lang/Object;

    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-static {v11}, Lra3;->c([Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :try_start_5
    invoke-static {v8, v6}, Lmt1;->I(Landroid/content/Context;Ly84;)Lps;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-static {v8, v6}, Lmt1;->v(Landroid/content/Context;Ly84;)Ln1;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    new-instance v14, Lw33;

    .line 153
    .line 154
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4}, Lps;->c()La81;

    .line 158
    .line 159
    .line 160
    move-result-object v15

    .line 161
    iput-object v4, v0, Lb94;->s:Lps;

    .line 162
    .line 163
    iput-object v11, v0, Lb94;->t:Ln1;

    .line 164
    .line 165
    iput-object v14, v0, Lb94;->u:Lw33;

    .line 166
    .line 167
    iput-object v14, v0, Lb94;->v:Lw33;

    .line 168
    .line 169
    iput-wide v2, v0, Lb94;->r:J

    .line 170
    .line 171
    iput v9, v0, Lb94;->w:I

    .line 172
    .line 173
    invoke-static {v15, v0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v15

    .line 177
    if-ne v15, v10, :cond_6

    .line 178
    .line 179
    goto/16 :goto_5

    .line 180
    .line 181
    :cond_6
    move-object/from16 v18, v11

    .line 182
    .line 183
    move-object v11, v4

    .line 184
    move-object v4, v6

    .line 185
    move-wide v5, v2

    .line 186
    move-object/from16 v3, v18

    .line 187
    .line 188
    move-object v2, v14

    .line 189
    :goto_0
    iput-object v15, v2, Lw33;->n:Ljava/lang/Object;

    .line 190
    .line 191
    iget-object v2, v14, Lw33;->n:Ljava/lang/Object;

    .line 192
    .line 193
    if-nez v2, :cond_a

    .line 194
    .line 195
    invoke-virtual {v3}, Ln1;->a()La81;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    iput-object v11, v0, Lb94;->s:Lps;

    .line 200
    .line 201
    iput-object v12, v0, Lb94;->t:Ln1;

    .line 202
    .line 203
    iput-object v14, v0, Lb94;->u:Lw33;

    .line 204
    .line 205
    iput-object v12, v0, Lb94;->v:Lw33;

    .line 206
    .line 207
    iput-wide v5, v0, Lb94;->r:J

    .line 208
    .line 209
    iput v7, v0, Lb94;->w:I

    .line 210
    .line 211
    invoke-static {v2, v0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    if-ne v2, v10, :cond_7

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_7
    :goto_1
    check-cast v2, Lw3;

    .line 219
    .line 220
    invoke-virtual {v2}, Lw3;->l()Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-nez v2, :cond_a

    .line 225
    .line 226
    iput-object v11, v0, Lb94;->s:Lps;

    .line 227
    .line 228
    iput-object v12, v0, Lb94;->t:Ln1;

    .line 229
    .line 230
    iput-object v14, v0, Lb94;->u:Lw33;

    .line 231
    .line 232
    iput-wide v5, v0, Lb94;->r:J

    .line 233
    .line 234
    const/4 v2, 0x3

    .line 235
    iput v2, v0, Lb94;->w:I

    .line 236
    .line 237
    invoke-virtual {v11, v0}, Lps;->e(Lfh0;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    if-ne v2, v10, :cond_8

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_8
    move-object v2, v14

    .line 245
    move-wide v14, v5

    .line 246
    move-object v5, v11

    .line 247
    :goto_2
    invoke-virtual {v5}, Lps;->c()La81;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    iput-object v5, v0, Lb94;->s:Lps;

    .line 252
    .line 253
    iput-object v12, v0, Lb94;->t:Ln1;

    .line 254
    .line 255
    iput-object v2, v0, Lb94;->u:Lw33;

    .line 256
    .line 257
    iput-object v2, v0, Lb94;->v:Lw33;

    .line 258
    .line 259
    iput-wide v14, v0, Lb94;->r:J

    .line 260
    .line 261
    const/4 v6, 0x4

    .line 262
    iput v6, v0, Lb94;->w:I

    .line 263
    .line 264
    invoke-static {v3, v0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    if-ne v3, v10, :cond_9

    .line 269
    .line 270
    goto :goto_5

    .line 271
    :cond_9
    move-object v11, v2

    .line 272
    :goto_3
    iput-object v3, v2, Lw33;->n:Ljava/lang/Object;

    .line 273
    .line 274
    move-object v2, v11

    .line 275
    move-object v11, v5

    .line 276
    move-wide v5, v14

    .line 277
    goto :goto_4

    .line 278
    :cond_a
    move-object v2, v14

    .line 279
    :goto_4
    iget-object v3, v11, Lps;->d:Lnv3;

    .line 280
    .line 281
    invoke-virtual {v3}, Lnv3;->getValue()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    check-cast v3, La81;

    .line 286
    .line 287
    iput-object v12, v0, Lb94;->s:Lps;

    .line 288
    .line 289
    iput-object v12, v0, Lb94;->t:Ln1;

    .line 290
    .line 291
    iput-object v2, v0, Lb94;->u:Lw33;

    .line 292
    .line 293
    iput-object v12, v0, Lb94;->v:Lw33;

    .line 294
    .line 295
    iput-wide v5, v0, Lb94;->r:J

    .line 296
    .line 297
    const/4 v5, 0x5

    .line 298
    iput v5, v0, Lb94;->w:I

    .line 299
    .line 300
    invoke-static {v3, v0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    if-ne v3, v10, :cond_b

    .line 305
    .line 306
    :goto_5
    return-object v10

    .line 307
    :cond_b
    :goto_6
    check-cast v3, Ljava/lang/Boolean;

    .line 308
    .line 309
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 310
    .line 311
    .line 312
    move-result v11

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 314
    .line 315
    .line 316
    invoke-static {v8, v1}, Lc75;->K(Landroid/content/Context;I)Z

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    sget-object v5, Lez3;->a:Lra3;

    .line 321
    .line 322
    iget-object v6, v2, Lw33;->n:Ljava/lang/Object;

    .line 323
    .line 324
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    new-array v6, v13, [Ljava/lang/Object;

    .line 332
    .line 333
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    invoke-static {v6}, Lra3;->c([Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 337
    .line 338
    .line 339
    iget-boolean v5, v0, Lb94;->B:Z

    .line 340
    .line 341
    if-eq v3, v5, :cond_c

    .line 342
    .line 343
    :try_start_6
    new-array v5, v13, [Ljava/lang/Object;

    .line 344
    .line 345
    invoke-static {v5}, Lra3;->m([Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    :cond_c
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 349
    .line 350
    const/16 v6, 0x1f

    .line 351
    .line 352
    move v10, v3

    .line 353
    iget-object v3, v0, Lb94;->E:Lu/sage/widget/UsageWidgetProvider;

    .line 354
    .line 355
    iget v14, v0, Lb94;->G:I

    .line 356
    .line 357
    iget v15, v0, Lb94;->F:I

    .line 358
    .line 359
    move-object/from16 v16, v12

    .line 360
    .line 361
    iget-object v12, v0, Lb94;->D:Landroid/appwidget/AppWidgetManager;

    .line 362
    .line 363
    if-lt v5, v6, :cond_11

    .line 364
    .line 365
    :try_start_7
    iget-object v5, v0, Lb94;->C:Landroid/os/Bundle;

    .line 366
    .line 367
    const-string v6, "appWidgetSizes"

    .line 368
    .line 369
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    new-array v6, v13, [Ljava/lang/Object;

    .line 377
    .line 378
    invoke-static {v6}, Lra3;->c([Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    if-eqz v5, :cond_d

    .line 382
    .line 383
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 384
    .line 385
    .line 386
    move-result v6

    .line 387
    if-eqz v6, :cond_e

    .line 388
    .line 389
    :cond_d
    move-object v6, v4

    .line 390
    move-object v4, v8

    .line 391
    move v7, v10

    .line 392
    goto/16 :goto_8

    .line 393
    .line 394
    :cond_e
    new-instance v6, Ljd3;

    .line 395
    .line 396
    const/16 v14, 0x14

    .line 397
    .line 398
    invoke-direct {v6, v14}, Ljd3;-><init>(I)V

    .line 399
    .line 400
    .line 401
    new-instance v14, Ljd3;

    .line 402
    .line 403
    const/16 v15, 0x15

    .line 404
    .line 405
    invoke-direct {v14, v15}, Ljd3;-><init>(I)V

    .line 406
    .line 407
    .line 408
    new-array v7, v7, [Lpe1;

    .line 409
    .line 410
    aput-object v6, v7, v13

    .line 411
    .line 412
    aput-object v14, v7, v9

    .line 413
    .line 414
    new-instance v6, Ly80;

    .line 415
    .line 416
    invoke-direct {v6, v13, v7}, Ly80;-><init>(ILjava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    invoke-static {v5, v6}, Lo70;->y0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 420
    .line 421
    .line 422
    move-result-object v5

    .line 423
    iget v0, v0, Lb94;->x:I

    .line 424
    .line 425
    new-instance v14, Ljava/util/ArrayList;

    .line 426
    .line 427
    const/16 v6, 0xa

    .line 428
    .line 429
    invoke-static {v5, v6}, Lp70;->a0(Ljava/lang/Iterable;I)I

    .line 430
    .line 431
    .line 432
    move-result v6

    .line 433
    invoke-direct {v14, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 434
    .line 435
    .line 436
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 437
    .line 438
    .line 439
    move-result-object v15

    .line 440
    move v5, v13

    .line 441
    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 442
    .line 443
    .line 444
    move-result v6

    .line 445
    if-eqz v6, :cond_10

    .line 446
    .line 447
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v6

    .line 451
    add-int/lit8 v17, v5, 0x1

    .line 452
    .line 453
    if-ltz v5, :cond_f

    .line 454
    .line 455
    check-cast v6, Landroid/util/SizeF;

    .line 456
    .line 457
    iget-object v5, v2, Lw33;->n:Ljava/lang/Object;

    .line 458
    .line 459
    check-cast v5, Ld84;

    .line 460
    .line 461
    invoke-virtual {v6}, Landroid/util/SizeF;->getHeight()F

    .line 462
    .line 463
    .line 464
    move-result v9

    .line 465
    move v7, v10

    .line 466
    invoke-virtual {v6}, Landroid/util/SizeF;->getWidth()F

    .line 467
    .line 468
    .line 469
    move-result v10

    .line 470
    move-object/from16 v18, v5

    .line 471
    .line 472
    move v5, v0

    .line 473
    move-object v0, v6

    .line 474
    move-object v6, v4

    .line 475
    move-object v4, v8

    .line 476
    move-object/from16 v8, v18

    .line 477
    .line 478
    invoke-static/range {v3 .. v11}, Lu/sage/widget/UsageWidgetProvider;->a(Lu/sage/widget/UsageWidgetProvider;Landroid/content/Context;ILy84;ZLd84;FFZ)Landroid/widget/RemoteViews;

    .line 479
    .line 480
    .line 481
    move-result-object v8

    .line 482
    new-instance v9, Ljs2;

    .line 483
    .line 484
    invoke-direct {v9, v0, v8}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-object v8, v4

    .line 491
    move v0, v5

    .line 492
    move-object v4, v6

    .line 493
    move v10, v7

    .line 494
    move/from16 v5, v17

    .line 495
    .line 496
    goto :goto_7

    .line 497
    :cond_f
    invoke-static {}, Ltv4;->S()V

    .line 498
    .line 499
    .line 500
    throw v16

    .line 501
    :cond_10
    invoke-static {v14}, Loa2;->d0(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    sget-object v2, Lez3;->a:Lra3;

    .line 506
    .line 507
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 508
    .line 509
    .line 510
    move-result-object v3

    .line 511
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    new-array v3, v13, [Ljava/lang/Object;

    .line 515
    .line 516
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    .line 518
    .line 519
    invoke-static {v3}, Lra3;->c([Ljava/lang/Object;)V

    .line 520
    .line 521
    .line 522
    new-instance v2, Landroid/widget/RemoteViews;

    .line 523
    .line 524
    invoke-static {v0}, Lyv3;->h(Ljava/util/Map;)Landroid/widget/RemoteViews;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    invoke-virtual {v12, v1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 529
    .line 530
    .line 531
    goto :goto_9

    .line 532
    :goto_8
    iget v5, v0, Lb94;->x:I

    .line 533
    .line 534
    iget-object v0, v2, Lw33;->n:Ljava/lang/Object;

    .line 535
    .line 536
    move-object v8, v0

    .line 537
    check-cast v8, Ld84;

    .line 538
    .line 539
    int-to-float v9, v15

    .line 540
    int-to-float v10, v14

    .line 541
    invoke-static/range {v3 .. v11}, Lu/sage/widget/UsageWidgetProvider;->a(Lu/sage/widget/UsageWidgetProvider;Landroid/content/Context;ILy84;ZLd84;FFZ)Landroid/widget/RemoteViews;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    new-array v2, v13, [Ljava/lang/Object;

    .line 553
    .line 554
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v12, v1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 558
    .line 559
    .line 560
    goto :goto_9

    .line 561
    :cond_11
    move-object v6, v4

    .line 562
    move-object v4, v8

    .line 563
    move v7, v10

    .line 564
    iget v5, v0, Lb94;->x:I

    .line 565
    .line 566
    iget-object v0, v2, Lw33;->n:Ljava/lang/Object;

    .line 567
    .line 568
    move-object v8, v0

    .line 569
    check-cast v8, Ld84;

    .line 570
    .line 571
    int-to-float v9, v15

    .line 572
    int-to-float v10, v14

    .line 573
    invoke-static/range {v3 .. v11}, Lu/sage/widget/UsageWidgetProvider;->a(Lu/sage/widget/UsageWidgetProvider;Landroid/content/Context;ILy84;ZLd84;FFZ)Landroid/widget/RemoteViews;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    new-array v2, v13, [Ljava/lang/Object;

    .line 585
    .line 586
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v12, v1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 590
    .line 591
    .line 592
    :goto_9
    sget-object v0, Lez3;->a:Lra3;

    .line 593
    .line 594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 595
    .line 596
    .line 597
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    new-array v1, v13, [Ljava/lang/Object;

    .line 605
    .line 606
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 607
    .line 608
    .line 609
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 610
    .line 611
    .line 612
    goto :goto_a

    .line 613
    :catch_0
    sget-object v0, Lez3;->a:Lra3;

    .line 614
    .line 615
    new-array v1, v13, [Ljava/lang/Object;

    .line 616
    .line 617
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 618
    .line 619
    .line 620
    invoke-static {v1}, Lra3;->g([Ljava/lang/Object;)V

    .line 621
    .line 622
    .line 623
    :goto_a
    sget-object v0, Lt64;->a:Lt64;

    .line 624
    .line 625
    return-object v0
.end method

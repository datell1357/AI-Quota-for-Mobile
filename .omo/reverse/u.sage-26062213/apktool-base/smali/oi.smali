.class public final Loi;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lz41;


# instance fields
.field public final synthetic a:I

.field public final b:La84;

.field public final c:Ler2;


# direct methods
.method public synthetic constructor <init>(La84;Ler2;I)V
    .locals 0

    .line 1
    iput p3, p0, Loi;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Loi;->b:La84;

    .line 4
    .line 5
    iput-object p2, p0, Loi;->c:Ler2;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lv01;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Loi;->a:I

    .line 4
    .line 5
    const/16 v2, 0x1c

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x6

    .line 9
    const/16 v5, 0x2f

    .line 10
    .line 11
    const/16 v6, 0x3f

    .line 12
    .line 13
    const/16 v7, 0x23

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v9, 0x2

    .line 17
    const-string v10, ""

    .line 18
    .line 19
    const/16 v11, 0x2e

    .line 20
    .line 21
    const/4 v12, 0x1

    .line 22
    sget-object v13, Lkm0;->p:Lkm0;

    .line 23
    .line 24
    iget-object v14, v0, Loi;->b:La84;

    .line 25
    .line 26
    iget-object v0, v0, Loi;->c:Ler2;

    .line 27
    .line 28
    const/4 v15, 0x0

    .line 29
    packed-switch v1, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    iget-object v1, v14, La84;->d:Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "Invalid android.resource URI: "

    .line 35
    .line 36
    if-eqz v1, :cond_e

    .line 37
    .line 38
    invoke-static {v1}, Lzs3;->I0(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move-object v1, v15

    .line 46
    :goto_0
    if-eqz v1, :cond_e

    .line 47
    .line 48
    invoke-static {v14}, Lkt4;->M(La84;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3}, Lo70;->p0(Ljava/util/List;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v3, :cond_d

    .line 59
    .line 60
    invoke-static {v3}, Lgt3;->z0(Ljava/lang/String;)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-eqz v3, :cond_d

    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    iget-object v3, v0, Ler2;->a:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_1

    .line 81
    .line 82
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    :goto_1
    new-instance v14, Landroid/util/TypedValue;

    .line 96
    .line 97
    invoke-direct {v14}, Landroid/util/TypedValue;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v2, v14, v12}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 101
    .line 102
    .line 103
    iget-object v14, v14, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 104
    .line 105
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v14

    .line 109
    invoke-static {v14}, Lzs3;->I0(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v16

    .line 113
    if-eqz v16, :cond_2

    .line 114
    .line 115
    :goto_2
    move-object v6, v15

    .line 116
    goto :goto_3

    .line 117
    :cond_2
    invoke-static {v14, v7}, Lzs3;->V0(Ljava/lang/String;C)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-static {v7, v6}, Lzs3;->V0(Ljava/lang/String;C)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-static {v6, v5, v6}, Lzs3;->T0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-static {v5, v11, v10}, Lzs3;->T0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-static {v5}, Lzs3;->I0(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-eqz v6, :cond_3

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_3
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 141
    .line 142
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    sget-object v6, Lcd2;->a:Lca2;

    .line 150
    .line 151
    invoke-virtual {v6, v5}, Lca2;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    check-cast v6, Ljava/lang/String;

    .line 156
    .line 157
    if-nez v6, :cond_4

    .line 158
    .line 159
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-virtual {v6, v5}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    :cond_4
    :goto_3
    const-string v5, "text/xml"

    .line 168
    .line 169
    invoke-static {v6, v5}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-eqz v5, :cond_c

    .line 174
    .line 175
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    const-string v5, "Invalid resource ID: "

    .line 184
    .line 185
    if-eqz v1, :cond_6

    .line 186
    .line 187
    invoke-static {v3, v2}, Lzf5;->H(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    if-eqz v1, :cond_5

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_5
    invoke-static {v2, v5}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v0}, Lp61;->e(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_9

    .line 202
    .line 203
    :cond_6
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    :goto_4
    if-eq v6, v9, :cond_7

    .line 212
    .line 213
    if-eq v6, v12, :cond_7

    .line 214
    .line 215
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    goto :goto_4

    .line 220
    :cond_7
    if-ne v6, v9, :cond_b

    .line 221
    .line 222
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    sget-object v6, Lt73;->a:Ljava/lang/ThreadLocal;

    .line 227
    .line 228
    invoke-virtual {v4, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    if-eqz v1, :cond_a

    .line 233
    .line 234
    :goto_5
    sget-object v2, Lo94;->a:[Landroid/graphics/Bitmap$Config;

    .line 235
    .line 236
    instance-of v2, v1, Landroid/graphics/drawable/VectorDrawable;

    .line 237
    .line 238
    new-instance v15, Lco1;

    .line 239
    .line 240
    if-eqz v2, :cond_9

    .line 241
    .line 242
    sget-object v4, Lno1;->b:Li3;

    .line 243
    .line 244
    invoke-static {v0, v4}, Lk30;->x(Ler2;Li3;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    move-object/from16 v17, v4

    .line 249
    .line 250
    check-cast v17, Landroid/graphics/Bitmap$Config;

    .line 251
    .line 252
    iget-object v4, v0, Ler2;->b:Lln3;

    .line 253
    .line 254
    iget-object v5, v0, Ler2;->c:Lrd3;

    .line 255
    .line 256
    sget-object v6, Llo1;->b:Li3;

    .line 257
    .line 258
    invoke-static {v0, v6}, Lk30;->x(Ler2;Li3;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    move-object/from16 v20, v6

    .line 263
    .line 264
    check-cast v20, Lln3;

    .line 265
    .line 266
    iget-object v0, v0, Ler2;->d:Lcx2;

    .line 267
    .line 268
    sget-object v6, Lcx2;->o:Lcx2;

    .line 269
    .line 270
    if-ne v0, v6, :cond_8

    .line 271
    .line 272
    move/from16 v21, v12

    .line 273
    .line 274
    :goto_6
    move-object/from16 v16, v1

    .line 275
    .line 276
    move-object/from16 v18, v4

    .line 277
    .line 278
    move-object/from16 v19, v5

    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_8
    move/from16 v21, v8

    .line 282
    .line 283
    goto :goto_6

    .line 284
    :goto_7
    invoke-static/range {v16 .. v21}, Lk30;->l(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lln3;Lrd3;Lln3;Z)Landroid/graphics/Bitmap;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 293
    .line 294
    invoke-direct {v3, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 295
    .line 296
    .line 297
    move-object v1, v3

    .line 298
    goto :goto_8

    .line 299
    :cond_9
    move-object/from16 v16, v1

    .line 300
    .line 301
    :goto_8
    invoke-static {v1}, Lht4;->d(Landroid/graphics/drawable/Drawable;)Lao1;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-direct {v15, v0, v2, v13}, Lco1;-><init>(Lao1;ZLkm0;)V

    .line 306
    .line 307
    .line 308
    goto :goto_9

    .line 309
    :cond_a
    invoke-static {v2, v5}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-static {v0}, Lp61;->e(Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    goto :goto_9

    .line 317
    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 318
    .line 319
    const-string v1, "No start tag found."

    .line 320
    .line 321
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    throw v0

    .line 325
    :cond_c
    new-instance v3, Landroid/util/TypedValue;

    .line 326
    .line 327
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v4, v2, v3}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    new-instance v15, Lzp3;

    .line 335
    .line 336
    invoke-static {v3}, Lse0;->E(Ljava/io/InputStream;)Lmr1;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    new-instance v4, Ld23;

    .line 341
    .line 342
    invoke-direct {v4, v3}, Ld23;-><init>(Lyp3;)V

    .line 343
    .line 344
    .line 345
    iget-object v0, v0, Ler2;->f:Lr51;

    .line 346
    .line 347
    new-instance v3, Lp73;

    .line 348
    .line 349
    invoke-direct {v3, v1, v2}, Lp73;-><init>(Ljava/lang/String;I)V

    .line 350
    .line 351
    .line 352
    new-instance v1, Laq3;

    .line 353
    .line 354
    invoke-direct {v1, v4, v0, v3}, Laq3;-><init>(Lfz;Lr51;Lfl4;)V

    .line 355
    .line 356
    .line 357
    invoke-direct {v15, v1, v6, v13}, Lzp3;-><init>(Lpo1;Ljava/lang/String;Lkm0;)V

    .line 358
    .line 359
    .line 360
    goto :goto_9

    .line 361
    :cond_d
    invoke-static {v14, v2}, Lq73;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    goto :goto_9

    .line 365
    :cond_e
    invoke-static {v14, v2}, Lq73;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    :goto_9
    return-object v15

    .line 369
    :pswitch_0
    iget-object v1, v14, La84;->e:Ljava/lang/String;

    .line 370
    .line 371
    if-nez v1, :cond_f

    .line 372
    .line 373
    move-object v1, v10

    .line 374
    :cond_f
    const/16 v5, 0x21

    .line 375
    .line 376
    invoke-static {v1, v5, v8, v4}, Lzs3;->F0(Ljava/lang/CharSequence;CII)I

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    if-eq v4, v3, :cond_12

    .line 381
    .line 382
    sget-object v3, Lbt2;->o:Ljava/lang/String;

    .line 383
    .line 384
    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    invoke-static {v3}, Lqz0;->k(Ljava/lang/String;)Lbt2;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    add-int/2addr v4, v12

    .line 393
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 394
    .line 395
    .line 396
    move-result v5

    .line 397
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-static {v1}, Lqz0;->k(Ljava/lang/String;)Lbt2;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    new-instance v4, Lzp3;

    .line 406
    .line 407
    iget-object v0, v0, Ler2;->f:Lr51;

    .line 408
    .line 409
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    .line 411
    .line 412
    new-instance v5, Lba4;

    .line 413
    .line 414
    const/16 v6, 0x14

    .line 415
    .line 416
    invoke-direct {v5, v6}, Lba4;-><init>(I)V

    .line 417
    .line 418
    .line 419
    invoke-static {v3, v0, v5}, Lai4;->c(Lbt2;Lr51;Lpe1;)Lxh4;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-static {v1, v0, v15, v15, v2}, Lon4;->d(Lbt2;Lr51;Ljava/lang/String;Lk23;I)Lg51;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-virtual {v1}, Lbt2;->b()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-static {v1, v11, v10}, Lzs3;->T0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-static {v1}, Lzs3;->I0(Ljava/lang/CharSequence;)Z

    .line 436
    .line 437
    .line 438
    move-result v2

    .line 439
    if-eqz v2, :cond_10

    .line 440
    .line 441
    goto :goto_a

    .line 442
    :cond_10
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 443
    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 449
    .line 450
    .line 451
    sget-object v2, Lcd2;->a:Lca2;

    .line 452
    .line 453
    invoke-virtual {v2, v1}, Lca2;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    move-object v15, v2

    .line 458
    check-cast v15, Ljava/lang/String;

    .line 459
    .line 460
    if-nez v15, :cond_11

    .line 461
    .line 462
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v15

    .line 470
    :cond_11
    :goto_a
    invoke-direct {v4, v0, v15, v13}, Lzp3;-><init>(Lpo1;Ljava/lang/String;Lkm0;)V

    .line 471
    .line 472
    .line 473
    move-object v15, v4

    .line 474
    goto :goto_b

    .line 475
    :cond_12
    const-string v0, "Invalid jar:file URI: "

    .line 476
    .line 477
    invoke-static {v14, v0}, Lp61;->y(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    :goto_b
    return-object v15

    .line 481
    :pswitch_1
    sget-object v1, Lbt2;->o:Ljava/lang/String;

    .line 482
    .line 483
    invoke-static {v14}, Lkt4;->I(La84;)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    if-eqz v1, :cond_15

    .line 488
    .line 489
    invoke-static {v1}, Lqz0;->k(Ljava/lang/String;)Lbt2;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    new-instance v3, Lzp3;

    .line 494
    .line 495
    iget-object v0, v0, Ler2;->f:Lr51;

    .line 496
    .line 497
    invoke-static {v1, v0, v15, v15, v2}, Lon4;->d(Lbt2;Lr51;Ljava/lang/String;Lk23;I)Lg51;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-virtual {v1}, Lbt2;->b()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    invoke-static {v1, v11, v10}, Lzs3;->T0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-static {v1}, Lzs3;->I0(Ljava/lang/CharSequence;)Z

    .line 510
    .line 511
    .line 512
    move-result v2

    .line 513
    if-eqz v2, :cond_13

    .line 514
    .line 515
    goto :goto_c

    .line 516
    :cond_13
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 517
    .line 518
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 523
    .line 524
    .line 525
    sget-object v2, Lcd2;->a:Lca2;

    .line 526
    .line 527
    invoke-virtual {v2, v1}, Lca2;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    move-object v15, v2

    .line 532
    check-cast v15, Ljava/lang/String;

    .line 533
    .line 534
    if-nez v15, :cond_14

    .line 535
    .line 536
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v15

    .line 544
    :cond_14
    :goto_c
    invoke-direct {v3, v0, v15, v13}, Lzp3;-><init>(Lpo1;Ljava/lang/String;Lkm0;)V

    .line 545
    .line 546
    .line 547
    move-object v15, v3

    .line 548
    goto :goto_d

    .line 549
    :cond_15
    const-string v0, "filePath == null"

    .line 550
    .line 551
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    :goto_d
    return-object v15

    .line 555
    :pswitch_2
    iget-object v1, v14, La84;->a:Ljava/lang/String;

    .line 556
    .line 557
    iget-object v2, v14, La84;->a:Ljava/lang/String;

    .line 558
    .line 559
    const-string v5, ";base64,"

    .line 560
    .line 561
    invoke-static {v1, v5, v8, v8, v4}, Lzs3;->G0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    const-string v5, "invalid data uri: "

    .line 566
    .line 567
    if-eq v1, v3, :cond_37

    .line 568
    .line 569
    const/16 v6, 0x3a

    .line 570
    .line 571
    invoke-static {v2, v6, v8, v4}, Lzs3;->F0(Ljava/lang/CharSequence;CII)I

    .line 572
    .line 573
    .line 574
    move-result v6

    .line 575
    if-eq v6, v3, :cond_36

    .line 576
    .line 577
    add-int/2addr v6, v12

    .line 578
    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v5

    .line 582
    sget-object v6, Lpq;->c:Lmq;

    .line 583
    .line 584
    const/16 v7, 0x8

    .line 585
    .line 586
    add-int/2addr v1, v7

    .line 587
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 588
    .line 589
    .line 590
    move-result v9

    .line 591
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 592
    .line 593
    .line 594
    iget-boolean v10, v6, Lpq;->b:Z

    .line 595
    .line 596
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 597
    .line 598
    .line 599
    move-result v11

    .line 600
    invoke-static {v1, v9, v11}, Lon4;->m(III)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v2, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    sget-object v2, Lk40;->b:Ljava/nio/charset/Charset;

    .line 608
    .line 609
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 614
    .line 615
    .line 616
    array-length v2, v1

    .line 617
    array-length v9, v1

    .line 618
    invoke-static {v8, v2, v9}, Lon4;->m(III)V

    .line 619
    .line 620
    .line 621
    const/16 v9, 0x3d

    .line 622
    .line 623
    const/4 v11, -0x2

    .line 624
    if-nez v2, :cond_16

    .line 625
    .line 626
    move/from16 p1, v4

    .line 627
    .line 628
    move v4, v8

    .line 629
    goto :goto_10

    .line 630
    :cond_16
    if-eq v2, v12, :cond_35

    .line 631
    .line 632
    if-eqz v10, :cond_19

    .line 633
    .line 634
    move v14, v2

    .line 635
    move v13, v8

    .line 636
    :goto_e
    move/from16 p1, v4

    .line 637
    .line 638
    if-ge v13, v2, :cond_1b

    .line 639
    .line 640
    aget-byte v4, v1, v13

    .line 641
    .line 642
    and-int/lit16 v4, v4, 0xff

    .line 643
    .line 644
    sget-object v16, Lqq;->a:[I

    .line 645
    .line 646
    aget v4, v16, v4

    .line 647
    .line 648
    if-gez v4, :cond_18

    .line 649
    .line 650
    if-ne v4, v11, :cond_17

    .line 651
    .line 652
    sub-int v4, v2, v13

    .line 653
    .line 654
    sub-int/2addr v14, v4

    .line 655
    goto :goto_f

    .line 656
    :cond_17
    add-int/lit8 v14, v14, -0x1

    .line 657
    .line 658
    :cond_18
    add-int/lit8 v13, v13, 0x1

    .line 659
    .line 660
    move/from16 v4, p1

    .line 661
    .line 662
    goto :goto_e

    .line 663
    :cond_19
    move/from16 p1, v4

    .line 664
    .line 665
    add-int/lit8 v4, v2, -0x1

    .line 666
    .line 667
    aget-byte v4, v1, v4

    .line 668
    .line 669
    if-ne v4, v9, :cond_1a

    .line 670
    .line 671
    add-int/lit8 v14, v2, -0x1

    .line 672
    .line 673
    add-int/lit8 v4, v2, -0x2

    .line 674
    .line 675
    aget-byte v4, v1, v4

    .line 676
    .line 677
    if-ne v4, v9, :cond_1b

    .line 678
    .line 679
    add-int/lit8 v14, v2, -0x2

    .line 680
    .line 681
    goto :goto_f

    .line 682
    :cond_1a
    move v14, v2

    .line 683
    :cond_1b
    :goto_f
    int-to-long v13, v14

    .line 684
    const-wide/16 v16, 0x6

    .line 685
    .line 686
    mul-long v13, v13, v16

    .line 687
    .line 688
    const-wide/16 v16, 0x8

    .line 689
    .line 690
    div-long v13, v13, v16

    .line 691
    .line 692
    long-to-int v4, v13

    .line 693
    :goto_10
    new-array v13, v4, [B

    .line 694
    .line 695
    iget-boolean v6, v6, Lpq;->a:Z

    .line 696
    .line 697
    if-eqz v6, :cond_1c

    .line 698
    .line 699
    sget-object v6, Lqq;->b:[I

    .line 700
    .line 701
    goto :goto_11

    .line 702
    :cond_1c
    sget-object v6, Lqq;->a:[I

    .line 703
    .line 704
    :goto_11
    const/4 v14, -0x8

    .line 705
    move/from16 v19, v7

    .line 706
    .line 707
    move v15, v8

    .line 708
    move/from16 v18, v15

    .line 709
    .line 710
    move/from16 v17, v12

    .line 711
    .line 712
    move v12, v14

    .line 713
    :goto_12
    const-string v7, ") at index "

    .line 714
    .line 715
    const-string v9, "\'("

    .line 716
    .line 717
    if-ge v8, v2, :cond_2b

    .line 718
    .line 719
    if-ne v12, v14, :cond_1d

    .line 720
    .line 721
    add-int/lit8 v3, v8, 0x3

    .line 722
    .line 723
    if-ge v3, v2, :cond_1d

    .line 724
    .line 725
    add-int/lit8 v22, v8, 0x1

    .line 726
    .line 727
    aget-byte v14, v1, v8

    .line 728
    .line 729
    and-int/lit16 v14, v14, 0xff

    .line 730
    .line 731
    aget v14, v6, v14

    .line 732
    .line 733
    add-int/lit8 v23, v8, 0x2

    .line 734
    .line 735
    aget-byte v11, v1, v22

    .line 736
    .line 737
    and-int/lit16 v11, v11, 0xff

    .line 738
    .line 739
    aget v11, v6, v11

    .line 740
    .line 741
    move-object/from16 v22, v1

    .line 742
    .line 743
    aget-byte v1, v22, v23

    .line 744
    .line 745
    and-int/lit16 v1, v1, 0xff

    .line 746
    .line 747
    aget v1, v6, v1

    .line 748
    .line 749
    add-int/lit8 v23, v8, 0x4

    .line 750
    .line 751
    aget-byte v3, v22, v3

    .line 752
    .line 753
    and-int/lit16 v3, v3, 0xff

    .line 754
    .line 755
    aget v3, v6, v3

    .line 756
    .line 757
    shl-int/lit8 v14, v14, 0x12

    .line 758
    .line 759
    shl-int/lit8 v11, v11, 0xc

    .line 760
    .line 761
    or-int/2addr v11, v14

    .line 762
    shl-int/lit8 v1, v1, 0x6

    .line 763
    .line 764
    or-int/2addr v1, v11

    .line 765
    or-int/2addr v1, v3

    .line 766
    if-ltz v1, :cond_1e

    .line 767
    .line 768
    add-int/lit8 v3, v15, 0x1

    .line 769
    .line 770
    shr-int/lit8 v7, v1, 0x10

    .line 771
    .line 772
    int-to-byte v7, v7

    .line 773
    aput-byte v7, v13, v15

    .line 774
    .line 775
    add-int/lit8 v7, v15, 0x2

    .line 776
    .line 777
    shr-int/lit8 v8, v1, 0x8

    .line 778
    .line 779
    int-to-byte v8, v8

    .line 780
    aput-byte v8, v13, v3

    .line 781
    .line 782
    add-int/lit8 v15, v15, 0x3

    .line 783
    .line 784
    int-to-byte v1, v1

    .line 785
    aput-byte v1, v13, v7

    .line 786
    .line 787
    move-object/from16 v1, v22

    .line 788
    .line 789
    move/from16 v8, v23

    .line 790
    .line 791
    const/4 v3, -0x1

    .line 792
    const/16 v9, 0x3d

    .line 793
    .line 794
    :goto_13
    const/4 v11, -0x2

    .line 795
    const/4 v14, -0x8

    .line 796
    goto :goto_12

    .line 797
    :cond_1d
    move-object/from16 v22, v1

    .line 798
    .line 799
    :cond_1e
    aget-byte v1, v22, v8

    .line 800
    .line 801
    and-int/lit16 v1, v1, 0xff

    .line 802
    .line 803
    aget v3, v6, v1

    .line 804
    .line 805
    if-gez v3, :cond_29

    .line 806
    .line 807
    const/4 v11, -0x2

    .line 808
    if-ne v3, v11, :cond_27

    .line 809
    .line 810
    const/4 v3, -0x8

    .line 811
    if-eq v12, v3, :cond_26

    .line 812
    .line 813
    const/4 v1, -0x6

    .line 814
    if-eq v12, v1, :cond_1f

    .line 815
    .line 816
    const/4 v1, -0x4

    .line 817
    if-eq v12, v1, :cond_21

    .line 818
    .line 819
    if-ne v12, v11, :cond_20

    .line 820
    .line 821
    :cond_1f
    add-int/lit8 v8, v8, 0x1

    .line 822
    .line 823
    goto :goto_17

    .line 824
    :cond_20
    const-string v0, "Unreachable"

    .line 825
    .line 826
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 827
    .line 828
    .line 829
    :goto_14
    const/4 v15, 0x0

    .line 830
    goto/16 :goto_1e

    .line 831
    .line 832
    :cond_21
    add-int/lit8 v8, v8, 0x1

    .line 833
    .line 834
    if-nez v10, :cond_22

    .line 835
    .line 836
    goto :goto_16

    .line 837
    :cond_22
    :goto_15
    if-ge v8, v2, :cond_24

    .line 838
    .line 839
    aget-byte v1, v22, v8

    .line 840
    .line 841
    and-int/lit16 v1, v1, 0xff

    .line 842
    .line 843
    sget-object v3, Lqq;->a:[I

    .line 844
    .line 845
    aget v1, v3, v1

    .line 846
    .line 847
    const/4 v3, -0x1

    .line 848
    if-eq v1, v3, :cond_23

    .line 849
    .line 850
    goto :goto_16

    .line 851
    :cond_23
    add-int/lit8 v8, v8, 0x1

    .line 852
    .line 853
    goto :goto_15

    .line 854
    :cond_24
    :goto_16
    if-eq v8, v2, :cond_25

    .line 855
    .line 856
    aget-byte v1, v22, v8

    .line 857
    .line 858
    const/16 v11, 0x3d

    .line 859
    .line 860
    if-ne v1, v11, :cond_25

    .line 861
    .line 862
    add-int/lit8 v8, v8, 0x1

    .line 863
    .line 864
    goto :goto_17

    .line 865
    :cond_25
    const-string v0, "Missing one pad character at index "

    .line 866
    .line 867
    invoke-static {v8, v0}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 868
    .line 869
    .line 870
    move-result-object v0

    .line 871
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 872
    .line 873
    .line 874
    goto :goto_14

    .line 875
    :goto_17
    move v1, v8

    .line 876
    move/from16 v8, v17

    .line 877
    .line 878
    const/4 v11, -0x2

    .line 879
    goto/16 :goto_19

    .line 880
    .line 881
    :cond_26
    const-string v0, "Redundant pad character at index "

    .line 882
    .line 883
    invoke-static {v8, v0}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v0

    .line 887
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    goto :goto_14

    .line 891
    :cond_27
    const/16 v11, 0x3d

    .line 892
    .line 893
    if-eqz v10, :cond_28

    .line 894
    .line 895
    add-int/lit8 v8, v8, 0x1

    .line 896
    .line 897
    move v9, v11

    .line 898
    move-object/from16 v1, v22

    .line 899
    .line 900
    const/4 v3, -0x1

    .line 901
    goto :goto_13

    .line 902
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 903
    .line 904
    int-to-char v2, v1

    .line 905
    invoke-static/range {v19 .. v19}, Lqj0;->z(I)V

    .line 906
    .line 907
    .line 908
    move/from16 v3, v19

    .line 909
    .line 910
    invoke-static {v1, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v1

    .line 914
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 915
    .line 916
    .line 917
    new-instance v3, Ljava/lang/StringBuilder;

    .line 918
    .line 919
    const-string v4, "Invalid symbol \'"

    .line 920
    .line 921
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 922
    .line 923
    .line 924
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 925
    .line 926
    .line 927
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    .line 929
    .line 930
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    .line 932
    .line 933
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    .line 935
    .line 936
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v1

    .line 943
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    throw v0

    .line 947
    :cond_29
    const/16 v11, 0x3d

    .line 948
    .line 949
    add-int/lit8 v8, v8, 0x1

    .line 950
    .line 951
    shl-int/lit8 v1, v18, 0x6

    .line 952
    .line 953
    or-int v18, v1, v3

    .line 954
    .line 955
    add-int/lit8 v3, v12, 0x6

    .line 956
    .line 957
    if-ltz v3, :cond_2a

    .line 958
    .line 959
    add-int/lit8 v1, v15, 0x1

    .line 960
    .line 961
    ushr-int v7, v18, v3

    .line 962
    .line 963
    int-to-byte v7, v7

    .line 964
    aput-byte v7, v13, v15

    .line 965
    .line 966
    shl-int v3, v17, v3

    .line 967
    .line 968
    add-int/lit8 v3, v3, -0x1

    .line 969
    .line 970
    and-int v18, v18, v3

    .line 971
    .line 972
    add-int/lit8 v12, v12, -0x2

    .line 973
    .line 974
    move v15, v1

    .line 975
    :goto_18
    move v9, v11

    .line 976
    move-object/from16 v1, v22

    .line 977
    .line 978
    const/4 v3, -0x1

    .line 979
    const/4 v11, -0x2

    .line 980
    const/4 v14, -0x8

    .line 981
    const/16 v19, 0x8

    .line 982
    .line 983
    goto/16 :goto_12

    .line 984
    .line 985
    :cond_2a
    move v12, v3

    .line 986
    goto :goto_18

    .line 987
    :cond_2b
    move-object/from16 v22, v1

    .line 988
    .line 989
    move v1, v8

    .line 990
    const/4 v8, 0x0

    .line 991
    :goto_19
    if-eq v12, v11, :cond_34

    .line 992
    .line 993
    const/4 v3, -0x8

    .line 994
    if-eq v12, v3, :cond_2d

    .line 995
    .line 996
    if-eqz v8, :cond_2c

    .line 997
    .line 998
    goto :goto_1a

    .line 999
    :cond_2c
    const-string v0, "The padding option is set to PRESENT, but the input is not properly padded"

    .line 1000
    .line 1001
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    goto/16 :goto_14

    .line 1005
    .line 1006
    :cond_2d
    :goto_1a
    if-nez v18, :cond_33

    .line 1007
    .line 1008
    if-nez v10, :cond_2e

    .line 1009
    .line 1010
    goto :goto_1c

    .line 1011
    :cond_2e
    :goto_1b
    if-ge v1, v2, :cond_30

    .line 1012
    .line 1013
    aget-byte v3, v22, v1

    .line 1014
    .line 1015
    and-int/lit16 v3, v3, 0xff

    .line 1016
    .line 1017
    sget-object v6, Lqq;->a:[I

    .line 1018
    .line 1019
    aget v3, v6, v3

    .line 1020
    .line 1021
    const/4 v6, -0x1

    .line 1022
    if-eq v3, v6, :cond_2f

    .line 1023
    .line 1024
    goto :goto_1c

    .line 1025
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    .line 1026
    .line 1027
    goto :goto_1b

    .line 1028
    :cond_30
    :goto_1c
    if-lt v1, v2, :cond_32

    .line 1029
    .line 1030
    if-ne v15, v4, :cond_31

    .line 1031
    .line 1032
    new-instance v1, Lsy;

    .line 1033
    .line 1034
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v1, v4, v13}, Lsy;->i0(I[B)V

    .line 1038
    .line 1039
    .line 1040
    iget-object v0, v0, Ler2;->f:Lr51;

    .line 1041
    .line 1042
    new-instance v2, Laq3;

    .line 1043
    .line 1044
    const/4 v3, 0x0

    .line 1045
    invoke-direct {v2, v1, v0, v3}, Laq3;-><init>(Lfz;Lr51;Lfl4;)V

    .line 1046
    .line 1047
    .line 1048
    new-instance v15, Lzp3;

    .line 1049
    .line 1050
    sget-object v0, Lkm0;->o:Lkm0;

    .line 1051
    .line 1052
    invoke-direct {v15, v2, v5, v0}, Lzp3;-><init>(Lpo1;Ljava/lang/String;Lkm0;)V

    .line 1053
    .line 1054
    .line 1055
    goto :goto_1e

    .line 1056
    :cond_31
    const/4 v3, 0x0

    .line 1057
    const-string v0, "Check failed."

    .line 1058
    .line 1059
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 1060
    .line 1061
    .line 1062
    :goto_1d
    move-object v15, v3

    .line 1063
    goto :goto_1e

    .line 1064
    :cond_32
    const/4 v3, 0x0

    .line 1065
    aget-byte v0, v22, v1

    .line 1066
    .line 1067
    and-int/lit16 v0, v0, 0xff

    .line 1068
    .line 1069
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1070
    .line 1071
    const-string v4, "Symbol \'"

    .line 1072
    .line 1073
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1074
    .line 1075
    .line 1076
    int-to-char v4, v0

    .line 1077
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    .line 1082
    .line 1083
    const/16 v4, 0x8

    .line 1084
    .line 1085
    invoke-static {v4}, Lqj0;->z(I)V

    .line 1086
    .line 1087
    .line 1088
    invoke-static {v0, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v0

    .line 1092
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    .line 1100
    .line 1101
    add-int/lit8 v1, v1, -0x1

    .line 1102
    .line 1103
    const-string v0, " is prohibited after the pad character"

    .line 1104
    .line 1105
    invoke-static {v1, v0, v2}, Lxw1;->p(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v0

    .line 1109
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 1110
    .line 1111
    .line 1112
    goto :goto_1d

    .line 1113
    :cond_33
    const/4 v3, 0x0

    .line 1114
    const-string v0, "The pad bits must be zeros"

    .line 1115
    .line 1116
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 1117
    .line 1118
    .line 1119
    goto :goto_1d

    .line 1120
    :cond_34
    const/4 v3, 0x0

    .line 1121
    const-string v0, "The last unit of input does not have enough bits"

    .line 1122
    .line 1123
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 1124
    .line 1125
    .line 1126
    goto :goto_1d

    .line 1127
    :cond_35
    move-object v3, v15

    .line 1128
    const-string v0, "Input should have at least 2 symbols for Base64 decoding, startIndex: 0, endIndex: "

    .line 1129
    .line 1130
    invoke-static {v2, v0}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v0

    .line 1134
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 1135
    .line 1136
    .line 1137
    goto :goto_1e

    .line 1138
    :cond_36
    move-object v3, v15

    .line 1139
    invoke-static {v14, v5}, Lp61;->y(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1140
    .line 1141
    .line 1142
    goto :goto_1e

    .line 1143
    :cond_37
    move-object v3, v15

    .line 1144
    invoke-static {v14, v5}, Lp61;->y(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1145
    .line 1146
    .line 1147
    :goto_1e
    return-object v15

    .line 1148
    :pswitch_3
    move/from16 v17, v12

    .line 1149
    .line 1150
    move-object v3, v15

    .line 1151
    iget-object v1, v14, La84;->a:Ljava/lang/String;

    .line 1152
    .line 1153
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v1

    .line 1157
    iget-object v2, v0, Ler2;->a:Landroid/content/Context;

    .line 1158
    .line 1159
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v2

    .line 1163
    iget-object v4, v14, La84;->d:Ljava/lang/String;

    .line 1164
    .line 1165
    const-string v5, "com.android.contacts"

    .line 1166
    .line 1167
    invoke-static {v4, v5}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1168
    .line 1169
    .line 1170
    move-result v5

    .line 1171
    const-string v6, "r"

    .line 1172
    .line 1173
    const-string v7, "\'."

    .line 1174
    .line 1175
    if-eqz v5, :cond_39

    .line 1176
    .line 1177
    invoke-static {v14}, Lkt4;->M(La84;)Ljava/util/List;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v5

    .line 1181
    invoke-static {v5}, Lo70;->p0(Ljava/util/List;)Ljava/lang/Object;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v5

    .line 1185
    const-string v8, "display_photo"

    .line 1186
    .line 1187
    invoke-static {v5, v8}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1188
    .line 1189
    .line 1190
    move-result v5

    .line 1191
    if-eqz v5, :cond_39

    .line 1192
    .line 1193
    invoke-virtual {v2, v1, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v4

    .line 1197
    if-eqz v4, :cond_38

    .line 1198
    .line 1199
    goto/16 :goto_24

    .line 1200
    .line 1201
    :cond_38
    const-string v0, "Unable to find a contact photo associated with \'"

    .line 1202
    .line 1203
    invoke-static {v1, v7, v0}, Lk21;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1204
    .line 1205
    .line 1206
    :goto_1f
    move-object v15, v3

    .line 1207
    goto/16 :goto_25

    .line 1208
    .line 1209
    :cond_39
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1210
    .line 1211
    const/16 v8, 0x1d

    .line 1212
    .line 1213
    if-lt v5, v8, :cond_3f

    .line 1214
    .line 1215
    const-string v5, "media"

    .line 1216
    .line 1217
    invoke-static {v4, v5}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1218
    .line 1219
    .line 1220
    move-result v4

    .line 1221
    if-nez v4, :cond_3a

    .line 1222
    .line 1223
    goto/16 :goto_23

    .line 1224
    .line 1225
    :cond_3a
    invoke-static {v14}, Lkt4;->M(La84;)Ljava/util/List;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v4

    .line 1229
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1230
    .line 1231
    .line 1232
    move-result v5

    .line 1233
    const/4 v8, 0x3

    .line 1234
    if-lt v5, v8, :cond_3f

    .line 1235
    .line 1236
    add-int/lit8 v8, v5, -0x3

    .line 1237
    .line 1238
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v8

    .line 1242
    const-string v10, "audio"

    .line 1243
    .line 1244
    invoke-static {v8, v10}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1245
    .line 1246
    .line 1247
    move-result v8

    .line 1248
    if-eqz v8, :cond_3f

    .line 1249
    .line 1250
    sub-int/2addr v5, v9

    .line 1251
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v4

    .line 1255
    const-string v5, "albums"

    .line 1256
    .line 1257
    invoke-static {v4, v5}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1258
    .line 1259
    .line 1260
    move-result v4

    .line 1261
    if-eqz v4, :cond_3f

    .line 1262
    .line 1263
    iget-object v4, v0, Ler2;->b:Lln3;

    .line 1264
    .line 1265
    iget-object v5, v4, Lln3;->a:Lcu0;

    .line 1266
    .line 1267
    instance-of v6, v5, Lau0;

    .line 1268
    .line 1269
    if-eqz v6, :cond_3b

    .line 1270
    .line 1271
    check-cast v5, Lau0;

    .line 1272
    .line 1273
    goto :goto_20

    .line 1274
    :cond_3b
    move-object v5, v3

    .line 1275
    :goto_20
    if-eqz v5, :cond_3d

    .line 1276
    .line 1277
    iget v5, v5, Lau0;->a:I

    .line 1278
    .line 1279
    iget-object v4, v4, Lln3;->b:Lcu0;

    .line 1280
    .line 1281
    instance-of v6, v4, Lau0;

    .line 1282
    .line 1283
    if-eqz v6, :cond_3c

    .line 1284
    .line 1285
    check-cast v4, Lau0;

    .line 1286
    .line 1287
    goto :goto_21

    .line 1288
    :cond_3c
    move-object v4, v3

    .line 1289
    :goto_21
    if-eqz v4, :cond_3d

    .line 1290
    .line 1291
    iget v4, v4, Lau0;->a:I

    .line 1292
    .line 1293
    new-instance v6, Landroid/os/Bundle;

    .line 1294
    .line 1295
    move/from16 v8, v17

    .line 1296
    .line 1297
    invoke-direct {v6, v8}, Landroid/os/Bundle;-><init>(I)V

    .line 1298
    .line 1299
    .line 1300
    new-instance v8, Landroid/graphics/Point;

    .line 1301
    .line 1302
    invoke-direct {v8, v5, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 1303
    .line 1304
    .line 1305
    const-string v4, "android.content.extra.SIZE"

    .line 1306
    .line 1307
    invoke-virtual {v6, v4, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1308
    .line 1309
    .line 1310
    goto :goto_22

    .line 1311
    :cond_3d
    move-object v6, v3

    .line 1312
    :goto_22
    invoke-static {v2, v1, v6}, Lrg0;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v4

    .line 1316
    if-eqz v4, :cond_3e

    .line 1317
    .line 1318
    goto :goto_24

    .line 1319
    :cond_3e
    const-string v0, "Unable to find a music thumbnail associated with \'"

    .line 1320
    .line 1321
    invoke-static {v1, v7, v0}, Lk21;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1322
    .line 1323
    .line 1324
    goto :goto_1f

    .line 1325
    :cond_3f
    :goto_23
    invoke-virtual {v2, v1, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v4

    .line 1329
    if-eqz v4, :cond_40

    .line 1330
    .line 1331
    :goto_24
    new-instance v15, Lzp3;

    .line 1332
    .line 1333
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v3

    .line 1337
    invoke-static {v3}, Lse0;->E(Ljava/io/InputStream;)Lmr1;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v3

    .line 1341
    new-instance v5, Ld23;

    .line 1342
    .line 1343
    invoke-direct {v5, v3}, Ld23;-><init>(Lyp3;)V

    .line 1344
    .line 1345
    .line 1346
    iget-object v0, v0, Ler2;->f:Lr51;

    .line 1347
    .line 1348
    new-instance v3, Lig0;

    .line 1349
    .line 1350
    invoke-direct {v3, v4}, Lig0;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    .line 1351
    .line 1352
    .line 1353
    new-instance v4, Laq3;

    .line 1354
    .line 1355
    invoke-direct {v4, v5, v0, v3}, Laq3;-><init>(Lfz;Lr51;Lfl4;)V

    .line 1356
    .line 1357
    .line 1358
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v0

    .line 1362
    invoke-direct {v15, v4, v0, v13}, Lzp3;-><init>(Lpo1;Ljava/lang/String;Lkm0;)V

    .line 1363
    .line 1364
    .line 1365
    goto :goto_25

    .line 1366
    :cond_40
    const-string v0, "Unable to open \'"

    .line 1367
    .line 1368
    invoke-static {v1, v7, v0}, Lk21;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1369
    .line 1370
    .line 1371
    goto/16 :goto_1f

    .line 1372
    .line 1373
    :goto_25
    return-object v15

    .line 1374
    :pswitch_4
    move-object v3, v15

    .line 1375
    invoke-static {v14}, Lkt4;->M(La84;)Ljava/util/List;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v1

    .line 1379
    invoke-static {v1}, Lo70;->f0(Ljava/util/List;)Ljava/util/List;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v14

    .line 1383
    const/16 v18, 0x0

    .line 1384
    .line 1385
    const/16 v19, 0x3e

    .line 1386
    .line 1387
    const-string v15, "/"

    .line 1388
    .line 1389
    const/16 v16, 0x0

    .line 1390
    .line 1391
    const/16 v17, 0x0

    .line 1392
    .line 1393
    invoke-static/range {v14 .. v19}, Lo70;->n0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lpe1;I)Ljava/lang/String;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v1

    .line 1397
    new-instance v2, Lzp3;

    .line 1398
    .line 1399
    iget-object v4, v0, Ler2;->a:Landroid/content/Context;

    .line 1400
    .line 1401
    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v4

    .line 1405
    invoke-virtual {v4, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v4

    .line 1409
    invoke-static {v4}, Lse0;->E(Ljava/io/InputStream;)Lmr1;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v4

    .line 1413
    new-instance v8, Ld23;

    .line 1414
    .line 1415
    invoke-direct {v8, v4}, Ld23;-><init>(Lyp3;)V

    .line 1416
    .line 1417
    .line 1418
    iget-object v0, v0, Ler2;->f:Lr51;

    .line 1419
    .line 1420
    new-instance v4, Lmi;

    .line 1421
    .line 1422
    invoke-direct {v4, v1}, Lmi;-><init>(Ljava/lang/String;)V

    .line 1423
    .line 1424
    .line 1425
    new-instance v9, Laq3;

    .line 1426
    .line 1427
    invoke-direct {v9, v8, v0, v4}, Laq3;-><init>(Lfz;Lr51;Lfl4;)V

    .line 1428
    .line 1429
    .line 1430
    invoke-static {v1}, Lzs3;->I0(Ljava/lang/CharSequence;)Z

    .line 1431
    .line 1432
    .line 1433
    move-result v0

    .line 1434
    if-eqz v0, :cond_41

    .line 1435
    .line 1436
    :goto_26
    move-object v15, v3

    .line 1437
    goto :goto_27

    .line 1438
    :cond_41
    invoke-static {v1, v7}, Lzs3;->V0(Ljava/lang/String;C)Ljava/lang/String;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v0

    .line 1442
    invoke-static {v0, v6}, Lzs3;->V0(Ljava/lang/String;C)Ljava/lang/String;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v0

    .line 1446
    invoke-static {v0, v5, v0}, Lzs3;->T0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v0

    .line 1450
    invoke-static {v0, v11, v10}, Lzs3;->T0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v0

    .line 1454
    invoke-static {v0}, Lzs3;->I0(Ljava/lang/CharSequence;)Z

    .line 1455
    .line 1456
    .line 1457
    move-result v1

    .line 1458
    if-eqz v1, :cond_42

    .line 1459
    .line 1460
    goto :goto_26

    .line 1461
    :cond_42
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1462
    .line 1463
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 1464
    .line 1465
    .line 1466
    move-result-object v0

    .line 1467
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1468
    .line 1469
    .line 1470
    sget-object v1, Lcd2;->a:Lca2;

    .line 1471
    .line 1472
    invoke-virtual {v1, v0}, Lca2;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v1

    .line 1476
    move-object v15, v1

    .line 1477
    check-cast v15, Ljava/lang/String;

    .line 1478
    .line 1479
    if-nez v15, :cond_43

    .line 1480
    .line 1481
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v1

    .line 1485
    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v15

    .line 1489
    :cond_43
    :goto_27
    invoke-direct {v2, v9, v15, v13}, Lzp3;-><init>(Lpo1;Ljava/lang/String;Lkm0;)V

    .line 1490
    .line 1491
    .line 1492
    return-object v2

    .line 1493
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

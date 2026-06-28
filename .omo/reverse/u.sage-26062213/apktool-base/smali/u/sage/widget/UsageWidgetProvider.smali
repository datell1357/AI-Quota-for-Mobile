.class public final Lu/sage/widget/UsageWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final b:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final a:Lbh0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lu/sage/widget/UsageWidgetProvider;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lk30;->f()Lbu3;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lzu0;->a:Lzp0;

    .line 9
    .line 10
    sget-object v1, Llp0;->p:Llp0;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lca;->B(Lfi0;Lhi0;)Lhi0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Ldm0;->c(Lhi0;)Lbh0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lu/sage/widget/UsageWidgetProvider;->a:Lbh0;

    .line 21
    .line 22
    return-void
.end method

.method public static final a(Lu/sage/widget/UsageWidgetProvider;Landroid/content/Context;ILy84;ZLd84;FFZ)Landroid/widget/RemoteViews;
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move/from16 v8, p7

    .line 8
    .line 9
    iget v3, v2, Ly84;->o:I

    .line 10
    .line 11
    const/high16 v4, 0xc000000

    .line 12
    .line 13
    if-eqz p8, :cond_0

    .line 14
    .line 15
    new-instance v5, Landroid/widget/RemoteViews;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    const v7, 0x7f0c0030

    .line 22
    .line 23
    .line 24
    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    const v6, 0x7f0900f7

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, v6, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2}, Lu/sage/widget/UsageWidgetProvider;->b(Landroid/content/Context;Ly84;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v0, v1, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const v1, 0x7f0900f8

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 45
    .line 46
    .line 47
    return-object v5

    .line 48
    :cond_0
    new-instance v9, Landroid/widget/RemoteViews;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    const v6, 0x7f0c0031

    .line 55
    .line 56
    .line 57
    invoke-direct {v9, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    sget-object v5, Lez3;->a:Lra3;

    .line 61
    .line 62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    new-array v7, v6, [Ljava/lang/Object;

    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {v7}, Lra3;->c([Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    const v5, 0x7f0900f3

    .line 79
    .line 80
    .line 81
    const v7, 0x7f0900f1

    .line 82
    .line 83
    .line 84
    const/16 v10, 0x8

    .line 85
    .line 86
    if-eqz p4, :cond_1

    .line 87
    .line 88
    invoke-virtual {v9, v7, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v9, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v9, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v9, v5, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 99
    .line 100
    .line 101
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    new-instance v7, Landroid/content/Intent;

    .line 113
    .line 114
    const-class v11, Lu/sage/widget/UsageWidgetProvider;

    .line 115
    .line 116
    invoke-direct {v7, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .line 118
    .line 119
    const-string v11, "u.sage.widget.action.REFRESH"

    .line 120
    .line 121
    invoke-virtual {v7, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    const-string v11, "u.sage.widget.extra.APPWIDGET_ID"

    .line 125
    .line 126
    invoke-virtual {v7, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    .line 128
    .line 129
    const-string v11, "u.sage.widget.extra.REFRESH_NONCE"

    .line 130
    .line 131
    invoke-virtual {v7, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    invoke-static {v0, v1, v7, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    const v7, 0x7f0900f2

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9, v7, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 142
    .line 143
    .line 144
    :goto_0
    iget-object v5, v2, Ly84;->n:Ljava/lang/String;

    .line 145
    .line 146
    const v7, 0x7f0900f5

    .line 147
    .line 148
    .line 149
    invoke-virtual {v9, v7, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    iget v7, v7, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 171
    .line 172
    mul-float v11, v8, v3

    .line 173
    .line 174
    const/high16 v12, 0x42b40000    # 90.0f

    .line 175
    .line 176
    mul-float/2addr v12, v3

    .line 177
    new-instance v13, Landroid/graphics/Paint;

    .line 178
    .line 179
    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 180
    .line 181
    .line 182
    const/4 v14, 0x1

    .line 183
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 184
    .line 185
    .line 186
    if-eqz p5, :cond_2

    .line 187
    .line 188
    invoke-virtual/range {p5 .. p5}, Ld84;->b()J

    .line 189
    .line 190
    .line 191
    move-result-wide v15

    .line 192
    const-wide/16 v17, 0x0

    .line 193
    .line 194
    cmp-long v15, v15, v17

    .line 195
    .line 196
    if-lez v15, :cond_2

    .line 197
    .line 198
    invoke-virtual/range {p5 .. p5}, Ld84;->b()J

    .line 199
    .line 200
    .line 201
    move-result-wide v14

    .line 202
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    new-instance v10, Ljava/util/Date;

    .line 207
    .line 208
    invoke-direct {v10, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    const v10, 0x7f100492

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v10

    .line 222
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    new-instance v14, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v10, " "

    .line 234
    .line 235
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    goto :goto_1

    .line 246
    :cond_2
    const-string v4, ""

    .line 247
    .line 248
    :goto_1
    const/high16 v10, 0x41000000    # 8.0f

    .line 249
    .line 250
    mul-float/2addr v10, v3

    .line 251
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    const/high16 v14, 0x41400000    # 12.0f

    .line 256
    .line 257
    if-lez v3, :cond_3

    .line 258
    .line 259
    mul-float v3, v7, v14

    .line 260
    .line 261
    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    goto :goto_2

    .line 269
    :cond_3
    const/4 v3, 0x0

    .line 270
    :goto_2
    const/high16 v15, 0x41800000    # 16.0f

    .line 271
    .line 272
    move/from16 p4, v14

    .line 273
    .line 274
    mul-float v14, v7, v15

    .line 275
    .line 276
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 280
    .line 281
    .line 282
    move-result v17

    .line 283
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 284
    .line 285
    .line 286
    move-result v18

    .line 287
    if-lez v18, :cond_4

    .line 288
    .line 289
    add-float v17, v12, v17

    .line 290
    .line 291
    add-float v17, v17, v10

    .line 292
    .line 293
    add-float v17, v17, v3

    .line 294
    .line 295
    cmpg-float v17, v17, v11

    .line 296
    .line 297
    if-gtz v17, :cond_4

    .line 298
    .line 299
    const/16 v17, 0x1

    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_4
    move/from16 v17, v6

    .line 303
    .line 304
    :goto_3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 305
    .line 306
    const/16 v15, 0x1f

    .line 307
    .line 308
    if-lt v6, v15, :cond_9

    .line 309
    .line 310
    if-nez v17, :cond_7

    .line 311
    .line 312
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 313
    .line 314
    .line 315
    move-result v19

    .line 316
    if-lez v19, :cond_7

    .line 317
    .line 318
    const/high16 v19, 0x3f000000    # 0.5f

    .line 319
    .line 320
    mul-float v6, v7, p4

    .line 321
    .line 322
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 326
    .line 327
    .line 328
    move-result v6

    .line 329
    add-float/2addr v6, v12

    .line 330
    add-float/2addr v6, v10

    .line 331
    add-float/2addr v6, v3

    .line 332
    cmpg-float v6, v6, v11

    .line 333
    .line 334
    if-gtz v6, :cond_8

    .line 335
    .line 336
    sub-float v6, v11, v12

    .line 337
    .line 338
    sub-float/2addr v6, v10

    .line 339
    sub-float/2addr v6, v3

    .line 340
    const/high16 v3, 0x41800000    # 16.0f

    .line 341
    .line 342
    :cond_5
    cmpl-float v10, v3, p4

    .line 343
    .line 344
    if-lez v10, :cond_6

    .line 345
    .line 346
    sub-float v3, v3, v19

    .line 347
    .line 348
    mul-float v10, v3, v7

    .line 349
    .line 350
    invoke-virtual {v13, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 354
    .line 355
    .line 356
    move-result v10

    .line 357
    cmpg-float v10, v10, v6

    .line 358
    .line 359
    if-gtz v10, :cond_5

    .line 360
    .line 361
    :cond_6
    const/16 v17, 0x1

    .line 362
    .line 363
    goto :goto_4

    .line 364
    :cond_7
    const/high16 v19, 0x3f000000    # 0.5f

    .line 365
    .line 366
    :cond_8
    const/high16 v3, 0x41800000    # 16.0f

    .line 367
    .line 368
    :goto_4
    if-nez v17, :cond_a

    .line 369
    .line 370
    sub-float/2addr v11, v12

    .line 371
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 372
    .line 373
    .line 374
    const/high16 v3, 0x41800000    # 16.0f

    .line 375
    .line 376
    :goto_5
    cmpl-float v6, v3, p4

    .line 377
    .line 378
    if-lez v6, :cond_a

    .line 379
    .line 380
    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 381
    .line 382
    .line 383
    move-result v6

    .line 384
    cmpl-float v6, v6, v11

    .line 385
    .line 386
    if-lez v6, :cond_a

    .line 387
    .line 388
    sub-float v3, v3, v19

    .line 389
    .line 390
    mul-float v6, v3, v7

    .line 391
    .line 392
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 393
    .line 394
    .line 395
    goto :goto_5

    .line 396
    :cond_9
    const/high16 v3, 0x41800000    # 16.0f

    .line 397
    .line 398
    :cond_a
    const v6, 0x7f0900f6

    .line 399
    .line 400
    .line 401
    invoke-virtual {v9, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 402
    .line 403
    .line 404
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 405
    .line 406
    if-lt v5, v15, :cond_b

    .line 407
    .line 408
    const/4 v7, 0x2

    .line 409
    invoke-virtual {v9, v6, v7, v3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 410
    .line 411
    .line 412
    goto :goto_6

    .line 413
    :cond_b
    const-string v3, "setTextSize"

    .line 414
    .line 415
    const/high16 v7, 0x41800000    # 16.0f

    .line 416
    .line 417
    invoke-virtual {v9, v6, v3, v7}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 418
    .line 419
    .line 420
    :goto_6
    const v3, 0x7f0900df

    .line 421
    .line 422
    .line 423
    if-eqz v17, :cond_c

    .line 424
    .line 425
    invoke-virtual {v9, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 426
    .line 427
    .line 428
    const/4 v4, 0x0

    .line 429
    invoke-virtual {v9, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 430
    .line 431
    .line 432
    goto :goto_7

    .line 433
    :cond_c
    const/4 v4, 0x0

    .line 434
    const/16 v6, 0x8

    .line 435
    .line 436
    invoke-virtual {v9, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 437
    .line 438
    .line 439
    :goto_7
    sget-object v3, Lez3;->a:Lra3;

    .line 440
    .line 441
    new-array v6, v4, [Ljava/lang/Object;

    .line 442
    .line 443
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 444
    .line 445
    .line 446
    invoke-static {v6}, Lra3;->c([Ljava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    invoke-static {v0, v2}, Lu/sage/widget/UsageWidgetProvider;->b(Landroid/content/Context;Ly84;)Landroid/content/Intent;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    const/high16 v6, 0xc000000

    .line 454
    .line 455
    invoke-static {v0, v1, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    const v6, 0x7f0900f4

    .line 460
    .line 461
    .line 462
    invoke-virtual {v9, v6, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 463
    .line 464
    .line 465
    invoke-static {v0, v2}, Lu/sage/widget/UsageWidgetProvider;->b(Landroid/content/Context;Ly84;)Landroid/content/Intent;

    .line 466
    .line 467
    .line 468
    move-result-object v3

    .line 469
    neg-int v6, v1

    .line 470
    const/high16 v7, 0xa000000

    .line 471
    .line 472
    invoke-static {v0, v6, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    const v6, 0x7f0900e4

    .line 477
    .line 478
    .line 479
    invoke-virtual {v9, v6, v3}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 480
    .line 481
    .line 482
    if-eqz p5, :cond_d

    .line 483
    .line 484
    invoke-virtual/range {p5 .. p5}, Ld84;->c()Ljava/util/List;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    if-eqz v3, :cond_d

    .line 489
    .line 490
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 491
    .line 492
    .line 493
    move-result v3

    .line 494
    :goto_8
    move/from16 v7, p6

    .line 495
    .line 496
    goto :goto_9

    .line 497
    :cond_d
    move v3, v4

    .line 498
    goto :goto_8

    .line 499
    :goto_9
    float-to-int v7, v7

    .line 500
    if-lt v5, v15, :cond_10

    .line 501
    .line 502
    invoke-static {}, Lyv3;->f()Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    .line 503
    .line 504
    .line 505
    move-result-object v10

    .line 506
    if-eqz p5, :cond_f

    .line 507
    .line 508
    invoke-virtual/range {p5 .. p5}, Ld84;->c()Ljava/util/List;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    if-eqz v1, :cond_f

    .line 513
    .line 514
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 515
    .line 516
    .line 517
    move-result-object v11

    .line 518
    move v12, v4

    .line 519
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 520
    .line 521
    .line 522
    move-result v1

    .line 523
    if-eqz v1, :cond_f

    .line 524
    .line 525
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    add-int/lit8 v13, v12, 0x1

    .line 530
    .line 531
    if-ltz v12, :cond_e

    .line 532
    .line 533
    check-cast v1, Lp84;

    .line 534
    .line 535
    float-to-int v4, v8

    .line 536
    move v5, v3

    .line 537
    move v3, v7

    .line 538
    invoke-virtual/range {p5 .. p5}, Ld84;->b()J

    .line 539
    .line 540
    .line 541
    move-result-wide v6

    .line 542
    move-object/from16 v20, v2

    .line 543
    .line 544
    move-object v2, v1

    .line 545
    move-object/from16 v1, v20

    .line 546
    .line 547
    invoke-static/range {v0 .. v7}, Lc75;->m(Landroid/content/Context;Ly84;Lp84;IIIJ)Landroid/widget/RemoteViews;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    int-to-long v6, v12

    .line 552
    invoke-static {v10, v6, v7, v2}, Lyv3;->k(Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;JLandroid/widget/RemoteViews;)V

    .line 553
    .line 554
    .line 555
    move-object/from16 v2, p3

    .line 556
    .line 557
    move v7, v3

    .line 558
    move v3, v5

    .line 559
    move v12, v13

    .line 560
    goto :goto_a

    .line 561
    :cond_e
    invoke-static {}, Ltv4;->S()V

    .line 562
    .line 563
    .line 564
    const/4 v0, 0x0

    .line 565
    throw v0

    .line 566
    :cond_f
    invoke-static {v10}, Lyv3;->j(Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;)V

    .line 567
    .line 568
    .line 569
    invoke-static {v10}, Lyv3;->g(Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;)Landroid/widget/RemoteViews$RemoteCollectionItems;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    invoke-static {v9, v0}, Lyv3;->m(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$RemoteCollectionItems;)V

    .line 574
    .line 575
    .line 576
    return-object v9

    .line 577
    :cond_10
    move v3, v7

    .line 578
    new-instance v2, Landroid/content/Intent;

    .line 579
    .line 580
    const-class v4, Lu/sage/widget/UsageWidgetRemoteViewsService;

    .line 581
    .line 582
    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 583
    .line 584
    .line 585
    const-string v0, "appWidgetId"

    .line 586
    .line 587
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 588
    .line 589
    .line 590
    const-string v0, "u.sage.widget.extra.SERVICE_TYPE"

    .line 591
    .line 592
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    .line 598
    .line 599
    const-string v0, "u.sage.widget.extra.WIDGET_HEIGHT"

    .line 600
    .line 601
    int-to-float v1, v3

    .line 602
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 603
    .line 604
    .line 605
    const-string v0, "u.sage.widget.extra.WIDGET_WIDTH"

    .line 606
    .line 607
    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 608
    .line 609
    .line 610
    const/4 v0, 0x1

    .line 611
    invoke-virtual {v2, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    .line 616
    .line 617
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    const-string v0, "&height="

    .line 624
    .line 625
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    const-string v0, "&wide="

    .line 632
    .line 633
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 648
    .line 649
    .line 650
    invoke-virtual {v9, v6, v2}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 651
    .line 652
    .line 653
    return-object v9
.end method

.method public static b(Landroid/content/Context;Ly84;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lu/sage/MainActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const/high16 p0, 0x34000000

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_4

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    if-eq p0, p1, :cond_3

    .line 21
    .line 22
    const/4 p1, 0x2

    .line 23
    if-eq p0, p1, :cond_2

    .line 24
    .line 25
    const/4 p1, 0x3

    .line 26
    if-eq p0, p1, :cond_1

    .line 27
    .line 28
    const/4 p1, 0x4

    .line 29
    if-ne p0, p1, :cond_0

    .line 30
    .line 31
    sget-object p0, Lre3;->c:Lre3;

    .line 32
    .line 33
    iget-object p0, p0, Lnq0;->a:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Ljava/lang/String;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Lp61;->x()V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    return-object p0

    .line 43
    :cond_1
    sget-object p0, Lqe3;->c:Lqe3;

    .line 44
    .line 45
    iget-object p0, p0, Lnq0;->a:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p0, Ljava/lang/String;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    sget-object p0, Loe3;->c:Loe3;

    .line 51
    .line 52
    iget-object p0, p0, Lnq0;->a:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p0, Ljava/lang/String;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    sget-object p0, Lve3;->c:Lve3;

    .line 58
    .line 59
    iget-object p0, p0, Lnq0;->a:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p0, Ljava/lang/String;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    sget-object p0, Lpe3;->c:Lpe3;

    .line 65
    .line 66
    iget-object p0, p0, Lnq0;->a:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p0, Ljava/lang/String;

    .line 69
    .line 70
    :goto_0
    const-string p1, "extra_nav_route"

    .line 71
    .line 72
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    const-string p0, "extra_source"

    .line 76
    .line 77
    const-string p1, "widget"

    .line 78
    .line 79
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    return-object v0
.end method


# virtual methods
.method public final c(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 15

    .line 1
    move-object/from16 v4, p1

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    move/from16 v1, p3

    .line 6
    .line 7
    sget-object v0, Lu/sage/widget/UsageWidgetProvider;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    sget-object v0, Lez3;->a:Lra3;

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    new-array v6, v5, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {v6}, Lra3;->c([Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p2 .. p3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    const-string v0, "appWidgetMinHeight"

    .line 36
    .line 37
    const/16 v6, 0x6e

    .line 38
    .line 39
    invoke-virtual {v7, v0, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    const-string v0, "appWidgetMinWidth"

    .line 44
    .line 45
    invoke-virtual {v7, v0, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v11

    .line 49
    invoke-static {v4, v1}, Lc75;->G(Landroid/content/Context;I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/high16 v6, 0xc000000

    .line 54
    .line 55
    const-string v9, "appWidgetId"

    .line 56
    .line 57
    const-class v12, Lu/sage/widget/UsageWidgetConfigActivity;

    .line 58
    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    new-instance p0, Landroid/widget/RemoteViews;

    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const v2, 0x7f0c002d

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Landroid/content/Intent;

    .line 74
    .line 75
    invoke-direct {v0, v4, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    invoke-static {v4, v1, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const v2, 0x7f0900f0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8, v1, p0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_0
    :try_start_0
    invoke-static {v0}, Ly84;->valueOf(Ljava/lang/String;)Ly84;

    .line 96
    .line 97
    .line 98
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v13

    .line 103
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    const-class v14, Lfn3;

    .line 107
    .line 108
    invoke-static {v13, v14}, Lgg4;->w(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v13

    .line 112
    check-cast v13, Lfn3;

    .line 113
    .line 114
    check-cast v13, Lvl0;

    .line 115
    .line 116
    iget-object v13, v13, Lvl0;->d:Ll03;

    .line 117
    .line 118
    invoke-interface {v13}, Lm03;->get()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v13

    .line 122
    check-cast v13, Lri3;

    .line 123
    .line 124
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    iget-object v13, v13, Lri3;->b:Lwr3;

    .line 131
    .line 132
    invoke-virtual {v13}, Lwr3;->getValue()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    check-cast v13, Ljava/util/Map;

    .line 137
    .line 138
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v13

    .line 142
    check-cast v13, Ljava/lang/Boolean;

    .line 143
    .line 144
    if-eqz v13, :cond_1

    .line 145
    .line 146
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 147
    .line 148
    .line 149
    move-result v13

    .line 150
    goto :goto_0

    .line 151
    :cond_1
    const/4 v13, 0x1

    .line 152
    :goto_0
    if-nez v13, :cond_2

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    new-array p0, v5, [Ljava/lang/Object;

    .line 158
    .line 159
    invoke-static {p0}, Lra3;->c([Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    new-instance p0, Landroid/widget/RemoteViews;

    .line 163
    .line 164
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    const v3, 0x7f0c002f

    .line 169
    .line 170
    .line 171
    invoke-direct {p0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 172
    .line 173
    .line 174
    const v2, 0x7f0900fa

    .line 175
    .line 176
    .line 177
    iget v3, v0, Ly84;->o:I

    .line 178
    .line 179
    invoke-virtual {p0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 180
    .line 181
    .line 182
    iget-object v0, v0, Ly84;->n:Ljava/lang/String;

    .line 183
    .line 184
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    const v2, 0x7f100491

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    const v2, 0x7f0900fc

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    new-instance v0, Landroid/content/Intent;

    .line 202
    .line 203
    invoke-direct {v0, v4, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    .line 208
    .line 209
    invoke-static {v4, v1, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    const v2, 0x7f0900fb

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v8, v1, p0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :cond_2
    invoke-static {v4, v1}, Lc75;->K(Landroid/content/Context;I)Z

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    new-array v5, v5, [Ljava/lang/Object;

    .line 235
    .line 236
    invoke-static {v5}, Lra3;->c([Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    move-object v5, v0

    .line 240
    new-instance v0, Lb94;

    .line 241
    .line 242
    const/4 v12, 0x0

    .line 243
    move-object v9, p0

    .line 244
    invoke-direct/range {v0 .. v12}, Lb94;-><init>(IJLandroid/content/Context;Ly84;ZLandroid/os/Bundle;Landroid/appwidget/AppWidgetManager;Lu/sage/widget/UsageWidgetProvider;IILdh0;)V

    .line 245
    .line 246
    .line 247
    const/4 v1, 0x3

    .line 248
    iget-object p0, p0, Lu/sage/widget/UsageWidgetProvider;->a:Lbh0;

    .line 249
    .line 250
    const/4 v2, 0x0

    .line 251
    invoke-static {p0, v2, v2, v0, v1}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 252
    .line 253
    .line 254
    :catch_0
    return-void
.end method

.method public final onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v1, 0x1f

    .line 16
    .line 17
    if-lt v0, v1, :cond_0

    .line 18
    .line 19
    const-string v2, "appWidgetSizes"

    .line 20
    .line 21
    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    :goto_0
    const-string v3, "appWidgetMinHeight"

    .line 28
    .line 29
    const/4 v4, -0x1

    .line 30
    invoke-virtual {p4, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    const-string v3, "appWidgetMaxHeight"

    .line 34
    .line 35
    invoke-virtual {p4, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    sget-object p4, Lez3;->a:Lra3;

    .line 39
    .line 40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    new-array v2, v2, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    if-ge v0, v1, :cond_1

    .line 60
    .line 61
    const p4, 0x7f0900e4

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p3, p4}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lu/sage/widget/UsageWidgetProvider;->c(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final onDeleted(Landroid/content/Context;[I)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    array-length p0, p2

    .line 8
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :goto_0
    if-ge v1, p0, :cond_0

    .line 11
    .line 12
    aget v2, p2, v1

    .line 13
    .line 14
    const-string v3, "widget_preferences"

    .line 15
    .line 16
    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v5, "service_type_"

    .line 27
    .line 28
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v5, "is_refreshing_"

    .line 45
    .line 46
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v5, "last_processed_nonce_"

    .line 63
    .line 64
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 79
    .line 80
    .line 81
    sget-object v2, Lez3;->a:Lra3;

    .line 82
    .line 83
    new-array v3, v0, [Ljava/lang/Object;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-static {v3}, Lra3;->c([Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "u.sage.widget.action.REFRESH"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    const-string v0, "u.sage.widget.extra.APPWIDGET_ID"

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const-string v3, "u.sage.widget.extra.REFRESH_NONCE"

    .line 30
    .line 31
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    sget-object v3, Lez3;->a:Lra3;

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    new-array v4, v1, [Ljava/lang/Object;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v4}, Lra3;->c([Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    const-string v3, "widget_preferences"

    .line 55
    .line 56
    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v6, "last_processed_nonce_"

    .line 63
    .line 64
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const/4 v7, 0x0

    .line 75
    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    if-eqz p2, :cond_0

    .line 80
    .line 81
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_0

    .line 86
    .line 87
    new-array p0, v1, [Ljava/lang/Object;

    .line 88
    .line 89
    invoke-static {p0}, Lra3;->m([Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_0
    invoke-static {p1, v2}, Lc75;->K(Landroid/content/Context;I)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_1

    .line 98
    .line 99
    new-array p0, v1, [Ljava/lang/Object;

    .line 100
    .line 101
    invoke-static {p0}, Lra3;->m([Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_1
    if-eqz p2, :cond_2

    .line 106
    .line 107
    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-interface {v3, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 132
    .line 133
    .line 134
    :cond_2
    sget-object p2, Lu/sage/widget/UsageWidgetProvider;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 135
    .line 136
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 137
    .line 138
    .line 139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    new-array v3, v1, [Ljava/lang/Object;

    .line 147
    .line 148
    invoke-static {v3}, Lra3;->c([Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    const/4 v3, 0x1

    .line 152
    invoke-static {p1, v2, v3}, Lc75;->P(Landroid/content/Context;IZ)V

    .line 153
    .line 154
    .line 155
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, p1, v3, v2}, Lu/sage/widget/UsageWidgetProvider;->c(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 163
    .line 164
    .line 165
    invoke-static {p1, v2}, Lc75;->G(Landroid/content/Context;I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    if-eqz p0, :cond_3

    .line 170
    .line 171
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 172
    .line 173
    .line 174
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    new-array p2, v1, [Ljava/lang/Object;

    .line 182
    .line 183
    invoke-static {p2}, Lra3;->c([Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    new-instance p2, Landroid/content/Intent;

    .line 187
    .line 188
    const-class v1, Lu/sage/widget/RefreshActionReceiver;

    .line 189
    .line 190
    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .line 192
    .line 193
    const-string v1, "u.sage.widget.extra.SERVICE_TYPE"

    .line 194
    .line 195
    invoke-virtual {p2, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :cond_3
    new-array p0, v1, [Ljava/lang/Object;

    .line 206
    .line 207
    invoke-static {p0}, Lra3;->m([Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-static {p1, v2, v1}, Lc75;->P(Landroid/content/Context;IZ)V

    .line 211
    .line 212
    .line 213
    :cond_4
    return-void
.end method

.method public final onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    array-length v0, p3

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    .line 14
    aget v2, p3, v1

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, v2}, Lu/sage/widget/UsageWidgetProvider;->c(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

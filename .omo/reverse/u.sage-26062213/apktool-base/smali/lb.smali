.class public final Llb;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpi;


# instance fields
.field public n:I

.field public final o:Ljava/lang/Object;

.field public p:Ljava/lang/Object;

.field public q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 0

    .line 1444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llb;->o:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 1445
    iput p1, p0, Llb;->n:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1434
    const-string v0, "nav-entry-state:id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1435
    iput-object v1, p0, Llb;->o:Ljava/lang/Object;

    .line 1436
    const-string v0, "nav-entry-state:destination-id"

    invoke-static {v0, p1}, Lmt1;->D(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Llb;->n:I

    .line 1437
    const-string v0, "nav-entry-state:args"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1438
    iput-object v1, p0, Llb;->p:Ljava/lang/Object;

    .line 1439
    const-string v0, "nav-entry-state:saved-state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1440
    iput-object p1, p0, Llb;->q:Ljava/lang/Object;

    return-void

    .line 1441
    :cond_0
    invoke-static {v0}, Lnt1;->I(Ljava/lang/String;)V

    throw v2

    .line 1442
    :cond_1
    invoke-static {v0}, Lnt1;->I(Ljava/lang/String;)V

    throw v2

    .line 1443
    :cond_2
    invoke-static {v0}, Lnt1;->I(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Len2;)V
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, v1, Llb;->q:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object v2, v1, Llb;->p:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v0, v2, Len2;->a:Landroid/content/Context;

    .line 18
    .line 19
    iget-object v3, v2, Len2;->s:Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object v4, v2, Len2;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object v5, v2, Len2;->d:Ljava/util/ArrayList;

    .line 24
    .line 25
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 v7, 0x1a

    .line 28
    .line 29
    if-lt v6, v7, :cond_0

    .line 30
    .line 31
    iget-object v6, v2, Len2;->o:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0, v6}, Lsf;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, v1, Llb;->o:Ljava/lang/Object;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v6, Landroid/app/Notification$Builder;

    .line 41
    .line 42
    invoke-direct {v6, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    iput-object v6, v1, Llb;->o:Ljava/lang/Object;

    .line 46
    .line 47
    :goto_0
    iget-object v6, v2, Len2;->q:Landroid/app/Notification;

    .line 48
    .line 49
    iget-object v0, v1, Llb;->o:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Landroid/app/Notification$Builder;

    .line 52
    .line 53
    iget-wide v8, v6, Landroid/app/Notification;->when:J

    .line 54
    .line 55
    invoke-virtual {v0, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget v8, v6, Landroid/app/Notification;->icon:I

    .line 60
    .line 61
    iget v9, v6, Landroid/app/Notification;->iconLevel:I

    .line 62
    .line 63
    invoke-virtual {v0, v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v8, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 68
    .line 69
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v8, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 74
    .line 75
    const/4 v9, 0x0

    .line 76
    invoke-virtual {v0, v8, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v8, v6, Landroid/app/Notification;->vibrate:[J

    .line 81
    .line 82
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget v8, v6, Landroid/app/Notification;->ledARGB:I

    .line 87
    .line 88
    iget v10, v6, Landroid/app/Notification;->ledOnMS:I

    .line 89
    .line 90
    iget v11, v6, Landroid/app/Notification;->ledOffMS:I

    .line 91
    .line 92
    invoke-virtual {v0, v8, v10, v11}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget v8, v6, Landroid/app/Notification;->flags:I

    .line 97
    .line 98
    const/4 v10, 0x2

    .line 99
    and-int/2addr v8, v10

    .line 100
    const/4 v12, 0x0

    .line 101
    if-eqz v8, :cond_1

    .line 102
    .line 103
    const/4 v8, 0x1

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    move v8, v12

    .line 106
    :goto_1
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget v8, v6, Landroid/app/Notification;->flags:I

    .line 111
    .line 112
    and-int/lit8 v8, v8, 0x8

    .line 113
    .line 114
    if-eqz v8, :cond_2

    .line 115
    .line 116
    const/4 v8, 0x1

    .line 117
    goto :goto_2

    .line 118
    :cond_2
    move v8, v12

    .line 119
    :goto_2
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget v8, v6, Landroid/app/Notification;->flags:I

    .line 124
    .line 125
    and-int/lit8 v8, v8, 0x10

    .line 126
    .line 127
    if-eqz v8, :cond_3

    .line 128
    .line 129
    const/4 v8, 0x1

    .line 130
    goto :goto_3

    .line 131
    :cond_3
    move v8, v12

    .line 132
    :goto_3
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget v8, v6, Landroid/app/Notification;->defaults:I

    .line 137
    .line 138
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v8, v2, Len2;->e:Ljava/lang/CharSequence;

    .line 143
    .line 144
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget-object v8, v2, Len2;->f:Ljava/lang/CharSequence;

    .line 149
    .line 150
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iget-object v8, v2, Len2;->g:Landroid/app/PendingIntent;

    .line 159
    .line 160
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iget-object v8, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 165
    .line 166
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iget v8, v6, Landroid/app/Notification;->flags:I

    .line 171
    .line 172
    and-int/lit16 v8, v8, 0x80

    .line 173
    .line 174
    if-eqz v8, :cond_4

    .line 175
    .line 176
    const/4 v8, 0x1

    .line 177
    goto :goto_4

    .line 178
    :cond_4
    move v8, v12

    .line 179
    :goto_4
    invoke-virtual {v0, v9, v8}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iget-boolean v8, v2, Len2;->k:Z

    .line 188
    .line 189
    invoke-virtual {v0, v12, v12, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 190
    .line 191
    .line 192
    iget-object v0, v1, Llb;->o:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v0, Landroid/app/Notification$Builder;

    .line 195
    .line 196
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 197
    .line 198
    .line 199
    iget-object v0, v1, Llb;->o:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v0, Landroid/app/Notification$Builder;

    .line 202
    .line 203
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    iget v8, v2, Len2;->h:I

    .line 212
    .line 213
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 214
    .line 215
    .line 216
    iget-object v8, v2, Len2;->b:Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 219
    .line 220
    .line 221
    move-result v13

    .line 222
    move v0, v12

    .line 223
    :goto_5
    const-string v15, "android.support.allowGeneratedReplies"

    .line 224
    .line 225
    if-ge v0, v13, :cond_14

    .line 226
    .line 227
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v16

    .line 231
    add-int/lit8 v17, v0, 0x1

    .line 232
    .line 233
    move-object/from16 v14, v16

    .line 234
    .line 235
    check-cast v14, Ldn2;

    .line 236
    .line 237
    iget-object v0, v14, Ldn2;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 238
    .line 239
    if-nez v0, :cond_5

    .line 240
    .line 241
    iget v0, v14, Ldn2;->e:I

    .line 242
    .line 243
    if-eqz v0, :cond_5

    .line 244
    .line 245
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->a(I)Landroidx/core/graphics/drawable/IconCompat;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    iput-object v0, v14, Ldn2;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 250
    .line 251
    :cond_5
    move/from16 v16, v12

    .line 252
    .line 253
    iget-object v12, v14, Ldn2;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 254
    .line 255
    iget-boolean v10, v14, Ldn2;->c:Z

    .line 256
    .line 257
    iget-object v11, v14, Ldn2;->a:Landroid/os/Bundle;

    .line 258
    .line 259
    move-object/from16 v18, v9

    .line 260
    .line 261
    new-instance v9, Landroid/app/Notification$Action$Builder;

    .line 262
    .line 263
    if-eqz v12, :cond_e

    .line 264
    .line 265
    const-string v7, "IconCompat"

    .line 266
    .line 267
    iget v0, v12, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 268
    .line 269
    packed-switch v0, :pswitch_data_0

    .line 270
    .line 271
    .line 272
    :pswitch_0
    const-string v0, "Unknown type"

    .line 273
    .line 274
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw v18

    .line 278
    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 279
    .line 280
    const/16 v7, 0x1e

    .line 281
    .line 282
    if-lt v0, v7, :cond_6

    .line 283
    .line 284
    invoke-virtual {v12}, Landroidx/core/graphics/drawable/IconCompat;->c()Landroid/net/Uri;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-static {v0}, Le3;->a(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    move-object/from16 v25, v3

    .line 293
    .line 294
    move-object/from16 v19, v4

    .line 295
    .line 296
    :goto_6
    move-object/from16 v23, v5

    .line 297
    .line 298
    move-object/from16 v28, v6

    .line 299
    .line 300
    move-object/from16 v20, v8

    .line 301
    .line 302
    move/from16 v22, v13

    .line 303
    .line 304
    :goto_7
    const/4 v4, 0x2

    .line 305
    goto/16 :goto_f

    .line 306
    .line 307
    :cond_6
    const-string v0, "Context is required to resolve the file uri of the icon: "

    .line 308
    .line 309
    invoke-virtual {v12}, Landroidx/core/graphics/drawable/IconCompat;->c()Landroid/net/Uri;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-static {v1, v0}, Lmk0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw v18

    .line 317
    :pswitch_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 318
    .line 319
    iget-object v7, v12, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 320
    .line 321
    move-object/from16 v19, v4

    .line 322
    .line 323
    const/16 v4, 0x1a

    .line 324
    .line 325
    if-lt v0, v4, :cond_7

    .line 326
    .line 327
    check-cast v7, Landroid/graphics/Bitmap;

    .line 328
    .line 329
    invoke-static {v7}, Lsf;->c(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    move-object/from16 v25, v3

    .line 334
    .line 335
    goto :goto_6

    .line 336
    :cond_7
    check-cast v7, Landroid/graphics/Bitmap;

    .line 337
    .line 338
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    int-to-float v0, v0

    .line 351
    const v4, 0x3f2aaaab

    .line 352
    .line 353
    .line 354
    mul-float/2addr v0, v4

    .line 355
    float-to-int v0, v0

    .line 356
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 357
    .line 358
    invoke-static {v0, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    move-object/from16 v20, v8

    .line 363
    .line 364
    new-instance v8, Landroid/graphics/Canvas;

    .line 365
    .line 366
    invoke-direct {v8, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 367
    .line 368
    .line 369
    move-object/from16 v21, v4

    .line 370
    .line 371
    new-instance v4, Landroid/graphics/Paint;

    .line 372
    .line 373
    move/from16 v22, v13

    .line 374
    .line 375
    const/4 v13, 0x3

    .line 376
    invoke-direct {v4, v13}, Landroid/graphics/Paint;-><init>(I)V

    .line 377
    .line 378
    .line 379
    int-to-float v13, v0

    .line 380
    const/high16 v23, 0x3f000000    # 0.5f

    .line 381
    .line 382
    mul-float v13, v13, v23

    .line 383
    .line 384
    const v23, 0x3f6aaaab

    .line 385
    .line 386
    .line 387
    move/from16 v24, v0

    .line 388
    .line 389
    mul-float v0, v13, v23

    .line 390
    .line 391
    move-object/from16 v23, v5

    .line 392
    .line 393
    const/high16 v5, -0x1000000

    .line 394
    .line 395
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 396
    .line 397
    .line 398
    new-instance v5, Landroid/graphics/BitmapShader;

    .line 399
    .line 400
    move-object/from16 v25, v3

    .line 401
    .line 402
    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 403
    .line 404
    invoke-direct {v5, v7, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 405
    .line 406
    .line 407
    new-instance v3, Landroid/graphics/Matrix;

    .line 408
    .line 409
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 413
    .line 414
    .line 415
    move-result v26

    .line 416
    move-object/from16 v27, v7

    .line 417
    .line 418
    sub-int v7, v26, v24

    .line 419
    .line 420
    neg-int v7, v7

    .line 421
    int-to-float v7, v7

    .line 422
    const/high16 v26, 0x40000000    # 2.0f

    .line 423
    .line 424
    div-float v7, v7, v26

    .line 425
    .line 426
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getHeight()I

    .line 427
    .line 428
    .line 429
    move-result v27

    .line 430
    move-object/from16 v28, v6

    .line 431
    .line 432
    sub-int v6, v27, v24

    .line 433
    .line 434
    neg-int v6, v6

    .line 435
    int-to-float v6, v6

    .line 436
    div-float v6, v6, v26

    .line 437
    .line 438
    invoke-virtual {v3, v7, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v5, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v8, v13, v13, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 448
    .line 449
    .line 450
    move-object/from16 v3, v18

    .line 451
    .line 452
    invoke-virtual {v8, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 453
    .line 454
    .line 455
    invoke-static/range {v21 .. v21}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    goto/16 :goto_7

    .line 460
    .line 461
    :pswitch_3
    move-object/from16 v25, v3

    .line 462
    .line 463
    move-object/from16 v19, v4

    .line 464
    .line 465
    move-object/from16 v23, v5

    .line 466
    .line 467
    move-object/from16 v28, v6

    .line 468
    .line 469
    move-object/from16 v20, v8

    .line 470
    .line 471
    move/from16 v22, v13

    .line 472
    .line 473
    iget-object v0, v12, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 474
    .line 475
    check-cast v0, Ljava/lang/String;

    .line 476
    .line 477
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    goto/16 :goto_7

    .line 482
    .line 483
    :pswitch_4
    move-object/from16 v25, v3

    .line 484
    .line 485
    move-object/from16 v19, v4

    .line 486
    .line 487
    move-object/from16 v23, v5

    .line 488
    .line 489
    move-object/from16 v28, v6

    .line 490
    .line 491
    move-object/from16 v20, v8

    .line 492
    .line 493
    move/from16 v22, v13

    .line 494
    .line 495
    iget-object v0, v12, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 496
    .line 497
    check-cast v0, [B

    .line 498
    .line 499
    iget v3, v12, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 500
    .line 501
    iget v4, v12, Landroidx/core/graphics/drawable/IconCompat;->f:I

    .line 502
    .line 503
    invoke-static {v0, v3, v4}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    goto/16 :goto_7

    .line 508
    .line 509
    :pswitch_5
    move-object/from16 v25, v3

    .line 510
    .line 511
    move-object/from16 v19, v4

    .line 512
    .line 513
    move-object/from16 v23, v5

    .line 514
    .line 515
    move-object/from16 v28, v6

    .line 516
    .line 517
    move-object/from16 v20, v8

    .line 518
    .line 519
    move/from16 v22, v13

    .line 520
    .line 521
    const/4 v3, -0x1

    .line 522
    if-ne v0, v3, :cond_9

    .line 523
    .line 524
    iget-object v0, v12, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 525
    .line 526
    const-string v3, "Unable to get icon package"

    .line 527
    .line 528
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 529
    .line 530
    const/16 v5, 0x1c

    .line 531
    .line 532
    if-lt v4, v5, :cond_8

    .line 533
    .line 534
    invoke-static {v0}, Ltf;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    :goto_8
    const/4 v4, 0x2

    .line 539
    goto :goto_e

    .line 540
    :cond_8
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 541
    .line 542
    .line 543
    move-result-object v4

    .line 544
    const-string v5, "getResPackage"

    .line 545
    .line 546
    const/4 v6, 0x0

    .line 547
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 548
    .line 549
    .line 550
    move-result-object v4

    .line 551
    invoke-virtual {v4, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    .line 557
    goto :goto_8

    .line 558
    :catch_0
    move-exception v0

    .line 559
    goto :goto_9

    .line 560
    :catch_1
    move-exception v0

    .line 561
    goto :goto_a

    .line 562
    :catch_2
    move-exception v0

    .line 563
    goto :goto_b

    .line 564
    :goto_9
    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    .line 566
    .line 567
    goto :goto_c

    .line 568
    :goto_a
    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    .line 570
    .line 571
    goto :goto_c

    .line 572
    :goto_b
    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    .line 574
    .line 575
    :goto_c
    const/4 v0, 0x0

    .line 576
    goto :goto_8

    .line 577
    :cond_9
    const/4 v4, 0x2

    .line 578
    if-ne v0, v4, :cond_c

    .line 579
    .line 580
    iget-object v0, v12, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 581
    .line 582
    if-eqz v0, :cond_b

    .line 583
    .line 584
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 585
    .line 586
    .line 587
    move-result v0

    .line 588
    if-eqz v0, :cond_a

    .line 589
    .line 590
    goto :goto_d

    .line 591
    :cond_a
    iget-object v0, v12, Landroidx/core/graphics/drawable/IconCompat;->j:Ljava/lang/String;

    .line 592
    .line 593
    goto :goto_e

    .line 594
    :cond_b
    :goto_d
    iget-object v0, v12, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 595
    .line 596
    check-cast v0, Ljava/lang/String;

    .line 597
    .line 598
    const-string v5, ":"

    .line 599
    .line 600
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    aget-object v0, v0, v16

    .line 605
    .line 606
    :goto_e
    iget v3, v12, Landroidx/core/graphics/drawable/IconCompat;->e:I

    .line 607
    .line 608
    invoke-static {v0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    goto :goto_f

    .line 613
    :cond_c
    const-string v0, "called getResPackage() on "

    .line 614
    .line 615
    invoke-static {v12, v0}, Lq73;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    const/16 v18, 0x0

    .line 619
    .line 620
    throw v18

    .line 621
    :pswitch_6
    move-object/from16 v25, v3

    .line 622
    .line 623
    move-object/from16 v19, v4

    .line 624
    .line 625
    move-object/from16 v23, v5

    .line 626
    .line 627
    move-object/from16 v28, v6

    .line 628
    .line 629
    move-object/from16 v20, v8

    .line 630
    .line 631
    move/from16 v22, v13

    .line 632
    .line 633
    const/4 v4, 0x2

    .line 634
    iget-object v0, v12, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 635
    .line 636
    check-cast v0, Landroid/graphics/Bitmap;

    .line 637
    .line 638
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    :goto_f
    iget-object v3, v12, Landroidx/core/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 643
    .line 644
    if-eqz v3, :cond_d

    .line 645
    .line 646
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    .line 647
    .line 648
    .line 649
    :cond_d
    iget-object v3, v12, Landroidx/core/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    .line 650
    .line 651
    sget-object v5, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    .line 652
    .line 653
    if-eq v3, v5, :cond_f

    .line 654
    .line 655
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Icon;->setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Icon;

    .line 656
    .line 657
    .line 658
    goto :goto_10

    .line 659
    :pswitch_7
    move-object/from16 v25, v3

    .line 660
    .line 661
    move-object/from16 v19, v4

    .line 662
    .line 663
    move-object/from16 v23, v5

    .line 664
    .line 665
    move-object/from16 v28, v6

    .line 666
    .line 667
    move-object/from16 v20, v8

    .line 668
    .line 669
    move/from16 v22, v13

    .line 670
    .line 671
    const/4 v4, 0x2

    .line 672
    iget-object v0, v12, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 673
    .line 674
    check-cast v0, Landroid/graphics/drawable/Icon;

    .line 675
    .line 676
    goto :goto_10

    .line 677
    :cond_e
    move-object/from16 v25, v3

    .line 678
    .line 679
    move-object/from16 v19, v4

    .line 680
    .line 681
    move-object/from16 v23, v5

    .line 682
    .line 683
    move-object/from16 v28, v6

    .line 684
    .line 685
    move-object/from16 v20, v8

    .line 686
    .line 687
    move/from16 v22, v13

    .line 688
    .line 689
    const/4 v4, 0x2

    .line 690
    const/4 v0, 0x0

    .line 691
    :cond_f
    :goto_10
    iget-object v3, v14, Ldn2;->f:Ljava/lang/CharSequence;

    .line 692
    .line 693
    iget-object v5, v14, Ldn2;->g:Landroid/app/PendingIntent;

    .line 694
    .line 695
    invoke-direct {v9, v0, v3, v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 696
    .line 697
    .line 698
    if-eqz v11, :cond_10

    .line 699
    .line 700
    new-instance v0, Landroid/os/Bundle;

    .line 701
    .line 702
    invoke-direct {v0, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 703
    .line 704
    .line 705
    goto :goto_11

    .line 706
    :cond_10
    new-instance v0, Landroid/os/Bundle;

    .line 707
    .line 708
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 709
    .line 710
    .line 711
    :goto_11
    invoke-virtual {v0, v15, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 712
    .line 713
    .line 714
    invoke-virtual {v9, v10}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 715
    .line 716
    .line 717
    const-string v3, "android.support.action.semanticAction"

    .line 718
    .line 719
    move/from16 v5, v16

    .line 720
    .line 721
    invoke-virtual {v0, v3, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 722
    .line 723
    .line 724
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 725
    .line 726
    const/16 v5, 0x1c

    .line 727
    .line 728
    if-lt v3, v5, :cond_11

    .line 729
    .line 730
    invoke-static {v9}, Ltf;->s(Landroid/app/Notification$Action$Builder;)V

    .line 731
    .line 732
    .line 733
    :cond_11
    const/16 v5, 0x1d

    .line 734
    .line 735
    if-lt v3, v5, :cond_12

    .line 736
    .line 737
    invoke-static {v9}, Lvf;->n(Landroid/app/Notification$Action$Builder;)V

    .line 738
    .line 739
    .line 740
    :cond_12
    const/16 v5, 0x1f

    .line 741
    .line 742
    if-lt v3, v5, :cond_13

    .line 743
    .line 744
    invoke-static {v9}, Lzf;->f(Landroid/app/Notification$Action$Builder;)V

    .line 745
    .line 746
    .line 747
    :cond_13
    const-string v3, "android.support.action.showsUserInterface"

    .line 748
    .line 749
    iget-boolean v5, v14, Ldn2;->d:Z

    .line 750
    .line 751
    invoke-virtual {v0, v3, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v9, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 755
    .line 756
    .line 757
    iget-object v0, v1, Llb;->o:Ljava/lang/Object;

    .line 758
    .line 759
    check-cast v0, Landroid/app/Notification$Builder;

    .line 760
    .line 761
    invoke-virtual {v9}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 762
    .line 763
    .line 764
    move-result-object v3

    .line 765
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 766
    .line 767
    .line 768
    move v10, v4

    .line 769
    move/from16 v0, v17

    .line 770
    .line 771
    move-object/from16 v4, v19

    .line 772
    .line 773
    move-object/from16 v8, v20

    .line 774
    .line 775
    move/from16 v13, v22

    .line 776
    .line 777
    move-object/from16 v5, v23

    .line 778
    .line 779
    move-object/from16 v3, v25

    .line 780
    .line 781
    move-object/from16 v6, v28

    .line 782
    .line 783
    const/16 v7, 0x1a

    .line 784
    .line 785
    const/4 v9, 0x0

    .line 786
    const/4 v12, 0x0

    .line 787
    goto/16 :goto_5

    .line 788
    .line 789
    :cond_14
    move-object/from16 v25, v3

    .line 790
    .line 791
    move-object/from16 v19, v4

    .line 792
    .line 793
    move-object/from16 v23, v5

    .line 794
    .line 795
    move-object/from16 v28, v6

    .line 796
    .line 797
    iget-object v0, v2, Len2;->n:Landroid/os/Bundle;

    .line 798
    .line 799
    if-eqz v0, :cond_15

    .line 800
    .line 801
    iget-object v3, v1, Llb;->q:Ljava/lang/Object;

    .line 802
    .line 803
    check-cast v3, Landroid/os/Bundle;

    .line 804
    .line 805
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 806
    .line 807
    .line 808
    :cond_15
    iget-object v0, v1, Llb;->o:Ljava/lang/Object;

    .line 809
    .line 810
    check-cast v0, Landroid/app/Notification$Builder;

    .line 811
    .line 812
    iget-boolean v3, v2, Len2;->i:Z

    .line 813
    .line 814
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 815
    .line 816
    .line 817
    iget-object v0, v1, Llb;->o:Ljava/lang/Object;

    .line 818
    .line 819
    check-cast v0, Landroid/app/Notification$Builder;

    .line 820
    .line 821
    iget-boolean v3, v2, Len2;->m:Z

    .line 822
    .line 823
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 824
    .line 825
    .line 826
    iget-object v0, v1, Llb;->o:Ljava/lang/Object;

    .line 827
    .line 828
    check-cast v0, Landroid/app/Notification$Builder;

    .line 829
    .line 830
    const/4 v3, 0x0

    .line 831
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 832
    .line 833
    .line 834
    iget-object v0, v1, Llb;->o:Ljava/lang/Object;

    .line 835
    .line 836
    check-cast v0, Landroid/app/Notification$Builder;

    .line 837
    .line 838
    iget-object v4, v2, Len2;->l:Ljava/lang/String;

    .line 839
    .line 840
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 841
    .line 842
    .line 843
    iget-object v0, v1, Llb;->o:Ljava/lang/Object;

    .line 844
    .line 845
    check-cast v0, Landroid/app/Notification$Builder;

    .line 846
    .line 847
    const/4 v5, 0x0

    .line 848
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 849
    .line 850
    .line 851
    iput v5, v1, Llb;->n:I

    .line 852
    .line 853
    iget-object v0, v1, Llb;->o:Ljava/lang/Object;

    .line 854
    .line 855
    check-cast v0, Landroid/app/Notification$Builder;

    .line 856
    .line 857
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 858
    .line 859
    .line 860
    iget-object v0, v1, Llb;->o:Ljava/lang/Object;

    .line 861
    .line 862
    check-cast v0, Landroid/app/Notification$Builder;

    .line 863
    .line 864
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 865
    .line 866
    .line 867
    iget-object v0, v1, Llb;->o:Ljava/lang/Object;

    .line 868
    .line 869
    check-cast v0, Landroid/app/Notification$Builder;

    .line 870
    .line 871
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 872
    .line 873
    .line 874
    iget-object v0, v1, Llb;->o:Ljava/lang/Object;

    .line 875
    .line 876
    check-cast v0, Landroid/app/Notification$Builder;

    .line 877
    .line 878
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 879
    .line 880
    .line 881
    iget-object v0, v1, Llb;->o:Ljava/lang/Object;

    .line 882
    .line 883
    check-cast v0, Landroid/app/Notification$Builder;

    .line 884
    .line 885
    move-object/from16 v3, v28

    .line 886
    .line 887
    iget-object v4, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 888
    .line 889
    iget-object v5, v3, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 890
    .line 891
    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 892
    .line 893
    .line 894
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 895
    .line 896
    const/16 v5, 0x1c

    .line 897
    .line 898
    if-ge v0, v5, :cond_1a

    .line 899
    .line 900
    if-nez v19, :cond_16

    .line 901
    .line 902
    const/4 v0, 0x0

    .line 903
    goto :goto_12

    .line 904
    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    .line 905
    .line 906
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    .line 907
    .line 908
    .line 909
    move-result v4

    .line 910
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 911
    .line 912
    .line 913
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 914
    .line 915
    .line 916
    move-result-object v4

    .line 917
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 918
    .line 919
    .line 920
    move-result v5

    .line 921
    if-nez v5, :cond_19

    .line 922
    .line 923
    :goto_12
    if-nez v0, :cond_17

    .line 924
    .line 925
    move-object/from16 v0, v25

    .line 926
    .line 927
    goto :goto_13

    .line 928
    :cond_17
    if-nez v25, :cond_18

    .line 929
    .line 930
    goto :goto_13

    .line 931
    :cond_18
    new-instance v4, Lfi;

    .line 932
    .line 933
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 934
    .line 935
    .line 936
    move-result v5

    .line 937
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    .line 938
    .line 939
    .line 940
    move-result v6

    .line 941
    add-int/2addr v6, v5

    .line 942
    invoke-direct {v4, v6}, Lfi;-><init>(I)V

    .line 943
    .line 944
    .line 945
    invoke-virtual {v4, v0}, Lfi;->addAll(Ljava/util/Collection;)Z

    .line 946
    .line 947
    .line 948
    move-object/from16 v5, v25

    .line 949
    .line 950
    invoke-virtual {v4, v5}, Lfi;->addAll(Ljava/util/Collection;)Z

    .line 951
    .line 952
    .line 953
    new-instance v0, Ljava/util/ArrayList;

    .line 954
    .line 955
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 956
    .line 957
    .line 958
    goto :goto_13

    .line 959
    :cond_19
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    move-result-object v0

    .line 963
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 964
    .line 965
    .line 966
    invoke-static {}, Lmk0;->b()V

    .line 967
    .line 968
    .line 969
    const/16 v18, 0x0

    .line 970
    .line 971
    throw v18

    .line 972
    :cond_1a
    move-object/from16 v5, v25

    .line 973
    .line 974
    move-object v0, v5

    .line 975
    :goto_13
    if-eqz v0, :cond_1b

    .line 976
    .line 977
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 978
    .line 979
    .line 980
    move-result v4

    .line 981
    if-nez v4, :cond_1b

    .line 982
    .line 983
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 984
    .line 985
    .line 986
    move-result v4

    .line 987
    const/4 v5, 0x0

    .line 988
    :goto_14
    if-ge v5, v4, :cond_1b

    .line 989
    .line 990
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    move-result-object v6

    .line 994
    add-int/lit8 v5, v5, 0x1

    .line 995
    .line 996
    check-cast v6, Ljava/lang/String;

    .line 997
    .line 998
    iget-object v7, v1, Llb;->o:Ljava/lang/Object;

    .line 999
    .line 1000
    check-cast v7, Landroid/app/Notification$Builder;

    .line 1001
    .line 1002
    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1003
    .line 1004
    .line 1005
    goto :goto_14

    .line 1006
    :cond_1b
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    .line 1007
    .line 1008
    .line 1009
    move-result v0

    .line 1010
    if-lez v0, :cond_23

    .line 1011
    .line 1012
    iget-object v0, v2, Len2;->n:Landroid/os/Bundle;

    .line 1013
    .line 1014
    if-nez v0, :cond_1c

    .line 1015
    .line 1016
    new-instance v0, Landroid/os/Bundle;

    .line 1017
    .line 1018
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1019
    .line 1020
    .line 1021
    iput-object v0, v2, Len2;->n:Landroid/os/Bundle;

    .line 1022
    .line 1023
    :cond_1c
    iget-object v0, v2, Len2;->n:Landroid/os/Bundle;

    .line 1024
    .line 1025
    const-string v4, "android.car.EXTENSIONS"

    .line 1026
    .line 1027
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v0

    .line 1031
    if-nez v0, :cond_1d

    .line 1032
    .line 1033
    new-instance v0, Landroid/os/Bundle;

    .line 1034
    .line 1035
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1036
    .line 1037
    .line 1038
    :cond_1d
    new-instance v5, Landroid/os/Bundle;

    .line 1039
    .line 1040
    invoke-direct {v5, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1041
    .line 1042
    .line 1043
    new-instance v6, Landroid/os/Bundle;

    .line 1044
    .line 1045
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1046
    .line 1047
    .line 1048
    const/4 v7, 0x0

    .line 1049
    :goto_15
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    .line 1050
    .line 1051
    .line 1052
    move-result v8

    .line 1053
    if-ge v7, v8, :cond_21

    .line 1054
    .line 1055
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v8

    .line 1059
    move-object/from16 v9, v23

    .line 1060
    .line 1061
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v10

    .line 1065
    check-cast v10, Ldn2;

    .line 1066
    .line 1067
    new-instance v11, Landroid/os/Bundle;

    .line 1068
    .line 1069
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1070
    .line 1071
    .line 1072
    iget-object v12, v10, Ldn2;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 1073
    .line 1074
    if-nez v12, :cond_1e

    .line 1075
    .line 1076
    iget v12, v10, Ldn2;->e:I

    .line 1077
    .line 1078
    if-eqz v12, :cond_1e

    .line 1079
    .line 1080
    invoke-static {v12}, Landroidx/core/graphics/drawable/IconCompat;->a(I)Landroidx/core/graphics/drawable/IconCompat;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v12

    .line 1084
    iput-object v12, v10, Ldn2;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 1085
    .line 1086
    :cond_1e
    iget-object v12, v10, Ldn2;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 1087
    .line 1088
    iget-object v13, v10, Ldn2;->a:Landroid/os/Bundle;

    .line 1089
    .line 1090
    if-eqz v12, :cond_1f

    .line 1091
    .line 1092
    invoke-virtual {v12}, Landroidx/core/graphics/drawable/IconCompat;->b()I

    .line 1093
    .line 1094
    .line 1095
    move-result v12

    .line 1096
    goto :goto_16

    .line 1097
    :cond_1f
    const/4 v12, 0x0

    .line 1098
    :goto_16
    const-string v14, "icon"

    .line 1099
    .line 1100
    invoke-virtual {v11, v14, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1101
    .line 1102
    .line 1103
    const-string v12, "title"

    .line 1104
    .line 1105
    iget-object v14, v10, Ldn2;->f:Ljava/lang/CharSequence;

    .line 1106
    .line 1107
    invoke-virtual {v11, v12, v14}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1108
    .line 1109
    .line 1110
    const-string v12, "actionIntent"

    .line 1111
    .line 1112
    iget-object v14, v10, Ldn2;->g:Landroid/app/PendingIntent;

    .line 1113
    .line 1114
    invoke-virtual {v11, v12, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1115
    .line 1116
    .line 1117
    if-eqz v13, :cond_20

    .line 1118
    .line 1119
    new-instance v12, Landroid/os/Bundle;

    .line 1120
    .line 1121
    invoke-direct {v12, v13}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1122
    .line 1123
    .line 1124
    goto :goto_17

    .line 1125
    :cond_20
    new-instance v12, Landroid/os/Bundle;

    .line 1126
    .line 1127
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 1128
    .line 1129
    .line 1130
    :goto_17
    iget-boolean v13, v10, Ldn2;->c:Z

    .line 1131
    .line 1132
    invoke-virtual {v12, v15, v13}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1133
    .line 1134
    .line 1135
    const-string v13, "extras"

    .line 1136
    .line 1137
    invoke-virtual {v11, v13, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1138
    .line 1139
    .line 1140
    const-string v12, "remoteInputs"

    .line 1141
    .line 1142
    const/4 v13, 0x0

    .line 1143
    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1144
    .line 1145
    .line 1146
    const-string v12, "showsUserInterface"

    .line 1147
    .line 1148
    iget-boolean v10, v10, Ldn2;->d:Z

    .line 1149
    .line 1150
    invoke-virtual {v11, v12, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1151
    .line 1152
    .line 1153
    const-string v10, "semanticAction"

    .line 1154
    .line 1155
    const/4 v12, 0x0

    .line 1156
    invoke-virtual {v11, v10, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1157
    .line 1158
    .line 1159
    invoke-virtual {v6, v8, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1160
    .line 1161
    .line 1162
    add-int/lit8 v7, v7, 0x1

    .line 1163
    .line 1164
    move-object/from16 v23, v9

    .line 1165
    .line 1166
    goto :goto_15

    .line 1167
    :cond_21
    const-string v7, "invisible_actions"

    .line 1168
    .line 1169
    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1170
    .line 1171
    .line 1172
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1173
    .line 1174
    .line 1175
    iget-object v6, v2, Len2;->n:Landroid/os/Bundle;

    .line 1176
    .line 1177
    if-nez v6, :cond_22

    .line 1178
    .line 1179
    new-instance v6, Landroid/os/Bundle;

    .line 1180
    .line 1181
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1182
    .line 1183
    .line 1184
    iput-object v6, v2, Len2;->n:Landroid/os/Bundle;

    .line 1185
    .line 1186
    :cond_22
    iget-object v6, v2, Len2;->n:Landroid/os/Bundle;

    .line 1187
    .line 1188
    invoke-virtual {v6, v4, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1189
    .line 1190
    .line 1191
    iget-object v0, v1, Llb;->q:Ljava/lang/Object;

    .line 1192
    .line 1193
    check-cast v0, Landroid/os/Bundle;

    .line 1194
    .line 1195
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1196
    .line 1197
    .line 1198
    :cond_23
    iget-object v0, v1, Llb;->o:Ljava/lang/Object;

    .line 1199
    .line 1200
    check-cast v0, Landroid/app/Notification$Builder;

    .line 1201
    .line 1202
    iget-object v4, v2, Len2;->n:Landroid/os/Bundle;

    .line 1203
    .line 1204
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 1205
    .line 1206
    .line 1207
    iget-object v0, v1, Llb;->o:Ljava/lang/Object;

    .line 1208
    .line 1209
    check-cast v0, Landroid/app/Notification$Builder;

    .line 1210
    .line 1211
    const/4 v6, 0x0

    .line 1212
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1213
    .line 1214
    .line 1215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1216
    .line 1217
    const/16 v4, 0x1a

    .line 1218
    .line 1219
    if-lt v0, v4, :cond_24

    .line 1220
    .line 1221
    iget-object v4, v1, Llb;->o:Ljava/lang/Object;

    .line 1222
    .line 1223
    check-cast v4, Landroid/app/Notification$Builder;

    .line 1224
    .line 1225
    invoke-static {v4}, Lsf;->m(Landroid/app/Notification$Builder;)V

    .line 1226
    .line 1227
    .line 1228
    iget-object v4, v1, Llb;->o:Ljava/lang/Object;

    .line 1229
    .line 1230
    check-cast v4, Landroid/app/Notification$Builder;

    .line 1231
    .line 1232
    invoke-static {v4}, Lsf;->s(Landroid/app/Notification$Builder;)V

    .line 1233
    .line 1234
    .line 1235
    iget-object v4, v1, Llb;->o:Ljava/lang/Object;

    .line 1236
    .line 1237
    check-cast v4, Landroid/app/Notification$Builder;

    .line 1238
    .line 1239
    invoke-static {v4}, Lsf;->t(Landroid/app/Notification$Builder;)V

    .line 1240
    .line 1241
    .line 1242
    iget-object v4, v1, Llb;->o:Ljava/lang/Object;

    .line 1243
    .line 1244
    check-cast v4, Landroid/app/Notification$Builder;

    .line 1245
    .line 1246
    invoke-static {v4}, Lsf;->u(Landroid/app/Notification$Builder;)V

    .line 1247
    .line 1248
    .line 1249
    iget-object v4, v1, Llb;->o:Ljava/lang/Object;

    .line 1250
    .line 1251
    check-cast v4, Landroid/app/Notification$Builder;

    .line 1252
    .line 1253
    const/4 v5, 0x0

    .line 1254
    invoke-static {v4, v5}, Lsf;->o(Landroid/app/Notification$Builder;I)V

    .line 1255
    .line 1256
    .line 1257
    iget-object v4, v2, Len2;->o:Ljava/lang/String;

    .line 1258
    .line 1259
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1260
    .line 1261
    .line 1262
    move-result v4

    .line 1263
    if-nez v4, :cond_24

    .line 1264
    .line 1265
    iget-object v4, v1, Llb;->o:Ljava/lang/Object;

    .line 1266
    .line 1267
    check-cast v4, Landroid/app/Notification$Builder;

    .line 1268
    .line 1269
    const/4 v6, 0x0

    .line 1270
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v4

    .line 1274
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v4

    .line 1278
    invoke-virtual {v4, v5, v5, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v4

    .line 1282
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 1283
    .line 1284
    .line 1285
    :cond_24
    const/16 v5, 0x1c

    .line 1286
    .line 1287
    if-lt v0, v5, :cond_25

    .line 1288
    .line 1289
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v4

    .line 1293
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1294
    .line 1295
    .line 1296
    move-result v5

    .line 1297
    if-nez v5, :cond_26

    .line 1298
    .line 1299
    :cond_25
    const/16 v5, 0x1d

    .line 1300
    .line 1301
    goto :goto_18

    .line 1302
    :cond_26
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v0

    .line 1306
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1307
    .line 1308
    .line 1309
    invoke-static {}, Lmk0;->b()V

    .line 1310
    .line 1311
    .line 1312
    const/16 v18, 0x0

    .line 1313
    .line 1314
    throw v18

    .line 1315
    :goto_18
    if-lt v0, v5, :cond_27

    .line 1316
    .line 1317
    iget-object v4, v1, Llb;->o:Ljava/lang/Object;

    .line 1318
    .line 1319
    check-cast v4, Landroid/app/Notification$Builder;

    .line 1320
    .line 1321
    iget-boolean v5, v2, Len2;->p:Z

    .line 1322
    .line 1323
    invoke-static {v4, v5}, Lvf;->l(Landroid/app/Notification$Builder;Z)V

    .line 1324
    .line 1325
    .line 1326
    iget-object v4, v1, Llb;->o:Ljava/lang/Object;

    .line 1327
    .line 1328
    check-cast v4, Landroid/app/Notification$Builder;

    .line 1329
    .line 1330
    invoke-static {v4}, Lvf;->m(Landroid/app/Notification$Builder;)V

    .line 1331
    .line 1332
    .line 1333
    :cond_27
    const/16 v4, 0x24

    .line 1334
    .line 1335
    if-lt v0, v4, :cond_28

    .line 1336
    .line 1337
    iget-object v4, v1, Llb;->o:Ljava/lang/Object;

    .line 1338
    .line 1339
    check-cast v4, Landroid/app/Notification$Builder;

    .line 1340
    .line 1341
    invoke-static {v4}, Lg3;->e(Landroid/app/Notification$Builder;)V

    .line 1342
    .line 1343
    .line 1344
    :cond_28
    iget-boolean v2, v2, Len2;->r:Z

    .line 1345
    .line 1346
    if-eqz v2, :cond_2a

    .line 1347
    .line 1348
    iget-object v2, v1, Llb;->p:Ljava/lang/Object;

    .line 1349
    .line 1350
    check-cast v2, Len2;

    .line 1351
    .line 1352
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1353
    .line 1354
    .line 1355
    const/4 v2, 0x1

    .line 1356
    iput v2, v1, Llb;->n:I

    .line 1357
    .line 1358
    iget-object v2, v1, Llb;->o:Ljava/lang/Object;

    .line 1359
    .line 1360
    check-cast v2, Landroid/app/Notification$Builder;

    .line 1361
    .line 1362
    const/4 v6, 0x0

    .line 1363
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 1364
    .line 1365
    .line 1366
    iget-object v2, v1, Llb;->o:Ljava/lang/Object;

    .line 1367
    .line 1368
    check-cast v2, Landroid/app/Notification$Builder;

    .line 1369
    .line 1370
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 1371
    .line 1372
    .line 1373
    iget v2, v3, Landroid/app/Notification;->defaults:I

    .line 1374
    .line 1375
    and-int/lit8 v2, v2, -0x4

    .line 1376
    .line 1377
    iput v2, v3, Landroid/app/Notification;->defaults:I

    .line 1378
    .line 1379
    iget-object v3, v1, Llb;->o:Ljava/lang/Object;

    .line 1380
    .line 1381
    check-cast v3, Landroid/app/Notification$Builder;

    .line 1382
    .line 1383
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1384
    .line 1385
    .line 1386
    const/16 v4, 0x1a

    .line 1387
    .line 1388
    if-lt v0, v4, :cond_2a

    .line 1389
    .line 1390
    iget-object v0, v1, Llb;->p:Ljava/lang/Object;

    .line 1391
    .line 1392
    check-cast v0, Len2;

    .line 1393
    .line 1394
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1395
    .line 1396
    .line 1397
    const/16 v18, 0x0

    .line 1398
    .line 1399
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1400
    .line 1401
    .line 1402
    move-result v0

    .line 1403
    if-eqz v0, :cond_29

    .line 1404
    .line 1405
    iget-object v0, v1, Llb;->o:Ljava/lang/Object;

    .line 1406
    .line 1407
    check-cast v0, Landroid/app/Notification$Builder;

    .line 1408
    .line 1409
    const-string v2, "silent"

    .line 1410
    .line 1411
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1412
    .line 1413
    .line 1414
    :cond_29
    iget-object v0, v1, Llb;->o:Ljava/lang/Object;

    .line 1415
    .line 1416
    check-cast v0, Landroid/app/Notification$Builder;

    .line 1417
    .line 1418
    const/4 v2, 0x1

    .line 1419
    invoke-static {v0, v2}, Lsf;->o(Landroid/app/Notification$Builder;I)V

    .line 1420
    .line 1421
    .line 1422
    :cond_2a
    return-void

    .line 1423
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic constructor <init>(Lic5;Lsm4;ILjava/util/ArrayList;)V
    .locals 0

    .line 1446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llb;->o:Ljava/lang/Object;

    iput-object p2, p0, Llb;->p:Ljava/lang/Object;

    iput p3, p0, Llb;->n:I

    iput-object p4, p0, Llb;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lyh2;I)V
    .locals 1

    .line 1423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1424
    iget-object v0, p1, Lyh2;->s:Ljava/lang/String;

    .line 1425
    iput-object v0, p0, Llb;->o:Ljava/lang/Object;

    .line 1426
    iput p2, p0, Llb;->n:I

    .line 1427
    iget-object p1, p1, Lyh2;->u:Lai2;

    invoke-virtual {p1}, Lai2;->a()Landroid/os/Bundle;

    move-result-object p2

    .line 1428
    iput-object p2, p0, Llb;->p:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 1429
    new-array v0, p2, [Ljs2;

    .line 1430
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljs2;

    invoke-static {p2}, Lqj0;->x([Ljs2;)Landroid/os/Bundle;

    move-result-object p2

    .line 1431
    iput-object p2, p0, Llb;->q:Ljava/lang/Object;

    .line 1432
    iget-object p0, p1, Lai2;->h:Lwc3;

    invoke-virtual {p0, p2}, Lwc3;->c(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object p0, p0, Llb;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/graphics/Paint;

    .line 4
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x1d

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lnh4;->a:Lnh4;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lnh4;->a(Landroid/graphics/Paint;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {p0}, Lc75;->b(I)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    return-wide v0
.end method

.method public b()I
    .locals 2

    .line 1
    iget-object p0, p0, Llb;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, -0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Lmb;->a:[I

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    aget p0, v0, p0

    .line 20
    .line 21
    :goto_0
    const/4 v0, 0x1

    .line 22
    if-eq p0, v0, :cond_3

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-eq p0, v1, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    if-eq p0, v0, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    return v1

    .line 32
    :cond_2
    return v0

    .line 33
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public c()I
    .locals 2

    .line 1
    iget-object p0, p0, Llb;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, -0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Lmb;->b:[I

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    aget p0, v0, p0

    .line 20
    .line 21
    :goto_0
    const/4 v0, 0x1

    .line 22
    if-eq p0, v0, :cond_3

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-eq p0, v1, :cond_2

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    if-eq p0, v1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    return v0

    .line 32
    :cond_2
    return v1

    .line 33
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8

    .line 1
    iget-object v0, p0, Llb;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lic5;

    .line 4
    .line 5
    iget-object v1, p0, Llb;->p:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lsm4;

    .line 8
    .line 9
    iget v2, p0, Llb;->n:I

    .line 10
    .line 11
    iget-object p0, p0, Llb;->q:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-static {v1}, Ltf1;->c(Ljava/lang/Object;)Lap1;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ge v3, v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Ljava/util/concurrent/Future;

    .line 27
    .line 28
    invoke-static {v4}, Ltf1;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    iget-object v4, v0, Lic5;->b:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v4, Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    if-nez v4, :cond_0

    .line 49
    .line 50
    new-instance v4, Lu85;

    .line 51
    .line 52
    const/4 v5, 0x1

    .line 53
    invoke-direct {v4, v5}, Lu85;-><init>(I)V

    .line 54
    .line 55
    .line 56
    sget v5, Lvf5;->a:I

    .line 57
    .line 58
    invoke-static {}, Lye5;->a()Lrf5;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    new-instance v6, Lic5;

    .line 63
    .line 64
    const/4 v7, 0x4

    .line 65
    invoke-direct {v6, v7, v5, v4}, Lic5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    sget-object v4, Lfu0;->n:Lfu0;

    .line 69
    .line 70
    invoke-static {v1, v6, v4}, Ltf1;->f(Lcom/google/common/util/concurrent/ListenableFuture;Lqi;Ljava/util/concurrent/Executor;)Lh2;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    goto :goto_1

    .line 75
    :cond_0
    invoke-static {}, Lmk0;->b()V

    .line 76
    .line 77
    .line 78
    const/4 p0, 0x0

    .line 79
    return-object p0

    .line 80
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    return-object v1
.end method

.method public d(F)V
    .locals 2

    .line 1
    iget-object p0, p0, Llb;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/graphics/Paint;

    .line 4
    .line 5
    const/high16 v0, 0x437f0000    # 255.0f

    .line 6
    .line 7
    mul-float/2addr p1, v0

    .line 8
    float-to-double v0, p1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    double-to-float p1, v0

    .line 14
    float-to-int p1, p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public e(I)V
    .locals 2

    .line 1
    iget v0, p0, Llb;->n:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Llb;->n:I

    .line 7
    .line 8
    iget-object p0, p0, Llb;->o:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/graphics/Paint;

    .line 11
    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v1, 0x1d

    .line 15
    .line 16
    if-lt v0, v1, :cond_1

    .line 17
    .line 18
    sget-object v0, Lnh4;->a:Lnh4;

    .line 19
    .line 20
    invoke-virtual {v0, p0, p1}, Lnh4;->b(Landroid/graphics/Paint;I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 25
    .line 26
    invoke-static {p1}, Lse0;->G(I)Landroid/graphics/PorterDuff$Mode;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public f(J)V
    .locals 2

    .line 1
    iget-object p0, p0, Llb;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/graphics/Paint;

    .line 4
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x1d

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lnh4;->a:Lnh4;

    .line 12
    .line 13
    invoke-virtual {v0, p0, p1, p2}, Lnh4;->c(Landroid/graphics/Paint;J)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-static {p1, p2}, Lc75;->R(J)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public g(Low;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llb;->q:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object p0, p0, Llb;->o:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/graphics/Paint;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Low;->a:Landroid/graphics/ColorFilter;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public h(Landroid/graphics/Shader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llb;->p:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object p0, p0, Llb;->o:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public i(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Llb;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/graphics/Paint;

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    if-nez p1, :cond_2

    .line 18
    .line 19
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public j(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Llb;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/graphics/Paint;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x2

    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    sget-object p1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_2

    .line 18
    .line 19
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public k(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Llb;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/graphics/Paint;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 12
    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

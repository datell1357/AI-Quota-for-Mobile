.class public final Lw85;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public o:Ljava/lang/Object;

.field public p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 18
    const/4 v0, 0x7

    iput v0, p0, Lw85;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 15
    iput p1, p0, Lw85;->n:I

    iput-object p3, p0, Lw85;->o:Ljava/lang/Object;

    iput-object p2, p0, Lw85;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 16
    iput p1, p0, Lw85;->n:I

    iput-object p2, p0, Lw85;->o:Ljava/lang/Object;

    iput-object p3, p0, Lw85;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo95;Lw75;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lw85;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lw85;->o:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lw85;->p:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lra3;Lpb5;Ljava/lang/Runnable;)V
    .locals 0

    const/4 p1, 0x3

    iput p1, p0, Lw85;->n:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lw85;->o:Ljava/lang/Object;

    iput-object p3, p0, Lw85;->p:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget v0, p0, Lw85;->n:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lw85;->o:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, Lef5;

    .line 12
    .line 13
    :try_start_0
    iget-object p0, p0, Lw85;->p:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Ljava/util/concurrent/Callable;

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v1, p0}, Lef5;->n(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_2

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    move-object p0, v0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    move-object p0, v0

    .line 30
    goto :goto_1

    .line 31
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lef5;->p(Ljava/lang/Exception;)V

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :goto_1
    invoke-virtual {v1, p0}, Lef5;->p(Ljava/lang/Exception;)V

    .line 41
    .line 42
    .line 43
    :goto_2
    return-void

    .line 44
    :pswitch_0
    iput-object v2, p0, Lw85;->o:Ljava/lang/Object;

    .line 45
    .line 46
    iput-object v2, p0, Lw85;->p:Ljava/lang/Object;

    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_1
    iget-object v0, p0, Lw85;->o:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Lo75;

    .line 52
    .line 53
    iget-object v2, v0, Lo75;->b:Landroid/content/Context;

    .line 54
    .line 55
    const-string v3, "Unable to read Phenotype PackageMetadata for "

    .line 56
    .line 57
    const-string v4, "phenotype/"

    .line 58
    .line 59
    sget-object v0, Lbc5;->q:Le53;

    .line 60
    .line 61
    if-nez v0, :cond_5

    .line 62
    .line 63
    sget-object v5, Lbc5;->p:Ljava/lang/Object;

    .line 64
    .line 65
    monitor-enter v5

    .line 66
    :try_start_1
    sget-object v0, Lbc5;->q:Le53;

    .line 67
    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    new-instance v6, Lhb;

    .line 71
    .line 72
    const/4 v0, 0x4

    .line 73
    invoke-direct {v6, v0}, Lhb;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    .line 75
    .line 76
    :try_start_2
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v7, "phenotype"

    .line 81
    .line 82
    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    if-eqz v7, :cond_3

    .line 87
    .line 88
    array-length v8, v7

    .line 89
    const/4 v0, 0x0

    .line 90
    move v9, v0

    .line 91
    :goto_3
    if-ge v9, v8, :cond_3

    .line 92
    .line 93
    aget-object v10, v7, v9

    .line 94
    .line 95
    const-string v0, "_package_metadata.binarypb"

    .line 96
    .line 97
    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    if-nez v0, :cond_0

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result v11

    .line 112
    add-int/lit8 v11, v11, 0xa

    .line 113
    .line 114
    new-instance v12, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    invoke-virtual {v0, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 130
    .line 131
    .line 132
    move-result-object v11
    :try_end_3
    .catch Lfo4; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    :try_start_4
    new-instance v0, Lbc5;

    .line 134
    .line 135
    sget-object v12, Lkn4;->a:Lkn4;

    .line 136
    .line 137
    sget v12, Lum4;->a:I

    .line 138
    .line 139
    sget-object v12, Lkn4;->b:Lkn4;

    .line 140
    .line 141
    invoke-static {v11, v12}, Lcc5;->v(Ljava/io/InputStream;Lkn4;)Lcc5;

    .line 142
    .line 143
    .line 144
    move-result-object v12

    .line 145
    invoke-direct {v0, v2, v12}, Lbc5;-><init>(Landroid/content/Context;Lcc5;)V

    .line 146
    .line 147
    .line 148
    iget-object v12, v0, Lbc5;->o:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v6, v12, v0}, Lhb;->h(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 151
    .line 152
    .line 153
    if-eqz v11, :cond_2

    .line 154
    .line 155
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Lfo4; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 156
    .line 157
    .line 158
    goto :goto_6

    .line 159
    :catchall_1
    move-exception v0

    .line 160
    move-object p0, v0

    .line 161
    goto :goto_8

    .line 162
    :catch_1
    move-exception v0

    .line 163
    goto :goto_7

    .line 164
    :catch_2
    move-exception v0

    .line 165
    goto :goto_5

    .line 166
    :catchall_2
    move-exception v0

    .line 167
    move-object v12, v0

    .line 168
    if-eqz v11, :cond_1

    .line 169
    .line 170
    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 171
    .line 172
    .line 173
    goto :goto_4

    .line 174
    :catchall_3
    move-exception v0

    .line 175
    :try_start_7
    invoke-virtual {v12, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    :cond_1
    :goto_4
    throw v12
    :try_end_7
    .catch Lfo4; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 179
    :goto_5
    :try_start_8
    const-string v11, "PackageInfo"

    .line 180
    .line 181
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 182
    .line 183
    .line 184
    move-result v12

    .line 185
    add-int/lit8 v12, v12, 0x2d

    .line 186
    .line 187
    new-instance v13, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    invoke-static {v11, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 203
    .line 204
    .line 205
    :cond_2
    :goto_6
    add-int/lit8 v9, v9, 0x1

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :goto_7
    :try_start_9
    const-string v2, "PackageInfo"

    .line 209
    .line 210
    const-string v3, "Unable to read Phenotype PackageMetadata from assets."

    .line 211
    .line 212
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    .line 214
    .line 215
    :cond_3
    invoke-virtual {v6, v1}, Lhb;->b(Z)Le53;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    sput-object v0, Lbc5;->q:Le53;

    .line 220
    .line 221
    :cond_4
    monitor-exit v5

    .line 222
    goto :goto_9

    .line 223
    :goto_8
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 224
    throw p0

    .line 225
    :cond_5
    :goto_9
    iget-object p0, p0, Lw85;->p:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast p0, Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v0, p0}, Le53;->containsKey(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-nez v0, :cond_6

    .line 234
    .line 235
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    add-int/lit16 v0, v0, 0xad

    .line 246
    .line 247
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 248
    .line 249
    .line 250
    const-string v0, "Config package "

    .line 251
    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string p0, " cannot use FILE backing without declarative registration. See go/phenotype-android-integration#phenotype for more information. This will lead to stale flags."

    .line 259
    .line 260
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    const-string v0, "FilePhenotypeFlags"

    .line 268
    .line 269
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    :cond_6
    return-void

    .line 273
    :pswitch_2
    iget-object v0, p0, Lw85;->p:Ljava/lang/Object;

    .line 274
    .line 275
    move-object v1, v0

    .line 276
    check-cast v1, Ln25;

    .line 277
    .line 278
    :try_start_a
    iget-object v0, v1, Ln25;->p:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v0, Lwt3;

    .line 281
    .line 282
    iget-object p0, p0, Lw85;->o:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast p0, Low3;

    .line 285
    .line 286
    invoke-virtual {p0}, Low3;->g()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    invoke-interface {v0, p0}, Lwt3;->then(Ljava/lang/Object;)Low3;

    .line 291
    .line 292
    .line 293
    move-result-object p0
    :try_end_a
    .catch Lhb3; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 294
    if-nez p0, :cond_7

    .line 295
    .line 296
    new-instance p0, Ljava/lang/NullPointerException;

    .line 297
    .line 298
    const-string v0, "Continuation returned null"

    .line 299
    .line 300
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, p0}, Ln25;->c(Ljava/lang/Exception;)V

    .line 304
    .line 305
    .line 306
    goto :goto_c

    .line 307
    :cond_7
    sget-object v0, Lqw3;->b:Lgu0;

    .line 308
    .line 309
    invoke-virtual {p0, v0, v1}, Low3;->c(Ljava/util/concurrent/Executor;Ljp2;)Lef5;

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0, v0, v1}, Low3;->b(Ljava/util/concurrent/Executor;Lbp2;)Lef5;

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0, v0, v1}, Low3;->a(Ljava/util/concurrent/Executor;Lwo2;)Lef5;

    .line 316
    .line 317
    .line 318
    goto :goto_c

    .line 319
    :catch_3
    move-exception v0

    .line 320
    move-object p0, v0

    .line 321
    goto :goto_a

    .line 322
    :catch_4
    move-exception v0

    .line 323
    move-object p0, v0

    .line 324
    goto :goto_b

    .line 325
    :goto_a
    invoke-virtual {v1, p0}, Ln25;->c(Ljava/lang/Exception;)V

    .line 326
    .line 327
    .line 328
    goto :goto_c

    .line 329
    :catch_5
    invoke-virtual {v1}, Ln25;->a()V

    .line 330
    .line 331
    .line 332
    goto :goto_c

    .line 333
    :goto_b
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    instance-of v0, v0, Ljava/lang/Exception;

    .line 338
    .line 339
    if-eqz v0, :cond_8

    .line 340
    .line 341
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 342
    .line 343
    .line 344
    move-result-object p0

    .line 345
    check-cast p0, Ljava/lang/Exception;

    .line 346
    .line 347
    invoke-virtual {v1, p0}, Ln25;->c(Ljava/lang/Exception;)V

    .line 348
    .line 349
    .line 350
    goto :goto_c

    .line 351
    :cond_8
    invoke-virtual {v1, p0}, Ln25;->c(Ljava/lang/Exception;)V

    .line 352
    .line 353
    .line 354
    :goto_c
    return-void

    .line 355
    :pswitch_3
    iget-object v0, p0, Lw85;->o:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast v0, Lra3;

    .line 358
    .line 359
    iget-object p0, p0, Lw85;->p:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast p0, Landroid/app/job/JobParameters;

    .line 362
    .line 363
    const-string v1, "FA"

    .line 364
    .line 365
    const-string v2, "[sgtm] AppMeasurementJobService processed last Scion upload request."

    .line 366
    .line 367
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .line 369
    .line 370
    iget-object v0, v0, Lra3;->o:Ljava/lang/Object;

    .line 371
    .line 372
    check-cast v0, Landroid/app/Service;

    .line 373
    .line 374
    check-cast v0, Lu95;

    .line 375
    .line 376
    invoke-interface {v0, p0}, Lu95;->c(Landroid/app/job/JobParameters;)V

    .line 377
    .line 378
    .line 379
    return-void

    .line 380
    :pswitch_4
    iget-object v0, p0, Lw85;->o:Ljava/lang/Object;

    .line 381
    .line 382
    check-cast v0, Lpb5;

    .line 383
    .line 384
    invoke-virtual {v0}, Lpb5;->V()V

    .line 385
    .line 386
    .line 387
    iget-object p0, p0, Lw85;->p:Ljava/lang/Object;

    .line 388
    .line 389
    check-cast p0, Ljava/lang/Runnable;

    .line 390
    .line 391
    invoke-virtual {v0}, Lpb5;->d()Lj45;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-virtual {v1}, Lj45;->v()V

    .line 396
    .line 397
    .line 398
    iget-object v1, v0, Lpb5;->p:Ljava/util/ArrayList;

    .line 399
    .line 400
    if-nez v1, :cond_9

    .line 401
    .line 402
    new-instance v1, Ljava/util/ArrayList;

    .line 403
    .line 404
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .line 406
    .line 407
    iput-object v1, v0, Lpb5;->p:Ljava/util/ArrayList;

    .line 408
    .line 409
    :cond_9
    iget-object v1, v0, Lpb5;->p:Ljava/util/ArrayList;

    .line 410
    .line 411
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0}, Lpb5;->q()V

    .line 415
    .line 416
    .line 417
    return-void

    .line 418
    :pswitch_5
    iget-object v0, p0, Lw85;->p:Ljava/lang/Object;

    .line 419
    .line 420
    check-cast v0, Lj95;

    .line 421
    .line 422
    iget-object v0, v0, Lj95;->c:Lo95;

    .line 423
    .line 424
    iput-object v2, v0, Lo95;->d:Ln05;

    .line 425
    .line 426
    iget-object v3, p0, Lw85;->o:Ljava/lang/Object;

    .line 427
    .line 428
    check-cast v3, Lcom/google/android/gms/common/ConnectionResult;

    .line 429
    .line 430
    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    .line 431
    .line 432
    .line 433
    move-result v3

    .line 434
    const/16 v4, 0x1e61

    .line 435
    .line 436
    if-ne v3, v4, :cond_b

    .line 437
    .line 438
    iget-object v3, v0, Lo95;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 439
    .line 440
    if-nez v3, :cond_a

    .line 441
    .line 442
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    iput-object v1, v0, Lo95;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 447
    .line 448
    :cond_a
    iget-object v0, v0, Lo95;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 449
    .line 450
    new-instance v1, Lo9;

    .line 451
    .line 452
    const/16 v3, 0x12

    .line 453
    .line 454
    invoke-direct {v1, v3, p0}, Lo9;-><init>(ILjava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    sget-object p0, Le05;->Z:Ld05;

    .line 458
    .line 459
    invoke-virtual {p0, v2}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object p0

    .line 463
    check-cast p0, Ljava/lang/Long;

    .line 464
    .line 465
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 466
    .line 467
    .line 468
    move-result-wide v2

    .line 469
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 470
    .line 471
    invoke-interface {v0, v1, v2, v3, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 472
    .line 473
    .line 474
    goto :goto_d

    .line 475
    :cond_b
    invoke-virtual {v0}, Lo95;->K()V

    .line 476
    .line 477
    .line 478
    :goto_d
    return-void

    .line 479
    :pswitch_6
    iget-object v0, p0, Lw85;->p:Ljava/lang/Object;

    .line 480
    .line 481
    check-cast v0, Lj95;

    .line 482
    .line 483
    iget-object v0, v0, Lj95;->c:Lo95;

    .line 484
    .line 485
    iget-object p0, p0, Lw85;->o:Ljava/lang/Object;

    .line 486
    .line 487
    check-cast p0, Landroid/content/ComponentName;

    .line 488
    .line 489
    invoke-virtual {v0, p0}, Lo95;->G(Landroid/content/ComponentName;)V

    .line 490
    .line 491
    .line 492
    return-void

    .line 493
    :pswitch_7
    iget-object v0, p0, Lw85;->p:Ljava/lang/Object;

    .line 494
    .line 495
    move-object v1, v0

    .line 496
    check-cast v1, Lo95;

    .line 497
    .line 498
    iget-object v2, v1, Lo95;->d:Ln05;

    .line 499
    .line 500
    iget-object v0, v1, Lib0;->a:Ljava/lang/Object;

    .line 501
    .line 502
    check-cast v0, Lr45;

    .line 503
    .line 504
    if-nez v2, :cond_c

    .line 505
    .line 506
    iget-object p0, v0, Lr45;->f:La25;

    .line 507
    .line 508
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 509
    .line 510
    .line 511
    iget-object p0, p0, La25;->f:Lx15;

    .line 512
    .line 513
    const-string v0, "Failed to send current screen to service"

    .line 514
    .line 515
    invoke-virtual {p0, v0}, Lx15;->a(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    goto :goto_10

    .line 519
    :cond_c
    :try_start_b
    iget-object p0, p0, Lw85;->o:Ljava/lang/Object;

    .line 520
    .line 521
    check-cast p0, Lw75;

    .line 522
    .line 523
    if-nez p0, :cond_d

    .line 524
    .line 525
    iget-object p0, v0, Lr45;->a:Landroid/content/Context;

    .line 526
    .line 527
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v7

    .line 531
    const-wide/16 v3, 0x0

    .line 532
    .line 533
    const/4 v5, 0x0

    .line 534
    const/4 v6, 0x0

    .line 535
    invoke-interface/range {v2 .. v7}, Ln05;->p(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    goto :goto_e

    .line 539
    :catch_6
    move-exception v0

    .line 540
    move-object p0, v0

    .line 541
    goto :goto_f

    .line 542
    :cond_d
    iget-wide v3, p0, Lw75;->c:J

    .line 543
    .line 544
    iget-object v5, p0, Lw75;->a:Ljava/lang/String;

    .line 545
    .line 546
    iget-object v6, p0, Lw75;->b:Ljava/lang/String;

    .line 547
    .line 548
    iget-object p0, v0, Lr45;->a:Landroid/content/Context;

    .line 549
    .line 550
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v7

    .line 554
    invoke-interface/range {v2 .. v7}, Ln05;->p(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    :goto_e
    invoke-virtual {v1}, Lo95;->I()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_6

    .line 558
    .line 559
    .line 560
    goto :goto_10

    .line 561
    :goto_f
    iget-object v0, v1, Lib0;->a:Ljava/lang/Object;

    .line 562
    .line 563
    check-cast v0, Lr45;

    .line 564
    .line 565
    iget-object v0, v0, Lr45;->f:La25;

    .line 566
    .line 567
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 568
    .line 569
    .line 570
    iget-object v0, v0, La25;->f:Lx15;

    .line 571
    .line 572
    const-string v1, "Failed to send current screen to the service"

    .line 573
    .line 574
    invoke-virtual {v0, p0, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    :goto_10
    return-void

    .line 578
    nop

    .line 579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

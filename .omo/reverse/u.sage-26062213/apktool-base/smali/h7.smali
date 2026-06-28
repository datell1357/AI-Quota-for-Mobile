.class public final synthetic Lh7;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 17
    iput p1, p0, Lh7;->n:I

    iput-object p2, p0, Lh7;->o:Ljava/lang/Object;

    iput-object p3, p0, Lh7;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(JLjava/util/ArrayList;Landroid/content/Context;)V
    .locals 0

    .line 15
    const/16 p1, 0x14

    iput p1, p0, Lh7;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lh7;->o:Ljava/lang/Object;

    iput-object p4, p0, Lh7;->p:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lij0;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    iput v0, p0, Lh7;->n:I

    .line 4
    .line 5
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lh7;->o:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p2, p0, Lh7;->p:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method public synthetic constructor <init>(Ls80;ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 16
    const/4 p2, 0x0

    iput p2, p0, Lh7;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh7;->o:Ljava/lang/Object;

    iput-object p3, p0, Lh7;->p:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lh7;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lh7;->o:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lmh4;

    .line 12
    .line 13
    iget-object p0, p0, Lh7;->p:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lh22;

    .line 16
    .line 17
    iget-boolean v1, v0, Lmh4;->p:Z

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iput-object p0, v0, Lmh4;->q:Lh22;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lh22;->a(Lo22;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :pswitch_0
    iget-object v0, p0, Lh7;->o:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lq51;

    .line 30
    .line 31
    iget-object p0, p0, Lh7;->p:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Ljava/util/List;

    .line 34
    .line 35
    iget-object v1, v0, Lq51;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Luc2;

    .line 38
    .line 39
    iget-object v0, v0, Lq51;->a:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v0, p0}, Luc2;->i(Ljava/lang/String;Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_1
    iget-object v0, p0, Lh7;->o:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    iget-object p0, p0, Lh7;->p:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p0, Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    sget-object v1, Lez3;->a:Lra3;

    .line 57
    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    new-array v2, v3, [Ljava/lang/Object;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    new-instance v1, Landroid/content/Intent;

    .line 77
    .line 78
    const-class v2, Lu/sage/widget/UsageWidgetProvider;

    .line 79
    .line 80
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .line 82
    .line 83
    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    const-string v2, "appWidgetIds"

    .line 89
    .line 90
    invoke-static {v0}, Lo70;->B0(Ljava/util/List;)[I

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_2
    iget-object v0, p0, Lh7;->o:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, Ljava/lang/Runnable;

    .line 104
    .line 105
    iget-object p0, p0, Lh7;->p:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p0, Lji3;

    .line 108
    .line 109
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lji3;->a()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    invoke-virtual {p0}, Lji3;->a()V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :pswitch_3
    iget-object v0, p0, Lh7;->o:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v0, Lqd1;

    .line 124
    .line 125
    iget-object p0, p0, Lh7;->p:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast p0, Lnr3;

    .line 128
    .line 129
    iget-object v0, v0, Lqd1;->p:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v0, Lpc4;

    .line 132
    .line 133
    const/4 v1, 0x3

    .line 134
    invoke-virtual {v0, p0, v1}, Lpc4;->d(Lnr3;I)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :pswitch_4
    iget-object v0, p0, Lh7;->o:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v0, Log;

    .line 141
    .line 142
    iget-object p0, p0, Lh7;->p:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p0, Landroid/graphics/Typeface;

    .line 145
    .line 146
    invoke-virtual {v0, p0}, Log;->b(Landroid/graphics/Typeface;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :pswitch_5
    iget-object v0, p0, Lh7;->o:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v0, Lj63;

    .line 153
    .line 154
    iget-object p0, p0, Lh7;->p:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 157
    .line 158
    :try_start_1
    iget-object v0, v0, Lj63;->h:Lrp;

    .line 159
    .line 160
    sget-object v1, Lry2;->p:Lry2;

    .line 161
    .line 162
    iget-object v0, v0, Lrp;->b:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v0, Lhp;

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Lhp;->b(Lry2;)Lhp;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {}, Ly14;->a()Ly14;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    iget-object v1, v1, Ly14;->d:Led0;

    .line 175
    .line 176
    invoke-virtual {v1, v0, v2}, Led0;->g(Lhp;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    .line 178
    .line 179
    :catch_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :pswitch_6
    iget-object v0, p0, Lh7;->o:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v0, Lez2;

    .line 186
    .line 187
    iget-object p0, p0, Lh7;->p:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast p0, Lbg4;

    .line 190
    .line 191
    iget-object v1, v0, Lez2;->k:Ljava/lang/Object;

    .line 192
    .line 193
    monitor-enter v1

    .line 194
    :try_start_2
    iget-object v0, v0, Lez2;->j:Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    move v4, v3

    .line 201
    :goto_0
    if-ge v4, v2, :cond_1

    .line 202
    .line 203
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    add-int/lit8 v4, v4, 0x1

    .line 208
    .line 209
    check-cast v5, Lf31;

    .line 210
    .line 211
    invoke-interface {v5, p0, v3}, Lf31;->d(Lbg4;Z)V

    .line 212
    .line 213
    .line 214
    goto :goto_0

    .line 215
    :catchall_1
    move-exception v0

    .line 216
    move-object p0, v0

    .line 217
    goto :goto_1

    .line 218
    :cond_1
    monitor-exit v1

    .line 219
    return-void

    .line 220
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 221
    throw p0

    .line 222
    :pswitch_7
    iget-object v0, p0, Lh7;->o:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    .line 225
    .line 226
    iget-object p0, p0, Lh7;->p:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast p0, Landroid/app/job/JobParameters;

    .line 229
    .line 230
    sget v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->n:I

    .line 231
    .line 232
    invoke-virtual {v0, p0, v3}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :pswitch_8
    iget-object v0, p0, Lh7;->o:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v0, Lo20;

    .line 239
    .line 240
    iget-object p0, p0, Lh7;->p:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast p0, Lxi1;

    .line 243
    .line 244
    invoke-virtual {v0, p0}, Lo20;->H(Lji0;)V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :pswitch_9
    iget-object v0, p0, Lh7;->o:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v0, Ljava/util/concurrent/Callable;

    .line 251
    .line 252
    iget-object p0, p0, Lh7;->p:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast p0, Lwu4;

    .line 255
    .line 256
    iget-object p0, p0, Lwu4;->o:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast p0, Lsr0;

    .line 259
    .line 260
    :try_start_3
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {p0, v0}, Lb2;->j(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 265
    .line 266
    .line 267
    goto :goto_2

    .line 268
    :catch_1
    move-exception v0

    .line 269
    invoke-virtual {p0, v0}, Lb2;->k(Ljava/lang/Throwable;)Z

    .line 270
    .line 271
    .line 272
    :goto_2
    return-void

    .line 273
    :pswitch_a
    iget-object v0, p0, Lh7;->o:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v0, Lgl0;

    .line 276
    .line 277
    iget-object p0, p0, Lh7;->p:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast p0, Ljava/lang/Runnable;

    .line 280
    .line 281
    iget v1, v0, Lgl0;->c:I

    .line 282
    .line 283
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 284
    .line 285
    .line 286
    iget-object v0, v0, Lgl0;->d:Landroid/os/StrictMode$ThreadPolicy;

    .line 287
    .line 288
    if-eqz v0, :cond_2

    .line 289
    .line 290
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 291
    .line 292
    .line 293
    :cond_2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 294
    .line 295
    .line 296
    return-void

    .line 297
    :pswitch_b
    iget-object v0, p0, Lh7;->o:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v0, Lij0;

    .line 300
    .line 301
    iget-object p0, p0, Lh7;->p:Ljava/lang/Object;

    .line 302
    .line 303
    move-object v3, p0

    .line 304
    check-cast v3, Ljava/lang/Exception;

    .line 305
    .line 306
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 307
    .line 308
    iget-object v0, v0, Lij0;->g:Ldj0;

    .line 309
    .line 310
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    const-string v2, "FirebaseCrashlytics"

    .line 318
    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 320
    .line 321
    .line 322
    move-result-wide v5

    .line 323
    iget-object v7, v0, Ldj0;->n:Lpk0;

    .line 324
    .line 325
    if-eqz v7, :cond_3

    .line 326
    .line 327
    iget-object v7, v7, Lpk0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 328
    .line 329
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 330
    .line 331
    .line 332
    move-result v7

    .line 333
    if-eqz v7, :cond_3

    .line 334
    .line 335
    goto :goto_3

    .line 336
    :cond_3
    const-wide/16 v7, 0x3e8

    .line 337
    .line 338
    div-long/2addr v5, v7

    .line 339
    invoke-virtual {v0}, Ldj0;->e()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v7

    .line 343
    if-nez v7, :cond_4

    .line 344
    .line 345
    const-string p0, "Tried to write a non-fatal exception while no session was open."

    .line 346
    .line 347
    invoke-static {v2, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    .line 349
    .line 350
    goto :goto_3

    .line 351
    :cond_4
    move-wide v8, v5

    .line 352
    new-instance v6, Ls21;

    .line 353
    .line 354
    invoke-direct {v6, v7, v8, v9, p0}, Ls21;-><init>(Ljava/lang/String;JLjava/util/Map;)V

    .line 355
    .line 356
    .line 357
    iget-object p0, v0, Ldj0;->m:Lga0;

    .line 358
    .line 359
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    .line 361
    .line 362
    const-string v0, "Persisting non-fatal event for session "

    .line 363
    .line 364
    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    const/4 v5, 0x2

    .line 369
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 370
    .line 371
    .line 372
    move-result v5

    .line 373
    if-eqz v5, :cond_5

    .line 374
    .line 375
    invoke-static {v2, v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    .line 377
    .line 378
    :cond_5
    const-string v5, "error"

    .line 379
    .line 380
    const/4 v7, 0x0

    .line 381
    move-object v2, p0

    .line 382
    invoke-virtual/range {v2 .. v7}, Lga0;->n(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ls21;Z)V

    .line 383
    .line 384
    .line 385
    :goto_3
    return-void

    .line 386
    :pswitch_c
    iget-object v0, p0, Lh7;->o:Ljava/lang/Object;

    .line 387
    .line 388
    check-cast v0, Ldj0;

    .line 389
    .line 390
    iget-object p0, p0, Lh7;->p:Ljava/lang/Object;

    .line 391
    .line 392
    check-cast p0, Ljava/lang/String;

    .line 393
    .line 394
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 395
    .line 396
    invoke-virtual {v0, p0, v1}, Ldj0;->c(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 397
    .line 398
    .line 399
    return-void

    .line 400
    :pswitch_d
    iget-object v0, p0, Lh7;->o:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast v0, Ljava/util/List;

    .line 403
    .line 404
    iget-object p0, p0, Lh7;->p:Ljava/lang/Object;

    .line 405
    .line 406
    check-cast p0, Lcf0;

    .line 407
    .line 408
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    if-eqz v1, :cond_7

    .line 417
    .line 418
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    check-cast v1, Lbr;

    .line 423
    .line 424
    iget-object v2, p0, Lcf0;->d:Ljava/lang/Object;

    .line 425
    .line 426
    iget-object v3, v1, Lbr;->a:Lcr;

    .line 427
    .line 428
    invoke-virtual {v3, v2}, Lcr;->e(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    if-eqz v2, :cond_6

    .line 433
    .line 434
    new-instance v2, Lrf0;

    .line 435
    .line 436
    invoke-virtual {v3}, Lcr;->d()I

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    invoke-direct {v2, v3}, Lrf0;-><init>(I)V

    .line 441
    .line 442
    .line 443
    goto :goto_5

    .line 444
    :cond_6
    sget-object v2, Lqf0;->a:Lqf0;

    .line 445
    .line 446
    :goto_5
    iget-object v1, v1, Lbr;->b:Lhz2;

    .line 447
    .line 448
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v1, v2}, Lhz2;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    goto :goto_4

    .line 455
    :cond_7
    return-void

    .line 456
    :pswitch_e
    iget-object v0, p0, Lh7;->o:Ljava/lang/Object;

    .line 457
    .line 458
    move-object v2, v0

    .line 459
    check-cast v2, Ls12;

    .line 460
    .line 461
    iget-object p0, p0, Lh7;->p:Ljava/lang/Object;

    .line 462
    .line 463
    check-cast p0, Ln03;

    .line 464
    .line 465
    monitor-enter v2

    .line 466
    :try_start_4
    iget-object v0, v2, Ls12;->b:Ljava/util/Set;

    .line 467
    .line 468
    if-nez v0, :cond_8

    .line 469
    .line 470
    iget-object v0, v2, Ls12;->a:Ljava/util/Set;

    .line 471
    .line 472
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    goto :goto_6

    .line 476
    :catchall_2
    move-exception v0

    .line 477
    move-object p0, v0

    .line 478
    goto :goto_7

    .line 479
    :cond_8
    iget-object v0, v2, Ls12;->b:Ljava/util/Set;

    .line 480
    .line 481
    invoke-interface {p0}, Ln03;->get()Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object p0

    .line 485
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 486
    .line 487
    .line 488
    :goto_6
    monitor-exit v2

    .line 489
    return-void

    .line 490
    :goto_7
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 491
    throw p0

    .line 492
    :pswitch_f
    iget-object v0, p0, Lh7;->o:Ljava/lang/Object;

    .line 493
    .line 494
    move-object v2, v0

    .line 495
    check-cast v2, Ldr2;

    .line 496
    .line 497
    iget-object p0, p0, Lh7;->p:Ljava/lang/Object;

    .line 498
    .line 499
    check-cast p0, Ln03;

    .line 500
    .line 501
    iget-object v0, v2, Ldr2;->b:Ln03;

    .line 502
    .line 503
    sget-object v3, Ldr2;->d:Lea0;

    .line 504
    .line 505
    if-ne v0, v3, :cond_9

    .line 506
    .line 507
    monitor-enter v2

    .line 508
    :try_start_6
    iget-object v0, v2, Ldr2;->a:Lxq0;

    .line 509
    .line 510
    iput-object v1, v2, Ldr2;->a:Lxq0;

    .line 511
    .line 512
    iput-object p0, v2, Ldr2;->b:Ln03;

    .line 513
    .line 514
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 515
    invoke-interface {v0, p0}, Lxq0;->a(Ln03;)V

    .line 516
    .line 517
    .line 518
    goto :goto_8

    .line 519
    :catchall_3
    move-exception v0

    .line 520
    move-object p0, v0

    .line 521
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 522
    throw p0

    .line 523
    :cond_9
    const-string p0, "provide() can be called only once."

    .line 524
    .line 525
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    :goto_8
    return-void

    .line 529
    :pswitch_10
    iget-object v0, p0, Lh7;->o:Ljava/lang/Object;

    .line 530
    .line 531
    check-cast v0, Lu90;

    .line 532
    .line 533
    iget-object p0, p0, Lh7;->p:Ljava/lang/Object;

    .line 534
    .line 535
    check-cast p0, Luo2;

    .line 536
    .line 537
    invoke-virtual {v0}, Lu90;->getLifecycle()Lh22;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    new-instance v2, Ll90;

    .line 542
    .line 543
    invoke-direct {v2, v3, p0, v0}, Ll90;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v1, v2}, Lh22;->a(Lo22;)V

    .line 547
    .line 548
    .line 549
    return-void

    .line 550
    :pswitch_11
    iget-object v0, p0, Lh7;->o:Ljava/lang/Object;

    .line 551
    .line 552
    check-cast v0, Leg4;

    .line 553
    .line 554
    iget-object p0, p0, Lh7;->p:Ljava/lang/Object;

    .line 555
    .line 556
    check-cast p0, Ljava/util/UUID;

    .line 557
    .line 558
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object p0

    .line 562
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    .line 564
    .line 565
    invoke-static {v0, p0}, Lht4;->h(Leg4;Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    return-void

    .line 569
    :pswitch_12
    iget-object v0, p0, Lh7;->o:Ljava/lang/Object;

    .line 570
    .line 571
    check-cast v0, Lu/sage/a;

    .line 572
    .line 573
    iget-object p0, p0, Lh7;->p:Ljava/lang/Object;

    .line 574
    .line 575
    check-cast p0, Landroid/app/NotificationManager;

    .line 576
    .line 577
    sget-object v4, Lu/sage/a;->F:Lwr3;

    .line 578
    .line 579
    invoke-virtual {v4}, Lwr3;->getValue()Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v5

    .line 583
    check-cast v5, Ljava/util/Map;

    .line 584
    .line 585
    invoke-virtual {v0}, Lu/sage/a;->r()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v6

    .line 589
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 590
    .line 591
    .line 592
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 593
    .line 594
    invoke-direct {v7, v5}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 595
    .line 596
    .line 597
    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    invoke-interface {v7}, Ljava/util/Map;->size()I

    .line 601
    .line 602
    .line 603
    move-result v5

    .line 604
    if-eqz v5, :cond_b

    .line 605
    .line 606
    if-eq v5, v2, :cond_a

    .line 607
    .line 608
    goto :goto_9

    .line 609
    :cond_a
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 610
    .line 611
    .line 612
    move-result-object v2

    .line 613
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v2

    .line 621
    check-cast v2, Ljava/util/Map$Entry;

    .line 622
    .line 623
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v5

    .line 627
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v2

    .line 631
    invoke-static {v5, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 632
    .line 633
    .line 634
    move-result-object v7

    .line 635
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 636
    .line 637
    .line 638
    goto :goto_9

    .line 639
    :cond_b
    sget-object v7, Lh01;->n:Lh01;

    .line 640
    .line 641
    :goto_9
    invoke-virtual {v4, v1, v7}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 642
    .line 643
    .line 644
    iget-object v2, v0, Lu/sage/a;->p:Landroid/webkit/WebView;

    .line 645
    .line 646
    if-eqz v2, :cond_c

    .line 647
    .line 648
    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    .line 649
    .line 650
    .line 651
    :cond_c
    iput-object v1, v0, Lu/sage/a;->p:Landroid/webkit/WebView;

    .line 652
    .line 653
    :try_start_8
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    .line 654
    .line 655
    .line 656
    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 657
    goto :goto_a

    .line 658
    :catch_2
    new-array p0, v3, [Landroid/service/notification/StatusBarNotification;

    .line 659
    .line 660
    :goto_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 661
    .line 662
    .line 663
    array-length v1, p0

    .line 664
    move v2, v3

    .line 665
    :goto_b
    if-ge v2, v1, :cond_e

    .line 666
    .line 667
    aget-object v4, p0, v2

    .line 668
    .line 669
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 670
    .line 671
    .line 672
    move-result v4

    .line 673
    invoke-virtual {v0}, Lu/sage/a;->m()I

    .line 674
    .line 675
    .line 676
    move-result v5

    .line 677
    if-ne v4, v5, :cond_d

    .line 678
    .line 679
    goto :goto_c

    .line 680
    :cond_d
    add-int/lit8 v2, v2, 0x1

    .line 681
    .line 682
    goto :goto_b

    .line 683
    :cond_e
    :goto_c
    sget-object p0, Lez3;->a:Lra3;

    .line 684
    .line 685
    invoke-virtual {v0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    new-array v0, v3, [Ljava/lang/Object;

    .line 689
    .line 690
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 691
    .line 692
    .line 693
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 694
    .line 695
    .line 696
    return-void

    .line 697
    :pswitch_13
    iget-object v0, p0, Lh7;->o:Ljava/lang/Object;

    .line 698
    .line 699
    check-cast v0, Lha;

    .line 700
    .line 701
    iget-object p0, p0, Lh7;->p:Ljava/lang/Object;

    .line 702
    .line 703
    check-cast p0, Landroid/util/LongSparseArray;

    .line 704
    .line 705
    invoke-static {v0, p0}, Lnt1;->t(Lha;Landroid/util/LongSparseArray;)V

    .line 706
    .line 707
    .line 708
    return-void

    .line 709
    :pswitch_14
    iget-object v0, p0, Lh7;->o:Ljava/lang/Object;

    .line 710
    .line 711
    check-cast v0, Ls80;

    .line 712
    .line 713
    iget-object p0, p0, Lh7;->p:Ljava/lang/Object;

    .line 714
    .line 715
    check-cast p0, Ldp1;

    .line 716
    .line 717
    invoke-virtual {v0, p0}, Ls80;->q(Ldp1;)V

    .line 718
    .line 719
    .line 720
    return-void

    .line 721
    :pswitch_15
    iget-object v0, p0, Lh7;->o:Ljava/lang/Object;

    .line 722
    .line 723
    check-cast v0, Ls80;

    .line 724
    .line 725
    iget-object p0, p0, Lh7;->p:Ljava/lang/Object;

    .line 726
    .line 727
    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 728
    .line 729
    invoke-virtual {v0, p0}, Ls80;->t(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 730
    .line 731
    .line 732
    return-void

    .line 733
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

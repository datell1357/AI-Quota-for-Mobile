.class public final synthetic Lj4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 16
    iput p5, p0, Lj4;->n:I

    iput-object p1, p0, Lj4;->o:Ljava/lang/Object;

    iput-object p2, p0, Lj4;->p:Ljava/lang/Object;

    iput-object p3, p0, Lj4;->q:Ljava/lang/Object;

    iput-object p4, p0, Lj4;->r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ly3;Lne1;Lpg2;Lpg2;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lj4;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lj4;->o:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lj4;->p:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Lj4;->q:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p5, p0, Lj4;->r:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lj4;->n:I

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
    iget-object v0, p0, Lj4;->o:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lag4;

    .line 12
    .line 13
    iget-object v1, p0, Lj4;->p:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/util/UUID;

    .line 16
    .line 17
    iget-object v2, p0, Lj4;->q:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Lvb1;

    .line 20
    .line 21
    iget-object p0, p0, Lj4;->r:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v4, v0, Lag4;->c:Lqg4;

    .line 30
    .line 31
    invoke-virtual {v4, v1}, Lqg4;->c(Ljava/lang/String;)Log4;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-eqz v4, :cond_3

    .line 36
    .line 37
    iget-object v5, v4, Log4;->b:Lcg4;

    .line 38
    .line 39
    invoke-virtual {v5}, Lcg4;->a()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_3

    .line 44
    .line 45
    iget-object v0, v0, Lag4;->b:Lez2;

    .line 46
    .line 47
    const-string v5, "Moving WorkSpec ("

    .line 48
    .line 49
    iget-object v6, v0, Lez2;->k:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter v6

    .line 52
    :try_start_0
    invoke-static {}, Lt72;->g()Lt72;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    sget-object v8, Lez2;->l:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v9, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v5, ") to the foreground"

    .line 67
    .line 68
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v7, v8, v5}, Lt72;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v5, v0, Lez2;->g:Ljava/util/HashMap;

    .line 79
    .line 80
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Lhh4;

    .line 85
    .line 86
    if-eqz v5, :cond_2

    .line 87
    .line 88
    iget-object v7, v0, Lez2;->a:Landroid/os/PowerManager$WakeLock;

    .line 89
    .line 90
    if-nez v7, :cond_0

    .line 91
    .line 92
    iget-object v7, v0, Lez2;->b:Landroid/content/Context;

    .line 93
    .line 94
    invoke-static {v7}, Lmc4;->a(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    iput-object v7, v0, Lez2;->a:Landroid/os/PowerManager$WakeLock;

    .line 99
    .line 100
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    move-object p0, v0

    .line 106
    goto :goto_2

    .line 107
    :cond_0
    :goto_0
    iget-object v7, v0, Lez2;->f:Ljava/util/HashMap;

    .line 108
    .line 109
    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    iget-object v1, v0, Lez2;->b:Landroid/content/Context;

    .line 113
    .line 114
    iget-object v5, v5, Lhh4;->a:Log4;

    .line 115
    .line 116
    invoke-static {v5}, Lrg4;->a(Log4;)Lbg4;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-static {v1, v5, v2}, Luv3;->a(Landroid/content/Context;Lbg4;Lvb1;)Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iget-object v0, v0, Lez2;->b:Landroid/content/Context;

    .line 125
    .line 126
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 127
    .line 128
    const/16 v7, 0x1a

    .line 129
    .line 130
    if-lt v5, v7, :cond_1

    .line 131
    .line 132
    invoke-static {v0, v1}, Lsf;->w(Landroid/content/Context;Landroid/content/Intent;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 137
    .line 138
    .line 139
    :cond_2
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-static {v4}, Lrg4;->a(Log4;)Lbg4;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    sget-object v1, Luv3;->w:Ljava/lang/String;

    .line 145
    .line 146
    new-instance v1, Landroid/content/Intent;

    .line 147
    .line 148
    const-class v4, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 149
    .line 150
    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .line 152
    .line 153
    const-string v4, "ACTION_NOTIFY"

    .line 154
    .line 155
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    const-string v4, "KEY_NOTIFICATION_ID"

    .line 159
    .line 160
    iget v5, v2, Lvb1;->a:I

    .line 161
    .line 162
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    const-string v4, "KEY_FOREGROUND_SERVICE_TYPE"

    .line 166
    .line 167
    iget v5, v2, Lvb1;->b:I

    .line 168
    .line 169
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    const-string v4, "KEY_NOTIFICATION"

    .line 173
    .line 174
    iget-object v2, v2, Lvb1;->c:Landroid/app/Notification;

    .line 175
    .line 176
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 177
    .line 178
    .line 179
    const-string v2, "KEY_WORKSPEC_ID"

    .line 180
    .line 181
    iget-object v4, v0, Lbg4;->a:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    .line 185
    .line 186
    const-string v2, "KEY_GENERATION"

    .line 187
    .line 188
    iget v0, v0, Lbg4;->b:I

    .line 189
    .line 190
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :goto_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    throw p0

    .line 199
    :cond_3
    const-string p0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 200
    .line 201
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :goto_3
    return-object v3

    .line 205
    :pswitch_0
    iget-object v0, p0, Lj4;->o:Ljava/lang/Object;

    .line 206
    .line 207
    move-object v6, v0

    .line 208
    check-cast v6, Ljava/lang/Float;

    .line 209
    .line 210
    iget-object v0, p0, Lj4;->p:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v0, Lpq1;

    .line 213
    .line 214
    iget-object v3, p0, Lj4;->q:Ljava/lang/Object;

    .line 215
    .line 216
    move-object v7, v3

    .line 217
    check-cast v7, Ljava/lang/Float;

    .line 218
    .line 219
    iget-object p0, p0, Lj4;->r:Ljava/lang/Object;

    .line 220
    .line 221
    move-object v4, p0

    .line 222
    check-cast v4, Loq1;

    .line 223
    .line 224
    iget-object p0, v0, Lpq1;->n:Ljava/lang/Float;

    .line 225
    .line 226
    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result p0

    .line 230
    if-eqz p0, :cond_4

    .line 231
    .line 232
    iget-object p0, v0, Lpq1;->o:Ljava/lang/Float;

    .line 233
    .line 234
    invoke-virtual {v7, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result p0

    .line 238
    if-nez p0, :cond_5

    .line 239
    .line 240
    :cond_4
    iput-object v6, v0, Lpq1;->n:Ljava/lang/Float;

    .line 241
    .line 242
    iput-object v7, v0, Lpq1;->o:Ljava/lang/Float;

    .line 243
    .line 244
    new-instance v3, Llw3;

    .line 245
    .line 246
    const/4 v8, 0x0

    .line 247
    sget-object v5, Lk30;->m:Le34;

    .line 248
    .line 249
    invoke-direct/range {v3 .. v8}, Llw3;-><init>(Lve;Le34;Ljava/lang/Object;Ljava/lang/Object;Lbf;)V

    .line 250
    .line 251
    .line 252
    iput-object v3, v0, Lpq1;->q:Llw3;

    .line 253
    .line 254
    iget-object p0, v0, Lpq1;->u:Lrq1;

    .line 255
    .line 256
    iget-object p0, p0, Lrq1;->b:Lws2;

    .line 257
    .line 258
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 259
    .line 260
    invoke-virtual {p0, v3}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    iput-boolean v1, v0, Lpq1;->r:Z

    .line 264
    .line 265
    iput-boolean v2, v0, Lpq1;->s:Z

    .line 266
    .line 267
    :cond_5
    sget-object p0, Lt64;->a:Lt64;

    .line 268
    .line 269
    return-object p0

    .line 270
    :pswitch_1
    iget-object v0, p0, Lj4;->o:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v0, Ly3;

    .line 273
    .line 274
    iget-object v4, p0, Lj4;->p:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v4, Lne1;

    .line 277
    .line 278
    iget-object v5, p0, Lj4;->q:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v5, Lpg2;

    .line 281
    .line 282
    iget-object p0, p0, Lj4;->r:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast p0, Lpg2;

    .line 285
    .line 286
    const-string v6, "/"

    .line 287
    .line 288
    sget-object v7, Lez3;->a:Lra3;

    .line 289
    .line 290
    invoke-interface {v5}, Ltr3;->getValue()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v8

    .line 294
    check-cast v8, Landroid/webkit/WebView;

    .line 295
    .line 296
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v8

    .line 300
    check-cast v8, Landroid/webkit/WebView;

    .line 301
    .line 302
    if-eqz v8, :cond_6

    .line 303
    .line 304
    invoke-virtual {v8}, Landroid/webkit/WebView;->canGoBack()Z

    .line 305
    .line 306
    .line 307
    :cond_6
    new-array v8, v1, [Ljava/lang/Object;

    .line 308
    .line 309
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    invoke-static {v8}, Lra3;->c([Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    invoke-interface {v5}, Ltr3;->getValue()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    check-cast v7, Landroid/webkit/WebView;

    .line 320
    .line 321
    if-eqz v7, :cond_b

    .line 322
    .line 323
    invoke-interface {v5}, Ltr3;->getValue()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object p0

    .line 327
    check-cast p0, Landroid/webkit/WebView;

    .line 328
    .line 329
    if-eqz p0, :cond_7

    .line 330
    .line 331
    invoke-virtual {p0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 332
    .line 333
    .line 334
    move-result p0

    .line 335
    if-ne p0, v2, :cond_7

    .line 336
    .line 337
    invoke-interface {v5}, Ltr3;->getValue()Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    check-cast p0, Landroid/webkit/WebView;

    .line 342
    .line 343
    if-eqz p0, :cond_14

    .line 344
    .line 345
    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    .line 346
    .line 347
    .line 348
    goto/16 :goto_7

    .line 349
    .line 350
    :cond_7
    invoke-interface {v5}, Ltr3;->getValue()Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object p0

    .line 354
    check-cast p0, Landroid/webkit/WebView;

    .line 355
    .line 356
    if-eqz p0, :cond_a

    .line 357
    .line 358
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 363
    .line 364
    if-eqz v1, :cond_8

    .line 365
    .line 366
    check-cast v0, Landroid/view/ViewGroup;

    .line 367
    .line 368
    goto :goto_4

    .line 369
    :cond_8
    move-object v0, v3

    .line 370
    :goto_4
    if-eqz v0, :cond_9

    .line 371
    .line 372
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 373
    .line 374
    .line 375
    :cond_9
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    .line 376
    .line 377
    .line 378
    :cond_a
    invoke-interface {v5, v3}, Lpg2;->setValue(Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    goto/16 :goto_7

    .line 382
    .line 383
    :cond_b
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    check-cast v5, Landroid/webkit/WebView;

    .line 388
    .line 389
    if-eqz v5, :cond_c

    .line 390
    .line 391
    invoke-virtual {v5}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    :cond_c
    iget-object v0, v0, Ly3;->d:Ljava/util/List;

    .line 396
    .line 397
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 398
    .line 399
    .line 400
    move-result v5

    .line 401
    if-eqz v5, :cond_d

    .line 402
    .line 403
    goto :goto_6

    .line 404
    :cond_d
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 409
    .line 410
    .line 411
    move-result v5

    .line 412
    if-eqz v5, :cond_12

    .line 413
    .line 414
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v5

    .line 418
    check-cast v5, Ljava/lang/String;

    .line 419
    .line 420
    invoke-static {v3, v5}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v7

    .line 424
    if-eqz v7, :cond_f

    .line 425
    .line 426
    goto :goto_5

    .line 427
    :cond_f
    if-eqz v3, :cond_e

    .line 428
    .line 429
    invoke-static {v3, v5, v1}, Lgt3;->y0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 430
    .line 431
    .line 432
    move-result v7

    .line 433
    if-ne v7, v2, :cond_e

    .line 434
    .line 435
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 436
    .line 437
    .line 438
    move-result v7

    .line 439
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v7

    .line 443
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 444
    .line 445
    .line 446
    move-result v8

    .line 447
    if-nez v8, :cond_10

    .line 448
    .line 449
    goto :goto_5

    .line 450
    :cond_10
    const-string v8, "?"

    .line 451
    .line 452
    invoke-static {v7, v8, v1}, Lgt3;->y0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 453
    .line 454
    .line 455
    move-result v8

    .line 456
    if-nez v8, :cond_11

    .line 457
    .line 458
    const-string v8, "#"

    .line 459
    .line 460
    invoke-static {v7, v8, v1}, Lgt3;->y0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 461
    .line 462
    .line 463
    move-result v8

    .line 464
    if-nez v8, :cond_11

    .line 465
    .line 466
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v7

    .line 470
    if-eqz v7, :cond_e

    .line 471
    .line 472
    invoke-static {v5, v6, v1}, Lgt3;->r0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 473
    .line 474
    .line 475
    move-result v5

    .line 476
    if-nez v5, :cond_e

    .line 477
    .line 478
    :cond_11
    :goto_5
    move v1, v2

    .line 479
    :cond_12
    :goto_6
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    check-cast v0, Landroid/webkit/WebView;

    .line 484
    .line 485
    if-eqz v0, :cond_13

    .line 486
    .line 487
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    if-ne v0, v2, :cond_13

    .line 492
    .line 493
    if-nez v1, :cond_13

    .line 494
    .line 495
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object p0

    .line 499
    check-cast p0, Landroid/webkit/WebView;

    .line 500
    .line 501
    if-eqz p0, :cond_14

    .line 502
    .line 503
    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    .line 504
    .line 505
    .line 506
    goto :goto_7

    .line 507
    :cond_13
    invoke-interface {v4}, Lne1;->a()Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    :cond_14
    :goto_7
    sget-object p0, Lt64;->a:Lt64;

    .line 511
    .line 512
    return-object p0

    .line 513
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

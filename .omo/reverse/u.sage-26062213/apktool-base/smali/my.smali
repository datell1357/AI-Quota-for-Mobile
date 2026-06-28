.class public final Lmy;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lr45;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lmy;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lmy;->b:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Luv;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmy;->a:I

    iput-object p1, p0, Lmy;->b:Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget v0, p0, Lmy;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lmy;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lr45;

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    iget-object p0, v1, Lr45;->f:La25;

    .line 13
    .line 14
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, La25;->i:Lx15;

    .line 18
    .line 19
    const-string p1, "App receiver called with null intent"

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lx15;->a(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget-object p0, v1, Lr45;->f:La25;

    .line 33
    .line 34
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, La25;->i:Lx15;

    .line 38
    .line 39
    const-string p1, "App receiver called with null action"

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lx15;->a(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    const v0, -0x72ee9a21

    .line 51
    .line 52
    .line 53
    if-eq p2, v0, :cond_3

    .line 54
    .line 55
    const v0, 0x4c497878    # 5.2814304E7f

    .line 56
    .line 57
    .line 58
    if-eq p2, v0, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const-string p2, "com.google.android.gms.measurement.BATCHES_AVAILABLE"

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    iget-object p1, v1, Lr45;->f:La25;

    .line 70
    .line 71
    invoke-static {p1}, Lr45;->l(Lq55;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p1, La25;->n:Lx15;

    .line 75
    .line 76
    const-string p2, "[sgtm] App Receiver notified batches are available"

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lx15;->a(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, v1, Lr45;->g:Lj45;

    .line 82
    .line 83
    invoke-static {p1}, Lr45;->l(Lq55;)V

    .line 84
    .line 85
    .line 86
    new-instance p2, Lo9;

    .line 87
    .line 88
    const/16 v0, 0x1a

    .line 89
    .line 90
    invoke-direct {p2, v0, p0}, Lo9;-><init>(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    const-string p0, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    .line 98
    .line 99
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_5

    .line 104
    .line 105
    invoke-static {}, Ler4;->a()V

    .line 106
    .line 107
    .line 108
    iget-object p0, v1, Lr45;->d:Lds4;

    .line 109
    .line 110
    const/4 p1, 0x0

    .line 111
    sget-object p2, Le05;->P0:Ld05;

    .line 112
    .line 113
    invoke-virtual {p0, p1, p2}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    if-nez p0, :cond_4

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    iget-object p0, v1, Lr45;->f:La25;

    .line 121
    .line 122
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 123
    .line 124
    .line 125
    iget-object p0, p0, La25;->n:Lx15;

    .line 126
    .line 127
    const-string p1, "App receiver notified triggers are available"

    .line 128
    .line 129
    invoke-virtual {p0, p1}, Lx15;->a(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object p0, v1, Lr45;->g:Lj45;

    .line 133
    .line 134
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 135
    .line 136
    .line 137
    new-instance p1, Lo9;

    .line 138
    .line 139
    const/16 p2, 0x1b

    .line 140
    .line 141
    invoke-direct {p1, p2, v1}, Lo9;-><init>(ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p1}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_5
    :goto_0
    iget-object p0, v1, Lr45;->f:La25;

    .line 149
    .line 150
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 151
    .line 152
    .line 153
    iget-object p0, p0, La25;->i:Lx15;

    .line 154
    .line 155
    const-string p1, "App receiver called with unknown action"

    .line 156
    .line 157
    invoke-virtual {p0, p1}, Lx15;->a(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :goto_1
    return-void

    .line 161
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    check-cast v1, Luv;

    .line 168
    .line 169
    iget p0, v1, Luv;->g:I

    .line 170
    .line 171
    const-string p1, "Received "

    .line 172
    .line 173
    packed-switch p0, :pswitch_data_1

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    if-nez p0, :cond_6

    .line 181
    .line 182
    goto/16 :goto_2

    .line 183
    .line 184
    :cond_6
    invoke-static {}, Lt72;->g()Lt72;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    sget-object v0, Lrs3;->a:Ljava/lang/String;

    .line 189
    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p0, v0, p1}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    if-eqz p0, :cond_15

    .line 214
    .line 215
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    const p2, -0x46671f94

    .line 220
    .line 221
    .line 222
    if-eq p1, p2, :cond_9

    .line 223
    .line 224
    const p2, -0x2b8fb65c

    .line 225
    .line 226
    .line 227
    if-eq p1, p2, :cond_7

    .line 228
    .line 229
    goto/16 :goto_2

    .line 230
    .line 231
    :cond_7
    const-string p1, "android.intent.action.DEVICE_STORAGE_OK"

    .line 232
    .line 233
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result p0

    .line 237
    if-nez p0, :cond_8

    .line 238
    .line 239
    goto/16 :goto_2

    .line 240
    .line 241
    :cond_8
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 242
    .line 243
    invoke-virtual {v1, p0}, Lcf0;->d(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_2

    .line 247
    .line 248
    :cond_9
    const-string p1, "android.intent.action.DEVICE_STORAGE_LOW"

    .line 249
    .line 250
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result p0

    .line 254
    if-nez p0, :cond_a

    .line 255
    .line 256
    goto/16 :goto_2

    .line 257
    .line 258
    :cond_a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 259
    .line 260
    invoke-virtual {v1, p0}, Lcf0;->d(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    goto/16 :goto_2

    .line 264
    .line 265
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    if-nez p0, :cond_b

    .line 270
    .line 271
    goto/16 :goto_2

    .line 272
    .line 273
    :cond_b
    invoke-static {}, Lt72;->g()Lt72;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    sget-object v0, Lwv;->a:Ljava/lang/String;

    .line 278
    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-virtual {p0, v0, p1}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    if-eqz p0, :cond_15

    .line 303
    .line 304
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    const p2, -0x7606c095    # -6.0004207E-33f

    .line 309
    .line 310
    .line 311
    if-eq p1, p2, :cond_e

    .line 312
    .line 313
    const p2, 0x1d398bfd

    .line 314
    .line 315
    .line 316
    if-eq p1, p2, :cond_c

    .line 317
    .line 318
    goto/16 :goto_2

    .line 319
    .line 320
    :cond_c
    const-string p1, "android.intent.action.BATTERY_LOW"

    .line 321
    .line 322
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result p0

    .line 326
    if-nez p0, :cond_d

    .line 327
    .line 328
    goto/16 :goto_2

    .line 329
    .line 330
    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 331
    .line 332
    invoke-virtual {v1, p0}, Lcf0;->d(Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    goto/16 :goto_2

    .line 336
    .line 337
    :cond_e
    const-string p1, "android.intent.action.BATTERY_OKAY"

    .line 338
    .line 339
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result p0

    .line 343
    if-nez p0, :cond_f

    .line 344
    .line 345
    goto :goto_2

    .line 346
    :cond_f
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 347
    .line 348
    invoke-virtual {v1, p0}, Lcf0;->d(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    goto :goto_2

    .line 352
    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p0

    .line 356
    if-nez p0, :cond_10

    .line 357
    .line 358
    goto :goto_2

    .line 359
    :cond_10
    invoke-static {}, Lt72;->g()Lt72;

    .line 360
    .line 361
    .line 362
    move-result-object p2

    .line 363
    sget-object v0, Lvv;->a:Ljava/lang/String;

    .line 364
    .line 365
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    invoke-virtual {p2, v0, p1}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 373
    .line 374
    .line 375
    move-result p1

    .line 376
    sparse-switch p1, :sswitch_data_0

    .line 377
    .line 378
    .line 379
    goto :goto_2

    .line 380
    :sswitch_0
    const-string p1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 381
    .line 382
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result p0

    .line 386
    if-nez p0, :cond_11

    .line 387
    .line 388
    goto :goto_2

    .line 389
    :cond_11
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 390
    .line 391
    invoke-virtual {v1, p0}, Lcf0;->d(Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    goto :goto_2

    .line 395
    :sswitch_1
    const-string p1, "android.os.action.CHARGING"

    .line 396
    .line 397
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result p0

    .line 401
    if-nez p0, :cond_12

    .line 402
    .line 403
    goto :goto_2

    .line 404
    :cond_12
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 405
    .line 406
    invoke-virtual {v1, p0}, Lcf0;->d(Ljava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    goto :goto_2

    .line 410
    :sswitch_2
    const-string p1, "android.os.action.DISCHARGING"

    .line 411
    .line 412
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result p0

    .line 416
    if-nez p0, :cond_13

    .line 417
    .line 418
    goto :goto_2

    .line 419
    :cond_13
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 420
    .line 421
    invoke-virtual {v1, p0}, Lcf0;->d(Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    goto :goto_2

    .line 425
    :sswitch_3
    const-string p1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 426
    .line 427
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result p0

    .line 431
    if-nez p0, :cond_14

    .line 432
    .line 433
    goto :goto_2

    .line 434
    :cond_14
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 435
    .line 436
    invoke-virtual {v1, p0}, Lcf0;->d(Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    :cond_15
    :goto_2
    return-void

    .line 440
    nop

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    :sswitch_data_0
    .sparse-switch
        -0x7073f927 -> :sswitch_3
        -0x3465cce -> :sswitch_2
        0x388694fe -> :sswitch_1
        0x3cbf870b -> :sswitch_0
    .end sparse-switch
.end method

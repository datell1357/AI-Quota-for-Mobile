.class public abstract Lfw4;
.super Liu4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lhw4;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lhw4;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    instance-of v2, v1, Lhw4;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    check-cast v1, Lhw4;

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    new-instance v1, Lew4;

    .line 19
    .line 20
    invoke-direct {v1, p0, v0}, Lgu4;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v1
.end method


# virtual methods
.method public final E(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11

    .line 1
    const-string v2, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy"

    .line 2
    .line 3
    const/4 v10, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    const-string v4, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    :pswitch_0
    return v3

    .line 12
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v2, v3, v4, v5}, Lhw4;->resetAnalyticsDataWithElapsedTime(JJ)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_1a

    .line 27
    .line 28
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Lyn2;->E(Landroid/os/IBinder;)Lkn1;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    sget-object v3, Lix4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 37
    .line 38
    invoke-static {p2, v3}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lix4;

    .line 43
    .line 44
    move-object v1, v2

    .line 45
    move-object v2, v3

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 51
    .line 52
    .line 53
    move-result-wide v5

    .line 54
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 55
    .line 56
    .line 57
    move-object v0, p0

    .line 58
    invoke-interface/range {v0 .. v6}, Lhw4;->initializeWithElapsedTime(Lkn1;Lix4;JJ)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_1a

    .line 62
    .line 63
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 72
    .line 73
    invoke-static {p2, v0}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/os/Bundle;

    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_0

    .line 84
    .line 85
    move v4, v10

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    move v4, v3

    .line 88
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_1

    .line 93
    .line 94
    move v5, v10

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    move v5, v3

    .line 97
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 98
    .line 99
    .line 100
    move-result-wide v6

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 102
    .line 103
    .line 104
    move-result-wide v8

    .line 105
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 106
    .line 107
    .line 108
    move-object v3, v0

    .line 109
    move-object v0, p0

    .line 110
    invoke-interface/range {v0 .. v9}, Lhw4;->logEventWithElapsedTime(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJJ)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_1a

    .line 114
    .line 115
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    if-nez v1, :cond_2

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_2
    const-string v2, "com.google.android.gms.measurement.api.internal.IDynamiteUploadBatchesCallback"

    .line 123
    .line 124
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    instance-of v4, v3, Lqw4;

    .line 129
    .line 130
    if-eqz v4, :cond_3

    .line 131
    .line 132
    move-object v5, v3

    .line 133
    check-cast v5, Lqw4;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_3
    new-instance v5, Low4;

    .line 137
    .line 138
    invoke-direct {v5, v1, v2}, Lgu4;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :goto_2
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 142
    .line 143
    .line 144
    invoke-interface {p0, v5}, Lhw4;->retrieveAndUploadBatches(Lqw4;)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_1a

    .line 148
    .line 149
    :pswitch_5
    sget-object v1, Ljx4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 150
    .line 151
    invoke-static {p2, v1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast v1, Ljx4;

    .line 156
    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    if-nez v2, :cond_4

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_4
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    instance-of v4, v3, Lmw4;

    .line 169
    .line 170
    if-eqz v4, :cond_5

    .line 171
    .line 172
    move-object v5, v3

    .line 173
    check-cast v5, Lmw4;

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_5
    new-instance v5, Liw4;

    .line 177
    .line 178
    invoke-direct {v5, v2}, Liw4;-><init>(Landroid/os/IBinder;)V

    .line 179
    .line 180
    .line 181
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 182
    .line 183
    .line 184
    move-result-wide v2

    .line 185
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 186
    .line 187
    .line 188
    invoke-interface {p0, v1, v5, v2, v3}, Lhw4;->onActivitySaveInstanceStateByScionActivityInfo(Ljx4;Lmw4;J)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_1a

    .line 192
    .line 193
    :pswitch_6
    sget-object v1, Ljx4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 194
    .line 195
    invoke-static {p2, v1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    check-cast v1, Ljx4;

    .line 200
    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 202
    .line 203
    .line 204
    move-result-wide v2

    .line 205
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 206
    .line 207
    .line 208
    invoke-interface {p0, v1, v2, v3}, Lhw4;->onActivityResumedByScionActivityInfo(Ljx4;J)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_1a

    .line 212
    .line 213
    :pswitch_7
    sget-object v1, Ljx4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 214
    .line 215
    invoke-static {p2, v1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    check-cast v1, Ljx4;

    .line 220
    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 222
    .line 223
    .line 224
    move-result-wide v2

    .line 225
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 226
    .line 227
    .line 228
    invoke-interface {p0, v1, v2, v3}, Lhw4;->onActivityPausedByScionActivityInfo(Ljx4;J)V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_1a

    .line 232
    .line 233
    :pswitch_8
    sget-object v1, Ljx4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 234
    .line 235
    invoke-static {p2, v1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    check-cast v1, Ljx4;

    .line 240
    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 242
    .line 243
    .line 244
    move-result-wide v2

    .line 245
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 246
    .line 247
    .line 248
    invoke-interface {p0, v1, v2, v3}, Lhw4;->onActivityDestroyedByScionActivityInfo(Ljx4;J)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_1a

    .line 252
    .line 253
    :pswitch_9
    sget-object v1, Ljx4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 254
    .line 255
    invoke-static {p2, v1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    check-cast v1, Ljx4;

    .line 260
    .line 261
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 262
    .line 263
    invoke-static {p2, v2}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    check-cast v2, Landroid/os/Bundle;

    .line 268
    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 270
    .line 271
    .line 272
    move-result-wide v3

    .line 273
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 274
    .line 275
    .line 276
    invoke-interface {p0, v1, v2, v3, v4}, Lhw4;->onActivityCreatedByScionActivityInfo(Ljx4;Landroid/os/Bundle;J)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_1a

    .line 280
    .line 281
    :pswitch_a
    sget-object v1, Ljx4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 282
    .line 283
    invoke-static {p2, v1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    check-cast v1, Ljx4;

    .line 288
    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 290
    .line 291
    .line 292
    move-result-wide v2

    .line 293
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 294
    .line 295
    .line 296
    invoke-interface {p0, v1, v2, v3}, Lhw4;->onActivityStoppedByScionActivityInfo(Ljx4;J)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_1a

    .line 300
    .line 301
    :pswitch_b
    sget-object v1, Ljx4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 302
    .line 303
    invoke-static {p2, v1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    check-cast v1, Ljx4;

    .line 308
    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 310
    .line 311
    .line 312
    move-result-wide v2

    .line 313
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 314
    .line 315
    .line 316
    invoke-interface {p0, v1, v2, v3}, Lhw4;->onActivityStartedByScionActivityInfo(Ljx4;J)V

    .line 317
    .line 318
    .line 319
    goto/16 :goto_1a

    .line 320
    .line 321
    :pswitch_c
    sget-object v1, Ljx4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 322
    .line 323
    invoke-static {p2, v1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    check-cast v1, Ljx4;

    .line 328
    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 338
    .line 339
    .line 340
    move-result-wide v4

    .line 341
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 342
    .line 343
    .line 344
    move-object v0, p0

    .line 345
    invoke-interface/range {v0 .. v5}, Lhw4;->setCurrentScreenByScionActivityInfo(Ljx4;Ljava/lang/String;Ljava/lang/String;J)V

    .line 346
    .line 347
    .line 348
    goto/16 :goto_1a

    .line 349
    .line 350
    :pswitch_d
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 351
    .line 352
    invoke-static {p2, v1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    check-cast v1, Landroid/content/Intent;

    .line 357
    .line 358
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 359
    .line 360
    .line 361
    invoke-interface {p0, v1}, Lhw4;->setSgtmDebugInfo(Landroid/content/Intent;)V

    .line 362
    .line 363
    .line 364
    goto/16 :goto_1a

    .line 365
    .line 366
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    if-nez v1, :cond_6

    .line 371
    .line 372
    goto :goto_4

    .line 373
    :cond_6
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    instance-of v3, v2, Lmw4;

    .line 378
    .line 379
    if-eqz v3, :cond_7

    .line 380
    .line 381
    move-object v5, v2

    .line 382
    check-cast v5, Lmw4;

    .line 383
    .line 384
    goto :goto_4

    .line 385
    :cond_7
    new-instance v5, Liw4;

    .line 386
    .line 387
    invoke-direct {v5, v1}, Liw4;-><init>(Landroid/os/IBinder;)V

    .line 388
    .line 389
    .line 390
    :goto_4
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 391
    .line 392
    .line 393
    invoke-interface {p0, v5}, Lhw4;->getSessionId(Lmw4;)V

    .line 394
    .line 395
    .line 396
    goto/16 :goto_1a

    .line 397
    .line 398
    :pswitch_f
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 399
    .line 400
    invoke-static {p2, v1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    check-cast v1, Landroid/os/Bundle;

    .line 405
    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 407
    .line 408
    .line 409
    move-result-wide v2

    .line 410
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 411
    .line 412
    .line 413
    invoke-interface {p0, v1, v2, v3}, Lhw4;->setConsentThirdParty(Landroid/os/Bundle;J)V

    .line 414
    .line 415
    .line 416
    goto/16 :goto_1a

    .line 417
    .line 418
    :pswitch_10
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 419
    .line 420
    invoke-static {p2, v1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    check-cast v1, Landroid/os/Bundle;

    .line 425
    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 427
    .line 428
    .line 429
    move-result-wide v2

    .line 430
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 431
    .line 432
    .line 433
    invoke-interface {p0, v1, v2, v3}, Lhw4;->setConsent(Landroid/os/Bundle;J)V

    .line 434
    .line 435
    .line 436
    goto/16 :goto_1a

    .line 437
    .line 438
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 439
    .line 440
    .line 441
    move-result-wide v1

    .line 442
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 443
    .line 444
    .line 445
    invoke-interface {p0, v1, v2}, Lhw4;->clearMeasurementEnabled(J)V

    .line 446
    .line 447
    .line 448
    goto/16 :goto_1a

    .line 449
    .line 450
    :pswitch_12
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 451
    .line 452
    invoke-static {p2, v1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    check-cast v1, Landroid/os/Bundle;

    .line 457
    .line 458
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 459
    .line 460
    .line 461
    invoke-interface {p0, v1}, Lhw4;->setDefaultEventParameters(Landroid/os/Bundle;)V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_1a

    .line 465
    .line 466
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    if-nez v1, :cond_8

    .line 471
    .line 472
    goto :goto_5

    .line 473
    :cond_8
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    instance-of v3, v2, Lmw4;

    .line 478
    .line 479
    if-eqz v3, :cond_9

    .line 480
    .line 481
    move-object v5, v2

    .line 482
    check-cast v5, Lmw4;

    .line 483
    .line 484
    goto :goto_5

    .line 485
    :cond_9
    new-instance v5, Liw4;

    .line 486
    .line 487
    invoke-direct {v5, v1}, Liw4;-><init>(Landroid/os/IBinder;)V

    .line 488
    .line 489
    .line 490
    :goto_5
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 491
    .line 492
    .line 493
    invoke-interface {p0, v5}, Lhw4;->isDataCollectionEnabled(Lmw4;)V

    .line 494
    .line 495
    .line 496
    goto/16 :goto_1a

    .line 497
    .line 498
    :pswitch_14
    sget-object v1, Lku4;->a:Ljava/lang/ClassLoader;

    .line 499
    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 501
    .line 502
    .line 503
    move-result v1

    .line 504
    if-eqz v1, :cond_a

    .line 505
    .line 506
    move v3, v10

    .line 507
    :cond_a
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 508
    .line 509
    .line 510
    invoke-interface {p0, v3}, Lhw4;->setDataCollectionEnabled(Z)V

    .line 511
    .line 512
    .line 513
    goto/16 :goto_1a

    .line 514
    .line 515
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    if-nez v1, :cond_b

    .line 520
    .line 521
    goto :goto_6

    .line 522
    :cond_b
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    instance-of v3, v2, Lmw4;

    .line 527
    .line 528
    if-eqz v3, :cond_c

    .line 529
    .line 530
    move-object v5, v2

    .line 531
    check-cast v5, Lmw4;

    .line 532
    .line 533
    goto :goto_6

    .line 534
    :cond_c
    new-instance v5, Liw4;

    .line 535
    .line 536
    invoke-direct {v5, v1}, Liw4;-><init>(Landroid/os/IBinder;)V

    .line 537
    .line 538
    .line 539
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 544
    .line 545
    .line 546
    invoke-interface {p0, v5, v1}, Lhw4;->getTestFlag(Lmw4;I)V

    .line 547
    .line 548
    .line 549
    goto/16 :goto_1a

    .line 550
    .line 551
    :pswitch_16
    sget-object v1, Lku4;->a:Ljava/lang/ClassLoader;

    .line 552
    .line 553
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 558
    .line 559
    .line 560
    invoke-interface {p0, v1}, Lhw4;->initForTests(Ljava/util/Map;)V

    .line 561
    .line 562
    .line 563
    goto/16 :goto_1a

    .line 564
    .line 565
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    if-nez v1, :cond_d

    .line 570
    .line 571
    goto :goto_7

    .line 572
    :cond_d
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    instance-of v3, v2, Ltw4;

    .line 577
    .line 578
    if-eqz v3, :cond_e

    .line 579
    .line 580
    move-object v5, v2

    .line 581
    check-cast v5, Ltw4;

    .line 582
    .line 583
    goto :goto_7

    .line 584
    :cond_e
    new-instance v5, Lsw4;

    .line 585
    .line 586
    invoke-direct {v5, v1}, Lsw4;-><init>(Landroid/os/IBinder;)V

    .line 587
    .line 588
    .line 589
    :goto_7
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 590
    .line 591
    .line 592
    invoke-interface {p0, v5}, Lhw4;->unregisterOnMeasurementEventListener(Ltw4;)V

    .line 593
    .line 594
    .line 595
    goto/16 :goto_1a

    .line 596
    .line 597
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    if-nez v1, :cond_f

    .line 602
    .line 603
    goto :goto_8

    .line 604
    :cond_f
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 605
    .line 606
    .line 607
    move-result-object v2

    .line 608
    instance-of v3, v2, Ltw4;

    .line 609
    .line 610
    if-eqz v3, :cond_10

    .line 611
    .line 612
    move-object v5, v2

    .line 613
    check-cast v5, Ltw4;

    .line 614
    .line 615
    goto :goto_8

    .line 616
    :cond_10
    new-instance v5, Lsw4;

    .line 617
    .line 618
    invoke-direct {v5, v1}, Lsw4;-><init>(Landroid/os/IBinder;)V

    .line 619
    .line 620
    .line 621
    :goto_8
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 622
    .line 623
    .line 624
    invoke-interface {p0, v5}, Lhw4;->registerOnMeasurementEventListener(Ltw4;)V

    .line 625
    .line 626
    .line 627
    goto/16 :goto_1a

    .line 628
    .line 629
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    if-nez v1, :cond_11

    .line 634
    .line 635
    goto :goto_9

    .line 636
    :cond_11
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    instance-of v3, v2, Ltw4;

    .line 641
    .line 642
    if-eqz v3, :cond_12

    .line 643
    .line 644
    move-object v5, v2

    .line 645
    check-cast v5, Ltw4;

    .line 646
    .line 647
    goto :goto_9

    .line 648
    :cond_12
    new-instance v5, Lsw4;

    .line 649
    .line 650
    invoke-direct {v5, v1}, Lsw4;-><init>(Landroid/os/IBinder;)V

    .line 651
    .line 652
    .line 653
    :goto_9
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 654
    .line 655
    .line 656
    invoke-interface {p0, v5}, Lhw4;->setEventInterceptor(Ltw4;)V

    .line 657
    .line 658
    .line 659
    goto/16 :goto_1a

    .line 660
    .line 661
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 662
    .line 663
    .line 664
    move-result v1

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v2

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 670
    .line 671
    .line 672
    move-result-object v3

    .line 673
    invoke-static {v3}, Lyn2;->E(Landroid/os/IBinder;)Lkn1;

    .line 674
    .line 675
    .line 676
    move-result-object v3

    .line 677
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 678
    .line 679
    .line 680
    move-result-object v4

    .line 681
    invoke-static {v4}, Lyn2;->E(Landroid/os/IBinder;)Lkn1;

    .line 682
    .line 683
    .line 684
    move-result-object v4

    .line 685
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 686
    .line 687
    .line 688
    move-result-object v5

    .line 689
    invoke-static {v5}, Lyn2;->E(Landroid/os/IBinder;)Lkn1;

    .line 690
    .line 691
    .line 692
    move-result-object v5

    .line 693
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 694
    .line 695
    .line 696
    move-object v0, p0

    .line 697
    invoke-interface/range {v0 .. v5}, Lhw4;->logHealthData(ILjava/lang/String;Lkn1;Lkn1;Lkn1;)V

    .line 698
    .line 699
    .line 700
    goto/16 :goto_1a

    .line 701
    .line 702
    :pswitch_1b
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 703
    .line 704
    invoke-static {p2, v1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 705
    .line 706
    .line 707
    move-result-object v1

    .line 708
    check-cast v1, Landroid/os/Bundle;

    .line 709
    .line 710
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 711
    .line 712
    .line 713
    move-result-object v2

    .line 714
    if-nez v2, :cond_13

    .line 715
    .line 716
    goto :goto_a

    .line 717
    :cond_13
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 718
    .line 719
    .line 720
    move-result-object v3

    .line 721
    instance-of v4, v3, Lmw4;

    .line 722
    .line 723
    if-eqz v4, :cond_14

    .line 724
    .line 725
    move-object v5, v3

    .line 726
    check-cast v5, Lmw4;

    .line 727
    .line 728
    goto :goto_a

    .line 729
    :cond_14
    new-instance v5, Liw4;

    .line 730
    .line 731
    invoke-direct {v5, v2}, Liw4;-><init>(Landroid/os/IBinder;)V

    .line 732
    .line 733
    .line 734
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 735
    .line 736
    .line 737
    move-result-wide v2

    .line 738
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 739
    .line 740
    .line 741
    invoke-interface {p0, v1, v5, v2, v3}, Lhw4;->performAction(Landroid/os/Bundle;Lmw4;J)V

    .line 742
    .line 743
    .line 744
    goto/16 :goto_1a

    .line 745
    .line 746
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    invoke-static {v1}, Lyn2;->E(Landroid/os/IBinder;)Lkn1;

    .line 751
    .line 752
    .line 753
    move-result-object v1

    .line 754
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 755
    .line 756
    .line 757
    move-result-object v2

    .line 758
    if-nez v2, :cond_15

    .line 759
    .line 760
    goto :goto_b

    .line 761
    :cond_15
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 762
    .line 763
    .line 764
    move-result-object v3

    .line 765
    instance-of v4, v3, Lmw4;

    .line 766
    .line 767
    if-eqz v4, :cond_16

    .line 768
    .line 769
    move-object v5, v3

    .line 770
    check-cast v5, Lmw4;

    .line 771
    .line 772
    goto :goto_b

    .line 773
    :cond_16
    new-instance v5, Liw4;

    .line 774
    .line 775
    invoke-direct {v5, v2}, Liw4;-><init>(Landroid/os/IBinder;)V

    .line 776
    .line 777
    .line 778
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 779
    .line 780
    .line 781
    move-result-wide v2

    .line 782
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 783
    .line 784
    .line 785
    invoke-interface {p0, v1, v5, v2, v3}, Lhw4;->onActivitySaveInstanceState(Lkn1;Lmw4;J)V

    .line 786
    .line 787
    .line 788
    goto/16 :goto_1a

    .line 789
    .line 790
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 791
    .line 792
    .line 793
    move-result-object v1

    .line 794
    invoke-static {v1}, Lyn2;->E(Landroid/os/IBinder;)Lkn1;

    .line 795
    .line 796
    .line 797
    move-result-object v1

    .line 798
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 799
    .line 800
    .line 801
    move-result-wide v2

    .line 802
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 803
    .line 804
    .line 805
    invoke-interface {p0, v1, v2, v3}, Lhw4;->onActivityResumed(Lkn1;J)V

    .line 806
    .line 807
    .line 808
    goto/16 :goto_1a

    .line 809
    .line 810
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 811
    .line 812
    .line 813
    move-result-object v1

    .line 814
    invoke-static {v1}, Lyn2;->E(Landroid/os/IBinder;)Lkn1;

    .line 815
    .line 816
    .line 817
    move-result-object v1

    .line 818
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 819
    .line 820
    .line 821
    move-result-wide v2

    .line 822
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 823
    .line 824
    .line 825
    invoke-interface {p0, v1, v2, v3}, Lhw4;->onActivityPaused(Lkn1;J)V

    .line 826
    .line 827
    .line 828
    goto/16 :goto_1a

    .line 829
    .line 830
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 831
    .line 832
    .line 833
    move-result-object v1

    .line 834
    invoke-static {v1}, Lyn2;->E(Landroid/os/IBinder;)Lkn1;

    .line 835
    .line 836
    .line 837
    move-result-object v1

    .line 838
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 839
    .line 840
    .line 841
    move-result-wide v2

    .line 842
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 843
    .line 844
    .line 845
    invoke-interface {p0, v1, v2, v3}, Lhw4;->onActivityDestroyed(Lkn1;J)V

    .line 846
    .line 847
    .line 848
    goto/16 :goto_1a

    .line 849
    .line 850
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 851
    .line 852
    .line 853
    move-result-object v1

    .line 854
    invoke-static {v1}, Lyn2;->E(Landroid/os/IBinder;)Lkn1;

    .line 855
    .line 856
    .line 857
    move-result-object v1

    .line 858
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 859
    .line 860
    invoke-static {p2, v2}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 861
    .line 862
    .line 863
    move-result-object v2

    .line 864
    check-cast v2, Landroid/os/Bundle;

    .line 865
    .line 866
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 867
    .line 868
    .line 869
    move-result-wide v3

    .line 870
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 871
    .line 872
    .line 873
    invoke-interface {p0, v1, v2, v3, v4}, Lhw4;->onActivityCreated(Lkn1;Landroid/os/Bundle;J)V

    .line 874
    .line 875
    .line 876
    goto/16 :goto_1a

    .line 877
    .line 878
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 879
    .line 880
    .line 881
    move-result-object v1

    .line 882
    invoke-static {v1}, Lyn2;->E(Landroid/os/IBinder;)Lkn1;

    .line 883
    .line 884
    .line 885
    move-result-object v1

    .line 886
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 887
    .line 888
    .line 889
    move-result-wide v2

    .line 890
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 891
    .line 892
    .line 893
    invoke-interface {p0, v1, v2, v3}, Lhw4;->onActivityStopped(Lkn1;J)V

    .line 894
    .line 895
    .line 896
    goto/16 :goto_1a

    .line 897
    .line 898
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 899
    .line 900
    .line 901
    move-result-object v1

    .line 902
    invoke-static {v1}, Lyn2;->E(Landroid/os/IBinder;)Lkn1;

    .line 903
    .line 904
    .line 905
    move-result-object v1

    .line 906
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 907
    .line 908
    .line 909
    move-result-wide v2

    .line 910
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 911
    .line 912
    .line 913
    invoke-interface {p0, v1, v2, v3}, Lhw4;->onActivityStarted(Lkn1;J)V

    .line 914
    .line 915
    .line 916
    goto/16 :goto_1a

    .line 917
    .line 918
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v1

    .line 922
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 923
    .line 924
    .line 925
    move-result-wide v2

    .line 926
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 927
    .line 928
    .line 929
    invoke-interface {p0, v1, v2, v3}, Lhw4;->endAdUnitExposure(Ljava/lang/String;J)V

    .line 930
    .line 931
    .line 932
    goto/16 :goto_1a

    .line 933
    .line 934
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 935
    .line 936
    .line 937
    move-result-object v1

    .line 938
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 939
    .line 940
    .line 941
    move-result-wide v2

    .line 942
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 943
    .line 944
    .line 945
    invoke-interface {p0, v1, v2, v3}, Lhw4;->beginAdUnitExposure(Ljava/lang/String;J)V

    .line 946
    .line 947
    .line 948
    goto/16 :goto_1a

    .line 949
    .line 950
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 951
    .line 952
    .line 953
    move-result-object v1

    .line 954
    if-nez v1, :cond_17

    .line 955
    .line 956
    goto :goto_c

    .line 957
    :cond_17
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 958
    .line 959
    .line 960
    move-result-object v2

    .line 961
    instance-of v3, v2, Lmw4;

    .line 962
    .line 963
    if-eqz v3, :cond_18

    .line 964
    .line 965
    move-object v5, v2

    .line 966
    check-cast v5, Lmw4;

    .line 967
    .line 968
    goto :goto_c

    .line 969
    :cond_18
    new-instance v5, Liw4;

    .line 970
    .line 971
    invoke-direct {v5, v1}, Liw4;-><init>(Landroid/os/IBinder;)V

    .line 972
    .line 973
    .line 974
    :goto_c
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 975
    .line 976
    .line 977
    invoke-interface {p0, v5}, Lhw4;->generateEventId(Lmw4;)V

    .line 978
    .line 979
    .line 980
    goto/16 :goto_1a

    .line 981
    .line 982
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 983
    .line 984
    .line 985
    move-result-object v1

    .line 986
    if-nez v1, :cond_19

    .line 987
    .line 988
    goto :goto_d

    .line 989
    :cond_19
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 990
    .line 991
    .line 992
    move-result-object v2

    .line 993
    instance-of v3, v2, Lmw4;

    .line 994
    .line 995
    if-eqz v3, :cond_1a

    .line 996
    .line 997
    move-object v5, v2

    .line 998
    check-cast v5, Lmw4;

    .line 999
    .line 1000
    goto :goto_d

    .line 1001
    :cond_1a
    new-instance v5, Liw4;

    .line 1002
    .line 1003
    invoke-direct {v5, v1}, Liw4;-><init>(Landroid/os/IBinder;)V

    .line 1004
    .line 1005
    .line 1006
    :goto_d
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 1007
    .line 1008
    .line 1009
    invoke-interface {p0, v5}, Lhw4;->getGmpAppId(Lmw4;)V

    .line 1010
    .line 1011
    .line 1012
    goto/16 :goto_1a

    .line 1013
    .line 1014
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v1

    .line 1018
    if-nez v1, :cond_1b

    .line 1019
    .line 1020
    goto :goto_e

    .line 1021
    :cond_1b
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v2

    .line 1025
    instance-of v3, v2, Lmw4;

    .line 1026
    .line 1027
    if-eqz v3, :cond_1c

    .line 1028
    .line 1029
    move-object v5, v2

    .line 1030
    check-cast v5, Lmw4;

    .line 1031
    .line 1032
    goto :goto_e

    .line 1033
    :cond_1c
    new-instance v5, Liw4;

    .line 1034
    .line 1035
    invoke-direct {v5, v1}, Liw4;-><init>(Landroid/os/IBinder;)V

    .line 1036
    .line 1037
    .line 1038
    :goto_e
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 1039
    .line 1040
    .line 1041
    invoke-interface {p0, v5}, Lhw4;->getAppInstanceId(Lmw4;)V

    .line 1042
    .line 1043
    .line 1044
    goto/16 :goto_1a

    .line 1045
    .line 1046
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v1

    .line 1050
    if-nez v1, :cond_1d

    .line 1051
    .line 1052
    goto :goto_f

    .line 1053
    :cond_1d
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v2

    .line 1057
    instance-of v3, v2, Lmw4;

    .line 1058
    .line 1059
    if-eqz v3, :cond_1e

    .line 1060
    .line 1061
    move-object v5, v2

    .line 1062
    check-cast v5, Lmw4;

    .line 1063
    .line 1064
    goto :goto_f

    .line 1065
    :cond_1e
    new-instance v5, Liw4;

    .line 1066
    .line 1067
    invoke-direct {v5, v1}, Liw4;-><init>(Landroid/os/IBinder;)V

    .line 1068
    .line 1069
    .line 1070
    :goto_f
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 1071
    .line 1072
    .line 1073
    invoke-interface {p0, v5}, Lhw4;->getCachedAppInstanceId(Lmw4;)V

    .line 1074
    .line 1075
    .line 1076
    goto/16 :goto_1a

    .line 1077
    .line 1078
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v1

    .line 1082
    if-nez v1, :cond_1f

    .line 1083
    .line 1084
    goto :goto_10

    .line 1085
    :cond_1f
    const-string v2, "com.google.android.gms.measurement.api.internal.IStringProvider"

    .line 1086
    .line 1087
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v3

    .line 1091
    instance-of v4, v3, Lhx4;

    .line 1092
    .line 1093
    if-eqz v4, :cond_20

    .line 1094
    .line 1095
    move-object v5, v3

    .line 1096
    check-cast v5, Lhx4;

    .line 1097
    .line 1098
    goto :goto_10

    .line 1099
    :cond_20
    new-instance v5, Lvw4;

    .line 1100
    .line 1101
    invoke-direct {v5, v1, v2}, Lgu4;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 1102
    .line 1103
    .line 1104
    :goto_10
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 1105
    .line 1106
    .line 1107
    invoke-interface {p0, v5}, Lhw4;->setInstanceIdProvider(Lhx4;)V

    .line 1108
    .line 1109
    .line 1110
    goto/16 :goto_1a

    .line 1111
    .line 1112
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v1

    .line 1116
    if-nez v1, :cond_21

    .line 1117
    .line 1118
    goto :goto_11

    .line 1119
    :cond_21
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v2

    .line 1123
    instance-of v3, v2, Lmw4;

    .line 1124
    .line 1125
    if-eqz v3, :cond_22

    .line 1126
    .line 1127
    move-object v5, v2

    .line 1128
    check-cast v5, Lmw4;

    .line 1129
    .line 1130
    goto :goto_11

    .line 1131
    :cond_22
    new-instance v5, Liw4;

    .line 1132
    .line 1133
    invoke-direct {v5, v1}, Liw4;-><init>(Landroid/os/IBinder;)V

    .line 1134
    .line 1135
    .line 1136
    :goto_11
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 1137
    .line 1138
    .line 1139
    invoke-interface {p0, v5}, Lhw4;->getCurrentScreenClass(Lmw4;)V

    .line 1140
    .line 1141
    .line 1142
    goto/16 :goto_1a

    .line 1143
    .line 1144
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v1

    .line 1148
    if-nez v1, :cond_23

    .line 1149
    .line 1150
    goto :goto_12

    .line 1151
    :cond_23
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v2

    .line 1155
    instance-of v3, v2, Lmw4;

    .line 1156
    .line 1157
    if-eqz v3, :cond_24

    .line 1158
    .line 1159
    move-object v5, v2

    .line 1160
    check-cast v5, Lmw4;

    .line 1161
    .line 1162
    goto :goto_12

    .line 1163
    :cond_24
    new-instance v5, Liw4;

    .line 1164
    .line 1165
    invoke-direct {v5, v1}, Liw4;-><init>(Landroid/os/IBinder;)V

    .line 1166
    .line 1167
    .line 1168
    :goto_12
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 1169
    .line 1170
    .line 1171
    invoke-interface {p0, v5}, Lhw4;->getCurrentScreenName(Lmw4;)V

    .line 1172
    .line 1173
    .line 1174
    goto/16 :goto_1a

    .line 1175
    .line 1176
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v1

    .line 1180
    invoke-static {v1}, Lyn2;->E(Landroid/os/IBinder;)Lkn1;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v1

    .line 1184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v2

    .line 1188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v3

    .line 1192
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1193
    .line 1194
    .line 1195
    move-result-wide v4

    .line 1196
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 1197
    .line 1198
    .line 1199
    move-object v0, p0

    .line 1200
    invoke-interface/range {v0 .. v5}, Lhw4;->setCurrentScreen(Lkn1;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1201
    .line 1202
    .line 1203
    goto/16 :goto_1a

    .line 1204
    .line 1205
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1206
    .line 1207
    .line 1208
    move-result-wide v1

    .line 1209
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 1210
    .line 1211
    .line 1212
    invoke-interface {p0, v1, v2}, Lhw4;->setSessionTimeoutDuration(J)V

    .line 1213
    .line 1214
    .line 1215
    goto/16 :goto_1a

    .line 1216
    .line 1217
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1218
    .line 1219
    .line 1220
    move-result-wide v1

    .line 1221
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 1222
    .line 1223
    .line 1224
    invoke-interface {p0, v1, v2}, Lhw4;->setMinimumSessionDuration(J)V

    .line 1225
    .line 1226
    .line 1227
    goto/16 :goto_1a

    .line 1228
    .line 1229
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1230
    .line 1231
    .line 1232
    move-result-wide v1

    .line 1233
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 1234
    .line 1235
    .line 1236
    invoke-interface {p0, v1, v2}, Lhw4;->resetAnalyticsData(J)V

    .line 1237
    .line 1238
    .line 1239
    goto/16 :goto_1a

    .line 1240
    .line 1241
    :pswitch_30
    sget-object v1, Lku4;->a:Ljava/lang/ClassLoader;

    .line 1242
    .line 1243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1244
    .line 1245
    .line 1246
    move-result v1

    .line 1247
    if-eqz v1, :cond_25

    .line 1248
    .line 1249
    move v3, v10

    .line 1250
    :cond_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1251
    .line 1252
    .line 1253
    move-result-wide v1

    .line 1254
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 1255
    .line 1256
    .line 1257
    invoke-interface {p0, v3, v1, v2}, Lhw4;->setMeasurementEnabled(ZJ)V

    .line 1258
    .line 1259
    .line 1260
    goto/16 :goto_1a

    .line 1261
    .line 1262
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v1

    .line 1266
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v2

    .line 1270
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v3

    .line 1274
    if-nez v3, :cond_26

    .line 1275
    .line 1276
    goto :goto_13

    .line 1277
    :cond_26
    invoke-interface {v3, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v4

    .line 1281
    instance-of v5, v4, Lmw4;

    .line 1282
    .line 1283
    if-eqz v5, :cond_27

    .line 1284
    .line 1285
    move-object v5, v4

    .line 1286
    check-cast v5, Lmw4;

    .line 1287
    .line 1288
    goto :goto_13

    .line 1289
    :cond_27
    new-instance v5, Liw4;

    .line 1290
    .line 1291
    invoke-direct {v5, v3}, Liw4;-><init>(Landroid/os/IBinder;)V

    .line 1292
    .line 1293
    .line 1294
    :goto_13
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 1295
    .line 1296
    .line 1297
    invoke-interface {p0, v1, v2, v5}, Lhw4;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lmw4;)V

    .line 1298
    .line 1299
    .line 1300
    goto/16 :goto_1a

    .line 1301
    .line 1302
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v1

    .line 1306
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v2

    .line 1310
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1311
    .line 1312
    invoke-static {p2, v3}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v3

    .line 1316
    check-cast v3, Landroid/os/Bundle;

    .line 1317
    .line 1318
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 1319
    .line 1320
    .line 1321
    invoke-interface {p0, v1, v2, v3}, Lhw4;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1322
    .line 1323
    .line 1324
    goto/16 :goto_1a

    .line 1325
    .line 1326
    :pswitch_33
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1327
    .line 1328
    invoke-static {p2, v1}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v1

    .line 1332
    check-cast v1, Landroid/os/Bundle;

    .line 1333
    .line 1334
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1335
    .line 1336
    .line 1337
    move-result-wide v2

    .line 1338
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 1339
    .line 1340
    .line 1341
    invoke-interface {p0, v1, v2, v3}, Lhw4;->setConditionalUserProperty(Landroid/os/Bundle;J)V

    .line 1342
    .line 1343
    .line 1344
    goto/16 :goto_1a

    .line 1345
    .line 1346
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v1

    .line 1350
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1351
    .line 1352
    .line 1353
    move-result-wide v2

    .line 1354
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 1355
    .line 1356
    .line 1357
    invoke-interface {p0, v1, v2, v3}, Lhw4;->setUserId(Ljava/lang/String;J)V

    .line 1358
    .line 1359
    .line 1360
    goto/16 :goto_1a

    .line 1361
    .line 1362
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v1

    .line 1366
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v2

    .line 1370
    if-nez v2, :cond_28

    .line 1371
    .line 1372
    goto :goto_14

    .line 1373
    :cond_28
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v3

    .line 1377
    instance-of v4, v3, Lmw4;

    .line 1378
    .line 1379
    if-eqz v4, :cond_29

    .line 1380
    .line 1381
    move-object v5, v3

    .line 1382
    check-cast v5, Lmw4;

    .line 1383
    .line 1384
    goto :goto_14

    .line 1385
    :cond_29
    new-instance v5, Liw4;

    .line 1386
    .line 1387
    invoke-direct {v5, v2}, Liw4;-><init>(Landroid/os/IBinder;)V

    .line 1388
    .line 1389
    .line 1390
    :goto_14
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 1391
    .line 1392
    .line 1393
    invoke-interface {p0, v1, v5}, Lhw4;->getMaxUserProperties(Ljava/lang/String;Lmw4;)V

    .line 1394
    .line 1395
    .line 1396
    goto/16 :goto_1a

    .line 1397
    .line 1398
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v1

    .line 1402
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v2

    .line 1406
    sget-object v6, Lku4;->a:Ljava/lang/ClassLoader;

    .line 1407
    .line 1408
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1409
    .line 1410
    .line 1411
    move-result v6

    .line 1412
    if-eqz v6, :cond_2a

    .line 1413
    .line 1414
    move v3, v10

    .line 1415
    :cond_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v6

    .line 1419
    if-nez v6, :cond_2b

    .line 1420
    .line 1421
    goto :goto_15

    .line 1422
    :cond_2b
    invoke-interface {v6, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v4

    .line 1426
    instance-of v5, v4, Lmw4;

    .line 1427
    .line 1428
    if-eqz v5, :cond_2c

    .line 1429
    .line 1430
    move-object v5, v4

    .line 1431
    check-cast v5, Lmw4;

    .line 1432
    .line 1433
    goto :goto_15

    .line 1434
    :cond_2c
    new-instance v5, Liw4;

    .line 1435
    .line 1436
    invoke-direct {v5, v6}, Liw4;-><init>(Landroid/os/IBinder;)V

    .line 1437
    .line 1438
    .line 1439
    :goto_15
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 1440
    .line 1441
    .line 1442
    invoke-interface {p0, v1, v2, v3, v5}, Lhw4;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLmw4;)V

    .line 1443
    .line 1444
    .line 1445
    goto/16 :goto_1a

    .line 1446
    .line 1447
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v1

    .line 1451
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1452
    .line 1453
    .line 1454
    move-result-object v2

    .line 1455
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v4

    .line 1459
    invoke-static {v4}, Lyn2;->E(Landroid/os/IBinder;)Lkn1;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v4

    .line 1463
    sget-object v5, Lku4;->a:Ljava/lang/ClassLoader;

    .line 1464
    .line 1465
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1466
    .line 1467
    .line 1468
    move-result v5

    .line 1469
    if-eqz v5, :cond_2d

    .line 1470
    .line 1471
    move v3, v10

    .line 1472
    :cond_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1473
    .line 1474
    .line 1475
    move-result-wide v5

    .line 1476
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 1477
    .line 1478
    .line 1479
    move-object v0, v4

    .line 1480
    move v4, v3

    .line 1481
    move-object v3, v0

    .line 1482
    move-object v0, p0

    .line 1483
    invoke-interface/range {v0 .. v6}, Lhw4;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lkn1;ZJ)V

    .line 1484
    .line 1485
    .line 1486
    goto/16 :goto_1a

    .line 1487
    .line 1488
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v1

    .line 1492
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v2

    .line 1496
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1497
    .line 1498
    invoke-static {p2, v0}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v0

    .line 1502
    move-object v3, v0

    .line 1503
    check-cast v3, Landroid/os/Bundle;

    .line 1504
    .line 1505
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v0

    .line 1509
    if-nez v0, :cond_2e

    .line 1510
    .line 1511
    :goto_16
    move-object v4, v5

    .line 1512
    goto :goto_17

    .line 1513
    :cond_2e
    invoke-interface {v0, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v4

    .line 1517
    instance-of v5, v4, Lmw4;

    .line 1518
    .line 1519
    if-eqz v5, :cond_2f

    .line 1520
    .line 1521
    move-object v5, v4

    .line 1522
    check-cast v5, Lmw4;

    .line 1523
    .line 1524
    goto :goto_16

    .line 1525
    :cond_2f
    new-instance v5, Liw4;

    .line 1526
    .line 1527
    invoke-direct {v5, v0}, Liw4;-><init>(Landroid/os/IBinder;)V

    .line 1528
    .line 1529
    .line 1530
    goto :goto_16

    .line 1531
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1532
    .line 1533
    .line 1534
    move-result-wide v5

    .line 1535
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 1536
    .line 1537
    .line 1538
    move-object v0, p0

    .line 1539
    invoke-interface/range {v0 .. v6}, Lhw4;->logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lmw4;J)V

    .line 1540
    .line 1541
    .line 1542
    goto :goto_1a

    .line 1543
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1544
    .line 1545
    .line 1546
    move-result-object v1

    .line 1547
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v2

    .line 1551
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1552
    .line 1553
    invoke-static {p2, v0}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v0

    .line 1557
    check-cast v0, Landroid/os/Bundle;

    .line 1558
    .line 1559
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1560
    .line 1561
    .line 1562
    move-result v4

    .line 1563
    if-eqz v4, :cond_30

    .line 1564
    .line 1565
    move v4, v10

    .line 1566
    goto :goto_18

    .line 1567
    :cond_30
    move v4, v3

    .line 1568
    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1569
    .line 1570
    .line 1571
    move-result v5

    .line 1572
    if-eqz v5, :cond_31

    .line 1573
    .line 1574
    move v5, v10

    .line 1575
    goto :goto_19

    .line 1576
    :cond_31
    move v5, v3

    .line 1577
    :goto_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1578
    .line 1579
    .line 1580
    move-result-wide v6

    .line 1581
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 1582
    .line 1583
    .line 1584
    move-object v3, v0

    .line 1585
    move-object v0, p0

    .line 1586
    invoke-interface/range {v0 .. v7}, Lhw4;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    .line 1587
    .line 1588
    .line 1589
    goto :goto_1a

    .line 1590
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v1

    .line 1594
    invoke-static {v1}, Lyn2;->E(Landroid/os/IBinder;)Lkn1;

    .line 1595
    .line 1596
    .line 1597
    move-result-object v1

    .line 1598
    sget-object v2, Lix4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1599
    .line 1600
    invoke-static {p2, v2}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v2

    .line 1604
    check-cast v2, Lix4;

    .line 1605
    .line 1606
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 1607
    .line 1608
    .line 1609
    move-result-wide v3

    .line 1610
    invoke-static {p2}, Lku4;->d(Landroid/os/Parcel;)V

    .line 1611
    .line 1612
    .line 1613
    invoke-interface {p0, v1, v2, v3, v4}, Lhw4;->initialize(Lkn1;Lix4;J)V

    .line 1614
    .line 1615
    .line 1616
    :goto_1a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1617
    .line 1618
    .line 1619
    return v10

    .line 1620
    nop

    .line 1621
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_0
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
    .end packed-switch
.end method

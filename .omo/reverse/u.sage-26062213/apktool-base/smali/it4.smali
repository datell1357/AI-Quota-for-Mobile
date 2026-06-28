.class public abstract Lit4;
.super Landroid/os/Binder;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lit4;->c:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lit4;->c:I

    .line 3
    .line 4
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public abstract E(ILandroid/os/Parcel;)Z
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget v0, p0, Lit4;->c:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Lit4;->c:I

    .line 8
    .line 9
    const v5, 0xffffff

    .line 10
    .line 11
    .line 12
    packed-switch v3, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    if-le v1, v5, :cond_0

    .line 16
    .line 17
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual/range {p0 .. p2}, Lit4;->E(ILandroid/os/Parcel;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    :goto_0
    return v4

    .line 37
    :pswitch_0
    if-le v1, v5, :cond_2

    .line 38
    .line 39
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    :goto_1
    const/4 v4, 0x1

    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :cond_2
    invoke-virtual {v0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    check-cast v0, Lgc5;

    .line 56
    .line 57
    const/4 v3, 0x2

    .line 58
    const-string v5, "Parcel data not fully consumed, unread size: "

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    const/4 v7, 0x0

    .line 62
    if-eq v1, v3, :cond_7

    .line 63
    .line 64
    const/4 v3, 0x3

    .line 65
    if-eq v1, v3, :cond_4

    .line 66
    .line 67
    move v4, v7

    .line 68
    goto/16 :goto_5

    .line 69
    .line 70
    :cond_4
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 71
    .line 72
    sget v3, Lfv4;->a:I

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_5

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    move-object v6, v1

    .line 86
    check-cast v6, Landroid/os/Parcelable;

    .line 87
    .line 88
    :goto_2
    check-cast v6, Landroid/os/Bundle;

    .line 89
    .line 90
    invoke-virtual {v2}, Landroid/os/Parcel;->dataAvail()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-gtz v1, :cond_6

    .line 95
    .line 96
    iget-object v1, v0, Lgc5;->f:Lwc5;

    .line 97
    .line 98
    iget-object v1, v1, Lwc5;->a:Ltf5;

    .line 99
    .line 100
    iget-object v2, v0, Lgc5;->e:Lpw3;

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ltf5;->c(Lpw3;)V

    .line 103
    .line 104
    .line 105
    const-string v1, "onCompleteUpdate"

    .line 106
    .line 107
    new-array v2, v7, [Ljava/lang/Object;

    .line 108
    .line 109
    iget-object v0, v0, Lgc5;->d:Lsg0;

    .line 110
    .line 111
    invoke-virtual {v0, v1, v2}, Lsg0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_6
    new-instance v0, Landroid/os/BadParcelableException;

    .line 116
    .line 117
    invoke-static {v1, v5}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-direct {v0, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v0

    .line 125
    :cond_7
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 126
    .line 127
    sget v3, Lfv4;->a:I

    .line 128
    .line 129
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-nez v3, :cond_8

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_8
    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    move-object v6, v1

    .line 141
    check-cast v6, Landroid/os/Parcelable;

    .line 142
    .line 143
    :goto_3
    check-cast v6, Landroid/os/Bundle;

    .line 144
    .line 145
    invoke-virtual {v2}, Landroid/os/Parcel;->dataAvail()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-gtz v1, :cond_f

    .line 150
    .line 151
    iget-object v1, v0, Lgc5;->f:Lwc5;

    .line 152
    .line 153
    iget-object v1, v1, Lwc5;->a:Ltf5;

    .line 154
    .line 155
    iget-object v2, v0, Lgc5;->e:Lpw3;

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ltf5;->c(Lpw3;)V

    .line 158
    .line 159
    .line 160
    const-string v1, "onRequestInfo"

    .line 161
    .line 162
    new-array v3, v7, [Ljava/lang/Object;

    .line 163
    .line 164
    iget-object v5, v0, Lgc5;->d:Lsg0;

    .line 165
    .line 166
    invoke-virtual {v5, v1, v3}, Lsg0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    const-string v1, "error.code"

    .line 170
    .line 171
    const/4 v3, -0x2

    .line 172
    invoke-virtual {v6, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-eqz v5, :cond_9

    .line 177
    .line 178
    new-instance v0, Lxr1;

    .line 179
    .line 180
    invoke-virtual {v6, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    invoke-direct {v0, v1}, Lxr1;-><init>(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v0}, Lpw3;->c(Ljava/lang/Exception;)Z

    .line 188
    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :cond_9
    const-string v1, "version.code"

    .line 193
    .line 194
    const/4 v3, -0x1

    .line 195
    invoke-virtual {v6, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 196
    .line 197
    .line 198
    const-string v1, "update.availability"

    .line 199
    .line 200
    invoke-virtual {v6, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    const-string v1, "install.status"

    .line 205
    .line 206
    invoke-virtual {v6, v1, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 207
    .line 208
    .line 209
    const-string v1, "client.version.staleness"

    .line 210
    .line 211
    invoke-virtual {v6, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-ne v5, v3, :cond_a

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_a
    invoke-virtual {v6, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    :goto_4
    const-string v1, "in.app.update.priority"

    .line 222
    .line 223
    invoke-virtual {v6, v1, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 224
    .line 225
    .line 226
    const-string v1, "bytes.downloaded"

    .line 227
    .line 228
    invoke-virtual {v6, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 229
    .line 230
    .line 231
    const-string v1, "total.bytes.to.download"

    .line 232
    .line 233
    invoke-virtual {v6, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 234
    .line 235
    .line 236
    const-string v1, "additional.size.required"

    .line 237
    .line 238
    invoke-virtual {v6, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 239
    .line 240
    .line 241
    move-result-wide v10

    .line 242
    iget-object v0, v0, Lgc5;->g:Lwc5;

    .line 243
    .line 244
    iget-object v0, v0, Lwc5;->d:Lyd5;

    .line 245
    .line 246
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    new-instance v1, Ljava/io/File;

    .line 250
    .line 251
    iget-object v0, v0, Lyd5;->a:Landroid/content/Context;

    .line 252
    .line 253
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    const-string v3, "assetpacks"

    .line 258
    .line 259
    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-static {v1}, Lyd5;->a(Ljava/io/File;)J

    .line 263
    .line 264
    .line 265
    move-result-wide v12

    .line 266
    const-string v0, "blocking.intent"

    .line 267
    .line 268
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    move-object v14, v1

    .line 273
    check-cast v14, Landroid/app/PendingIntent;

    .line 274
    .line 275
    const-string v1, "nonblocking.intent"

    .line 276
    .line 277
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    move-object v15, v3

    .line 282
    check-cast v15, Landroid/app/PendingIntent;

    .line 283
    .line 284
    const-string v3, "blocking.destructive.intent"

    .line 285
    .line 286
    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    move-object/from16 v16, v5

    .line 291
    .line 292
    check-cast v16, Landroid/app/PendingIntent;

    .line 293
    .line 294
    const-string v5, "nonblocking.destructive.intent"

    .line 295
    .line 296
    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 297
    .line 298
    .line 299
    move-result-object v7

    .line 300
    move-object/from16 v17, v7

    .line 301
    .line 302
    check-cast v17, Landroid/app/PendingIntent;

    .line 303
    .line 304
    new-instance v7, Ljava/util/HashMap;

    .line 305
    .line 306
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 307
    .line 308
    .line 309
    const-string v8, "update.precondition.failures:blocking.destructive.intent"

    .line 310
    .line 311
    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 312
    .line 313
    .line 314
    move-result-object v8

    .line 315
    new-instance v4, Ljava/util/HashSet;

    .line 316
    .line 317
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 318
    .line 319
    .line 320
    if-eqz v8, :cond_b

    .line 321
    .line 322
    invoke-virtual {v4, v8}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 323
    .line 324
    .line 325
    :cond_b
    invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    const-string v3, "update.precondition.failures:nonblocking.destructive.intent"

    .line 329
    .line 330
    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    new-instance v4, Ljava/util/HashSet;

    .line 335
    .line 336
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 337
    .line 338
    .line 339
    if-eqz v3, :cond_c

    .line 340
    .line 341
    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 342
    .line 343
    .line 344
    :cond_c
    invoke-virtual {v7, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    const-string v3, "update.precondition.failures:blocking.intent"

    .line 348
    .line 349
    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    new-instance v4, Ljava/util/HashSet;

    .line 354
    .line 355
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 356
    .line 357
    .line 358
    if-eqz v3, :cond_d

    .line 359
    .line 360
    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 361
    .line 362
    .line 363
    :cond_d
    invoke-virtual {v7, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    const-string v0, "update.precondition.failures:nonblocking.intent"

    .line 367
    .line 368
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    new-instance v3, Ljava/util/HashSet;

    .line 373
    .line 374
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 375
    .line 376
    .line 377
    if-eqz v0, :cond_e

    .line 378
    .line 379
    invoke-virtual {v3, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 380
    .line 381
    .line 382
    :cond_e
    invoke-virtual {v7, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    new-instance v8, Lfh;

    .line 386
    .line 387
    invoke-direct/range {v8 .. v17}, Lfh;-><init>(IJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v2, v8}, Lpw3;->d(Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    goto/16 :goto_1

    .line 394
    .line 395
    :goto_5
    return v4

    .line 396
    :cond_f
    new-instance v0, Landroid/os/BadParcelableException;

    .line 397
    .line 398
    invoke-static {v1, v5}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-direct {v0, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    throw v0

    .line 406
    nop

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

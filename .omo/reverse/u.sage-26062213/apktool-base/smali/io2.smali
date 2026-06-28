.class public final Lio2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final B:Ljava/util/List;

.field public static final C:Ljava/util/List;


# instance fields
.field public final A:Lwu4;

.field public final a:Lqd1;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Lq73;

.field public final e:Z

.field public final f:Z

.field public final g:Lw13;

.field public final h:Z

.field public final i:Z

.field public final j:Lmj1;

.field public final k:Lw13;

.field public final l:Ljava/net/ProxySelector;

.field public final m:Lw13;

.field public final n:Ljavax/net/SocketFactory;

.field public final o:Ljavax/net/ssl/SSLSocketFactory;

.field public final p:Ljavax/net/ssl/X509TrustManager;

.field public final q:Ljava/util/List;

.field public final r:Ljava/util/List;

.field public final s:Lho2;

.field public final t:Lj30;

.field public final u:Lzf5;

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:Lra3;

.field public final z:Ltw3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ld03;->s:Ld03;

    .line 2
    .line 3
    sget-object v1, Ld03;->q:Ld03;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ld03;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lhi4;->i([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lio2;->B:Ljava/util/List;

    .line 14
    .line 15
    sget-object v0, Lne0;->e:Lne0;

    .line 16
    .line 17
    sget-object v1, Lne0;->f:Lne0;

    .line 18
    .line 19
    filled-new-array {v0, v1}, [Lne0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lhi4;->i([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lio2;->C:Ljava/util/List;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 1
    new-instance v0, Lqd1;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Lqd1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    sget-object v3, Lhi4;->a:Ljava/util/TimeZone;

    .line 18
    .line 19
    new-instance v3, Lq73;

    .line 20
    .line 21
    const/16 v4, 0x15

    .line 22
    .line 23
    invoke-direct {v3, v4}, Lq73;-><init>(I)V

    .line 24
    .line 25
    .line 26
    sget-object v4, Lw13;->o:Lw13;

    .line 27
    .line 28
    sget-object v5, Lmj1;->I:Lmj1;

    .line 29
    .line 30
    sget-object v6, Lw13;->x:Lw13;

    .line 31
    .line 32
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    sget-object v8, Lio2;->C:Ljava/util/List;

    .line 40
    .line 41
    sget-object v9, Lio2;->B:Ljava/util/List;

    .line 42
    .line 43
    sget-object v10, Lho2;->a:Lho2;

    .line 44
    .line 45
    sget-object v11, Lj30;->c:Lj30;

    .line 46
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lio2;->a:Lqd1;

    .line 51
    .line 52
    invoke-static {v1}, Lhi4;->h(Ljava/util/List;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lio2;->b:Ljava/util/List;

    .line 57
    .line 58
    invoke-static {v2}, Lhi4;->h(Ljava/util/List;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lio2;->c:Ljava/util/List;

    .line 63
    .line 64
    iput-object v3, p0, Lio2;->d:Lq73;

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lio2;->e:Z

    .line 68
    .line 69
    iput-boolean v0, p0, Lio2;->f:Z

    .line 70
    .line 71
    iput-object v4, p0, Lio2;->g:Lw13;

    .line 72
    .line 73
    iput-boolean v0, p0, Lio2;->h:Z

    .line 74
    .line 75
    iput-boolean v0, p0, Lio2;->i:Z

    .line 76
    .line 77
    iput-object v5, p0, Lio2;->j:Lmj1;

    .line 78
    .line 79
    iput-object v6, p0, Lio2;->k:Lw13;

    .line 80
    .line 81
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-nez v1, :cond_0

    .line 86
    .line 87
    sget-object v1, Lgn2;->a:Lgn2;

    .line 88
    .line 89
    :cond_0
    iput-object v1, p0, Lio2;->l:Ljava/net/ProxySelector;

    .line 90
    .line 91
    iput-object v4, p0, Lio2;->m:Lw13;

    .line 92
    .line 93
    iput-object v7, p0, Lio2;->n:Ljavax/net/SocketFactory;

    .line 94
    .line 95
    iput-object v8, p0, Lio2;->q:Ljava/util/List;

    .line 96
    .line 97
    iput-object v9, p0, Lio2;->r:Ljava/util/List;

    .line 98
    .line 99
    iput-object v10, p0, Lio2;->s:Lho2;

    .line 100
    .line 101
    const/16 v1, 0x2710

    .line 102
    .line 103
    iput v1, p0, Lio2;->v:I

    .line 104
    .line 105
    iput v1, p0, Lio2;->w:I

    .line 106
    .line 107
    iput v1, p0, Lio2;->x:I

    .line 108
    .line 109
    new-instance v1, Lra3;

    .line 110
    .line 111
    const/4 v2, 0x0

    .line 112
    invoke-direct {v1, v2}, Lra3;-><init>(I)V

    .line 113
    .line 114
    .line 115
    iput-object v1, p0, Lio2;->y:Lra3;

    .line 116
    .line 117
    sget-object v1, Ltw3;->l:Ltw3;

    .line 118
    .line 119
    iput-object v1, p0, Lio2;->z:Ltw3;

    .line 120
    .line 121
    new-instance v1, Lwu4;

    .line 122
    .line 123
    const/16 v3, 0x10

    .line 124
    .line 125
    invoke-direct {v1, v3}, Lwu4;-><init>(I)V

    .line 126
    .line 127
    .line 128
    iput-object v1, p0, Lio2;->A:Lwu4;

    .line 129
    .line 130
    const/4 v1, 0x0

    .line 131
    if-eqz v8, :cond_1

    .line 132
    .line 133
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-eqz v3, :cond_1

    .line 138
    .line 139
    goto/16 :goto_1

    .line 140
    .line 141
    :cond_1
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_5

    .line 150
    .line 151
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    check-cast v4, Lne0;

    .line 156
    .line 157
    iget-boolean v4, v4, Lne0;->a:Z

    .line 158
    .line 159
    if-eqz v4, :cond_2

    .line 160
    .line 161
    sget-object v3, Liv2;->a:Liv2;

    .line 162
    .line 163
    sget-object v3, Liv2;->a:Liv2;

    .line 164
    .line 165
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v3, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    array-length v4, v3

    .line 187
    if-ne v4, v0, :cond_4

    .line 188
    .line 189
    aget-object v4, v3, v2

    .line 190
    .line 191
    instance-of v5, v4, Ljavax/net/ssl/X509TrustManager;

    .line 192
    .line 193
    if-eqz v5, :cond_4

    .line 194
    .line 195
    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    .line 196
    .line 197
    iput-object v4, p0, Lio2;->p:Ljavax/net/ssl/X509TrustManager;

    .line 198
    .line 199
    sget-object v3, Liv2;->a:Liv2;

    .line 200
    .line 201
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    :try_start_0
    invoke-virtual {v3}, Liv2;->k()Ljavax/net/ssl/SSLContext;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    .line 209
    .line 210
    aput-object v4, v0, v2

    .line 211
    .line 212
    invoke-virtual {v3, v1, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .line 221
    .line 222
    iput-object v0, p0, Lio2;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 223
    .line 224
    sget-object v0, Liv2;->a:Liv2;

    .line 225
    .line 226
    invoke-virtual {v0, v4}, Liv2;->c(Ljavax/net/ssl/X509TrustManager;)Lzf5;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    iput-object v0, p0, Lio2;->u:Lzf5;

    .line 231
    .line 232
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    iget-object v2, v11, Lj30;->b:Lzf5;

    .line 236
    .line 237
    invoke-static {v2, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-eqz v2, :cond_3

    .line 242
    .line 243
    goto :goto_0

    .line 244
    :cond_3
    new-instance v2, Lj30;

    .line 245
    .line 246
    iget-object v3, v11, Lj30;->a:Ljava/util/Set;

    .line 247
    .line 248
    invoke-direct {v2, v3, v0}, Lj30;-><init>(Ljava/util/Set;Lzf5;)V

    .line 249
    .line 250
    .line 251
    move-object v11, v2

    .line 252
    :goto_0
    iput-object v11, p0, Lio2;->t:Lj30;

    .line 253
    .line 254
    goto :goto_2

    .line 255
    :catch_0
    move-exception p0

    .line 256
    new-instance v0, Ljava/lang/AssertionError;

    .line 257
    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    const-string v2, "No System TLS: "

    .line 261
    .line 262
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-direct {v0, v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    .line 274
    .line 275
    throw v0

    .line 276
    :cond_4
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    const-string v0, "Unexpected default trust managers: "

    .line 284
    .line 285
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    invoke-static {p0}, Lp61;->e(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    throw v1

    .line 293
    :cond_5
    :goto_1
    iput-object v1, p0, Lio2;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 294
    .line 295
    iput-object v1, p0, Lio2;->u:Lzf5;

    .line 296
    .line 297
    iput-object v1, p0, Lio2;->p:Ljavax/net/ssl/X509TrustManager;

    .line 298
    .line 299
    sget-object v0, Lj30;->c:Lj30;

    .line 300
    .line 301
    iput-object v0, p0, Lio2;->t:Lj30;

    .line 302
    .line 303
    :goto_2
    iget-object v0, p0, Lio2;->p:Ljavax/net/ssl/X509TrustManager;

    .line 304
    .line 305
    iget-object v2, p0, Lio2;->u:Lzf5;

    .line 306
    .line 307
    iget-object v3, p0, Lio2;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 308
    .line 309
    iget-object v4, p0, Lio2;->c:Ljava/util/List;

    .line 310
    .line 311
    iget-object v5, p0, Lio2;->b:Ljava/util/List;

    .line 312
    .line 313
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v6

    .line 320
    if-nez v6, :cond_11

    .line 321
    .line 322
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v5

    .line 329
    if-nez v5, :cond_10

    .line 330
    .line 331
    iget-object v4, p0, Lio2;->q:Ljava/util/List;

    .line 332
    .line 333
    if-eqz v4, :cond_6

    .line 334
    .line 335
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 336
    .line 337
    .line 338
    move-result v5

    .line 339
    if-eqz v5, :cond_6

    .line 340
    .line 341
    goto :goto_3

    .line 342
    :cond_6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 347
    .line 348
    .line 349
    move-result v5

    .line 350
    if-eqz v5, :cond_b

    .line 351
    .line 352
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    check-cast v5, Lne0;

    .line 357
    .line 358
    iget-boolean v5, v5, Lne0;->a:Z

    .line 359
    .line 360
    if-eqz v5, :cond_7

    .line 361
    .line 362
    if-eqz v3, :cond_a

    .line 363
    .line 364
    if-eqz v2, :cond_9

    .line 365
    .line 366
    if-eqz v0, :cond_8

    .line 367
    .line 368
    goto :goto_4

    .line 369
    :cond_8
    const-string p0, "x509TrustManager == null"

    .line 370
    .line 371
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    throw v1

    .line 375
    :cond_9
    const-string p0, "certificateChainCleaner == null"

    .line 376
    .line 377
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    throw v1

    .line 381
    :cond_a
    const-string p0, "sslSocketFactory == null"

    .line 382
    .line 383
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    throw v1

    .line 387
    :cond_b
    :goto_3
    const-string v4, "Check failed."

    .line 388
    .line 389
    if-nez v3, :cond_f

    .line 390
    .line 391
    if-nez v2, :cond_e

    .line 392
    .line 393
    if-nez v0, :cond_d

    .line 394
    .line 395
    iget-object p0, p0, Lio2;->t:Lj30;

    .line 396
    .line 397
    sget-object v0, Lj30;->c:Lj30;

    .line 398
    .line 399
    invoke-static {p0, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result p0

    .line 403
    if-eqz p0, :cond_c

    .line 404
    .line 405
    :goto_4
    return-void

    .line 406
    :cond_c
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    throw v1

    .line 410
    :cond_d
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    throw v1

    .line 414
    :cond_e
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    throw v1

    .line 418
    :cond_f
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    throw v1

    .line 422
    :cond_10
    const-string p0, "Null network interceptor: "

    .line 423
    .line 424
    invoke-static {v4, p0}, Lp61;->y(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    throw v1

    .line 428
    :cond_11
    const-string p0, "Null interceptor: "

    .line 429
    .line 430
    invoke-static {v5, p0}, Lp61;->y(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    throw v1
.end method

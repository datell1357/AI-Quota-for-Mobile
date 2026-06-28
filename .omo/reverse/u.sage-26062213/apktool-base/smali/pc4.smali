.class public final Lpc4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;
.implements Leh0;
.implements Lcu3;
.implements Lxo2;
.implements Lqo4;
.implements Lfd5;
.implements Lpi;


# instance fields
.field public final synthetic n:I

.field public o:Ljava/lang/Object;

.field public p:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    iput p1, p0, Lpc4;->n:I

    .line 2
    .line 3
    sparse-switch p1, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lug2;

    .line 10
    .line 11
    const/16 v0, 0x10

    .line 12
    .line 13
    new-array v0, v0, [Ljava/lang/ref/Reference;

    .line 14
    .line 15
    invoke-direct {p1, v0}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lpc4;->o:Ljava/lang/Object;

    .line 19
    .line 20
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lpc4;->p:Ljava/lang/Object;

    .line 26
    .line 27
    return-void

    .line 28
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance p1, Ljava/util/TreeMap;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lpc4;->o:Ljava/lang/Object;

    .line 37
    .line 38
    new-instance p1, Ljava/util/TreeMap;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lpc4;->p:Ljava/lang/Object;

    .line 44
    .line 45
    return-void

    .line 46
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance p1, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lpc4;->o:Ljava/lang/Object;

    .line 59
    .line 60
    new-instance p1, Lws4;

    .line 61
    .line 62
    const/4 v0, 0x6

    .line 63
    invoke-direct {p1, v0}, Lws4;-><init>(I)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lpc4;->p:Ljava/lang/Object;

    .line 67
    .line 68
    new-instance p1, Lws4;

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-direct {p1, v0}, Lws4;-><init>(I)V

    .line 72
    .line 73
    .line 74
    sget-object v0, Lfu4;->s:Lfu4;

    .line 75
    .line 76
    iget-object v1, p1, Lws4;->a:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    sget-object v0, Lfu4;->t:Lfu4;

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    sget-object v0, Lfu4;->u:Lfu4;

    .line 87
    .line 88
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    sget-object v0, Lfu4;->v:Lfu4;

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    sget-object v0, Lfu4;->w:Lfu4;

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    sget-object v0, Lfu4;->x:Lfu4;

    .line 102
    .line 103
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    sget-object v0, Lfu4;->y:Lfu4;

    .line 107
    .line 108
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1}, Lpc4;->g(Lws4;)V

    .line 112
    .line 113
    .line 114
    new-instance p1, Lws4;

    .line 115
    .line 116
    const/4 v0, 0x1

    .line 117
    invoke-direct {p1, v0}, Lws4;-><init>(I)V

    .line 118
    .line 119
    .line 120
    sget-object v0, Lfu4;->J:Lfu4;

    .line 121
    .line 122
    iget-object v1, p1, Lws4;->a:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    sget-object v0, Lfu4;->W:Lfu4;

    .line 128
    .line 129
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    sget-object v0, Lfu4;->X:Lfu4;

    .line 133
    .line 134
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    sget-object v0, Lfu4;->Y:Lfu4;

    .line 138
    .line 139
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    sget-object v0, Lfu4;->Z:Lfu4;

    .line 143
    .line 144
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    sget-object v0, Lfu4;->b0:Lfu4;

    .line 148
    .line 149
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    sget-object v0, Lfu4;->c0:Lfu4;

    .line 153
    .line 154
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    sget-object v0, Lfu4;->h0:Lfu4;

    .line 158
    .line 159
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, p1}, Lpc4;->g(Lws4;)V

    .line 163
    .line 164
    .line 165
    new-instance p1, Lws4;

    .line 166
    .line 167
    const/4 v0, 0x2

    .line 168
    invoke-direct {p1, v0}, Lws4;-><init>(I)V

    .line 169
    .line 170
    .line 171
    sget-object v0, Lfu4;->q:Lfu4;

    .line 172
    .line 173
    iget-object v1, p1, Lws4;->a:Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    sget-object v0, Lfu4;->z:Lfu4;

    .line 179
    .line 180
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    sget-object v0, Lfu4;->A:Lfu4;

    .line 184
    .line 185
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    sget-object v0, Lfu4;->B:Lfu4;

    .line 189
    .line 190
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    sget-object v0, Lfu4;->G:Lfu4;

    .line 194
    .line 195
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    sget-object v0, Lfu4;->D:Lfu4;

    .line 199
    .line 200
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    sget-object v0, Lfu4;->H:Lfu4;

    .line 204
    .line 205
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    sget-object v0, Lfu4;->L:Lfu4;

    .line 209
    .line 210
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    sget-object v0, Lfu4;->a0:Lfu4;

    .line 214
    .line 215
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    sget-object v0, Lfu4;->m0:Lfu4;

    .line 219
    .line 220
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    sget-object v0, Lfu4;->p0:Lfu4;

    .line 224
    .line 225
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    sget-object v0, Lfu4;->s0:Lfu4;

    .line 229
    .line 230
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    sget-object v0, Lfu4;->t0:Lfu4;

    .line 234
    .line 235
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, p1}, Lpc4;->g(Lws4;)V

    .line 239
    .line 240
    .line 241
    new-instance p1, Lws4;

    .line 242
    .line 243
    const/4 v0, 0x3

    .line 244
    invoke-direct {p1, v0}, Lws4;-><init>(I)V

    .line 245
    .line 246
    .line 247
    sget-object v0, Lfu4;->p:Lfu4;

    .line 248
    .line 249
    iget-object v1, p1, Lws4;->a:Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    sget-object v0, Lfu4;->g0:Lfu4;

    .line 255
    .line 256
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    sget-object v0, Lfu4;->j0:Lfu4;

    .line 260
    .line 261
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0, p1}, Lpc4;->g(Lws4;)V

    .line 265
    .line 266
    .line 267
    new-instance p1, Lws4;

    .line 268
    .line 269
    const/4 v0, 0x4

    .line 270
    invoke-direct {p1, v0}, Lws4;-><init>(I)V

    .line 271
    .line 272
    .line 273
    sget-object v0, Lfu4;->M:Lfu4;

    .line 274
    .line 275
    iget-object v1, p1, Lws4;->a:Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    sget-object v0, Lfu4;->N:Lfu4;

    .line 281
    .line 282
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    sget-object v0, Lfu4;->O:Lfu4;

    .line 286
    .line 287
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    sget-object v0, Lfu4;->P:Lfu4;

    .line 291
    .line 292
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    sget-object v0, Lfu4;->Q:Lfu4;

    .line 296
    .line 297
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    sget-object v0, Lfu4;->R:Lfu4;

    .line 301
    .line 302
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    sget-object v0, Lfu4;->S:Lfu4;

    .line 306
    .line 307
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    sget-object v0, Lfu4;->x0:Lfu4;

    .line 311
    .line 312
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0, p1}, Lpc4;->g(Lws4;)V

    .line 316
    .line 317
    .line 318
    new-instance p1, Lws4;

    .line 319
    .line 320
    const/4 v0, 0x5

    .line 321
    invoke-direct {p1, v0}, Lws4;-><init>(I)V

    .line 322
    .line 323
    .line 324
    sget-object v0, Lfu4;->o:Lfu4;

    .line 325
    .line 326
    iget-object v1, p1, Lws4;->a:Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    sget-object v0, Lfu4;->I:Lfu4;

    .line 332
    .line 333
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    sget-object v0, Lfu4;->d0:Lfu4;

    .line 337
    .line 338
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    sget-object v0, Lfu4;->e0:Lfu4;

    .line 342
    .line 343
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    sget-object v0, Lfu4;->f0:Lfu4;

    .line 347
    .line 348
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    sget-object v0, Lfu4;->k0:Lfu4;

    .line 352
    .line 353
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    sget-object v0, Lfu4;->l0:Lfu4;

    .line 357
    .line 358
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    sget-object v0, Lfu4;->n0:Lfu4;

    .line 362
    .line 363
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    sget-object v0, Lfu4;->o0:Lfu4;

    .line 367
    .line 368
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    sget-object v0, Lfu4;->r0:Lfu4;

    .line 372
    .line 373
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    invoke-virtual {p0, p1}, Lpc4;->g(Lws4;)V

    .line 377
    .line 378
    .line 379
    new-instance p1, Lws4;

    .line 380
    .line 381
    const/4 v0, 0x7

    .line 382
    invoke-direct {p1, v0}, Lws4;-><init>(I)V

    .line 383
    .line 384
    .line 385
    sget-object v0, Lfu4;->r:Lfu4;

    .line 386
    .line 387
    iget-object v1, p1, Lws4;->a:Ljava/util/ArrayList;

    .line 388
    .line 389
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    sget-object v0, Lfu4;->C:Lfu4;

    .line 393
    .line 394
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    sget-object v0, Lfu4;->E:Lfu4;

    .line 398
    .line 399
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    sget-object v0, Lfu4;->F:Lfu4;

    .line 403
    .line 404
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    sget-object v0, Lfu4;->K:Lfu4;

    .line 408
    .line 409
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    sget-object v0, Lfu4;->T:Lfu4;

    .line 413
    .line 414
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    sget-object v0, Lfu4;->U:Lfu4;

    .line 418
    .line 419
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    sget-object v0, Lfu4;->V:Lfu4;

    .line 423
    .line 424
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    sget-object v0, Lfu4;->i0:Lfu4;

    .line 428
    .line 429
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    sget-object v0, Lfu4;->q0:Lfu4;

    .line 433
    .line 434
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    sget-object v0, Lfu4;->u0:Lfu4;

    .line 438
    .line 439
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    sget-object v0, Lfu4;->v0:Lfu4;

    .line 443
    .line 444
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    sget-object v0, Lfu4;->w0:Lfu4;

    .line 448
    .line 449
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    invoke-virtual {p0, p1}, Lpc4;->g(Lws4;)V

    .line 453
    .line 454
    .line 455
    return-void

    .line 456
    nop

    .line 457
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_2
        0x19 -> :sswitch_1
        0x1d -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 464
    iput p1, p0, Lpc4;->n:I

    iput-object p2, p0, Lpc4;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 457
    iput p1, p0, Lpc4;->n:I

    iput-object p2, p0, Lpc4;->o:Ljava/lang/Object;

    iput-object p3, p0, Lpc4;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 458
    iput p1, p0, Lpc4;->n:I

    iput-object p3, p0, Lpc4;->o:Ljava/lang/Object;

    iput-object p2, p0, Lpc4;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsAnimation$Bounds;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lpc4;->n:I

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    invoke-static {p1}, Lmd4;->v(Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lnr1;->c(Landroid/graphics/Insets;)Lnr1;

    move-result-object v0

    .line 470
    iput-object v0, p0, Lpc4;->o:Ljava/lang/Object;

    .line 471
    invoke-static {p1}, Lmd4;->f(Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1}, Lnr1;->c(Landroid/graphics/Insets;)Lnr1;

    move-result-object p1

    .line 472
    iput-object p1, p0, Lpc4;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;Lgw4;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lpc4;->n:I

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lpc4;->p:Ljava/lang/Object;

    new-instance p2, Lww4;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, Lww4;-><init>(ILjava/lang/Object;)V

    .line 462
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->a(Lww4;)V

    new-instance p1, Ljava/util/HashSet;

    .line 463
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lpc4;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lez2;Lqd1;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lpc4;->n:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput-object p1, p0, Lpc4;->o:Ljava/lang/Object;

    .line 467
    iput-object p2, p0, Lpc4;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lra3;I)V
    .locals 1

    const/16 v0, 0x17

    iput v0, p0, Lpc4;->n:I

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpc4;->p:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lpc4;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lsm4;)V
    .locals 1

    const/16 v0, 0x1a

    iput v0, p0, Lpc4;->n:I

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpc4;->o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Led5;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p1, Led5;->d:Landroid/net/Uri;

    .line 2
    .line 3
    sget-object v1, Lvd5;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    sget-object v6, Lvd5;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 22
    .line 23
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v11

    .line 59
    add-int/lit8 v8, v8, 0xf

    .line 60
    .line 61
    add-int/2addr v8, v9

    .line 62
    new-instance v9, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    add-int/lit8 v8, v8, 0x1

    .line 65
    .line 66
    add-int/2addr v8, v10

    .line 67
    add-int/lit8 v8, v8, 0x1

    .line 68
    .line 69
    add-int/2addr v8, v11

    .line 70
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 71
    .line 72
    .line 73
    const-string v8, ".mobstore_tmp-"

    .line 74
    .line 75
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, "-"

    .line 82
    .line 83
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    iget-object v2, p1, Led5;->a:Lwd5;

    .line 130
    .line 131
    invoke-interface {v2, v1}, Lwd5;->c(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {p1, v3}, Led5;->a(Ljava/io/OutputStream;)Ljava/util/ArrayList;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iget-object v3, p0, Lpc4;->p:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v3, [Lpc4;

    .line 142
    .line 143
    const/4 v4, 0x0

    .line 144
    if-eqz v3, :cond_0

    .line 145
    .line 146
    aget-object v3, v3, v4

    .line 147
    .line 148
    invoke-virtual {v3, p1}, Lpc4;->f(Ljava/util/ArrayList;)V

    .line 149
    .line 150
    .line 151
    :cond_0
    :try_start_0
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .line 157
    :try_start_1
    iget-object v3, p0, Lpc4;->o:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v3, Lsm4;

    .line 160
    .line 161
    invoke-virtual {v3, p1}, Lsm4;->b(Ljava/io/OutputStream;)V

    .line 162
    .line 163
    .line 164
    iget-object p0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast p0, [Lpc4;

    .line 167
    .line 168
    if-eqz p0, :cond_2

    .line 169
    .line 170
    aget-object p0, p0, v4

    .line 171
    .line 172
    iget-object v3, p0, Lpc4;->p:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v3, Lqd5;

    .line 175
    .line 176
    if-eqz v3, :cond_1

    .line 177
    .line 178
    iget-object v3, p0, Lpc4;->o:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v3, Ljava/io/OutputStream;

    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 183
    .line 184
    .line 185
    iget-object p0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast p0, Lqd5;

    .line 188
    .line 189
    iget-object p0, p0, Lqd5;->n:Ljava/io/FileOutputStream;

    .line 190
    .line 191
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V

    .line 196
    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_1
    new-instance p0, Lc70;

    .line 200
    .line 201
    const-string v0, "Cannot sync underlying stream"

    .line 202
    .line 203
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :catchall_0
    move-exception p0

    .line 208
    goto :goto_1

    .line 209
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 210
    .line 211
    .line 212
    invoke-interface {v2, v1, v0}, Lwd5;->e(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 213
    .line 214
    .line 215
    const/4 p0, 0x0

    .line 216
    return-object p0

    .line 217
    :catch_0
    move-exception p0

    .line 218
    goto :goto_3

    .line 219
    :goto_1
    if-eqz p1, :cond_3

    .line 220
    .line 221
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :catchall_1
    move-exception p1

    .line 226
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 227
    .line 228
    .line 229
    :cond_3
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 230
    :goto_3
    :try_start_5
    invoke-interface {v2, v1}, Lwd5;->d(Landroid/net/Uri;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    .line 231
    .line 232
    .line 233
    :catch_1
    instance-of p1, p0, Ljava/io/IOException;

    .line 234
    .line 235
    if-eqz p1, :cond_4

    .line 236
    .line 237
    check-cast p0, Ljava/io/IOException;

    .line 238
    .line 239
    throw p0

    .line 240
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 241
    .line 242
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 243
    .line 244
    .line 245
    throw p1
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lpc4;->n:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x4

    .line 7
    const/4 v5, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p2, Lpw3;

    .line 12
    .line 13
    check-cast p1, La75;

    .line 14
    .line 15
    sget v0, Lw65;->a:I

    .line 16
    .line 17
    new-instance v0, Ln65;

    .line 18
    .line 19
    invoke-direct {v0, p2}, Ln65;-><init>(Lpw3;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ly65;

    .line 27
    .line 28
    iget-object p2, p0, Lpc4;->p:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p2, [Ljava/lang/String;

    .line 31
    .line 32
    iget-object p0, p0, Lpc4;->o:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1}, Lgu4;->F()Landroid/os/Parcel;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1, v0}, Lku4;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v5, v1}, Lgu4;->G(ILandroid/os/Parcel;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Lpc4;->o:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Loj4;

    .line 63
    .line 64
    check-cast p2, Lpw3;

    .line 65
    .line 66
    check-cast p1, Lpj4;

    .line 67
    .line 68
    new-instance v2, Lkj4;

    .line 69
    .line 70
    invoke-direct {v2, v0, p2, v1}, Lkj4;-><init>(Loj4;Lpw3;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Lik4;

    .line 78
    .line 79
    iget-object p0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;

    .line 82
    .line 83
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    check-cast p0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p1}, Ltj4;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p2}, Lhj4;->zba()Landroid/os/Parcel;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sget v1, Lbk4;->a:I

    .line 102
    .line 103
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v0, p0}, Lbk4;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 111
    .line 112
    .line 113
    invoke-static {v0, p1}, Lbk4;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v5, v0}, Lhj4;->zbb(ILandroid/os/Parcel;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :pswitch_1
    check-cast p2, Lpw3;

    .line 121
    .line 122
    iget-object v0, p0, Lpc4;->o:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v0, Loj4;

    .line 125
    .line 126
    iget-object p0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast p0, Lcom/google/android/gms/auth/api/identity/GetPhoneNumberHintIntentRequest;

    .line 129
    .line 130
    check-cast p1, Lpj4;

    .line 131
    .line 132
    new-instance v1, Lkj4;

    .line 133
    .line 134
    invoke-direct {v1, v0, p2, v4}, Lkj4;-><init>(Loj4;Lpw3;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    check-cast p2, Lik4;

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {p1}, Ltj4;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iget-object v0, v0, Loj4;->a:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {p2}, Lhj4;->zba()Landroid/os/Parcel;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    sget v3, Lbk4;->a:I

    .line 158
    .line 159
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v2, p0}, Lbk4;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-static {v2, p1}, Lbk4;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2, v4, v2}, Lhj4;->zbb(ILandroid/os/Parcel;)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :pswitch_2
    iget-object v0, p0, Lpc4;->o:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v0, Loj4;

    .line 182
    .line 183
    check-cast p2, Lpw3;

    .line 184
    .line 185
    check-cast p1, Lpj4;

    .line 186
    .line 187
    new-instance v1, Lkj4;

    .line 188
    .line 189
    invoke-direct {v1, v0, p2, v3}, Lkj4;-><init>(Loj4;Lpw3;I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    check-cast p2, Lik4;

    .line 197
    .line 198
    iget-object p0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;

    .line 201
    .line 202
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    check-cast p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;

    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-static {p1}, Ltj4;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {p2}, Lhj4;->zba()Landroid/os/Parcel;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    sget v2, Lbk4;->a:I

    .line 221
    .line 222
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 227
    .line 228
    .line 229
    invoke-static {v0, p0}, Lbk4;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 230
    .line 231
    .line 232
    invoke-static {v0, p1}, Lbk4;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2, v3, v0}, Lhj4;->zbb(ILandroid/os/Parcel;)V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :pswitch_3
    iget-object v0, p0, Lpc4;->o:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v0, Llj4;

    .line 242
    .line 243
    check-cast p2, Lpw3;

    .line 244
    .line 245
    check-cast p1, Lfk4;

    .line 246
    .line 247
    new-instance v1, Lkj4;

    .line 248
    .line 249
    invoke-direct {v1, v0, p2, v2}, Lkj4;-><init>(Llj4;Lpw3;I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    check-cast p2, Lhk4;

    .line 257
    .line 258
    iget-object p0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast p0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;

    .line 261
    .line 262
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    check-cast p0, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;

    .line 267
    .line 268
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-static {p1}, Ltj4;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {p2}, Lhj4;->zba()Landroid/os/Parcel;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    sget v2, Lbk4;->a:I

    .line 281
    .line 282
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 287
    .line 288
    .line 289
    invoke-static {v0, p0}, Lbk4;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 290
    .line 291
    .line 292
    invoke-static {v0, p1}, Lbk4;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p2, v5, v0}, Lhj4;->zbb(ILandroid/os/Parcel;)V

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :pswitch_4
    iget-object v0, p0, Lpc4;->o:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v0, Llj4;

    .line 302
    .line 303
    check-cast p2, Lpw3;

    .line 304
    .line 305
    check-cast p1, Lfk4;

    .line 306
    .line 307
    new-instance v2, Lkj4;

    .line 308
    .line 309
    invoke-direct {v2, v0, p2, v5}, Lkj4;-><init>(Llj4;Lpw3;I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 313
    .line 314
    .line 315
    move-result-object p2

    .line 316
    check-cast p2, Lhk4;

    .line 317
    .line 318
    iget-object p0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;

    .line 321
    .line 322
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object p0

    .line 326
    check-cast p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;

    .line 327
    .line 328
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-static {p1}, Ltj4;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-virtual {p2}, Lhj4;->zba()Landroid/os/Parcel;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    sget v3, Lbk4;->a:I

    .line 341
    .line 342
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 347
    .line 348
    .line 349
    invoke-static {v0, p0}, Lbk4;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 350
    .line 351
    .line 352
    invoke-static {v0, p1}, Lbk4;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p2, v1, v0}, Lhj4;->zbb(ILandroid/os/Parcel;)V

    .line 356
    .line 357
    .line 358
    return-void

    .line 359
    :pswitch_5
    iget-object v0, p0, Lpc4;->o:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast v0, Lij4;

    .line 362
    .line 363
    check-cast p2, Lpw3;

    .line 364
    .line 365
    check-cast p1, Lek4;

    .line 366
    .line 367
    new-instance v1, Lkj4;

    .line 368
    .line 369
    invoke-direct {v1, v0, p2}, Lkj4;-><init>(Lij4;Lpw3;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 373
    .line 374
    .line 375
    move-result-object p2

    .line 376
    check-cast p2, Lgk4;

    .line 377
    .line 378
    iget-object p0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 379
    .line 380
    check-cast p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;

    .line 381
    .line 382
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object p0

    .line 386
    check-cast p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;

    .line 387
    .line 388
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    invoke-static {p1}, Ltj4;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    .line 393
    .line 394
    .line 395
    move-result-object p1

    .line 396
    invoke-virtual {p2}, Lhj4;->zba()Landroid/os/Parcel;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    sget v2, Lbk4;->a:I

    .line 401
    .line 402
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 407
    .line 408
    .line 409
    invoke-static {v0, p0}, Lbk4;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 410
    .line 411
    .line 412
    invoke-static {v0, p1}, Lbk4;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {p2, v5, v0}, Lhj4;->zbb(ILandroid/os/Parcel;)V

    .line 416
    .line 417
    .line 418
    return-void

    .line 419
    :pswitch_6
    iget-object v0, p0, Lpc4;->o:Ljava/lang/Object;

    .line 420
    .line 421
    check-cast v0, Lij4;

    .line 422
    .line 423
    check-cast p2, Lpw3;

    .line 424
    .line 425
    check-cast p1, Lek4;

    .line 426
    .line 427
    new-instance v1, Llk4;

    .line 428
    .line 429
    invoke-direct {v1, v0, p2}, Llk4;-><init>(Lij4;Lpw3;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 433
    .line 434
    .line 435
    move-result-object p2

    .line 436
    check-cast p2, Lgk4;

    .line 437
    .line 438
    iget-object p0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast p0, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;

    .line 441
    .line 442
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object p0

    .line 446
    check-cast p0, Lcom/google/android/gms/auth/api/identity/ClearTokenRequest;

    .line 447
    .line 448
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    invoke-static {p1}, Ltj4;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    .line 453
    .line 454
    .line 455
    move-result-object p1

    .line 456
    invoke-virtual {p2}, Lhj4;->zba()Landroid/os/Parcel;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    sget v2, Lbk4;->a:I

    .line 461
    .line 462
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 467
    .line 468
    .line 469
    invoke-static {v0, p0}, Lbk4;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 470
    .line 471
    .line 472
    invoke-static {v0, p1}, Lbk4;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {p2, v4, v0}, Lhj4;->zbb(ILandroid/os/Parcel;)V

    .line 476
    .line 477
    .line 478
    return-void

    .line 479
    :pswitch_7
    iget-object v0, p0, Lpc4;->o:Ljava/lang/Object;

    .line 480
    .line 481
    check-cast v0, Lij4;

    .line 482
    .line 483
    check-cast p2, Lpw3;

    .line 484
    .line 485
    check-cast p1, Lek4;

    .line 486
    .line 487
    new-instance v1, Lkk4;

    .line 488
    .line 489
    invoke-direct {v1, v0, p2}, Lkk4;-><init>(Lij4;Lpw3;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    .line 493
    .line 494
    .line 495
    move-result-object p2

    .line 496
    check-cast p2, Lgk4;

    .line 497
    .line 498
    iget-object p0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 499
    .line 500
    check-cast p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;

    .line 501
    .line 502
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object p0

    .line 506
    check-cast p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;

    .line 507
    .line 508
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    .line 509
    .line 510
    .line 511
    move-result-object p1

    .line 512
    invoke-static {p1}, Ltj4;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    invoke-virtual {p2}, Lhj4;->zba()Landroid/os/Parcel;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    sget v2, Lbk4;->a:I

    .line 521
    .line 522
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 527
    .line 528
    .line 529
    invoke-static {v0, p0}, Lbk4;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 530
    .line 531
    .line 532
    invoke-static {v0, p1}, Lbk4;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {p2, v3, v0}, Lhj4;->zbb(ILandroid/os/Parcel;)V

    .line 536
    .line 537
    .line 538
    return-void

    .line 539
    :pswitch_data_0
    .packed-switch 0x3
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

.method public b(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lm75;

    .line 4
    .line 5
    invoke-virtual {v0}, Laz4;->v()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lib0;->a:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lr45;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput-boolean v2, v0, Lm75;->i:Z

    .line 14
    .line 15
    invoke-virtual {v0}, Lm75;->T()Ljava/util/PriorityQueue;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object p0, p0, Lpc4;->o:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Loa5;

    .line 22
    .line 23
    invoke-virtual {v2, p0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    sget-object p0, Le05;->v0:Ld05;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p0, v2}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    iget v2, v0, Lm75;->j:I

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    if-le v2, p0, :cond_0

    .line 43
    .line 44
    iput v3, v0, Lm75;->j:I

    .line 45
    .line 46
    iget-object p0, v1, Lr45;->f:La25;

    .line 47
    .line 48
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, La25;->i:Lx15;

    .line 52
    .line 53
    invoke-virtual {v1}, Lr45;->q()Lg15;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lg15;->B()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, La25;->D(Ljava/lang/String;)Ly15;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, La25;->D(Ljava/lang/String;)Ly15;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v1, "registerTriggerAsync failed. May try later. App ID, throwable"

    .line 74
    .line 75
    invoke-virtual {p0, v0, p1, v1}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_0
    iget-object p0, v1, Lr45;->f:La25;

    .line 80
    .line 81
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 82
    .line 83
    .line 84
    iget-object p0, p0, La25;->i:Lx15;

    .line 85
    .line 86
    invoke-virtual {v1}, Lr45;->q()Lg15;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lg15;->B()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-static {v2}, La25;->D(Ljava/lang/String;)Ly15;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iget v4, v0, Lm75;->j:I

    .line 99
    .line 100
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-static {v4}, La25;->D(Ljava/lang/String;)Ly15;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1}, La25;->D(Ljava/lang/String;)Ly15;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string v5, "registerTriggerAsync failed. App ID, delay in seconds, throwable"

    .line 117
    .line 118
    invoke-virtual {p0, v5, v2, v4, p1}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget p0, v0, Lm75;->j:I

    .line 122
    .line 123
    iget-object p1, v0, Lm75;->k:Li65;

    .line 124
    .line 125
    if-nez p1, :cond_1

    .line 126
    .line 127
    new-instance p1, Li65;

    .line 128
    .line 129
    invoke-direct {p1, v0, v1, v3}, Li65;-><init>(Lm75;Ls55;I)V

    .line 130
    .line 131
    .line 132
    iput-object p1, v0, Lm75;->k:Li65;

    .line 133
    .line 134
    :cond_1
    iget-object p1, v0, Lm75;->k:Li65;

    .line 135
    .line 136
    int-to-long v1, p0

    .line 137
    const-wide/16 v3, 0x3e8

    .line 138
    .line 139
    mul-long/2addr v1, v3

    .line 140
    invoke-virtual {p1, v1, v2}, Let4;->b(J)V

    .line 141
    .line 142
    .line 143
    iget p0, v0, Lm75;->j:I

    .line 144
    .line 145
    add-int/2addr p0, p0

    .line 146
    iput p0, v0, Lm75;->j:I

    .line 147
    .line 148
    return-void
.end method

.method public c(Lnr3;Lls3;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lqd1;

    .line 7
    .line 8
    new-instance v1, Ll20;

    .line 9
    .line 10
    const/4 v2, 0x5

    .line 11
    invoke-direct {v1, p0, p1, p2, v2}, Ll20;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, v0, Lqd1;->o:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lji3;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lji3;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    .line 1
    iget v0, p0, Lpc4;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lpc4;->o:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lrf5;

    .line 9
    .line 10
    invoke-static {}, Lye5;->c()Lqf5;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1, v0}, Lye5;->b(Lqf5;Lrf5;)Lrf5;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object p0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lpi;

    .line 21
    .line 22
    :try_start_0
    invoke-interface {p0}, Lpi;->call()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {v1, v0}, Lye5;->b(Lqf5;Lrf5;)Lrf5;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    :try_start_1
    invoke-static {p0}, Lxe5;->a(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    :catchall_1
    move-exception p0

    .line 39
    invoke-static {v1, v0}, Lye5;->b(Lqf5;Lrf5;)Lrf5;

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :pswitch_0
    iget-object v0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lce5;

    .line 46
    .line 47
    iget-object v1, v0, Lce5;->a:Ljava/lang/String;

    .line 48
    .line 49
    const-string v2, "Initialize "

    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v3, v0, Lce5;->h:Lky4;

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Lky4;->b(Ljava/lang/String;)Lkf5;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :try_start_2
    iget-object v2, v0, Lce5;->g:Ljava/lang/Object;

    .line 69
    .line 70
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 71
    :try_start_3
    iget-object v3, p0, Lpc4;->o:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v3, Ljava/util/List;

    .line 74
    .line 75
    if-nez v3, :cond_0

    .line 76
    .line 77
    iget-object v3, v0, Lce5;->i:Ljava/util/List;

    .line 78
    .line 79
    iput-object v3, p0, Lpc4;->o:Ljava/lang/Object;

    .line 80
    .line 81
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 82
    .line 83
    iput-object v3, v0, Lce5;->i:Ljava/util/List;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catchall_2
    move-exception p0

    .line 87
    goto :goto_2

    .line 88
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 89
    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    .line 90
    .line 91
    iget-object v2, p0, Lpc4;->o:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v2, Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    .line 101
    .line 102
    new-instance v2, Lje5;

    .line 103
    .line 104
    iget-object v3, p0, Lpc4;->p:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v3, Lce5;

    .line 107
    .line 108
    invoke-direct {v2, v3}, Lje5;-><init>(Lce5;)V

    .line 109
    .line 110
    .line 111
    iget-object v3, p0, Lpc4;->o:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v3, Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_1

    .line 124
    .line 125
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Lqi;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 130
    .line 131
    :try_start_5
    invoke-interface {v4, v2}, Lqi;->apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :catchall_3
    move-exception p0

    .line 140
    goto :goto_3

    .line 141
    :catch_0
    move-exception v2

    .line 142
    :try_start_6
    new-instance v3, Lzo1;

    .line 143
    .line 144
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v2}, Ls0;->n(Ljava/lang/Throwable;)Z

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    :cond_1
    invoke-static {v0}, Llp1;->k(Ljava/lang/Iterable;)Llp1;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    new-instance v2, Lid2;

    .line 158
    .line 159
    const/4 v3, 0x3

    .line 160
    invoke-direct {v2, v3, p0}, Lid2;-><init>(ILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    new-instance p0, Ls80;

    .line 164
    .line 165
    const/4 v3, 0x1

    .line 166
    invoke-direct {p0, v0, v3}, Ls80;-><init>(Ldp1;Z)V

    .line 167
    .line 168
    .line 169
    new-instance v0, Lr80;

    .line 170
    .line 171
    invoke-direct {v0, p0, v2}, Lr80;-><init>(Ls80;Ljava/util/concurrent/Callable;)V

    .line 172
    .line 173
    .line 174
    iput-object v0, p0, Ls80;->A:Lr80;

    .line 175
    .line 176
    invoke-virtual {p0}, Ls80;->s()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, p0}, Lkf5;->b(Ls0;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Lkf5;->close()V

    .line 183
    .line 184
    .line 185
    return-object p0

    .line 186
    :goto_2
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 187
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 188
    :goto_3
    :try_start_9
    invoke-virtual {v1}, Lkf5;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :catchall_4
    move-exception v0

    .line 193
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 194
    .line 195
    .line 196
    :goto_4
    throw p0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public d(Lnr3;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lqd1;

    .line 7
    .line 8
    new-instance v1, Lns3;

    .line 9
    .line 10
    iget-object p0, p0, Lpc4;->o:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lez2;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p0, p1, v2, p2}, Lns3;-><init>(Lez2;Lnr3;ZI)V

    .line 16
    .line 17
    .line 18
    iget-object p0, v0, Lqd1;->o:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lji3;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lji3;->execute(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public e(Ljava/lang/String;IZ)Lna5;
    .locals 2

    .line 1
    iget-object v0, p0, Lpc4;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lna5;

    .line 10
    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    iget-object p0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lra3;

    .line 16
    .line 17
    invoke-virtual {p0, p1, p3}, Lra3;->o(Ljava/lang/String;Z)Lda5;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    invoke-virtual {v0, p2, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lna5;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_2
    return-object v1
.end method

.method public f(Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lnt1;->A(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/io/OutputStream;

    .line 6
    .line 7
    instance-of v1, v0, Lqd5;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lqd5;

    .line 12
    .line 13
    iput-object v0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/io/OutputStream;

    .line 21
    .line 22
    iput-object p1, p0, Lpc4;->o:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public g(Lws4;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lws4;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    check-cast v3, Lfu4;

    .line 17
    .line 18
    iget v3, v3, Lfu4;->n:I

    .line 19
    .line 20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iget-object v4, p0, Lpc4;->o:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v4, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {v4, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lpc4;->n:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lpc4;->o:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lui3;

    .line 11
    .line 12
    iget-object v0, v0, Lpc4;->p:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lzm4;

    .line 15
    .line 16
    iget-object v1, v1, Lui3;->o:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lhr;

    .line 19
    .line 20
    invoke-virtual {v0}, Lzm4;->l()[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v1, v0}, Llr;->c([B)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    :pswitch_0
    iget-object v1, v0, Lpc4;->o:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Lui3;

    .line 32
    .line 33
    iget-object v0, v0, Lpc4;->p:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Ljava/lang/String;

    .line 36
    .line 37
    sget v2, Lfj1;->a:I

    .line 38
    .line 39
    sget v2, Lnf2;->s:I

    .line 40
    .line 41
    new-instance v2, Lmf2;

    .line 42
    .line 43
    invoke-direct {v2}, Lmf2;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v2, v0}, Lmf2;->c([B)Lmf2;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v2, v0, Lmf2;->a:Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const/16 v4, 0x8

    .line 65
    .line 66
    if-ge v2, v4, :cond_0

    .line 67
    .line 68
    invoke-virtual {v0}, Lmf2;->a()V

    .line 69
    .line 70
    .line 71
    :cond_0
    const-string v2, ""

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Lmf2;->c([B)Lmf2;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lmf2;->a()V

    .line 82
    .line 83
    .line 84
    iget-object v2, v0, Lmf2;->a:Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    const/16 v6, 0x21

    .line 94
    .line 95
    const/16 v7, 0x10

    .line 96
    .line 97
    if-lez v5, :cond_1

    .line 98
    .line 99
    iget v5, v0, Lmf2;->f:I

    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    add-int/2addr v8, v5

    .line 106
    iput v8, v0, Lmf2;->f:I

    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    const/16 v8, 0x18

    .line 113
    .line 114
    const/16 v9, 0x20

    .line 115
    .line 116
    const/16 v10, 0x28

    .line 117
    .line 118
    const/16 v11, 0x30

    .line 119
    .line 120
    const-wide/16 v12, 0x0

    .line 121
    .line 122
    packed-switch v5, :pswitch_data_1

    .line 123
    .line 124
    .line 125
    const-string v0, "Should never get here."

    .line 126
    .line 127
    invoke-static {v0}, Lk21;->c(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    const/4 v0, 0x0

    .line 131
    goto/16 :goto_7

    .line 132
    .line 133
    :pswitch_1
    const/16 v3, 0xe

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    and-int/lit16 v3, v3, 0xff

    .line 140
    .line 141
    int-to-long v12, v3

    .line 142
    shl-long/2addr v12, v11

    .line 143
    :pswitch_2
    const/16 v3, 0xd

    .line 144
    .line 145
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    and-int/lit16 v3, v3, 0xff

    .line 150
    .line 151
    int-to-long v14, v3

    .line 152
    shl-long v10, v14, v10

    .line 153
    .line 154
    xor-long/2addr v12, v10

    .line 155
    :pswitch_3
    const/16 v3, 0xc

    .line 156
    .line 157
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    and-int/lit16 v3, v3, 0xff

    .line 162
    .line 163
    int-to-long v10, v3

    .line 164
    shl-long v9, v10, v9

    .line 165
    .line 166
    xor-long/2addr v12, v9

    .line 167
    :pswitch_4
    const/16 v3, 0xb

    .line 168
    .line 169
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    and-int/lit16 v3, v3, 0xff

    .line 174
    .line 175
    int-to-long v9, v3

    .line 176
    shl-long v8, v9, v8

    .line 177
    .line 178
    xor-long/2addr v12, v8

    .line 179
    :pswitch_5
    const/16 v3, 0xa

    .line 180
    .line 181
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    and-int/lit16 v3, v3, 0xff

    .line 186
    .line 187
    int-to-long v8, v3

    .line 188
    shl-long/2addr v8, v7

    .line 189
    xor-long/2addr v12, v8

    .line 190
    :pswitch_6
    const/16 v3, 0x9

    .line 191
    .line 192
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    and-int/lit16 v3, v3, 0xff

    .line 197
    .line 198
    int-to-long v8, v3

    .line 199
    shl-long/2addr v8, v4

    .line 200
    xor-long/2addr v12, v8

    .line 201
    :pswitch_7
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    and-int/lit16 v3, v3, 0xff

    .line 206
    .line 207
    int-to-long v3, v3

    .line 208
    xor-long/2addr v12, v3

    .line 209
    :pswitch_8
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    .line 210
    .line 211
    .line 212
    move-result-wide v3

    .line 213
    goto :goto_6

    .line 214
    :pswitch_9
    const/4 v5, 0x6

    .line 215
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    and-int/lit16 v5, v5, 0xff

    .line 220
    .line 221
    int-to-long v14, v5

    .line 222
    shl-long/2addr v14, v11

    .line 223
    goto :goto_0

    .line 224
    :pswitch_a
    move-wide v14, v12

    .line 225
    :goto_0
    const/4 v5, 0x5

    .line 226
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    and-int/lit16 v5, v5, 0xff

    .line 231
    .line 232
    move/from16 p0, v4

    .line 233
    .line 234
    int-to-long v4, v5

    .line 235
    shl-long/2addr v4, v10

    .line 236
    xor-long/2addr v4, v14

    .line 237
    goto :goto_1

    .line 238
    :pswitch_b
    move/from16 p0, v4

    .line 239
    .line 240
    move-wide v4, v12

    .line 241
    :goto_1
    const/4 v10, 0x4

    .line 242
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->get(I)B

    .line 243
    .line 244
    .line 245
    move-result v10

    .line 246
    and-int/lit16 v10, v10, 0xff

    .line 247
    .line 248
    int-to-long v10, v10

    .line 249
    shl-long v9, v10, v9

    .line 250
    .line 251
    xor-long/2addr v4, v9

    .line 252
    goto :goto_2

    .line 253
    :pswitch_c
    move/from16 p0, v4

    .line 254
    .line 255
    move-wide v4, v12

    .line 256
    :goto_2
    const/4 v9, 0x3

    .line 257
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 258
    .line 259
    .line 260
    move-result v9

    .line 261
    and-int/lit16 v9, v9, 0xff

    .line 262
    .line 263
    int-to-long v9, v9

    .line 264
    shl-long v8, v9, v8

    .line 265
    .line 266
    xor-long/2addr v4, v8

    .line 267
    goto :goto_3

    .line 268
    :pswitch_d
    move/from16 p0, v4

    .line 269
    .line 270
    move-wide v4, v12

    .line 271
    :goto_3
    const/4 v8, 0x2

    .line 272
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 273
    .line 274
    .line 275
    move-result v8

    .line 276
    and-int/lit16 v8, v8, 0xff

    .line 277
    .line 278
    int-to-long v8, v8

    .line 279
    shl-long/2addr v8, v7

    .line 280
    xor-long/2addr v4, v8

    .line 281
    goto :goto_4

    .line 282
    :pswitch_e
    move/from16 p0, v4

    .line 283
    .line 284
    move-wide v4, v12

    .line 285
    :goto_4
    const/4 v8, 0x1

    .line 286
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 287
    .line 288
    .line 289
    move-result v8

    .line 290
    and-int/lit16 v8, v8, 0xff

    .line 291
    .line 292
    int-to-long v8, v8

    .line 293
    shl-long v8, v8, p0

    .line 294
    .line 295
    xor-long/2addr v4, v8

    .line 296
    goto :goto_5

    .line 297
    :pswitch_f
    move-wide v4, v12

    .line 298
    :goto_5
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    and-int/lit16 v3, v3, 0xff

    .line 303
    .line 304
    int-to-long v8, v3

    .line 305
    xor-long v3, v4, v8

    .line 306
    .line 307
    :goto_6
    iget-wide v8, v0, Lmf2;->d:J

    .line 308
    .line 309
    const-wide v10, -0x783c846eeebdac2bL

    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    mul-long/2addr v3, v10

    .line 315
    const/16 v5, 0x1f

    .line 316
    .line 317
    invoke-static {v3, v4, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 318
    .line 319
    .line 320
    move-result-wide v3

    .line 321
    const-wide v14, 0x4cf5ad432745937fL    # 5.573325460219186E62

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    mul-long/2addr v3, v14

    .line 327
    xor-long/2addr v3, v8

    .line 328
    iput-wide v3, v0, Lmf2;->d:J

    .line 329
    .line 330
    iget-wide v3, v0, Lmf2;->e:J

    .line 331
    .line 332
    mul-long/2addr v12, v14

    .line 333
    invoke-static {v12, v13, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 334
    .line 335
    .line 336
    move-result-wide v8

    .line 337
    mul-long/2addr v8, v10

    .line 338
    xor-long/2addr v3, v8

    .line 339
    iput-wide v3, v0, Lmf2;->e:J

    .line 340
    .line 341
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 346
    .line 347
    .line 348
    :cond_1
    iget-wide v2, v0, Lmf2;->d:J

    .line 349
    .line 350
    iget v4, v0, Lmf2;->f:I

    .line 351
    .line 352
    int-to-long v4, v4

    .line 353
    xor-long/2addr v2, v4

    .line 354
    iget-wide v8, v0, Lmf2;->e:J

    .line 355
    .line 356
    xor-long/2addr v4, v8

    .line 357
    add-long/2addr v2, v4

    .line 358
    add-long/2addr v4, v2

    .line 359
    ushr-long v8, v2, v6

    .line 360
    .line 361
    xor-long/2addr v2, v8

    .line 362
    const-wide v8, -0xae502812aa7333L

    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    mul-long/2addr v2, v8

    .line 368
    ushr-long v10, v2, v6

    .line 369
    .line 370
    xor-long/2addr v2, v10

    .line 371
    const-wide v10, -0x3b314601e57a13adL    # -2.902039044684214E23

    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    mul-long/2addr v2, v10

    .line 377
    ushr-long v12, v2, v6

    .line 378
    .line 379
    xor-long/2addr v2, v12

    .line 380
    ushr-long v12, v4, v6

    .line 381
    .line 382
    xor-long/2addr v4, v12

    .line 383
    mul-long/2addr v4, v8

    .line 384
    ushr-long v8, v4, v6

    .line 385
    .line 386
    xor-long/2addr v4, v8

    .line 387
    mul-long/2addr v4, v10

    .line 388
    ushr-long v8, v4, v6

    .line 389
    .line 390
    xor-long/2addr v4, v8

    .line 391
    add-long/2addr v2, v4

    .line 392
    iput-wide v2, v0, Lmf2;->d:J

    .line 393
    .line 394
    add-long/2addr v4, v2

    .line 395
    iput-wide v4, v0, Lmf2;->e:J

    .line 396
    .line 397
    new-array v2, v7, [B

    .line 398
    .line 399
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 404
    .line 405
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    iget-wide v3, v0, Lmf2;->d:J

    .line 410
    .line 411
    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    iget-wide v3, v0, Lmf2;->e:J

    .line 416
    .line 417
    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    check-cast v0, [B

    .line 433
    .line 434
    iget-object v1, v1, Lui3;->o:Ljava/lang/Object;

    .line 435
    .line 436
    check-cast v1, Lhr;

    .line 437
    .line 438
    invoke-virtual {v1, v0}, Llr;->c([B)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    :goto_7
    return-object v0

    .line 443
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch

    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    :pswitch_data_1
    .packed-switch 0x1
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
    .end packed-switch
.end method

.method public h(Lqd1;Lls4;)Lls4;
    .locals 3

    .line 1
    invoke-static {p1}, Lai4;->q(Lqd1;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p2, Lns4;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    check-cast p2, Lns4;

    .line 9
    .line 10
    iget-object v0, p2, Lns4;->o:Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object p2, p2, Lns4;->n:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lpc4;->o:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lws4;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Lws4;

    .line 34
    .line 35
    :goto_0
    invoke-virtual {p0, p2, p1, v0}, Lws4;->a(Ljava/lang/String;Lqd1;Ljava/util/ArrayList;)Lls4;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_1
    return-object p2
.end method

.method public i(Ljava/lang/String;IJ)Lna5;
    .locals 3

    .line 1
    iget-object v0, p0, Lpc4;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lna5;

    .line 10
    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    iget-object p0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lra3;

    .line 16
    .line 17
    iget-object p0, p0, Lra3;->o:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lsb5;

    .line 20
    .line 21
    new-instance v2, Lha5;

    .line 22
    .line 23
    invoke-direct {v2, p1, p0, p3, p4}, Lha5;-><init>(Ljava/lang/String;Lsb5;J)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    invoke-virtual {v0, p2, p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    return-object v2

    .line 34
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lna5;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_2
    return-object v1
.end method

.method public j(Lqd1;Lui3;)V
    .locals 9

    .line 1
    new-instance v0, Le75;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Le75;-><init>(Lui3;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lpc4;->o:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/TreeMap;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_3

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/Integer;

    .line 29
    .line 30
    iget-object v4, p2, Lui3;->p:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v4, Lxk4;

    .line 33
    .line 34
    invoke-virtual {v4}, Lxk4;->a()Lxk4;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lis4;

    .line 43
    .line 44
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v3, p1, v5}, Lis4;->b(Lqd1;Ljava/util/List;)Lls4;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    instance-of v5, v3, Leq4;

    .line 53
    .line 54
    const/4 v6, -0x1

    .line 55
    if-eqz v5, :cond_1

    .line 56
    .line 57
    check-cast v3, Leq4;

    .line 58
    .line 59
    iget-object v3, v3, Leq4;->n:Ljava/lang/Double;

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 62
    .line 63
    .line 64
    move-result-wide v7

    .line 65
    invoke-static {v7, v8}, Lai4;->m(D)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move v3, v6

    .line 71
    :goto_1
    const/4 v5, 0x2

    .line 72
    if-eq v3, v5, :cond_2

    .line 73
    .line 74
    if-ne v3, v6, :cond_0

    .line 75
    .line 76
    :cond_2
    iput-object v4, p2, Lui3;->p:Ljava/lang/Object;

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    iget-object p0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p0, Ljava/util/TreeMap;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-virtual {p0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lis4;

    .line 108
    .line 109
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v1, p1, v2}, Lis4;->b(Lqd1;Ljava/util/List;)Lls4;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    instance-of v2, v1, Leq4;

    .line 118
    .line 119
    if-eqz v2, :cond_4

    .line 120
    .line 121
    check-cast v1, Leq4;

    .line 122
    .line 123
    iget-object v1, v1, Leq4;->n:Ljava/lang/Double;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 126
    .line 127
    .line 128
    move-result-wide v1

    .line 129
    invoke-static {v1, v2}, Lai4;->m(D)I

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_5
    return-void
.end method

.method public k(Ljava/lang/String;ILjava/lang/String;)Lna5;
    .locals 3

    .line 1
    iget-object v0, p0, Lpc4;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lna5;

    .line 10
    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    iget-object p0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lra3;

    .line 16
    .line 17
    iget-object p0, p0, Lra3;->o:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lsb5;

    .line 20
    .line 21
    new-instance v2, Lka5;

    .line 22
    .line 23
    invoke-direct {v2, p1, p0, p3}, Lka5;-><init>(Ljava/lang/String;Lsb5;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    invoke-virtual {v0, p2, p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    return-object v2

    .line 34
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lna5;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_2
    return-object v1
.end method

.method public onComplete(Low3;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lpc4;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Ltf5;

    .line 4
    .line 5
    iget-object p0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lpw3;

    .line 8
    .line 9
    iget-object v0, p1, Ltf5;->f:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object p1, p1, Ltf5;->e:Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public then(Low3;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Low3;->f()Ljava/lang/Exception;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    .line 6
    .line 7
    iget-object v1, p0, Lpc4;->p:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ll85;

    .line 10
    .line 11
    iget-object p0, p0, Lpc4;->o:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lw65;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Ll85;->t()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lw65;->a(Ljava/lang/String;)Low3;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    invoke-virtual {p1}, Low3;->f()Ljava/lang/Exception;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    instance-of v0, v0, Lcom/google/android/gms/common/api/ApiException;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Low3;->f()Ljava/lang/Exception;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/google/android/gms/common/api/ApiException;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/16 v2, 0x734a

    .line 48
    .line 49
    if-ne v0, v2, :cond_1

    .line 50
    .line 51
    invoke-virtual {v1}, Ll85;->t()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Lw65;->a(Ljava/lang/String;)Low3;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :cond_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lpc4;->n:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :sswitch_0
    iget-object p0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lpi;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0xe

    .line 26
    .line 27
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 28
    .line 29
    .line 30
    const-string v0, "propagating=["

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p0, "]"

    .line 39
    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v1, "Bounds{lower="

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lpc4;->o:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, Lnr1;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, " upper="

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Lnr1;

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p0, "}"

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    nop

    .line 85
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public zza()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lpc4;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lpc4;->o:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lgt4;

    .line 9
    .line 10
    iget-object v0, v0, Lgt4;->o:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ldi2;

    .line 13
    .line 14
    iget-object v0, v0, Ldi2;->o:Landroid/content/Context;

    .line 15
    .line 16
    iget-object p0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lqo4;

    .line 19
    .line 20
    invoke-interface {p0}, Lqo4;->zza()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance v1, Lwc5;

    .line 25
    .line 26
    check-cast p0, Lyd5;

    .line 27
    .line 28
    invoke-direct {v1, v0, p0}, Lwc5;-><init>(Landroid/content/Context;Lyd5;)V

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_0
    iget-object v0, p0, Lpc4;->o:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lgw4;

    .line 35
    .line 36
    iget-object p0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Ljava/lang/String;

    .line 39
    .line 40
    iget-object v0, v0, Lgw4;->o:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    sget-object v0, Lrv4;->a:Landroid/net/Uri;

    .line 49
    .line 50
    const-class v2, Lrv4;

    .line 51
    .line 52
    monitor-enter v2

    .line 53
    :try_start_0
    sget-object v0, Lrv4;->e:Ljava/util/HashMap;

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    const/4 v7, 0x1

    .line 57
    const/4 v8, 0x0

    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    sget-object v0, Lrv4;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Ljava/util/HashMap;

    .line 66
    .line 67
    const/16 v4, 0x10

    .line 68
    .line 69
    const/high16 v5, 0x3f800000    # 1.0f

    .line 70
    .line 71
    invoke-direct {v0, v4, v5}, Ljava/util/HashMap;-><init>(IF)V

    .line 72
    .line 73
    .line 74
    sput-object v0, Lrv4;->e:Ljava/util/HashMap;

    .line 75
    .line 76
    new-instance v0, Ljava/lang/Object;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lrv4;->j:Ljava/lang/Object;

    .line 82
    .line 83
    sget-object v0, Lrv4;->a:Landroid/net/Uri;

    .line 84
    .line 85
    new-instance v4, Lpv4;

    .line 86
    .line 87
    invoke-direct {v4, v8, v3}, Lpv4;-><init>(Landroid/os/Handler;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    move-object p0, v0

    .line 96
    goto/16 :goto_7

    .line 97
    .line 98
    :cond_0
    sget-object v0, Lrv4;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_1

    .line 105
    .line 106
    sget-object v0, Lrv4;->e:Ljava/util/HashMap;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 109
    .line 110
    .line 111
    sget-object v0, Lrv4;->f:Ljava/util/HashMap;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 114
    .line 115
    .line 116
    sget-object v0, Lrv4;->g:Ljava/util/HashMap;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 119
    .line 120
    .line 121
    sget-object v0, Lrv4;->h:Ljava/util/HashMap;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 124
    .line 125
    .line 126
    sget-object v0, Lrv4;->i:Ljava/util/HashMap;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 129
    .line 130
    .line 131
    new-instance v0, Ljava/lang/Object;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 134
    .line 135
    .line 136
    sput-object v0, Lrv4;->j:Ljava/lang/Object;

    .line 137
    .line 138
    :cond_1
    :goto_0
    sget-object v0, Lrv4;->j:Ljava/lang/Object;

    .line 139
    .line 140
    sget-object v3, Lrv4;->e:Ljava/util/HashMap;

    .line 141
    .line 142
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_3

    .line 147
    .line 148
    sget-object v0, Lrv4;->e:Ljava/util/HashMap;

    .line 149
    .line 150
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    check-cast p0, Ljava/lang/String;

    .line 155
    .line 156
    if-nez p0, :cond_2

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_2
    move-object v8, p0

    .line 160
    :goto_1
    monitor-exit v2

    .line 161
    goto :goto_5

    .line 162
    :cond_3
    sget-object v3, Lrv4;->k:[Ljava/lang/String;

    .line 163
    .line 164
    array-length v3, v3

    .line 165
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    sget-object v2, Lrv4;->a:Landroid/net/Uri;

    .line 167
    .line 168
    filled-new-array {p0}, [Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    const/4 v6, 0x0

    .line 173
    const/4 v3, 0x0

    .line 174
    const/4 v4, 0x0

    .line 175
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    if-nez v1, :cond_4

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_4
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-nez v2, :cond_6

    .line 187
    .line 188
    const-class v2, Lrv4;

    .line 189
    .line 190
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 191
    :try_start_2
    sget-object v3, Lrv4;->j:Ljava/lang/Object;

    .line 192
    .line 193
    if-ne v0, v3, :cond_5

    .line 194
    .line 195
    sget-object v0, Lrv4;->e:Ljava/util/HashMap;

    .line 196
    .line 197
    invoke-virtual {v0, p0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :catchall_1
    move-exception v0

    .line 202
    move-object p0, v0

    .line 203
    goto :goto_3

    .line 204
    :cond_5
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 205
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 210
    :try_start_4
    throw p0

    .line 211
    :cond_6
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 215
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 216
    .line 217
    .line 218
    if-eqz v2, :cond_7

    .line 219
    .line 220
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_7

    .line 225
    .line 226
    move-object v2, v8

    .line 227
    :cond_7
    const-class v3, Lrv4;

    .line 228
    .line 229
    monitor-enter v3

    .line 230
    :try_start_5
    sget-object v1, Lrv4;->j:Ljava/lang/Object;

    .line 231
    .line 232
    if-ne v0, v1, :cond_8

    .line 233
    .line 234
    sget-object v0, Lrv4;->e:Ljava/util/HashMap;

    .line 235
    .line 236
    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :catchall_2
    move-exception v0

    .line 241
    move-object p0, v0

    .line 242
    goto :goto_6

    .line 243
    :cond_8
    :goto_4
    monitor-exit v3

    .line 244
    if-eqz v2, :cond_9

    .line 245
    .line 246
    move-object v8, v2

    .line 247
    :cond_9
    :goto_5
    return-object v8

    .line 248
    :goto_6
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 249
    throw p0

    .line 250
    :catchall_3
    move-exception v0

    .line 251
    move-object p0, v0

    .line 252
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 253
    .line 254
    .line 255
    throw p0

    .line 256
    :goto_7
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 257
    throw p0

    .line 258
    nop

    .line 259
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

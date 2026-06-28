.class public final Lmj1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lmx;
.implements Lbe0;
.implements Ld94;
.implements Lbs0;
.implements Liz;
.implements Laa0;
.implements Lgi0;
.implements Lie0;
.implements Lst3;
.implements Loi3;


# static fields
.field public static final A:Law;

.field public static final B:Law;

.field public static final C:Lmj1;

.field public static final D:Lmj1;

.field public static final E:Lk21;

.field public static final F:Lia;

.field public static final G:Lia;

.field public static final H:Lia;

.field public static final I:Lmj1;

.field public static final J:Lmj1;

.field public static final K:Lmj1;

.field public static final L:Lmj1;

.field public static final M:Lmj1;

.field public static final N:Lmj1;

.field public static final O:Lmj1;

.field public static final P:Lhy1;

.field public static final Q:Lds0;

.field public static final R:Lmj1;

.field public static final S:Lmj1;

.field public static final T:Lmj1;

.field public static final U:Ll33;

.field public static final synthetic V:Lmj1;

.field public static final synthetic W:Lmj1;

.field public static final X:Lmj1;

.field public static final synthetic Y:Lmj1;

.field public static final Z:Lmj1;

.field public static final a0:Lmj1;

.field public static final b0:Lmj1;

.field public static final c0:Lmj1;

.field public static final d0:Lmj1;

.field public static final e0:Lmj1;

.field public static final f0:Lmj1;

.field public static final g0:Lmj1;

.field public static final o:Lcw;

.field public static final p:Lcw;

.field public static final q:Lcw;

.field public static final r:Lcw;

.field public static final s:Lcw;

.field public static final t:Lcw;

.field public static final u:Lcw;

.field public static final v:Lcw;

.field public static final w:Lcw;

.field public static final x:Lbw;

.field public static final y:Lbw;

.field public static final z:Law;


# instance fields
.field public final synthetic n:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcw;

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    invoke-direct {v0, v1, v1}, Lcw;-><init>(FF)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lmj1;->o:Lcw;

    .line 9
    .line 10
    new-instance v0, Lcw;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v0, v2, v1}, Lcw;-><init>(FF)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lmj1;->p:Lcw;

    .line 17
    .line 18
    new-instance v0, Lcw;

    .line 19
    .line 20
    const/high16 v3, 0x3f800000    # 1.0f

    .line 21
    .line 22
    invoke-direct {v0, v3, v1}, Lcw;-><init>(FF)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lmj1;->q:Lcw;

    .line 26
    .line 27
    new-instance v0, Lcw;

    .line 28
    .line 29
    invoke-direct {v0, v1, v2}, Lcw;-><init>(FF)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lmj1;->r:Lcw;

    .line 33
    .line 34
    new-instance v0, Lcw;

    .line 35
    .line 36
    invoke-direct {v0, v2, v2}, Lcw;-><init>(FF)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lmj1;->s:Lcw;

    .line 40
    .line 41
    new-instance v0, Lcw;

    .line 42
    .line 43
    invoke-direct {v0, v3, v2}, Lcw;-><init>(FF)V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lmj1;->t:Lcw;

    .line 47
    .line 48
    new-instance v0, Lcw;

    .line 49
    .line 50
    invoke-direct {v0, v1, v3}, Lcw;-><init>(FF)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lmj1;->u:Lcw;

    .line 54
    .line 55
    new-instance v0, Lcw;

    .line 56
    .line 57
    invoke-direct {v0, v2, v3}, Lcw;-><init>(FF)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lmj1;->v:Lcw;

    .line 61
    .line 62
    new-instance v0, Lcw;

    .line 63
    .line 64
    invoke-direct {v0, v3, v3}, Lcw;-><init>(FF)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lmj1;->w:Lcw;

    .line 68
    .line 69
    new-instance v0, Lbw;

    .line 70
    .line 71
    invoke-direct {v0, v1}, Lbw;-><init>(F)V

    .line 72
    .line 73
    .line 74
    sput-object v0, Lmj1;->x:Lbw;

    .line 75
    .line 76
    new-instance v0, Lbw;

    .line 77
    .line 78
    invoke-direct {v0, v2}, Lbw;-><init>(F)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lmj1;->y:Lbw;

    .line 82
    .line 83
    new-instance v0, Lbw;

    .line 84
    .line 85
    invoke-direct {v0, v3}, Lbw;-><init>(F)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Law;

    .line 89
    .line 90
    invoke-direct {v0, v1}, Law;-><init>(F)V

    .line 91
    .line 92
    .line 93
    sput-object v0, Lmj1;->z:Law;

    .line 94
    .line 95
    new-instance v0, Law;

    .line 96
    .line 97
    invoke-direct {v0, v2}, Law;-><init>(F)V

    .line 98
    .line 99
    .line 100
    sput-object v0, Lmj1;->A:Law;

    .line 101
    .line 102
    new-instance v0, Law;

    .line 103
    .line 104
    invoke-direct {v0, v3}, Law;-><init>(F)V

    .line 105
    .line 106
    .line 107
    sput-object v0, Lmj1;->B:Law;

    .line 108
    .line 109
    new-instance v0, Lmj1;

    .line 110
    .line 111
    const/4 v1, 0x2

    .line 112
    invoke-direct {v0, v1}, Lmj1;-><init>(I)V

    .line 113
    .line 114
    .line 115
    sput-object v0, Lmj1;->C:Lmj1;

    .line 116
    .line 117
    new-instance v0, Lmj1;

    .line 118
    .line 119
    const/4 v2, 0x3

    .line 120
    invoke-direct {v0, v2}, Lmj1;-><init>(I)V

    .line 121
    .line 122
    .line 123
    sput-object v0, Lmj1;->D:Lmj1;

    .line 124
    .line 125
    new-instance v0, Lk21;

    .line 126
    .line 127
    const/16 v2, 0xc

    .line 128
    .line 129
    invoke-direct {v0, v2}, Lk21;-><init>(I)V

    .line 130
    .line 131
    .line 132
    sput-object v0, Lmj1;->E:Lk21;

    .line 133
    .line 134
    new-instance v0, Lia;

    .line 135
    .line 136
    const/4 v4, 0x0

    .line 137
    invoke-direct {v0, v4}, Lia;-><init>(I)V

    .line 138
    .line 139
    .line 140
    sput-object v0, Lmj1;->F:Lia;

    .line 141
    .line 142
    new-instance v0, Lia;

    .line 143
    .line 144
    const/4 v4, 0x1

    .line 145
    invoke-direct {v0, v4}, Lia;-><init>(I)V

    .line 146
    .line 147
    .line 148
    sput-object v0, Lmj1;->G:Lia;

    .line 149
    .line 150
    new-instance v0, Lia;

    .line 151
    .line 152
    invoke-direct {v0, v1}, Lia;-><init>(I)V

    .line 153
    .line 154
    .line 155
    sput-object v0, Lmj1;->H:Lia;

    .line 156
    .line 157
    new-instance v0, Lmj1;

    .line 158
    .line 159
    const/4 v1, 0x6

    .line 160
    invoke-direct {v0, v1}, Lmj1;-><init>(I)V

    .line 161
    .line 162
    .line 163
    sput-object v0, Lmj1;->I:Lmj1;

    .line 164
    .line 165
    new-instance v0, Lmj1;

    .line 166
    .line 167
    const/4 v1, 0x7

    .line 168
    invoke-direct {v0, v1}, Lmj1;-><init>(I)V

    .line 169
    .line 170
    .line 171
    sput-object v0, Lmj1;->J:Lmj1;

    .line 172
    .line 173
    new-instance v0, Lmj1;

    .line 174
    .line 175
    const/16 v1, 0x8

    .line 176
    .line 177
    invoke-direct {v0, v1}, Lmj1;-><init>(I)V

    .line 178
    .line 179
    .line 180
    sput-object v0, Lmj1;->K:Lmj1;

    .line 181
    .line 182
    new-instance v0, Lmj1;

    .line 183
    .line 184
    const/16 v1, 0x9

    .line 185
    .line 186
    invoke-direct {v0, v1}, Lmj1;-><init>(I)V

    .line 187
    .line 188
    .line 189
    sput-object v0, Lmj1;->L:Lmj1;

    .line 190
    .line 191
    new-instance v0, Lmj1;

    .line 192
    .line 193
    const/16 v1, 0xa

    .line 194
    .line 195
    invoke-direct {v0, v1}, Lmj1;-><init>(I)V

    .line 196
    .line 197
    .line 198
    sput-object v0, Lmj1;->M:Lmj1;

    .line 199
    .line 200
    new-instance v0, Lmj1;

    .line 201
    .line 202
    const/16 v1, 0xb

    .line 203
    .line 204
    invoke-direct {v0, v1}, Lmj1;-><init>(I)V

    .line 205
    .line 206
    .line 207
    sput-object v0, Lmj1;->N:Lmj1;

    .line 208
    .line 209
    new-instance v0, Lmj1;

    .line 210
    .line 211
    invoke-direct {v0, v2}, Lmj1;-><init>(I)V

    .line 212
    .line 213
    .line 214
    sput-object v0, Lmj1;->O:Lmj1;

    .line 215
    .line 216
    sget-object v0, Lhy1;->n:Lhy1;

    .line 217
    .line 218
    sput-object v0, Lmj1;->P:Lhy1;

    .line 219
    .line 220
    new-instance v0, Lds0;

    .line 221
    .line 222
    invoke-direct {v0, v3, v3}, Lds0;-><init>(FF)V

    .line 223
    .line 224
    .line 225
    sput-object v0, Lmj1;->Q:Lds0;

    .line 226
    .line 227
    new-instance v0, Lmj1;

    .line 228
    .line 229
    const/16 v1, 0xd

    .line 230
    .line 231
    invoke-direct {v0, v1}, Lmj1;-><init>(I)V

    .line 232
    .line 233
    .line 234
    sput-object v0, Lmj1;->R:Lmj1;

    .line 235
    .line 236
    new-instance v0, Lmj1;

    .line 237
    .line 238
    const/16 v1, 0xe

    .line 239
    .line 240
    invoke-direct {v0, v1}, Lmj1;-><init>(I)V

    .line 241
    .line 242
    .line 243
    sput-object v0, Lmj1;->S:Lmj1;

    .line 244
    .line 245
    new-instance v0, Lmj1;

    .line 246
    .line 247
    const/16 v1, 0xf

    .line 248
    .line 249
    invoke-direct {v0, v1}, Lmj1;-><init>(I)V

    .line 250
    .line 251
    .line 252
    sput-object v0, Lmj1;->T:Lmj1;

    .line 253
    .line 254
    new-instance v0, Ll33;

    .line 255
    .line 256
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 257
    .line 258
    invoke-direct {v0, v1, v1, v1, v1}, Ll33;-><init>(FFFF)V

    .line 259
    .line 260
    .line 261
    sput-object v0, Lmj1;->U:Ll33;

    .line 262
    .line 263
    new-instance v0, Lmj1;

    .line 264
    .line 265
    const/16 v1, 0x12

    .line 266
    .line 267
    invoke-direct {v0, v1}, Lmj1;-><init>(I)V

    .line 268
    .line 269
    .line 270
    sput-object v0, Lmj1;->V:Lmj1;

    .line 271
    .line 272
    new-instance v0, Lmj1;

    .line 273
    .line 274
    const/16 v1, 0x13

    .line 275
    .line 276
    invoke-direct {v0, v1}, Lmj1;-><init>(I)V

    .line 277
    .line 278
    .line 279
    sput-object v0, Lmj1;->W:Lmj1;

    .line 280
    .line 281
    new-instance v0, Lmj1;

    .line 282
    .line 283
    const/16 v1, 0x14

    .line 284
    .line 285
    invoke-direct {v0, v1}, Lmj1;-><init>(I)V

    .line 286
    .line 287
    .line 288
    sput-object v0, Lmj1;->X:Lmj1;

    .line 289
    .line 290
    new-instance v0, Lmj1;

    .line 291
    .line 292
    const/16 v1, 0x15

    .line 293
    .line 294
    invoke-direct {v0, v1}, Lmj1;-><init>(I)V

    .line 295
    .line 296
    .line 297
    sput-object v0, Lmj1;->Y:Lmj1;

    .line 298
    .line 299
    new-instance v0, Lmj1;

    .line 300
    .line 301
    const/16 v1, 0x16

    .line 302
    .line 303
    invoke-direct {v0, v1}, Lmj1;-><init>(I)V

    .line 304
    .line 305
    .line 306
    sput-object v0, Lmj1;->Z:Lmj1;

    .line 307
    .line 308
    new-instance v0, Lmj1;

    .line 309
    .line 310
    const/16 v1, 0x17

    .line 311
    .line 312
    invoke-direct {v0, v1}, Lmj1;-><init>(I)V

    .line 313
    .line 314
    .line 315
    sput-object v0, Lmj1;->a0:Lmj1;

    .line 316
    .line 317
    new-instance v0, Lmj1;

    .line 318
    .line 319
    const/16 v1, 0x18

    .line 320
    .line 321
    invoke-direct {v0, v1}, Lmj1;-><init>(I)V

    .line 322
    .line 323
    .line 324
    sput-object v0, Lmj1;->b0:Lmj1;

    .line 325
    .line 326
    new-instance v0, Lmj1;

    .line 327
    .line 328
    const/16 v1, 0x19

    .line 329
    .line 330
    invoke-direct {v0, v1}, Lmj1;-><init>(I)V

    .line 331
    .line 332
    .line 333
    sput-object v0, Lmj1;->c0:Lmj1;

    .line 334
    .line 335
    new-instance v0, Lmj1;

    .line 336
    .line 337
    const/16 v1, 0x1a

    .line 338
    .line 339
    invoke-direct {v0, v1}, Lmj1;-><init>(I)V

    .line 340
    .line 341
    .line 342
    sput-object v0, Lmj1;->d0:Lmj1;

    .line 343
    .line 344
    new-instance v0, Lmj1;

    .line 345
    .line 346
    const/16 v1, 0x1b

    .line 347
    .line 348
    invoke-direct {v0, v1}, Lmj1;-><init>(I)V

    .line 349
    .line 350
    .line 351
    sput-object v0, Lmj1;->e0:Lmj1;

    .line 352
    .line 353
    new-instance v0, Lmj1;

    .line 354
    .line 355
    const/16 v1, 0x1c

    .line 356
    .line 357
    invoke-direct {v0, v1}, Lmj1;-><init>(I)V

    .line 358
    .line 359
    .line 360
    sput-object v0, Lmj1;->f0:Lmj1;

    .line 361
    .line 362
    new-instance v0, Lmj1;

    .line 363
    .line 364
    const/16 v1, 0x1d

    .line 365
    .line 366
    invoke-direct {v0, v1}, Lmj1;-><init>(I)V

    .line 367
    .line 368
    .line 369
    sput-object v0, Lmj1;->g0:Lmj1;

    .line 370
    .line 371
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmj1;->n:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static m(Lb40;Lg03;)V
    .locals 2

    .line 1
    const-string v0, "Protocol version"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lg03;->n:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/lit8 v1, v1, 0x4

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lb40;->e(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lb40;->b(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/16 v0, 0x2f

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lb40;->a(C)V

    .line 23
    .line 24
    .line 25
    iget v0, p1, Lg03;->o:I

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lb40;->b(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/16 v0, 0x2e

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lb40;->a(C)V

    .line 37
    .line 38
    .line 39
    iget p1, p1, Lg03;->p:I

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Lb40;->b(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static n(Loi3;Ldd1;Lbh0;Lne1;)Lfn0;
    .locals 7

    .line 1
    sget-object v0, Lg01;->n:Lg01;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    const-string v3, "datastore_shared_counter"

    .line 7
    .line 8
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    new-instance v3, Lfn0;

    .line 12
    .line 13
    new-instance v4, Lk51;

    .line 14
    .line 15
    new-instance v5, Lv;

    .line 16
    .line 17
    const/16 v6, 0x11

    .line 18
    .line 19
    invoke-direct {v5, v6, p2}, Lv;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v4, p0, v5, p3}, Lk51;-><init>(Loi3;Lpe1;Lne1;)V

    .line 23
    .line 24
    .line 25
    new-instance p0, Ln;

    .line 26
    .line 27
    invoke-direct {p0, v0, v2, v1}, Ln;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {v3, v4, p0, p1, p2}, Lfn0;-><init>(Lk51;Ljava/util/List;Lyi0;Lqi0;)V

    .line 35
    .line 36
    .line 37
    return-object v3

    .line 38
    :catch_0
    new-instance v3, Lk51;

    .line 39
    .line 40
    new-instance v4, Lt3;

    .line 41
    .line 42
    const/16 v5, 0x15

    .line 43
    .line 44
    invoke-direct {v4, v5}, Lt3;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v3, p0, v4, p3}, Lk51;-><init>(Loi3;Lpe1;Lne1;)V

    .line 48
    .line 49
    .line 50
    new-instance p0, Ln;

    .line 51
    .line 52
    invoke-direct {p0, v0, v2, v1}, Ln;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 53
    .line 54
    .line 55
    invoke-static {p0}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-instance p3, Lfn0;

    .line 60
    .line 61
    invoke-direct {p3, v3, p0, p1, p2}, Lfn0;-><init>(Lk51;Ljava/util/List;Lyi0;Lqi0;)V

    .line 62
    .line 63
    .line 64
    return-object p3
.end method

.method public static p(Lb40;Lgj1;)Lb40;
    .locals 4

    .line 1
    const-string v0, "Header"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcz;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcz;

    .line 11
    .line 12
    iget-object p0, p1, Lcz;->o:Lb40;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    iput v0, p0, Lb40;->o:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    new-instance p0, Lb40;

    .line 22
    .line 23
    const/16 v1, 0x40

    .line 24
    .line 25
    invoke-direct {p0, v1}, Lb40;-><init>(I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-interface {p1}, Lsh2;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {p1}, Lsh2;->getValue()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    add-int/lit8 v2, v2, 0x2

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    add-int/2addr v2, v3

    .line 49
    :cond_2
    invoke-virtual {p0, v2}, Lb40;->e(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1}, Lb40;->b(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v1, ": "

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lb40;->b(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    if-eqz p1, :cond_5

    .line 61
    .line 62
    iget v1, p0, Lb40;->o:I

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    add-int/2addr v2, v1

    .line 69
    invoke-virtual {p0, v2}, Lb40;->e(I)V

    .line 70
    .line 71
    .line 72
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-ge v0, v1, :cond_5

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    const/16 v2, 0xd

    .line 83
    .line 84
    if-eq v1, v2, :cond_3

    .line 85
    .line 86
    const/16 v2, 0xa

    .line 87
    .line 88
    if-eq v1, v2, :cond_3

    .line 89
    .line 90
    const/16 v2, 0xc

    .line 91
    .line 92
    if-eq v1, v2, :cond_3

    .line 93
    .line 94
    const/16 v2, 0xb

    .line 95
    .line 96
    if-ne v1, v2, :cond_4

    .line 97
    .line 98
    :cond_3
    const/16 v1, 0x20

    .line 99
    .line 100
    :cond_4
    invoke-virtual {p0, v1}, Lb40;->a(C)V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v0, v0, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_5
    return-object p0
.end method

.method public static q(Lb40;Ld73;)Lb40;
    .locals 4

    .line 1
    const-string v0, "Request line"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lb40;->o:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Lb40;

    .line 13
    .line 14
    const/16 v0, 0x40

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lb40;-><init>(I)V

    .line 17
    .line 18
    .line 19
    :goto_0
    check-cast p1, Lhv;

    .line 20
    .line 21
    iget-object v0, p1, Lhv;->o:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p1, Lhv;->p:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    add-int/2addr v3, v2

    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    iget-object p1, p1, Lhv;->n:Lg03;

    .line 39
    .line 40
    iget-object v2, p1, Lg03;->n:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    add-int/lit8 v2, v2, 0x4

    .line 47
    .line 48
    add-int/2addr v2, v3

    .line 49
    invoke-virtual {p0, v2}, Lb40;->e(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lb40;->b(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/16 v0, 0x20

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lb40;->a(C)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lb40;->b(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lb40;->a(C)V

    .line 64
    .line 65
    .line 66
    invoke-static {p0, p1}, Lmj1;->m(Lb40;Lg03;)V

    .line 67
    .line 68
    .line 69
    return-object p0
.end method

.method public static s(Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "firebaseSessions"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-string v0, "Failed to delete conflicting file: "

    .line 40
    .line 41
    invoke-static {p0, v0}, Lq73;->q(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 53
    .line 54
    const/16 v1, 0x1a

    .line 55
    .line 56
    const-string v2, "Failed to create directory: "

    .line 57
    .line 58
    if-lt v0, v1, :cond_4

    .line 59
    .line 60
    :try_start_0
    invoke-static {p0}, Ld51;->j(Ljava/io/File;)Ljava/nio/file/Path;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const/4 v1, 0x0

    .line 65
    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    .line 66
    .line 67
    invoke-static {v0, v1}, Ld51;->w(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/io/IOException;

    .line 73
    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-direct {v1, p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    throw v1

    .line 90
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_6

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    invoke-static {p0, v2}, Lq73;->q(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_6
    :goto_1
    return-void
.end method

.method public static t(Lem1;)I
    .locals 2

    .line 1
    const-string v0, "HTTP host"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lem1;->p:I

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    iget-object p0, p0, Lem1;->q:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "http"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/16 p0, 0x50

    .line 22
    .line 23
    return p0

    .line 24
    :cond_1
    const-string v0, "https"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const/16 p0, 0x1bb

    .line 33
    .line 34
    return p0

    .line 35
    :cond_2
    new-instance v0, Lr74;

    .line 36
    .line 37
    const-string v1, " protocol is not supported"

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0
.end method


# virtual methods
.method public a(Lul1;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Lrl1;->c(Lul1;)Lrl1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p1, "http.auth.target-scope"

    .line 6
    .line 7
    const-class v0, Ltj;

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ltj;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-object v2, p1, Ltj;->b:Loj;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Loj;->e()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2}, Loj;->f()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    iget-object p1, p1, Ltj;->c:Lyk0;

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-interface {p1}, Lyk0;->b()Ljava/security/Principal;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object p1, v1

    .line 44
    :goto_0
    if-nez p1, :cond_1

    .line 45
    .line 46
    const-string p1, "http.auth.proxy-scope"

    .line 47
    .line 48
    invoke-virtual {p0, p1, v0}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Ltj;

    .line 53
    .line 54
    iget-object v0, p1, Ltj;->b:Loj;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0}, Loj;->e()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0}, Loj;->f()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    iget-object p1, p1, Ltj;->c:Lyk0;

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    invoke-interface {p1}, Lyk0;->b()Ljava/security/Principal;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move-object v1, p1

    .line 80
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 81
    .line 82
    const-string p1, "http.connection"

    .line 83
    .line 84
    const-class v0, Lsl1;

    .line 85
    .line 86
    invoke-virtual {p0, p1, v0}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    check-cast p0, Lsl1;

    .line 91
    .line 92
    invoke-interface {p0}, Lsl1;->isOpen()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    instance-of p1, p0, Lv92;

    .line 99
    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    check-cast p0, Lv92;

    .line 103
    .line 104
    invoke-interface {p0}, Lv92;->b0()Ljavax/net/ssl/SSLSession;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    if-eqz p0, :cond_3

    .line 109
    .line 110
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :cond_3
    return-object v1
.end method

.method public b()Las0;
    .locals 0

    .line 1
    sget-object p0, Lmj1;->Q:Lds0;

    .line 2
    .line 3
    return-object p0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p0, Lhg2;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lhg2;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public d()J
    .locals 2

    .line 1
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    return-wide v0
.end method

.method public e(Lrt3;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lrt3;->clear()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public f(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 10

    .line 1
    sget-object p0, Lmx;->a:Llx;

    .line 2
    .line 3
    new-instance v0, Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    :try_start_0
    const-class v4, Landroid/content/res/Configuration;

    .line 19
    .line 20
    const-string v5, "windowConfiguration"

    .line 21
    .line 22
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const-string v5, "getBounds"

    .line 44
    .line 45
    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    check-cast v1, Landroid/graphics/Rect;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :catch_0
    move-exception v1

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const-string v5, "getAppBounds"

    .line 69
    .line 70
    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    check-cast v1, Landroid/graphics/Rect;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :goto_0
    instance-of v4, v1, Ljava/lang/NoSuchFieldException;

    .line 88
    .line 89
    if-nez v4, :cond_2

    .line 90
    .line 91
    instance-of v4, v1, Ljava/lang/NoSuchMethodException;

    .line 92
    .line 93
    if-nez v4, :cond_2

    .line 94
    .line 95
    instance-of v4, v1, Ljava/lang/IllegalAccessException;

    .line 96
    .line 97
    if-nez v4, :cond_2

    .line 98
    .line 99
    instance-of v4, v1, Ljava/lang/reflect/InvocationTargetException;

    .line 100
    .line 101
    if-eqz v4, :cond_1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    throw v1

    .line 105
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    sget-object v4, Llx;->b:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    new-instance v4, Landroid/graphics/Point;

    .line 133
    .line 134
    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    const/4 v6, 0x0

    .line 145
    if-nez v5, :cond_6

    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    const-string v7, "dimen"

    .line 152
    .line 153
    const-string v8, "android"

    .line 154
    .line 155
    const-string v9, "navigation_bar_height"

    .line 156
    .line 157
    invoke-virtual {v5, v9, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    if-lez v7, :cond_3

    .line 162
    .line 163
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    goto :goto_3

    .line 168
    :cond_3
    move v5, v6

    .line 169
    :goto_3
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 170
    .line 171
    add-int/2addr v7, v5

    .line 172
    iget v8, v4, Landroid/graphics/Point;->y:I

    .line 173
    .line 174
    if-ne v7, v8, :cond_4

    .line 175
    .line 176
    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_4
    iget v7, v0, Landroid/graphics/Rect;->right:I

    .line 180
    .line 181
    add-int/2addr v7, v5

    .line 182
    iget v8, v4, Landroid/graphics/Point;->x:I

    .line 183
    .line 184
    if-ne v7, v8, :cond_5

    .line 185
    .line 186
    iput v7, v0, Landroid/graphics/Rect;->right:I

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_5
    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 190
    .line 191
    if-ne v7, v5, :cond_6

    .line 192
    .line 193
    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 194
    .line 195
    :cond_6
    :goto_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    iget v7, v4, Landroid/graphics/Point;->x:I

    .line 200
    .line 201
    if-lt v5, v7, :cond_7

    .line 202
    .line 203
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    iget v7, v4, Landroid/graphics/Point;->y:I

    .line 208
    .line 209
    if-ge v5, v7, :cond_e

    .line 210
    .line 211
    :cond_7
    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-nez p1, :cond_e

    .line 216
    .line 217
    :try_start_1
    const-string p1, "android.view.DisplayInfo"

    .line 218
    .line 219
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {p1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    const-string v7, "getDisplayInfo"

    .line 239
    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    move-result-object v8

    .line 244
    filled-new-array {v8}, [Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    invoke-virtual {v5, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 253
    .line 254
    .line 255
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    const-string v5, "displayCutout"

    .line 267
    .line 268
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-static {p1}, Lx2;->s(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-eqz v1, :cond_a

    .line 284
    .line 285
    invoke-static {p1}, Lx2;->j(Ljava/lang/Object;)Landroid/view/DisplayCutout;

    .line 286
    .line 287
    .line 288
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 289
    goto :goto_6

    .line 290
    :catch_1
    move-exception p1

    .line 291
    instance-of v1, p1, Ljava/lang/ClassNotFoundException;

    .line 292
    .line 293
    if-nez v1, :cond_9

    .line 294
    .line 295
    instance-of v1, p1, Ljava/lang/NoSuchMethodException;

    .line 296
    .line 297
    if-nez v1, :cond_9

    .line 298
    .line 299
    instance-of v1, p1, Ljava/lang/NoSuchFieldException;

    .line 300
    .line 301
    if-nez v1, :cond_9

    .line 302
    .line 303
    instance-of v1, p1, Ljava/lang/IllegalAccessException;

    .line 304
    .line 305
    if-nez v1, :cond_9

    .line 306
    .line 307
    instance-of v1, p1, Ljava/lang/reflect/InvocationTargetException;

    .line 308
    .line 309
    if-nez v1, :cond_9

    .line 310
    .line 311
    instance-of v1, p1, Ljava/lang/InstantiationException;

    .line 312
    .line 313
    if-eqz v1, :cond_8

    .line 314
    .line 315
    goto :goto_5

    .line 316
    :cond_8
    throw p1

    .line 317
    :cond_9
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    sget-object p0, Llx;->b:Ljava/lang/String;

    .line 321
    .line 322
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    .line 324
    .line 325
    :cond_a
    :goto_6
    if-eqz v3, :cond_e

    .line 326
    .line 327
    iget p0, v0, Landroid/graphics/Rect;->left:I

    .line 328
    .line 329
    invoke-static {v3}, Lx2;->v(Landroid/view/DisplayCutout;)I

    .line 330
    .line 331
    .line 332
    move-result p1

    .line 333
    if-ne p0, p1, :cond_b

    .line 334
    .line 335
    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 336
    .line 337
    :cond_b
    iget p0, v4, Landroid/graphics/Point;->x:I

    .line 338
    .line 339
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 340
    .line 341
    sub-int/2addr p0, p1

    .line 342
    invoke-static {v3}, Lx2;->C(Landroid/view/DisplayCutout;)I

    .line 343
    .line 344
    .line 345
    move-result p1

    .line 346
    if-ne p0, p1, :cond_c

    .line 347
    .line 348
    iget p0, v0, Landroid/graphics/Rect;->right:I

    .line 349
    .line 350
    invoke-static {v3}, Lx2;->C(Landroid/view/DisplayCutout;)I

    .line 351
    .line 352
    .line 353
    move-result p1

    .line 354
    add-int/2addr p1, p0

    .line 355
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 356
    .line 357
    :cond_c
    iget p0, v0, Landroid/graphics/Rect;->top:I

    .line 358
    .line 359
    invoke-static {v3}, Lx2;->b(Landroid/view/DisplayCutout;)I

    .line 360
    .line 361
    .line 362
    move-result p1

    .line 363
    if-ne p0, p1, :cond_d

    .line 364
    .line 365
    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 366
    .line 367
    :cond_d
    iget p0, v4, Landroid/graphics/Point;->y:I

    .line 368
    .line 369
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 370
    .line 371
    sub-int/2addr p0, p1

    .line 372
    invoke-static {v3}, Lx2;->B(Landroid/view/DisplayCutout;)I

    .line 373
    .line 374
    .line 375
    move-result p1

    .line 376
    if-ne p0, p1, :cond_e

    .line 377
    .line 378
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 379
    .line 380
    invoke-static {v3}, Lx2;->B(Landroid/view/DisplayCutout;)I

    .line 381
    .line 382
    .line 383
    move-result p1

    .line 384
    add-int/2addr p1, p0

    .line 385
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 386
    .line 387
    :cond_e
    return-object v0
.end method

.method public g(Landroid/content/Context;)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    return p0
.end method

.method public getLayoutDirection()Lhy1;
    .locals 0

    .line 1
    sget-object p0, Lmj1;->P:Lhy1;

    .line 2
    .line 3
    return-object p0
.end method

.method public h(Lvm1;Lul1;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public i(Ljava/lang/Object;Ll64;)V
    .locals 5

    .line 1
    check-cast p1, Lhg2;

    .line 2
    .line 3
    invoke-virtual {p1}, Lhg2;->a()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Lwx2;->n()Lux2;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_8

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lrx2;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, v1, Lrx2;->a:Ljava/lang/String;

    .line 42
    .line 43
    instance-of v2, v0, Ljava/lang/Boolean;

    .line 44
    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    invoke-static {}, Lay2;->D()Lzx2;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v0, Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {v2}, Lqg1;->c()V

    .line 58
    .line 59
    .line 60
    iget-object v3, v2, Lqg1;->o:Lsg1;

    .line 61
    .line 62
    check-cast v3, Lay2;

    .line 63
    .line 64
    invoke-static {v3, v0}, Lay2;->q(Lay2;Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lqg1;->a()Lsg1;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lay2;

    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :cond_0
    instance-of v2, v0, Ljava/lang/Float;

    .line 76
    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    invoke-static {}, Lay2;->D()Lzx2;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v0, Ljava/lang/Number;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {v2}, Lqg1;->c()V

    .line 90
    .line 91
    .line 92
    iget-object v3, v2, Lqg1;->o:Lsg1;

    .line 93
    .line 94
    check-cast v3, Lay2;

    .line 95
    .line 96
    invoke-static {v3, v0}, Lay2;->r(Lay2;F)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Lqg1;->a()Lsg1;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Lay2;

    .line 104
    .line 105
    goto/16 :goto_1

    .line 106
    .line 107
    :cond_1
    instance-of v2, v0, Ljava/lang/Double;

    .line 108
    .line 109
    if-eqz v2, :cond_2

    .line 110
    .line 111
    invoke-static {}, Lay2;->D()Lzx2;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v0, Ljava/lang/Number;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 118
    .line 119
    .line 120
    move-result-wide v3

    .line 121
    invoke-virtual {v2}, Lqg1;->c()V

    .line 122
    .line 123
    .line 124
    iget-object v0, v2, Lqg1;->o:Lsg1;

    .line 125
    .line 126
    check-cast v0, Lay2;

    .line 127
    .line 128
    invoke-static {v0, v3, v4}, Lay2;->o(Lay2;D)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Lqg1;->a()Lsg1;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Lay2;

    .line 136
    .line 137
    goto/16 :goto_1

    .line 138
    .line 139
    :cond_2
    instance-of v2, v0, Ljava/lang/Integer;

    .line 140
    .line 141
    if-eqz v2, :cond_3

    .line 142
    .line 143
    invoke-static {}, Lay2;->D()Lzx2;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v0, Ljava/lang/Number;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-virtual {v2}, Lqg1;->c()V

    .line 154
    .line 155
    .line 156
    iget-object v3, v2, Lqg1;->o:Lsg1;

    .line 157
    .line 158
    check-cast v3, Lay2;

    .line 159
    .line 160
    invoke-static {v3, v0}, Lay2;->s(Lay2;I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Lqg1;->a()Lsg1;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Lay2;

    .line 168
    .line 169
    goto/16 :goto_1

    .line 170
    .line 171
    :cond_3
    instance-of v2, v0, Ljava/lang/Long;

    .line 172
    .line 173
    if-eqz v2, :cond_4

    .line 174
    .line 175
    invoke-static {}, Lay2;->D()Lzx2;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    check-cast v0, Ljava/lang/Number;

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 182
    .line 183
    .line 184
    move-result-wide v3

    .line 185
    invoke-virtual {v2}, Lqg1;->c()V

    .line 186
    .line 187
    .line 188
    iget-object v0, v2, Lqg1;->o:Lsg1;

    .line 189
    .line 190
    check-cast v0, Lay2;

    .line 191
    .line 192
    invoke-static {v0, v3, v4}, Lay2;->l(Lay2;J)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Lqg1;->a()Lsg1;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Lay2;

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_4
    instance-of v2, v0, Ljava/lang/String;

    .line 203
    .line 204
    if-eqz v2, :cond_5

    .line 205
    .line 206
    invoke-static {}, Lay2;->D()Lzx2;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    check-cast v0, Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v2}, Lqg1;->c()V

    .line 213
    .line 214
    .line 215
    iget-object v3, v2, Lqg1;->o:Lsg1;

    .line 216
    .line 217
    check-cast v3, Lay2;

    .line 218
    .line 219
    invoke-static {v3, v0}, Lay2;->m(Lay2;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2}, Lqg1;->a()Lsg1;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Lay2;

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_5
    instance-of v2, v0, Ljava/util/Set;

    .line 230
    .line 231
    if-eqz v2, :cond_6

    .line 232
    .line 233
    invoke-static {}, Lay2;->D()Lzx2;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-static {}, Lyx2;->o()Lxx2;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    check-cast v0, Ljava/util/Set;

    .line 242
    .line 243
    check-cast v0, Ljava/lang/Iterable;

    .line 244
    .line 245
    invoke-virtual {v3}, Lqg1;->c()V

    .line 246
    .line 247
    .line 248
    iget-object v4, v3, Lqg1;->o:Lsg1;

    .line 249
    .line 250
    check-cast v4, Lyx2;

    .line 251
    .line 252
    invoke-static {v4, v0}, Lyx2;->l(Lyx2;Ljava/lang/Iterable;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2}, Lqg1;->c()V

    .line 256
    .line 257
    .line 258
    iget-object v0, v2, Lqg1;->o:Lsg1;

    .line 259
    .line 260
    check-cast v0, Lay2;

    .line 261
    .line 262
    invoke-virtual {v3}, Lqg1;->a()Lsg1;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    check-cast v3, Lyx2;

    .line 267
    .line 268
    invoke-static {v0, v3}, Lay2;->n(Lay2;Lyx2;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2}, Lqg1;->a()Lsg1;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    check-cast v0, Lay2;

    .line 276
    .line 277
    goto :goto_1

    .line 278
    :cond_6
    instance-of v2, v0, [B

    .line 279
    .line 280
    if-eqz v2, :cond_7

    .line 281
    .line 282
    invoke-static {}, Lay2;->D()Lzx2;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    check-cast v0, [B

    .line 287
    .line 288
    const/4 v3, 0x0

    .line 289
    array-length v4, v0

    .line 290
    invoke-static {v0, v3, v4}, Lf00;->d([BII)Lf00;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {v2}, Lqg1;->c()V

    .line 295
    .line 296
    .line 297
    iget-object v3, v2, Lqg1;->o:Lsg1;

    .line 298
    .line 299
    check-cast v3, Lay2;

    .line 300
    .line 301
    invoke-static {v3, v0}, Lay2;->p(Lay2;Lf00;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2}, Lqg1;->a()Lsg1;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    check-cast v0, Lay2;

    .line 309
    .line 310
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1}, Lqg1;->c()V

    .line 317
    .line 318
    .line 319
    iget-object v2, p1, Lqg1;->o:Lsg1;

    .line 320
    .line 321
    check-cast v2, Lwx2;

    .line 322
    .line 323
    invoke-static {v2}, Lwx2;->l(Lwx2;)Lha2;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-virtual {v2, v1, v0}, Lha2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    goto/16 :goto_0

    .line 331
    .line 332
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p0

    .line 340
    const-string p1, "PreferencesSerializer does not support type: "

    .line 341
    .line 342
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    return-void

    .line 350
    :cond_8
    invoke-virtual {p1}, Lqg1;->a()Lsg1;

    .line 351
    .line 352
    .line 353
    move-result-object p0

    .line 354
    check-cast p0, Lwx2;

    .line 355
    .line 356
    const/4 p1, 0x0

    .line 357
    invoke-virtual {p0, p1}, Lsg1;->a(Lbe3;)I

    .line 358
    .line 359
    .line 360
    move-result p1

    .line 361
    sget-object v0, Ld70;->f:Ljava/util/logging/Logger;

    .line 362
    .line 363
    const/16 v0, 0x1000

    .line 364
    .line 365
    if-le p1, v0, :cond_9

    .line 366
    .line 367
    move p1, v0

    .line 368
    :cond_9
    new-instance v0, Ld70;

    .line 369
    .line 370
    invoke-direct {v0, p2, p1}, Ld70;-><init>(Ll64;I)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p0, v0}, Lsg1;->b(Ld70;)V

    .line 374
    .line 375
    .line 376
    iget p0, v0, Ld70;->d:I

    .line 377
    .line 378
    if-lez p0, :cond_a

    .line 379
    .line 380
    invoke-virtual {v0}, Ld70;->k()V

    .line 381
    .line 382
    .line 383
    :cond_a
    return-void
.end method

.method public j(Lhg;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget p0, p0, Lmj1;->n:I

    .line 2
    .line 3
    const-class v0, Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Lz03;

    .line 9
    .line 10
    const-class v1, Lrw;

    .line 11
    .line 12
    invoke-direct {p0, v1, v0}, Lz03;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0}, Lhg;->l(Lz03;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    invoke-static {p0}, Lht4;->p(Ljava/util/concurrent/Executor;)Lji0;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :pswitch_0
    new-instance p0, Lz03;

    .line 30
    .line 31
    const-class v1, Lfq;

    .line 32
    .line 33
    invoke-direct {p0, v1, v0}, Lz03;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p0}, Lhg;->l(Lz03;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 44
    .line 45
    invoke-static {p0}, Lht4;->p(Ljava/util/concurrent/Executor;)Lji0;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public k(Ljava/io/FileInputStream;)Ljava/lang/Object;
    .locals 6

    .line 1
    :try_start_0
    invoke-static {p1}, Lwx2;->o(Ljava/io/FileInputStream;)Lwx2;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Lwt1; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    const/4 p1, 0x0

    .line 6
    new-array v0, p1, [Lsx2;

    .line 7
    .line 8
    new-instance v1, Lhg2;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Lhg2;-><init>(Z)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [Lsx2;

    .line 18
    .line 19
    invoke-virtual {v1}, Lhg2;->b()V

    .line 20
    .line 21
    .line 22
    array-length v2, v0

    .line 23
    const/4 v3, 0x0

    .line 24
    if-gtz v2, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0}, Lwx2;->m()Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Ljava/util/Map$Entry;

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/String;

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lay2;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lay2;->C()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_0

    .line 76
    .line 77
    const/4 v2, -0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    sget-object v4, Ltx2;->a:[I

    .line 80
    .line 81
    invoke-static {v2}, Ldi0;->F(I)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    aget v2, v4, v2

    .line 86
    .line 87
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 88
    .line 89
    .line 90
    :pswitch_0
    invoke-static {}, Lp61;->x()V

    .line 91
    .line 92
    .line 93
    return-object v3

    .line 94
    :pswitch_1
    new-instance p0, Lxi0;

    .line 95
    .line 96
    const-string p1, "Value not set."

    .line 97
    .line 98
    invoke-direct {p0, p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :pswitch_2
    new-instance v2, Lrx2;

    .line 103
    .line 104
    invoke-direct {v2, v0}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lay2;->u()Lf00;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lf00;->size()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_1

    .line 116
    .line 117
    sget-object p1, Ldt1;->b:[B

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_1
    new-array v4, v0, [B

    .line 121
    .line 122
    invoke-virtual {p1, v0, v4}, Lf00;->e(I[B)V

    .line 123
    .line 124
    .line 125
    move-object p1, v4

    .line 126
    :goto_2
    invoke-virtual {v1, v2, p1}, Lhg2;->f(Lrx2;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :pswitch_3
    new-instance v2, Lrx2;

    .line 131
    .line 132
    invoke-direct {v2, v0}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Lay2;->B()Lyx2;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lyx2;->n()Lct1;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-static {p1}, Lo70;->F0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v1, v2, p1}, Lhg2;->f(Lrx2;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :pswitch_4
    new-instance v2, Lrx2;

    .line 155
    .line 156
    invoke-direct {v2, v0}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Lay2;->A()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {v1, v2, p1}, Lhg2;->f(Lrx2;Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :pswitch_5
    new-instance v2, Lrx2;

    .line 168
    .line 169
    invoke-direct {v2, v0}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Lay2;->z()J

    .line 173
    .line 174
    .line 175
    move-result-wide v4

    .line 176
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {v1, v2, p1}, Lhg2;->f(Lrx2;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :pswitch_6
    new-instance v2, Lrx2;

    .line 186
    .line 187
    invoke-direct {v2, v0}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Lay2;->y()I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {v1, v2, p1}, Lhg2;->f(Lrx2;Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :pswitch_7
    new-instance v2, Lrx2;

    .line 204
    .line 205
    invoke-direct {v2, v0}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Lay2;->w()D

    .line 209
    .line 210
    .line 211
    move-result-wide v4

    .line 212
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {v1, v2, p1}, Lhg2;->f(Lrx2;Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :pswitch_8
    new-instance v2, Lrx2;

    .line 222
    .line 223
    invoke-direct {v2, v0}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1}, Lay2;->x()F

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {v1, v2, p1}, Lhg2;->f(Lrx2;Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :pswitch_9
    new-instance v2, Lrx2;

    .line 240
    .line 241
    invoke-direct {v2, v0}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Lay2;->t()Z

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-virtual {v1, v2, p1}, Lhg2;->f(Lrx2;Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :pswitch_a
    new-instance p0, Lxi0;

    .line 258
    .line 259
    const-string p1, "Value case is null."

    .line 260
    .line 261
    invoke-direct {p0, p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    .line 263
    .line 264
    throw p0

    .line 265
    :cond_2
    new-instance p0, Lhg2;

    .line 266
    .line 267
    invoke-virtual {v1}, Lhg2;->a()Ljava/util/Map;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 272
    .line 273
    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 274
    .line 275
    .line 276
    const/4 p1, 0x1

    .line 277
    invoke-direct {p0, v0, p1}, Lhg2;-><init>(Ljava/util/LinkedHashMap;Z)V

    .line 278
    .line 279
    .line 280
    return-object p0

    .line 281
    :cond_3
    aget-object p0, v0, p1

    .line 282
    .line 283
    throw v3

    .line 284
    :catch_0
    move-exception p0

    .line 285
    new-instance p1, Lxi0;

    .line 286
    .line 287
    const-string v0, "Unable to parse preferences proto."

    .line 288
    .line 289
    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    .line 291
    .line 292
    throw p1

    .line 293
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_a
        :pswitch_0
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

.method public l(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public o(Lim1;)J
    .locals 11

    .line 1
    iget p0, p0, Lmj1;->n:I

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    const-string v2, "Content-Length"

    .line 6
    .line 7
    const-string v3, "identity"

    .line 8
    .line 9
    const-wide/16 v4, -0x2

    .line 10
    .line 11
    const-string v6, "chunked"

    .line 12
    .line 13
    const-string v7, "Transfer-Encoding"

    .line 14
    .line 15
    const-string v8, "HTTP message"

    .line 16
    .line 17
    const-wide/16 v9, -0x1

    .line 18
    .line 19
    packed-switch p0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    const-string p0, "Negative content length: "

    .line 23
    .line 24
    invoke-static {p1, v8}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v7}, Lim1;->getFirstHeader(Ljava/lang/String;)Lgj1;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    if-eqz v7, :cond_3

    .line 32
    .line 33
    invoke-interface {v7}, Lsh2;->getValue()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-interface {p1}, Lim1;->getProtocolVersion()Lg03;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    sget-object v0, Ldn1;->r:Ldn1;

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lg03;->a(Lg03;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-nez p0, :cond_0

    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_0
    new-instance p0, Le03;

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v1, "Chunked transfer encoding not allowed for "

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p1}, Lim1;->getProtocolVersion()Lg03;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_1
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    new-instance p1, Le03;

    .line 93
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v1, "Unsupported transfer encoding: "

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {p0}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :cond_3
    invoke-interface {p1, v2}, Lim1;->getFirstHeader(Ljava/lang/String;)Lgj1;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    invoke-interface {p1}, Lsh2;->getValue()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 127
    .line 128
    .line 129
    move-result-wide v4

    .line 130
    cmp-long v0, v4, v0

    .line 131
    .line 132
    if-ltz v0, :cond_4

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    new-instance v0, Le03;

    .line 136
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-static {p0}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :catch_0
    new-instance p0, Le03;

    .line 158
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v1, "Invalid content length: "

    .line 162
    .line 163
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p0

    .line 181
    :cond_5
    :goto_0
    move-wide v4, v9

    .line 182
    :goto_1
    return-wide v4

    .line 183
    :pswitch_0
    invoke-static {p1, v8}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-interface {p1, v7}, Lim1;->getFirstHeader(Ljava/lang/String;)Lgj1;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    if-eqz p0, :cond_7

    .line 191
    .line 192
    :try_start_1
    invoke-interface {p0}, Lgj1;->a()[Lru;

    .line 193
    .line 194
    .line 195
    move-result-object p1
    :try_end_1
    .catch Lzs2; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    array-length v0, p1

    .line 197
    invoke-interface {p0}, Lsh2;->getValue()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    if-eqz p0, :cond_6

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_6
    if-lez v0, :cond_9

    .line 209
    .line 210
    add-int/lit8 v0, v0, -0x1

    .line 211
    .line 212
    aget-object p0, p1, v0

    .line 213
    .line 214
    iget-object p0, p0, Lru;->n:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    if-eqz p0, :cond_9

    .line 221
    .line 222
    goto :goto_5

    .line 223
    :catch_1
    move-exception p1

    .line 224
    new-instance v0, Le03;

    .line 225
    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v2, "Invalid Transfer-Encoding header value: "

    .line 229
    .line 230
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    invoke-direct {v0, p0, p1}, Lcm1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    .line 242
    .line 243
    throw v0

    .line 244
    :cond_7
    invoke-interface {p1, v2}, Lim1;->getFirstHeader(Ljava/lang/String;)Lgj1;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    if-eqz p0, :cond_9

    .line 249
    .line 250
    invoke-interface {p1, v2}, Lim1;->getHeaders(Ljava/lang/String;)[Lgj1;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    array-length p1, p0

    .line 255
    add-int/lit8 p1, p1, -0x1

    .line 256
    .line 257
    :goto_2
    if-ltz p1, :cond_8

    .line 258
    .line 259
    aget-object v2, p0, p1

    .line 260
    .line 261
    :try_start_2
    invoke-interface {v2}, Lsh2;->getValue()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 266
    .line 267
    .line 268
    move-result-wide p0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 269
    goto :goto_3

    .line 270
    :catch_2
    add-int/lit8 p1, p1, -0x1

    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_8
    move-wide p0, v9

    .line 274
    :goto_3
    cmp-long v0, p0, v0

    .line 275
    .line 276
    if-ltz v0, :cond_9

    .line 277
    .line 278
    move-wide v4, p0

    .line 279
    goto :goto_5

    .line 280
    :cond_9
    :goto_4
    move-wide v4, v9

    .line 281
    :goto_5
    return-wide v4

    .line 282
    nop

    .line 283
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public r(Lvm1;)J
    .locals 2

    .line 1
    new-instance p0, Lsu;

    .line 2
    .line 3
    const-string v0, "Keep-Alive"

    .line 4
    .line 5
    invoke-interface {p1, v0}, Lim1;->headerIterator(Ljava/lang/String;)Ljj1;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lsu;-><init>(Ljj1;)V

    .line 10
    .line 11
    .line 12
    :catch_0
    :cond_0
    invoke-virtual {p0}, Lsu;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    iget-object p1, p0, Lsu;->p:Lru;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lsu;->b()V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object p1, p0, Lsu;->p:Lru;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lsu;->p:Lru;

    .line 31
    .line 32
    iget-object v0, p1, Lru;->n:Ljava/lang/String;

    .line 33
    .line 34
    iget-object p1, p1, Lru;->o:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    const-string v1, "timeout"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 47
    .line 48
    .line 49
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    const-wide/16 v0, 0x3e8

    .line 51
    .line 52
    mul-long/2addr p0, v0

    .line 53
    return-wide p0

    .line 54
    :cond_2
    const-string p0, "No more header elements available"

    .line 55
    .line 56
    invoke-static {p0}, Lq73;->l(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-wide/16 p0, 0x0

    .line 60
    .line 61
    return-wide p0

    .line 62
    :cond_3
    const-wide/16 p0, -0x1

    .line 63
    .line 64
    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lmj1;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

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
    :pswitch_0
    const-string p0, "{}"

    .line 12
    .line 13
    return-object p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

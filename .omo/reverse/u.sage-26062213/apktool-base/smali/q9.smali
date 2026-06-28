.class public final Lq9;
.super Landroid/view/ViewGroup;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lsr2;
.implements Lia3;
.implements Lop0;
.implements Lir2;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Lx91;


# static fields
.field public static final U0:Lqv3;

.field public static V0:Ljava/lang/Class;

.field public static W0:Ljava/lang/reflect/Method;

.field public static X0:Ljava/lang/reflect/Method;

.field public static final Y0:Ldg2;

.field public static Z0:Ll7;

.field public static a1:Ljava/lang/reflect/Method;

.field public static b1:Ljava/lang/reflect/Method;


# instance fields
.field public final A:Lsa;

.field public A0:J

.field public final B:Lws2;

.field public final B0:Lpc4;

.field public final C:Los0;

.field public final C0:Ldg2;

.field public final D:Lxe4;

.field public D0:F

.field public final E:Lxy1;

.field public E0:F

.field public final F:Ltf2;

.field public F0:F

.field public final G:Ln33;

.field public G0:F

.field public final H:Ljh3;

.field public final H0:Lo9;

.field public final I:Lv9;

.field public final I0:Lc9;

.field public final J:Lha;

.field public J0:Z

.field public final K:Lfb;

.field public K0:Ldf1;

.field public final L:Llp;

.field public final L0:Llq1;

.field public final M:Ldg2;

.field public final M0:Li9;

.field public N:Ldg2;

.field public final N0:Li9;

.field public O:Z

.field public O0:Z

.field public P:Z

.field public P0:Z

.field public final Q:Lbe2;

.field public Q0:Z

.field public final R:Lic;

.field public final R0:Ldd1;

.field public final S:Lws2;

.field public S0:Landroid/view/View;

.field public final T:Los0;

.field public final T0:Lbx3;

.field public final U:Lv8;

.field public final V:Lw8;

.field public W:Z

.field public final a0:Lur2;

.field public b0:Z

.field public c0:Lid;

.field public d0:Lmf0;

.field public e0:Z

.field public final f0:Lab2;

.field public g0:J

.field public final h0:[I

.field public final i0:[F

.field public final j0:Landroid/graphics/Matrix;

.field public final k0:[F

.field public final l0:[F

.field public m0:J

.field public n:Lpb0;

.field public n0:Z

.field public o:J

.field public o0:J

.field public final p:Z

.field public p0:Lpe1;

.field public q:Laq1;

.field public q0:Lix3;

.field public r:Lt22;

.field public r0:Lhx3;

.field public s:Lu22;

.field public final s0:Ljava/util/concurrent/atomic/AtomicReference;

.field public t:Ll83;

.field public t0:Lbx3;

.field public final u:Lvh;

.field public final u0:Lpg2;

.field public final v:Lc9;

.field public final v0:Lws2;

.field public final w:Lws2;

.field public w0:Llr1;

.field public final x:Landroid/view/View;

.field public final x0:Lod2;

.field public final y:Ldh;

.field public y0:Lbx3;

.field public z:Lhi0;

.field public z0:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lqv3;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lqv3;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lq9;->U0:Lqv3;

    .line 9
    .line 10
    new-instance v0, Ldg2;

    .line 11
    .line 12
    invoke-direct {v0}, Ldg2;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lq9;->Y0:Ldg2;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lpb0;)V
    .locals 15

    .line 1
    move-object/from16 v9, p1

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v10, p0, Lq9;->n:Lpb0;

    .line 9
    .line 10
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    iput-wide v0, p0, Lq9;->o:J

    .line 16
    .line 17
    const/4 v11, 0x1

    .line 18
    iput-boolean v11, p0, Lq9;->p:Z

    .line 19
    .line 20
    sget-object v0, Lw13;->E:Lw13;

    .line 21
    .line 22
    iput-object v0, p0, Lq9;->t:Ll83;

    .line 23
    .line 24
    new-instance v0, Lvh;

    .line 25
    .line 26
    invoke-direct {v0}, Lvh;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lq9;->u:Lvh;

    .line 30
    .line 31
    new-instance v0, Lc9;

    .line 32
    .line 33
    const/4 v12, 0x0

    .line 34
    invoke-direct {v0, p0, v12}, Lc9;-><init>(Lq9;I)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lq9;->v:Lc9;

    .line 38
    .line 39
    invoke-static {v9}, Lis0;->b(Landroid/content/Context;)Les0;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v1, Lw13;->P:Lw13;

    .line 44
    .line 45
    new-instance v3, Lws2;

    .line 46
    .line 47
    invoke-direct {v3, v0, v1}, Lws2;-><init>(Ljava/lang/Object;Lw13;)V

    .line 48
    .line 49
    .line 50
    iput-object v3, p0, Lq9;->w:Lws2;

    .line 51
    .line 52
    new-instance v0, Ldh;

    .line 53
    .line 54
    invoke-direct {v0, p0, p0}, Ldh;-><init>(Lq9;Lq9;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lq9;->y:Ldh;

    .line 58
    .line 59
    invoke-virtual {v10}, Lpb0;->f()V

    .line 60
    .line 61
    .line 62
    iget-object v0, v10, Lpb0;->c:Lzb0;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lzb0;->j()Lhi0;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lq9;->z:Lhi0;

    .line 72
    .line 73
    new-instance v0, Lsa;

    .line 74
    .line 75
    invoke-direct {v0}, Lsa;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lq9;->A:Lsa;

    .line 79
    .line 80
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-static {v0}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lq9;->B:Lws2;

    .line 87
    .line 88
    new-instance v0, Li9;

    .line 89
    .line 90
    invoke-direct {v0, p0, v12}, Li9;-><init>(Lq9;I)V

    .line 91
    .line 92
    .line 93
    invoke-static {v0}, Lca;->m(Lne1;)Los0;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iput-object v0, p0, Lq9;->C:Los0;

    .line 98
    .line 99
    new-instance v0, Lxe4;

    .line 100
    .line 101
    invoke-direct {v0}, Lxe4;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lq9;->D:Lxe4;

    .line 105
    .line 106
    new-instance v0, Lxy1;

    .line 107
    .line 108
    const/4 v1, 0x3

    .line 109
    invoke-direct {v0, v1}, Lxy1;-><init>(I)V

    .line 110
    .line 111
    .line 112
    sget-object v1, Lja3;->c:Lja3;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lxy1;->e0(Ldb2;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lq9;->getDensity()Las0;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Lxy1;->b0(Las0;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lq9;->getViewConfiguration()Lnb4;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Lxy1;->g0(Lnb4;)V

    .line 129
    .line 130
    .line 131
    new-instance v1, Lp9;

    .line 132
    .line 133
    invoke-direct {v1, p0}, Lp9;-><init>(Lq9;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, Ldh;

    .line 141
    .line 142
    iget-object v3, v3, Ldh;->e:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v3, Lz91;

    .line 145
    .line 146
    invoke-interface {v1, v3}, Lnd2;->c(Lnd2;)Lnd2;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {p0}, Lq9;->getDragAndDropManager()Lsa;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    iget-object v3, v3, Lsa;->c:Lra;

    .line 155
    .line 156
    invoke-interface {v1, v3}, Lnd2;->c(Lnd2;)Lnd2;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Lxy1;->f0(Lnd2;)V

    .line 161
    .line 162
    .line 163
    iput-object v0, p0, Lq9;->E:Lxy1;

    .line 164
    .line 165
    sget-object v0, Lis1;->a:Ltf2;

    .line 166
    .line 167
    new-instance v0, Ltf2;

    .line 168
    .line 169
    invoke-direct {v0}, Ltf2;-><init>()V

    .line 170
    .line 171
    .line 172
    iput-object v0, p0, Lq9;->F:Ltf2;

    .line 173
    .line 174
    new-instance v0, Ln33;

    .line 175
    .line 176
    invoke-virtual {p0}, Lq9;->getLayoutNodes()Ltf2;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-direct {v0, v1, p0}, Ln33;-><init>(Ltf2;Lq9;)V

    .line 181
    .line 182
    .line 183
    iput-object v0, p0, Lq9;->G:Ln33;

    .line 184
    .line 185
    new-instance v0, Ljh3;

    .line 186
    .line 187
    invoke-virtual {p0}, Lq9;->getRoot()Lxy1;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    new-instance v3, Li01;

    .line 192
    .line 193
    invoke-direct {v3}, Lmd2;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lq9;->getLayoutNodes()Ltf2;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-direct {v0, v1, v3, v4}, Ljh3;-><init>(Lxy1;Li01;Ltf2;)V

    .line 201
    .line 202
    .line 203
    iput-object v0, p0, Lq9;->H:Ljh3;

    .line 204
    .line 205
    new-instance v13, Lv9;

    .line 206
    .line 207
    invoke-direct {v13, p0}, Lv9;-><init>(Lq9;)V

    .line 208
    .line 209
    .line 210
    iput-object v13, p0, Lq9;->I:Lv9;

    .line 211
    .line 212
    new-instance v14, Lha;

    .line 213
    .line 214
    new-instance v0, Lh9;

    .line 215
    .line 216
    const/4 v7, 0x0

    .line 217
    const/4 v8, 0x0

    .line 218
    const/4 v1, 0x0

    .line 219
    const-class v3, Lca;

    .line 220
    .line 221
    const-string v4, "getContentCaptureSessionCompat"

    .line 222
    .line 223
    const-string v5, "getContentCaptureSessionCompat(Landroid/view/View;)Landroidx/compose/ui/contentcapture/ContentCaptureSessionWrapper;"

    .line 224
    .line 225
    const/4 v6, 0x1

    .line 226
    move-object v2, p0

    .line 227
    invoke-direct/range {v0 .. v8}, Lh9;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 228
    .line 229
    .line 230
    invoke-direct {v14, p0, v0}, Lha;-><init>(Lq9;Lh9;)V

    .line 231
    .line 232
    .line 233
    iput-object v14, p0, Lq9;->J:Lha;

    .line 234
    .line 235
    new-instance v0, Lfb;

    .line 236
    .line 237
    invoke-direct {v0, p0}, Lfb;-><init>(Lq9;)V

    .line 238
    .line 239
    .line 240
    iput-object v0, p0, Lq9;->K:Lfb;

    .line 241
    .line 242
    new-instance v0, Llp;

    .line 243
    .line 244
    invoke-direct {v0}, Llp;-><init>()V

    .line 245
    .line 246
    .line 247
    iput-object v0, p0, Lq9;->L:Llp;

    .line 248
    .line 249
    new-instance v0, Ldg2;

    .line 250
    .line 251
    invoke-direct {v0}, Ldg2;-><init>()V

    .line 252
    .line 253
    .line 254
    iput-object v0, p0, Lq9;->M:Ldg2;

    .line 255
    .line 256
    new-instance v0, Lbe2;

    .line 257
    .line 258
    invoke-direct {v0}, Lbe2;-><init>()V

    .line 259
    .line 260
    .line 261
    iput-object v0, p0, Lq9;->Q:Lbe2;

    .line 262
    .line 263
    new-instance v0, Lic;

    .line 264
    .line 265
    invoke-virtual {p0}, Lq9;->getRoot()Lxy1;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 270
    .line 271
    .line 272
    iput-object v1, v0, Lic;->b:Ljava/lang/Object;

    .line 273
    .line 274
    new-instance v3, Lwj1;

    .line 275
    .line 276
    iget-object v1, v1, Lxy1;->S:Lbo;

    .line 277
    .line 278
    iget-object v1, v1, Lbo;->d:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v1, Lgr1;

    .line 281
    .line 282
    invoke-direct {v3, v1}, Lwj1;-><init>(Lgy1;)V

    .line 283
    .line 284
    .line 285
    iput-object v3, v0, Lic;->c:Ljava/lang/Object;

    .line 286
    .line 287
    new-instance v1, Ldh1;

    .line 288
    .line 289
    const/16 v3, 0x19

    .line 290
    .line 291
    invoke-direct {v1, v3, v12}, Ldh1;-><init>(IZ)V

    .line 292
    .line 293
    .line 294
    iput-object v1, v0, Lic;->d:Ljava/lang/Object;

    .line 295
    .line 296
    new-instance v1, Lzj1;

    .line 297
    .line 298
    invoke-direct {v1}, Lzj1;-><init>()V

    .line 299
    .line 300
    .line 301
    iput-object v1, v0, Lic;->e:Ljava/lang/Object;

    .line 302
    .line 303
    iput-object v0, p0, Lq9;->R:Lic;

    .line 304
    .line 305
    new-instance v0, Landroid/content/res/Configuration;

    .line 306
    .line 307
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 316
    .line 317
    .line 318
    invoke-static {v0}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    iput-object v0, p0, Lq9;->S:Lws2;

    .line 323
    .line 324
    new-instance v0, Li9;

    .line 325
    .line 326
    const/4 v6, 0x2

    .line 327
    invoke-direct {v0, p0, v6}, Li9;-><init>(Lq9;I)V

    .line 328
    .line 329
    .line 330
    invoke-static {v0}, Lca;->m(Lne1;)Los0;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    iput-object v0, p0, Lq9;->T:Los0;

    .line 335
    .line 336
    invoke-static {}, Lq9;->d()Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    const/4 v7, 0x0

    .line 341
    if-eqz v0, :cond_0

    .line 342
    .line 343
    new-instance v0, Lv8;

    .line 344
    .line 345
    invoke-virtual {p0}, Lq9;->getAutofillTree()Llp;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-direct {v0, p0, v1}, Lv8;-><init>(Lq9;Llp;)V

    .line 350
    .line 351
    .line 352
    goto :goto_0

    .line 353
    :cond_0
    move-object v0, v7

    .line 354
    :goto_0
    iput-object v0, p0, Lq9;->U:Lv8;

    .line 355
    .line 356
    invoke-static {}, Lq9;->d()Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-eqz v0, :cond_1

    .line 361
    .line 362
    new-instance v0, Lw8;

    .line 363
    .line 364
    new-instance v1, Lxh1;

    .line 365
    .line 366
    const/16 v3, 0xf

    .line 367
    .line 368
    invoke-direct {v1, v9, v3}, Lxh1;-><init>(Landroid/content/Context;I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p0}, Lq9;->getSemanticsOwner()Ljh3;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-virtual {p0}, Lq9;->getRectManager()Ln33;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v5

    .line 383
    move-object v3, p0

    .line 384
    invoke-direct/range {v0 .. v5}, Lw8;-><init>(Lxh1;Ljh3;Lq9;Ln33;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    goto :goto_1

    .line 388
    :cond_1
    move-object v0, v7

    .line 389
    :goto_1
    iput-object v0, p0, Lq9;->V:Lw8;

    .line 390
    .line 391
    new-instance v0, Lur2;

    .line 392
    .line 393
    new-instance v1, Lm9;

    .line 394
    .line 395
    invoke-direct {v1, p0, v11}, Lm9;-><init>(Lq9;I)V

    .line 396
    .line 397
    .line 398
    invoke-direct {v0, v1}, Lur2;-><init>(Lm9;)V

    .line 399
    .line 400
    .line 401
    iput-object v0, p0, Lq9;->a0:Lur2;

    .line 402
    .line 403
    new-instance v0, Lab2;

    .line 404
    .line 405
    invoke-virtual {p0}, Lq9;->getRoot()Lxy1;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    invoke-direct {v0, v1}, Lab2;-><init>(Lxy1;)V

    .line 410
    .line 411
    .line 412
    iput-object v0, p0, Lq9;->f0:Lab2;

    .line 413
    .line 414
    const-wide v0, 0x7fffffff7fffffffL

    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    iput-wide v0, p0, Lq9;->g0:J

    .line 420
    .line 421
    filled-new-array {v12, v12}, [I

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    iput-object v0, p0, Lq9;->h0:[I

    .line 426
    .line 427
    invoke-static {}, Lxa2;->a()[F

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    iput-object v0, p0, Lq9;->i0:[F

    .line 432
    .line 433
    new-instance v0, Landroid/graphics/Matrix;

    .line 434
    .line 435
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 436
    .line 437
    .line 438
    iput-object v0, p0, Lq9;->j0:Landroid/graphics/Matrix;

    .line 439
    .line 440
    invoke-static {}, Lxa2;->a()[F

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    iput-object v0, p0, Lq9;->k0:[F

    .line 445
    .line 446
    invoke-static {}, Lxa2;->a()[F

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    iput-object v0, p0, Lq9;->l0:[F

    .line 451
    .line 452
    const-wide/16 v0, -0x1

    .line 453
    .line 454
    iput-wide v0, p0, Lq9;->m0:J

    .line 455
    .line 456
    const-wide v0, 0x7f8000007f800000L    # 1.404448428688076E306

    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    iput-wide v0, p0, Lq9;->o0:J

    .line 462
    .line 463
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 464
    .line 465
    invoke-direct {v0, v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    iput-object v0, p0, Lq9;->s0:Ljava/util/concurrent/atomic/AtomicReference;

    .line 469
    .line 470
    iget-object v0, v10, Lpb0;->p:Lpg2;

    .line 471
    .line 472
    iput-object v0, p0, Lq9;->u0:Lpg2;

    .line 473
    .line 474
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    sget-object v1, Lv91;->a:[I

    .line 487
    .line 488
    sget-object v1, Lhy1;->n:Lhy1;

    .line 489
    .line 490
    if-eqz v0, :cond_3

    .line 491
    .line 492
    if-eq v0, v11, :cond_2

    .line 493
    .line 494
    move-object v0, v7

    .line 495
    goto :goto_2

    .line 496
    :cond_2
    sget-object v0, Lhy1;->o:Lhy1;

    .line 497
    .line 498
    goto :goto_2

    .line 499
    :cond_3
    move-object v0, v1

    .line 500
    :goto_2
    if-nez v0, :cond_4

    .line 501
    .line 502
    goto :goto_3

    .line 503
    :cond_4
    move-object v1, v0

    .line 504
    :goto_3
    invoke-static {v1}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    iput-object v0, p0, Lq9;->v0:Lws2;

    .line 509
    .line 510
    new-instance v0, Lod2;

    .line 511
    .line 512
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 513
    .line 514
    .line 515
    new-instance v1, Lug2;

    .line 516
    .line 517
    const/16 v3, 0x10

    .line 518
    .line 519
    new-array v4, v3, [Lkq;

    .line 520
    .line 521
    invoke-direct {v1, v4}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 522
    .line 523
    .line 524
    new-instance v1, Lug2;

    .line 525
    .line 526
    new-array v4, v3, [Lk30;

    .line 527
    .line 528
    invoke-direct {v1, v4}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 529
    .line 530
    .line 531
    new-instance v1, Lug2;

    .line 532
    .line 533
    new-array v4, v3, [Lxy1;

    .line 534
    .line 535
    invoke-direct {v1, v4}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 536
    .line 537
    .line 538
    new-instance v1, Lug2;

    .line 539
    .line 540
    new-array v3, v3, [Lk30;

    .line 541
    .line 542
    invoke-direct {v1, v3}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 543
    .line 544
    .line 545
    iput-object v0, p0, Lq9;->x0:Lod2;

    .line 546
    .line 547
    new-instance v0, Lpc4;

    .line 548
    .line 549
    invoke-direct {v0, v12}, Lpc4;-><init>(I)V

    .line 550
    .line 551
    .line 552
    iput-object v0, p0, Lq9;->B0:Lpc4;

    .line 553
    .line 554
    new-instance v0, Ldg2;

    .line 555
    .line 556
    invoke-direct {v0}, Ldg2;-><init>()V

    .line 557
    .line 558
    .line 559
    iput-object v0, p0, Lq9;->C0:Ldg2;

    .line 560
    .line 561
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 562
    .line 563
    iput v0, p0, Lq9;->D0:F

    .line 564
    .line 565
    iput v0, p0, Lq9;->E0:F

    .line 566
    .line 567
    iput v0, p0, Lq9;->F0:F

    .line 568
    .line 569
    iput v0, p0, Lq9;->G0:F

    .line 570
    .line 571
    new-instance v0, Lo9;

    .line 572
    .line 573
    invoke-direct {v0, v12, p0}, Lo9;-><init>(ILjava/lang/Object;)V

    .line 574
    .line 575
    .line 576
    iput-object v0, p0, Lq9;->H0:Lo9;

    .line 577
    .line 578
    new-instance v0, Lc9;

    .line 579
    .line 580
    invoke-direct {v0, p0, v11}, Lc9;-><init>(Lq9;I)V

    .line 581
    .line 582
    .line 583
    iput-object v0, p0, Lq9;->I0:Lc9;

    .line 584
    .line 585
    new-instance v0, Ldl3;

    .line 586
    .line 587
    invoke-direct {v0, v6, p0}, Ldl3;-><init>(ILjava/lang/Object;)V

    .line 588
    .line 589
    .line 590
    iput-object v0, p0, Lq9;->K0:Ldf1;

    .line 591
    .line 592
    new-instance v0, Llq1;

    .line 593
    .line 594
    new-instance v1, Lm9;

    .line 595
    .line 596
    invoke-direct {v1, p0, v12}, Lm9;-><init>(Lq9;I)V

    .line 597
    .line 598
    .line 599
    invoke-direct {v0, v9, v1}, Llq1;-><init>(Landroid/content/Context;Lm9;)V

    .line 600
    .line 601
    .line 602
    iput-object v0, p0, Lq9;->L0:Llq1;

    .line 603
    .line 604
    new-instance v0, Li9;

    .line 605
    .line 606
    const/4 v1, 0x4

    .line 607
    invoke-direct {v0, p0, v1}, Li9;-><init>(Lq9;I)V

    .line 608
    .line 609
    .line 610
    iput-object v0, p0, Lq9;->M0:Li9;

    .line 611
    .line 612
    new-instance v0, Li9;

    .line 613
    .line 614
    invoke-direct {v0, p0, v11}, Li9;-><init>(Lq9;I)V

    .line 615
    .line 616
    .line 617
    iput-object v0, p0, Lq9;->N0:Li9;

    .line 618
    .line 619
    invoke-virtual {p0, v14}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {p0, v12}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {p0, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 626
    .line 627
    .line 628
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 629
    .line 630
    const/16 v1, 0x1a

    .line 631
    .line 632
    if-lt v0, v1, :cond_5

    .line 633
    .line 634
    sget-object v1, Lba;->a:Lba;

    .line 635
    .line 636
    invoke-virtual {v1, p0, v11, v12}, Lba;->a(Landroid/view/View;IZ)V

    .line 637
    .line 638
    .line 639
    :cond_5
    invoke-virtual {p0, v11}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 643
    .line 644
    .line 645
    invoke-static {p0, v13}, Llb4;->e(Landroid/view/View;Lr2;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {p0}, Lq9;->getDragAndDropManager()Lsa;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 653
    .line 654
    .line 655
    const/16 v1, 0x1d

    .line 656
    .line 657
    if-lt v0, v1, :cond_6

    .line 658
    .line 659
    sget-object v1, Lx9;->a:Lx9;

    .line 660
    .line 661
    invoke-virtual {v1, p0}, Lx9;->a(Landroid/view/View;)V

    .line 662
    .line 663
    .line 664
    :cond_6
    invoke-static {}, Lq9;->l()Z

    .line 665
    .line 666
    .line 667
    move-result v1

    .line 668
    if-eqz v1, :cond_7

    .line 669
    .line 670
    new-instance v1, Landroid/view/View;

    .line 671
    .line 672
    invoke-direct {v1, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 673
    .line 674
    .line 675
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 676
    .line 677
    invoke-direct {v3, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 681
    .line 682
    .line 683
    const v3, 0x7f090070

    .line 684
    .line 685
    .line 686
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 687
    .line 688
    invoke-virtual {v1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 689
    .line 690
    .line 691
    iput-object v1, p0, Lq9;->x:Landroid/view/View;

    .line 692
    .line 693
    const/4 v3, -0x1

    .line 694
    invoke-virtual {p0, v1, v3}, Lq9;->addView(Landroid/view/View;I)V

    .line 695
    .line 696
    .line 697
    :cond_7
    const/16 v1, 0x1f

    .line 698
    .line 699
    if-lt v0, v1, :cond_8

    .line 700
    .line 701
    new-instance v7, Ldd1;

    .line 702
    .line 703
    const/16 v0, 0xe

    .line 704
    .line 705
    invoke-direct {v7, v0}, Ldd1;-><init>(I)V

    .line 706
    .line 707
    .line 708
    :cond_8
    iput-object v7, p0, Lq9;->R0:Ldd1;

    .line 709
    .line 710
    new-instance v0, Lbx3;

    .line 711
    .line 712
    invoke-direct {v0, p0}, Lbx3;-><init>(Lq9;)V

    .line 713
    .line 714
    .line 715
    iput-object v0, p0, Lq9;->T0:Lbx3;

    .line 716
    .line 717
    return-void
.end method

.method public static final b(Lq9;ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lq9;->I:Lv9;

    .line 2
    .line 3
    iget-object v0, p0, Lv9;->R:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p3, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lv9;->P:Lrf2;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lrf2;->d(I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eq p0, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, p3, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lv9;->S:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p3, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object p0, p0, Lv9;->Q:Lrf2;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lrf2;->d(I)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eq p0, v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1, p3, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public static final synthetic c(Lq9;Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static d()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public static e(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    instance-of v3, v2, Lq9;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    check-cast v2, Lq9;

    .line 17
    .line 18
    invoke-virtual {v2}, Lq9;->u()V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    check-cast v2, Landroid/view/ViewGroup;

    .line 27
    .line 28
    invoke-static {v2}, Lq9;->e(Landroid/view/ViewGroup;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method public static f(I)J
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/high16 v1, -0x80000000

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/high16 v1, 0x40000000    # 2.0f

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    int-to-long v0, p0

    .line 20
    const/16 p0, 0x20

    .line 21
    .line 22
    shl-long v2, v0, p0

    .line 23
    .line 24
    or-long/2addr v0, v2

    .line 25
    return-wide v0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_1
    const-wide/32 v0, 0x7fffffff

    .line 33
    .line 34
    .line 35
    return-wide v0

    .line 36
    :cond_2
    int-to-long v0, p0

    .line 37
    return-wide v0
.end method

.method private final getCanvasHolder()Ly20;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->n:Lpb0;

    .line 2
    .line 3
    iget-object p0, p0, Lpb0;->u:Ly20;

    .line 4
    .line 5
    return-object p0
.end method

.method private final getDerivedIsAttached()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->C:Los0;

    .line 2
    .line 3
    invoke-virtual {p0}, Los0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static synthetic getFontLoader$annotations()V
    .locals 0
    .annotation runtime Lks0;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getLastMatrixRecalculationAnimationTime$ui$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final getLegacyTextInputServiceAndroid()Lix3;
    .locals 2

    .line 1
    iget-object v0, p0, Lq9;->q0:Lix3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lix3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lq9;->getView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1, p0}, Lix3;-><init>(Landroid/view/View;Lq9;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lq9;->q0:Lix3;

    .line 15
    .line 16
    :cond_0
    return-object v0
.end method

.method public static synthetic getPlayNavigationSoundEffect$ui$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getPrimaryDirectionalMotionAxisOverride-dqNNBbU$ui$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getRoot$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getTextInputService$annotations()V
    .locals 0
    .annotation runtime Lks0;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getWindowInfo$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static i(Lxy1;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lxy1;->D()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lxy1;->z()Lug2;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget-object v0, p0, Lug2;->n:[Ljava/lang/Object;

    .line 9
    .line 10
    iget p0, p0, Lug2;->p:I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, p0, :cond_0

    .line 14
    .line 15
    aget-object v2, v0, v1

    .line 16
    .line 17
    check-cast v2, Lxy1;

    .line 18
    .line 19
    invoke-static {v2}, Lq9;->i(Lxy1;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public static l()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x23

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public static m(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const v1, 0x7fffffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v0, v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 16
    .line 17
    if-ge v0, v4, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    and-int/2addr v0, v1

    .line 28
    if-ge v0, v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    and-int/2addr v0, v1

    .line 39
    if-ge v0, v4, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    and-int/2addr v0, v1

    .line 50
    if-ge v0, v4, :cond_0

    .line 51
    .line 52
    move v0, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move v0, v3

    .line 55
    :goto_0
    if-nez v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    move v6, v3

    .line 62
    :goto_1
    if-ge v6, v5, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0, v6}, Landroid/view/MotionEvent;->getX(I)F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    and-int/2addr v0, v1

    .line 73
    if-ge v0, v4, :cond_2

    .line 74
    .line 75
    invoke-virtual {p0, v6}, Landroid/view/MotionEvent;->getY(I)F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    and-int/2addr v0, v1

    .line 84
    if-ge v0, v4, :cond_2

    .line 85
    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 87
    .line 88
    const/16 v7, 0x1d

    .line 89
    .line 90
    if-lt v0, v7, :cond_1

    .line 91
    .line 92
    sget-object v0, Lce2;->a:Lce2;

    .line 93
    .line 94
    invoke-virtual {v0, p0, v6}, Lce2;->a(Landroid/view/MotionEvent;I)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_1
    move v0, v2

    .line 102
    goto :goto_3

    .line 103
    :cond_2
    :goto_2
    move v0, v3

    .line 104
    :goto_3
    if-nez v0, :cond_3

    .line 105
    .line 106
    add-int/lit8 v6, v6, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    return v0
.end method

.method private final setAttached(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->B:Lws2;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private setDensity(Las0;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->w:Lws2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private setLayoutDirection(Lhy1;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->v0:Lws2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final A(Lp22;)V
    .locals 3

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v0, 0x1e

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lqv3;->p()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lq9;->setShowLayoutBounds(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lq9;->s:Lu22;

    .line 15
    .line 16
    if-eqz p1, :cond_4

    .line 17
    .line 18
    iget-object p0, p0, Lq9;->r:Lt22;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object v0, p1, Lu22;->a:Ldd1;

    .line 24
    .line 25
    iget-object v1, v0, Ldd1;->o:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Lx92;

    .line 28
    .line 29
    iget-boolean v2, v1, Lx92;->n:Z

    .line 30
    .line 31
    if-eqz v2, :cond_4

    .line 32
    .line 33
    iget-boolean v1, v1, Lx92;->p:Z

    .line 34
    .line 35
    if-nez v1, :cond_4

    .line 36
    .line 37
    :try_start_0
    new-instance v1, Lje;

    .line 38
    .line 39
    const/16 v2, 0x8

    .line 40
    .line 41
    invoke-direct {v1, v2, p1}, Lje;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    check-cast p0, Loh4;

    .line 45
    .line 46
    iget-object p0, p0, Loh4;->n:Lzb0;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lzb0;->s(Lje;)Lq20;

    .line 49
    .line 50
    .line 51
    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_1

    .line 53
    :catch_0
    iget-object p0, v0, Ldd1;->o:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p0, Lx92;

    .line 56
    .line 57
    iget-boolean v0, p0, Lx92;->o:Z

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-boolean v0, p0, Lx92;->p:Z

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    const-string v0, "ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?"

    .line 67
    .line 68
    invoke-static {v0}, Ljx2;->a(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {p0}, Lx92;->a()V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lx92;->p:Z

    .line 76
    .line 77
    :goto_0
    const/4 p0, 0x0

    .line 78
    :goto_1
    iget-object v0, p1, Lu22;->d:Lq20;

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    invoke-interface {v0}, Lq20;->cancel()V

    .line 83
    .line 84
    .line 85
    :cond_3
    iput-object p0, p1, Lu22;->d:Lq20;

    .line 86
    .line 87
    :cond_4
    return-void
.end method

.method public final C(Landroid/view/ViewStructure;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lq9;->getAutofillManager()Lw8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    iget-object v2, v0, Lw8;->o:Ljh3;

    .line 9
    .line 10
    iget-object v2, v2, Ljh3;->a:Lxy1;

    .line 11
    .line 12
    iget-object v3, v0, Lw8;->s:Landroid/view/autofill/AutofillId;

    .line 13
    .line 14
    iget-object v4, v0, Lw8;->r:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v5, v0, Lw8;->q:Ln33;

    .line 17
    .line 18
    invoke-static {p1, v2, v3, v4, v5}, Lis0;->Q(Landroid/view/ViewStructure;Lxy1;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ln33;)V

    .line 19
    .line 20
    .line 21
    sget-object v3, Ltn2;->a:[Ljava/lang/Object;

    .line 22
    .line 23
    new-instance v3, Ldg2;

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v6}, Ldg2;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ldg2;->a(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p1}, Ldg2;->a(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v3}, Ldg2;->i()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_5

    .line 40
    .line 41
    iget v2, v3, Ldg2;->b:I

    .line 42
    .line 43
    sub-int/2addr v2, v1

    .line 44
    invoke-virtual {v3, v2}, Ldg2;->k(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    check-cast v2, Landroid/view/ViewStructure;

    .line 52
    .line 53
    iget v6, v3, Ldg2;->b:I

    .line 54
    .line 55
    sub-int/2addr v6, v1

    .line 56
    invoke-virtual {v3, v6}, Ldg2;->k(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    check-cast v6, Lxy1;

    .line 64
    .line 65
    invoke-virtual {v6}, Lxy1;->n()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Lrg2;

    .line 70
    .line 71
    iget-object v7, v6, Lrg2;->n:Lug2;

    .line 72
    .line 73
    iget v7, v7, Lug2;->p:I

    .line 74
    .line 75
    const/4 v8, 0x0

    .line 76
    :goto_0
    if-ge v8, v7, :cond_0

    .line 77
    .line 78
    invoke-virtual {v6, v8}, Lrg2;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    check-cast v9, Lxy1;

    .line 83
    .line 84
    iget-boolean v10, v9, Lxy1;->d0:Z

    .line 85
    .line 86
    if-nez v10, :cond_4

    .line 87
    .line 88
    invoke-virtual {v9}, Lxy1;->H()Z

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    if-eqz v10, :cond_4

    .line 93
    .line 94
    invoke-virtual {v9}, Lxy1;->I()Z

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    if-nez v10, :cond_1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {v9}, Lxy1;->x()Lbh3;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    if-eqz v10, :cond_3

    .line 106
    .line 107
    iget-object v10, v10, Lbh3;->n:Lkg2;

    .line 108
    .line 109
    sget-object v11, Lah3;->g:Loh3;

    .line 110
    .line 111
    invoke-virtual {v10, v11}, Lkg2;->b(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    if-nez v11, :cond_2

    .line 116
    .line 117
    sget-object v11, Lah3;->h:Loh3;

    .line 118
    .line 119
    invoke-virtual {v10, v11}, Lkg2;->b(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    if-nez v11, :cond_2

    .line 124
    .line 125
    sget-object v11, Llh3;->r:Loh3;

    .line 126
    .line 127
    invoke-virtual {v10, v11}, Lkg2;->b(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v11

    .line 131
    if-nez v11, :cond_2

    .line 132
    .line 133
    sget-object v11, Llh3;->s:Loh3;

    .line 134
    .line 135
    invoke-virtual {v10, v11}, Lkg2;->b(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    if-nez v11, :cond_2

    .line 140
    .line 141
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 142
    .line 143
    const/16 v12, 0x22

    .line 144
    .line 145
    if-lt v11, v12, :cond_3

    .line 146
    .line 147
    sget-object v11, Lmh3;->c:Loh3;

    .line 148
    .line 149
    invoke-virtual {v10, v11}, Lkg2;->b(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v10

    .line 153
    if-eqz v10, :cond_3

    .line 154
    .line 155
    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/ViewStructure;->addChildCount(I)I

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    invoke-virtual {v2, v10}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    iget-object v11, v0, Lw8;->s:Landroid/view/autofill/AutofillId;

    .line 164
    .line 165
    invoke-static {v10, v9, v11, v4, v5}, Lis0;->Q(Landroid/view/ViewStructure;Lxy1;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ln33;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, v9}, Ldg2;->a(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v10}, Ldg2;->a(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_3
    invoke-virtual {v3, v9}, Ldg2;->a(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v2}, Ldg2;->a(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    :cond_4
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_5
    invoke-virtual {p0}, Lq9;->getAutofill()Lv8;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    if-eqz p0, :cond_9

    .line 189
    .line 190
    iget-object v0, p0, Lv8;->b:Llp;

    .line 191
    .line 192
    iget-object v2, v0, Llp;->a:Ljava/util/LinkedHashMap;

    .line 193
    .line 194
    iget-object v0, v0, Llp;->a:Ljava/util/LinkedHashMap;

    .line 195
    .line 196
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_6

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->addChildCount(I)I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-nez v3, :cond_7

    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    check-cast v0, Ljava/util/Map$Entry;

    .line 231
    .line 232
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    check-cast v3, Ljava/lang/Number;

    .line 237
    .line 238
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    if-eqz v0, :cond_8

    .line 247
    .line 248
    invoke-static {}, Lmk0;->b()V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :cond_8
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    iget-object v0, p0, Lv8;->c:Landroid/view/autofill/AutofillId;

    .line 257
    .line 258
    invoke-static {p1, v0, v3}, Ly2;->s(Landroid/view/ViewStructure;Landroid/view/autofill/AutofillId;I)V

    .line 259
    .line 260
    .line 261
    iget-object p0, p0, Lv8;->a:Lq9;

    .line 262
    .line 263
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    const/4 v0, 0x0

    .line 272
    invoke-virtual {p1, v3, p0, v0, v0}, Landroid/view/ViewStructure;->setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-static {p1, v1}, Ly2;->r(Landroid/view/ViewStructure;I)V

    .line 276
    .line 277
    .line 278
    throw v0

    .line 279
    :cond_9
    :goto_2
    return-void
.end method

.method public final D()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lq9;->n0:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Lq9;->m0:J

    .line 10
    .line 11
    cmp-long v2, v0, v2

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iput-wide v0, p0, Lq9;->m0:J

    .line 16
    .line 17
    invoke-virtual {p0}, Lq9;->F()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    move-object v1, p0

    .line 25
    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    move-object v1, v0

    .line 30
    check-cast v1, Landroid/view/View;

    .line 31
    .line 32
    move-object v0, v1

    .line 33
    check-cast v0, Landroid/view/ViewGroup;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lq9;->h0:[I

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 43
    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    aget v3, v0, v2

    .line 47
    .line 48
    int-to-float v3, v3

    .line 49
    const/4 v4, 0x1

    .line 50
    aget v5, v0, v4

    .line 51
    .line 52
    int-to-float v5, v5

    .line 53
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 54
    .line 55
    .line 56
    aget v1, v0, v2

    .line 57
    .line 58
    int-to-float v1, v1

    .line 59
    aget v0, v0, v4

    .line 60
    .line 61
    int-to-float v0, v0

    .line 62
    sub-float/2addr v3, v1

    .line 63
    sub-float/2addr v5, v0

    .line 64
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    int-to-long v0, v0

    .line 69
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    int-to-long v2, v2

    .line 74
    const/16 v4, 0x20

    .line 75
    .line 76
    shl-long/2addr v0, v4

    .line 77
    const-wide v4, 0xffffffffL

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    and-long/2addr v2, v4

    .line 83
    or-long/2addr v0, v2

    .line 84
    iput-wide v0, p0, Lq9;->o0:J

    .line 85
    .line 86
    :cond_1
    return-void
.end method

.method public final E(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lq9;->m0:J

    .line 6
    .line 7
    invoke-virtual {p0}, Lq9;->F()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    int-to-long v2, v0

    .line 23
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    int-to-long v0, v0

    .line 28
    const/16 v4, 0x20

    .line 29
    .line 30
    shl-long/2addr v2, v4

    .line 31
    const-wide v5, 0xffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    and-long/2addr v0, v5

    .line 37
    or-long/2addr v0, v2

    .line 38
    iget-object v2, p0, Lq9;->k0:[F

    .line 39
    .line 40
    invoke-static {v2, v0, v1}, Lxa2;->b([FJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    shr-long v7, v0, v4

    .line 49
    .line 50
    long-to-int v3, v7

    .line 51
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    sub-float/2addr v2, v3

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    and-long/2addr v0, v5

    .line 61
    long-to-int v0, v0

    .line 62
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    sub-float/2addr p1, v0

    .line 67
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    int-to-long v0, v0

    .line 72
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    int-to-long v2, p1

    .line 77
    shl-long/2addr v0, v4

    .line 78
    and-long/2addr v2, v5

    .line 79
    or-long/2addr v0, v2

    .line 80
    iput-wide v0, p0, Lq9;->o0:J

    .line 81
    .line 82
    return-void
.end method

.method public final F()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    iget-object v2, p0, Lq9;->k0:[F

    .line 6
    .line 7
    iget-object v3, p0, Lq9;->h0:[I

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Ld10;->a:Ld10;

    .line 12
    .line 13
    iget-object v1, p0, Lq9;->j0:Landroid/graphics/Matrix;

    .line 14
    .line 15
    invoke-virtual {v0, p0, v2, v1, v3}, Ld10;->a(Landroid/view/View;[FLandroid/graphics/Matrix;[I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v2}, Lxa2;->d([F)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lq9;->i0:[F

    .line 23
    .line 24
    invoke-static {p0, v2, v0, v3}, Ln44;->O0(Landroid/view/View;[F[F[I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p0, p0, Lq9;->l0:[F

    .line 28
    .line 29
    invoke-static {v2, p0}, Lmt1;->K([F[F)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final G()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/16 v0, 0x82

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-super {p0, v0, v1}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final H(Lne1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq9;->u:Lvh;

    .line 2
    .line 3
    invoke-virtual {v0}, Lvh;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, p1}, Lvh;->addLast(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lq9;->v:Lc9;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string p0, "schedule is called when outOfFrameExecutor is not available (view is detached)"

    .line 25
    .line 26
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final I(Lxy1;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    :goto_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lxy1;->r()Lvy1;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lvy1;->n:Lvy1;

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    iget-boolean v0, p0, Lq9;->e0:Z

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Lxy1;->u()Lxy1;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, v0, Lxy1;->S:Lbo;

    .line 36
    .line 37
    iget-object v0, v0, Lbo;->d:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lgr1;

    .line 40
    .line 41
    iget-wide v0, v0, Ldv2;->q:J

    .line 42
    .line 43
    invoke-static {v0, v1}, Lmf0;->f(J)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-static {v0, v1}, Lmf0;->e(J)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    invoke-virtual {p1}, Lxy1;->u()Lxy1;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lq9;->getRoot()Lxy1;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-ne p1, v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_3

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 89
    .line 90
    .line 91
    :cond_5
    return-void
.end method

.method public final J(J)J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lq9;->D()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x20

    .line 5
    .line 6
    shr-long v1, p1, v0

    .line 7
    .line 8
    long-to-int v1, v1

    .line 9
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-wide v2, p0, Lq9;->o0:J

    .line 14
    .line 15
    shr-long/2addr v2, v0

    .line 16
    long-to-int v2, v2

    .line 17
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    sub-float/2addr v1, v2

    .line 22
    const-wide v2, 0xffffffffL

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    and-long/2addr p1, v2

    .line 28
    long-to-int p1, p1

    .line 29
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget-wide v4, p0, Lq9;->o0:J

    .line 34
    .line 35
    and-long/2addr v4, v2

    .line 36
    long-to-int p2, v4

    .line 37
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    sub-float/2addr p1, p2

    .line 42
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    int-to-long v4, p2

    .line 47
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    int-to-long p1, p1

    .line 52
    shl-long v0, v4, v0

    .line 53
    .line 54
    and-long/2addr p1, v2

    .line 55
    or-long/2addr p1, v0

    .line 56
    iget-object p0, p0, Lq9;->l0:[F

    .line 57
    .line 58
    invoke-static {p0, p1, p2}, Lxa2;->b([FJ)J

    .line 59
    .line 60
    .line 61
    move-result-wide p0

    .line 62
    return-wide p0
.end method

.method public final K(Landroid/view/MotionEvent;)I
    .locals 10

    .line 1
    iget-boolean v0, p0, Lq9;->O0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lq9;->O0:Z

    .line 7
    .line 8
    iget-object v0, p0, Lq9;->n:Lpb0;

    .line 9
    .line 10
    iget-object v0, v0, Lpb0;->t:Ldh1;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-object v0, Lgd4;->n:Lws2;

    .line 20
    .line 21
    new-instance v3, Lgw2;

    .line 22
    .line 23
    invoke-direct {v3, v2}, Lgw2;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v3}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lq9;->Q:Lbe2;

    .line 30
    .line 31
    invoke-virtual {v0, p1, p0}, Lbe2;->c(Landroid/view/MotionEvent;Lq9;)Lxh1;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iget-object v4, p0, Lq9;->R:Lic;

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    if-eqz v2, :cond_9

    .line 43
    .line 44
    iget-object v1, v2, Lxh1;->n:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    add-int/lit8 v6, v6, -0x1

    .line 53
    .line 54
    const/4 v7, 0x5

    .line 55
    if-ltz v6, :cond_3

    .line 56
    .line 57
    :goto_0
    add-int/lit8 v8, v6, -0x1

    .line 58
    .line 59
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    move-object v9, v6

    .line 64
    check-cast v9, Lbw2;

    .line 65
    .line 66
    iget-boolean v9, v9, Lbw2;->e:Z

    .line 67
    .line 68
    if-eqz v9, :cond_1

    .line 69
    .line 70
    if-eqz v3, :cond_4

    .line 71
    .line 72
    if-ne v3, v7, :cond_1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_1
    if-gez v8, :cond_2

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move v6, v8

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    :goto_1
    move-object v6, v5

    .line 81
    :cond_4
    :goto_2
    check-cast v6, Lbw2;

    .line 82
    .line 83
    if-eqz v6, :cond_5

    .line 84
    .line 85
    iget-wide v8, v6, Lbw2;->d:J

    .line 86
    .line 87
    iput-wide v8, p0, Lq9;->o:J

    .line 88
    .line 89
    :cond_5
    invoke-virtual {p0, p1}, Lq9;->n(Landroid/view/MotionEvent;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-virtual {v4, v2, p0, v1}, Lic;->d(Lxh1;Lq9;Z)I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    iput-object v5, v2, Lxh1;->o:Ljava/lang/Object;

    .line 98
    .line 99
    if-eqz v3, :cond_6

    .line 100
    .line 101
    if-ne v3, v7, :cond_7

    .line 102
    .line 103
    :cond_6
    and-int/lit8 v1, p0, 0x1

    .line 104
    .line 105
    if-eqz v1, :cond_8

    .line 106
    .line 107
    :cond_7
    return p0

    .line 108
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    iget-object v1, v0, Lbe2;->c:Landroid/util/SparseBooleanArray;

    .line 117
    .line 118
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 119
    .line 120
    .line 121
    iget-object v0, v0, Lbe2;->b:Landroid/util/SparseLongArray;

    .line 122
    .line 123
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 124
    .line 125
    .line 126
    return p0

    .line 127
    :cond_9
    iget-boolean p0, v4, Lic;->a:Z

    .line 128
    .line 129
    if-nez p0, :cond_b

    .line 130
    .line 131
    iget-object p0, v4, Lic;->d:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast p0, Ldh1;

    .line 134
    .line 135
    iget-object p0, p0, Ldh1;->n:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast p0, Le82;

    .line 138
    .line 139
    iget p1, p0, Le82;->q:I

    .line 140
    .line 141
    iget-object v0, p0, Le82;->p:[Ljava/lang/Object;

    .line 142
    .line 143
    move v2, v1

    .line 144
    :goto_3
    if-ge v2, p1, :cond_a

    .line 145
    .line 146
    aput-object v5, v0, v2

    .line 147
    .line 148
    add-int/lit8 v2, v2, 0x1

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_a
    iput v1, p0, Le82;->q:I

    .line 152
    .line 153
    iput-boolean v1, p0, Le82;->n:Z

    .line 154
    .line 155
    iget-object p0, v4, Lic;->c:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast p0, Lwj1;

    .line 158
    .line 159
    invoke-virtual {p0}, Lwj1;->c()V

    .line 160
    .line 161
    .line 162
    :cond_b
    return v1
.end method

.method public final L(Landroid/view/MotionEvent;IJZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, -0x1

    .line 12
    const/4 v6, 0x1

    .line 13
    if-eq v2, v6, :cond_1

    .line 14
    .line 15
    const/4 v7, 0x6

    .line 16
    if-eq v2, v7, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/16 v2, 0x9

    .line 25
    .line 26
    if-eq v5, v2, :cond_2

    .line 27
    .line 28
    const/16 v2, 0xa

    .line 29
    .line 30
    if-eq v5, v2, :cond_2

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-ltz v3, :cond_3

    .line 38
    .line 39
    move v7, v6

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    const/4 v7, 0x0

    .line 42
    :goto_1
    sub-int/2addr v2, v7

    .line 43
    if-nez v2, :cond_4

    .line 44
    .line 45
    return-void

    .line 46
    :cond_4
    new-array v7, v2, [Landroid/view/MotionEvent$PointerProperties;

    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    :goto_2
    if-ge v8, v2, :cond_5

    .line 50
    .line 51
    new-instance v9, Landroid/view/MotionEvent$PointerProperties;

    .line 52
    .line 53
    invoke-direct {v9}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 54
    .line 55
    .line 56
    aput-object v9, v7, v8

    .line 57
    .line 58
    add-int/lit8 v8, v8, 0x1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    new-array v8, v2, [Landroid/view/MotionEvent$PointerCoords;

    .line 62
    .line 63
    const/4 v9, 0x0

    .line 64
    :goto_3
    if-ge v9, v2, :cond_6

    .line 65
    .line 66
    new-instance v10, Landroid/view/MotionEvent$PointerCoords;

    .line 67
    .line 68
    invoke-direct {v10}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 69
    .line 70
    .line 71
    aput-object v10, v8, v9

    .line 72
    .line 73
    add-int/lit8 v9, v9, 0x1

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_6
    const/4 v9, 0x0

    .line 77
    :goto_4
    if-ge v9, v2, :cond_8

    .line 78
    .line 79
    if-ltz v3, :cond_7

    .line 80
    .line 81
    if-gt v3, v9, :cond_7

    .line 82
    .line 83
    move v10, v6

    .line 84
    goto :goto_5

    .line 85
    :cond_7
    const/4 v10, 0x0

    .line 86
    :goto_5
    add-int/2addr v10, v9

    .line 87
    aget-object v11, v7, v9

    .line 88
    .line 89
    invoke-virtual {v1, v10, v11}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 90
    .line 91
    .line 92
    aget-object v11, v8, v9

    .line 93
    .line 94
    invoke-virtual {v1, v10, v11}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 95
    .line 96
    .line 97
    iget v10, v11, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 98
    .line 99
    iget v12, v11, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 100
    .line 101
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    int-to-long v13, v10

    .line 106
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    int-to-long v4, v10

    .line 111
    const/16 v10, 0x20

    .line 112
    .line 113
    shl-long/2addr v13, v10

    .line 114
    const-wide v15, 0xffffffffL

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    and-long/2addr v4, v15

    .line 120
    or-long/2addr v4, v13

    .line 121
    invoke-virtual {v0, v4, v5}, Lq9;->p(J)J

    .line 122
    .line 123
    .line 124
    move-result-wide v4

    .line 125
    shr-long v13, v4, v10

    .line 126
    .line 127
    long-to-int v10, v13

    .line 128
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    iput v10, v11, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 133
    .line 134
    and-long/2addr v4, v15

    .line 135
    long-to-int v4, v4

    .line 136
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    iput v4, v11, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 141
    .line 142
    add-int/lit8 v9, v9, 0x1

    .line 143
    .line 144
    move/from16 v5, p2

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_8
    if-eqz p5, :cond_9

    .line 148
    .line 149
    const/4 v10, 0x0

    .line 150
    goto :goto_6

    .line 151
    :cond_9
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    move v10, v4

    .line 156
    :goto_6
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 157
    .line 158
    .line 159
    move-result-wide v3

    .line 160
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 161
    .line 162
    .line 163
    move-result-wide v11

    .line 164
    cmp-long v3, v3, v11

    .line 165
    .line 166
    if-nez v3, :cond_a

    .line 167
    .line 168
    move-wide/from16 v3, p3

    .line 169
    .line 170
    goto :goto_7

    .line 171
    :cond_a
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 172
    .line 173
    .line 174
    move-result-wide v3

    .line 175
    :goto_7
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getXPrecision()F

    .line 180
    .line 181
    .line 182
    move-result v11

    .line 183
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getYPrecision()F

    .line 184
    .line 185
    .line 186
    move-result v12

    .line 187
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 188
    .line 189
    .line 190
    move-result v13

    .line 191
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 192
    .line 193
    .line 194
    move-result v14

    .line 195
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    .line 196
    .line 197
    .line 198
    move-result v15

    .line 199
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    .line 200
    .line 201
    .line 202
    move-result v16

    .line 203
    move/from16 v5, p2

    .line 204
    .line 205
    move v6, v2

    .line 206
    move-wide v1, v3

    .line 207
    move-wide/from16 v3, p3

    .line 208
    .line 209
    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    iget-object v2, v0, Lq9;->Q:Lbe2;

    .line 214
    .line 215
    invoke-virtual {v2, v1, v0}, Lbe2;->c(Landroid/view/MotionEvent;Lq9;)Lxh1;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    iget-object v3, v0, Lq9;->R:Lic;

    .line 223
    .line 224
    const/4 v4, 0x1

    .line 225
    invoke-virtual {v3, v2, v0, v4}, Lic;->d(Lxh1;Lq9;Z)I

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 229
    .line 230
    .line 231
    return-void
.end method

.method public final M(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lq9;->getConfiguration()Landroid/content/res/Configuration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    new-instance v1, Landroid/content/res/Configuration;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lq9;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 17
    .line 18
    .line 19
    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 20
    .line 21
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 22
    .line 23
    cmpg-float v1, v1, v2

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 28
    .line 29
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 30
    .line 31
    if-eq v0, p1, :cond_1

    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Lis0;->b(Landroid/content/Context;)Les0;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Lq9;->setDensity(Las0;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public final N()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lq9;->h0:[I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6
    .line 7
    .line 8
    iget-wide v2, v0, Lq9;->g0:J

    .line 9
    .line 10
    const/16 v4, 0x20

    .line 11
    .line 12
    shr-long v5, v2, v4

    .line 13
    .line 14
    long-to-int v5, v5

    .line 15
    const-wide v6, 0xffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    and-long/2addr v2, v6

    .line 21
    long-to-int v2, v2

    .line 22
    const/4 v3, 0x0

    .line 23
    aget v8, v1, v3

    .line 24
    .line 25
    const/4 v9, 0x1

    .line 26
    if-ne v5, v8, :cond_0

    .line 27
    .line 28
    aget v10, v1, v9

    .line 29
    .line 30
    if-ne v2, v10, :cond_0

    .line 31
    .line 32
    iget-wide v10, v0, Lq9;->m0:J

    .line 33
    .line 34
    const-wide/16 v12, 0x0

    .line 35
    .line 36
    cmp-long v10, v10, v12

    .line 37
    .line 38
    if-gez v10, :cond_2

    .line 39
    .line 40
    :cond_0
    aget v1, v1, v9

    .line 41
    .line 42
    int-to-long v10, v8

    .line 43
    shl-long/2addr v10, v4

    .line 44
    int-to-long v12, v1

    .line 45
    and-long/2addr v6, v12

    .line 46
    or-long/2addr v6, v10

    .line 47
    iput-wide v6, v0, Lq9;->g0:J

    .line 48
    .line 49
    const v1, 0x7fffffff

    .line 50
    .line 51
    .line 52
    if-eq v5, v1, :cond_2

    .line 53
    .line 54
    if-eq v2, v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Lq9;->getRoot()Lxy1;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lxy1;->z()Lug2;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v2, v1, Lug2;->n:[Ljava/lang/Object;

    .line 65
    .line 66
    iget v1, v1, Lug2;->p:I

    .line 67
    .line 68
    move v4, v3

    .line 69
    :goto_0
    if-ge v4, v1, :cond_1

    .line 70
    .line 71
    aget-object v5, v2, v4

    .line 72
    .line 73
    check-cast v5, Lxy1;

    .line 74
    .line 75
    iget-object v5, v5, Lxy1;->T:Lbz1;

    .line 76
    .line 77
    iget-object v5, v5, Lbz1;->p:Lcb2;

    .line 78
    .line 79
    invoke-virtual {v5}, Lcb2;->u0()V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v4, v4, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    move v1, v9

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    move v1, v3

    .line 88
    :goto_1
    invoke-virtual {v0}, Lq9;->D()V

    .line 89
    .line 90
    .line 91
    iget-object v2, v0, Lq9;->S0:Landroid/view/View;

    .line 92
    .line 93
    if-nez v2, :cond_3

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    iput-object v2, v0, Lq9;->S0:Landroid/view/View;

    .line 100
    .line 101
    :cond_3
    invoke-virtual {v0}, Lq9;->getRectManager()Ln33;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    iget-wide v11, v0, Lq9;->g0:J

    .line 106
    .line 107
    iget-wide v5, v0, Lq9;->o0:J

    .line 108
    .line 109
    invoke-static {v5, v6}, Lca;->G(J)J

    .line 110
    .line 111
    .line 112
    move-result-wide v13

    .line 113
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 114
    .line 115
    .line 116
    move-result v16

    .line 117
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 118
    .line 119
    .line 120
    move-result v17

    .line 121
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    iget-object v2, v0, Lq9;->k0:[F

    .line 125
    .line 126
    array-length v5, v2

    .line 127
    const/16 v6, 0x10

    .line 128
    .line 129
    const/4 v7, 0x2

    .line 130
    if-ge v5, v6, :cond_4

    .line 131
    .line 132
    move v5, v3

    .line 133
    goto/16 :goto_f

    .line 134
    .line 135
    :cond_4
    aget v5, v2, v3

    .line 136
    .line 137
    const/high16 v6, 0x3f800000    # 1.0f

    .line 138
    .line 139
    cmpg-float v5, v5, v6

    .line 140
    .line 141
    if-nez v5, :cond_5

    .line 142
    .line 143
    move v5, v9

    .line 144
    goto :goto_2

    .line 145
    :cond_5
    move v5, v3

    .line 146
    :goto_2
    aget v8, v2, v9

    .line 147
    .line 148
    const/4 v10, 0x0

    .line 149
    cmpg-float v8, v8, v10

    .line 150
    .line 151
    if-nez v8, :cond_6

    .line 152
    .line 153
    move v8, v9

    .line 154
    goto :goto_3

    .line 155
    :cond_6
    move v8, v3

    .line 156
    :goto_3
    and-int/2addr v5, v8

    .line 157
    aget v8, v2, v7

    .line 158
    .line 159
    cmpg-float v8, v8, v10

    .line 160
    .line 161
    if-nez v8, :cond_7

    .line 162
    .line 163
    move v8, v9

    .line 164
    goto :goto_4

    .line 165
    :cond_7
    move v8, v3

    .line 166
    :goto_4
    and-int/2addr v5, v8

    .line 167
    const/4 v8, 0x4

    .line 168
    aget v8, v2, v8

    .line 169
    .line 170
    cmpg-float v8, v8, v10

    .line 171
    .line 172
    if-nez v8, :cond_8

    .line 173
    .line 174
    move v8, v9

    .line 175
    goto :goto_5

    .line 176
    :cond_8
    move v8, v3

    .line 177
    :goto_5
    and-int/2addr v5, v8

    .line 178
    const/4 v8, 0x5

    .line 179
    aget v8, v2, v8

    .line 180
    .line 181
    cmpg-float v8, v8, v6

    .line 182
    .line 183
    if-nez v8, :cond_9

    .line 184
    .line 185
    move v8, v9

    .line 186
    goto :goto_6

    .line 187
    :cond_9
    move v8, v3

    .line 188
    :goto_6
    and-int/2addr v5, v8

    .line 189
    const/4 v8, 0x6

    .line 190
    aget v8, v2, v8

    .line 191
    .line 192
    cmpg-float v8, v8, v10

    .line 193
    .line 194
    if-nez v8, :cond_a

    .line 195
    .line 196
    move v8, v9

    .line 197
    goto :goto_7

    .line 198
    :cond_a
    move v8, v3

    .line 199
    :goto_7
    and-int/2addr v5, v8

    .line 200
    const/16 v8, 0x8

    .line 201
    .line 202
    aget v8, v2, v8

    .line 203
    .line 204
    cmpg-float v8, v8, v10

    .line 205
    .line 206
    if-nez v8, :cond_b

    .line 207
    .line 208
    move v8, v9

    .line 209
    goto :goto_8

    .line 210
    :cond_b
    move v8, v3

    .line 211
    :goto_8
    and-int/2addr v5, v8

    .line 212
    const/16 v8, 0x9

    .line 213
    .line 214
    aget v8, v2, v8

    .line 215
    .line 216
    cmpg-float v8, v8, v10

    .line 217
    .line 218
    if-nez v8, :cond_c

    .line 219
    .line 220
    move v8, v9

    .line 221
    goto :goto_9

    .line 222
    :cond_c
    move v8, v3

    .line 223
    :goto_9
    and-int/2addr v5, v8

    .line 224
    const/16 v8, 0xa

    .line 225
    .line 226
    aget v8, v2, v8

    .line 227
    .line 228
    cmpg-float v8, v8, v6

    .line 229
    .line 230
    if-nez v8, :cond_d

    .line 231
    .line 232
    move v8, v9

    .line 233
    goto :goto_a

    .line 234
    :cond_d
    move v8, v3

    .line 235
    :goto_a
    and-int/2addr v5, v8

    .line 236
    const/16 v8, 0xc

    .line 237
    .line 238
    aget v8, v2, v8

    .line 239
    .line 240
    cmpg-float v8, v8, v10

    .line 241
    .line 242
    if-nez v8, :cond_e

    .line 243
    .line 244
    move v8, v9

    .line 245
    goto :goto_b

    .line 246
    :cond_e
    move v8, v3

    .line 247
    :goto_b
    const/16 v15, 0xd

    .line 248
    .line 249
    aget v15, v2, v15

    .line 250
    .line 251
    cmpg-float v15, v15, v10

    .line 252
    .line 253
    if-nez v15, :cond_f

    .line 254
    .line 255
    move v15, v9

    .line 256
    goto :goto_c

    .line 257
    :cond_f
    move v15, v3

    .line 258
    :goto_c
    and-int/2addr v8, v15

    .line 259
    const/16 v15, 0xe

    .line 260
    .line 261
    aget v15, v2, v15

    .line 262
    .line 263
    cmpg-float v10, v15, v10

    .line 264
    .line 265
    if-nez v10, :cond_10

    .line 266
    .line 267
    move v10, v9

    .line 268
    goto :goto_d

    .line 269
    :cond_10
    move v10, v3

    .line 270
    :goto_d
    and-int/2addr v8, v10

    .line 271
    const/16 v10, 0xf

    .line 272
    .line 273
    aget v10, v2, v10

    .line 274
    .line 275
    cmpg-float v6, v10, v6

    .line 276
    .line 277
    if-nez v6, :cond_11

    .line 278
    .line 279
    move v6, v9

    .line 280
    goto :goto_e

    .line 281
    :cond_11
    move v6, v3

    .line 282
    :goto_e
    and-int/2addr v6, v8

    .line 283
    shl-int/2addr v5, v9

    .line 284
    or-int/2addr v5, v6

    .line 285
    :goto_f
    iget-object v10, v4, Ln33;->d:Lwy3;

    .line 286
    .line 287
    and-int/2addr v5, v7

    .line 288
    if-nez v5, :cond_12

    .line 289
    .line 290
    :goto_10
    move-object v15, v2

    .line 291
    goto :goto_11

    .line 292
    :cond_12
    const/4 v2, 0x0

    .line 293
    goto :goto_10

    .line 294
    :goto_11
    invoke-virtual/range {v10 .. v17}, Lwy3;->c(JJ[FII)Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-nez v2, :cond_13

    .line 299
    .line 300
    iget-boolean v2, v4, Ln33;->g:Z

    .line 301
    .line 302
    if-eqz v2, :cond_14

    .line 303
    .line 304
    :cond_13
    move v3, v9

    .line 305
    :cond_14
    iput-boolean v3, v4, Ln33;->g:Z

    .line 306
    .line 307
    iget-object v2, v0, Lq9;->f0:Lab2;

    .line 308
    .line 309
    invoke-virtual {v2, v1}, Lab2;->b(Z)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0}, Lq9;->getRectManager()Ln33;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v0}, Ln33;->a()V

    .line 317
    .line 318
    .line 319
    return-void
.end method

.method public final O(F)V
    .locals 2

    .line 1
    invoke-static {}, Lq9;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    cmpl-float v1, p1, v0

    .line 9
    .line 10
    if-lez v1, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lq9;->D0:F

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget v0, p0, Lq9;->D0:F

    .line 21
    .line 22
    cmpl-float v0, p1, v0

    .line 23
    .line 24
    if-lez v0, :cond_3

    .line 25
    .line 26
    :cond_0
    iput p1, p0, Lq9;->D0:F

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    cmpg-float v0, p1, v0

    .line 30
    .line 31
    if-gez v0, :cond_3

    .line 32
    .line 33
    iget v0, p0, Lq9;->E0:F

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    iget v0, p0, Lq9;->E0:F

    .line 42
    .line 43
    cmpg-float v0, p1, v0

    .line 44
    .line 45
    if-gez v0, :cond_3

    .line 46
    .line 47
    :cond_2
    iput p1, p0, Lq9;->E0:F

    .line 48
    .line 49
    :cond_3
    return-void
.end method

.method public final a(Lka1;Lka1;)V
    .locals 12

    .line 1
    if-eqz p1, :cond_1e

    .line 2
    .line 3
    move-object p0, p1

    .line 4
    check-cast p0, Lmd2;

    .line 5
    .line 6
    iget-object v0, p0, Lmd2;->n:Lmd2;

    .line 7
    .line 8
    iget-boolean v0, v0, Lmd2;->A:Z

    .line 9
    .line 10
    const-string v1, "visitAncestors called on an unattached node"

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-static {v1}, Lar1;->b(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lmd2;->n:Lmd2;

    .line 18
    .line 19
    invoke-static {p1}, Lw80;->R(Ljr0;)Lxy1;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x0

    .line 24
    move-object v2, v0

    .line 25
    :goto_0
    const/16 v3, 0x10

    .line 26
    .line 27
    const/high16 v4, 0x200000

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x1

    .line 31
    if-eqz p1, :cond_c

    .line 32
    .line 33
    iget-object v7, p1, Lxy1;->S:Lbo;

    .line 34
    .line 35
    iget-object v7, v7, Lbo;->g:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v7, Lmd2;

    .line 38
    .line 39
    iget v7, v7, Lmd2;->q:I

    .line 40
    .line 41
    and-int/2addr v7, v4

    .line 42
    if-eqz v7, :cond_a

    .line 43
    .line 44
    :goto_1
    if-eqz p0, :cond_a

    .line 45
    .line 46
    iget v7, p0, Lmd2;->p:I

    .line 47
    .line 48
    and-int/2addr v7, v4

    .line 49
    if-eqz v7, :cond_9

    .line 50
    .line 51
    move-object v7, p0

    .line 52
    move-object v8, v0

    .line 53
    :goto_2
    if-eqz v7, :cond_9

    .line 54
    .line 55
    instance-of v9, v7, Ljq1;

    .line 56
    .line 57
    if-eqz v9, :cond_2

    .line 58
    .line 59
    if-nez v2, :cond_1

    .line 60
    .line 61
    new-instance v2, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move v9, v5

    .line 70
    goto :goto_3

    .line 71
    :cond_2
    move v9, v6

    .line 72
    :goto_3
    if-eqz v9, :cond_8

    .line 73
    .line 74
    iget v9, v7, Lmd2;->p:I

    .line 75
    .line 76
    and-int/2addr v9, v4

    .line 77
    if-eqz v9, :cond_8

    .line 78
    .line 79
    instance-of v9, v7, Lkr0;

    .line 80
    .line 81
    if-eqz v9, :cond_8

    .line 82
    .line 83
    move-object v9, v7

    .line 84
    check-cast v9, Lkr0;

    .line 85
    .line 86
    iget-object v9, v9, Lkr0;->C:Lmd2;

    .line 87
    .line 88
    move v10, v5

    .line 89
    :goto_4
    if-eqz v9, :cond_7

    .line 90
    .line 91
    iget v11, v9, Lmd2;->p:I

    .line 92
    .line 93
    and-int/2addr v11, v4

    .line 94
    if-eqz v11, :cond_6

    .line 95
    .line 96
    add-int/lit8 v10, v10, 0x1

    .line 97
    .line 98
    if-ne v10, v6, :cond_3

    .line 99
    .line 100
    move-object v7, v9

    .line 101
    goto :goto_5

    .line 102
    :cond_3
    if-nez v8, :cond_4

    .line 103
    .line 104
    new-instance v8, Lug2;

    .line 105
    .line 106
    new-array v11, v3, [Lmd2;

    .line 107
    .line 108
    invoke-direct {v8, v11}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    if-eqz v7, :cond_5

    .line 112
    .line 113
    invoke-virtual {v8, v7}, Lug2;->c(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    move-object v7, v0

    .line 117
    :cond_5
    invoke-virtual {v8, v9}, Lug2;->c(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :cond_6
    :goto_5
    iget-object v9, v9, Lmd2;->s:Lmd2;

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_7
    if-ne v10, v6, :cond_8

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_8
    invoke-static {v8}, Lw80;->g(Lug2;)Lmd2;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    goto :goto_2

    .line 131
    :cond_9
    iget-object p0, p0, Lmd2;->r:Lmd2;

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_a
    invoke-virtual {p1}, Lxy1;->u()Lxy1;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    if-eqz p1, :cond_b

    .line 139
    .line 140
    iget-object p0, p1, Lxy1;->S:Lbo;

    .line 141
    .line 142
    if-eqz p0, :cond_b

    .line 143
    .line 144
    iget-object p0, p0, Lbo;->f:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast p0, Lgw3;

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_b
    move-object p0, v0

    .line 150
    goto :goto_0

    .line 151
    :cond_c
    if-nez v2, :cond_d

    .line 152
    .line 153
    goto/16 :goto_e

    .line 154
    .line 155
    :cond_d
    if-eqz p2, :cond_1b

    .line 156
    .line 157
    iget-object p0, p2, Lmd2;->n:Lmd2;

    .line 158
    .line 159
    iget-boolean p0, p0, Lmd2;->A:Z

    .line 160
    .line 161
    if-nez p0, :cond_e

    .line 162
    .line 163
    invoke-static {v1}, Lar1;->b(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :cond_e
    iget-object p0, p2, Lmd2;->n:Lmd2;

    .line 167
    .line 168
    invoke-static {p2}, Lw80;->R(Ljr0;)Lxy1;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    move-object p2, v0

    .line 173
    :goto_6
    if-eqz p1, :cond_1a

    .line 174
    .line 175
    iget-object v1, p1, Lxy1;->S:Lbo;

    .line 176
    .line 177
    iget-object v1, v1, Lbo;->g:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v1, Lmd2;

    .line 180
    .line 181
    iget v1, v1, Lmd2;->q:I

    .line 182
    .line 183
    and-int/2addr v1, v4

    .line 184
    if-eqz v1, :cond_18

    .line 185
    .line 186
    :goto_7
    if-eqz p0, :cond_18

    .line 187
    .line 188
    iget v1, p0, Lmd2;->p:I

    .line 189
    .line 190
    and-int/2addr v1, v4

    .line 191
    if-eqz v1, :cond_17

    .line 192
    .line 193
    move-object v1, p0

    .line 194
    move-object v7, v0

    .line 195
    :goto_8
    if-eqz v1, :cond_17

    .line 196
    .line 197
    instance-of v8, v1, Ljq1;

    .line 198
    .line 199
    if-eqz v8, :cond_10

    .line 200
    .line 201
    if-nez p2, :cond_f

    .line 202
    .line 203
    sget-object p2, Lud3;->a:Llg2;

    .line 204
    .line 205
    new-instance p2, Llg2;

    .line 206
    .line 207
    invoke-direct {p2}, Llg2;-><init>()V

    .line 208
    .line 209
    .line 210
    :cond_f
    invoke-virtual {p2, v1}, Llg2;->a(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move v8, v5

    .line 214
    goto :goto_9

    .line 215
    :cond_10
    move v8, v6

    .line 216
    :goto_9
    if-eqz v8, :cond_16

    .line 217
    .line 218
    iget v8, v1, Lmd2;->p:I

    .line 219
    .line 220
    and-int/2addr v8, v4

    .line 221
    if-eqz v8, :cond_16

    .line 222
    .line 223
    instance-of v8, v1, Lkr0;

    .line 224
    .line 225
    if-eqz v8, :cond_16

    .line 226
    .line 227
    move-object v8, v1

    .line 228
    check-cast v8, Lkr0;

    .line 229
    .line 230
    iget-object v8, v8, Lkr0;->C:Lmd2;

    .line 231
    .line 232
    move v9, v5

    .line 233
    :goto_a
    if-eqz v8, :cond_15

    .line 234
    .line 235
    iget v10, v8, Lmd2;->p:I

    .line 236
    .line 237
    and-int/2addr v10, v4

    .line 238
    if-eqz v10, :cond_14

    .line 239
    .line 240
    add-int/lit8 v9, v9, 0x1

    .line 241
    .line 242
    if-ne v9, v6, :cond_11

    .line 243
    .line 244
    move-object v1, v8

    .line 245
    goto :goto_b

    .line 246
    :cond_11
    if-nez v7, :cond_12

    .line 247
    .line 248
    new-instance v7, Lug2;

    .line 249
    .line 250
    new-array v10, v3, [Lmd2;

    .line 251
    .line 252
    invoke-direct {v7, v10}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    :cond_12
    if-eqz v1, :cond_13

    .line 256
    .line 257
    invoke-virtual {v7, v1}, Lug2;->c(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    move-object v1, v0

    .line 261
    :cond_13
    invoke-virtual {v7, v8}, Lug2;->c(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    :cond_14
    :goto_b
    iget-object v8, v8, Lmd2;->s:Lmd2;

    .line 265
    .line 266
    goto :goto_a

    .line 267
    :cond_15
    if-ne v9, v6, :cond_16

    .line 268
    .line 269
    goto :goto_8

    .line 270
    :cond_16
    invoke-static {v7}, Lw80;->g(Lug2;)Lmd2;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    goto :goto_8

    .line 275
    :cond_17
    iget-object p0, p0, Lmd2;->r:Lmd2;

    .line 276
    .line 277
    goto :goto_7

    .line 278
    :cond_18
    invoke-virtual {p1}, Lxy1;->u()Lxy1;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    if-eqz p1, :cond_19

    .line 283
    .line 284
    iget-object p0, p1, Lxy1;->S:Lbo;

    .line 285
    .line 286
    if-eqz p0, :cond_19

    .line 287
    .line 288
    iget-object p0, p0, Lbo;->f:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast p0, Lgw3;

    .line 291
    .line 292
    goto :goto_6

    .line 293
    :cond_19
    move-object p0, v0

    .line 294
    goto :goto_6

    .line 295
    :cond_1a
    move-object v0, p2

    .line 296
    :cond_1b
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 297
    .line 298
    .line 299
    move-result p0

    .line 300
    move p1, v5

    .line 301
    :goto_c
    if-ge p1, p0, :cond_1e

    .line 302
    .line 303
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    check-cast p2, Ljq1;

    .line 308
    .line 309
    if-eqz v0, :cond_1c

    .line 310
    .line 311
    invoke-virtual {v0, p2}, Llg2;->c(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    goto :goto_d

    .line 316
    :cond_1c
    move v1, v5

    .line 317
    :goto_d
    if-nez v1, :cond_1d

    .line 318
    .line 319
    invoke-interface {p2}, Ljq1;->x()V

    .line 320
    .line 321
    .line 322
    :cond_1d
    add-int/lit8 p1, p1, 0x1

    .line 323
    .line 324
    goto :goto_c

    .line 325
    :cond_1e
    :goto_e
    return-void
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ldh;

    .line 6
    .line 7
    iget-object v0, v0, Ldh;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lka1;

    .line 10
    .line 11
    iget-boolean v1, v0, Lmd2;->A:Z

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_c

    .line 16
    .line 17
    :cond_0
    iget-object v1, v0, Lmd2;->n:Lmd2;

    .line 18
    .line 19
    iget-boolean v1, v1, Lmd2;->A:Z

    .line 20
    .line 21
    const-string v2, "visitSubtreeIf called on an unattached node"

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    invoke-static {v2}, Lar1;->b(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    new-instance v1, Lug2;

    .line 29
    .line 30
    const/16 v3, 0x10

    .line 31
    .line 32
    new-array v4, v3, [Lmd2;

    .line 33
    .line 34
    invoke-direct {v1, v4}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, v0, Lmd2;->n:Lmd2;

    .line 38
    .line 39
    iget-object v4, v0, Lmd2;->s:Lmd2;

    .line 40
    .line 41
    if-nez v4, :cond_2

    .line 42
    .line 43
    invoke-static {v1, v0}, Lw80;->c(Lug2;Lmd2;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v1, v4}, Lug2;->c(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget v0, v1, Lug2;->p:I

    .line 51
    .line 52
    if-eqz v0, :cond_1a

    .line 53
    .line 54
    add-int/lit8 v0, v0, -0x1

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Lug2;->l(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lmd2;

    .line 61
    .line 62
    iget v4, v0, Lmd2;->q:I

    .line 63
    .line 64
    and-int/lit16 v4, v4, 0x400

    .line 65
    .line 66
    if-eqz v4, :cond_19

    .line 67
    .line 68
    move-object v4, v0

    .line 69
    :goto_1
    if-eqz v4, :cond_19

    .line 70
    .line 71
    iget-boolean v5, v4, Lmd2;->A:Z

    .line 72
    .line 73
    if-eqz v5, :cond_19

    .line 74
    .line 75
    iget v5, v4, Lmd2;->p:I

    .line 76
    .line 77
    and-int/lit16 v5, v5, 0x400

    .line 78
    .line 79
    if-eqz v5, :cond_18

    .line 80
    .line 81
    const/4 v5, 0x0

    .line 82
    move-object v6, v4

    .line 83
    move-object v7, v5

    .line 84
    :goto_2
    if-eqz v6, :cond_18

    .line 85
    .line 86
    instance-of v8, v6, Lka1;

    .line 87
    .line 88
    const/4 v9, 0x1

    .line 89
    const/4 v10, 0x0

    .line 90
    if-eqz v8, :cond_11

    .line 91
    .line 92
    check-cast v6, Lka1;

    .line 93
    .line 94
    iget-boolean v8, v6, Lmd2;->A:Z

    .line 95
    .line 96
    if-eqz v8, :cond_17

    .line 97
    .line 98
    invoke-virtual {v6}, Lka1;->I0()Lca1;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    iget-boolean v6, v6, Lca1;->a:Z

    .line 103
    .line 104
    if-eqz v6, :cond_17

    .line 105
    .line 106
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    check-cast p2, Ldh;

    .line 114
    .line 115
    iget-object p2, p2, Ldh;->c:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast p2, Lka1;

    .line 118
    .line 119
    iget-boolean p3, p2, Lmd2;->A:Z

    .line 120
    .line 121
    if-nez p3, :cond_3

    .line 122
    .line 123
    goto/16 :goto_9

    .line 124
    .line 125
    :cond_3
    iget-object p3, p2, Lmd2;->n:Lmd2;

    .line 126
    .line 127
    iget-boolean p3, p3, Lmd2;->A:Z

    .line 128
    .line 129
    if-nez p3, :cond_4

    .line 130
    .line 131
    invoke-static {v2}, Lar1;->b(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_4
    new-instance p3, Lug2;

    .line 135
    .line 136
    new-array v0, v3, [Lmd2;

    .line 137
    .line 138
    invoke-direct {p3, v0}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    iget-object p2, p2, Lmd2;->n:Lmd2;

    .line 142
    .line 143
    iget-object v0, p2, Lmd2;->s:Lmd2;

    .line 144
    .line 145
    if-nez v0, :cond_5

    .line 146
    .line 147
    invoke-static {p3, p2}, Lw80;->c(Lug2;Lmd2;)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_5
    invoke-virtual {p3, v0}, Lug2;->c(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :goto_3
    iget p2, p3, Lug2;->p:I

    .line 155
    .line 156
    if-eqz p2, :cond_10

    .line 157
    .line 158
    add-int/lit8 p2, p2, -0x1

    .line 159
    .line 160
    invoke-virtual {p3, p2}, Lug2;->l(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    check-cast p2, Lmd2;

    .line 165
    .line 166
    iget v0, p2, Lmd2;->q:I

    .line 167
    .line 168
    and-int/lit16 v0, v0, 0x400

    .line 169
    .line 170
    if-eqz v0, :cond_f

    .line 171
    .line 172
    move-object v0, p2

    .line 173
    :goto_4
    if-eqz v0, :cond_f

    .line 174
    .line 175
    iget-boolean v1, v0, Lmd2;->A:Z

    .line 176
    .line 177
    if-eqz v1, :cond_f

    .line 178
    .line 179
    iget v1, v0, Lmd2;->p:I

    .line 180
    .line 181
    and-int/lit16 v1, v1, 0x400

    .line 182
    .line 183
    if-eqz v1, :cond_e

    .line 184
    .line 185
    move-object v1, v0

    .line 186
    move-object v2, v5

    .line 187
    :goto_5
    if-eqz v1, :cond_e

    .line 188
    .line 189
    instance-of v4, v1, Lka1;

    .line 190
    .line 191
    if-eqz v4, :cond_7

    .line 192
    .line 193
    check-cast v1, Lka1;

    .line 194
    .line 195
    iget-boolean v4, v1, Lmd2;->A:Z

    .line 196
    .line 197
    if-nez v4, :cond_6

    .line 198
    .line 199
    goto :goto_8

    .line 200
    :cond_6
    invoke-virtual {v1}, Lka1;->I0()Lca1;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    iget-boolean v6, v1, Lmd2;->A:Z

    .line 205
    .line 206
    if-eqz v6, :cond_d

    .line 207
    .line 208
    iget-boolean v1, v1, Lka1;->B:Z

    .line 209
    .line 210
    if-nez v1, :cond_d

    .line 211
    .line 212
    iget-boolean v1, v4, Lca1;->a:Z

    .line 213
    .line 214
    if-eqz v1, :cond_d

    .line 215
    .line 216
    goto/16 :goto_c

    .line 217
    .line 218
    :cond_7
    iget v4, v1, Lmd2;->p:I

    .line 219
    .line 220
    and-int/lit16 v4, v4, 0x400

    .line 221
    .line 222
    if-eqz v4, :cond_d

    .line 223
    .line 224
    instance-of v4, v1, Lkr0;

    .line 225
    .line 226
    if-eqz v4, :cond_d

    .line 227
    .line 228
    move-object v4, v1

    .line 229
    check-cast v4, Lkr0;

    .line 230
    .line 231
    iget-object v4, v4, Lkr0;->C:Lmd2;

    .line 232
    .line 233
    move v6, v10

    .line 234
    :goto_6
    if-eqz v4, :cond_c

    .line 235
    .line 236
    iget v7, v4, Lmd2;->p:I

    .line 237
    .line 238
    and-int/lit16 v7, v7, 0x400

    .line 239
    .line 240
    if-eqz v7, :cond_b

    .line 241
    .line 242
    add-int/lit8 v6, v6, 0x1

    .line 243
    .line 244
    if-ne v6, v9, :cond_8

    .line 245
    .line 246
    move-object v1, v4

    .line 247
    goto :goto_7

    .line 248
    :cond_8
    if-nez v2, :cond_9

    .line 249
    .line 250
    new-instance v2, Lug2;

    .line 251
    .line 252
    new-array v7, v3, [Lmd2;

    .line 253
    .line 254
    invoke-direct {v2, v7}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    :cond_9
    if-eqz v1, :cond_a

    .line 258
    .line 259
    invoke-virtual {v2, v1}, Lug2;->c(Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    move-object v1, v5

    .line 263
    :cond_a
    invoke-virtual {v2, v4}, Lug2;->c(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    :cond_b
    :goto_7
    iget-object v4, v4, Lmd2;->s:Lmd2;

    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_c
    if-ne v6, v9, :cond_d

    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_d
    :goto_8
    invoke-static {v2}, Lw80;->g(Lug2;)Lmd2;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    goto :goto_5

    .line 277
    :cond_e
    iget-object v0, v0, Lmd2;->s:Lmd2;

    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_f
    invoke-static {p3, p2}, Lw80;->c(Lug2;Lmd2;)V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_3

    .line 284
    .line 285
    :cond_10
    :goto_9
    if-eqz p1, :cond_1a

    .line 286
    .line 287
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :cond_11
    iget v8, v6, Lmd2;->p:I

    .line 292
    .line 293
    and-int/lit16 v8, v8, 0x400

    .line 294
    .line 295
    if-eqz v8, :cond_17

    .line 296
    .line 297
    instance-of v8, v6, Lkr0;

    .line 298
    .line 299
    if-eqz v8, :cond_17

    .line 300
    .line 301
    move-object v8, v6

    .line 302
    check-cast v8, Lkr0;

    .line 303
    .line 304
    iget-object v8, v8, Lkr0;->C:Lmd2;

    .line 305
    .line 306
    :goto_a
    if-eqz v8, :cond_16

    .line 307
    .line 308
    iget v11, v8, Lmd2;->p:I

    .line 309
    .line 310
    and-int/lit16 v11, v11, 0x400

    .line 311
    .line 312
    if-eqz v11, :cond_15

    .line 313
    .line 314
    add-int/lit8 v10, v10, 0x1

    .line 315
    .line 316
    if-ne v10, v9, :cond_12

    .line 317
    .line 318
    move-object v6, v8

    .line 319
    goto :goto_b

    .line 320
    :cond_12
    if-nez v7, :cond_13

    .line 321
    .line 322
    new-instance v7, Lug2;

    .line 323
    .line 324
    new-array v11, v3, [Lmd2;

    .line 325
    .line 326
    invoke-direct {v7, v11}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    :cond_13
    if-eqz v6, :cond_14

    .line 330
    .line 331
    invoke-virtual {v7, v6}, Lug2;->c(Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    move-object v6, v5

    .line 335
    :cond_14
    invoke-virtual {v7, v8}, Lug2;->c(Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    :cond_15
    :goto_b
    iget-object v8, v8, Lmd2;->s:Lmd2;

    .line 339
    .line 340
    goto :goto_a

    .line 341
    :cond_16
    if-ne v10, v9, :cond_17

    .line 342
    .line 343
    goto/16 :goto_2

    .line 344
    .line 345
    :cond_17
    invoke-static {v7}, Lw80;->g(Lug2;)Lmd2;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    goto/16 :goto_2

    .line 350
    .line 351
    :cond_18
    iget-object v4, v4, Lmd2;->s:Lmd2;

    .line 352
    .line 353
    goto/16 :goto_1

    .line 354
    .line 355
    :cond_19
    invoke-static {v1, v0}, Lw80;->c(Lug2;Lmd2;)V

    .line 356
    .line 357
    .line 358
    goto/16 :goto_0

    .line 359
    .line 360
    :cond_1a
    :goto_c
    return-void
.end method

.method public final addView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 19
    invoke-virtual {p0, p1, v0}, Lq9;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final addView(Landroid/view/View;II)V
    .locals 1

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 21
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 22
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p2, 0x1

    const/4 p3, -0x1

    .line 23
    invoke-virtual {p0, p1, p3, v0, p2}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    return-void
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 25
    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    return-void
.end method

.method public final autofill(Landroid/util/SparseArray;)V
    .locals 10

    .line 1
    invoke-static {}, Lq9;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    invoke-virtual {p0}, Lq9;->getAutofillManager()Lw8;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    move v3, v1

    .line 19
    :goto_0
    if-ge v3, v2, :cond_4

    .line 20
    .line 21
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-static {v5}, Ly2;->h(Ljava/lang/Object;)Landroid/view/autofill/AutofillValue;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget-object v6, v0, Lw8;->o:Ljh3;

    .line 34
    .line 35
    iget-object v6, v6, Ljh3;->c:Lhs1;

    .line 36
    .line 37
    invoke-virtual {v6, v4}, Lhs1;->b(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lxy1;

    .line 42
    .line 43
    if-eqz v4, :cond_3

    .line 44
    .line 45
    invoke-virtual {v4}, Lxy1;->x()Lbh3;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-eqz v4, :cond_3

    .line 50
    .line 51
    iget-object v4, v4, Lbh3;->n:Lkg2;

    .line 52
    .line 53
    sget-object v6, Lah3;->g:Loh3;

    .line 54
    .line 55
    invoke-virtual {v4, v6}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    const/4 v7, 0x0

    .line 60
    if-nez v6, :cond_0

    .line 61
    .line 62
    move-object v6, v7

    .line 63
    :cond_0
    check-cast v6, Lo2;

    .line 64
    .line 65
    if-eqz v6, :cond_1

    .line 66
    .line 67
    iget-object v6, v6, Lo2;->b:Lef1;

    .line 68
    .line 69
    check-cast v6, Lpe1;

    .line 70
    .line 71
    if-eqz v6, :cond_1

    .line 72
    .line 73
    new-instance v8, Lff;

    .line 74
    .line 75
    invoke-static {v5}, Ly2;->j(Landroid/view/autofill/AutofillValue;)Ljava/lang/CharSequence;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    invoke-direct {v8, v9}, Lff;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {v6, v8}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    check-cast v6, Ljava/lang/Boolean;

    .line 91
    .line 92
    :cond_1
    sget-object v6, Lah3;->h:Loh3;

    .line 93
    .line 94
    invoke-virtual {v4, v6}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    if-nez v4, :cond_2

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    move-object v7, v4

    .line 102
    :goto_1
    check-cast v7, Lo2;

    .line 103
    .line 104
    if-eqz v7, :cond_3

    .line 105
    .line 106
    iget-object v4, v7, Lo2;->b:Lef1;

    .line 107
    .line 108
    check-cast v4, Lpe1;

    .line 109
    .line 110
    if-eqz v4, :cond_3

    .line 111
    .line 112
    new-instance v6, Lza;

    .line 113
    .line 114
    invoke-direct {v6, v5}, Lza;-><init>(Landroid/view/autofill/AutofillValue;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v4, v6}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    check-cast v4, Ljava/lang/Boolean;

    .line 122
    .line 123
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    invoke-virtual {p0}, Lq9;->getAutofill()Lv8;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    if-eqz p0, :cond_b

    .line 131
    .line 132
    iget-object p0, p0, Lv8;->b:Llp;

    .line 133
    .line 134
    iget-object v0, p0, Llp;->a:Ljava/util/LinkedHashMap;

    .line 135
    .line 136
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_5

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_5
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    :goto_2
    if-ge v1, v0, :cond_b

    .line 148
    .line 149
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-static {v3}, Ly2;->h(Ljava/lang/Object;)Landroid/view/autofill/AutofillValue;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-static {v3}, Ly2;->C(Landroid/view/autofill/AutofillValue;)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_7

    .line 166
    .line 167
    invoke-static {v3}, Ly2;->j(Landroid/view/autofill/AutofillValue;)Ljava/lang/CharSequence;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    iget-object v3, p0, Llp;->a:Ljava/util/LinkedHashMap;

    .line 175
    .line 176
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    if-nez v2, :cond_6

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_6
    invoke-static {}, Lmk0;->b()V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_7
    invoke-static {v3}, Ly2;->D(Landroid/view/autofill/AutofillValue;)Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-nez v2, :cond_a

    .line 196
    .line 197
    invoke-static {v3}, Ly2;->B(Landroid/view/autofill/AutofillValue;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-nez v2, :cond_9

    .line 202
    .line 203
    invoke-static {v3}, Ly2;->A(Landroid/view/autofill/AutofillValue;)Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-nez v2, :cond_8

    .line 208
    .line 209
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_8
    new-instance p0, Lan2;

    .line 213
    .line 214
    const-string p1, "An operation is not implemented: b/138604541:  Add onFill() callback for toggle"

    .line 215
    .line 216
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw p0

    .line 220
    :cond_9
    new-instance p0, Lan2;

    .line 221
    .line 222
    const-string p1, "An operation is not implemented: b/138604541: Add onFill() callback for list"

    .line 223
    .line 224
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p0

    .line 228
    :cond_a
    new-instance p0, Lan2;

    .line 229
    .line 230
    const-string p1, "An operation is not implemented: b/138604541: Add onFill() callback for date"

    .line 231
    .line 232
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p0

    .line 236
    :cond_b
    :goto_4
    return-void
.end method

.method public final canScrollHorizontally(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-wide v1, p0, Lq9;->o:J

    .line 3
    .line 4
    iget-object p0, p0, Lq9;->I:Lv9;

    .line 5
    .line 6
    invoke-virtual {p0, v0, p1, v1, v2}, Lv9;->g(ZIJ)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final canScrollVertically(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-wide v1, p0, Lq9;->o:J

    .line 3
    .line 4
    iget-object p0, p0, Lq9;->I:Lv9;

    .line 5
    .line 6
    invoke-virtual {p0, v0, p1, v1, v2}, Lv9;->g(ZIJ)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lq9;->M:Ldg2;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lq9;->getRoot()Lxy1;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lq9;->i(Lxy1;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v1}, Lq9;->q(Z)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lwo3;->j()Lpo3;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lpo3;->m()V

    .line 25
    .line 26
    .line 27
    iput-boolean v1, p0, Lq9;->O:Z

    .line 28
    .line 29
    const-string v1, "AndroidOwner:draw"

    .line 30
    .line 31
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :try_start_0
    invoke-direct {p0}, Lq9;->getCanvasHolder()Ly20;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, v1, Ly20;->a:Ly8;

    .line 39
    .line 40
    iget-object v3, v2, Ly8;->a:Landroid/graphics/Canvas;

    .line 41
    .line 42
    iput-object p1, v2, Ly8;->a:Landroid/graphics/Canvas;

    .line 43
    .line 44
    invoke-virtual {p0}, Lq9;->getRoot()Lxy1;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const/4 v5, 0x0

    .line 49
    invoke-virtual {v4, v2, v5}, Lxy1;->i(Lv20;Lzh1;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v1, Ly20;->a:Ly8;

    .line 53
    .line 54
    iput-object v3, v1, Ly8;->a:Landroid/graphics/Canvas;

    .line 55
    .line 56
    invoke-virtual {v0}, Ldg2;->i()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/4 v2, 0x0

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    iget v1, v0, Ldg2;->b:I

    .line 64
    .line 65
    move v3, v2

    .line 66
    :goto_0
    if-ge v3, v1, :cond_1

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ldg2;->f(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Lrr2;

    .line 73
    .line 74
    check-cast v4, Lci1;

    .line 75
    .line 76
    invoke-virtual {v4}, Lci1;->g()V

    .line 77
    .line 78
    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    sget v1, Lsb4;->n:I

    .line 83
    .line 84
    invoke-virtual {v0}, Ldg2;->d()V

    .line 85
    .line 86
    .line 87
    iput-boolean v2, p0, Lq9;->O:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lq9;->N:Ldg2;

    .line 93
    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ldg2;->b(Ldg2;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ldg2;->d()V

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-static {}, Lq9;->l()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    iget v0, p0, Lq9;->D0:F

    .line 109
    .line 110
    iget v1, p0, Lq9;->F0:F

    .line 111
    .line 112
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_3

    .line 117
    .line 118
    iget v0, p0, Lq9;->D0:F

    .line 119
    .line 120
    iput v0, p0, Lq9;->F0:F

    .line 121
    .line 122
    invoke-static {p0, v0}, Lag;->a(Landroid/view/View;F)V

    .line 123
    .line 124
    .line 125
    :cond_3
    iget-object v0, p0, Lq9;->x:Landroid/view/View;

    .line 126
    .line 127
    if-eqz v0, :cond_5

    .line 128
    .line 129
    iget v1, p0, Lq9;->E0:F

    .line 130
    .line 131
    iget v2, p0, Lq9;->G0:F

    .line 132
    .line 133
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_4

    .line 138
    .line 139
    iget v1, p0, Lq9;->E0:F

    .line 140
    .line 141
    iput v1, p0, Lq9;->G0:F

    .line 142
    .line 143
    invoke-static {v0, v1}, Lag;->a(Landroid/view/View;F)V

    .line 144
    .line 145
    .line 146
    :cond_4
    iget v1, p0, Lq9;->E0:F

    .line 147
    .line 148
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_5

    .line 153
    .line 154
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    .line 158
    .line 159
    .line 160
    move-result-wide v1

    .line 161
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 162
    .line 163
    .line 164
    :cond_5
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 165
    .line 166
    iput p1, p0, Lq9;->D0:F

    .line 167
    .line 168
    iput p1, p0, Lq9;->E0:F

    .line 169
    .line 170
    :cond_6
    return-void

    .line 171
    :catchall_0
    move-exception p0

    .line 172
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 173
    .line 174
    .line 175
    throw p0
.end method

.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v0, Lq9;->J0:Z

    .line 6
    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    iget-object v2, v0, Lq9;->I0:Lc9;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-ne v5, v3, :cond_0

    .line 22
    .line 23
    iput-boolean v4, v0, Lq9;->J0:Z

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v2}, Lc9;->run()V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    invoke-static {v1}, Lq9;->m(Landroid/view/MotionEvent;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_91

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    goto/16 :goto_58

    .line 42
    .line 43
    :cond_2
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const-string v5, "visitAncestors called on an unattached node"

    .line 48
    .line 49
    const/4 v6, -0x1

    .line 50
    const/16 v8, 0x10

    .line 51
    .line 52
    const/4 v9, 0x1

    .line 53
    if-ne v2, v3, :cond_35

    .line 54
    .line 55
    const/high16 v2, 0x400000

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_33

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const/16 v3, 0x1a

    .line 72
    .line 73
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 81
    .line 82
    if-lt v11, v3, :cond_3

    .line 83
    .line 84
    sget-object v10, Lob4;->a:Ljava/lang/reflect/Method;

    .line 85
    .line 86
    invoke-static {v2}, Lsf;->g(Landroid/view/ViewConfiguration;)F

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    invoke-static {v2, v10}, Lob4;->a(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    .line 91
    .line 92
    .line 93
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    if-lt v11, v3, :cond_4

    .line 98
    .line 99
    invoke-static {v2}, Lsf;->f(Landroid/view/ViewConfiguration;)F

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_4
    invoke-static {v2, v10}, Lob4;->a(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    .line 104
    .line 105
    .line 106
    :goto_2
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lq9;->getFocusOwner()Ly91;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Ldh;

    .line 117
    .line 118
    iget-object v3, v2, Ldh;->d:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v3, Lw91;

    .line 121
    .line 122
    iget-boolean v3, v3, Lw91;->e:Z

    .line 123
    .line 124
    if-eqz v3, :cond_5

    .line 125
    .line 126
    const-string v0, "FocusRelatedWarning: Dispatching rotary event while the focus system is invalidated."

    .line 127
    .line 128
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 129
    .line 130
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    return v4

    .line 134
    :cond_5
    iget-object v2, v2, Ldh;->c:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v2, Lka1;

    .line 137
    .line 138
    invoke-static {v2}, Lgg4;->u(Lka1;)Lka1;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    if-eqz v2, :cond_12

    .line 143
    .line 144
    iget-object v3, v2, Lmd2;->n:Lmd2;

    .line 145
    .line 146
    iget-boolean v3, v3, Lmd2;->A:Z

    .line 147
    .line 148
    if-nez v3, :cond_6

    .line 149
    .line 150
    invoke-static {v5}, Lar1;->b(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_6
    iget-object v3, v2, Lmd2;->n:Lmd2;

    .line 154
    .line 155
    invoke-static {v2}, Lw80;->R(Ljr0;)Lxy1;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    :goto_3
    if-eqz v2, :cond_11

    .line 160
    .line 161
    iget-object v10, v2, Lxy1;->S:Lbo;

    .line 162
    .line 163
    iget-object v10, v10, Lbo;->g:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v10, Lmd2;

    .line 166
    .line 167
    iget v10, v10, Lmd2;->q:I

    .line 168
    .line 169
    and-int/lit16 v10, v10, 0x4000

    .line 170
    .line 171
    if-eqz v10, :cond_f

    .line 172
    .line 173
    :goto_4
    if-eqz v3, :cond_f

    .line 174
    .line 175
    iget v10, v3, Lmd2;->p:I

    .line 176
    .line 177
    and-int/lit16 v10, v10, 0x4000

    .line 178
    .line 179
    if-eqz v10, :cond_e

    .line 180
    .line 181
    move-object v10, v3

    .line 182
    const/4 v11, 0x0

    .line 183
    :goto_5
    if-eqz v10, :cond_e

    .line 184
    .line 185
    instance-of v12, v10, Lf9;

    .line 186
    .line 187
    if-eqz v12, :cond_7

    .line 188
    .line 189
    goto :goto_8

    .line 190
    :cond_7
    iget v12, v10, Lmd2;->p:I

    .line 191
    .line 192
    and-int/lit16 v12, v12, 0x4000

    .line 193
    .line 194
    if-eqz v12, :cond_d

    .line 195
    .line 196
    instance-of v12, v10, Lkr0;

    .line 197
    .line 198
    if-eqz v12, :cond_d

    .line 199
    .line 200
    move-object v12, v10

    .line 201
    check-cast v12, Lkr0;

    .line 202
    .line 203
    iget-object v12, v12, Lkr0;->C:Lmd2;

    .line 204
    .line 205
    move v13, v4

    .line 206
    :goto_6
    if-eqz v12, :cond_c

    .line 207
    .line 208
    iget v14, v12, Lmd2;->p:I

    .line 209
    .line 210
    and-int/lit16 v14, v14, 0x4000

    .line 211
    .line 212
    if-eqz v14, :cond_b

    .line 213
    .line 214
    add-int/lit8 v13, v13, 0x1

    .line 215
    .line 216
    if-ne v13, v9, :cond_8

    .line 217
    .line 218
    move-object v10, v12

    .line 219
    goto :goto_7

    .line 220
    :cond_8
    if-nez v11, :cond_9

    .line 221
    .line 222
    new-instance v11, Lug2;

    .line 223
    .line 224
    new-array v14, v8, [Lmd2;

    .line 225
    .line 226
    invoke-direct {v11, v14}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    :cond_9
    if-eqz v10, :cond_a

    .line 230
    .line 231
    invoke-virtual {v11, v10}, Lug2;->c(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    const/4 v10, 0x0

    .line 235
    :cond_a
    invoke-virtual {v11, v12}, Lug2;->c(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    :cond_b
    :goto_7
    iget-object v12, v12, Lmd2;->s:Lmd2;

    .line 239
    .line 240
    goto :goto_6

    .line 241
    :cond_c
    if-ne v13, v9, :cond_d

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_d
    invoke-static {v11}, Lw80;->g(Lug2;)Lmd2;

    .line 245
    .line 246
    .line 247
    move-result-object v10

    .line 248
    goto :goto_5

    .line 249
    :cond_e
    iget-object v3, v3, Lmd2;->r:Lmd2;

    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_f
    invoke-virtual {v2}, Lxy1;->u()Lxy1;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    if-eqz v2, :cond_10

    .line 257
    .line 258
    iget-object v3, v2, Lxy1;->S:Lbo;

    .line 259
    .line 260
    if-eqz v3, :cond_10

    .line 261
    .line 262
    iget-object v3, v3, Lbo;->f:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v3, Lgw3;

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_10
    const/4 v3, 0x0

    .line 268
    goto :goto_3

    .line 269
    :cond_11
    const/4 v10, 0x0

    .line 270
    :goto_8
    check-cast v10, Lf9;

    .line 271
    .line 272
    goto :goto_9

    .line 273
    :cond_12
    const/4 v10, 0x0

    .line 274
    :goto_9
    if-eqz v10, :cond_34

    .line 275
    .line 276
    iget-object v2, v10, Lmd2;->n:Lmd2;

    .line 277
    .line 278
    iget-boolean v2, v2, Lmd2;->A:Z

    .line 279
    .line 280
    if-nez v2, :cond_13

    .line 281
    .line 282
    invoke-static {v5}, Lar1;->b(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    :cond_13
    iget-object v2, v10, Lmd2;->n:Lmd2;

    .line 286
    .line 287
    iget-object v2, v2, Lmd2;->r:Lmd2;

    .line 288
    .line 289
    invoke-static {v10}, Lw80;->R(Ljr0;)Lxy1;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    const/4 v5, 0x0

    .line 294
    :goto_a
    if-eqz v3, :cond_1f

    .line 295
    .line 296
    iget-object v11, v3, Lxy1;->S:Lbo;

    .line 297
    .line 298
    iget-object v11, v11, Lbo;->g:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast v11, Lmd2;

    .line 301
    .line 302
    iget v11, v11, Lmd2;->q:I

    .line 303
    .line 304
    and-int/lit16 v11, v11, 0x4000

    .line 305
    .line 306
    if-eqz v11, :cond_1d

    .line 307
    .line 308
    :goto_b
    if-eqz v2, :cond_1d

    .line 309
    .line 310
    iget v11, v2, Lmd2;->p:I

    .line 311
    .line 312
    and-int/lit16 v11, v11, 0x4000

    .line 313
    .line 314
    if-eqz v11, :cond_1c

    .line 315
    .line 316
    move-object v11, v2

    .line 317
    const/4 v12, 0x0

    .line 318
    :goto_c
    if-eqz v11, :cond_1c

    .line 319
    .line 320
    instance-of v13, v11, Lf9;

    .line 321
    .line 322
    if-eqz v13, :cond_15

    .line 323
    .line 324
    if-nez v5, :cond_14

    .line 325
    .line 326
    new-instance v5, Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .line 330
    .line 331
    :cond_14
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move v13, v4

    .line 335
    goto :goto_d

    .line 336
    :cond_15
    move v13, v9

    .line 337
    :goto_d
    if-eqz v13, :cond_1b

    .line 338
    .line 339
    iget v13, v11, Lmd2;->p:I

    .line 340
    .line 341
    and-int/lit16 v13, v13, 0x4000

    .line 342
    .line 343
    if-eqz v13, :cond_1b

    .line 344
    .line 345
    instance-of v13, v11, Lkr0;

    .line 346
    .line 347
    if-eqz v13, :cond_1b

    .line 348
    .line 349
    move-object v13, v11

    .line 350
    check-cast v13, Lkr0;

    .line 351
    .line 352
    iget-object v13, v13, Lkr0;->C:Lmd2;

    .line 353
    .line 354
    move v14, v4

    .line 355
    :goto_e
    if-eqz v13, :cond_1a

    .line 356
    .line 357
    iget v15, v13, Lmd2;->p:I

    .line 358
    .line 359
    and-int/lit16 v15, v15, 0x4000

    .line 360
    .line 361
    if-eqz v15, :cond_19

    .line 362
    .line 363
    add-int/lit8 v14, v14, 0x1

    .line 364
    .line 365
    if-ne v14, v9, :cond_16

    .line 366
    .line 367
    move-object v11, v13

    .line 368
    goto :goto_f

    .line 369
    :cond_16
    if-nez v12, :cond_17

    .line 370
    .line 371
    new-instance v12, Lug2;

    .line 372
    .line 373
    new-array v15, v8, [Lmd2;

    .line 374
    .line 375
    invoke-direct {v12, v15}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    :cond_17
    if-eqz v11, :cond_18

    .line 379
    .line 380
    invoke-virtual {v12, v11}, Lug2;->c(Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    const/4 v11, 0x0

    .line 384
    :cond_18
    invoke-virtual {v12, v13}, Lug2;->c(Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    :cond_19
    :goto_f
    iget-object v13, v13, Lmd2;->s:Lmd2;

    .line 388
    .line 389
    goto :goto_e

    .line 390
    :cond_1a
    if-ne v14, v9, :cond_1b

    .line 391
    .line 392
    goto :goto_c

    .line 393
    :cond_1b
    invoke-static {v12}, Lw80;->g(Lug2;)Lmd2;

    .line 394
    .line 395
    .line 396
    move-result-object v11

    .line 397
    goto :goto_c

    .line 398
    :cond_1c
    iget-object v2, v2, Lmd2;->r:Lmd2;

    .line 399
    .line 400
    goto :goto_b

    .line 401
    :cond_1d
    invoke-virtual {v3}, Lxy1;->u()Lxy1;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    if-eqz v3, :cond_1e

    .line 406
    .line 407
    iget-object v2, v3, Lxy1;->S:Lbo;

    .line 408
    .line 409
    if-eqz v2, :cond_1e

    .line 410
    .line 411
    iget-object v2, v2, Lbo;->f:Ljava/lang/Object;

    .line 412
    .line 413
    check-cast v2, Lgw3;

    .line 414
    .line 415
    goto :goto_a

    .line 416
    :cond_1e
    const/4 v2, 0x0

    .line 417
    goto :goto_a

    .line 418
    :cond_1f
    if-eqz v5, :cond_21

    .line 419
    .line 420
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    add-int/2addr v2, v6

    .line 425
    if-ltz v2, :cond_21

    .line 426
    .line 427
    :goto_10
    add-int/lit8 v3, v2, -0x1

    .line 428
    .line 429
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    check-cast v2, Lf9;

    .line 434
    .line 435
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    if-gez v3, :cond_20

    .line 439
    .line 440
    goto :goto_11

    .line 441
    :cond_20
    move v2, v3

    .line 442
    goto :goto_10

    .line 443
    :cond_21
    :goto_11
    iget-object v2, v10, Lmd2;->n:Lmd2;

    .line 444
    .line 445
    const/4 v3, 0x0

    .line 446
    :goto_12
    if-eqz v2, :cond_29

    .line 447
    .line 448
    instance-of v6, v2, Lf9;

    .line 449
    .line 450
    if-eqz v6, :cond_22

    .line 451
    .line 452
    goto :goto_15

    .line 453
    :cond_22
    iget v6, v2, Lmd2;->p:I

    .line 454
    .line 455
    and-int/lit16 v6, v6, 0x4000

    .line 456
    .line 457
    if-eqz v6, :cond_28

    .line 458
    .line 459
    instance-of v6, v2, Lkr0;

    .line 460
    .line 461
    if-eqz v6, :cond_28

    .line 462
    .line 463
    move-object v6, v2

    .line 464
    check-cast v6, Lkr0;

    .line 465
    .line 466
    iget-object v6, v6, Lkr0;->C:Lmd2;

    .line 467
    .line 468
    move v11, v4

    .line 469
    :goto_13
    if-eqz v6, :cond_27

    .line 470
    .line 471
    iget v12, v6, Lmd2;->p:I

    .line 472
    .line 473
    and-int/lit16 v12, v12, 0x4000

    .line 474
    .line 475
    if-eqz v12, :cond_26

    .line 476
    .line 477
    add-int/lit8 v11, v11, 0x1

    .line 478
    .line 479
    if-ne v11, v9, :cond_23

    .line 480
    .line 481
    move-object v2, v6

    .line 482
    goto :goto_14

    .line 483
    :cond_23
    if-nez v3, :cond_24

    .line 484
    .line 485
    new-instance v3, Lug2;

    .line 486
    .line 487
    new-array v12, v8, [Lmd2;

    .line 488
    .line 489
    invoke-direct {v3, v12}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    :cond_24
    if-eqz v2, :cond_25

    .line 493
    .line 494
    invoke-virtual {v3, v2}, Lug2;->c(Ljava/lang/Object;)V

    .line 495
    .line 496
    .line 497
    const/4 v2, 0x0

    .line 498
    :cond_25
    invoke-virtual {v3, v6}, Lug2;->c(Ljava/lang/Object;)V

    .line 499
    .line 500
    .line 501
    :cond_26
    :goto_14
    iget-object v6, v6, Lmd2;->s:Lmd2;

    .line 502
    .line 503
    goto :goto_13

    .line 504
    :cond_27
    if-ne v11, v9, :cond_28

    .line 505
    .line 506
    goto :goto_12

    .line 507
    :cond_28
    :goto_15
    invoke-static {v3}, Lw80;->g(Lug2;)Lmd2;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    goto :goto_12

    .line 512
    :cond_29
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 513
    .line 514
    .line 515
    move-result v0

    .line 516
    if-eqz v0, :cond_2a

    .line 517
    .line 518
    goto/16 :goto_1b

    .line 519
    .line 520
    :cond_2a
    iget-object v0, v10, Lmd2;->n:Lmd2;

    .line 521
    .line 522
    const/4 v1, 0x0

    .line 523
    :goto_16
    if-eqz v0, :cond_32

    .line 524
    .line 525
    instance-of v2, v0, Lf9;

    .line 526
    .line 527
    if-eqz v2, :cond_2b

    .line 528
    .line 529
    goto :goto_19

    .line 530
    :cond_2b
    iget v2, v0, Lmd2;->p:I

    .line 531
    .line 532
    and-int/lit16 v2, v2, 0x4000

    .line 533
    .line 534
    if-eqz v2, :cond_31

    .line 535
    .line 536
    instance-of v2, v0, Lkr0;

    .line 537
    .line 538
    if-eqz v2, :cond_31

    .line 539
    .line 540
    move-object v2, v0

    .line 541
    check-cast v2, Lkr0;

    .line 542
    .line 543
    iget-object v2, v2, Lkr0;->C:Lmd2;

    .line 544
    .line 545
    move v3, v4

    .line 546
    :goto_17
    if-eqz v2, :cond_30

    .line 547
    .line 548
    iget v6, v2, Lmd2;->p:I

    .line 549
    .line 550
    and-int/lit16 v6, v6, 0x4000

    .line 551
    .line 552
    if-eqz v6, :cond_2f

    .line 553
    .line 554
    add-int/lit8 v3, v3, 0x1

    .line 555
    .line 556
    if-ne v3, v9, :cond_2c

    .line 557
    .line 558
    move-object v0, v2

    .line 559
    goto :goto_18

    .line 560
    :cond_2c
    if-nez v1, :cond_2d

    .line 561
    .line 562
    new-instance v1, Lug2;

    .line 563
    .line 564
    new-array v6, v8, [Lmd2;

    .line 565
    .line 566
    invoke-direct {v1, v6}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    :cond_2d
    if-eqz v0, :cond_2e

    .line 570
    .line 571
    invoke-virtual {v1, v0}, Lug2;->c(Ljava/lang/Object;)V

    .line 572
    .line 573
    .line 574
    const/4 v0, 0x0

    .line 575
    :cond_2e
    invoke-virtual {v1, v2}, Lug2;->c(Ljava/lang/Object;)V

    .line 576
    .line 577
    .line 578
    :cond_2f
    :goto_18
    iget-object v2, v2, Lmd2;->s:Lmd2;

    .line 579
    .line 580
    goto :goto_17

    .line 581
    :cond_30
    if-ne v3, v9, :cond_31

    .line 582
    .line 583
    goto :goto_16

    .line 584
    :cond_31
    :goto_19
    invoke-static {v1}, Lw80;->g(Lug2;)Lmd2;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    goto :goto_16

    .line 589
    :cond_32
    if-eqz v5, :cond_34

    .line 590
    .line 591
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    move v1, v4

    .line 596
    :goto_1a
    if-ge v1, v0, :cond_34

    .line 597
    .line 598
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    check-cast v2, Lf9;

    .line 603
    .line 604
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 605
    .line 606
    .line 607
    add-int/lit8 v1, v1, 0x1

    .line 608
    .line 609
    goto :goto_1a

    .line 610
    :cond_33
    invoke-virtual/range {p0 .. p1}, Lq9;->h(Landroid/view/MotionEvent;)I

    .line 611
    .line 612
    .line 613
    move-result v0

    .line 614
    and-int/lit8 v0, v0, 0x4

    .line 615
    .line 616
    if-eqz v0, :cond_34

    .line 617
    .line 618
    :goto_1b
    return v9

    .line 619
    :cond_34
    return v4

    .line 620
    :cond_35
    const/high16 v2, 0x200000

    .line 621
    .line 622
    invoke-virtual {v1, v2}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 623
    .line 624
    .line 625
    move-result v3

    .line 626
    if-eqz v3, :cond_90

    .line 627
    .line 628
    iget-object v3, v0, Lq9;->q:Laq1;

    .line 629
    .line 630
    iget-object v10, v0, Lq9;->Q:Lbe2;

    .line 631
    .line 632
    iget-object v11, v10, Lbe2;->e:Le82;

    .line 633
    .line 634
    iget-object v12, v10, Lbe2;->b:Landroid/util/SparseLongArray;

    .line 635
    .line 636
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 637
    .line 638
    .line 639
    move-result v13

    .line 640
    invoke-virtual {v10, v1}, Lbe2;->b(Landroid/view/MotionEvent;)V

    .line 641
    .line 642
    .line 643
    const/4 v14, 0x3

    .line 644
    const/4 v15, 0x2

    .line 645
    if-ne v13, v14, :cond_36

    .line 646
    .line 647
    invoke-virtual {v12}, Landroid/util/SparseLongArray;->clear()V

    .line 648
    .line 649
    .line 650
    iget-object v1, v10, Lbe2;->c:Landroid/util/SparseBooleanArray;

    .line 651
    .line 652
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 653
    .line 654
    .line 655
    move-object/from16 v22, v5

    .line 656
    .line 657
    move/from16 v16, v6

    .line 658
    .line 659
    move/from16 v18, v8

    .line 660
    .line 661
    const/4 v3, 0x0

    .line 662
    goto/16 :goto_2f

    .line 663
    .line 664
    :cond_36
    invoke-virtual {v10, v1}, Lbe2;->a(Landroid/view/MotionEvent;)V

    .line 665
    .line 666
    .line 667
    const/4 v14, 0x6

    .line 668
    if-eq v13, v9, :cond_38

    .line 669
    .line 670
    if-eq v13, v14, :cond_37

    .line 671
    .line 672
    move/from16 v16, v6

    .line 673
    .line 674
    goto :goto_1c

    .line 675
    :cond_37
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 676
    .line 677
    .line 678
    move-result v16

    .line 679
    move/from16 v40, v16

    .line 680
    .line 681
    move/from16 v16, v6

    .line 682
    .line 683
    move/from16 v6, v40

    .line 684
    .line 685
    goto :goto_1c

    .line 686
    :cond_38
    move/from16 v16, v6

    .line 687
    .line 688
    move v6, v4

    .line 689
    :goto_1c
    const/4 v7, 0x5

    .line 690
    if-eqz v13, :cond_39

    .line 691
    .line 692
    if-eq v13, v15, :cond_39

    .line 693
    .line 694
    if-eq v13, v7, :cond_39

    .line 695
    .line 696
    move/from16 v17, v4

    .line 697
    .line 698
    :goto_1d
    move/from16 v18, v8

    .line 699
    .line 700
    goto :goto_1e

    .line 701
    :cond_39
    move/from16 v17, v9

    .line 702
    .line 703
    goto :goto_1d

    .line 704
    :goto_1e
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 705
    .line 706
    .line 707
    move-result v8

    .line 708
    new-instance v14, Ljava/util/ArrayList;

    .line 709
    .line 710
    invoke-direct {v14, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 711
    .line 712
    .line 713
    move v7, v4

    .line 714
    :goto_1f
    if-ge v7, v8, :cond_42

    .line 715
    .line 716
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 717
    .line 718
    .line 719
    move-result v15

    .line 720
    move/from16 v19, v9

    .line 721
    .line 722
    invoke-virtual {v12, v15}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    .line 723
    .line 724
    .line 725
    move-result v9

    .line 726
    const-wide/16 v20, 0x1

    .line 727
    .line 728
    if-ltz v9, :cond_3a

    .line 729
    .line 730
    invoke-virtual {v12, v9}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 731
    .line 732
    .line 733
    move-result-wide v22

    .line 734
    move-wide/from16 v40, v22

    .line 735
    .line 736
    move-object/from16 v22, v5

    .line 737
    .line 738
    move-wide/from16 v4, v40

    .line 739
    .line 740
    move-object/from16 v24, v3

    .line 741
    .line 742
    goto :goto_20

    .line 743
    :cond_3a
    move-object/from16 v22, v5

    .line 744
    .line 745
    iget-wide v4, v10, Lbe2;->a:J

    .line 746
    .line 747
    move-object/from16 v24, v3

    .line 748
    .line 749
    add-long v2, v4, v20

    .line 750
    .line 751
    iput-wide v2, v10, Lbe2;->a:J

    .line 752
    .line 753
    invoke-virtual {v12, v15, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 754
    .line 755
    .line 756
    :goto_20
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    .line 757
    .line 758
    .line 759
    move-result v2

    .line 760
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    .line 761
    .line 762
    .line 763
    move-result v3

    .line 764
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 765
    .line 766
    .line 767
    move-result v2

    .line 768
    move-object v15, v10

    .line 769
    int-to-long v9, v2

    .line 770
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 771
    .line 772
    .line 773
    move-result v2

    .line 774
    int-to-long v2, v2

    .line 775
    const/16 v25, 0x20

    .line 776
    .line 777
    shl-long v9, v9, v25

    .line 778
    .line 779
    const-wide v26, 0xffffffffL

    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    and-long v2, v2, v26

    .line 785
    .line 786
    or-long v30, v9, v2

    .line 787
    .line 788
    if-eq v7, v6, :cond_3b

    .line 789
    .line 790
    move/from16 v32, v19

    .line 791
    .line 792
    goto :goto_21

    .line 793
    :cond_3b
    const/16 v32, 0x0

    .line 794
    .line 795
    :goto_21
    invoke-virtual {v11, v4, v5}, Le82;->a(J)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object v2

    .line 799
    check-cast v2, Lae2;

    .line 800
    .line 801
    const-wide/32 v9, 0x7fffffff

    .line 802
    .line 803
    .line 804
    if-ne v7, v6, :cond_3c

    .line 805
    .line 806
    invoke-virtual {v11, v4, v5}, Le82;->d(J)V

    .line 807
    .line 808
    .line 809
    move-wide v3, v4

    .line 810
    move-wide/from16 v33, v9

    .line 811
    .line 812
    move/from16 v9, v25

    .line 813
    .line 814
    const v5, 0xffff

    .line 815
    .line 816
    .line 817
    goto :goto_23

    .line 818
    :cond_3c
    if-eqz v17, :cond_3d

    .line 819
    .line 820
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 821
    .line 822
    .line 823
    move-result-wide v28

    .line 824
    and-long v28, v28, v9

    .line 825
    .line 826
    shl-long v28, v28, v19

    .line 827
    .line 828
    or-long v28, v20, v28

    .line 829
    .line 830
    move-wide/from16 v33, v9

    .line 831
    .line 832
    shr-long v9, v30, v25

    .line 833
    .line 834
    long-to-int v9, v9

    .line 835
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 836
    .line 837
    .line 838
    move-result v9

    .line 839
    float-to-int v9, v9

    .line 840
    int-to-short v9, v9

    .line 841
    move-wide/from16 v35, v4

    .line 842
    .line 843
    const v5, 0xffff

    .line 844
    .line 845
    .line 846
    and-long v3, v30, v26

    .line 847
    .line 848
    long-to-int v3, v3

    .line 849
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 850
    .line 851
    .line 852
    move-result v3

    .line 853
    float-to-int v3, v3

    .line 854
    int-to-short v3, v3

    .line 855
    shl-int/lit8 v4, v9, 0x10

    .line 856
    .line 857
    and-int/2addr v3, v5

    .line 858
    or-int/2addr v3, v4

    .line 859
    int-to-long v3, v3

    .line 860
    shl-long v3, v3, v25

    .line 861
    .line 862
    or-long v3, v28, v3

    .line 863
    .line 864
    new-instance v9, Lae2;

    .line 865
    .line 866
    invoke-direct {v9, v3, v4}, Lae2;-><init>(J)V

    .line 867
    .line 868
    .line 869
    move-wide/from16 v3, v35

    .line 870
    .line 871
    invoke-virtual {v11, v3, v4, v9}, Le82;->c(JLjava/lang/Object;)V

    .line 872
    .line 873
    .line 874
    :goto_22
    move/from16 v9, v25

    .line 875
    .line 876
    goto :goto_23

    .line 877
    :cond_3d
    move-wide v3, v4

    .line 878
    move-wide/from16 v33, v9

    .line 879
    .line 880
    const v5, 0xffff

    .line 881
    .line 882
    .line 883
    goto :goto_22

    .line 884
    :goto_23
    new-instance v25, Lbq1;

    .line 885
    .line 886
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 887
    .line 888
    .line 889
    move-result-wide v28

    .line 890
    move-wide/from16 v34, v33

    .line 891
    .line 892
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPressure(I)F

    .line 893
    .line 894
    .line 895
    move-result v33

    .line 896
    move/from16 v36, v5

    .line 897
    .line 898
    move v10, v6

    .line 899
    if-eqz v2, :cond_3e

    .line 900
    .line 901
    iget-wide v5, v2, Lae2;->a:J

    .line 902
    .line 903
    shr-long v5, v5, v19

    .line 904
    .line 905
    and-long v5, v5, v34

    .line 906
    .line 907
    :goto_24
    move-wide/from16 v34, v5

    .line 908
    .line 909
    goto :goto_25

    .line 910
    :cond_3e
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 911
    .line 912
    .line 913
    move-result-wide v5

    .line 914
    goto :goto_24

    .line 915
    :goto_25
    if-eqz v2, :cond_3f

    .line 916
    .line 917
    iget-wide v5, v2, Lae2;->a:J

    .line 918
    .line 919
    ushr-long/2addr v5, v9

    .line 920
    long-to-int v5, v5

    .line 921
    ushr-int/lit8 v6, v5, 0x10

    .line 922
    .line 923
    int-to-short v6, v6

    .line 924
    int-to-float v6, v6

    .line 925
    and-int v5, v5, v36

    .line 926
    .line 927
    int-to-short v5, v5

    .line 928
    int-to-float v5, v5

    .line 929
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 930
    .line 931
    .line 932
    move-result v6

    .line 933
    move/from16 v36, v9

    .line 934
    .line 935
    move/from16 v39, v10

    .line 936
    .line 937
    int-to-long v9, v6

    .line 938
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 939
    .line 940
    .line 941
    move-result v5

    .line 942
    int-to-long v5, v5

    .line 943
    shl-long v9, v9, v36

    .line 944
    .line 945
    and-long v5, v5, v26

    .line 946
    .line 947
    or-long/2addr v5, v9

    .line 948
    move-wide/from16 v36, v5

    .line 949
    .line 950
    goto :goto_26

    .line 951
    :cond_3f
    move/from16 v39, v10

    .line 952
    .line 953
    move-wide/from16 v36, v30

    .line 954
    .line 955
    :goto_26
    if-eqz v2, :cond_41

    .line 956
    .line 957
    iget-wide v5, v2, Lae2;->a:J

    .line 958
    .line 959
    and-long v5, v5, v20

    .line 960
    .line 961
    const-wide/16 v9, 0x0

    .line 962
    .line 963
    cmp-long v2, v5, v9

    .line 964
    .line 965
    if-eqz v2, :cond_40

    .line 966
    .line 967
    move/from16 v2, v19

    .line 968
    .line 969
    goto :goto_27

    .line 970
    :cond_40
    const/4 v2, 0x0

    .line 971
    :goto_27
    move/from16 v38, v2

    .line 972
    .line 973
    :goto_28
    move-wide/from16 v26, v3

    .line 974
    .line 975
    goto :goto_29

    .line 976
    :cond_41
    const/16 v38, 0x0

    .line 977
    .line 978
    goto :goto_28

    .line 979
    :goto_29
    invoke-direct/range {v25 .. v38}, Lbq1;-><init>(JJJZFJJZ)V

    .line 980
    .line 981
    .line 982
    move-object/from16 v2, v25

    .line 983
    .line 984
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    .line 986
    .line 987
    add-int/lit8 v7, v7, 0x1

    .line 988
    .line 989
    move-object v10, v15

    .line 990
    move/from16 v9, v19

    .line 991
    .line 992
    move-object/from16 v5, v22

    .line 993
    .line 994
    move-object/from16 v3, v24

    .line 995
    .line 996
    move/from16 v6, v39

    .line 997
    .line 998
    const/high16 v2, 0x200000

    .line 999
    .line 1000
    const/4 v4, 0x0

    .line 1001
    const/4 v15, 0x2

    .line 1002
    goto/16 :goto_1f

    .line 1003
    .line 1004
    :cond_42
    move-object/from16 v24, v3

    .line 1005
    .line 1006
    move-object/from16 v22, v5

    .line 1007
    .line 1008
    move/from16 v19, v9

    .line 1009
    .line 1010
    move-object v15, v10

    .line 1011
    invoke-virtual {v15, v1}, Lbe2;->e(Landroid/view/MotionEvent;)V

    .line 1012
    .line 1013
    .line 1014
    if-eqz v24, :cond_43

    .line 1015
    .line 1016
    move-object/from16 v2, v24

    .line 1017
    .line 1018
    iget v2, v2, Laq1;->a:I

    .line 1019
    .line 1020
    goto :goto_2e

    .line 1021
    :cond_43
    const/high16 v2, 0x200000

    .line 1022
    .line 1023
    invoke-virtual {v1, v2}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 1024
    .line 1025
    .line 1026
    move-result v3

    .line 1027
    if-eqz v3, :cond_8f

    .line 1028
    .line 1029
    invoke-virtual {v1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v2

    .line 1033
    if-eqz v2, :cond_49

    .line 1034
    .line 1035
    const/4 v9, 0x0

    .line 1036
    invoke-virtual {v2, v9}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v3

    .line 1040
    move/from16 v4, v19

    .line 1041
    .line 1042
    invoke-virtual {v2, v4}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v2

    .line 1046
    if-eqz v3, :cond_44

    .line 1047
    .line 1048
    if-nez v2, :cond_44

    .line 1049
    .line 1050
    :goto_2a
    const/4 v2, 0x1

    .line 1051
    goto :goto_2e

    .line 1052
    :cond_44
    if-eqz v2, :cond_45

    .line 1053
    .line 1054
    if-nez v3, :cond_45

    .line 1055
    .line 1056
    :goto_2b
    const/4 v2, 0x2

    .line 1057
    goto :goto_2e

    .line 1058
    :cond_45
    if-eqz v3, :cond_49

    .line 1059
    .line 1060
    if-eqz v2, :cond_49

    .line 1061
    .line 1062
    invoke-virtual {v3}, Landroid/view/InputDevice$MotionRange;->getRange()F

    .line 1063
    .line 1064
    .line 1065
    move-result v3

    .line 1066
    invoke-virtual {v2}, Landroid/view/InputDevice$MotionRange;->getRange()F

    .line 1067
    .line 1068
    .line 1069
    move-result v2

    .line 1070
    cmpl-float v4, v3, v2

    .line 1071
    .line 1072
    const/high16 v5, 0x40a00000    # 5.0f

    .line 1073
    .line 1074
    const/4 v6, 0x0

    .line 1075
    if-lez v4, :cond_47

    .line 1076
    .line 1077
    cmpg-float v4, v2, v6

    .line 1078
    .line 1079
    if-nez v4, :cond_46

    .line 1080
    .line 1081
    goto :goto_2c

    .line 1082
    :cond_46
    div-float v4, v3, v2

    .line 1083
    .line 1084
    cmpl-float v4, v4, v5

    .line 1085
    .line 1086
    if-ltz v4, :cond_47

    .line 1087
    .line 1088
    :goto_2c
    goto :goto_2a

    .line 1089
    :cond_47
    cmpl-float v4, v2, v3

    .line 1090
    .line 1091
    if-lez v4, :cond_49

    .line 1092
    .line 1093
    cmpg-float v4, v3, v6

    .line 1094
    .line 1095
    if-nez v4, :cond_48

    .line 1096
    .line 1097
    goto :goto_2d

    .line 1098
    :cond_48
    div-float/2addr v2, v3

    .line 1099
    cmpl-float v2, v2, v5

    .line 1100
    .line 1101
    if-ltz v2, :cond_49

    .line 1102
    .line 1103
    :goto_2d
    goto :goto_2b

    .line 1104
    :cond_49
    const/4 v2, 0x0

    .line 1105
    :goto_2e
    new-instance v3, Lhb;

    .line 1106
    .line 1107
    if-eqz v13, :cond_4a

    .line 1108
    .line 1109
    const/4 v4, 0x1

    .line 1110
    if-eq v13, v4, :cond_4a

    .line 1111
    .line 1112
    const/4 v4, 0x2

    .line 1113
    if-eq v13, v4, :cond_4a

    .line 1114
    .line 1115
    const/4 v4, 0x5

    .line 1116
    if-eq v13, v4, :cond_4a

    .line 1117
    .line 1118
    const/4 v4, 0x6

    .line 1119
    :cond_4a
    invoke-direct {v3, v14, v2, v1}, Lhb;-><init>(Ljava/util/ArrayList;ILandroid/view/MotionEvent;)V

    .line 1120
    .line 1121
    .line 1122
    :goto_2f
    iget-object v1, v0, Lq9;->L0:Llq1;

    .line 1123
    .line 1124
    if-eqz v3, :cond_71

    .line 1125
    .line 1126
    invoke-virtual {v0}, Lq9;->getFocusOwner()Ly91;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v0

    .line 1130
    check-cast v0, Ldh;

    .line 1131
    .line 1132
    iget-object v2, v0, Ldh;->d:Ljava/lang/Object;

    .line 1133
    .line 1134
    check-cast v2, Lw91;

    .line 1135
    .line 1136
    iget-boolean v2, v2, Lw91;->e:Z

    .line 1137
    .line 1138
    if-eqz v2, :cond_4c

    .line 1139
    .line 1140
    const-string v0, "FocusRelatedWarning: Dispatching indirect pointer event while the focus system is invalidated."

    .line 1141
    .line 1142
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1143
    .line 1144
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1145
    .line 1146
    .line 1147
    :cond_4b
    const/4 v0, 0x0

    .line 1148
    goto/16 :goto_45

    .line 1149
    .line 1150
    :cond_4c
    invoke-virtual {v0}, Ldh;->f()Lka1;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v0

    .line 1154
    if-eqz v0, :cond_59

    .line 1155
    .line 1156
    iget-object v2, v0, Lmd2;->n:Lmd2;

    .line 1157
    .line 1158
    iget-boolean v2, v2, Lmd2;->A:Z

    .line 1159
    .line 1160
    if-nez v2, :cond_4d

    .line 1161
    .line 1162
    invoke-static/range {v22 .. v22}, Lar1;->b(Ljava/lang/String;)V

    .line 1163
    .line 1164
    .line 1165
    :cond_4d
    iget-object v2, v0, Lmd2;->n:Lmd2;

    .line 1166
    .line 1167
    invoke-static {v0}, Lw80;->R(Ljr0;)Lxy1;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v0

    .line 1171
    :goto_30
    if-eqz v0, :cond_58

    .line 1172
    .line 1173
    iget-object v4, v0, Lxy1;->S:Lbo;

    .line 1174
    .line 1175
    iget-object v4, v4, Lbo;->g:Ljava/lang/Object;

    .line 1176
    .line 1177
    check-cast v4, Lmd2;

    .line 1178
    .line 1179
    iget v4, v4, Lmd2;->q:I

    .line 1180
    .line 1181
    const/high16 v23, 0x200000

    .line 1182
    .line 1183
    and-int v4, v4, v23

    .line 1184
    .line 1185
    if-eqz v4, :cond_56

    .line 1186
    .line 1187
    :goto_31
    if-eqz v2, :cond_56

    .line 1188
    .line 1189
    iget v4, v2, Lmd2;->p:I

    .line 1190
    .line 1191
    and-int v4, v4, v23

    .line 1192
    .line 1193
    if-eqz v4, :cond_55

    .line 1194
    .line 1195
    move-object v4, v2

    .line 1196
    const/4 v5, 0x0

    .line 1197
    :goto_32
    if-eqz v4, :cond_55

    .line 1198
    .line 1199
    instance-of v6, v4, Ljq1;

    .line 1200
    .line 1201
    if-eqz v6, :cond_4e

    .line 1202
    .line 1203
    goto/16 :goto_37

    .line 1204
    .line 1205
    :cond_4e
    iget v6, v4, Lmd2;->p:I

    .line 1206
    .line 1207
    and-int v6, v6, v23

    .line 1208
    .line 1209
    if-eqz v6, :cond_54

    .line 1210
    .line 1211
    instance-of v6, v4, Lkr0;

    .line 1212
    .line 1213
    if-eqz v6, :cond_54

    .line 1214
    .line 1215
    move-object v6, v4

    .line 1216
    check-cast v6, Lkr0;

    .line 1217
    .line 1218
    iget-object v6, v6, Lkr0;->C:Lmd2;

    .line 1219
    .line 1220
    const/4 v7, 0x0

    .line 1221
    :goto_33
    if-eqz v6, :cond_53

    .line 1222
    .line 1223
    iget v8, v6, Lmd2;->p:I

    .line 1224
    .line 1225
    and-int v8, v8, v23

    .line 1226
    .line 1227
    if-eqz v8, :cond_52

    .line 1228
    .line 1229
    add-int/lit8 v7, v7, 0x1

    .line 1230
    .line 1231
    const/4 v8, 0x1

    .line 1232
    if-ne v7, v8, :cond_4f

    .line 1233
    .line 1234
    move-object v4, v6

    .line 1235
    goto :goto_34

    .line 1236
    :cond_4f
    if-nez v5, :cond_50

    .line 1237
    .line 1238
    new-instance v5, Lug2;

    .line 1239
    .line 1240
    move/from16 v8, v18

    .line 1241
    .line 1242
    new-array v10, v8, [Lmd2;

    .line 1243
    .line 1244
    invoke-direct {v5, v10}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 1245
    .line 1246
    .line 1247
    :cond_50
    if-eqz v4, :cond_51

    .line 1248
    .line 1249
    invoke-virtual {v5, v4}, Lug2;->c(Ljava/lang/Object;)V

    .line 1250
    .line 1251
    .line 1252
    const/4 v4, 0x0

    .line 1253
    :cond_51
    invoke-virtual {v5, v6}, Lug2;->c(Ljava/lang/Object;)V

    .line 1254
    .line 1255
    .line 1256
    :cond_52
    :goto_34
    iget-object v6, v6, Lmd2;->s:Lmd2;

    .line 1257
    .line 1258
    const/16 v18, 0x10

    .line 1259
    .line 1260
    const/high16 v23, 0x200000

    .line 1261
    .line 1262
    goto :goto_33

    .line 1263
    :cond_53
    const/4 v8, 0x1

    .line 1264
    if-ne v7, v8, :cond_54

    .line 1265
    .line 1266
    :goto_35
    const/16 v18, 0x10

    .line 1267
    .line 1268
    const/high16 v23, 0x200000

    .line 1269
    .line 1270
    goto :goto_32

    .line 1271
    :cond_54
    invoke-static {v5}, Lw80;->g(Lug2;)Lmd2;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v4

    .line 1275
    goto :goto_35

    .line 1276
    :cond_55
    iget-object v2, v2, Lmd2;->r:Lmd2;

    .line 1277
    .line 1278
    const/16 v18, 0x10

    .line 1279
    .line 1280
    const/high16 v23, 0x200000

    .line 1281
    .line 1282
    goto :goto_31

    .line 1283
    :cond_56
    invoke-virtual {v0}, Lxy1;->u()Lxy1;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v0

    .line 1287
    if-eqz v0, :cond_57

    .line 1288
    .line 1289
    iget-object v2, v0, Lxy1;->S:Lbo;

    .line 1290
    .line 1291
    if-eqz v2, :cond_57

    .line 1292
    .line 1293
    iget-object v2, v2, Lbo;->f:Ljava/lang/Object;

    .line 1294
    .line 1295
    check-cast v2, Lgw3;

    .line 1296
    .line 1297
    goto :goto_36

    .line 1298
    :cond_57
    const/4 v2, 0x0

    .line 1299
    :goto_36
    const/16 v18, 0x10

    .line 1300
    .line 1301
    goto/16 :goto_30

    .line 1302
    .line 1303
    :cond_58
    const/4 v4, 0x0

    .line 1304
    :goto_37
    check-cast v4, Ljq1;

    .line 1305
    .line 1306
    goto :goto_38

    .line 1307
    :cond_59
    const/4 v4, 0x0

    .line 1308
    :goto_38
    if-eqz v4, :cond_6c

    .line 1309
    .line 1310
    move-object v0, v4

    .line 1311
    check-cast v0, Lmd2;

    .line 1312
    .line 1313
    iget-object v2, v0, Lmd2;->n:Lmd2;

    .line 1314
    .line 1315
    iget-boolean v2, v2, Lmd2;->A:Z

    .line 1316
    .line 1317
    if-nez v2, :cond_5a

    .line 1318
    .line 1319
    invoke-static/range {v22 .. v22}, Lar1;->b(Ljava/lang/String;)V

    .line 1320
    .line 1321
    .line 1322
    :cond_5a
    iget-object v0, v0, Lmd2;->n:Lmd2;

    .line 1323
    .line 1324
    iget-object v0, v0, Lmd2;->r:Lmd2;

    .line 1325
    .line 1326
    invoke-static {v4}, Lw80;->R(Ljr0;)Lxy1;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v2

    .line 1330
    const/4 v5, 0x0

    .line 1331
    :goto_39
    if-eqz v2, :cond_66

    .line 1332
    .line 1333
    iget-object v6, v2, Lxy1;->S:Lbo;

    .line 1334
    .line 1335
    iget-object v6, v6, Lbo;->g:Ljava/lang/Object;

    .line 1336
    .line 1337
    check-cast v6, Lmd2;

    .line 1338
    .line 1339
    iget v6, v6, Lmd2;->q:I

    .line 1340
    .line 1341
    const/high16 v23, 0x200000

    .line 1342
    .line 1343
    and-int v6, v6, v23

    .line 1344
    .line 1345
    if-eqz v6, :cond_64

    .line 1346
    .line 1347
    :goto_3a
    if-eqz v0, :cond_64

    .line 1348
    .line 1349
    iget v6, v0, Lmd2;->p:I

    .line 1350
    .line 1351
    and-int v6, v6, v23

    .line 1352
    .line 1353
    if-eqz v6, :cond_63

    .line 1354
    .line 1355
    move-object v6, v0

    .line 1356
    const/4 v7, 0x0

    .line 1357
    :goto_3b
    if-eqz v6, :cond_63

    .line 1358
    .line 1359
    instance-of v8, v6, Ljq1;

    .line 1360
    .line 1361
    if-eqz v8, :cond_5c

    .line 1362
    .line 1363
    if-nez v5, :cond_5b

    .line 1364
    .line 1365
    new-instance v5, Ljava/util/ArrayList;

    .line 1366
    .line 1367
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1368
    .line 1369
    .line 1370
    :cond_5b
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1371
    .line 1372
    .line 1373
    const/4 v8, 0x0

    .line 1374
    goto :goto_3c

    .line 1375
    :cond_5c
    const/4 v8, 0x1

    .line 1376
    :goto_3c
    if-eqz v8, :cond_62

    .line 1377
    .line 1378
    iget v8, v6, Lmd2;->p:I

    .line 1379
    .line 1380
    const/high16 v23, 0x200000

    .line 1381
    .line 1382
    and-int v8, v8, v23

    .line 1383
    .line 1384
    if-eqz v8, :cond_62

    .line 1385
    .line 1386
    instance-of v8, v6, Lkr0;

    .line 1387
    .line 1388
    if-eqz v8, :cond_62

    .line 1389
    .line 1390
    move-object v8, v6

    .line 1391
    check-cast v8, Lkr0;

    .line 1392
    .line 1393
    iget-object v8, v8, Lkr0;->C:Lmd2;

    .line 1394
    .line 1395
    const/4 v10, 0x0

    .line 1396
    :goto_3d
    if-eqz v8, :cond_61

    .line 1397
    .line 1398
    iget v11, v8, Lmd2;->p:I

    .line 1399
    .line 1400
    and-int v11, v11, v23

    .line 1401
    .line 1402
    if-eqz v11, :cond_60

    .line 1403
    .line 1404
    add-int/lit8 v10, v10, 0x1

    .line 1405
    .line 1406
    const/4 v11, 0x1

    .line 1407
    if-ne v10, v11, :cond_5d

    .line 1408
    .line 1409
    move-object v6, v8

    .line 1410
    goto :goto_3e

    .line 1411
    :cond_5d
    if-nez v7, :cond_5e

    .line 1412
    .line 1413
    new-instance v7, Lug2;

    .line 1414
    .line 1415
    const/16 v11, 0x10

    .line 1416
    .line 1417
    new-array v12, v11, [Lmd2;

    .line 1418
    .line 1419
    invoke-direct {v7, v12}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 1420
    .line 1421
    .line 1422
    :cond_5e
    if-eqz v6, :cond_5f

    .line 1423
    .line 1424
    invoke-virtual {v7, v6}, Lug2;->c(Ljava/lang/Object;)V

    .line 1425
    .line 1426
    .line 1427
    const/4 v6, 0x0

    .line 1428
    :cond_5f
    invoke-virtual {v7, v8}, Lug2;->c(Ljava/lang/Object;)V

    .line 1429
    .line 1430
    .line 1431
    :cond_60
    :goto_3e
    iget-object v8, v8, Lmd2;->s:Lmd2;

    .line 1432
    .line 1433
    const/high16 v23, 0x200000

    .line 1434
    .line 1435
    goto :goto_3d

    .line 1436
    :cond_61
    const/4 v8, 0x1

    .line 1437
    if-ne v10, v8, :cond_62

    .line 1438
    .line 1439
    goto :goto_3b

    .line 1440
    :cond_62
    invoke-static {v7}, Lw80;->g(Lug2;)Lmd2;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v6

    .line 1444
    goto :goto_3b

    .line 1445
    :cond_63
    iget-object v0, v0, Lmd2;->r:Lmd2;

    .line 1446
    .line 1447
    const/high16 v23, 0x200000

    .line 1448
    .line 1449
    goto :goto_3a

    .line 1450
    :cond_64
    invoke-virtual {v2}, Lxy1;->u()Lxy1;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v2

    .line 1454
    if-eqz v2, :cond_65

    .line 1455
    .line 1456
    iget-object v0, v2, Lxy1;->S:Lbo;

    .line 1457
    .line 1458
    if-eqz v0, :cond_65

    .line 1459
    .line 1460
    iget-object v0, v0, Lbo;->f:Ljava/lang/Object;

    .line 1461
    .line 1462
    check-cast v0, Lgw3;

    .line 1463
    .line 1464
    goto/16 :goto_39

    .line 1465
    .line 1466
    :cond_65
    const/4 v0, 0x0

    .line 1467
    goto/16 :goto_39

    .line 1468
    .line 1469
    :cond_66
    sget-object v0, Lwv2;->n:Lwv2;

    .line 1470
    .line 1471
    if-eqz v5, :cond_68

    .line 1472
    .line 1473
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 1474
    .line 1475
    .line 1476
    move-result v2

    .line 1477
    add-int/lit8 v2, v2, -0x1

    .line 1478
    .line 1479
    if-ltz v2, :cond_68

    .line 1480
    .line 1481
    :goto_3f
    add-int/lit8 v6, v2, -0x1

    .line 1482
    .line 1483
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v2

    .line 1487
    check-cast v2, Ljq1;

    .line 1488
    .line 1489
    invoke-interface {v2, v3, v0}, Ljq1;->B(Lhb;Lwv2;)V

    .line 1490
    .line 1491
    .line 1492
    if-gez v6, :cond_67

    .line 1493
    .line 1494
    goto :goto_40

    .line 1495
    :cond_67
    move v2, v6

    .line 1496
    goto :goto_3f

    .line 1497
    :cond_68
    :goto_40
    invoke-interface {v4, v3, v0}, Ljq1;->B(Lhb;Lwv2;)V

    .line 1498
    .line 1499
    .line 1500
    sget-object v0, Lwv2;->o:Lwv2;

    .line 1501
    .line 1502
    invoke-interface {v4, v3, v0}, Ljq1;->B(Lhb;Lwv2;)V

    .line 1503
    .line 1504
    .line 1505
    if-eqz v5, :cond_69

    .line 1506
    .line 1507
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 1508
    .line 1509
    .line 1510
    move-result v2

    .line 1511
    const/4 v6, 0x0

    .line 1512
    :goto_41
    if-ge v6, v2, :cond_69

    .line 1513
    .line 1514
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v7

    .line 1518
    check-cast v7, Ljq1;

    .line 1519
    .line 1520
    invoke-interface {v7, v3, v0}, Ljq1;->B(Lhb;Lwv2;)V

    .line 1521
    .line 1522
    .line 1523
    add-int/lit8 v6, v6, 0x1

    .line 1524
    .line 1525
    goto :goto_41

    .line 1526
    :cond_69
    sget-object v0, Lwv2;->p:Lwv2;

    .line 1527
    .line 1528
    if-eqz v5, :cond_6b

    .line 1529
    .line 1530
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 1531
    .line 1532
    .line 1533
    move-result v2

    .line 1534
    add-int/lit8 v2, v2, -0x1

    .line 1535
    .line 1536
    if-ltz v2, :cond_6b

    .line 1537
    .line 1538
    :goto_42
    add-int/lit8 v6, v2, -0x1

    .line 1539
    .line 1540
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1541
    .line 1542
    .line 1543
    move-result-object v2

    .line 1544
    check-cast v2, Ljq1;

    .line 1545
    .line 1546
    invoke-interface {v2, v3, v0}, Ljq1;->B(Lhb;Lwv2;)V

    .line 1547
    .line 1548
    .line 1549
    if-gez v6, :cond_6a

    .line 1550
    .line 1551
    goto :goto_43

    .line 1552
    :cond_6a
    move v2, v6

    .line 1553
    goto :goto_42

    .line 1554
    :cond_6b
    :goto_43
    invoke-interface {v4, v3, v0}, Ljq1;->B(Lhb;Lwv2;)V

    .line 1555
    .line 1556
    .line 1557
    :cond_6c
    iget-object v0, v3, Lhb;->c:Ljava/lang/Object;

    .line 1558
    .line 1559
    check-cast v0, Ljava/util/ArrayList;

    .line 1560
    .line 1561
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1562
    .line 1563
    .line 1564
    move-result v2

    .line 1565
    const/4 v4, 0x0

    .line 1566
    :goto_44
    if-ge v4, v2, :cond_4b

    .line 1567
    .line 1568
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1569
    .line 1570
    .line 1571
    move-result-object v5

    .line 1572
    check-cast v5, Lbq1;

    .line 1573
    .line 1574
    iget-boolean v5, v5, Lbq1;->i:Z

    .line 1575
    .line 1576
    if-eqz v5, :cond_6d

    .line 1577
    .line 1578
    const/4 v0, 0x1

    .line 1579
    goto :goto_45

    .line 1580
    :cond_6d
    add-int/lit8 v4, v4, 0x1

    .line 1581
    .line 1582
    goto :goto_44

    .line 1583
    :goto_45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1584
    .line 1585
    .line 1586
    iget-object v2, v3, Lhb;->d:Ljava/lang/Object;

    .line 1587
    .line 1588
    check-cast v2, Landroid/view/MotionEvent;

    .line 1589
    .line 1590
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    .line 1591
    .line 1592
    .line 1593
    move-result v4

    .line 1594
    if-eqz v4, :cond_6f

    .line 1595
    .line 1596
    const/4 v8, 0x1

    .line 1597
    if-eq v4, v8, :cond_6e

    .line 1598
    .line 1599
    const/4 v3, 0x2

    .line 1600
    if-eq v4, v3, :cond_6e

    .line 1601
    .line 1602
    goto :goto_46

    .line 1603
    :cond_6e
    if-eqz v0, :cond_70

    .line 1604
    .line 1605
    const/4 v9, 0x0

    .line 1606
    iput v9, v1, Llq1;->b:I

    .line 1607
    .line 1608
    iput-boolean v8, v1, Llq1;->a:Z

    .line 1609
    .line 1610
    goto :goto_46

    .line 1611
    :cond_6f
    const/4 v8, 0x1

    .line 1612
    const/4 v9, 0x0

    .line 1613
    iget v0, v3, Lhb;->b:I

    .line 1614
    .line 1615
    iput v0, v1, Llq1;->b:I

    .line 1616
    .line 1617
    iput-boolean v9, v1, Llq1;->a:Z

    .line 1618
    .line 1619
    :cond_70
    :goto_46
    iget-object v0, v1, Llq1;->d:Ljava/lang/Object;

    .line 1620
    .line 1621
    check-cast v0, Landroid/view/GestureDetector;

    .line 1622
    .line 1623
    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1624
    .line 1625
    .line 1626
    return v8

    .line 1627
    :cond_71
    invoke-virtual {v0}, Lq9;->getFocusOwner()Ly91;

    .line 1628
    .line 1629
    .line 1630
    move-result-object v0

    .line 1631
    check-cast v0, Ldh;

    .line 1632
    .line 1633
    invoke-virtual {v0}, Ldh;->f()Lka1;

    .line 1634
    .line 1635
    .line 1636
    move-result-object v0

    .line 1637
    if-eqz v0, :cond_7e

    .line 1638
    .line 1639
    iget-object v2, v0, Lmd2;->n:Lmd2;

    .line 1640
    .line 1641
    iget-boolean v2, v2, Lmd2;->A:Z

    .line 1642
    .line 1643
    if-nez v2, :cond_72

    .line 1644
    .line 1645
    invoke-static/range {v22 .. v22}, Lar1;->b(Ljava/lang/String;)V

    .line 1646
    .line 1647
    .line 1648
    :cond_72
    iget-object v2, v0, Lmd2;->n:Lmd2;

    .line 1649
    .line 1650
    invoke-static {v0}, Lw80;->R(Ljr0;)Lxy1;

    .line 1651
    .line 1652
    .line 1653
    move-result-object v0

    .line 1654
    :goto_47
    if-eqz v0, :cond_7d

    .line 1655
    .line 1656
    iget-object v3, v0, Lxy1;->S:Lbo;

    .line 1657
    .line 1658
    iget-object v3, v3, Lbo;->g:Ljava/lang/Object;

    .line 1659
    .line 1660
    check-cast v3, Lmd2;

    .line 1661
    .line 1662
    iget v3, v3, Lmd2;->q:I

    .line 1663
    .line 1664
    const/high16 v23, 0x200000

    .line 1665
    .line 1666
    and-int v3, v3, v23

    .line 1667
    .line 1668
    if-eqz v3, :cond_7b

    .line 1669
    .line 1670
    :goto_48
    if-eqz v2, :cond_7b

    .line 1671
    .line 1672
    iget v3, v2, Lmd2;->p:I

    .line 1673
    .line 1674
    and-int v3, v3, v23

    .line 1675
    .line 1676
    if-eqz v3, :cond_7a

    .line 1677
    .line 1678
    move-object v3, v2

    .line 1679
    const/4 v4, 0x0

    .line 1680
    :goto_49
    if-eqz v3, :cond_7a

    .line 1681
    .line 1682
    instance-of v5, v3, Ljq1;

    .line 1683
    .line 1684
    if-eqz v5, :cond_73

    .line 1685
    .line 1686
    goto :goto_4d

    .line 1687
    :cond_73
    iget v5, v3, Lmd2;->p:I

    .line 1688
    .line 1689
    and-int v5, v5, v23

    .line 1690
    .line 1691
    if-eqz v5, :cond_79

    .line 1692
    .line 1693
    instance-of v5, v3, Lkr0;

    .line 1694
    .line 1695
    if-eqz v5, :cond_79

    .line 1696
    .line 1697
    move-object v5, v3

    .line 1698
    check-cast v5, Lkr0;

    .line 1699
    .line 1700
    iget-object v5, v5, Lkr0;->C:Lmd2;

    .line 1701
    .line 1702
    const/4 v6, 0x0

    .line 1703
    :goto_4a
    if-eqz v5, :cond_78

    .line 1704
    .line 1705
    iget v7, v5, Lmd2;->p:I

    .line 1706
    .line 1707
    and-int v7, v7, v23

    .line 1708
    .line 1709
    if-eqz v7, :cond_77

    .line 1710
    .line 1711
    add-int/lit8 v6, v6, 0x1

    .line 1712
    .line 1713
    const/4 v8, 0x1

    .line 1714
    if-ne v6, v8, :cond_74

    .line 1715
    .line 1716
    move-object v3, v5

    .line 1717
    goto :goto_4b

    .line 1718
    :cond_74
    if-nez v4, :cond_75

    .line 1719
    .line 1720
    new-instance v4, Lug2;

    .line 1721
    .line 1722
    const/16 v8, 0x10

    .line 1723
    .line 1724
    new-array v7, v8, [Lmd2;

    .line 1725
    .line 1726
    invoke-direct {v4, v7}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 1727
    .line 1728
    .line 1729
    :cond_75
    if-eqz v3, :cond_76

    .line 1730
    .line 1731
    invoke-virtual {v4, v3}, Lug2;->c(Ljava/lang/Object;)V

    .line 1732
    .line 1733
    .line 1734
    const/4 v3, 0x0

    .line 1735
    :cond_76
    invoke-virtual {v4, v5}, Lug2;->c(Ljava/lang/Object;)V

    .line 1736
    .line 1737
    .line 1738
    :cond_77
    :goto_4b
    iget-object v5, v5, Lmd2;->s:Lmd2;

    .line 1739
    .line 1740
    const/high16 v23, 0x200000

    .line 1741
    .line 1742
    goto :goto_4a

    .line 1743
    :cond_78
    const/4 v8, 0x1

    .line 1744
    if-ne v6, v8, :cond_79

    .line 1745
    .line 1746
    :goto_4c
    const/high16 v23, 0x200000

    .line 1747
    .line 1748
    goto :goto_49

    .line 1749
    :cond_79
    invoke-static {v4}, Lw80;->g(Lug2;)Lmd2;

    .line 1750
    .line 1751
    .line 1752
    move-result-object v3

    .line 1753
    goto :goto_4c

    .line 1754
    :cond_7a
    iget-object v2, v2, Lmd2;->r:Lmd2;

    .line 1755
    .line 1756
    const/high16 v23, 0x200000

    .line 1757
    .line 1758
    goto :goto_48

    .line 1759
    :cond_7b
    invoke-virtual {v0}, Lxy1;->u()Lxy1;

    .line 1760
    .line 1761
    .line 1762
    move-result-object v0

    .line 1763
    if-eqz v0, :cond_7c

    .line 1764
    .line 1765
    iget-object v2, v0, Lxy1;->S:Lbo;

    .line 1766
    .line 1767
    if-eqz v2, :cond_7c

    .line 1768
    .line 1769
    iget-object v2, v2, Lbo;->f:Ljava/lang/Object;

    .line 1770
    .line 1771
    check-cast v2, Lgw3;

    .line 1772
    .line 1773
    goto :goto_47

    .line 1774
    :cond_7c
    const/4 v2, 0x0

    .line 1775
    goto :goto_47

    .line 1776
    :cond_7d
    const/4 v3, 0x0

    .line 1777
    :goto_4d
    check-cast v3, Ljq1;

    .line 1778
    .line 1779
    goto :goto_4e

    .line 1780
    :cond_7e
    const/4 v3, 0x0

    .line 1781
    :goto_4e
    if-eqz v3, :cond_8e

    .line 1782
    .line 1783
    move-object v0, v3

    .line 1784
    check-cast v0, Lmd2;

    .line 1785
    .line 1786
    iget-object v2, v0, Lmd2;->n:Lmd2;

    .line 1787
    .line 1788
    iget-boolean v2, v2, Lmd2;->A:Z

    .line 1789
    .line 1790
    if-nez v2, :cond_7f

    .line 1791
    .line 1792
    invoke-static/range {v22 .. v22}, Lar1;->b(Ljava/lang/String;)V

    .line 1793
    .line 1794
    .line 1795
    :cond_7f
    iget-object v0, v0, Lmd2;->n:Lmd2;

    .line 1796
    .line 1797
    iget-object v0, v0, Lmd2;->r:Lmd2;

    .line 1798
    .line 1799
    invoke-static {v3}, Lw80;->R(Ljr0;)Lxy1;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v2

    .line 1803
    const/4 v4, 0x0

    .line 1804
    :goto_4f
    if-eqz v2, :cond_8d

    .line 1805
    .line 1806
    iget-object v5, v2, Lxy1;->S:Lbo;

    .line 1807
    .line 1808
    iget-object v5, v5, Lbo;->g:Ljava/lang/Object;

    .line 1809
    .line 1810
    check-cast v5, Lmd2;

    .line 1811
    .line 1812
    iget v5, v5, Lmd2;->q:I

    .line 1813
    .line 1814
    const/high16 v23, 0x200000

    .line 1815
    .line 1816
    and-int v5, v5, v23

    .line 1817
    .line 1818
    if-eqz v5, :cond_8b

    .line 1819
    .line 1820
    :goto_50
    if-eqz v0, :cond_8b

    .line 1821
    .line 1822
    iget v5, v0, Lmd2;->p:I

    .line 1823
    .line 1824
    and-int v5, v5, v23

    .line 1825
    .line 1826
    if-eqz v5, :cond_8a

    .line 1827
    .line 1828
    move-object v5, v0

    .line 1829
    const/4 v6, 0x0

    .line 1830
    :goto_51
    if-eqz v5, :cond_8a

    .line 1831
    .line 1832
    instance-of v7, v5, Ljq1;

    .line 1833
    .line 1834
    if-eqz v7, :cond_81

    .line 1835
    .line 1836
    if-nez v4, :cond_80

    .line 1837
    .line 1838
    new-instance v4, Ljava/util/ArrayList;

    .line 1839
    .line 1840
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1841
    .line 1842
    .line 1843
    :cond_80
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1844
    .line 1845
    .line 1846
    const/4 v7, 0x0

    .line 1847
    goto :goto_52

    .line 1848
    :cond_81
    const/4 v7, 0x1

    .line 1849
    :goto_52
    if-eqz v7, :cond_88

    .line 1850
    .line 1851
    iget v7, v5, Lmd2;->p:I

    .line 1852
    .line 1853
    const/high16 v23, 0x200000

    .line 1854
    .line 1855
    and-int v7, v7, v23

    .line 1856
    .line 1857
    if-eqz v7, :cond_87

    .line 1858
    .line 1859
    instance-of v7, v5, Lkr0;

    .line 1860
    .line 1861
    if-eqz v7, :cond_87

    .line 1862
    .line 1863
    move-object v7, v5

    .line 1864
    check-cast v7, Lkr0;

    .line 1865
    .line 1866
    iget-object v7, v7, Lkr0;->C:Lmd2;

    .line 1867
    .line 1868
    const/4 v8, 0x0

    .line 1869
    :goto_53
    if-eqz v7, :cond_86

    .line 1870
    .line 1871
    iget v10, v7, Lmd2;->p:I

    .line 1872
    .line 1873
    and-int v10, v10, v23

    .line 1874
    .line 1875
    if-eqz v10, :cond_82

    .line 1876
    .line 1877
    add-int/lit8 v8, v8, 0x1

    .line 1878
    .line 1879
    const/4 v11, 0x1

    .line 1880
    if-ne v8, v11, :cond_83

    .line 1881
    .line 1882
    move-object v5, v7

    .line 1883
    :cond_82
    const/16 v11, 0x10

    .line 1884
    .line 1885
    goto :goto_55

    .line 1886
    :cond_83
    if-nez v6, :cond_84

    .line 1887
    .line 1888
    new-instance v6, Lug2;

    .line 1889
    .line 1890
    const/16 v11, 0x10

    .line 1891
    .line 1892
    new-array v10, v11, [Lmd2;

    .line 1893
    .line 1894
    invoke-direct {v6, v10}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 1895
    .line 1896
    .line 1897
    goto :goto_54

    .line 1898
    :cond_84
    const/16 v11, 0x10

    .line 1899
    .line 1900
    :goto_54
    if-eqz v5, :cond_85

    .line 1901
    .line 1902
    invoke-virtual {v6, v5}, Lug2;->c(Ljava/lang/Object;)V

    .line 1903
    .line 1904
    .line 1905
    const/4 v5, 0x0

    .line 1906
    :cond_85
    invoke-virtual {v6, v7}, Lug2;->c(Ljava/lang/Object;)V

    .line 1907
    .line 1908
    .line 1909
    :goto_55
    iget-object v7, v7, Lmd2;->s:Lmd2;

    .line 1910
    .line 1911
    goto :goto_53

    .line 1912
    :cond_86
    const/4 v7, 0x1

    .line 1913
    const/16 v11, 0x10

    .line 1914
    .line 1915
    if-ne v8, v7, :cond_89

    .line 1916
    .line 1917
    goto :goto_51

    .line 1918
    :cond_87
    const/16 v11, 0x10

    .line 1919
    .line 1920
    goto :goto_56

    .line 1921
    :cond_88
    const/16 v11, 0x10

    .line 1922
    .line 1923
    const/high16 v23, 0x200000

    .line 1924
    .line 1925
    :cond_89
    :goto_56
    invoke-static {v6}, Lw80;->g(Lug2;)Lmd2;

    .line 1926
    .line 1927
    .line 1928
    move-result-object v5

    .line 1929
    goto :goto_51

    .line 1930
    :cond_8a
    const/16 v11, 0x10

    .line 1931
    .line 1932
    const/high16 v23, 0x200000

    .line 1933
    .line 1934
    iget-object v0, v0, Lmd2;->r:Lmd2;

    .line 1935
    .line 1936
    goto :goto_50

    .line 1937
    :cond_8b
    const/16 v11, 0x10

    .line 1938
    .line 1939
    invoke-virtual {v2}, Lxy1;->u()Lxy1;

    .line 1940
    .line 1941
    .line 1942
    move-result-object v2

    .line 1943
    if-eqz v2, :cond_8c

    .line 1944
    .line 1945
    iget-object v0, v2, Lxy1;->S:Lbo;

    .line 1946
    .line 1947
    if-eqz v0, :cond_8c

    .line 1948
    .line 1949
    iget-object v0, v0, Lbo;->f:Ljava/lang/Object;

    .line 1950
    .line 1951
    check-cast v0, Lgw3;

    .line 1952
    .line 1953
    goto/16 :goto_4f

    .line 1954
    .line 1955
    :cond_8c
    const/4 v0, 0x0

    .line 1956
    goto/16 :goto_4f

    .line 1957
    .line 1958
    :cond_8d
    invoke-interface {v3}, Ljq1;->x()V

    .line 1959
    .line 1960
    .line 1961
    if-eqz v4, :cond_8e

    .line 1962
    .line 1963
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 1964
    .line 1965
    .line 1966
    move-result v0

    .line 1967
    const/4 v2, 0x0

    .line 1968
    :goto_57
    if-ge v2, v0, :cond_8e

    .line 1969
    .line 1970
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1971
    .line 1972
    .line 1973
    move-result-object v3

    .line 1974
    check-cast v3, Ljq1;

    .line 1975
    .line 1976
    invoke-interface {v3}, Ljq1;->x()V

    .line 1977
    .line 1978
    .line 1979
    add-int/lit8 v2, v2, 0x1

    .line 1980
    .line 1981
    goto :goto_57

    .line 1982
    :cond_8e
    const/4 v9, 0x0

    .line 1983
    iput v9, v1, Llq1;->b:I

    .line 1984
    .line 1985
    const/4 v8, 0x1

    .line 1986
    iput-boolean v8, v1, Llq1;->a:Z

    .line 1987
    .line 1988
    return v8

    .line 1989
    :cond_8f
    const/4 v9, 0x0

    .line 1990
    const-string v0, "MotionEvent must be a touch navigation source"

    .line 1991
    .line 1992
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 1993
    .line 1994
    .line 1995
    return v9

    .line 1996
    :cond_90
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 1997
    .line 1998
    .line 1999
    move-result v0

    .line 2000
    return v0

    .line 2001
    :cond_91
    :goto_58
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 2002
    .line 2003
    .line 2004
    move-result v0

    .line 2005
    return v0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v0, Lq9;->J0:Z

    .line 6
    .line 7
    iget-object v3, v0, Lq9;->I0:Lc9;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3}, Lc9;->run()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {v1}, Lq9;->m(Landroid/view/MotionEvent;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v4, 0x0

    .line 22
    if-nez v2, :cond_18

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    goto/16 :goto_d

    .line 31
    .line 32
    :cond_1
    iget-object v2, v0, Lq9;->I:Lv9;

    .line 33
    .line 34
    iget-object v5, v2, Lv9;->q:Lq9;

    .line 35
    .line 36
    iget-object v6, v2, Lv9;->t:Landroid/view/accessibility/AccessibilityManager;

    .line 37
    .line 38
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    const/16 v8, 0xa

    .line 43
    .line 44
    const/4 v9, 0x7

    .line 45
    const/4 v10, 0x1

    .line 46
    if-eqz v7, :cond_10

    .line 47
    .line 48
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_10

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    const/16 v7, 0x100

    .line 59
    .line 60
    const/16 v11, 0x80

    .line 61
    .line 62
    const/16 v12, 0xc

    .line 63
    .line 64
    const/4 v13, 0x0

    .line 65
    const/high16 v14, -0x80000000

    .line 66
    .line 67
    if-eq v6, v9, :cond_6

    .line 68
    .line 69
    const/16 v15, 0x9

    .line 70
    .line 71
    if-eq v6, v15, :cond_6

    .line 72
    .line 73
    if-eq v6, v8, :cond_3

    .line 74
    .line 75
    :cond_2
    move v2, v4

    .line 76
    :goto_0
    move/from16 v23, v10

    .line 77
    .line 78
    goto/16 :goto_9

    .line 79
    .line 80
    :cond_3
    iget v6, v2, Lv9;->r:I

    .line 81
    .line 82
    if-eq v6, v14, :cond_5

    .line 83
    .line 84
    if-ne v6, v14, :cond_4

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    iput v14, v2, Lv9;->r:I

    .line 88
    .line 89
    invoke-static {v2, v14, v11, v13, v12}, Lv9;->y(Lv9;IILjava/lang/Integer;I)V

    .line 90
    .line 91
    .line 92
    invoke-static {v2, v6, v7, v13, v12}, Lv9;->y(Lv9;IILjava/lang/Integer;I)V

    .line 93
    .line 94
    .line 95
    :goto_1
    move v2, v10

    .line 96
    move/from16 v23, v2

    .line 97
    .line 98
    goto/16 :goto_9

    .line 99
    .line 100
    :cond_5
    invoke-virtual {v5}, Lq9;->getAndroidViewsHandler()Lid;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    if-eqz v2, :cond_2

    .line 105
    .line 106
    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    goto :goto_0

    .line 111
    :cond_6
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 116
    .line 117
    .line 118
    move-result v15

    .line 119
    invoke-virtual {v5, v10}, Lq9;->q(Z)V

    .line 120
    .line 121
    .line 122
    new-instance v20, Lzj1;

    .line 123
    .line 124
    invoke-direct/range {v20 .. v20}, Lzj1;-><init>()V

    .line 125
    .line 126
    .line 127
    move/from16 v23, v10

    .line 128
    .line 129
    invoke-virtual {v5}, Lq9;->getRoot()Lxy1;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    int-to-long v8, v6

    .line 138
    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    int-to-long v14, v6

    .line 143
    const/16 v6, 0x20

    .line 144
    .line 145
    shl-long/2addr v8, v6

    .line 146
    const-wide v16, 0xffffffffL

    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    and-long v14, v14, v16

    .line 152
    .line 153
    or-long/2addr v8, v14

    .line 154
    iget-object v6, v10, Lxy1;->S:Lbo;

    .line 155
    .line 156
    iget-object v10, v6, Lbo;->e:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v10, Lmm2;

    .line 159
    .line 160
    sget-object v14, Lmm2;->d0:Lo83;

    .line 161
    .line 162
    invoke-virtual {v10, v8, v9}, Lmm2;->L0(J)J

    .line 163
    .line 164
    .line 165
    move-result-wide v18

    .line 166
    iget-object v6, v6, Lbo;->e:Ljava/lang/Object;

    .line 167
    .line 168
    move-object/from16 v16, v6

    .line 169
    .line 170
    check-cast v16, Lmm2;

    .line 171
    .line 172
    sget-object v17, Lmm2;->g0:Lb21;

    .line 173
    .line 174
    const/16 v21, 0x1

    .line 175
    .line 176
    const/16 v22, 0x1

    .line 177
    .line 178
    invoke-virtual/range {v16 .. v22}, Lmm2;->T0(Lkm2;JLzj1;IZ)V

    .line 179
    .line 180
    .line 181
    move-object/from16 v6, v20

    .line 182
    .line 183
    iget-object v6, v6, Lzj1;->n:Ldg2;

    .line 184
    .line 185
    iget v8, v6, Ldg2;->b:I

    .line 186
    .line 187
    add-int/lit8 v8, v8, -0x1

    .line 188
    .line 189
    :goto_2
    const/4 v9, -0x1

    .line 190
    if-ge v9, v8, :cond_8

    .line 191
    .line 192
    invoke-virtual {v6, v8}, Ldg2;->f(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    check-cast v9, Lmd2;

    .line 200
    .line 201
    invoke-static {v9}, Lw80;->R(Ljr0;)Lxy1;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    invoke-virtual {v5}, Lq9;->getAndroidViewsHandler()Lid;

    .line 206
    .line 207
    .line 208
    move-result-object v10

    .line 209
    if-eqz v10, :cond_7

    .line 210
    .line 211
    invoke-virtual {v10}, Lid;->getLayoutNodeToHolder()Ljava/util/HashMap;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v10

    .line 219
    check-cast v10, Lbd;

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_7
    move-object v10, v13

    .line 223
    :goto_3
    if-eqz v10, :cond_9

    .line 224
    .line 225
    :cond_8
    const/high16 v10, -0x80000000

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_9
    iget-object v10, v9, Lxy1;->S:Lbo;

    .line 229
    .line 230
    const/16 v14, 0x8

    .line 231
    .line 232
    invoke-virtual {v10, v14}, Lbo;->f(I)Z

    .line 233
    .line 234
    .line 235
    move-result v10

    .line 236
    if-nez v10, :cond_a

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_a
    iget v10, v9, Lxy1;->o:I

    .line 240
    .line 241
    invoke-virtual {v2, v10}, Lv9;->u(I)I

    .line 242
    .line 243
    .line 244
    move-result v10

    .line 245
    invoke-static {v9, v4}, Lca;->b(Lxy1;Z)Lgh3;

    .line 246
    .line 247
    .line 248
    move-result-object v9

    .line 249
    invoke-static {v9}, Lse0;->x(Lgh3;)Z

    .line 250
    .line 251
    .line 252
    move-result v14

    .line 253
    if-nez v14, :cond_b

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_b
    invoke-virtual {v9}, Lgh3;->k()Lbh3;

    .line 257
    .line 258
    .line 259
    move-result-object v9

    .line 260
    sget-object v14, Llh3;->A:Loh3;

    .line 261
    .line 262
    iget-object v9, v9, Lbh3;->n:Lkg2;

    .line 263
    .line 264
    invoke-virtual {v9, v14}, Lkg2;->c(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v9

    .line 268
    if-eqz v9, :cond_c

    .line 269
    .line 270
    :goto_4
    add-int/lit8 v8, v8, -0x1

    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_c
    :goto_5
    invoke-virtual {v5}, Lq9;->getAndroidViewsHandler()Lid;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    if-eqz v5, :cond_d

    .line 278
    .line 279
    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    goto :goto_6

    .line 284
    :cond_d
    move v5, v4

    .line 285
    :goto_6
    iget v6, v2, Lv9;->r:I

    .line 286
    .line 287
    if-ne v6, v10, :cond_e

    .line 288
    .line 289
    :goto_7
    const/high16 v2, -0x80000000

    .line 290
    .line 291
    goto :goto_8

    .line 292
    :cond_e
    iput v10, v2, Lv9;->r:I

    .line 293
    .line 294
    invoke-static {v2, v10, v11, v13, v12}, Lv9;->y(Lv9;IILjava/lang/Integer;I)V

    .line 295
    .line 296
    .line 297
    invoke-static {v2, v6, v7, v13, v12}, Lv9;->y(Lv9;IILjava/lang/Integer;I)V

    .line 298
    .line 299
    .line 300
    goto :goto_7

    .line 301
    :goto_8
    if-ne v10, v2, :cond_f

    .line 302
    .line 303
    move v2, v5

    .line 304
    goto :goto_9

    .line 305
    :cond_f
    move/from16 v2, v23

    .line 306
    .line 307
    goto :goto_9

    .line 308
    :cond_10
    move/from16 v23, v10

    .line 309
    .line 310
    move v2, v4

    .line 311
    :goto_9
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    const/4 v6, 0x7

    .line 316
    if-eq v5, v6, :cond_15

    .line 317
    .line 318
    const/16 v6, 0xa

    .line 319
    .line 320
    if-eq v5, v6, :cond_12

    .line 321
    .line 322
    :cond_11
    move/from16 v5, v23

    .line 323
    .line 324
    goto :goto_b

    .line 325
    :cond_12
    invoke-virtual/range {p0 .. p1}, Lq9;->n(Landroid/view/MotionEvent;)Z

    .line 326
    .line 327
    .line 328
    move-result v5

    .line 329
    if-eqz v5, :cond_11

    .line 330
    .line 331
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 332
    .line 333
    .line 334
    move-result v4

    .line 335
    const/4 v5, 0x3

    .line 336
    if-ne v4, v5, :cond_13

    .line 337
    .line 338
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 339
    .line 340
    .line 341
    move-result v4

    .line 342
    if-eqz v4, :cond_13

    .line 343
    .line 344
    goto :goto_a

    .line 345
    :cond_13
    iget-object v4, v0, Lq9;->z0:Landroid/view/MotionEvent;

    .line 346
    .line 347
    if-eqz v4, :cond_14

    .line 348
    .line 349
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 350
    .line 351
    .line 352
    :cond_14
    invoke-static {v1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    iput-object v1, v0, Lq9;->z0:Landroid/view/MotionEvent;

    .line 357
    .line 358
    move/from16 v5, v23

    .line 359
    .line 360
    iput-boolean v5, v0, Lq9;->J0:Z

    .line 361
    .line 362
    const-wide/16 v4, 0x8

    .line 363
    .line 364
    invoke-virtual {v0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 365
    .line 366
    .line 367
    return v2

    .line 368
    :cond_15
    move/from16 v5, v23

    .line 369
    .line 370
    invoke-virtual/range {p0 .. p1}, Lq9;->o(Landroid/view/MotionEvent;)Z

    .line 371
    .line 372
    .line 373
    move-result v3

    .line 374
    if-nez v3, :cond_16

    .line 375
    .line 376
    :goto_a
    return v2

    .line 377
    :cond_16
    :goto_b
    invoke-virtual/range {p0 .. p1}, Lq9;->h(Landroid/view/MotionEvent;)I

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    and-int/2addr v0, v5

    .line 382
    if-eqz v0, :cond_17

    .line 383
    .line 384
    goto :goto_c

    .line 385
    :cond_17
    if-eqz v2, :cond_18

    .line 386
    .line 387
    :goto_c
    return v5

    .line 388
    :cond_18
    :goto_d
    return v4
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lq9;->n:Lpb0;

    .line 9
    .line 10
    iget-object v0, v0, Lpb0;->t:Ldh1;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-object v0, Lgd4;->n:Lws2;

    .line 20
    .line 21
    new-instance v3, Lgw2;

    .line 22
    .line 23
    invoke-direct {v3, v2}, Lgw2;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v3}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v2, Lic0;->y:Lic0;

    .line 34
    .line 35
    check-cast v0, Ldh;

    .line 36
    .line 37
    invoke-virtual {v0, p1, v2}, Ldh;->d(Landroid/view/KeyEvent;Lne1;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return v1

    .line 51
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v2, Lj9;

    .line 58
    .line 59
    invoke-direct {v2, v1, p0, p1}, Lj9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    check-cast v0, Ldh;

    .line 63
    .line 64
    invoke-virtual {v0, p1, v2}, Ldh;->d(Landroid/view/KeyEvent;Lne1;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    return p0
.end method

.method public final dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_b

    .line 8
    .line 9
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ldh;

    .line 14
    .line 15
    iget-object v3, v0, Ldh;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Lw91;

    .line 18
    .line 19
    iget-boolean v3, v3, Lw91;->e:Z

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    const-string v0, "FocusRelatedWarning: Dispatching intercepted soft keyboard event while the focus system is invalidated."

    .line 24
    .line 25
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_5

    .line 31
    .line 32
    :cond_0
    iget-object v0, v0, Ldh;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lka1;

    .line 35
    .line 36
    invoke-static {v0}, Lgg4;->u(Lka1;)Lka1;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_b

    .line 41
    .line 42
    iget-object v3, v0, Lmd2;->n:Lmd2;

    .line 43
    .line 44
    iget-boolean v3, v3, Lmd2;->A:Z

    .line 45
    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    const-string v3, "visitAncestors called on an unattached node"

    .line 49
    .line 50
    invoke-static {v3}, Lar1;->b(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v3, v0, Lmd2;->n:Lmd2;

    .line 54
    .line 55
    invoke-static {v0}, Lw80;->R(Ljr0;)Lxy1;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_0
    if-eqz v0, :cond_b

    .line 60
    .line 61
    iget-object v4, v0, Lxy1;->S:Lbo;

    .line 62
    .line 63
    iget-object v4, v4, Lbo;->g:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v4, Lmd2;

    .line 66
    .line 67
    iget v4, v4, Lmd2;->q:I

    .line 68
    .line 69
    const/high16 v5, 0x20000

    .line 70
    .line 71
    and-int/2addr v4, v5

    .line 72
    const/4 v6, 0x0

    .line 73
    if-eqz v4, :cond_9

    .line 74
    .line 75
    :goto_1
    if-eqz v3, :cond_9

    .line 76
    .line 77
    iget v4, v3, Lmd2;->p:I

    .line 78
    .line 79
    and-int/2addr v4, v5

    .line 80
    if-eqz v4, :cond_8

    .line 81
    .line 82
    move-object v4, v3

    .line 83
    move-object v7, v6

    .line 84
    :goto_2
    if-eqz v4, :cond_8

    .line 85
    .line 86
    iget v8, v4, Lmd2;->p:I

    .line 87
    .line 88
    and-int/2addr v8, v5

    .line 89
    if-eqz v8, :cond_7

    .line 90
    .line 91
    instance-of v8, v4, Lkr0;

    .line 92
    .line 93
    if-eqz v8, :cond_7

    .line 94
    .line 95
    move-object v8, v4

    .line 96
    check-cast v8, Lkr0;

    .line 97
    .line 98
    iget-object v8, v8, Lkr0;->C:Lmd2;

    .line 99
    .line 100
    move v9, v1

    .line 101
    :goto_3
    if-eqz v8, :cond_6

    .line 102
    .line 103
    iget v10, v8, Lmd2;->p:I

    .line 104
    .line 105
    and-int/2addr v10, v5

    .line 106
    if-eqz v10, :cond_5

    .line 107
    .line 108
    add-int/lit8 v9, v9, 0x1

    .line 109
    .line 110
    if-ne v9, v2, :cond_2

    .line 111
    .line 112
    move-object v4, v8

    .line 113
    goto :goto_4

    .line 114
    :cond_2
    if-nez v7, :cond_3

    .line 115
    .line 116
    new-instance v7, Lug2;

    .line 117
    .line 118
    const/16 v10, 0x10

    .line 119
    .line 120
    new-array v10, v10, [Lmd2;

    .line 121
    .line 122
    invoke-direct {v7, v10}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    if-eqz v4, :cond_4

    .line 126
    .line 127
    invoke-virtual {v7, v4}, Lug2;->c(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    move-object v4, v6

    .line 131
    :cond_4
    invoke-virtual {v7, v8}, Lug2;->c(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_5
    :goto_4
    iget-object v8, v8, Lmd2;->s:Lmd2;

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_6
    if-ne v9, v2, :cond_7

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_7
    invoke-static {v7}, Lw80;->g(Lug2;)Lmd2;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    goto :goto_2

    .line 145
    :cond_8
    iget-object v3, v3, Lmd2;->r:Lmd2;

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_9
    invoke-virtual {v0}, Lxy1;->u()Lxy1;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    if-eqz v0, :cond_a

    .line 153
    .line 154
    iget-object v3, v0, Lxy1;->S:Lbo;

    .line 155
    .line 156
    if-eqz v3, :cond_a

    .line 157
    .line 158
    iget-object v3, v3, Lbo;->f:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v3, Lgw3;

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_a
    move-object v3, v6

    .line 164
    goto :goto_0

    .line 165
    :cond_b
    :goto_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    if-eqz p0, :cond_c

    .line 170
    .line 171
    return v2

    .line 172
    :cond_c
    return v1
.end method

.method public final dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 1

    .line 1
    invoke-static {}, Lq9;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lq9;->Q0:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    iput-boolean v0, p0, Lq9;->Q0:Z

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lq9;->C(Landroid/view/ViewStructure;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    iput-boolean v0, p0, Lq9;->Q0:Z

    .line 23
    .line 24
    throw p1
.end method

.method public final dispatchProvideStructure(Landroid/view/ViewStructure;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lw9;->a:Lw9;

    .line 8
    .line 9
    invoke-virtual {p0}, Lq9;->getView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p1, p0}, Lw9;->a(Landroid/view/ViewStructure;Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lq9;->J0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lq9;->I0:Lc9;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lq9;->z0:Landroid/view/MotionEvent;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-ne v3, v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eq v2, v3, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iput-boolean v1, p0, Lq9;->J0:Z

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lc9;->run()V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_1
    invoke-static {p1}, Lq9;->m(Landroid/view/MotionEvent;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_12

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    goto/16 :goto_b

    .line 62
    .line 63
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/4 v2, 0x2

    .line 68
    if-ne v0, v2, :cond_4

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lq9;->o(Landroid/view/MotionEvent;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_4

    .line 75
    .line 76
    goto/16 :goto_b

    .line 77
    .line 78
    :cond_4
    invoke-virtual {p0, p1}, Lq9;->h(Landroid/view/MotionEvent;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    and-int/lit8 v2, v0, 0x2

    .line 83
    .line 84
    const/4 v3, 0x1

    .line 85
    if-eqz v2, :cond_5

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 92
    .line 93
    .line 94
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_7

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    const/4 v4, 0x5

    .line 105
    if-ne v2, v4, :cond_6

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_6
    move v2, v1

    .line 109
    goto :goto_3

    .line 110
    :cond_7
    :goto_2
    move v2, v3

    .line 111
    :goto_3
    const/16 v4, 0x2002

    .line 112
    .line 113
    invoke-virtual {p1, v4}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-nez v4, :cond_9

    .line 118
    .line 119
    const v4, 0x100008

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v4}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_8

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_8
    move v4, v1

    .line 130
    goto :goto_5

    .line 131
    :cond_9
    :goto_4
    move v4, v3

    .line 132
    :goto_5
    if-eqz v2, :cond_11

    .line 133
    .line 134
    if-eqz v4, :cond_11

    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    instance-of v4, v2, Landroid/view/View;

    .line 141
    .line 142
    if-eqz v4, :cond_a

    .line 143
    .line 144
    check-cast v2, Landroid/view/View;

    .line 145
    .line 146
    goto :goto_6

    .line 147
    :cond_a
    const/4 v2, 0x0

    .line 148
    :goto_6
    if-eqz v2, :cond_b

    .line 149
    .line 150
    const v4, 0x7f090048

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    if-nez v2, :cond_c

    .line 158
    .line 159
    :cond_b
    new-instance v2, Lpk;

    .line 160
    .line 161
    invoke-direct {v2, v3}, Lpk;-><init>(I)V

    .line 162
    .line 163
    .line 164
    :cond_c
    new-instance v4, Lpk;

    .line 165
    .line 166
    invoke-direct {v4, v3}, Lpk;-><init>(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-eqz v2, :cond_11

    .line 174
    .line 175
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    check-cast v2, Ldh;

    .line 180
    .line 181
    invoke-virtual {v2}, Ldh;->f()Lka1;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    if-eqz v2, :cond_11

    .line 186
    .line 187
    invoke-static {v2}, Lw80;->Q(Ljr0;)Lmm2;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-static {v2}, Lzf5;->D(Lgy1;)Lgy1;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-interface {v4, v2, v3}, Lgy1;->H(Lgy1;Z)Ll33;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    int-to-long v4, v4

    .line 212
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    int-to-long v6, p1

    .line 217
    const/16 p1, 0x20

    .line 218
    .line 219
    shl-long/2addr v4, p1

    .line 220
    const-wide v8, 0xffffffffL

    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    and-long/2addr v6, v8

    .line 226
    or-long/2addr v4, v6

    .line 227
    shr-long v6, v4, p1

    .line 228
    .line 229
    long-to-int p1, v6

    .line 230
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    and-long/2addr v4, v8

    .line 235
    long-to-int v4, v4

    .line 236
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    iget v5, v2, Ll33;->a:F

    .line 241
    .line 242
    cmpl-float v5, p1, v5

    .line 243
    .line 244
    if-ltz v5, :cond_d

    .line 245
    .line 246
    move v5, v3

    .line 247
    goto :goto_7

    .line 248
    :cond_d
    move v5, v1

    .line 249
    :goto_7
    iget v6, v2, Ll33;->c:F

    .line 250
    .line 251
    cmpg-float p1, p1, v6

    .line 252
    .line 253
    if-gez p1, :cond_e

    .line 254
    .line 255
    move p1, v3

    .line 256
    goto :goto_8

    .line 257
    :cond_e
    move p1, v1

    .line 258
    :goto_8
    and-int/2addr p1, v5

    .line 259
    iget v5, v2, Ll33;->b:F

    .line 260
    .line 261
    cmpl-float v5, v4, v5

    .line 262
    .line 263
    if-ltz v5, :cond_f

    .line 264
    .line 265
    move v5, v3

    .line 266
    goto :goto_9

    .line 267
    :cond_f
    move v5, v1

    .line 268
    :goto_9
    and-int/2addr p1, v5

    .line 269
    iget v2, v2, Ll33;->d:F

    .line 270
    .line 271
    cmpg-float v2, v4, v2

    .line 272
    .line 273
    if-gez v2, :cond_10

    .line 274
    .line 275
    move v2, v3

    .line 276
    goto :goto_a

    .line 277
    :cond_10
    move v2, v1

    .line 278
    :goto_a
    and-int/2addr p1, v2

    .line 279
    if-nez p1, :cond_11

    .line 280
    .line 281
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    check-cast p0, Ldh;

    .line 286
    .line 287
    const/16 p1, 0x8

    .line 288
    .line 289
    invoke-virtual {p0, p1, v1, v3}, Ldh;->b(IZZ)Z

    .line 290
    .line 291
    .line 292
    :cond_11
    and-int/lit8 p0, v0, 0x1

    .line 293
    .line 294
    if-eqz p0, :cond_12

    .line 295
    .line 296
    return v3

    .line 297
    :cond_12
    :goto_b
    return v1
.end method

.method public final findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 6

    .line 1
    sget-object v0, Lq9;->U0:Lqv3;

    .line 2
    .line 3
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v2, 0x1d

    .line 6
    .line 7
    if-lt v1, v2, :cond_0

    .line 8
    .line 9
    const-class p0, Landroid/view/View;

    .line 10
    .line 11
    const-string v1, "findViewByAccessibilityIdTraversal"

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    new-array v3, v2, [Ljava/lang/Class;

    .line 15
    .line 16
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    aput-object v4, v3, v5

    .line 20
    .line 21
    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 26
    .line 27
    .line 28
    new-array v1, v2, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    aput-object p1, v1, v5

    .line 35
    .line 36
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    instance-of p1, p0, Landroid/view/View;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    check-cast p0, Landroid/view/View;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_0
    invoke-static {p0, p1}, Lqv3;->o(Landroid/view/View;I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-object p0

    .line 52
    :catch_0
    :cond_1
    const/4 p0, 0x0

    .line 53
    return-object p0
.end method

.method public final focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 7

    .line 1
    if-eqz p1, :cond_c

    .line 2
    .line 3
    iget-object v0, p0, Lq9;->f0:Lab2;

    .line 4
    .line 5
    iget-boolean v0, v0, Lab2;->c:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    check-cast v0, Landroid/view/ViewGroup;

    .line 19
    .line 20
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, v0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-static {p0, v0}, Lca;->c(Landroid/view/View;Landroid/view/View;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v0, v1

    .line 39
    :goto_0
    if-ne p1, p0, :cond_3

    .line 40
    .line 41
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ldh;

    .line 46
    .line 47
    iget-object v2, v2, Ldh;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Lka1;

    .line 50
    .line 51
    invoke-static {v2}, Lgg4;->u(Lka1;)Lka1;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    invoke-static {v2}, Lgg4;->v(Lka1;)Ll33;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :cond_2
    if-nez v1, :cond_4

    .line 62
    .line 63
    invoke-static {p1, p0}, Lv91;->a(Landroid/view/View;Landroid/view/View;)Ll33;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-static {p1, p0}, Lv91;->a(Landroid/view/View;Landroid/view/View;)Ll33;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :cond_4
    :goto_1
    invoke-static {p2}, Lv91;->d(I)Lp91;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-eqz v2, :cond_5

    .line 77
    .line 78
    iget v2, v2, Lp91;->a:I

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    const/4 v2, 0x6

    .line 82
    :goto_2
    new-instance v3, Lw33;

    .line 83
    .line 84
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    new-instance v5, Lk9;

    .line 92
    .line 93
    const/4 v6, 0x0

    .line 94
    invoke-direct {v5, v6, v3}, Lk9;-><init>(ILw33;)V

    .line 95
    .line 96
    .line 97
    check-cast v4, Ldh;

    .line 98
    .line 99
    invoke-virtual {v4, v2, v1, v5}, Ldh;->e(ILl33;Lpe1;)Ljava/lang/Boolean;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    if-nez v4, :cond_6

    .line 104
    .line 105
    return-object p1

    .line 106
    :cond_6
    iget-object v3, v3, Lw33;->n:Ljava/lang/Object;

    .line 107
    .line 108
    if-nez v3, :cond_7

    .line 109
    .line 110
    if-nez v0, :cond_b

    .line 111
    .line 112
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0

    .line 117
    :cond_7
    if-nez v0, :cond_8

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_8
    const/4 p1, 0x1

    .line 121
    if-ne v2, p1, :cond_9

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_9
    const/4 p1, 0x2

    .line 125
    if-ne v2, p1, :cond_a

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_a
    check-cast v3, Lka1;

    .line 129
    .line 130
    invoke-static {v3}, Lgg4;->v(Lka1;)Ll33;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {v0, p0}, Lv91;->a(Landroid/view/View;Landroid/view/View;)Ll33;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-static {p1, p2, v1, v2}, Lqn0;->y(Ll33;Ll33;Ll33;I)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_b

    .line 143
    .line 144
    :goto_3
    return-object p0

    .line 145
    :cond_b
    return-object v0

    .line 146
    :cond_c
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    return-object p0
.end method

.method public final g(Lxy1;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->f0:Lab2;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lab2;->g(Lxy1;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getAccessibilityManager()Lw2;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->n:Lpb0;

    .line 2
    .line 3
    iget-object p0, p0, Lpb0;->k:Ls8;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getAndroidViewsHandler()Lid;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->c0:Lid;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic getAutofill()Lip;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lq9;->getAutofill()Lv8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getAutofill()Lv8;
    .locals 0

    .line 6
    iget-object p0, p0, Lq9;->U:Lv8;

    return-object p0
.end method

.method public bridge synthetic getAutofillManager()Lkp;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lq9;->getAutofillManager()Lw8;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getAutofillManager()Lw8;
    .locals 0

    .line 6
    iget-object p0, p0, Lq9;->V:Lw8;

    return-object p0
.end method

.method public getAutofillTree()Llp;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->L:Llp;

    .line 2
    .line 3
    return-object p0
.end method

.method public getClipboard()Lp60;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->n:Lpb0;

    .line 2
    .line 3
    iget-object p0, p0, Lpb0;->n:Lbx3;

    .line 4
    .line 5
    return-object p0
.end method

.method public getClipboardManager()Lq60;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->n:Lpb0;

    .line 2
    .line 3
    iget-object p0, p0, Lpb0;->m:Lgw4;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getComposeViewContext()Lpb0;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->n:Lpb0;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getComposeViewContextIncrementedDuringInit$ui()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lq9;->P0:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getConfiguration()Landroid/content/res/Configuration;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->S:Lws2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lws2;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/content/res/Configuration;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getContentCaptureManager$ui()Lha;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->J:Lha;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCoroutineContext()Lhi0;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->z:Lhi0;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDensity()Las0;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->w:Lws2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lws2;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Las0;

    .line 8
    .line 9
    return-object p0
.end method

.method public bridge synthetic getDragAndDropManager()Lfw0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lq9;->getDragAndDropManager()Lsa;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getDragAndDropManager()Lsa;
    .locals 0

    .line 6
    iget-object p0, p0, Lq9;->A:Lsa;

    return-object p0
.end method

.method public getEmbeddedViewFocusRect()Ll33;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ldh;

    .line 13
    .line 14
    iget-object p0, p0, Ldh;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lka1;

    .line 17
    .line 18
    invoke-static {p0}, Lgg4;->u(Lka1;)Lka1;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-static {p0}, Lgg4;->v(Lka1;)Ll33;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_0
    return-object v1

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-static {v0, p0}, Lv91;->a(Landroid/view/View;Landroid/view/View;)Ll33;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_2
    return-object v1
.end method

.method public getFocusOwner()Ly91;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->y:Ldh;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFocusedRect(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lq9;->getEmbeddedViewFocusRect()Ll33;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p0, v0, Ll33;->a:F

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 14
    .line 15
    iget p0, v0, Ll33;->b:F

    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 22
    .line 23
    iget p0, v0, Ll33;->c:F

    .line 24
    .line 25
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 30
    .line 31
    iget p0, v0, Ll33;->d:F

    .line 32
    .line 33
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget-object v1, Ll9;->p:Ll9;

    .line 45
    .line 46
    check-cast v0, Ldh;

    .line 47
    .line 48
    const/4 v2, 0x6

    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-virtual {v0, v2, v3, v1}, Ldh;->e(ILl33;Lpe1;)Ljava/lang/Boolean;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-static {v0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    const/high16 p0, -0x80000000

    .line 63
    .line 64
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public getFontFamilyResolver()Lqa1;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->u0:Lpg2;

    .line 2
    .line 3
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lqa1;

    .line 8
    .line 9
    return-object p0
.end method

.method public getFontLoader()Lpa1;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->n:Lpb0;

    .line 2
    .line 3
    iget-object p0, p0, Lpb0;->o:Lpa1;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getFrameEndScheduler$ui()Lt22;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->r:Lt22;

    .line 2
    .line 3
    return-object p0
.end method

.method public getGraphicsContext()Lyh1;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->K:Lfb;

    .line 2
    .line 3
    return-object p0
.end method

.method public getHapticFeedBack()Lbj1;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->n:Lpb0;

    .line 2
    .line 3
    iget-object p0, p0, Lpb0;->q:Lbj1;

    .line 4
    .line 5
    return-object p0
.end method

.method public getHasPendingMeasureOrLayout()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq9;->f0:Lab2;

    .line 2
    .line 3
    iget-object v0, v0, Lab2;->b:Leh;

    .line 4
    .line 5
    invoke-virtual {v0}, Leh;->C()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lq9;->u:Lvh;

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public getImportantForAutofill()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public bridge synthetic getInputModeManager()Lkr1;
    .locals 0

    .line 22
    invoke-virtual {p0}, Lq9;->getInputModeManager()Llr1;

    move-result-object p0

    return-object p0
.end method

.method public getInputModeManager()Llr1;
    .locals 2

    .line 1
    iget-object v0, p0, Lq9;->w0:Llr1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Llr1;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x2

    .line 16
    :goto_0
    invoke-direct {v0, v1}, Llr1;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lq9;->w0:Llr1;

    .line 20
    .line 21
    :cond_1
    return-object v0
.end method

.method public final getInsetsWatcher()Lxe4;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->D:Lxe4;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLastMatrixRecalculationAnimationTime$ui()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lq9;->m0:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLayoutDirection()Lhy1;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->v0:Lws2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lws2;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lhy1;

    .line 8
    .line 9
    return-object p0
.end method

.method public bridge synthetic getLayoutNodes()Lhs1;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lq9;->getLayoutNodes()Ltf2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getLayoutNodes()Ltf2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltf2;"
        }
    .end annotation

    .line 6
    iget-object p0, p0, Lq9;->F:Ltf2;

    return-object p0
.end method

.method public getLocaleList()Le72;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->T:Los0;

    .line 2
    .line 3
    invoke-virtual {p0}, Los0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Le72;

    .line 8
    .line 9
    return-object p0
.end method

.method public getMeasureIteration()J
    .locals 2

    .line 1
    iget-object p0, p0, Lq9;->f0:Lab2;

    .line 2
    .line 3
    iget-boolean v0, p0, Lab2;->c:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "measureIteration should be only used during the measure/layout pass"

    .line 8
    .line 9
    invoke-static {v0}, Lar1;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-wide v0, p0, Lab2;->g:J

    .line 13
    .line 14
    return-wide v0
.end method

.method public getModifierLocalManager()Lod2;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->x0:Lod2;

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic getOutOfFrameExecutor()Lir2;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lq9;->getOutOfFrameExecutor()Lq9;

    move-result-object p0

    return-object p0
.end method

.method public getOutOfFrameExecutor()Lq9;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getPlacementScope()Lcv2;
    .locals 2

    .line 1
    sget v0, Lev2;->b:I

    .line 2
    .line 3
    new-instance v0, Ll82;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, v1, p0}, Ll82;-><init>(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final getPlayNavigationSoundEffect$ui()Ldf1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldf1;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lq9;->K0:Ldf1;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPointerIconService()Lyv2;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->T0:Lbx3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPrimaryDirectionalMotionAxisOverride-dqNNBbU$ui()Laq1;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->q:Laq1;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRectManager()Ln33;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->G:Ln33;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRetainedValuesStore()Ll83;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->t:Ll83;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRoot()Lxy1;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->E:Lxy1;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRootForTest()Lia3;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final getScrollCaptureInProgress$ui()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lq9;->R0:Ldd1;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lws2;

    .line 14
    .line 15
    invoke-virtual {p0}, Lws2;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public getSemanticsOwner()Ljh3;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->H:Ljh3;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSharedDrawScope()Lzy1;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->n:Lpb0;

    .line 2
    .line 3
    iget-object p0, p0, Lpb0;->s:Lzy1;

    .line 4
    .line 5
    return-object p0
.end method

.method public getShowLayoutBounds()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lxf;->a:Lxf;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lxf;->a(Landroid/view/View;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    iget-boolean p0, p0, Lq9;->b0:Z

    .line 15
    .line 16
    return p0
.end method

.method public getSnapshotObserver()Lur2;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->a0:Lur2;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSoftwareKeyboardController()Lrp3;
    .locals 2

    .line 1
    iget-object v0, p0, Lq9;->t0:Lbx3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lbx3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lq9;->getTextInputService()Lhx3;

    .line 8
    .line 9
    .line 10
    const/16 v1, 0x1b

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lbx3;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lq9;->t0:Lbx3;

    .line 16
    .line 17
    :cond_0
    return-object v0
.end method

.method public getTextInputService()Lhx3;
    .locals 3

    .line 1
    iget-object v0, p0, Lq9;->r0:Lhx3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lhx3;

    .line 6
    .line 7
    invoke-direct {p0}, Lq9;->getLegacyTextInputServiceAndroid()Lix3;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lq9;->r0:Lhx3;

    .line 20
    .line 21
    :cond_0
    return-object v0
.end method

.method public getTextToolbar()Lby3;
    .locals 2

    .line 1
    iget-object v0, p0, Lq9;->y0:Lbx3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lbx3;

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lbx3;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lq9;->y0:Lbx3;

    .line 13
    .line 14
    :cond_0
    return-object v0
.end method

.method public final getUncaughtExceptionHandler$ui()Lha3;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getViewConfiguration()Lnb4;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->n:Lpb0;

    .line 2
    .line 3
    iget-object p0, p0, Lpb0;->r:Ltc;

    .line 4
    .line 5
    return-object p0
.end method

.method public getWindowInfo()Lfd4;
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->n:Lpb0;

    .line 2
    .line 3
    iget-object p0, p0, Lpb0;->t:Ldh1;

    .line 4
    .line 5
    return-object p0
.end method

.method public final h(Landroid/view/MotionEvent;)I
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lq9;->H0:Lo9;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lq9;->E(Landroid/view/MotionEvent;)V

    .line 12
    .line 13
    .line 14
    const/4 v8, 0x1

    .line 15
    iput-boolean v8, v1, Lq9;->n0:Z

    .line 16
    .line 17
    invoke-virtual {v1, v7}, Lq9;->q(Z)V

    .line 18
    .line 19
    .line 20
    const-string v2, "AndroidOwner:onTouch"

    .line 21
    .line 22
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 23
    .line 24
    .line 25
    :try_start_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    iget-object v2, v1, Lq9;->z0:Landroid/view/MotionEvent;

    .line 30
    .line 31
    const/4 v10, 0x3

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 35
    .line 36
    .line 37
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    if-ne v3, v10, :cond_0

    .line 39
    .line 40
    move v11, v8

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v11, v7

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto/16 :goto_12

    .line 46
    .line 47
    :goto_0
    const/16 v12, 0xa

    .line 48
    .line 49
    iget-object v13, v1, Lq9;->R:Lic;

    .line 50
    .line 51
    if-eqz v2, :cond_5

    .line 52
    .line 53
    :try_start_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-ne v3, v4, :cond_2

    .line 62
    .line 63
    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eq v3, v4, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    move v3, v7

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    :goto_1
    move v3, v8

    .line 77
    :goto_2
    if-eqz v3, :cond_5

    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_4

    .line 84
    .line 85
    :cond_3
    move-object v14, v2

    .line 86
    goto :goto_3

    .line 87
    :cond_4
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    const/4 v4, 0x2

    .line 94
    if-eq v3, v4, :cond_3

    .line 95
    .line 96
    const/4 v4, 0x6

    .line 97
    if-eq v3, v4, :cond_3

    .line 98
    .line 99
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eq v3, v12, :cond_5

    .line 104
    .line 105
    if-eqz v11, :cond_5

    .line 106
    .line 107
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 108
    .line 109
    .line 110
    move-result-wide v4

    .line 111
    const/4 v6, 0x1

    .line 112
    const/16 v3, 0xa

    .line 113
    .line 114
    invoke-virtual/range {v1 .. v6}, Lq9;->L(Landroid/view/MotionEvent;IJZ)V

    .line 115
    .line 116
    .line 117
    move-object v14, v2

    .line 118
    goto :goto_5

    .line 119
    :catchall_1
    move-exception v0

    .line 120
    move-object/from16 v1, p0

    .line 121
    .line 122
    goto/16 :goto_12

    .line 123
    .line 124
    :cond_5
    move-object v14, v2

    .line 125
    goto :goto_5

    .line 126
    :goto_3
    iget-boolean v1, v13, Lic;->a:Z

    .line 127
    .line 128
    if-nez v1, :cond_7

    .line 129
    .line 130
    iget-object v1, v13, Lic;->d:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v1, Ldh1;

    .line 133
    .line 134
    iget-object v1, v1, Ldh1;->n:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v1, Le82;

    .line 137
    .line 138
    iget v2, v1, Le82;->q:I

    .line 139
    .line 140
    iget-object v3, v1, Le82;->p:[Ljava/lang/Object;

    .line 141
    .line 142
    move v4, v7

    .line 143
    :goto_4
    if-ge v4, v2, :cond_6

    .line 144
    .line 145
    const/4 v5, 0x0

    .line 146
    aput-object v5, v3, v4

    .line 147
    .line 148
    add-int/lit8 v4, v4, 0x1

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_6
    iput v7, v1, Le82;->q:I

    .line 152
    .line 153
    iput-boolean v7, v1, Le82;->n:Z

    .line 154
    .line 155
    iget-object v1, v13, Lic;->c:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v1, Lwj1;

    .line 158
    .line 159
    invoke-virtual {v1}, Lwj1;->c()V

    .line 160
    .line 161
    .line 162
    :cond_7
    :goto_5
    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-ne v1, v10, :cond_8

    .line 167
    .line 168
    move v1, v8

    .line 169
    goto :goto_6

    .line 170
    :cond_8
    move v1, v7

    .line 171
    :goto_6
    const/16 v15, 0x9

    .line 172
    .line 173
    if-nez v11, :cond_9

    .line 174
    .line 175
    if-eqz v1, :cond_9

    .line 176
    .line 177
    if-eq v9, v10, :cond_9

    .line 178
    .line 179
    if-eq v9, v15, :cond_9

    .line 180
    .line 181
    invoke-virtual/range {p0 .. p1}, Lq9;->n(Landroid/view/MotionEvent;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_9

    .line 186
    .line 187
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    .line 188
    .line 189
    .line 190
    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 191
    const/4 v6, 0x1

    .line 192
    const/16 v3, 0x9

    .line 193
    .line 194
    move-object/from16 v1, p0

    .line 195
    .line 196
    move-object v2, v0

    .line 197
    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lq9;->L(Landroid/view/MotionEvent;IJZ)V

    .line 198
    .line 199
    .line 200
    goto :goto_7

    .line 201
    :cond_9
    move-object/from16 v1, p0

    .line 202
    .line 203
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_a

    .line 208
    .line 209
    move v0, v8

    .line 210
    goto :goto_8

    .line 211
    :cond_a
    move v0, v7

    .line 212
    :goto_8
    const/16 v2, 0x8

    .line 213
    .line 214
    if-ne v9, v2, :cond_b

    .line 215
    .line 216
    if-nez v0, :cond_b

    .line 217
    .line 218
    if-eqz v14, :cond_b

    .line 219
    .line 220
    const/16 v0, 0x1002

    .line 221
    .line 222
    invoke-virtual {v14, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-nez v0, :cond_b

    .line 227
    .line 228
    move v0, v8

    .line 229
    goto :goto_9

    .line 230
    :cond_b
    move v0, v7

    .line 231
    :goto_9
    if-eqz v14, :cond_c

    .line 232
    .line 233
    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .line 234
    .line 235
    .line 236
    :cond_c
    iget-object v2, v1, Lq9;->z0:Landroid/view/MotionEvent;

    .line 237
    .line 238
    if-eqz v2, :cond_17

    .line 239
    .line 240
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    if-ne v2, v12, :cond_17

    .line 245
    .line 246
    iget-object v2, v1, Lq9;->z0:Landroid/view/MotionEvent;

    .line 247
    .line 248
    if-eqz v2, :cond_d

    .line 249
    .line 250
    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    goto :goto_a

    .line 255
    :cond_d
    const/4 v2, -0x1

    .line 256
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 257
    .line 258
    .line 259
    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 260
    iget-object v4, v1, Lq9;->Q:Lbe2;

    .line 261
    .line 262
    if-ne v3, v15, :cond_e

    .line 263
    .line 264
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    if-nez v3, :cond_e

    .line 269
    .line 270
    if-ltz v2, :cond_17

    .line 271
    .line 272
    iget-object v3, v4, Lbe2;->c:Landroid/util/SparseBooleanArray;

    .line 273
    .line 274
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 275
    .line 276
    .line 277
    iget-object v3, v4, Lbe2;->b:Landroid/util/SparseLongArray;

    .line 278
    .line 279
    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->delete(I)V

    .line 280
    .line 281
    .line 282
    goto/16 :goto_f

    .line 283
    .line 284
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    if-nez v3, :cond_17

    .line 289
    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    if-nez v3, :cond_17

    .line 295
    .line 296
    iget-object v3, v1, Lq9;->z0:Landroid/view/MotionEvent;

    .line 297
    .line 298
    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 299
    .line 300
    if-eqz v3, :cond_f

    .line 301
    .line 302
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    goto :goto_b

    .line 307
    :cond_f
    move v3, v5

    .line 308
    :goto_b
    iget-object v6, v1, Lq9;->z0:Landroid/view/MotionEvent;

    .line 309
    .line 310
    if-eqz v6, :cond_10

    .line 311
    .line 312
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 317
    .line 318
    .line 319
    move-result v6

    .line 320
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 321
    .line 322
    .line 323
    move-result v9

    .line 324
    cmpg-float v3, v3, v6

    .line 325
    .line 326
    if-nez v3, :cond_11

    .line 327
    .line 328
    cmpg-float v3, v5, v9

    .line 329
    .line 330
    if-nez v3, :cond_11

    .line 331
    .line 332
    move v3, v7

    .line 333
    goto :goto_c

    .line 334
    :cond_11
    move v3, v8

    .line 335
    :goto_c
    iget-object v5, v1, Lq9;->z0:Landroid/view/MotionEvent;

    .line 336
    .line 337
    if-eqz v5, :cond_12

    .line 338
    .line 339
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getEventTime()J

    .line 340
    .line 341
    .line 342
    move-result-wide v5

    .line 343
    goto :goto_d

    .line 344
    :cond_12
    const-wide/16 v5, -0x1

    .line 345
    .line 346
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 347
    .line 348
    .line 349
    move-result-wide v9

    .line 350
    cmp-long v5, v5, v9

    .line 351
    .line 352
    if-eqz v5, :cond_13

    .line 353
    .line 354
    move v5, v8

    .line 355
    goto :goto_e

    .line 356
    :cond_13
    move v5, v7

    .line 357
    :goto_e
    if-nez v3, :cond_14

    .line 358
    .line 359
    if-eqz v5, :cond_17

    .line 360
    .line 361
    :cond_14
    if-ltz v2, :cond_15

    .line 362
    .line 363
    iget-object v3, v4, Lbe2;->c:Landroid/util/SparseBooleanArray;

    .line 364
    .line 365
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 366
    .line 367
    .line 368
    iget-object v3, v4, Lbe2;->b:Landroid/util/SparseLongArray;

    .line 369
    .line 370
    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->delete(I)V

    .line 371
    .line 372
    .line 373
    :cond_15
    iget-object v2, v13, Lic;->c:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast v2, Lwj1;

    .line 376
    .line 377
    iget-boolean v3, v2, Lwj1;->d:Z

    .line 378
    .line 379
    if-eqz v3, :cond_16

    .line 380
    .line 381
    iput-boolean v8, v2, Lwj1;->d:Z

    .line 382
    .line 383
    goto :goto_f

    .line 384
    :cond_16
    iget-object v2, v2, Lwj1;->g:Lrm2;

    .line 385
    .line 386
    iget-object v2, v2, Lrm2;->a:Lug2;

    .line 387
    .line 388
    invoke-virtual {v2}, Lug2;->h()V

    .line 389
    .line 390
    .line 391
    :cond_17
    :goto_f
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    iput-object v2, v1, Lq9;->z0:Landroid/view/MotionEvent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 396
    .line 397
    if-eqz v0, :cond_18

    .line 398
    .line 399
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 400
    .line 401
    .line 402
    move-result-wide v4

    .line 403
    const/4 v6, 0x1

    .line 404
    const/16 v3, 0xa

    .line 405
    .line 406
    move-object/from16 v2, p1

    .line 407
    .line 408
    invoke-virtual/range {v1 .. v6}, Lq9;->L(Landroid/view/MotionEvent;IJZ)V

    .line 409
    .line 410
    .line 411
    :cond_18
    invoke-virtual/range {p0 .. p1}, Lq9;->K(Landroid/view/MotionEvent;)I

    .line 412
    .line 413
    .line 414
    move-result v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 415
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 416
    .line 417
    .line 418
    and-int/lit8 v1, v9, 0x4

    .line 419
    .line 420
    if-eqz v1, :cond_1a

    .line 421
    .line 422
    :cond_19
    move-object/from16 v1, p0

    .line 423
    .line 424
    goto :goto_11

    .line 425
    :cond_1a
    if-eqz v0, :cond_19

    .line 426
    .line 427
    iget-object v0, v13, Lic;->c:Ljava/lang/Object;

    .line 428
    .line 429
    check-cast v0, Lwj1;

    .line 430
    .line 431
    iget-boolean v1, v0, Lwj1;->d:Z

    .line 432
    .line 433
    if-eqz v1, :cond_1b

    .line 434
    .line 435
    iput-boolean v8, v0, Lwj1;->d:Z

    .line 436
    .line 437
    goto :goto_10

    .line 438
    :cond_1b
    iget-object v0, v0, Lwj1;->g:Lrm2;

    .line 439
    .line 440
    iget-object v0, v0, Lrm2;->a:Lug2;

    .line 441
    .line 442
    invoke-virtual {v0}, Lug2;->h()V

    .line 443
    .line 444
    .line 445
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 446
    .line 447
    .line 448
    move-result-wide v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 449
    const/4 v6, 0x1

    .line 450
    const/16 v3, 0x9

    .line 451
    .line 452
    move-object/from16 v1, p0

    .line 453
    .line 454
    move-object/from16 v2, p1

    .line 455
    .line 456
    :try_start_7
    invoke-virtual/range {v1 .. v6}, Lq9;->L(Landroid/view/MotionEvent;IJZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 457
    .line 458
    .line 459
    goto :goto_11

    .line 460
    :catchall_2
    move-exception v0

    .line 461
    goto :goto_13

    .line 462
    :catchall_3
    move-exception v0

    .line 463
    move-object/from16 v1, p0

    .line 464
    .line 465
    goto :goto_13

    .line 466
    :goto_11
    iput-boolean v7, v1, Lq9;->n0:Z

    .line 467
    .line 468
    return v9

    .line 469
    :goto_12
    :try_start_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 470
    .line 471
    .line 472
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 473
    :goto_13
    iput-boolean v7, v1, Lq9;->n0:Z

    .line 474
    .line 475
    throw v0
.end method

.method public final j(Lp22;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lq9;->s:Lu22;

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    .line 5
    iget-object p1, p0, Lu22;->a:Ldd1;

    .line 6
    .line 7
    iget-object p1, p1, Ldd1;->o:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lx92;

    .line 10
    .line 11
    iget-boolean v0, p1, Lx92;->n:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-boolean v0, p1, Lx92;->p:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lu22;->d:Lq20;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Lq20;->cancel()V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lu22;->d:Lq20;

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-boolean p0, p1, Lx92;->o:Z

    .line 31
    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-boolean p0, p1, Lx92;->p:Z

    .line 36
    .line 37
    if-nez p0, :cond_3

    .line 38
    .line 39
    const-string p0, "ManagedValuesStore tried to leave composition twice. Is the store installed in multiple places?"

    .line 40
    .line 41
    invoke-static {p0}, Ljx2;->a(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_3
    iget-object p0, p1, Lx92;->q:Lkg2;

    .line 45
    .line 46
    invoke-virtual {p0}, Lkg2;->i()Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_4

    .line 51
    .line 52
    const-string p0, "Attempted to start retaining exited values with pending exited values"

    .line 53
    .line 54
    invoke-static {p0}, Ljx2;->a(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_4
    const/4 p0, 0x0

    .line 58
    iput-boolean p0, p1, Lx92;->p:Z

    .line 59
    .line 60
    :cond_5
    :goto_0
    return-void
.end method

.method public final k(Lxy1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lq9;->f0:Lab2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lab2;->r(Lxy1;Z)Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lxy1;->z()Lug2;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p1, Lug2;->n:[Ljava/lang/Object;

    .line 12
    .line 13
    iget p1, p1, Lug2;->p:I

    .line 14
    .line 15
    :goto_0
    if-ge v1, p1, :cond_0

    .line 16
    .line 17
    aget-object v2, v0, v1

    .line 18
    .line 19
    check-cast v2, Lxy1;

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Lq9;->k(Lxy1;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final n(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x0

    .line 10
    cmpg-float v2, v1, v0

    .line 11
    .line 12
    if-gtz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    int-to-float v2, v2

    .line 19
    cmpg-float v0, v0, v2

    .line 20
    .line 21
    if-gtz v0, :cond_0

    .line 22
    .line 23
    cmpg-float v0, v1, p1

    .line 24
    .line 25
    if-gtz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    int-to-float p0, p0

    .line 32
    cmpg-float p0, p1, p0

    .line 33
    .line 34
    if-gtz p0, :cond_0

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public final o(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lq9;->z0:Landroid/view/MotionEvent;

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    cmpg-float v0, v0, v2

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    cmpg-float p0, p1, p0

    .line 44
    .line 45
    if-nez p0, :cond_1

    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return p0

    .line 49
    :cond_1
    :goto_0
    return v1
.end method

.method public final onAttachedToWindow()V
    .locals 8

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lq9;->getRoot()Lxy1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lxy1;->H()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lq9;->getRoot()Lxy1;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p0}, Lxy1;->b(Lsr2;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, v0}, Lq9;->setAttached(Z)V

    .line 23
    .line 24
    .line 25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 v2, 0x1e

    .line 28
    .line 29
    if-ge v1, v2, :cond_1

    .line 30
    .line 31
    invoke-static {}, Lqv3;->p()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p0, v1}, Lq9;->setShowLayoutBounds(Z)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v1, p0, Lq9;->D:Lxe4;

    .line 39
    .line 40
    invoke-virtual {v1, p0}, Lxe4;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    iget-boolean v1, p0, Lq9;->P0:Z

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    iget-object v1, p0, Lq9;->n:Lpb0;

    .line 48
    .line 49
    invoke-virtual {v1}, Lpb0;->d()V

    .line 50
    .line 51
    .line 52
    :cond_2
    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p0, Lq9;->P0:Z

    .line 54
    .line 55
    invoke-virtual {p0}, Lq9;->getRoot()Lxy1;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p0, v2}, Lq9;->k(Lxy1;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lq9;->getRoot()Lxy1;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v2}, Lq9;->i(Lxy1;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lq9;->getSnapshotObserver()Lur2;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget-object v2, v2, Lur2;->a:Lip3;

    .line 74
    .line 75
    invoke-virtual {v2}, Lip3;->d()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lq9;->getOutOfFrameExecutor()Lq9;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-eqz v2, :cond_f

    .line 83
    .line 84
    new-instance v3, Li9;

    .line 85
    .line 86
    const/4 v4, 0x3

    .line 87
    invoke-direct {v3, p0, v4}, Li9;-><init>(Lq9;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3}, Lq9;->H(Lne1;)V

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lq9;->n:Lpb0;

    .line 94
    .line 95
    invoke-virtual {v2}, Lpb0;->c()Lp22;

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lq9;->n:Lpb0;

    .line 99
    .line 100
    invoke-virtual {v2}, Lpb0;->f()V

    .line 101
    .line 102
    .line 103
    iget-object v2, v2, Lpb0;->f:Lcc4;

    .line 104
    .line 105
    iget-object v3, p0, Lq9;->r:Lt22;

    .line 106
    .line 107
    const/4 v4, 0x0

    .line 108
    if-eqz v2, :cond_9

    .line 109
    .line 110
    if-nez v3, :cond_3

    .line 111
    .line 112
    goto/16 :goto_2

    .line 113
    .line 114
    :cond_3
    invoke-interface {v2}, Lcc4;->getViewModelStore()Lbc4;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    new-instance v3, Lac4;

    .line 119
    .line 120
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 121
    .line 122
    .line 123
    sget-object v5, Ltk0;->b:Ltk0;

    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    new-instance v6, Lqd1;

    .line 132
    .line 133
    invoke-direct {v6, v2, v3, v5}, Lqd1;-><init>(Lbc4;Lzb4;Lvk0;)V

    .line 134
    .line 135
    .line 136
    const-class v2, Lv22;

    .line 137
    .line 138
    invoke-static {v2}, Ly33;->a(Ljava/lang/Class;)Li50;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v2}, Li50;->b()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    if-eqz v3, :cond_8

    .line 147
    .line 148
    const-string v5, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 149
    .line 150
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v6, v2, v3}, Lqd1;->B(Li50;Ljava/lang/String;)Lvb4;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    check-cast v2, Lv22;

    .line 159
    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    check-cast v3, Landroid/view/View;

    .line 168
    .line 169
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    iget-object v2, v2, Lv22;->b:Ltf2;

    .line 174
    .line 175
    invoke-virtual {v2, v3}, Lhs1;->b(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    if-nez v5, :cond_4

    .line 180
    .line 181
    new-instance v5, Ldg2;

    .line 182
    .line 183
    invoke-direct {v5, v0}, Ldg2;-><init>(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v3, v5}, Ltf2;->h(ILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    :cond_4
    check-cast v5, Ldg2;

    .line 190
    .line 191
    iget-object v2, v5, Ldg2;->a:[Ljava/lang/Object;

    .line 192
    .line 193
    iget v3, v5, Ldg2;->b:I

    .line 194
    .line 195
    :goto_0
    if-ge v1, v3, :cond_6

    .line 196
    .line 197
    aget-object v6, v2, v1

    .line 198
    .line 199
    move-object v7, v6

    .line 200
    check-cast v7, Lu22;

    .line 201
    .line 202
    iget-boolean v7, v7, Lu22;->c:Z

    .line 203
    .line 204
    if-nez v7, :cond_5

    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 208
    .line 209
    goto :goto_0

    .line 210
    :cond_6
    move-object v6, v4

    .line 211
    :goto_1
    check-cast v6, Lu22;

    .line 212
    .line 213
    if-nez v6, :cond_7

    .line 214
    .line 215
    new-instance v6, Lu22;

    .line 216
    .line 217
    invoke-direct {v6}, Lu22;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5, v6}, Ldg2;->a(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    :cond_7
    iput-boolean v0, v6, Lu22;->c:Z

    .line 224
    .line 225
    iput-object v6, p0, Lq9;->s:Lu22;

    .line 226
    .line 227
    iget-object v1, v6, Lu22;->b:Ldd1;

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_8
    const-string p0, "Local and anonymous classes can not be ViewModels"

    .line 231
    .line 232
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :cond_9
    :goto_2
    move-object v1, v4

    .line 237
    :goto_3
    if-nez v1, :cond_a

    .line 238
    .line 239
    sget-object v1, Lw13;->E:Lw13;

    .line 240
    .line 241
    :cond_a
    iput-object v1, p0, Lq9;->t:Ll83;

    .line 242
    .line 243
    iget-object v1, p0, Lq9;->p0:Lpe1;

    .line 244
    .line 245
    if-eqz v1, :cond_b

    .line 246
    .line 247
    iget-object v2, p0, Lq9;->n:Lpb0;

    .line 248
    .line 249
    invoke-interface {v1, v2}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    iput-object v4, p0, Lq9;->p0:Lpe1;

    .line 253
    .line 254
    :cond_b
    iget-object v1, p0, Lq9;->n:Lpb0;

    .line 255
    .line 256
    invoke-virtual {v1}, Lpb0;->c()Lp22;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-interface {v1}, Lp22;->getLifecycle()Lh22;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {v1, p0}, Lh22;->a(Lo22;)V

    .line 265
    .line 266
    .line 267
    iget-object v2, p0, Lq9;->J:Lha;

    .line 268
    .line 269
    invoke-virtual {v1, v2}, Lh22;->a(Lo22;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0}, Lq9;->getInputModeManager()Llr1;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    if-eqz v2, :cond_c

    .line 281
    .line 282
    goto :goto_4

    .line 283
    :cond_c
    const/4 v0, 0x2

    .line 284
    :goto_4
    iget-object v1, v1, Llr1;->a:Lws2;

    .line 285
    .line 286
    new-instance v2, Ljr1;

    .line 287
    .line 288
    invoke-direct {v2, v0}, Ljr1;-><init>(I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, v2}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 313
    .line 314
    .line 315
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 316
    .line 317
    const/16 v1, 0x1f

    .line 318
    .line 319
    if-lt v0, v1, :cond_d

    .line 320
    .line 321
    sget-object v0, Laa;->a:Laa;

    .line 322
    .line 323
    invoke-virtual {v0, p0}, Laa;->b(Landroid/view/View;)V

    .line 324
    .line 325
    .line 326
    :cond_d
    invoke-virtual {p0}, Lq9;->getAutofillManager()Lw8;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    if-eqz v0, :cond_e

    .line 331
    .line 332
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    check-cast v1, Ldh;

    .line 337
    .line 338
    iget-object v1, v1, Ldh;->g:Ljava/lang/Object;

    .line 339
    .line 340
    check-cast v1, Ldg2;

    .line 341
    .line 342
    invoke-virtual {v1, v0}, Ldg2;->a(Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p0}, Lq9;->getSemanticsOwner()Ljh3;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    iget-object v1, v1, Ljh3;->d:Ldg2;

    .line 350
    .line 351
    invoke-virtual {v1, v0}, Ldg2;->a(Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    :cond_e
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    check-cast v0, Ldh;

    .line 359
    .line 360
    iget-object v0, v0, Ldh;->g:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast v0, Ldg2;

    .line 363
    .line 364
    invoke-virtual {v0, p0}, Ldg2;->a(Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    return-void

    .line 368
    :cond_f
    const-string p0, "Expected the view to be attached to window."

    .line 369
    .line 370
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    return-void
.end method

.method public final onCheckIsTextEditor()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq9;->s0:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lq9;->getLegacyTextInputServiceAndroid()Lix3;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :goto_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_0
    invoke-static {}, Lmk0;->b()V

    .line 19
    .line 20
    .line 21
    goto :goto_0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lq9;->M(Landroid/content/res/Configuration;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    .line 1
    iget-object p1, p0, Lq9;->s0:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lq9;->getLegacyTextInputServiceAndroid()Lix3;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :goto_0
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-static {}, Lmk0;->b()V

    .line 19
    .line 20
    .line 21
    goto :goto_0
.end method

.method public final onCreateVirtualViewTranslationRequests([J[ILjava/util/function/Consumer;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lq9;->J:Lha;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    array-length p2, p1

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-ge v0, p2, :cond_3

    .line 9
    .line 10
    aget-wide v1, p1, v0

    .line 11
    .line 12
    invoke-virtual {p0}, Lha;->b()Lhs1;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    long-to-int v1, v1

    .line 17
    invoke-virtual {v3, v1}, Lhs1;->b(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lih3;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-object v1, v1, Lih3;->a:Lgh3;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-static {}, Lz9;->q()V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lha;->n:Lq9;

    .line 34
    .line 35
    invoke-static {v2}, Ly2;->e(Lq9;)Landroid/view/autofill/AutofillId;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget v3, v1, Lgh3;->f:I

    .line 40
    .line 41
    int-to-long v3, v3

    .line 42
    invoke-static {v2, v3, v4}, Lz9;->k(Landroid/view/autofill/AutofillId;J)Landroid/view/translation/ViewTranslationRequest$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget-object v1, v1, Lgh3;->d:Lbh3;

    .line 47
    .line 48
    sget-object v3, Llh3;->B:Loh3;

    .line 49
    .line 50
    iget-object v1, v1, Lbh3;->n:Lkg2;

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/4 v3, 0x0

    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    move-object v1, v3

    .line 60
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    const-string v4, "\n"

    .line 65
    .line 66
    const/16 v5, 0x3e

    .line 67
    .line 68
    invoke-static {v1, v4, v3, v5}, Ln42;->a(Ljava/util/List;Ljava/lang/String;Lz82;I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v3, Lff;

    .line 73
    .line 74
    invoke-direct {v3, v1}, Lff;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v3}, Lz9;->i(Lff;)Landroid/view/translation/TranslationRequestValue;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v2, v1}, Lz9;->x(Landroid/view/translation/ViewTranslationRequest$Builder;Landroid/view/translation/TranslationRequestValue;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v2}, Lz9;->l(Landroid/view/translation/ViewTranslationRequest$Builder;)Landroid/view/translation/ViewTranslationRequest;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-interface {p3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 10

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lq9;->setAttached(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lq9;->D:Lxe4;

    .line 9
    .line 10
    invoke-virtual {v1, p0}, Lxe4;->onViewDetachedFromWindow(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lq9;->x:Landroid/view/View;

    .line 14
    .line 15
    invoke-static {}, Lq9;->l()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 v2, 0x1c

    .line 29
    .line 30
    if-le v1, v2, :cond_1

    .line 31
    .line 32
    sget-object v2, Lq9;->Y0:Ldg2;

    .line 33
    .line 34
    monitor-enter v2

    .line 35
    :try_start_0
    invoke-virtual {v2, p0}, Ldg2;->j(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit v2

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    move-object p0, v0

    .line 42
    monitor-exit v2

    .line 43
    throw p0

    .line 44
    :cond_1
    :goto_0
    iget-object v2, p0, Lq9;->n:Lpb0;

    .line 45
    .line 46
    invoke-virtual {v2}, Lpb0;->b()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lq9;->getSnapshotObserver()Lur2;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v2, v2, Lur2;->a:Lip3;

    .line 54
    .line 55
    iget-object v3, v2, Lip3;->h:Lr6;

    .line 56
    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    invoke-virtual {v3}, Lr6;->g()V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object v3, v2, Lip3;->g:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter v3

    .line 65
    :try_start_1
    iget-object v2, v2, Lip3;->f:Lug2;

    .line 66
    .line 67
    iget-object v4, v2, Lug2;->n:[Ljava/lang/Object;

    .line 68
    .line 69
    iget v2, v2, Lug2;->p:I

    .line 70
    .line 71
    move v5, v0

    .line 72
    :goto_1
    if-ge v5, v2, :cond_3

    .line 73
    .line 74
    aget-object v6, v4, v5

    .line 75
    .line 76
    check-cast v6, Lhp3;

    .line 77
    .line 78
    iget-object v7, v6, Lhp3;->e:Lkg2;

    .line 79
    .line 80
    invoke-virtual {v7}, Lkg2;->a()V

    .line 81
    .line 82
    .line 83
    iget-object v7, v6, Lhp3;->f:Lkg2;

    .line 84
    .line 85
    invoke-virtual {v7}, Lkg2;->a()V

    .line 86
    .line 87
    .line 88
    iget-object v7, v6, Lhp3;->l:Lkg2;

    .line 89
    .line 90
    invoke-virtual {v7}, Lkg2;->a()V

    .line 91
    .line 92
    .line 93
    iget-object v6, v6, Lhp3;->m:Ljava/util/HashMap;

    .line 94
    .line 95
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    .line 97
    .line 98
    add-int/lit8 v5, v5, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catchall_1
    move-exception v0

    .line 102
    move-object p0, v0

    .line 103
    goto/16 :goto_2

    .line 104
    .line 105
    :cond_3
    monitor-exit v3

    .line 106
    iget-object v2, p0, Lq9;->n:Lpb0;

    .line 107
    .line 108
    invoke-virtual {v2}, Lpb0;->c()Lp22;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-interface {v2}, Lp22;->getLifecycle()Lh22;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    iget-object v3, p0, Lq9;->J:Lha;

    .line 117
    .line 118
    invoke-virtual {v2, v3}, Lh22;->b(Lo22;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, p0}, Lh22;->b(Lo22;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 143
    .line 144
    .line 145
    iget-object v2, p0, Lq9;->s:Lu22;

    .line 146
    .line 147
    if-eqz v2, :cond_4

    .line 148
    .line 149
    iput-boolean v0, v2, Lu22;->c:Z

    .line 150
    .line 151
    :cond_4
    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lq9;->s:Lu22;

    .line 153
    .line 154
    const/16 v2, 0x1f

    .line 155
    .line 156
    if-lt v1, v2, :cond_5

    .line 157
    .line 158
    sget-object v1, Laa;->a:Laa;

    .line 159
    .line 160
    invoke-virtual {v1, p0}, Laa;->a(Landroid/view/View;)V

    .line 161
    .line 162
    .line 163
    :cond_5
    invoke-virtual {p0}, Lq9;->getAutofillManager()Lw8;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    if-eqz v1, :cond_6

    .line 168
    .line 169
    invoke-virtual {p0}, Lq9;->getSemanticsOwner()Ljh3;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    iget-object v2, v2, Ljh3;->d:Ldg2;

    .line 174
    .line 175
    invoke-virtual {v2, v1}, Ldg2;->j(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    check-cast v2, Ldh;

    .line 183
    .line 184
    iget-object v2, v2, Ldh;->g:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast v2, Ldg2;

    .line 187
    .line 188
    invoke-virtual {v2, v1}, Ldg2;->j(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    :cond_6
    invoke-virtual {p0}, Lq9;->getRectManager()Ln33;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    iget-object v2, v1, Ln33;->d:Lwy3;

    .line 196
    .line 197
    const/4 v8, 0x0

    .line 198
    const/4 v9, 0x0

    .line 199
    const-wide/16 v3, 0x0

    .line 200
    .line 201
    const-wide/16 v5, 0x0

    .line 202
    .line 203
    const/4 v7, 0x0

    .line 204
    invoke-virtual/range {v2 .. v9}, Lwy3;->c(JJ[FII)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    iput-boolean v2, v1, Ln33;->g:Z

    .line 209
    .line 210
    invoke-virtual {p0}, Lq9;->getRectManager()Ln33;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v1}, Ln33;->a()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Lq9;->getRectManager()Ln33;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    iget-object v2, v1, Ln33;->i:Ld9;

    .line 222
    .line 223
    if-eqz v2, :cond_7

    .line 224
    .line 225
    iget-object v3, v1, Ln33;->b:Lq9;

    .line 226
    .line 227
    invoke-virtual {v3, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 228
    .line 229
    .line 230
    iput-object v0, v1, Ln33;->i:Ld9;

    .line 231
    .line 232
    :cond_7
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    check-cast v0, Ldh;

    .line 237
    .line 238
    iget-object v0, v0, Ldh;->g:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v0, Ldg2;

    .line 241
    .line 242
    invoke-virtual {v0, p0}, Ldg2;->j(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    return-void

    .line 246
    :goto_2
    monitor-exit v3

    .line 247
    throw p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ldh;

    .line 17
    .line 18
    iget-object p1, p0, Ldh;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lka1;

    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    invoke-static {p1, p2}, Ln44;->F0(Lka1;Z)Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ldh;->f()Lka1;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Ldh;->f()Lka1;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 p2, 0x0

    .line 37
    invoke-virtual {p0, p2}, Ldh;->k(Lka1;)V

    .line 38
    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    sget-object p0, Lfa1;->n:Lfa1;

    .line 43
    .line 44
    sget-object p2, Lfa1;->p:Lfa1;

    .line 45
    .line 46
    invoke-virtual {p1, p0, p2}, Lka1;->H0(Lfa1;Lfa1;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public final onGlobalLayout()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lq9;->m0:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lq9;->N()V

    .line 6
    .line 7
    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v1, 0x20

    .line 11
    .line 12
    if-gt v1, v0, :cond_0

    .line 13
    .line 14
    const/16 v1, 0x22

    .line 15
    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lq9;->M(Landroid/content/res/Configuration;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 1
    const-string p1, "AndroidOwner:onLayout"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    :try_start_0
    iput-wide v0, p0, Lq9;->m0:J

    .line 9
    .line 10
    iget-object p1, p0, Lq9;->f0:Lab2;

    .line 11
    .line 12
    iget-object v0, p0, Lq9;->M0:Li9;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lab2;->l(Lne1;)Z

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lq9;->d0:Lmf0;

    .line 19
    .line 20
    invoke-virtual {p0}, Lq9;->N()V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lq9;->c0:Lid;

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const-string p1, "AndroidOwner:viewLayout"

    .line 28
    .line 29
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    .line 31
    .line 32
    sub-int/2addr p4, p2

    .line 33
    sub-int/2addr p5, p3

    .line 34
    const/4 p1, 0x0

    .line 35
    :try_start_1
    invoke-virtual {p0, p1, p1, p4, p5}, Landroid/view/View;->layout(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 44
    .line 45
    .line 46
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_1
    move-exception p0

    .line 52
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public final onMeasure(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lq9;->f0:Lab2;

    .line 2
    .line 3
    const-string v1, "AndroidOwner:onMeasure"

    .line 4
    .line 5
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lq9;->getRoot()Lxy1;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lxy1;->H()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lq9;->getRoot()Lxy1;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, p0}, Lxy1;->b(Lsr2;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lq9;->getRoot()Lxy1;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0, v1}, Lq9;->k(Lxy1;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-static {p1}, Lq9;->f(I)J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    const/16 p1, 0x20

    .line 43
    .line 44
    ushr-long v3, v1, p1

    .line 45
    .line 46
    long-to-int v3, v3

    .line 47
    const-wide v4, 0xffffffffL

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    and-long/2addr v1, v4

    .line 53
    long-to-int v1, v1

    .line 54
    invoke-static {p2}, Lq9;->f(I)J

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    ushr-long p1, v6, p1

    .line 59
    .line 60
    long-to-int p1, p1

    .line 61
    and-long/2addr v4, v6

    .line 62
    long-to-int p2, v4

    .line 63
    invoke-static {v3, v1, p1, p2}, Lon4;->s(IIII)J

    .line 64
    .line 65
    .line 66
    move-result-wide p1

    .line 67
    iget-object v1, p0, Lq9;->d0:Lmf0;

    .line 68
    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    new-instance v1, Lmf0;

    .line 72
    .line 73
    invoke-direct {v1, p1, p2}, Lmf0;-><init>(J)V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lq9;->d0:Lmf0;

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    iput-boolean v1, p0, Lq9;->e0:Z

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    iget-wide v1, v1, Lmf0;->a:J

    .line 83
    .line 84
    invoke-static {v1, v2, p1, p2}, Lmf0;->b(JJ)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_3

    .line 89
    .line 90
    const/4 v1, 0x1

    .line 91
    iput-boolean v1, p0, Lq9;->e0:Z

    .line 92
    .line 93
    :cond_3
    :goto_0
    invoke-virtual {v0, p1, p2}, Lab2;->s(J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lab2;->n()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lq9;->getRoot()Lxy1;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iget-object p1, p1, Lxy1;->T:Lbz1;

    .line 104
    .line 105
    iget-object p1, p1, Lbz1;->p:Lcb2;

    .line 106
    .line 107
    iget p1, p1, Ldv2;->n:I

    .line 108
    .line 109
    invoke-virtual {p0}, Lq9;->getRoot()Lxy1;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    iget-object p2, p2, Lxy1;->T:Lbz1;

    .line 114
    .line 115
    iget-object p2, p2, Lbz1;->p:Lcb2;

    .line 116
    .line 117
    iget p2, p2, Ldv2;->o:I

    .line 118
    .line 119
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lq9;->c0:Lid;

    .line 123
    .line 124
    if-eqz p1, :cond_4

    .line 125
    .line 126
    const-string p2, "AndroidOwner:androidViewMeasure"

    .line 127
    .line 128
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 129
    .line 130
    .line 131
    :try_start_1
    invoke-virtual {p0}, Lq9;->getRoot()Lxy1;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    iget-object p2, p2, Lxy1;->T:Lbz1;

    .line 136
    .line 137
    iget-object p2, p2, Lbz1;->p:Lcb2;

    .line 138
    .line 139
    iget p2, p2, Ldv2;->n:I

    .line 140
    .line 141
    const/high16 v0, 0x40000000    # 2.0f

    .line 142
    .line 143
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    invoke-virtual {p0}, Lq9;->getRoot()Lxy1;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    iget-object p0, p0, Lxy1;->T:Lbz1;

    .line 152
    .line 153
    iget-object p0, p0, Lbz1;->p:Lcb2;

    .line 154
    .line 155
    iget p0, p0, Ldv2;->o:I

    .line 156
    .line 157
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .line 163
    .line 164
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :catchall_0
    move-exception p0

    .line 169
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 170
    .line 171
    .line 172
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 173
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :catchall_1
    move-exception p0

    .line 178
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 179
    .line 180
    .line 181
    throw p0
.end method

.method public final onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .locals 0

    .line 1
    invoke-static {}, Lq9;->d()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-boolean p2, p0, Lq9;->Q0:Z

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lq9;->C(Landroid/view/ViewStructure;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x2002

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x4002

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lq9;->getPointerIconService()Lyv2;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lq9;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    sget-object v0, Lv91;->a:[I

    .line 6
    .line 7
    sget-object v0, Lhy1;->n:Lhy1;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq p1, v1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object p1, Lhy1;->o:Lhy1;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move-object p1, v0

    .line 20
    :goto_0
    if-nez p1, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    move-object v0, p1

    .line 24
    :goto_1
    invoke-direct {p0, v0}, Lq9;->setLayoutDirection(Lhy1;)V

    .line 25
    .line 26
    .line 27
    :cond_3
    return-void
.end method

.method public final onScrollCaptureSearch(Landroid/graphics/Rect;Landroid/graphics/Point;Ljava/util/function/Consumer;)V
    .locals 12

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 p2, 0x1f

    .line 4
    .line 5
    if-lt p1, p2, :cond_2

    .line 6
    .line 7
    iget-object v4, p0, Lq9;->R0:Ldd1;

    .line 8
    .line 9
    if-eqz v4, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Lq9;->getSemanticsOwner()Ljh3;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lq9;->getCoroutineContext()Lhi0;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    new-instance v9, Lug2;

    .line 20
    .line 21
    const/16 v0, 0x10

    .line 22
    .line 23
    new-array v0, v0, [Laf3;

    .line 24
    .line 25
    invoke-direct {v9, v0}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljh3;->a()Lgh3;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v5, Lze3;

    .line 33
    .line 34
    const-string v11, "add(Ljava/lang/Object;)Z"

    .line 35
    .line 36
    const/16 v7, 0x8

    .line 37
    .line 38
    const/4 v6, 0x1

    .line 39
    const-class v8, Lug2;

    .line 40
    .line 41
    const-string v10, "add"

    .line 42
    .line 43
    invoke-direct/range {v5 .. v11}, Lc7;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-static {p1, v0, v5}, Lkt4;->i0(Lgh3;ILze3;)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x2

    .line 51
    new-array p1, p1, [Lpe1;

    .line 52
    .line 53
    sget-object v1, Ldo2;->z:Ldo2;

    .line 54
    .line 55
    aput-object v1, p1, v0

    .line 56
    .line 57
    sget-object v1, Ldo2;->A:Ldo2;

    .line 58
    .line 59
    aput-object v1, p1, v6

    .line 60
    .line 61
    new-instance v1, Ly80;

    .line 62
    .line 63
    invoke-direct {v1, v0, p1}, Ly80;-><init>(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, v9, Lug2;->n:[Ljava/lang/Object;

    .line 67
    .line 68
    iget v2, v9, Lug2;->p:I

    .line 69
    .line 70
    invoke-static {p1, v0, v2, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 71
    .line 72
    .line 73
    iget p1, v9, Lug2;->p:I

    .line 74
    .line 75
    if-nez p1, :cond_0

    .line 76
    .line 77
    const/4 p1, 0x0

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    sub-int/2addr p1, v6

    .line 80
    iget-object v0, v9, Lug2;->n:[Ljava/lang/Object;

    .line 81
    .line 82
    aget-object p1, v0, p1

    .line 83
    .line 84
    :goto_0
    check-cast p1, Laf3;

    .line 85
    .line 86
    if-nez p1, :cond_1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    iget-object v2, p1, Laf3;->c:Lns1;

    .line 90
    .line 91
    invoke-static {p2}, Ldm0;->c(Lhi0;)Lbh0;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    new-instance v0, Lfb0;

    .line 96
    .line 97
    iget-object v1, p1, Laf3;->a:Lgh3;

    .line 98
    .line 99
    move-object v5, p0

    .line 100
    invoke-direct/range {v0 .. v5}, Lfb0;-><init>(Lgh3;Lns1;Lbh0;Ldd1;Lq9;)V

    .line 101
    .line 102
    .line 103
    iget-object p0, p1, Laf3;->d:Lmm2;

    .line 104
    .line 105
    invoke-static {p0}, Lzf5;->D(Lgy1;)Lgy1;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-interface {p1, p0, v6}, Lgy1;->H(Lgy1;Z)Ll33;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    iget p1, v2, Lns1;->a:I

    .line 114
    .line 115
    iget p2, v2, Lns1;->b:I

    .line 116
    .line 117
    int-to-long v3, p1

    .line 118
    const/16 p1, 0x20

    .line 119
    .line 120
    shl-long/2addr v3, p1

    .line 121
    int-to-long v6, p2

    .line 122
    const-wide v8, 0xffffffffL

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    and-long/2addr v6, v8

    .line 128
    or-long/2addr v3, v6

    .line 129
    invoke-static {p0}, Lix;->P(Ll33;)Lns1;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-static {p0}, Ldm0;->M(Lns1;)Landroid/graphics/Rect;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    new-instance p2, Landroid/graphics/Point;

    .line 138
    .line 139
    shr-long v6, v3, p1

    .line 140
    .line 141
    long-to-int p1, v6

    .line 142
    and-long/2addr v3, v8

    .line 143
    long-to-int v1, v3

    .line 144
    invoke-direct {p2, p1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 145
    .line 146
    .line 147
    invoke-static {v5, p0, p2, v0}, Lz9;->f(Lq9;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/ScrollCaptureCallback;)Landroid/view/ScrollCaptureTarget;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-static {v2}, Ldm0;->M(Lns1;)Landroid/graphics/Rect;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {p0, p1}, Lz9;->u(Landroid/view/ScrollCaptureTarget;Landroid/graphics/Rect;)V

    .line 156
    .line 157
    .line 158
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_2
    :goto_1
    return-void
.end method

.method public final onScrollChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lq9;->N()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onTouchModeChanged(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq9;->getInputModeManager()Llr1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x2

    .line 10
    :goto_0
    iget-object p0, p0, Llr1;->a:Lws2;

    .line 11
    .line 12
    new-instance v0, Ljr1;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Ljr1;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onVirtualViewTranslationResponses(Landroid/util/LongSparseArray;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lq9;->J:Lha;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1f

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-static {p0, p1}, Lnt1;->t(Lha;Landroid/util/LongSparseArray;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lha;->n:Lq9;

    .line 36
    .line 37
    new-instance v1, Lh7;

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    invoke-direct {v1, v2, p0, p1}, Lh7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lq9;->O0:Z

    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v0, 0x1e

    .line 12
    .line 13
    if-ge p1, v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lqv3;->p()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0}, Lq9;->getShowLayoutBounds()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eq v0, p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lq9;->setShowLayoutBounds(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lq9;->getRoot()Lxy1;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Lq9;->i(Lxy1;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final p(J)J
    .locals 7

    .line 1
    invoke-virtual {p0}, Lq9;->D()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lq9;->k0:[F

    .line 5
    .line 6
    invoke-static {v0, p1, p2}, Lxa2;->b([FJ)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    const/16 v0, 0x20

    .line 11
    .line 12
    shr-long v1, p1, v0

    .line 13
    .line 14
    long-to-int v1, v1

    .line 15
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-wide v2, p0, Lq9;->o0:J

    .line 20
    .line 21
    shr-long/2addr v2, v0

    .line 22
    long-to-int v2, v2

    .line 23
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    add-float/2addr v2, v1

    .line 28
    const-wide v3, 0xffffffffL

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    and-long/2addr p1, v3

    .line 34
    long-to-int p1, p1

    .line 35
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iget-wide v5, p0, Lq9;->o0:J

    .line 40
    .line 41
    and-long/2addr v5, v3

    .line 42
    long-to-int p0, v5

    .line 43
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    add-float/2addr p0, p1

    .line 48
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    int-to-long p1, p1

    .line 53
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    int-to-long v1, p0

    .line 58
    shl-long p0, p1, v0

    .line 59
    .line 60
    and-long v0, v1, v3

    .line 61
    .line 62
    or-long/2addr p0, v0

    .line 63
    return-wide p0
.end method

.method public final q(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq9;->f0:Lab2;

    .line 2
    .line 3
    iget-object v1, v0, Lab2;->b:Leh;

    .line 4
    .line 5
    invoke-virtual {v1}, Leh;->C()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-object v1, v0, Lab2;->e:Lxh1;

    .line 12
    .line 13
    iget-object v1, v1, Lxh1;->n:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lug2;

    .line 16
    .line 17
    iget v1, v1, Lug2;->p:I

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    :goto_0
    const-string v1, "AndroidOwner:measureAndLayout"

    .line 24
    .line 25
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    :try_start_0
    iget-object p1, p0, Lq9;->M0:Li9;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iget-object p1, p0, Lq9;->N0:Li9;

    .line 34
    .line 35
    :goto_1
    invoke-virtual {v0, p1}, Lab2;->l(Lne1;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 42
    .line 43
    .line 44
    :cond_3
    const/4 p1, 0x0

    .line 45
    invoke-virtual {v0, p1}, Lab2;->b(Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lq9;->getRectManager()Ln33;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ln33;->a()V

    .line 53
    .line 54
    .line 55
    iget-boolean v0, p0, Lq9;->P:Z

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 64
    .line 65
    .line 66
    iput-boolean p1, p0, Lq9;->P:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method public final requestFocus(ILandroid/graphics/Rect;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    invoke-static {p1}, Lv91;->d(I)Lp91;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget p1, p1, Lp91;->a:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, 0x7

    .line 19
    :goto_0
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    new-instance v3, Ll33;

    .line 27
    .line 28
    iget v4, p2, Landroid/graphics/Rect;->left:I

    .line 29
    .line 30
    int-to-float v4, v4

    .line 31
    iget v5, p2, Landroid/graphics/Rect;->top:I

    .line 32
    .line 33
    int-to-float v5, v5

    .line 34
    iget v6, p2, Landroid/graphics/Rect;->right:I

    .line 35
    .line 36
    int-to-float v6, v6

    .line 37
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    int-to-float p2, p2

    .line 40
    invoke-direct {v3, v4, v5, v6, p2}, Ll33;-><init>(FFFF)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move-object v3, v2

    .line 45
    :goto_1
    new-instance p2, Ln9;

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-direct {p2, p1, v4}, Ln9;-><init>(II)V

    .line 49
    .line 50
    .line 51
    check-cast v0, Ldh;

    .line 52
    .line 53
    invoke-virtual {v0, p1, v3, p2}, Ldh;->e(ILl33;Lpe1;)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-static {p2, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    new-instance v3, Ln9;

    .line 71
    .line 72
    invoke-direct {v3, p1, v1}, Ln9;-><init>(II)V

    .line 73
    .line 74
    .line 75
    check-cast p2, Ldh;

    .line 76
    .line 77
    invoke-virtual {p2, p1, v2, v3}, Ldh;->e(ILl33;Lpe1;)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-static {p2, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    if-eqz p2, :cond_4

    .line 86
    .line 87
    :goto_2
    return v1

    .line 88
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_6

    .line 93
    .line 94
    if-ne p1, v1, :cond_5

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_5
    const/4 p2, 0x2

    .line 98
    if-ne p1, p2, :cond_6

    .line 99
    .line 100
    :goto_3
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Ldh;

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Ldh;->j(I)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    return p0

    .line 111
    :cond_6
    return v4
.end method

.method public final s(Lxy1;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq9;->f0:Lab2;

    .line 2
    .line 3
    const-string v1, "AndroidOwner:measureAndLayout"

    .line 4
    .line 5
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lab2;->m(Lxy1;J)V

    .line 9
    .line 10
    .line 11
    iget-object p1, v0, Lab2;->b:Leh;

    .line 12
    .line 13
    invoke-virtual {p1}, Leh;->C()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {v0, p1}, Lab2;->b(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lq9;->getRectManager()Ln33;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Ln33;->a()V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Lq9;->N0:Li9;

    .line 31
    .line 32
    invoke-virtual {p2}, Li9;->a()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-boolean p2, p0, Lq9;->P:Z

    .line 36
    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 44
    .line 45
    .line 46
    iput-boolean p1, p0, Lq9;->P:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public setAccessibilityEventBatchIntervalMillis(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->I:Lv9;

    .line 2
    .line 3
    iput-wide p1, p0, Lv9;->u:J

    .line 4
    .line 5
    return-void
.end method

.method public final setAndroidViewsHandler(Lid;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq9;->c0:Lid;

    .line 2
    .line 3
    return-void
.end method

.method public final setComposeViewContext(Lpb0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq9;->n:Lpb0;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lpb0;->b()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lpb0;->d()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iput-object p1, p0, Lq9;->n:Lpb0;

    .line 19
    .line 20
    return-void
.end method

.method public final setComposeViewContextIncrementedDuringInit$ui(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lq9;->P0:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setConfiguration(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->S:Lws2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCoroutineContext(Lhi0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq9;->z:Lhi0;

    .line 2
    .line 3
    return-void
.end method

.method public final setFrameEndScheduler$ui(Lt22;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq9;->r:Lt22;

    .line 2
    .line 3
    return-void
.end method

.method public final setLastMatrixRecalculationAnimationTime$ui(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lq9;->m0:J

    .line 2
    .line 3
    return-void
.end method

.method public final setOnReadyForComposition(Lpe1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpe1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lq9;->getDerivedIsAttached()Z

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lq9;->P0:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput-object p1, p0, Lq9;->p0:Lpe1;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    :goto_0
    iget-object p0, p0, Lq9;->n:Lpb0;

    .line 19
    .line 20
    invoke-interface {p1, p0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final setPlayNavigationSoundEffect$ui(Ldf1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf1;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq9;->K0:Ldf1;

    .line 2
    .line 3
    return-void
.end method

.method public final setPrimaryDirectionalMotionAxisOverride-r2epLt8$ui(Laq1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq9;->q:Laq1;

    .line 2
    .line 3
    return-void
.end method

.method public setShowLayoutBounds(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lq9;->b0:Z

    .line 2
    .line 3
    return-void
.end method

.method public setUncaughtExceptionHandler(Lha3;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lq9;->f0:Lab2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setUncaughtExceptionHandler$ui(Lha3;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final t(I)Z
    .locals 6

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    const/16 v0, 0x8

    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_1
    invoke-static {p1}, Lv91;->c(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "Invalid focus direction"

    .line 16
    .line 17
    if-eqz v0, :cond_7

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ldh;

    .line 28
    .line 29
    invoke-virtual {v3}, Ldh;->f()Lka1;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_6

    .line 34
    .line 35
    invoke-static {p1}, Lv91;->c(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_5

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {v3}, Lw80;->R(Ljr0;)Lxy1;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object v2, v2, Lxy1;->B:Lpb4;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-virtual {v2}, Lbd;->getInteropView()Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move-object v2, v3

    .line 60
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    check-cast p0, Landroid/view/ViewGroup;

    .line 76
    .line 77
    invoke-virtual {v5, p0, v4, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    if-eqz p0, :cond_3

    .line 82
    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    invoke-static {v2, p0}, Lca;->c(Landroid/view/View;Landroid/view/View;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    const/4 v2, 0x1

    .line 90
    if-ne p1, v2, :cond_3

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    move-object p0, v3

    .line 94
    :goto_1
    if-eqz p0, :cond_4

    .line 95
    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p0, p1, v3}, Lv91;->b(Landroid/view/View;Ljava/lang/Integer;Landroid/graphics/Rect;)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    return p0

    .line 105
    :cond_4
    :goto_2
    return v1

    .line 106
    :cond_5
    invoke-static {v2}, Ldi0;->m(Ljava/lang/String;)Lv00;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    throw p0

    .line 111
    :cond_6
    const-string p0, "findNextViewInEmbeddedView called when owner does not have anything focused."

    .line 112
    .line 113
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return v1

    .line 117
    :cond_7
    invoke-static {v2}, Ldi0;->m(Ljava/lang/String;)Lv00;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    throw p0
.end method

.method public final u()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lq9;->W:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Lq9;->getSnapshotObserver()Lur2;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lur2;->a:Lip3;

    .line 12
    .line 13
    iget-object v3, v0, Lip3;->g:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v3

    .line 16
    :try_start_0
    iget-object v0, v0, Lip3;->f:Lug2;

    .line 17
    .line 18
    iget v4, v0, Lug2;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    move v5, v2

    .line 21
    move v6, v5

    .line 22
    :goto_0
    iget-object v7, v0, Lug2;->n:[Ljava/lang/Object;

    .line 23
    .line 24
    if-ge v5, v4, :cond_2

    .line 25
    .line 26
    :try_start_1
    aget-object v7, v7, v5

    .line 27
    .line 28
    check-cast v7, Lhp3;

    .line 29
    .line 30
    invoke-virtual {v7}, Lhp3;->d()V

    .line 31
    .line 32
    .line 33
    iget-object v7, v7, Lhp3;->f:Lkg2;

    .line 34
    .line 35
    invoke-virtual {v7}, Lkg2;->j()Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-nez v7, :cond_0

    .line 40
    .line 41
    add-int/lit8 v6, v6, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    if-lez v6, :cond_1

    .line 45
    .line 46
    iget-object v7, v0, Lug2;->n:[Ljava/lang/Object;

    .line 47
    .line 48
    sub-int v8, v5, v6

    .line 49
    .line 50
    aget-object v9, v7, v5

    .line 51
    .line 52
    aput-object v9, v7, v8

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    sub-int v5, v4, v6

    .line 61
    .line 62
    invoke-static {v7, v5, v4, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iput v5, v0, Lug2;->p:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    monitor-exit v3

    .line 68
    iput-boolean v2, p0, Lq9;->W:Z

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :goto_2
    monitor-exit v3

    .line 72
    throw p0

    .line 73
    :cond_3
    :goto_3
    iget-object v0, p0, Lq9;->c0:Lid;

    .line 74
    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    invoke-static {v0}, Lq9;->e(Landroid/view/ViewGroup;)V

    .line 78
    .line 79
    .line 80
    :cond_4
    invoke-static {}, Lq9;->d()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    invoke-virtual {p0}, Lq9;->getAutofillManager()Lw8;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    iget-object v3, v0, Lw8;->t:Luf2;

    .line 93
    .line 94
    iget v4, v3, Luf2;->d:I

    .line 95
    .line 96
    if-nez v4, :cond_5

    .line 97
    .line 98
    iget-boolean v4, v0, Lw8;->u:Z

    .line 99
    .line 100
    if-eqz v4, :cond_5

    .line 101
    .line 102
    iget-object v4, v0, Lw8;->n:Lxh1;

    .line 103
    .line 104
    invoke-virtual {v4}, Lxh1;->r()Landroid/view/autofill/AutofillManager;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-static {v4}, Lpu1;->v(Landroid/view/autofill/AutofillManager;)V

    .line 109
    .line 110
    .line 111
    iput-boolean v2, v0, Lw8;->u:Z

    .line 112
    .line 113
    :cond_5
    iget v3, v3, Luf2;->d:I

    .line 114
    .line 115
    if-eqz v3, :cond_6

    .line 116
    .line 117
    const/4 v3, 0x1

    .line 118
    iput-boolean v3, v0, Lw8;->u:Z

    .line 119
    .line 120
    :cond_6
    :goto_4
    iget-object v0, p0, Lq9;->C0:Ldg2;

    .line 121
    .line 122
    invoke-virtual {v0}, Ldg2;->i()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_9

    .line 127
    .line 128
    iget-object v0, p0, Lq9;->C0:Ldg2;

    .line 129
    .line 130
    invoke-virtual {v0, v2}, Ldg2;->f(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_9

    .line 135
    .line 136
    iget-object v0, p0, Lq9;->C0:Ldg2;

    .line 137
    .line 138
    iget v0, v0, Ldg2;->b:I

    .line 139
    .line 140
    move v3, v2

    .line 141
    :goto_5
    iget-object v4, p0, Lq9;->C0:Ldg2;

    .line 142
    .line 143
    if-ge v3, v0, :cond_8

    .line 144
    .line 145
    invoke-virtual {v4, v3}, Ldg2;->f(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Lne1;

    .line 150
    .line 151
    iget-object v5, p0, Lq9;->C0:Ldg2;

    .line 152
    .line 153
    invoke-virtual {v5, v3, v1}, Ldg2;->n(ILjava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    if-eqz v4, :cond_7

    .line 157
    .line 158
    invoke-interface {v4}, Lne1;->a()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_8
    invoke-virtual {v4, v2, v0}, Ldg2;->l(II)V

    .line 165
    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_9
    return-void
.end method

.method public final v(Lxy1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lq9;->I:Lv9;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lv9;->L:Z

    .line 5
    .line 6
    invoke-virtual {v0}, Lv9;->p()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Lv9;->q(Lxy1;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object p0, p0, Lq9;->J:Lha;

    .line 17
    .line 18
    iput-boolean v1, p0, Lha;->t:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Lha;->d()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final w(Lxy1;ZZZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lq9;->f0:Lab2;

    .line 2
    .line 3
    if-eqz p2, :cond_b

    .line 4
    .line 5
    iget-object p2, v0, Lab2;->b:Leh;

    .line 6
    .line 7
    iget-object v1, p1, Lxy1;->u:Lxy1;

    .line 8
    .line 9
    iget-object v2, p1, Lxy1;->T:Lbz1;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v1, "Error: requestLookaheadRemeasure cannot be called on a node outside LookaheadScope"

    .line 15
    .line 16
    invoke-static {v1}, Lar1;->b(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object v1, v2, Lbz1;->d:Lty1;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v3, 0x1

    .line 26
    if-eqz v1, :cond_a

    .line 27
    .line 28
    if-eq v1, v3, :cond_c

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    if-eq v1, v4, :cond_a

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    if-eq v1, v4, :cond_a

    .line 35
    .line 36
    const/4 v4, 0x4

    .line 37
    if-ne v1, v4, :cond_9

    .line 38
    .line 39
    iget-boolean v1, v2, Lbz1;->e:Z

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    if-nez p3, :cond_1

    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_1
    iput-boolean v3, v2, Lbz1;->e:Z

    .line 48
    .line 49
    iget-object p3, v2, Lbz1;->p:Lcb2;

    .line 50
    .line 51
    iput-boolean v3, p3, Lcb2;->H:Z

    .line 52
    .line 53
    iget-boolean p3, p1, Lxy1;->d0:Z

    .line 54
    .line 55
    if-eqz p3, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-virtual {p1}, Lxy1;->J()Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-static {p3, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    if-nez p3, :cond_3

    .line 69
    .line 70
    invoke-static {p1}, Lab2;->i(Lxy1;)Z

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    if-eqz p3, :cond_4

    .line 75
    .line 76
    :cond_3
    invoke-virtual {p1}, Lxy1;->u()Lxy1;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    if-eqz p3, :cond_7

    .line 81
    .line 82
    iget-object p3, p3, Lxy1;->T:Lbz1;

    .line 83
    .line 84
    iget-boolean p3, p3, Lbz1;->e:Z

    .line 85
    .line 86
    if-ne p3, v3, :cond_7

    .line 87
    .line 88
    :cond_4
    invoke-virtual {p1}, Lxy1;->I()Z

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    if-nez p3, :cond_5

    .line 93
    .line 94
    invoke-static {p1}, Lab2;->j(Lxy1;)Z

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    if-eqz p3, :cond_8

    .line 99
    .line 100
    :cond_5
    invoke-virtual {p1}, Lxy1;->u()Lxy1;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    if-eqz p3, :cond_6

    .line 105
    .line 106
    invoke-virtual {p3}, Lxy1;->q()Z

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    if-ne p3, v3, :cond_6

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_6
    sget-object p3, Lyt1;->p:Lyt1;

    .line 114
    .line 115
    invoke-virtual {p2, p1, p3}, Leh;->i(Lxy1;Lyt1;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_7
    sget-object p3, Lyt1;->n:Lyt1;

    .line 120
    .line 121
    invoke-virtual {p2, p1, p3}, Leh;->i(Lxy1;Lyt1;)V

    .line 122
    .line 123
    .line 124
    :cond_8
    :goto_1
    iget-boolean p2, v0, Lab2;->d:Z

    .line 125
    .line 126
    if-nez p2, :cond_c

    .line 127
    .line 128
    if-eqz p4, :cond_c

    .line 129
    .line 130
    invoke-virtual {p0, p1}, Lq9;->I(Lxy1;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_9
    invoke-static {}, Lp61;->x()V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_a
    iget-object p0, v0, Lab2;->h:Lug2;

    .line 139
    .line 140
    new-instance p2, Lza2;

    .line 141
    .line 142
    invoke-direct {p2, p1, v3, p3}, Lza2;-><init>(Lxy1;ZZ)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p2}, Lug2;->c(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_b
    invoke-virtual {v0, p1, p3}, Lab2;->r(Lxy1;Z)Z

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    if-eqz p2, :cond_c

    .line 154
    .line 155
    if-eqz p4, :cond_c

    .line 156
    .line 157
    invoke-virtual {p0, p1}, Lq9;->I(Lxy1;)V

    .line 158
    .line 159
    .line 160
    :cond_c
    :goto_2
    return-void
.end method

.method public final x(Lxy1;ZZ)V
    .locals 9

    .line 1
    iget-object v0, p1, Lxy1;->T:Lbz1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lyt1;->q:Lyt1;

    .line 5
    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x3

    .line 8
    const/4 v5, 0x2

    .line 9
    const/4 v6, 0x1

    .line 10
    iget-object v7, p0, Lq9;->f0:Lab2;

    .line 11
    .line 12
    if-eqz p2, :cond_b

    .line 13
    .line 14
    iget-object p2, v7, Lab2;->b:Leh;

    .line 15
    .line 16
    iget-object v8, v0, Lbz1;->d:Lty1;

    .line 17
    .line 18
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    if-eqz v8, :cond_1

    .line 23
    .line 24
    if-eq v8, v6, :cond_13

    .line 25
    .line 26
    if-eq v8, v5, :cond_1

    .line 27
    .line 28
    if-eq v8, v4, :cond_13

    .line 29
    .line 30
    if-ne v8, v3, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {}, Lp61;->x()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    :goto_0
    iget-boolean v3, v0, Lbz1;->e:Z

    .line 38
    .line 39
    if-nez v3, :cond_2

    .line 40
    .line 41
    iget-boolean v3, v0, Lbz1;->f:Z

    .line 42
    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    :cond_2
    if-nez p3, :cond_3

    .line 46
    .line 47
    goto/16 :goto_6

    .line 48
    .line 49
    :cond_3
    iput-boolean v6, v0, Lbz1;->f:Z

    .line 50
    .line 51
    iput-boolean v6, v0, Lbz1;->g:Z

    .line 52
    .line 53
    iget-object p3, v0, Lbz1;->p:Lcb2;

    .line 54
    .line 55
    iput-boolean v6, p3, Lcb2;->I:Z

    .line 56
    .line 57
    iput-boolean v6, p3, Lcb2;->J:Z

    .line 58
    .line 59
    iget-boolean p3, p1, Lxy1;->d0:Z

    .line 60
    .line 61
    if-eqz p3, :cond_4

    .line 62
    .line 63
    goto/16 :goto_6

    .line 64
    .line 65
    :cond_4
    invoke-virtual {p1}, Lxy1;->u()Lxy1;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-virtual {p1}, Lxy1;->J()Ljava/lang/Boolean;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-static {v0, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_7

    .line 80
    .line 81
    if-eqz p3, :cond_5

    .line 82
    .line 83
    iget-object v0, p3, Lxy1;->T:Lbz1;

    .line 84
    .line 85
    iget-boolean v0, v0, Lbz1;->e:Z

    .line 86
    .line 87
    if-ne v0, v6, :cond_5

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_5
    if-eqz p3, :cond_6

    .line 91
    .line 92
    iget-object v0, p3, Lxy1;->T:Lbz1;

    .line 93
    .line 94
    iget-boolean v0, v0, Lbz1;->f:Z

    .line 95
    .line 96
    if-ne v0, v6, :cond_6

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_6
    sget-object p3, Lyt1;->o:Lyt1;

    .line 100
    .line 101
    invoke-virtual {p2, p1, p3}, Leh;->i(Lxy1;Lyt1;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lxy1;->I()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_a

    .line 110
    .line 111
    if-eqz p3, :cond_8

    .line 112
    .line 113
    invoke-virtual {p3}, Lxy1;->p()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-ne v0, v6, :cond_8

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_8
    if-eqz p3, :cond_9

    .line 121
    .line 122
    invoke-virtual {p3}, Lxy1;->q()Z

    .line 123
    .line 124
    .line 125
    move-result p3

    .line 126
    if-ne p3, v6, :cond_9

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_9
    invoke-virtual {p2, p1, v2}, Leh;->i(Lxy1;Lyt1;)V

    .line 130
    .line 131
    .line 132
    :cond_a
    :goto_2
    iget-boolean p1, v7, Lab2;->d:Z

    .line 133
    .line 134
    if-nez p1, :cond_13

    .line 135
    .line 136
    invoke-virtual {p0, v1}, Lq9;->I(Lxy1;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_b
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    iget-object p2, v0, Lbz1;->d:Lty1;

    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    if-eqz p2, :cond_13

    .line 150
    .line 151
    if-eq p2, v6, :cond_13

    .line 152
    .line 153
    if-eq p2, v5, :cond_13

    .line 154
    .line 155
    if-eq p2, v4, :cond_13

    .line 156
    .line 157
    if-ne p2, v3, :cond_12

    .line 158
    .line 159
    invoke-virtual {p1}, Lxy1;->u()Lxy1;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    if-eqz p2, :cond_d

    .line 164
    .line 165
    invoke-virtual {p2}, Lxy1;->I()Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-eqz v3, :cond_c

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_c
    const/4 v3, 0x0

    .line 173
    goto :goto_4

    .line 174
    :cond_d
    :goto_3
    move v3, v6

    .line 175
    :goto_4
    if-nez p3, :cond_e

    .line 176
    .line 177
    invoke-virtual {p1}, Lxy1;->q()Z

    .line 178
    .line 179
    .line 180
    move-result p3

    .line 181
    if-nez p3, :cond_13

    .line 182
    .line 183
    invoke-virtual {p1}, Lxy1;->p()Z

    .line 184
    .line 185
    .line 186
    move-result p3

    .line 187
    if-eqz p3, :cond_e

    .line 188
    .line 189
    invoke-virtual {p1}, Lxy1;->I()Z

    .line 190
    .line 191
    .line 192
    move-result p3

    .line 193
    if-ne p3, v3, :cond_e

    .line 194
    .line 195
    invoke-virtual {p1}, Lxy1;->I()Z

    .line 196
    .line 197
    .line 198
    move-result p3

    .line 199
    iget-object v4, v0, Lbz1;->p:Lcb2;

    .line 200
    .line 201
    iget-boolean v4, v4, Lcb2;->G:Z

    .line 202
    .line 203
    if-ne p3, v4, :cond_e

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_e
    iget-object p3, v0, Lbz1;->p:Lcb2;

    .line 207
    .line 208
    iput-boolean v6, p3, Lcb2;->I:Z

    .line 209
    .line 210
    iput-boolean v6, p3, Lcb2;->J:Z

    .line 211
    .line 212
    iget-boolean v0, p1, Lxy1;->d0:Z

    .line 213
    .line 214
    if-eqz v0, :cond_f

    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_f
    iget-boolean p3, p3, Lcb2;->G:Z

    .line 218
    .line 219
    if-eqz p3, :cond_13

    .line 220
    .line 221
    if-eqz v3, :cond_13

    .line 222
    .line 223
    if-eqz p2, :cond_10

    .line 224
    .line 225
    invoke-virtual {p2}, Lxy1;->p()Z

    .line 226
    .line 227
    .line 228
    move-result p3

    .line 229
    if-ne p3, v6, :cond_10

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_10
    if-eqz p2, :cond_11

    .line 233
    .line 234
    invoke-virtual {p2}, Lxy1;->q()Z

    .line 235
    .line 236
    .line 237
    move-result p2

    .line 238
    if-ne p2, v6, :cond_11

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_11
    iget-object p2, v7, Lab2;->b:Leh;

    .line 242
    .line 243
    invoke-virtual {p2, p1, v2}, Leh;->i(Lxy1;Lyt1;)V

    .line 244
    .line 245
    .line 246
    :goto_5
    iget-boolean p1, v7, Lab2;->d:Z

    .line 247
    .line 248
    if-nez p1, :cond_13

    .line 249
    .line 250
    invoke-virtual {p0, v1}, Lq9;->I(Lxy1;)V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :cond_12
    invoke-static {}, Lp61;->x()V

    .line 255
    .line 256
    .line 257
    :cond_13
    :goto_6
    return-void
.end method

.method public final y()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq9;->I:Lv9;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lv9;->L:Z

    .line 5
    .line 6
    iget-object v2, v0, Lv9;->q:Lq9;

    .line 7
    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Lv9;->p()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    iget-boolean v3, v0, Lv9;->W:Z

    .line 22
    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    iput-boolean v1, v0, Lv9;->W:Z

    .line 26
    .line 27
    iget-object v0, v0, Lv9;->Z:Ly;

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    iget-object p0, p0, Lq9;->J:Lha;

    .line 33
    .line 34
    iput-boolean v1, p0, Lha;->t:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Lha;->d()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

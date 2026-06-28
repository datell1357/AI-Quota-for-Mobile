.class public final Ltb4;
.super Landroid/view/View;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final z:Lwt0;


# instance fields
.field public final n:Lhx0;

.field public final o:Ly20;

.field public final p:Lx20;

.field public q:Z

.field public r:Landroid/graphics/Outline;

.field public s:Z

.field public t:Las0;

.field public u:Lhy1;

.field public v:Lpe1;

.field public w:Lzh1;

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lwt0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lwt0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ltb4;->z:Lwt0;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lhx0;Ly20;Lx20;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Ltb4;->n:Lhx0;

    .line 9
    .line 10
    iput-object p2, p0, Ltb4;->o:Ly20;

    .line 11
    .line 12
    iput-object p3, p0, Ltb4;->p:Lx20;

    .line 13
    .line 14
    sget-object p1, Ltb4;->z:Lwt0;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Ltb4;->s:Z

    .line 21
    .line 22
    sget-object p1, Lc75;->d:Lds0;

    .line 23
    .line 24
    iput-object p1, p0, Ltb4;->t:Las0;

    .line 25
    .line 26
    sget-object p1, Lhy1;->n:Lhy1;

    .line 27
    .line 28
    iput-object p1, p0, Ltb4;->u:Lhy1;

    .line 29
    .line 30
    sget-object p1, Lbi1;->a:Lmj1;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    sget-object p1, Ll9;->O:Ll9;

    .line 36
    .line 37
    iput-object p1, p0, Ltb4;->v:Lpe1;

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Ltb4;->x:F

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    cmpl-float v2, v2, v3

    .line 9
    .line 10
    const-wide v4, 0xffffffffL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const/16 v6, 0x20

    .line 16
    .line 17
    iget-object v7, v0, Ltb4;->p:Lx20;

    .line 18
    .line 19
    iget-object v8, v0, Ltb4;->o:Ly20;

    .line 20
    .line 21
    if-gtz v2, :cond_1

    .line 22
    .line 23
    iget v2, v0, Ltb4;->y:F

    .line 24
    .line 25
    cmpl-float v2, v2, v3

    .line 26
    .line 27
    if-lez v2, :cond_0

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_0
    iget-object v2, v8, Ly20;->a:Ly8;

    .line 32
    .line 33
    iget-object v3, v2, Ly8;->a:Landroid/graphics/Canvas;

    .line 34
    .line 35
    iput-object v1, v2, Ly8;->a:Landroid/graphics/Canvas;

    .line 36
    .line 37
    iget-object v1, v0, Ltb4;->t:Las0;

    .line 38
    .line 39
    iget-object v9, v0, Ltb4;->u:Lhy1;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result v10

    .line 45
    int-to-float v10, v10

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    int-to-float v11, v11

    .line 51
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    int-to-long v12, v10

    .line 56
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    int-to-long v10, v10

    .line 61
    shl-long/2addr v12, v6

    .line 62
    and-long/2addr v4, v10

    .line 63
    or-long/2addr v4, v12

    .line 64
    iget-object v6, v0, Ltb4;->w:Lzh1;

    .line 65
    .line 66
    iget-object v10, v0, Ltb4;->v:Lpe1;

    .line 67
    .line 68
    invoke-interface {v7}, Lkx0;->z()Leh;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    invoke-virtual {v11}, Leh;->v()Las0;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    invoke-interface {v7}, Lkx0;->z()Leh;

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    invoke-virtual {v12}, Leh;->x()Lhy1;

    .line 81
    .line 82
    .line 83
    move-result-object v12

    .line 84
    invoke-interface {v7}, Lkx0;->z()Leh;

    .line 85
    .line 86
    .line 87
    move-result-object v13

    .line 88
    invoke-virtual {v13}, Leh;->u()Lv20;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    invoke-interface {v7}, Lkx0;->z()Leh;

    .line 93
    .line 94
    .line 95
    move-result-object v14

    .line 96
    invoke-virtual {v14}, Leh;->z()J

    .line 97
    .line 98
    .line 99
    move-result-wide v14

    .line 100
    invoke-interface {v7}, Lkx0;->z()Leh;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v0, v0, Leh;->p:Ljava/lang/Object;

    .line 105
    .line 106
    move-object/from16 v16, v3

    .line 107
    .line 108
    move-object v3, v0

    .line 109
    check-cast v3, Lzh1;

    .line 110
    .line 111
    invoke-interface {v7}, Lkx0;->z()Leh;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0, v1}, Leh;->I(Las0;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v9}, Leh;->J(Lhy1;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v2}, Leh;->H(Lv20;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v4, v5}, Leh;->K(J)V

    .line 125
    .line 126
    .line 127
    iput-object v6, v0, Leh;->p:Ljava/lang/Object;

    .line 128
    .line 129
    invoke-interface {v2}, Lv20;->j()V

    .line 130
    .line 131
    .line 132
    :try_start_0
    invoke-interface {v10, v7}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    .line 135
    invoke-interface {v2}, Lv20;->h()V

    .line 136
    .line 137
    .line 138
    invoke-interface {v7}, Lkx0;->z()Leh;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0, v11}, Leh;->I(Las0;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v12}, Leh;->J(Lhy1;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v13}, Leh;->H(Lv20;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v14, v15}, Leh;->K(J)V

    .line 152
    .line 153
    .line 154
    iput-object v3, v0, Leh;->p:Ljava/lang/Object;

    .line 155
    .line 156
    iget-object v0, v8, Ly20;->a:Ly8;

    .line 157
    .line 158
    move-object/from16 v1, v16

    .line 159
    .line 160
    iput-object v1, v0, Ly8;->a:Landroid/graphics/Canvas;

    .line 161
    .line 162
    goto/16 :goto_1

    .line 163
    .line 164
    :catchall_0
    move-exception v0

    .line 165
    invoke-interface {v2}, Lv20;->h()V

    .line 166
    .line 167
    .line 168
    invoke-interface {v7}, Lkx0;->z()Leh;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1, v11}, Leh;->I(Las0;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v12}, Leh;->J(Lhy1;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v13}, Leh;->H(Lv20;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v14, v15}, Leh;->K(J)V

    .line 182
    .line 183
    .line 184
    iput-object v3, v1, Leh;->p:Ljava/lang/Object;

    .line 185
    .line 186
    throw v0

    .line 187
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    move-object/from16 v2, p0

    .line 192
    .line 193
    iget v3, v2, Ltb4;->x:F

    .line 194
    .line 195
    iget v9, v2, Ltb4;->y:F

    .line 196
    .line 197
    invoke-virtual {v1, v3, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 198
    .line 199
    .line 200
    iget-object v3, v8, Ly20;->a:Ly8;

    .line 201
    .line 202
    iget-object v9, v3, Ly8;->a:Landroid/graphics/Canvas;

    .line 203
    .line 204
    iput-object v1, v3, Ly8;->a:Landroid/graphics/Canvas;

    .line 205
    .line 206
    iget-object v10, v2, Ltb4;->t:Las0;

    .line 207
    .line 208
    iget-object v11, v2, Ltb4;->u:Lhy1;

    .line 209
    .line 210
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 211
    .line 212
    .line 213
    move-result v12

    .line 214
    int-to-float v12, v12

    .line 215
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 216
    .line 217
    .line 218
    move-result v13

    .line 219
    int-to-float v13, v13

    .line 220
    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    int-to-long v14, v12

    .line 225
    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 226
    .line 227
    .line 228
    move-result v12

    .line 229
    int-to-long v12, v12

    .line 230
    shl-long/2addr v14, v6

    .line 231
    and-long/2addr v4, v12

    .line 232
    or-long/2addr v4, v14

    .line 233
    iget-object v6, v2, Ltb4;->w:Lzh1;

    .line 234
    .line 235
    iget-object v12, v2, Ltb4;->v:Lpe1;

    .line 236
    .line 237
    invoke-interface {v7}, Lkx0;->z()Leh;

    .line 238
    .line 239
    .line 240
    move-result-object v13

    .line 241
    invoke-virtual {v13}, Leh;->v()Las0;

    .line 242
    .line 243
    .line 244
    move-result-object v13

    .line 245
    invoke-interface {v7}, Lkx0;->z()Leh;

    .line 246
    .line 247
    .line 248
    move-result-object v14

    .line 249
    invoke-virtual {v14}, Leh;->x()Lhy1;

    .line 250
    .line 251
    .line 252
    move-result-object v14

    .line 253
    invoke-interface {v7}, Lkx0;->z()Leh;

    .line 254
    .line 255
    .line 256
    move-result-object v15

    .line 257
    invoke-virtual {v15}, Leh;->u()Lv20;

    .line 258
    .line 259
    .line 260
    move-result-object v15

    .line 261
    invoke-interface {v7}, Lkx0;->z()Leh;

    .line 262
    .line 263
    .line 264
    move-result-object v16

    .line 265
    invoke-virtual/range {v16 .. v16}, Leh;->z()J

    .line 266
    .line 267
    .line 268
    move-result-wide v1

    .line 269
    move/from16 v16, v0

    .line 270
    .line 271
    invoke-interface {v7}, Lkx0;->z()Leh;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    iget-object v0, v0, Leh;->p:Ljava/lang/Object;

    .line 276
    .line 277
    move-object/from16 v17, v9

    .line 278
    .line 279
    move-object v9, v0

    .line 280
    check-cast v9, Lzh1;

    .line 281
    .line 282
    invoke-interface {v7}, Lkx0;->z()Leh;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {v0, v10}, Leh;->I(Las0;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v11}, Leh;->J(Lhy1;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v3}, Leh;->H(Lv20;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v4, v5}, Leh;->K(J)V

    .line 296
    .line 297
    .line 298
    iput-object v6, v0, Leh;->p:Ljava/lang/Object;

    .line 299
    .line 300
    invoke-interface {v3}, Lv20;->j()V

    .line 301
    .line 302
    .line 303
    :try_start_1
    invoke-interface {v12, v7}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 304
    .line 305
    .line 306
    invoke-interface {v3}, Lv20;->h()V

    .line 307
    .line 308
    .line 309
    invoke-interface {v7}, Lkx0;->z()Leh;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {v0, v13}, Leh;->I(Las0;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v14}, Leh;->J(Lhy1;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0, v15}, Leh;->H(Lv20;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0, v1, v2}, Leh;->K(J)V

    .line 323
    .line 324
    .line 325
    iput-object v9, v0, Leh;->p:Ljava/lang/Object;

    .line 326
    .line 327
    iget-object v0, v8, Ly20;->a:Ly8;

    .line 328
    .line 329
    move-object/from16 v1, v17

    .line 330
    .line 331
    iput-object v1, v0, Ly8;->a:Landroid/graphics/Canvas;

    .line 332
    .line 333
    move-object/from16 v1, p1

    .line 334
    .line 335
    move/from16 v0, v16

    .line 336
    .line 337
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 338
    .line 339
    .line 340
    :goto_1
    const/4 v0, 0x0

    .line 341
    move-object/from16 v2, p0

    .line 342
    .line 343
    iput-boolean v0, v2, Ltb4;->q:Z

    .line 344
    .line 345
    return-void

    .line 346
    :catchall_1
    move-exception v0

    .line 347
    invoke-interface {v3}, Lv20;->h()V

    .line 348
    .line 349
    .line 350
    invoke-interface {v7}, Lkx0;->z()Leh;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    invoke-virtual {v3, v13}, Leh;->I(Las0;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v3, v14}, Leh;->J(Lhy1;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v3, v15}, Leh;->H(Lv20;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v3, v1, v2}, Leh;->K(J)V

    .line 364
    .line 365
    .line 366
    iput-object v9, v3, Leh;->p:Ljava/lang/Object;

    .line 367
    .line 368
    throw v0
.end method

.method public final forceLayout()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getCanUseCompositingLayer$ui_graphics()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ltb4;->s:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getCanvasHolder()Ly20;
    .locals 0

    .line 1
    iget-object p0, p0, Ltb4;->o:Ly20;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOwnerView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Ltb4;->n:Lhx0;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ltb4;->s:Z

    .line 2
    .line 3
    return p0
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ltb4;->q:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Ltb4;->q:Z

    .line 7
    .line 8
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setCanUseCompositingLayer$ui_graphics(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ltb4;->s:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Ltb4;->s:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Ltb4;->invalidate()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final setInvalidated(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ltb4;->q:Z

    .line 2
    .line 3
    return-void
.end method

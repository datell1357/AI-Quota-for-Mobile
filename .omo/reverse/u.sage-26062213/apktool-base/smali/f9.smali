.class public final Lf9;
.super Lmd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lxx;
.implements Leh3;
.implements Lpx1;
.implements Loy1;
.implements Lb24;


# instance fields
.field public B:Lue4;

.field public final C:Lz;

.field public final D:Lc8;

.field public final synthetic E:Lq9;


# direct methods
.method public constructor <init>(Lq9;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lf9;->E:Lq9;

    .line 2
    .line 3
    invoke-direct {p0}, Lmd2;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lz;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0, p0}, Lz;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lf9;->C:Lz;

    .line 13
    .line 14
    new-instance p1, Lc8;

    .line 15
    .line 16
    invoke-direct {p1, v0, p0}, Lc8;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lf9;->D:Lc8;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final R(Landroid/view/KeyEvent;)Z
    .locals 8

    .line 1
    sget-object v0, Lv91;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lk30;->c(I)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    sget-wide v2, Lnx1;->b:J

    .line 12
    .line 13
    invoke-static {v0, v1, v2, v3}, Lnx1;->a(JJ)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    new-instance v0, Lp91;

    .line 22
    .line 23
    invoke-direct {v0, v4}, Lp91;-><init>(I)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :cond_0
    sget-wide v5, Lnx1;->c:J

    .line 29
    .line 30
    invoke-static {v0, v1, v5, v6}, Lnx1;->a(JJ)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    new-instance v0, Lp91;

    .line 37
    .line 38
    invoke-direct {v0, v3}, Lp91;-><init>(I)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_5

    .line 42
    .line 43
    :cond_1
    sget-wide v5, Lnx1;->i:J

    .line 44
    .line 45
    invoke-static {v0, v1, v5, v6}, Lnx1;->a(JJ)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    move v0, v4

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move v0, v3

    .line 60
    :goto_0
    new-instance v1, Lp91;

    .line 61
    .line 62
    invoke-direct {v1, v0}, Lp91;-><init>(I)V

    .line 63
    .line 64
    .line 65
    move-object v0, v1

    .line 66
    goto/16 :goto_5

    .line 67
    .line 68
    :cond_3
    sget-wide v5, Lnx1;->g:J

    .line 69
    .line 70
    invoke-static {v0, v1, v5, v6}, Lnx1;->a(JJ)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_4

    .line 75
    .line 76
    new-instance v0, Lp91;

    .line 77
    .line 78
    const/4 v1, 0x4

    .line 79
    invoke-direct {v0, v1}, Lp91;-><init>(I)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_5

    .line 83
    .line 84
    :cond_4
    sget-wide v5, Lnx1;->f:J

    .line 85
    .line 86
    invoke-static {v0, v1, v5, v6}, Lnx1;->a(JJ)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_5

    .line 91
    .line 92
    new-instance v0, Lp91;

    .line 93
    .line 94
    const/4 v1, 0x3

    .line 95
    invoke-direct {v0, v1}, Lp91;-><init>(I)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_5

    .line 99
    .line 100
    :cond_5
    sget-wide v5, Lnx1;->d:J

    .line 101
    .line 102
    invoke-static {v0, v1, v5, v6}, Lnx1;->a(JJ)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_d

    .line 107
    .line 108
    sget-wide v5, Lnx1;->m:J

    .line 109
    .line 110
    invoke-static {v0, v1, v5, v6}, Lnx1;->a(JJ)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_6

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_6
    sget-wide v5, Lnx1;->e:J

    .line 118
    .line 119
    invoke-static {v0, v1, v5, v6}, Lnx1;->a(JJ)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-nez v2, :cond_c

    .line 124
    .line 125
    sget-wide v5, Lnx1;->n:J

    .line 126
    .line 127
    invoke-static {v0, v1, v5, v6}, Lnx1;->a(JJ)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_7

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_7
    sget-wide v5, Lnx1;->h:J

    .line 135
    .line 136
    invoke-static {v0, v1, v5, v6}, Lnx1;->a(JJ)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-nez v2, :cond_b

    .line 141
    .line 142
    sget-wide v5, Lnx1;->k:J

    .line 143
    .line 144
    invoke-static {v0, v1, v5, v6}, Lnx1;->a(JJ)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-nez v2, :cond_b

    .line 149
    .line 150
    sget-wide v5, Lnx1;->o:J

    .line 151
    .line 152
    invoke-static {v0, v1, v5, v6}, Lnx1;->a(JJ)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_8

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_8
    sget-wide v5, Lnx1;->a:J

    .line 160
    .line 161
    invoke-static {v0, v1, v5, v6}, Lnx1;->a(JJ)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-nez v2, :cond_a

    .line 166
    .line 167
    sget-wide v5, Lnx1;->l:J

    .line 168
    .line 169
    invoke-static {v0, v1, v5, v6}, Lnx1;->a(JJ)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_9

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_9
    const/4 v0, 0x0

    .line 177
    goto :goto_5

    .line 178
    :cond_a
    :goto_1
    new-instance v0, Lp91;

    .line 179
    .line 180
    const/16 v1, 0x8

    .line 181
    .line 182
    invoke-direct {v0, v1}, Lp91;-><init>(I)V

    .line 183
    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_b
    :goto_2
    new-instance v0, Lp91;

    .line 187
    .line 188
    const/4 v1, 0x7

    .line 189
    invoke-direct {v0, v1}, Lp91;-><init>(I)V

    .line 190
    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_c
    :goto_3
    new-instance v0, Lp91;

    .line 194
    .line 195
    const/4 v1, 0x6

    .line 196
    invoke-direct {v0, v1}, Lp91;-><init>(I)V

    .line 197
    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_d
    :goto_4
    new-instance v0, Lp91;

    .line 201
    .line 202
    const/4 v1, 0x5

    .line 203
    invoke-direct {v0, v1}, Lp91;-><init>(I)V

    .line 204
    .line 205
    .line 206
    :goto_5
    const/4 v1, 0x0

    .line 207
    if-eqz v0, :cond_17

    .line 208
    .line 209
    iget v2, v0, Lp91;->a:I

    .line 210
    .line 211
    invoke-static {p1}, Ltv4;->z(Landroid/view/KeyEvent;)I

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-ne v5, v4, :cond_17

    .line 216
    .line 217
    iget-object p0, p0, Lf9;->E:Lq9;

    .line 218
    .line 219
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    check-cast v5, Ldh;

    .line 224
    .line 225
    invoke-virtual {v5}, Ldh;->f()Lka1;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    if-eqz v5, :cond_f

    .line 230
    .line 231
    iget-boolean v5, v5, Lka1;->B:Z

    .line 232
    .line 233
    if-ne v5, v3, :cond_f

    .line 234
    .line 235
    invoke-virtual {p0, v2}, Lq9;->t(I)Z

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    if-eqz v5, :cond_f

    .line 240
    .line 241
    invoke-virtual {p0}, Lq9;->getPlayNavigationSoundEffect$ui()Ldf1;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    if-lez p1, :cond_e

    .line 250
    .line 251
    move v1, v3

    .line 252
    :cond_e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-interface {p0, v0, p1}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    return v3

    .line 260
    :cond_f
    invoke-virtual {p0}, Lq9;->getEmbeddedViewFocusRect()Ll33;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    new-instance v7, Lc8;

    .line 269
    .line 270
    invoke-direct {v7, v4, v0}, Lc8;-><init>(ILjava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    check-cast v6, Ldh;

    .line 274
    .line 275
    invoke-virtual {v6, v2, v5, v7}, Ldh;->e(ILl33;Lpe1;)Ljava/lang/Boolean;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    if-eqz v5, :cond_16

    .line 280
    .line 281
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    if-eqz v5, :cond_11

    .line 286
    .line 287
    invoke-virtual {p0}, Lq9;->getPlayNavigationSoundEffect$ui()Ldf1;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    if-lez p1, :cond_10

    .line 296
    .line 297
    move v1, v3

    .line 298
    :cond_10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-interface {p0, v0, p1}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    return v3

    .line 306
    :cond_11
    if-ne v2, v3, :cond_12

    .line 307
    .line 308
    goto :goto_6

    .line 309
    :cond_12
    if-ne v2, v4, :cond_15

    .line 310
    .line 311
    :goto_6
    invoke-static {v2}, Lv91;->c(I)Ljava/lang/Integer;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    if-eqz p1, :cond_13

    .line 316
    .line 317
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    :cond_13
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    check-cast v0, Landroid/view/ViewGroup;

    .line 333
    .line 334
    invoke-virtual {p0}, Lq9;->getView()Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    invoke-virtual {p1, v0, v3, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    if-eqz p1, :cond_14

    .line 343
    .line 344
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result p1

    .line 348
    if-eqz p1, :cond_17

    .line 349
    .line 350
    :cond_14
    invoke-virtual {p0}, Lq9;->getFocusOwner()Ly91;

    .line 351
    .line 352
    .line 353
    move-result-object p0

    .line 354
    check-cast p0, Ldh;

    .line 355
    .line 356
    invoke-virtual {p0, v2}, Ldh;->j(I)Z

    .line 357
    .line 358
    .line 359
    move-result p0

    .line 360
    return p0

    .line 361
    :cond_15
    return v1

    .line 362
    :cond_16
    return v3

    .line 363
    :cond_17
    return v1
.end method

.method public final a0(Lph3;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final h0(Lgb2;Lya2;J)Leb2;
    .locals 7

    .line 1
    invoke-interface {p2, p3, p4}, Lya2;->e(J)Ldv2;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget v1, p2, Ldv2;->n:I

    .line 6
    .line 7
    iget v2, p2, Ldv2;->o:I

    .line 8
    .line 9
    new-instance v6, Le9;

    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    invoke-direct {v6, p2, p3}, Le9;-><init>(Ldv2;I)V

    .line 13
    .line 14
    .line 15
    sget-object v5, Lh01;->n:Lh01;

    .line 16
    .line 17
    iget-object v3, p0, Lf9;->D:Lc8;

    .line 18
    .line 19
    iget-object v4, p0, Lf9;->C:Lz;

    .line 20
    .line 21
    move-object v0, p1

    .line 22
    invoke-interface/range {v0 .. v6}, Lgb2;->W(IILc8;Lz;Ljava/util/Map;Le9;)Leb2;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final j(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final j0(Lmm2;Lj9;Lbv3;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Lmm2;->J(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p2}, Lj9;->a()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ll33;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Ll33;->e(J)Ll33;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    if-eqz p1, :cond_1

    .line 22
    .line 23
    new-instance p2, Landroid/graphics/Rect;

    .line 24
    .line 25
    iget p3, p1, Ll33;->a:F

    .line 26
    .line 27
    float-to-int p3, p3

    .line 28
    iget v0, p1, Ll33;->b:F

    .line 29
    .line 30
    float-to-int v0, v0

    .line 31
    iget v1, p1, Ll33;->c:F

    .line 32
    .line 33
    float-to-int v1, v1

    .line 34
    iget p1, p1, Ll33;->d:F

    .line 35
    .line 36
    float-to-int p1, p1

    .line 37
    invoke-direct {p2, p3, v0, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    iget-object p0, p0, Lf9;->E:Lq9;

    .line 42
    .line 43
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    sget-object p0, Lt64;->a:Lt64;

    .line 47
    .line 48
    return-object p0
.end method

.method public final n()Ljava/lang/Object;
    .locals 0

    .line 1
    const-string p0, "androidx.compose.ui.layout.WindowInsetsRulers"

    .line 2
    .line 3
    return-object p0
.end method

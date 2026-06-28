.class public final Lfb0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Landroid/view/ScrollCaptureCallback;


# instance fields
.field public final a:Lgh3;

.field public final b:Lns1;

.field public final c:Ldd1;

.field public final d:Lq9;

.field public final e:Lbh0;

.field public final f:Lk53;


# direct methods
.method public constructor <init>(Lgh3;Lns1;Lbh0;Ldd1;Lq9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfb0;->a:Lgh3;

    .line 5
    .line 6
    iput-object p2, p0, Lfb0;->b:Lns1;

    .line 7
    .line 8
    iput-object p4, p0, Lfb0;->c:Ldd1;

    .line 9
    .line 10
    iput-object p5, p0, Lfb0;->d:Lq9;

    .line 11
    .line 12
    new-instance p1, Lbh0;

    .line 13
    .line 14
    iget-object p3, p3, Lbh0;->n:Lhi0;

    .line 15
    .line 16
    sget-object p4, Lku0;->o:Lku0;

    .line 17
    .line 18
    invoke-interface {p3, p4}, Lhi0;->F(Lhi0;)Lhi0;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-direct {p1, p3}, Lbh0;-><init>(Lhi0;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lfb0;->e:Lbh0;

    .line 26
    .line 27
    new-instance p1, Lk53;

    .line 28
    .line 29
    iget p3, p2, Lns1;->d:I

    .line 30
    .line 31
    iget p2, p2, Lns1;->b:I

    .line 32
    .line 33
    sub-int/2addr p3, p2

    .line 34
    new-instance p2, Laz3;

    .line 35
    .line 36
    const/4 p4, 0x0

    .line 37
    invoke-direct {p2, p0, p4}, Laz3;-><init>(Lfb0;Ldh0;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p3, p2}, Lk53;-><init>(ILaz3;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lfb0;->f:Lk53;

    .line 44
    .line 45
    return-void
.end method

.method public static final a(Lfb0;Landroid/view/ScrollCaptureSession;Lns1;Lfh0;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p3, Leb0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Leb0;

    .line 7
    .line 8
    iget v1, v0, Leb0;->w:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Leb0;->w:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Leb0;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Leb0;-><init>(Lfb0;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Leb0;->u:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Leb0;->w:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x2

    .line 32
    sget-object v5, Lri0;->n:Lri0;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    if-eq v1, v3, :cond_2

    .line 37
    .line 38
    if-ne v1, v4, :cond_1

    .line 39
    .line 40
    iget p1, v0, Leb0;->t:I

    .line 41
    .line 42
    iget p2, v0, Leb0;->s:I

    .line 43
    .line 44
    iget-object v1, v0, Leb0;->r:Lns1;

    .line 45
    .line 46
    iget-object v0, v0, Leb0;->q:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-static {v0}, Lz9;->e(Ljava/lang/Object;)Landroid/view/ScrollCaptureSession;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {p3}, Lgg4;->T(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v2

    .line 63
    :cond_2
    iget p1, v0, Leb0;->t:I

    .line 64
    .line 65
    iget p2, v0, Leb0;->s:I

    .line 66
    .line 67
    iget-object v1, v0, Leb0;->r:Lns1;

    .line 68
    .line 69
    iget-object v2, v0, Leb0;->q:Ljava/lang/Object;

    .line 70
    .line 71
    invoke-static {v2}, Lz9;->e(Ljava/lang/Object;)Landroid/view/ScrollCaptureSession;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {p3}, Lgg4;->T(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    move p3, p2

    .line 79
    move-object p2, v1

    .line 80
    move v1, p1

    .line 81
    move-object p1, v2

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    invoke-static {p3}, Lgg4;->T(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iget p3, p2, Lns1;->b:I

    .line 87
    .line 88
    iget v1, p2, Lns1;->d:I

    .line 89
    .line 90
    iget-object v6, p0, Lfb0;->f:Lk53;

    .line 91
    .line 92
    iput-object p1, v0, Leb0;->q:Ljava/lang/Object;

    .line 93
    .line 94
    iput-object p2, v0, Leb0;->r:Lns1;

    .line 95
    .line 96
    iput p3, v0, Leb0;->s:I

    .line 97
    .line 98
    iput v1, v0, Leb0;->t:I

    .line 99
    .line 100
    iput v3, v0, Leb0;->w:I

    .line 101
    .line 102
    if-gt p3, v1, :cond_a

    .line 103
    .line 104
    sub-int v3, v1, p3

    .line 105
    .line 106
    iget v7, v6, Lk53;->a:I

    .line 107
    .line 108
    if-gt v3, v7, :cond_9

    .line 109
    .line 110
    div-int/2addr v3, v4

    .line 111
    add-int/2addr v3, p3

    .line 112
    div-int/2addr v7, v4

    .line 113
    sub-int/2addr v3, v7

    .line 114
    int-to-float v2, v3

    .line 115
    iget v3, v6, Lk53;->c:F

    .line 116
    .line 117
    sub-float/2addr v2, v3

    .line 118
    invoke-virtual {v6, v2, v0}, Lk53;->a(FLfh0;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    sget-object v3, Lt64;->a:Lt64;

    .line 123
    .line 124
    if-ne v2, v5, :cond_4

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    move-object v2, v3

    .line 128
    :goto_1
    if-ne v2, v5, :cond_5

    .line 129
    .line 130
    move-object v3, v2

    .line 131
    :cond_5
    if-ne v3, v5, :cond_6

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    :goto_2
    sget-object v2, Ll9;->D:Ll9;

    .line 135
    .line 136
    iput-object p1, v0, Leb0;->q:Ljava/lang/Object;

    .line 137
    .line 138
    iput-object p2, v0, Leb0;->r:Lns1;

    .line 139
    .line 140
    iput p3, v0, Leb0;->s:I

    .line 141
    .line 142
    iput v1, v0, Leb0;->t:I

    .line 143
    .line 144
    iput v4, v0, Leb0;->w:I

    .line 145
    .line 146
    iget-object v3, v0, Lfh0;->o:Lhi0;

    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-static {v3}, Lc75;->E(Lhi0;)Lqc;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v3, v2, v0}, Lqc;->a(Lpe1;Ldh0;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-ne v0, v5, :cond_7

    .line 160
    .line 161
    :goto_3
    return-object v5

    .line 162
    :cond_7
    move-object v0, p1

    .line 163
    move p1, v1

    .line 164
    move-object v1, p2

    .line 165
    move p2, p3

    .line 166
    :goto_4
    iget-object p3, p0, Lfb0;->f:Lk53;

    .line 167
    .line 168
    iget v2, p3, Lk53;->c:F

    .line 169
    .line 170
    invoke-static {v2}, Lis0;->V(F)I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    sub-int/2addr p2, v2

    .line 175
    iget p3, p3, Lk53;->a:I

    .line 176
    .line 177
    const/4 v2, 0x0

    .line 178
    invoke-static {p2, v2, p3}, Lix;->k(III)I

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    iget-object p3, p0, Lfb0;->f:Lk53;

    .line 183
    .line 184
    iget v3, p3, Lk53;->c:F

    .line 185
    .line 186
    invoke-static {v3}, Lis0;->V(F)I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    sub-int/2addr p1, v3

    .line 191
    iget p3, p3, Lk53;->a:I

    .line 192
    .line 193
    invoke-static {p1, v2, p3}, Lix;->k(III)I

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    iget p3, v1, Lns1;->a:I

    .line 198
    .line 199
    iget v1, v1, Lns1;->c:I

    .line 200
    .line 201
    if-ne p2, p1, :cond_8

    .line 202
    .line 203
    sget-object p0, Lns1;->e:Lns1;

    .line 204
    .line 205
    return-object p0

    .line 206
    :cond_8
    invoke-static {v0}, Lz9;->g(Landroid/view/ScrollCaptureSession;)Landroid/view/Surface;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v2}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    :try_start_0
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 215
    .line 216
    .line 217
    int-to-float v3, p3

    .line 218
    neg-float v3, v3

    .line 219
    int-to-float v4, p2

    .line 220
    neg-float v4, v4

    .line 221
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 222
    .line 223
    .line 224
    iget-object v3, p0, Lfb0;->b:Lns1;

    .line 225
    .line 226
    iget v4, v3, Lns1;->a:I

    .line 227
    .line 228
    int-to-float v4, v4

    .line 229
    neg-float v4, v4

    .line 230
    iget v3, v3, Lns1;->b:I

    .line 231
    .line 232
    int-to-float v3, v3

    .line 233
    neg-float v3, v3

    .line 234
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 235
    .line 236
    .line 237
    iget-object v3, p0, Lfb0;->d:Lq9;

    .line 238
    .line 239
    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-virtual {v3, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .line 245
    .line 246
    invoke-static {v0}, Lz9;->C(Landroid/view/ScrollCaptureSession;)Landroid/view/Surface;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 251
    .line 252
    .line 253
    iget-object p0, p0, Lfb0;->f:Lk53;

    .line 254
    .line 255
    iget p0, p0, Lk53;->c:F

    .line 256
    .line 257
    invoke-static {p0}, Lis0;->V(F)I

    .line 258
    .line 259
    .line 260
    move-result p0

    .line 261
    new-instance v0, Lns1;

    .line 262
    .line 263
    add-int/2addr p2, p0

    .line 264
    add-int/2addr p1, p0

    .line 265
    invoke-direct {v0, p3, p2, v1, p1}, Lns1;-><init>(IIII)V

    .line 266
    .line 267
    .line 268
    return-object v0

    .line 269
    :catchall_0
    move-exception p0

    .line 270
    invoke-static {v0}, Lz9;->C(Landroid/view/ScrollCaptureSession;)Landroid/view/Surface;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-virtual {p1, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 275
    .line 276
    .line 277
    throw p0

    .line 278
    :cond_9
    const-string p0, "Expected range ("

    .line 279
    .line 280
    const-string p1, ") to be \u2264 viewportSize="

    .line 281
    .line 282
    invoke-static {v3, v7, p0, p1}, Ldi0;->p(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    invoke-static {p0}, Lk21;->l(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    return-object v2

    .line 290
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    new-instance p0, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string p1, "Expected min="

    .line 296
    .line 297
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string p1, " \u2264 max="

    .line 304
    .line 305
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 316
    .line 317
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    throw p1
.end method


# virtual methods
.method public final onScrollCaptureEnd(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    sget-object v0, Lsm2;->o:Lsm2;

    .line 2
    .line 3
    new-instance v1, Ln;

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v1, p0, p1, v3, v2}, Ln;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    iget-object p0, p0, Lfb0;->e:Lbh0;

    .line 13
    .line 14
    invoke-static {p0, v0, v3, v1, p1}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onScrollCaptureImageRequest(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 7

    .line 1
    new-instance v0, Lqd;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v6, 0x1

    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    invoke-direct/range {v0 .. v6}, Lqd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    const/4 p1, 0x3

    .line 14
    iget-object p3, v1, Lfb0;->e:Lbh0;

    .line 15
    .line 16
    invoke-static {p3, p0, p0, v0, p1}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance p1, Lc8;

    .line 21
    .line 22
    const/16 p3, 0x9

    .line 23
    .line 24
    invoke-direct {p1, p3, p2}, Lc8;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lbv1;->V(Lpe1;)Ljv0;

    .line 28
    .line 29
    .line 30
    new-instance p1, Lgb0;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Lgb0;-><init>(Lir3;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final onScrollCaptureSearch(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lfb0;->b:Lns1;

    .line 2
    .line 3
    invoke-static {p0}, Ldm0;->M(Lns1;)Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onScrollCaptureStart(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lfb0;->f:Lk53;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    iput p2, p1, Lk53;->c:F

    .line 5
    .line 6
    iget-object p0, p0, Lfb0;->c:Ldd1;

    .line 7
    .line 8
    iget-object p0, p0, Ldd1;->o:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lws2;

    .line 11
    .line 12
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.class public final Loc;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Loc;->o:I

    .line 2
    .line 3
    iput-object p2, p0, Loc;->q:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Loc;->p:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Loc;->o:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lpb0;

    .line 9
    .line 10
    iget-object v0, p0, Loc;->p:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ldf1;

    .line 13
    .line 14
    iget-object p0, p0, Loc;->q:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lmh4;

    .line 17
    .line 18
    iget-boolean v1, p0, Lmh4;->p:Z

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Lpb0;->c()Lp22;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v3, p1, Lpb0;->a:Landroid/view/View;

    .line 27
    .line 28
    invoke-interface {v1}, Lp22;->getLifecycle()Lh22;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v0, p0, Lmh4;->r:Ldf1;

    .line 33
    .line 34
    iget-object v4, p0, Lmh4;->q:Lh22;

    .line 35
    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {p1, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_0

    .line 55
    .line 56
    new-instance p1, Lh7;

    .line 57
    .line 58
    const/16 v0, 0x16

    .line 59
    .line 60
    invoke-direct {p1, v0, p0, v1}, Lh7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iput-object v1, p0, Lmh4;->q:Lh22;

    .line 68
    .line 69
    invoke-virtual {v1, p0}, Lh22;->a(Lo22;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    check-cast v1, Lr22;

    .line 74
    .line 75
    iget-object v1, v1, Lr22;->d:Lg22;

    .line 76
    .line 77
    sget-object v3, Lg22;->p:Lg22;

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-ltz v1, :cond_2

    .line 84
    .line 85
    iget-object v1, p0, Lmh4;->o:Lec0;

    .line 86
    .line 87
    new-instance v3, Lma;

    .line 88
    .line 89
    invoke-direct {v3, p1, p0, v0}, Lma;-><init>(Lpb0;Lmh4;Ldf1;)V

    .line 90
    .line 91
    .line 92
    new-instance p0, Lka0;

    .line 93
    .line 94
    const p1, -0x66c1ecc8

    .line 95
    .line 96
    .line 97
    invoke-direct {p0, p1, v2, v3}, Lka0;-><init>(IZLef1;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p0}, Lec0;->B(Ldf1;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    :goto_0
    sget-object p0, Lt64;->a:Lt64;

    .line 104
    .line 105
    return-object p0

    .line 106
    :pswitch_0
    check-cast p1, Lcv2;

    .line 107
    .line 108
    iget-object v0, p0, Loc;->q:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v0, Ldv2;

    .line 111
    .line 112
    iget-object p0, p0, Loc;->p:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast p0, Lxm3;

    .line 115
    .line 116
    iget-object p0, p0, Lxm3;->N:Lc8;

    .line 117
    .line 118
    invoke-static {p1, v0, p0}, Lcv2;->m(Lcv2;Ldv2;Lpe1;)V

    .line 119
    .line 120
    .line 121
    sget-object p0, Lt64;->a:Lt64;

    .line 122
    .line 123
    return-object p0

    .line 124
    :pswitch_1
    check-cast p1, Landroid/view/MotionEvent;

    .line 125
    .line 126
    iget-object v0, p0, Loc;->p:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v0, Lfw2;

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_4

    .line 135
    .line 136
    iget-object p0, p0, Loc;->q:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p0, Lqd1;

    .line 139
    .line 140
    invoke-virtual {v0}, Lfw2;->e()Lpe1;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Lwc;

    .line 145
    .line 146
    invoke-virtual {v0, p1}, Lwc;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Ljava/lang/Boolean;

    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_3

    .line 157
    .line 158
    sget-object p1, Lew2;->o:Lew2;

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_3
    sget-object p1, Lew2;->p:Lew2;

    .line 162
    .line 163
    :goto_1
    iput-object p1, p0, Lqd1;->p:Ljava/lang/Object;

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_4
    invoke-virtual {v0}, Lfw2;->e()Lpe1;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    check-cast p0, Lwc;

    .line 171
    .line 172
    invoke-virtual {p0, p1}, Lwc;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    :goto_2
    sget-object p0, Lt64;->a:Lt64;

    .line 176
    .line 177
    return-object p0

    .line 178
    :pswitch_2
    check-cast p1, Ljava/lang/Throwable;

    .line 179
    .line 180
    iget-object v0, p0, Loc;->q:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v0, Lb20;

    .line 183
    .line 184
    if-eqz p1, :cond_6

    .line 185
    .line 186
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    .line 187
    .line 188
    if-eqz p0, :cond_5

    .line 189
    .line 190
    iput-boolean v2, v0, Lb20;->d:Z

    .line 191
    .line 192
    iget-object p0, v0, Lb20;->b:Le20;

    .line 193
    .line 194
    if-eqz p0, :cond_7

    .line 195
    .line 196
    iget-object p0, p0, Le20;->o:Ld20;

    .line 197
    .line 198
    invoke-virtual {p0, v2}, Lb2;->cancel(Z)Z

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    if-eqz p0, :cond_7

    .line 203
    .line 204
    iput-object v1, v0, Lb20;->a:Ljava/lang/Object;

    .line 205
    .line 206
    iput-object v1, v0, Lb20;->b:Le20;

    .line 207
    .line 208
    iput-object v1, v0, Lb20;->c:Lj73;

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_5
    invoke-virtual {v0, p1}, Lb20;->b(Ljava/lang/Throwable;)V

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_6
    iget-object p0, p0, Loc;->p:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast p0, Lzq0;

    .line 218
    .line 219
    invoke-virtual {p0}, Lbv1;->D()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-virtual {v0, p0}, Lb20;->a(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    :cond_7
    :goto_3
    sget-object p0, Lt64;->a:Lt64;

    .line 227
    .line 228
    return-object p0

    .line 229
    :pswitch_3
    check-cast p1, Lcv2;

    .line 230
    .line 231
    iget-object v0, p0, Loc;->q:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v0, Ldv2;

    .line 234
    .line 235
    iget-object p0, p0, Loc;->p:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast p0, Lqw;

    .line 238
    .line 239
    iget-object p0, p0, Lqw;->B:Lpe1;

    .line 240
    .line 241
    invoke-static {p1, v0, p0}, Lcv2;->m(Lcv2;Ldv2;Lpe1;)V

    .line 242
    .line 243
    .line 244
    sget-object p0, Lt64;->a:Lt64;

    .line 245
    .line 246
    return-object p0

    .line 247
    :pswitch_4
    check-cast p1, Lcv2;

    .line 248
    .line 249
    iget-object v0, p0, Loc;->q:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v0, Ldv2;

    .line 252
    .line 253
    iget-object p0, p0, Loc;->p:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast p0, Lng0;

    .line 256
    .line 257
    iget-object p0, p0, Lng0;->c:Lss2;

    .line 258
    .line 259
    invoke-virtual {p0}, Lss2;->g()F

    .line 260
    .line 261
    .line 262
    move-result p0

    .line 263
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    invoke-static {p1, v0}, Lcv2;->a(Lcv2;Ldv2;)V

    .line 267
    .line 268
    .line 269
    iget-wide v2, v0, Ldv2;->r:J

    .line 270
    .line 271
    const-wide/16 v4, 0x0

    .line 272
    .line 273
    invoke-static {v4, v5, v2, v3}, Ljs1;->c(JJ)J

    .line 274
    .line 275
    .line 276
    move-result-wide v2

    .line 277
    invoke-virtual {v0, v2, v3, p0, v1}, Ldv2;->d0(JFLpe1;)V

    .line 278
    .line 279
    .line 280
    sget-object p0, Lt64;->a:Lt64;

    .line 281
    .line 282
    return-object p0

    .line 283
    :pswitch_5
    check-cast p1, Lnd2;

    .line 284
    .line 285
    iget-object v0, p0, Loc;->q:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v0, Lxy1;

    .line 288
    .line 289
    iget-object p0, p0, Loc;->p:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast p0, Lnd2;

    .line 292
    .line 293
    invoke-interface {p1, p0}, Lnd2;->c(Lnd2;)Lnd2;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    invoke-virtual {v0, p0}, Lxy1;->f0(Lnd2;)V

    .line 298
    .line 299
    .line 300
    sget-object p0, Lt64;->a:Lt64;

    .line 301
    .line 302
    return-object p0

    .line 303
    :pswitch_6
    check-cast p1, Ljava/lang/Throwable;

    .line 304
    .line 305
    iget-object p1, p0, Loc;->q:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast p1, Lqc;

    .line 308
    .line 309
    iget-object p1, p1, Lqc;->o:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast p1, Landroid/view/Choreographer;

    .line 312
    .line 313
    iget-object p0, p0, Loc;->p:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast p0, Lpc;

    .line 316
    .line 317
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 318
    .line 319
    .line 320
    sget-object p0, Lt64;->a:Lt64;

    .line 321
    .line 322
    return-object p0

    .line 323
    :pswitch_7
    check-cast p1, Ljava/lang/Throwable;

    .line 324
    .line 325
    iget-object p1, p0, Loc;->q:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast p1, Lnc;

    .line 328
    .line 329
    iget-object p0, p0, Loc;->p:Ljava/lang/Object;

    .line 330
    .line 331
    check-cast p0, Lpc;

    .line 332
    .line 333
    iget-object v0, p1, Lnc;->r:Ljava/lang/Object;

    .line 334
    .line 335
    monitor-enter v0

    .line 336
    :try_start_0
    iget-object p1, p1, Lnc;->t:Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    .line 340
    .line 341
    monitor-exit v0

    .line 342
    sget-object p0, Lt64;->a:Lt64;

    .line 343
    .line 344
    return-object p0

    .line 345
    :catchall_0
    move-exception p0

    .line 346
    monitor-exit v0

    .line 347
    throw p0

    .line 348
    nop

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
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

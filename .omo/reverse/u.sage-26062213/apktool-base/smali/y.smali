.class public final synthetic Ly;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ly;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Ly;->o:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a()V
    .locals 4

    .line 1
    iget-object p0, p0, Ly;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lmu0;

    .line 4
    .line 5
    iget-object v0, p0, Lmu0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, p0, Lmu0;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->isMarked()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lmu0;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ltx1;

    .line 33
    .line 34
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    .line 36
    .line 37
    iget-object v2, v0, Ltx1;->a:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    :try_start_2
    monitor-exit v0

    .line 47
    iget-object v0, p0, Lmu0;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ltx1;

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto :goto_1

    .line 64
    :catchall_1
    move-exception v1

    .line 65
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 66
    :try_start_4
    throw v1

    .line 67
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    iget-object v0, p0, Lmu0;->d:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Lq51;

    .line 73
    .line 74
    iget-object v2, v0, Lq51;->b:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v2, Luc2;

    .line 77
    .line 78
    iget-object v0, v0, Lq51;->a:Ljava/lang/String;

    .line 79
    .line 80
    iget-boolean p0, p0, Lmu0;->a:Z

    .line 81
    .line 82
    invoke-virtual {v2, v0, v1, p0}, Luc2;->h(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 83
    .line 84
    .line 85
    :cond_1
    return-void

    .line 86
    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 87
    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Ly;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Ly;->o:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lqd1;

    .line 12
    .line 13
    iget-object v0, p0, Lqd1;->r:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lob3;

    .line 16
    .line 17
    new-instance v1, Lr6;

    .line 18
    .line 19
    const/16 v2, 0x14

    .line 20
    .line 21
    invoke-direct {v1, v2, p0}, Lr6;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lob3;->B(Lmv3;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    invoke-direct {p0}, Ly;->a()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_1
    iget-object p0, p0, Ly;->o:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Lz83;

    .line 35
    .line 36
    invoke-static {p0}, Lz83;->a(Lz83;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_2
    iget-object p0, p0, Ly;->o:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lbz2;

    .line 43
    .line 44
    iget-object v0, p0, Lbz2;->s:Lr22;

    .line 45
    .line 46
    iget v1, p0, Lbz2;->o:I

    .line 47
    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    iput-boolean v3, p0, Lbz2;->p:Z

    .line 51
    .line 52
    sget-object v1, Lf22;->ON_PAUSE:Lf22;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lr22;->e(Lf22;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget v1, p0, Lbz2;->n:I

    .line 58
    .line 59
    if-nez v1, :cond_1

    .line 60
    .line 61
    iget-boolean v1, p0, Lbz2;->p:Z

    .line 62
    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    sget-object v1, Lf22;->ON_STOP:Lf22;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lr22;->e(Lf22;)V

    .line 68
    .line 69
    .line 70
    iput-boolean v3, p0, Lbz2;->q:Z

    .line 71
    .line 72
    :cond_1
    return-void

    .line 73
    :pswitch_3
    iget-object p0, p0, Ly;->o:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p0, Ltu1;

    .line 76
    .line 77
    if-eqz p0, :cond_2

    .line 78
    .line 79
    invoke-interface {p0, v2}, Ltu1;->j(Ljava/util/concurrent/CancellationException;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    return-void

    .line 83
    :pswitch_4
    iget-object p0, p0, Ly;->o:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p0, Lab1;

    .line 86
    .line 87
    const-string v0, "fetchFonts result is not OK. ("

    .line 88
    .line 89
    iget-object v2, p0, Lab1;->d:Ljava/lang/Object;

    .line 90
    .line 91
    monitor-enter v2

    .line 92
    :try_start_0
    iget-object v3, p0, Lab1;->h:Lix;

    .line 93
    .line 94
    if-nez v3, :cond_3

    .line 95
    .line 96
    monitor-exit v2

    .line 97
    goto/16 :goto_6

    .line 98
    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto/16 :goto_8

    .line 101
    .line 102
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :try_start_1
    invoke-virtual {p0}, Lab1;->c()Lrb1;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    iget v3, v2, Lrb1;->f:I

    .line 108
    .line 109
    const/4 v4, 0x2

    .line 110
    if-ne v3, v4, :cond_4

    .line 111
    .line 112
    iget-object v4, p0, Lab1;->d:Ljava/lang/Object;

    .line 113
    .line 114
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 115
    :try_start_2
    monitor-exit v4

    .line 116
    goto :goto_0

    .line 117
    :catchall_1
    move-exception v0

    .line 118
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 120
    :catchall_2
    move-exception v0

    .line 121
    goto/16 :goto_4

    .line 122
    .line 123
    :cond_4
    :goto_0
    if-nez v3, :cond_7

    .line 124
    .line 125
    :try_start_4
    const-string v0, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    .line 126
    .line 127
    sget v3, Lp04;->a:I

    .line 128
    .line 129
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lab1;->c:Lb21;

    .line 133
    .line 134
    iget-object v3, p0, Lab1;->a:Landroid/content/Context;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    filled-new-array {v2}, [Lrb1;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    sget-object v4, Ls44;->a:Lnt1;

    .line 144
    .line 145
    const-string v4, "TypefaceCompat.createFromFontInfo"

    .line 146
    .line 147
    invoke-static {v4}, Lix;->Y(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 152
    .line 153
    .line 154
    :try_start_5
    sget-object v4, Ls44;->a:Lnt1;

    .line 155
    .line 156
    invoke-virtual {v4, v3, v0, v1}, Lnt1;->p(Landroid/content/Context;[Lrb1;I)Landroid/graphics/Typeface;

    .line 157
    .line 158
    .line 159
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 160
    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 161
    .line 162
    .line 163
    iget-object v1, p0, Lab1;->a:Landroid/content/Context;

    .line 164
    .line 165
    iget-object v2, v2, Lrb1;->a:Landroid/net/Uri;

    .line 166
    .line 167
    invoke-static {v1, v2}, Lis0;->I(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    .line 168
    .line 169
    .line 170
    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 171
    if-eqz v1, :cond_6

    .line 172
    .line 173
    if-eqz v0, :cond_6

    .line 174
    .line 175
    :try_start_7
    const-string v2, "EmojiCompat.MetadataRepo.create"

    .line 176
    .line 177
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    new-instance v2, Lqd1;

    .line 181
    .line 182
    invoke-static {v1}, Lht4;->x(Ljava/nio/MappedByteBuffer;)Lyc2;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-direct {v2, v0, v1}, Lqd1;-><init>(Landroid/graphics/Typeface;Lyc2;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 187
    .line 188
    .line 189
    :try_start_8
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 190
    .line 191
    .line 192
    :try_start_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lab1;->d:Ljava/lang/Object;

    .line 196
    .line 197
    monitor-enter v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 198
    :try_start_a
    iget-object v1, p0, Lab1;->h:Lix;

    .line 199
    .line 200
    if-eqz v1, :cond_5

    .line 201
    .line 202
    invoke-virtual {v1, v2}, Lix;->J(Lqd1;)V

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :catchall_3
    move-exception v1

    .line 207
    goto :goto_2

    .line 208
    :cond_5
    :goto_1
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 209
    :try_start_b
    invoke-virtual {p0}, Lab1;->b()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 210
    .line 211
    .line 212
    goto :goto_6

    .line 213
    :goto_2
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 214
    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 215
    :catchall_4
    move-exception v0

    .line 216
    :try_start_e
    sget v1, Lp04;->a:I

    .line 217
    .line 218
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 219
    .line 220
    .line 221
    throw v0

    .line 222
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    .line 223
    .line 224
    const-string v1, "Unable to open file."

    .line 225
    .line 226
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw v0

    .line 230
    :catchall_5
    move-exception v0

    .line 231
    goto :goto_3

    .line 232
    :catchall_6
    move-exception v0

    .line 233
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 234
    .line 235
    .line 236
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 237
    :goto_3
    :try_start_f
    sget v1, Lp04;->a:I

    .line 238
    .line 239
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 240
    .line 241
    .line 242
    throw v0

    .line 243
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    .line 244
    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v0, ")"

    .line 254
    .line 255
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 266
    :goto_4
    iget-object v1, p0, Lab1;->d:Ljava/lang/Object;

    .line 267
    .line 268
    monitor-enter v1

    .line 269
    :try_start_10
    iget-object v2, p0, Lab1;->h:Lix;

    .line 270
    .line 271
    if-eqz v2, :cond_8

    .line 272
    .line 273
    invoke-virtual {v2, v0}, Lix;->I(Ljava/lang/Throwable;)V

    .line 274
    .line 275
    .line 276
    goto :goto_5

    .line 277
    :catchall_7
    move-exception p0

    .line 278
    goto :goto_7

    .line 279
    :cond_8
    :goto_5
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 280
    invoke-virtual {p0}, Lab1;->b()V

    .line 281
    .line 282
    .line 283
    :goto_6
    return-void

    .line 284
    :goto_7
    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 285
    throw p0

    .line 286
    :goto_8
    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 287
    throw p0

    .line 288
    :pswitch_5
    iget-object p0, p0, Ly;->o:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast p0, Ly90;

    .line 291
    .line 292
    invoke-static {p0}, Ly90;->a(Ly90;)V

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :pswitch_6
    iget-object p0, p0, Ly;->o:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast p0, Lr90;

    .line 299
    .line 300
    iget-object v0, p0, Lr90;->o:Ljava/lang/Runnable;

    .line 301
    .line 302
    if-eqz v0, :cond_9

    .line 303
    .line 304
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 305
    .line 306
    .line 307
    iput-object v2, p0, Lr90;->o:Ljava/lang/Runnable;

    .line 308
    .line 309
    :cond_9
    return-void

    .line 310
    :pswitch_7
    iget-object p0, p0, Ly;->o:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast p0, Lv9;

    .line 313
    .line 314
    const-string v0, "measureAndLayout"

    .line 315
    .line 316
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    :try_start_13
    iget-object v0, p0, Lv9;->q:Lq9;

    .line 320
    .line 321
    invoke-virtual {v0, v3}, Lq9;->q(Z)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 322
    .line 323
    .line 324
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 325
    .line 326
    .line 327
    const-string v0, "checkForSemanticsChanges"

    .line 328
    .line 329
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    :try_start_14
    invoke-virtual {p0}, Lv9;->h()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 333
    .line 334
    .line 335
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 336
    .line 337
    .line 338
    iput-boolean v1, p0, Lv9;->W:Z

    .line 339
    .line 340
    return-void

    .line 341
    :catchall_8
    move-exception p0

    .line 342
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 343
    .line 344
    .line 345
    throw p0

    .line 346
    :catchall_9
    move-exception p0

    .line 347
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 348
    .line 349
    .line 350
    throw p0

    .line 351
    :pswitch_8
    iget-object p0, p0, Ly;->o:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast p0, La0;

    .line 354
    .line 355
    invoke-virtual {p0}, La0;->b()V

    .line 356
    .line 357
    .line 358
    return-void

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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

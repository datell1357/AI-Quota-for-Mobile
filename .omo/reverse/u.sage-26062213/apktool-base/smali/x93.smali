.class public final Lx93;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic A:Ljava/lang/String;

.field public final synthetic B:Lv50;

.field public r:Lzy;

.field public s:Lw33;

.field public t:I

.field public final synthetic u:Landroid/content/Context;

.field public final synthetic v:Ln8;

.field public final synthetic w:Lu/sage/worker/RollingWindowWorker;

.field public final synthetic x:J

.field public final synthetic y:Z

.field public final synthetic z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln8;Lu/sage/worker/RollingWindowWorker;JZILjava/lang/String;Lv50;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx93;->u:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lx93;->v:Ln8;

    .line 4
    .line 5
    iput-object p3, p0, Lx93;->w:Lu/sage/worker/RollingWindowWorker;

    .line 6
    .line 7
    iput-wide p4, p0, Lx93;->x:J

    .line 8
    .line 9
    iput-boolean p6, p0, Lx93;->y:Z

    .line 10
    .line 11
    iput p7, p0, Lx93;->z:I

    .line 12
    .line 13
    iput-object p8, p0, Lx93;->A:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p9, p0, Lx93;->B:Lv50;

    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    invoke-direct {p0, p1, p10}, Lbv3;-><init>(ILdh0;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lqi0;

    .line 2
    .line 3
    check-cast p2, Ldh0;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p1}, Lx93;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lx93;

    .line 10
    .line 11
    sget-object p1, Lt64;->a:Lt64;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lx93;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 11

    .line 1
    new-instance v0, Lx93;

    .line 2
    .line 3
    iget-object v8, p0, Lx93;->A:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v9, p0, Lx93;->B:Lv50;

    .line 6
    .line 7
    iget-object v1, p0, Lx93;->u:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lx93;->v:Ln8;

    .line 10
    .line 11
    iget-object v3, p0, Lx93;->w:Lu/sage/worker/RollingWindowWorker;

    .line 12
    .line 13
    iget-wide v4, p0, Lx93;->x:J

    .line 14
    .line 15
    iget-boolean v6, p0, Lx93;->y:Z

    .line 16
    .line 17
    iget v7, p0, Lx93;->z:I

    .line 18
    .line 19
    move-object v10, p1

    .line 20
    invoke-direct/range {v0 .. v10}, Lx93;-><init>(Landroid/content/Context;Ln8;Lu/sage/worker/RollingWindowWorker;JZILjava/lang/String;Lv50;Ldh0;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lx93;->u:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "RollingWindowWorker"

    .line 6
    .line 7
    const-string v3, "execute: EXCEPTION \u2014 "

    .line 8
    .line 9
    iget v4, v1, Lx93;->t:I

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    if-eqz v4, :cond_1

    .line 15
    .line 16
    if-ne v4, v6, :cond_0

    .line 17
    .line 18
    iget-object v2, v1, Lx93;->s:Lw33;

    .line 19
    .line 20
    iget-object v4, v1, Lx93;->r:Lzy;

    .line 21
    .line 22
    :try_start_0
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catch Lnz3; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :catch_0
    move-exception v0

    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    .line 35
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object v7

    .line 39
    :cond_1
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const v4, 0x7fffffff

    .line 43
    .line 44
    .line 45
    const/4 v8, 0x6

    .line 46
    invoke-static {v4, v8, v7}, Lix;->c(IILvy;)Lzy;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    new-instance v4, Lw33;

    .line 51
    .line 52
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    :try_start_1
    new-instance v8, Landroid/webkit/WebView;

    .line 56
    .line 57
    invoke-direct {v8, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    iput-object v8, v4, Lw33;->n:Ljava/lang/Object;

    .line 61
    .line 62
    sget-object v9, Lu/sage/worker/RollingWindowWorker;->j:Lwr3;

    .line 63
    .line 64
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9, v7, v8}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    new-instance v8, Landroid/os/Handler;

    .line 71
    .line 72
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 77
    .line 78
    .line 79
    iget-object v8, v4, Lw33;->n:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v8, Landroid/webkit/WebView;

    .line 82
    .line 83
    invoke-static {v8}, Lk30;->h(Landroid/webkit/WebView;)V

    .line 84
    .line 85
    .line 86
    iget-object v8, v4, Lw33;->n:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v8, Landroid/webkit/WebView;

    .line 89
    .line 90
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    new-instance v9, Lbd4;

    .line 94
    .line 95
    invoke-direct {v9, v2}, Lbd4;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 99
    .line 100
    .line 101
    new-instance v2, Lsc4;

    .line 102
    .line 103
    new-instance v8, Lv;

    .line 104
    .line 105
    const/16 v9, 0x19

    .line 106
    .line 107
    invoke-direct {v8, v9, v10}, Lv;-><init>(ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    const/16 v9, 0x9

    .line 111
    .line 112
    invoke-direct {v2, v0, v9, v8}, Lsc4;-><init>(Landroid/content/Context;ILpe1;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, v4, Lw33;->n:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v0, Landroid/webkit/WebView;

    .line 118
    .line 119
    invoke-virtual {v2}, Lsc4;->a()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    invoke-virtual {v0, v2, v8}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, v4, Lw33;->n:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v0, Landroid/webkit/WebView;

    .line 129
    .line 130
    new-instance v2, Lv93;

    .line 131
    .line 132
    iget-object v8, v1, Lx93;->A:Ljava/lang/String;

    .line 133
    .line 134
    iget-boolean v9, v1, Lx93;->y:Z

    .line 135
    .line 136
    invoke-direct {v2, v4, v8, v9}, Lv93;-><init>(Lw33;Ljava/lang/String;Z)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 140
    .line 141
    .line 142
    sget-object v0, Lez3;->a:Lra3;

    .line 143
    .line 144
    new-array v2, v5, [Ljava/lang/Object;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, v4, Lw33;->n:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v0, Landroid/webkit/WebView;

    .line 155
    .line 156
    const-string v2, "about:blank"

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    new-instance v9, Lw93;

    .line 162
    .line 163
    iget-object v11, v1, Lx93;->v:Ln8;

    .line 164
    .line 165
    iget-object v12, v1, Lx93;->w:Lu/sage/worker/RollingWindowWorker;

    .line 166
    .line 167
    iget-object v13, v1, Lx93;->u:Landroid/content/Context;

    .line 168
    .line 169
    iget-wide v14, v1, Lx93;->x:J

    .line 170
    .line 171
    iget-boolean v0, v1, Lx93;->y:Z

    .line 172
    .line 173
    iget v2, v1, Lx93;->z:I

    .line 174
    .line 175
    iget-object v8, v1, Lx93;->B:Lv50;

    .line 176
    .line 177
    const/16 v19, 0x0

    .line 178
    .line 179
    move/from16 v16, v0

    .line 180
    .line 181
    move/from16 v17, v2

    .line 182
    .line 183
    move-object/from16 v18, v8

    .line 184
    .line 185
    invoke-direct/range {v9 .. v19}, Lw93;-><init>(Lzy;Ln8;Lu/sage/worker/RollingWindowWorker;Landroid/content/Context;JZILv50;Ldh0;)V

    .line 186
    .line 187
    .line 188
    iput-object v10, v1, Lx93;->r:Lzy;

    .line 189
    .line 190
    iput-object v4, v1, Lx93;->s:Lw33;

    .line 191
    .line 192
    iput v6, v1, Lx93;->t:I

    .line 193
    .line 194
    const-wide/32 v11, 0x15f90

    .line 195
    .line 196
    .line 197
    invoke-static {v11, v12, v9, v1}, Lw80;->Y(JLdf1;Lfh0;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0
    :try_end_1
    .catch Lnz3; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    sget-object v1, Lri0;->n:Lri0;

    .line 202
    .line 203
    if-ne v0, v1, :cond_2

    .line 204
    .line 205
    return-object v1

    .line 206
    :cond_2
    move-object v2, v4

    .line 207
    move-object v4, v10

    .line 208
    :goto_0
    invoke-interface {v4, v7}, Lyh3;->a(Ljava/lang/Throwable;)Z

    .line 209
    .line 210
    .line 211
    sget-object v0, Lu/sage/worker/RollingWindowWorker;->j:Lwr3;

    .line 212
    .line 213
    invoke-virtual {v0, v7}, Lwr3;->h(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    iget-object v0, v2, Lw33;->n:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v0, Landroid/webkit/WebView;

    .line 219
    .line 220
    if-eqz v0, :cond_3

    .line 221
    .line 222
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 223
    .line 224
    .line 225
    :cond_3
    iget-object v0, v2, Lw33;->n:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v0, Landroid/webkit/WebView;

    .line 228
    .line 229
    if-eqz v0, :cond_6

    .line 230
    .line 231
    :goto_1
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_4

    .line 235
    .line 236
    :catchall_1
    move-exception v0

    .line 237
    move-object v2, v4

    .line 238
    move-object v4, v10

    .line 239
    goto/16 :goto_5

    .line 240
    .line 241
    :catch_1
    move-exception v0

    .line 242
    move-object v2, v4

    .line 243
    move-object v4, v10

    .line 244
    goto :goto_2

    .line 245
    :catch_2
    move-object v2, v4

    .line 246
    move-object v4, v10

    .line 247
    goto :goto_3

    .line 248
    :goto_2
    :try_start_2
    sget-object v6, Lit0;->a:Ljava/text/SimpleDateFormat;

    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    new-instance v8, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v3, ": "

    .line 271
    .line 272
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-static {v0}, Lit0;->a(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    sget-object v0, Lez3;->a:Lra3;

    .line 286
    .line 287
    new-array v3, v5, [Ljava/lang/Object;

    .line 288
    .line 289
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    invoke-static {v3}, Lra3;->g([Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    iget-object v8, v1, Lx93;->u:Landroid/content/Context;

    .line 296
    .line 297
    iget-object v9, v1, Lx93;->v:Ln8;

    .line 298
    .line 299
    iget-wide v10, v1, Lx93;->x:J

    .line 300
    .line 301
    iget-boolean v12, v1, Lx93;->y:Z

    .line 302
    .line 303
    iget v13, v1, Lx93;->z:I

    .line 304
    .line 305
    invoke-static/range {v8 .. v13}, Lu/sage/worker/RollingWindowWorker;->e(Landroid/content/Context;Ln8;JZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    .line 307
    .line 308
    invoke-interface {v4, v7}, Lyh3;->a(Ljava/lang/Throwable;)Z

    .line 309
    .line 310
    .line 311
    sget-object v0, Lu/sage/worker/RollingWindowWorker;->j:Lwr3;

    .line 312
    .line 313
    invoke-virtual {v0, v7}, Lwr3;->h(Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    iget-object v0, v2, Lw33;->n:Ljava/lang/Object;

    .line 317
    .line 318
    check-cast v0, Landroid/webkit/WebView;

    .line 319
    .line 320
    if-eqz v0, :cond_4

    .line 321
    .line 322
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 323
    .line 324
    .line 325
    :cond_4
    iget-object v0, v2, Lw33;->n:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast v0, Landroid/webkit/WebView;

    .line 328
    .line 329
    if-eqz v0, :cond_6

    .line 330
    .line 331
    goto :goto_1

    .line 332
    :catch_3
    :goto_3
    :try_start_3
    const-string v0, "execute: TIMEOUT \u2014 90s elapsed waiting for JS result."

    .line 333
    .line 334
    invoke-static {v0}, Lit0;->a(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    sget-object v0, Lez3;->a:Lra3;

    .line 338
    .line 339
    new-array v3, v5, [Ljava/lang/Object;

    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    .line 343
    .line 344
    invoke-static {v3}, Lra3;->f([Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    iget-object v0, v1, Lx93;->v:Ln8;

    .line 348
    .line 349
    const-string v3, "rolling_window_timeout"

    .line 350
    .line 351
    const-string v5, "Timeout waiting for JS result"

    .line 352
    .line 353
    sget-object v6, Ly84;->r:Ly84;

    .line 354
    .line 355
    invoke-virtual {v0, v6, v3, v5}, Ln8;->c(Ly84;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    iget-object v8, v1, Lx93;->u:Landroid/content/Context;

    .line 359
    .line 360
    iget-object v9, v1, Lx93;->v:Ln8;

    .line 361
    .line 362
    iget-wide v10, v1, Lx93;->x:J

    .line 363
    .line 364
    iget-boolean v12, v1, Lx93;->y:Z

    .line 365
    .line 366
    iget v13, v1, Lx93;->z:I

    .line 367
    .line 368
    invoke-static/range {v8 .. v13}, Lu/sage/worker/RollingWindowWorker;->e(Landroid/content/Context;Ln8;JZI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 369
    .line 370
    .line 371
    invoke-interface {v4, v7}, Lyh3;->a(Ljava/lang/Throwable;)Z

    .line 372
    .line 373
    .line 374
    sget-object v0, Lu/sage/worker/RollingWindowWorker;->j:Lwr3;

    .line 375
    .line 376
    invoke-virtual {v0, v7}, Lwr3;->h(Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    iget-object v0, v2, Lw33;->n:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast v0, Landroid/webkit/WebView;

    .line 382
    .line 383
    if-eqz v0, :cond_5

    .line 384
    .line 385
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 386
    .line 387
    .line 388
    :cond_5
    iget-object v0, v2, Lw33;->n:Ljava/lang/Object;

    .line 389
    .line 390
    check-cast v0, Landroid/webkit/WebView;

    .line 391
    .line 392
    if-eqz v0, :cond_6

    .line 393
    .line 394
    goto/16 :goto_1

    .line 395
    .line 396
    :cond_6
    :goto_4
    sget-object v0, Lt64;->a:Lt64;

    .line 397
    .line 398
    return-object v0

    .line 399
    :goto_5
    invoke-interface {v4, v7}, Lyh3;->a(Ljava/lang/Throwable;)Z

    .line 400
    .line 401
    .line 402
    sget-object v1, Lu/sage/worker/RollingWindowWorker;->j:Lwr3;

    .line 403
    .line 404
    invoke-virtual {v1, v7}, Lwr3;->h(Ljava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    iget-object v1, v2, Lw33;->n:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast v1, Landroid/webkit/WebView;

    .line 410
    .line 411
    if-eqz v1, :cond_7

    .line 412
    .line 413
    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 414
    .line 415
    .line 416
    :cond_7
    iget-object v1, v2, Lw33;->n:Ljava/lang/Object;

    .line 417
    .line 418
    check-cast v1, Landroid/webkit/WebView;

    .line 419
    .line 420
    if-eqz v1, :cond_8

    .line 421
    .line 422
    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 423
    .line 424
    .line 425
    :cond_8
    throw v0
.end method

.class public Lu/sage/MainApplication;
.super Landroid/app/Application;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Log1;


# static fields
.field public static final synthetic t:I


# instance fields
.field public n:Z

.field public final o:Lhh;

.field public p:Ln8;

.field public q:Lri3;

.field public final r:Lnv3;

.field public final s:Lbh0;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lu/sage/MainApplication;->n:Z

    .line 6
    .line 7
    new-instance v0, Lhh;

    .line 8
    .line 9
    new-instance v1, Ldd1;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    invoke-direct {v1, v2, p0}, Ldd1;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lhh;-><init>(Ldd1;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lu/sage/MainApplication;->o:Lhh;

    .line 19
    .line 20
    new-instance v0, Lcc;

    .line 21
    .line 22
    const/16 v1, 0x12

    .line 23
    .line 24
    invoke-direct {v0, v1, p0}, Lcc;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lnv3;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lnv3;-><init>(Lne1;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lu/sage/MainApplication;->r:Lnv3;

    .line 33
    .line 34
    invoke-static {}, Lk30;->f()Lbu3;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sget-object v1, Lzu0;->a:Lzp0;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lca;->B(Lfi0;Lhi0;)Lhi0;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Ldm0;->c(Lhi0;)Lbh0;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lu/sage/MainApplication;->s:Lbh0;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lu/sage/MainApplication;->o:Lhh;

    .line 2
    .line 3
    invoke-virtual {p0}, Lhh;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lu/sage/MainApplication;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lu/sage/MainApplication;->n:Z

    .line 7
    .line 8
    iget-object v0, p0, Lu/sage/MainApplication;->o:Lhh;

    .line 9
    .line 10
    invoke-virtual {v0}, Lhh;->a()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ll92;

    .line 15
    .line 16
    check-cast v0, Lvl0;

    .line 17
    .line 18
    iget-object v1, v0, Lvl0;->c:Ll03;

    .line 19
    .line 20
    invoke-interface {v1}, Lm03;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ln8;

    .line 25
    .line 26
    iput-object v1, p0, Lu/sage/MainApplication;->p:Ln8;

    .line 27
    .line 28
    iget-object v0, v0, Lvl0;->d:Ll03;

    .line 29
    .line 30
    invoke-interface {v0}, Lm03;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lri3;

    .line 35
    .line 36
    iput-object v0, p0, Lu/sage/MainApplication;->q:Lri3;

    .line 37
    .line 38
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final onCreate()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lu/sage/MainApplication;->b()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lit0;->a:Ljava/text/SimpleDateFormat;

    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "diagnostic_log.txt"

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lit0;->b:Ljava/io/File;

    .line 18
    .line 19
    new-instance v0, Lus0;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lus0;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lx50;

    .line 25
    .line 26
    const/16 v2, 0xb

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v1, v0, v3, v2}, Lx50;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Ld01;->n:Ld01;

    .line 33
    .line 34
    invoke-static {v0, v1}, Lca;->H(Lhi0;Ldf1;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lu/sage/MainApplication;->r:Lnv3;

    .line 44
    .line 45
    invoke-virtual {v1}, Lnv3;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    check-cast v1, Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Luy4;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    new-instance v2, Ltx4;

    .line 60
    .line 61
    invoke-direct {v2, v1, v0}, Ltx4;-><init>(Luy4;Ljava/lang/Boolean;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Luy4;->c(Lmy4;)V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lez3;->a:Lra3;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    new-array v2, v1, [Ljava/lang/Object;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lu/sage/MainApplication;->r:Lnv3;

    .line 79
    .line 80
    invoke-virtual {v0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    check-cast v0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 88
    .line 89
    new-instance v2, Landroid/os/Bundle;

    .line 90
    .line 91
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v4, "build_type"

    .line 95
    .line 96
    const-string v5, "release"

    .line 97
    .line 98
    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v4, "app_version"

    .line 102
    .line 103
    const-string v5, "1.260622.7"

    .line 104
    .line 105
    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance v4, Landroid/os/Bundle;

    .line 109
    .line 110
    invoke-direct {v4, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, v0, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Luy4;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    new-instance v2, Lnx4;

    .line 119
    .line 120
    const/4 v5, 0x1

    .line 121
    invoke-direct {v2, v0, v4, v5}, Lnx4;-><init>(Luy4;Landroid/os/Bundle;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v2}, Luy4;->c(Lmy4;)V

    .line 125
    .line 126
    .line 127
    new-array v0, v1, [Ljava/lang/Object;

    .line 128
    .line 129
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lu/sage/MainApplication;->q:Lri3;

    .line 133
    .line 134
    if-eqz v0, :cond_6

    .line 135
    .line 136
    monitor-enter v0

    .line 137
    :try_start_0
    iget-boolean v2, v0, Lri3;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .line 139
    if-eqz v2, :cond_0

    .line 140
    .line 141
    monitor-exit v0

    .line 142
    goto/16 :goto_1

    .line 143
    .line 144
    :cond_0
    :try_start_1
    iput-boolean v5, v0, Lri3;->d:Z

    .line 145
    .line 146
    iget-object v2, v0, Lri3;->a:Ls61;

    .line 147
    .line 148
    sget-object v4, Ly84;->x:Lt11;

    .line 149
    .line 150
    const/16 v6, 0xa

    .line 151
    .line 152
    invoke-static {v4, v6}, Lp70;->a0(Ljava/lang/Iterable;I)I

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    invoke-static {v6}, Loa2;->a0(I)I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    const/16 v7, 0x10

    .line 161
    .line 162
    if-ge v6, v7, :cond_1

    .line 163
    .line 164
    move v6, v7

    .line 165
    :cond_1
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 166
    .line 167
    invoke-direct {v7, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4}, Lj1;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    if-eqz v6, :cond_2

    .line 179
    .line 180
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    check-cast v6, Ly84;

    .line 185
    .line 186
    sget-object v8, Lri3;->e:Ljava/util/Set;

    .line 187
    .line 188
    invoke-static {v6}, Lqn0;->F(Ly84;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 193
    .line 194
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :catchall_0
    move-exception p0

    .line 199
    goto/16 :goto_4

    .line 200
    .line 201
    :cond_2
    invoke-virtual {v2, v7}, Ls61;->e(Ljava/util/LinkedHashMap;)V

    .line 202
    .line 203
    .line 204
    new-instance v2, Lo00;

    .line 205
    .line 206
    invoke-direct {v2, v5}, Lo00;-><init>(I)V

    .line 207
    .line 208
    .line 209
    const-wide/16 v6, 0xe10

    .line 210
    .line 211
    iput-wide v6, v2, Lo00;->b:J

    .line 212
    .line 213
    new-instance v4, Lo00;

    .line 214
    .line 215
    invoke-direct {v4, v2}, Lo00;-><init>(Lo00;)V

    .line 216
    .line 217
    .line 218
    iget-object v2, v0, Lri3;->a:Ls61;

    .line 219
    .line 220
    iget-object v6, v2, Ls61;->b:Ljava/util/concurrent/Executor;

    .line 221
    .line 222
    new-instance v7, Lwc0;

    .line 223
    .line 224
    invoke-direct {v7, v5, v2, v4}, Lwc0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    invoke-static {v6, v7}, Lmt1;->m(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lef5;

    .line 228
    .line 229
    .line 230
    sget-object v2, Lez3;->a:Lra3;

    .line 231
    .line 232
    new-array v4, v1, [Ljava/lang/Object;

    .line 233
    .line 234
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    invoke-static {v4}, Lra3;->h([Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    iget-object v2, v0, Lri3;->a:Ls61;

    .line 241
    .line 242
    invoke-virtual {v2}, Ls61;->c()Lef5;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    new-instance v4, Lqi3;

    .line 247
    .line 248
    invoke-direct {v4, v0, v1}, Lqi3;-><init>(Lri3;I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, v4}, Lef5;->m(Lxo2;)Lef5;

    .line 252
    .line 253
    .line 254
    iget-object v2, v0, Lri3;->a:Ls61;

    .line 255
    .line 256
    new-instance v4, Lur;

    .line 257
    .line 258
    const/4 v5, 0x2

    .line 259
    invoke-direct {v4, v5, v0}, Lur;-><init>(ILjava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v4}, Ls61;->b(Lur;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    .line 264
    .line 265
    monitor-exit v0

    .line 266
    :goto_1
    iget-object v0, p0, Lu/sage/MainApplication;->s:Lbh0;

    .line 267
    .line 268
    new-instance v2, Lx50;

    .line 269
    .line 270
    const/16 v4, 0xc

    .line 271
    .line 272
    invoke-direct {v2, p0, v3, v4}, Lx50;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 273
    .line 274
    .line 275
    const/4 v4, 0x3

    .line 276
    invoke-static {v0, v3, v3, v2, v4}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 277
    .line 278
    .line 279
    iget-object v0, p0, Lu/sage/MainApplication;->p:Ln8;

    .line 280
    .line 281
    if-eqz v0, :cond_5

    .line 282
    .line 283
    const-string v2, "app_process_killed_historically"

    .line 284
    .line 285
    iget-object v5, v0, Ln8;->a:Landroid/content/Context;

    .line 286
    .line 287
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 288
    .line 289
    const/16 v7, 0x1e

    .line 290
    .line 291
    if-lt v6, v7, :cond_4

    .line 292
    .line 293
    const-string v6, "activity"

    .line 294
    .line 295
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    check-cast v6, Landroid/app/ActivityManager;

    .line 303
    .line 304
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    invoke-static {v6, v5}, La3;->l(Landroid/app/ActivityManager;Ljava/lang/String;)Ljava/util/List;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 316
    .line 317
    .line 318
    move-result v6

    .line 319
    if-nez v6, :cond_4

    .line 320
    .line 321
    invoke-static {v5}, Lo70;->h0(Ljava/util/List;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    invoke-static {v5}, La3;->d(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    invoke-static {v5}, La3;->b(Landroid/app/ApplicationExitInfo;)I

    .line 330
    .line 331
    .line 332
    move-result v6

    .line 333
    packed-switch v6, :pswitch_data_0

    .line 334
    .line 335
    .line 336
    invoke-static {v5}, La3;->t(Landroid/app/ApplicationExitInfo;)I

    .line 337
    .line 338
    .line 339
    move-result v6

    .line 340
    const-string v7, "UNKNOWN_"

    .line 341
    .line 342
    invoke-static {v6, v7}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    goto :goto_2

    .line 347
    :pswitch_0
    const-string v6, "PACKAGE_UPDATED"

    .line 348
    .line 349
    goto :goto_2

    .line 350
    :pswitch_1
    const-string v6, "PACKAGE_STATE_CHANGE"

    .line 351
    .line 352
    goto :goto_2

    .line 353
    :pswitch_2
    const-string v6, "FREEZER"

    .line 354
    .line 355
    goto :goto_2

    .line 356
    :pswitch_3
    const-string v6, "OTHER"

    .line 357
    .line 358
    goto :goto_2

    .line 359
    :pswitch_4
    const-string v6, "DEPENDENCY_DIED"

    .line 360
    .line 361
    goto :goto_2

    .line 362
    :pswitch_5
    const-string v6, "USER_STOPPED"

    .line 363
    .line 364
    goto :goto_2

    .line 365
    :pswitch_6
    const-string v6, "USER_REQUESTED"

    .line 366
    .line 367
    goto :goto_2

    .line 368
    :pswitch_7
    const-string v6, "EXCESSIVE_RESOURCE_USAGE"

    .line 369
    .line 370
    goto :goto_2

    .line 371
    :pswitch_8
    const-string v6, "PERMISSION_CHANGE"

    .line 372
    .line 373
    goto :goto_2

    .line 374
    :pswitch_9
    const-string v6, "INITIALIZATION_FAILURE"

    .line 375
    .line 376
    goto :goto_2

    .line 377
    :pswitch_a
    const-string v6, "ANR"

    .line 378
    .line 379
    goto :goto_2

    .line 380
    :pswitch_b
    const-string v6, "CRASH_NATIVE"

    .line 381
    .line 382
    goto :goto_2

    .line 383
    :pswitch_c
    const-string v6, "CRASH"

    .line 384
    .line 385
    goto :goto_2

    .line 386
    :pswitch_d
    const-string v6, "LOW_MEMORY"

    .line 387
    .line 388
    goto :goto_2

    .line 389
    :pswitch_e
    const-string v6, "SIGNALED"

    .line 390
    .line 391
    goto :goto_2

    .line 392
    :pswitch_f
    const-string v6, "EXIT_SELF"

    .line 393
    .line 394
    :goto_2
    sget-object v7, Lez3;->a:Lra3;

    .line 395
    .line 396
    invoke-static {v5}, La3;->i(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    new-array v1, v1, [Ljava/lang/Object;

    .line 400
    .line 401
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    new-instance v1, Landroid/os/Bundle;

    .line 408
    .line 409
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 410
    .line 411
    .line 412
    const-string v7, "exit_reason"

    .line 413
    .line 414
    invoke-virtual {v1, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    const-string v6, "exit_description"

    .line 418
    .line 419
    invoke-static {v5}, La3;->i(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v7

    .line 423
    if-eqz v7, :cond_3

    .line 424
    .line 425
    const/16 v8, 0x64

    .line 426
    .line 427
    invoke-static {v8, v7}, Lzs3;->X0(ILjava/lang/String;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v7

    .line 431
    goto :goto_3

    .line 432
    :cond_3
    const-string v7, "No description"

    .line 433
    .line 434
    :goto_3
    invoke-virtual {v1, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    const-string v6, "exit_importance"

    .line 438
    .line 439
    invoke-static {v5}, La3;->y(Landroid/app/ApplicationExitInfo;)I

    .line 440
    .line 441
    .line 442
    move-result v5

    .line 443
    invoke-virtual {v1, v6, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0, v2, v1}, Ln8;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v0}, Ln8;->b()Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 454
    .line 455
    .line 456
    :cond_4
    sget-object v0, Lu/sage/widget/UsageWidgetProvider;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 457
    .line 458
    invoke-static {p0}, Lk75;->H(Landroid/content/Context;)V

    .line 459
    .line 460
    .line 461
    sget-object v0, Lzu0;->a:Lzp0;

    .line 462
    .line 463
    sget-object v0, Llp0;->p:Llp0;

    .line 464
    .line 465
    invoke-static {}, Lk30;->f()Lbu3;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 470
    .line 471
    .line 472
    invoke-static {v0, v1}, Lca;->B(Lfi0;Lhi0;)Lhi0;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-static {v0}, Ldm0;->c(Lhi0;)Lbh0;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    new-instance v1, Lp10;

    .line 481
    .line 482
    invoke-direct {v1, p0, v3}, Lp10;-><init>(Landroid/content/Context;Ldh0;)V

    .line 483
    .line 484
    .line 485
    invoke-static {v0, v3, v3, v1, v4}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 486
    .line 487
    .line 488
    return-void

    .line 489
    :cond_5
    const-string p0, "analyticsManager"

    .line 490
    .line 491
    invoke-static {p0}, Lnt1;->X(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    throw v3

    .line 495
    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 496
    throw p0

    .line 497
    :cond_6
    const-string p0, "serviceAvailabilityManager"

    .line 498
    .line 499
    invoke-static {p0}, Lnt1;->X(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    throw v3

    .line 503
    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method

.method public final onTrimMemory(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    const/16 v1, 0x28

    .line 6
    .line 7
    if-eq p1, v0, :cond_6

    .line 8
    .line 9
    const/16 v0, 0xa

    .line 10
    .line 11
    if-eq p1, v0, :cond_5

    .line 12
    .line 13
    const/16 v0, 0xf

    .line 14
    .line 15
    if-eq p1, v0, :cond_4

    .line 16
    .line 17
    const/16 v0, 0x14

    .line 18
    .line 19
    if-eq p1, v0, :cond_3

    .line 20
    .line 21
    if-eq p1, v1, :cond_2

    .line 22
    .line 23
    const/16 v0, 0x3c

    .line 24
    .line 25
    if-eq p1, v0, :cond_1

    .line 26
    .line 27
    const/16 v0, 0x50

    .line 28
    .line 29
    if-eq p1, v0, :cond_0

    .line 30
    .line 31
    const-string v0, "UNKNOWN("

    .line 32
    .line 33
    const-string v2, ")"

    .line 34
    .line 35
    invoke-static {v0, p1, v2}, Lxw1;->q(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string v0, "COMPLETE"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string v0, "MODERATE"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string v0, "BACKGROUND"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    const-string v0, "UI_HIDDEN"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    const-string v0, "RUNNING_CRITICAL"

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    const-string v0, "RUNNING_LOW"

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_6
    const-string v0, "RUNNING_MODERATE"

    .line 59
    .line 60
    :goto_0
    if-lt p1, v1, :cond_8

    .line 61
    .line 62
    iget-object p0, p0, Lu/sage/MainApplication;->p:Ln8;

    .line 63
    .line 64
    if-eqz p0, :cond_7

    .line 65
    .line 66
    const-string p1, "level"

    .line 67
    .line 68
    invoke-static {p1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    const-string v1, "trim_memory"

    .line 76
    .line 77
    invoke-virtual {p0, v1, p1}, Ln8;->d(Ljava/lang/String;Ljava/util/Map;)V

    .line 78
    .line 79
    .line 80
    sget-object p0, Lez3;->a:Lra3;

    .line 81
    .line 82
    const-string p1, "App memory trimmed: "

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    const/4 p1, 0x0

    .line 88
    new-array p1, p1, [Ljava/lang/Object;

    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Lra3;->m([Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_7
    const-string p0, "analyticsManager"

    .line 98
    .line 99
    invoke-static {p0}, Lnt1;->X(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const/4 p0, 0x0

    .line 103
    throw p0

    .line 104
    :cond_8
    return-void
.end method

.class public final Leg4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static k:Leg4;

.field public static l:Leg4;

.field public static final m:Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lmd0;

.field public final c:Landroidx/work/impl/WorkDatabase;

.field public final d:Lqd1;

.field public final e:Ljava/util/List;

.field public final f:Lez2;

.field public final g:Ldd1;

.field public h:Z

.field public i:Landroid/content/BroadcastReceiver$PendingResult;

.field public final j:Lrp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkManagerImpl"

    .line 2
    .line 3
    invoke-static {v0}, Lt72;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    sput-object v0, Leg4;->k:Leg4;

    .line 8
    .line 9
    sput-object v0, Leg4;->l:Leg4;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Leg4;->m:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmd0;Lqd1;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Lez2;Lrp;)V
    .locals 14

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    move-object/from16 v4, p6

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    iput-boolean v5, p0, Leg4;->h:Z

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-virtual {v6}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    const/4 v8, 0x0

    .line 26
    if-nez v7, :cond_6

    .line 27
    .line 28
    new-instance v7, Lt72;

    .line 29
    .line 30
    iget v9, v0, Lmd0;->h:I

    .line 31
    .line 32
    invoke-direct {v7, v9}, Lt72;-><init>(I)V

    .line 33
    .line 34
    .line 35
    sget-object v9, Lt72;->o:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v9

    .line 38
    :try_start_0
    sget-object v10, Lt72;->p:Lt72;

    .line 39
    .line 40
    if-nez v10, :cond_0

    .line 41
    .line 42
    sput-object v7, Lt72;->p:Lt72;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    move-object p0, v0

    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    :cond_0
    :goto_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iput-object v6, p0, Leg4;->a:Landroid/content/Context;

    .line 51
    .line 52
    iput-object v1, p0, Leg4;->d:Lqd1;

    .line 53
    .line 54
    iput-object v2, p0, Leg4;->c:Landroidx/work/impl/WorkDatabase;

    .line 55
    .line 56
    iput-object v4, p0, Leg4;->f:Lez2;

    .line 57
    .line 58
    move-object/from16 v7, p7

    .line 59
    .line 60
    iput-object v7, p0, Leg4;->j:Lrp;

    .line 61
    .line 62
    iput-object v0, p0, Leg4;->b:Lmd0;

    .line 63
    .line 64
    iput-object v3, p0, Leg4;->e:Ljava/util/List;

    .line 65
    .line 66
    iget-object v7, v1, Lqd1;->p:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v7, Lji0;

    .line 69
    .line 70
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-static {v7}, Ldm0;->c(Lhi0;)Lbh0;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    new-instance v9, Ldd1;

    .line 78
    .line 79
    const/16 v10, 0xa

    .line 80
    .line 81
    invoke-direct {v9, v10, v2}, Ldd1;-><init>(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iput-object v9, p0, Leg4;->g:Ldd1;

    .line 85
    .line 86
    iget-object v9, v1, Lqd1;->o:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v9, Lji3;

    .line 89
    .line 90
    sget-object v10, Lzd3;->a:Ljava/lang/String;

    .line 91
    .line 92
    new-instance v10, Lyd3;

    .line 93
    .line 94
    invoke-direct {v10, v9, v3, v0, v2}, Lyd3;-><init>(Ljava/util/concurrent/Executor;Ljava/util/List;Lmd0;Landroidx/work/impl/WorkDatabase;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v10}, Lez2;->a(Lf31;)V

    .line 98
    .line 99
    .line 100
    new-instance v3, Lub1;

    .line 101
    .line 102
    invoke-direct {v3, v6, p0}, Lub1;-><init>(Landroid/content/Context;Leg4;)V

    .line 103
    .line 104
    .line 105
    iget-object p0, v1, Lqd1;->o:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p0, Lji3;

    .line 108
    .line 109
    invoke-virtual {p0, v3}, Lji3;->execute(Ljava/lang/Runnable;)V

    .line 110
    .line 111
    .line 112
    sget-object p0, Lq64;->a:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {v6, v0}, Ldz2;->a(Landroid/content/Context;Lmd0;)Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-eqz p0, :cond_5

    .line 119
    .line 120
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->w()Lqg4;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    iget-object p0, p0, Lqg4;->a:Lga3;

    .line 125
    .line 126
    const-string v0, "workspec"

    .line 127
    .line 128
    filled-new-array {v0}, [Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    new-instance v1, Lba4;

    .line 133
    .line 134
    const/16 v2, 0x11

    .line 135
    .line 136
    invoke-direct {v1, v2}, Lba4;-><init>(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lga3;->f()Lbu1;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    const/4 v3, 0x1

    .line 144
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, [Ljava/lang/String;

    .line 149
    .line 150
    iget-object v2, v2, Lbu1;->b:Lv24;

    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    new-instance v4, Lhk3;

    .line 156
    .line 157
    invoke-direct {v4}, Lhk3;-><init>()V

    .line 158
    .line 159
    .line 160
    array-length v9, v0

    .line 161
    move v10, v5

    .line 162
    :goto_1
    if-ge v10, v9, :cond_2

    .line 163
    .line 164
    aget-object v11, v0, v10

    .line 165
    .line 166
    iget-object v12, v2, Lv24;->c:Ljava/util/LinkedHashMap;

    .line 167
    .line 168
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 169
    .line 170
    invoke-virtual {v11, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v13

    .line 174
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v12, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v12

    .line 181
    check-cast v12, Ljava/util/Set;

    .line 182
    .line 183
    if-eqz v12, :cond_1

    .line 184
    .line 185
    check-cast v12, Ljava/util/Collection;

    .line 186
    .line 187
    invoke-virtual {v4, v12}, Lhk3;->addAll(Ljava/util/Collection;)Z

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_1
    invoke-virtual {v4, v11}, Lhk3;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_2
    invoke-static {v4}, Lis0;->o(Lhk3;)Lhk3;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    new-array v4, v5, [Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, [Ljava/lang/String;

    .line 208
    .line 209
    array-length v4, v0

    .line 210
    new-array v9, v4, [I

    .line 211
    .line 212
    :goto_3
    if-ge v5, v4, :cond_4

    .line 213
    .line 214
    aget-object v10, v0, v5

    .line 215
    .line 216
    iget-object v11, v2, Lv24;->f:Ljava/util/LinkedHashMap;

    .line 217
    .line 218
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 219
    .line 220
    invoke-virtual {v10, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v12

    .line 224
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v11, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v11

    .line 231
    check-cast v11, Ljava/lang/Integer;

    .line 232
    .line 233
    if-eqz v11, :cond_3

    .line 234
    .line 235
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 236
    .line 237
    .line 238
    move-result v10

    .line 239
    aput v10, v9, v5

    .line 240
    .line 241
    add-int/lit8 v5, v5, 0x1

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_3
    const-string v0, "There is no table with name "

    .line 245
    .line 246
    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_4
    new-instance v8, Ljs2;

    .line 255
    .line 256
    invoke-direct {v8, v0, v9}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    :goto_4
    iget-object v0, v8, Ljs2;->n:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v0, [Ljava/lang/String;

    .line 262
    .line 263
    iget-object v4, v8, Ljs2;->o:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v4, [I

    .line 266
    .line 267
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    new-instance v5, Lqd;

    .line 274
    .line 275
    const/16 v8, 0xc

    .line 276
    .line 277
    const/4 v9, 0x0

    .line 278
    move-object/from16 p4, v0

    .line 279
    .line 280
    move-object/from16 p2, v2

    .line 281
    .line 282
    move-object/from16 p3, v4

    .line 283
    .line 284
    move-object p1, v5

    .line 285
    move/from16 p6, v8

    .line 286
    .line 287
    move-object/from16 p5, v9

    .line 288
    .line 289
    invoke-direct/range {p1 .. p6}, Lqd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 290
    .line 291
    .line 292
    move-object v0, p1

    .line 293
    move-object/from16 v2, p5

    .line 294
    .line 295
    new-instance v4, Lmt;

    .line 296
    .line 297
    const/4 v5, 0x3

    .line 298
    invoke-direct {v4, v5, v0}, Lmt;-><init>(ILjava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    const/4 v0, -0x1

    .line 302
    invoke-static {v4, v0}, Lqj0;->u(La81;I)La81;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    new-instance v8, Lc91;

    .line 307
    .line 308
    invoke-direct {v8, v4, p0, v1, v3}, Lc91;-><init>(La81;Ljava/lang/Object;Lef1;I)V

    .line 309
    .line 310
    .line 311
    new-instance p0, Lp64;

    .line 312
    .line 313
    const/4 v1, 0x4

    .line 314
    invoke-direct {p0, v1, v2}, Lbv3;-><init>(ILdh0;)V

    .line 315
    .line 316
    .line 317
    new-instance v3, Lvq;

    .line 318
    .line 319
    invoke-direct {v3, v5, v8, p0}, Lvq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    invoke-static {v3, v0}, Lqj0;->u(La81;I)La81;

    .line 323
    .line 324
    .line 325
    move-result-object p0

    .line 326
    invoke-static {p0}, Lqj0;->D(La81;)La81;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    new-instance v0, Lms;

    .line 331
    .line 332
    invoke-direct {v0, v6, v2}, Lms;-><init>(Landroid/content/Context;Ldh0;)V

    .line 333
    .line 334
    .line 335
    new-instance v3, Lk81;

    .line 336
    .line 337
    const/4 v4, 0x2

    .line 338
    invoke-direct {v3, p0, v0, v4}, Lk81;-><init>(La81;Ldf1;I)V

    .line 339
    .line 340
    .line 341
    new-instance p0, Lx50;

    .line 342
    .line 343
    invoke-direct {p0, v3, v2, v1}, Lx50;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 344
    .line 345
    .line 346
    invoke-static {v7, v2, v2, p0, v5}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 347
    .line 348
    .line 349
    :cond_5
    return-void

    .line 350
    :goto_5
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    throw p0

    .line 352
    :cond_6
    const-string p0, "Cannot initialize WorkManager in direct boot mode"

    .line 353
    .line 354
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    throw v8
.end method

.method public static c(Landroid/content/Context;)Leg4;
    .locals 2

    .line 1
    sget-object v0, Leg4;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    sget-object v1, Leg4;->k:Leg4;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    sget-object v1, Leg4;->l:Leg4;

    .line 14
    .line 15
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :goto_0
    if-eqz v1, :cond_1

    .line 17
    .line 18
    :try_start_2
    monitor-exit v0

    .line 19
    return-object v1

    .line 20
    :catchall_1
    move-exception p0

    .line 21
    goto :goto_2

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    .line 28
    .line 29
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    :try_start_4
    throw p0

    .line 35
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 36
    throw p0
.end method


# virtual methods
.method public final a(Lop2;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v4

    .line 8
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    new-instance v0, Ltf4;

    .line 15
    .line 16
    sget-object v3, Lx31;->o:Lx31;

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    move-object v1, p0

    .line 21
    invoke-direct/range {v0 .. v5}, Ltf4;-><init>(Leg4;Ljava/lang/String;Lx31;Ljava/util/List;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ltf4;->a()Lw13;

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const-string p0, "enqueue needs at least one WorkRequest."

    .line 29
    .line 30
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final b(Ljava/lang/String;Lop2;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v4

    .line 8
    new-instance v0, Ltf4;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    sget-object v3, Lx31;->n:Lx31;

    .line 12
    .line 13
    move-object v1, p0

    .line 14
    move-object v2, p1

    .line 15
    invoke-direct/range {v0 .. v5}, Ltf4;-><init>(Leg4;Ljava/lang/String;Lx31;Ljava/util/List;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ltf4;->a()Lw13;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    sget-object v0, Leg4;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Leg4;->h:Z

    .line 6
    .line 7
    iget-object v1, p0, Leg4;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Leg4;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Leg4;->b:Lmd0;

    .line 2
    .line 3
    iget-object v0, v0, Lmd0;->m:Lqv3;

    .line 4
    .line 5
    const-string v1, "ReschedulingWork"

    .line 6
    .line 7
    new-instance v2, Lvc3;

    .line 8
    .line 9
    const/16 v3, 0xc

    .line 10
    .line 11
    invoke-direct {v2, v3, p0}, Lvc3;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lix;->B()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    :try_start_0
    invoke-static {v1}, Lix;->Y(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v2}, Lvc3;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 43
    .line 44
    .line 45
    :cond_2
    throw v0
.end method

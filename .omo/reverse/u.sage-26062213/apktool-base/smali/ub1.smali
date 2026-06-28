.class public final Lub1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final r:Ljava/lang/String;

.field public static final s:J


# instance fields
.field public final n:Landroid/content/Context;

.field public final o:Leg4;

.field public final p:Ldd1;

.field public q:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ForceStopRunnable"

    .line 2
    .line 3
    invoke-static {v0}, Lt72;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lub1;->r:Ljava/lang/String;

    .line 8
    .line 9
    const-wide v0, 0x496cebb800L

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    sput-wide v0, Lub1;->s:J

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Leg4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lub1;->n:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lub1;->o:Leg4;

    .line 11
    .line 12
    iget-object p1, p2, Leg4;->g:Ldd1;

    .line 13
    .line 14
    iput-object p1, p0, Lub1;->p:Ldd1;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lub1;->q:I

    .line 18
    .line 19
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 5

    .line 1
    const-string v0, "alarm"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/AlarmManager;

    .line 8
    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v2, 0x1f

    .line 12
    .line 13
    if-lt v1, v2, :cond_0

    .line 14
    .line 15
    const/high16 v1, 0xa000000

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/high16 v1, 0x8000000

    .line 19
    .line 20
    :goto_0
    new-instance v2, Landroid/content/Intent;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v3, Landroid/content/ComponentName;

    .line 26
    .line 27
    const-class v4, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    .line 28
    .line 29
    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const-string v3, "ACTION_FORCE_STOP_RESCHEDULE"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const/4 v3, -0x1

    .line 41
    invoke-static {p0, v3, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    sget-wide v3, Lub1;->s:J

    .line 50
    .line 51
    add-long/2addr v1, v3

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "last_force_stop_ms"

    .line 4
    .line 5
    iget-object v2, v0, Lub1;->p:Ldd1;

    .line 6
    .line 7
    iget-object v3, v0, Lub1;->o:Leg4;

    .line 8
    .line 9
    iget-object v4, v3, Leg4;->c:Landroidx/work/impl/WorkDatabase;

    .line 10
    .line 11
    iget-object v5, v3, Leg4;->b:Lmd0;

    .line 12
    .line 13
    iget-object v6, v3, Leg4;->g:Ldd1;

    .line 14
    .line 15
    iget-object v7, v3, Leg4;->c:Landroidx/work/impl/WorkDatabase;

    .line 16
    .line 17
    sget-object v8, Law3;->s:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v0, v0, Lub1;->n:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v0}, Lxu1;->a(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    invoke-static {v0, v8}, Law3;->d(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->t()Lxv3;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    iget-object v10, v10, Lxv3;->a:Lga3;

    .line 34
    .line 35
    new-instance v11, Ljd3;

    .line 36
    .line 37
    const/16 v12, 0xd

    .line 38
    .line 39
    invoke-direct {v11, v12}, Ljd3;-><init>(I)V

    .line 40
    .line 41
    .line 42
    const/4 v12, 0x1

    .line 43
    const/4 v13, 0x0

    .line 44
    invoke-static {v10, v12, v13, v11}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    check-cast v10, Ljava/util/List;

    .line 49
    .line 50
    if-eqz v9, :cond_0

    .line 51
    .line 52
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v11

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move v11, v13

    .line 58
    :goto_0
    new-instance v14, Ljava/util/HashSet;

    .line 59
    .line 60
    invoke-direct {v14, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 61
    .line 62
    .line 63
    if-eqz v9, :cond_2

    .line 64
    .line 65
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    if-nez v11, :cond_2

    .line 70
    .line 71
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    move v15, v13

    .line 76
    :goto_1
    if-ge v15, v11, :cond_2

    .line 77
    .line 78
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v16

    .line 82
    add-int/lit8 v15, v15, 0x1

    .line 83
    .line 84
    check-cast v16, Landroid/app/job/JobInfo;

    .line 85
    .line 86
    invoke-static/range {v16 .. v16}, Law3;->f(Landroid/app/job/JobInfo;)Lbg4;

    .line 87
    .line 88
    .line 89
    move-result-object v12

    .line 90
    if-eqz v12, :cond_1

    .line 91
    .line 92
    iget-object v12, v12, Lbg4;->a:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v14, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/app/job/JobInfo;->getId()I

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    invoke-static {v8, v12}, Law3;->b(Landroid/app/job/JobScheduler;I)V

    .line 103
    .line 104
    .line 105
    :goto_2
    const/4 v12, 0x1

    .line 106
    goto :goto_1

    .line 107
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-eqz v9, :cond_4

    .line 116
    .line 117
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    check-cast v9, Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v14, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    if-nez v9, :cond_3

    .line 128
    .line 129
    invoke-static {}, Lt72;->g()Lt72;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    sget-object v9, Law3;->s:Ljava/lang/String;

    .line 134
    .line 135
    const-string v11, "Reconciling jobs"

    .line 136
    .line 137
    invoke-virtual {v8, v9, v11}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const/4 v8, 0x1

    .line 141
    goto :goto_3

    .line 142
    :cond_4
    move v8, v13

    .line 143
    :goto_3
    const-wide/16 v11, -0x1

    .line 144
    .line 145
    if-eqz v8, :cond_6

    .line 146
    .line 147
    invoke-virtual {v4}, Lga3;->b()V

    .line 148
    .line 149
    .line 150
    :try_start_0
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->w()Lqg4;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v10

    .line 158
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v14

    .line 162
    if-eqz v14, :cond_5

    .line 163
    .line 164
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v14

    .line 168
    check-cast v14, Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v9, v11, v12, v14}, Lqg4;->e(JLjava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto :goto_4

    .line 174
    :catchall_0
    move-exception v0

    .line 175
    goto :goto_5

    .line 176
    :cond_5
    invoke-virtual {v4}, Lga3;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4}, Lga3;->l()V

    .line 180
    .line 181
    .line 182
    goto :goto_6

    .line 183
    :goto_5
    invoke-virtual {v4}, Lga3;->l()V

    .line 184
    .line 185
    .line 186
    throw v0

    .line 187
    :cond_6
    :goto_6
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->w()Lqg4;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->v()Ljg4;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    invoke-virtual {v7}, Lga3;->b()V

    .line 196
    .line 197
    .line 198
    :try_start_1
    iget-object v10, v4, Lqg4;->a:Lga3;

    .line 199
    .line 200
    new-instance v14, Lba4;

    .line 201
    .line 202
    const/16 v15, 0xe

    .line 203
    .line 204
    invoke-direct {v14, v15}, Lba4;-><init>(I)V

    .line 205
    .line 206
    .line 207
    const/4 v15, 0x1

    .line 208
    invoke-static {v10, v15, v13, v14}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v10

    .line 212
    check-cast v10, Ljava/util/List;

    .line 213
    .line 214
    if-eqz v10, :cond_7

    .line 215
    .line 216
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 217
    .line 218
    .line 219
    move-result v14

    .line 220
    if-nez v14, :cond_7

    .line 221
    .line 222
    const/4 v14, 0x1

    .line 223
    goto :goto_7

    .line 224
    :catchall_1
    move-exception v0

    .line 225
    goto/16 :goto_10

    .line 226
    .line 227
    :cond_7
    move v14, v13

    .line 228
    :goto_7
    if-eqz v14, :cond_8

    .line 229
    .line 230
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v15

    .line 238
    if-eqz v15, :cond_8

    .line 239
    .line 240
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v15

    .line 244
    check-cast v15, Log4;

    .line 245
    .line 246
    sget-object v13, Lcg4;->n:Lcg4;

    .line 247
    .line 248
    iget-object v15, v15, Log4;->a:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {v4, v13, v15}, Lqg4;->h(Lcg4;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    const/16 v13, -0x200

    .line 254
    .line 255
    invoke-virtual {v4, v13, v15}, Lqg4;->i(ILjava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4, v11, v12, v15}, Lqg4;->e(JLjava/lang/String;)V

    .line 259
    .line 260
    .line 261
    const/4 v13, 0x0

    .line 262
    goto :goto_8

    .line 263
    :cond_8
    iget-object v4, v9, Ljg4;->a:Lga3;

    .line 264
    .line 265
    new-instance v9, Lba4;

    .line 266
    .line 267
    const/16 v10, 0xc

    .line 268
    .line 269
    invoke-direct {v9, v10}, Lba4;-><init>(I)V

    .line 270
    .line 271
    .line 272
    const/4 v10, 0x0

    .line 273
    const/4 v15, 0x1

    .line 274
    invoke-static {v4, v10, v15, v9}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v7}, Lga3;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 278
    .line 279
    .line 280
    invoke-virtual {v7}, Lga3;->l()V

    .line 281
    .line 282
    .line 283
    if-nez v14, :cond_a

    .line 284
    .line 285
    if-eqz v8, :cond_9

    .line 286
    .line 287
    goto :goto_9

    .line 288
    :cond_9
    const/4 v15, 0x0

    .line 289
    goto :goto_a

    .line 290
    :cond_a
    :goto_9
    const/4 v15, 0x1

    .line 291
    :goto_a
    iget-object v4, v6, Ldd1;->o:Ljava/lang/Object;

    .line 292
    .line 293
    check-cast v4, Landroidx/work/impl/WorkDatabase;

    .line 294
    .line 295
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->s()Lnx2;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    const-string v8, "reschedule_needed"

    .line 300
    .line 301
    invoke-virtual {v4, v8}, Lnx2;->a(Ljava/lang/String;)Ljava/lang/Long;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    const/16 v9, 0x16

    .line 306
    .line 307
    const-wide/16 v10, 0x0

    .line 308
    .line 309
    sget-object v12, Lub1;->r:Ljava/lang/String;

    .line 310
    .line 311
    if-eqz v4, :cond_b

    .line 312
    .line 313
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 314
    .line 315
    .line 316
    move-result-wide v13

    .line 317
    const-wide/16 v17, 0x1

    .line 318
    .line 319
    cmp-long v4, v13, v17

    .line 320
    .line 321
    if-nez v4, :cond_b

    .line 322
    .line 323
    invoke-static {}, Lt72;->g()Lt72;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    const-string v1, "Rescheduling Workers."

    .line 328
    .line 329
    invoke-virtual {v0, v12, v1}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v3}, Leg4;->e()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    new-instance v0, Lmx2;

    .line 339
    .line 340
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-direct {v0, v8, v1}, Lmx2;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 345
    .line 346
    .line 347
    iget-object v1, v6, Ldd1;->o:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast v1, Landroidx/work/impl/WorkDatabase;

    .line 350
    .line 351
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->s()Lnx2;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    iget-object v2, v1, Lnx2;->a:Lga3;

    .line 356
    .line 357
    new-instance v3, Lm;

    .line 358
    .line 359
    invoke-direct {v3, v9, v1, v0}, Lm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    const/4 v10, 0x0

    .line 363
    const/4 v15, 0x1

    .line 364
    invoke-static {v2, v10, v15, v3}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    return-void

    .line 368
    :cond_b
    :try_start_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 369
    .line 370
    const/16 v6, 0x1f

    .line 371
    .line 372
    if-lt v4, v6, :cond_c

    .line 373
    .line 374
    const/high16 v6, 0x22000000

    .line 375
    .line 376
    goto :goto_b

    .line 377
    :cond_c
    const/high16 v6, 0x20000000

    .line 378
    .line 379
    :goto_b
    new-instance v8, Landroid/content/Intent;

    .line 380
    .line 381
    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 382
    .line 383
    .line 384
    new-instance v13, Landroid/content/ComponentName;

    .line 385
    .line 386
    const-class v14, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    .line 387
    .line 388
    invoke-direct {v13, v0, v14}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v8, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 392
    .line 393
    .line 394
    const-string v13, "ACTION_FORCE_STOP_RESCHEDULE"

    .line 395
    .line 396
    invoke-virtual {v8, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    .line 398
    .line 399
    const/4 v13, -0x1

    .line 400
    invoke-static {v0, v13, v8, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 401
    .line 402
    .line 403
    move-result-object v6

    .line 404
    const/16 v8, 0x1e

    .line 405
    .line 406
    if-lt v4, v8, :cond_10

    .line 407
    .line 408
    if-eqz v6, :cond_d

    .line 409
    .line 410
    invoke-virtual {v6}, Landroid/app/PendingIntent;->cancel()V

    .line 411
    .line 412
    .line 413
    goto :goto_c

    .line 414
    :catch_0
    move-exception v0

    .line 415
    goto :goto_e

    .line 416
    :catch_1
    move-exception v0

    .line 417
    goto :goto_e

    .line 418
    :cond_d
    :goto_c
    const-string v4, "activity"

    .line 419
    .line 420
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    check-cast v0, Landroid/app/ActivityManager;

    .line 425
    .line 426
    invoke-static {v0}, La3;->k(Landroid/app/ActivityManager;)Ljava/util/List;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    if-eqz v0, :cond_11

    .line 431
    .line 432
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    if-nez v4, :cond_11

    .line 437
    .line 438
    iget-object v4, v2, Ldd1;->o:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast v4, Landroidx/work/impl/WorkDatabase;

    .line 441
    .line 442
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->s()Lnx2;

    .line 443
    .line 444
    .line 445
    move-result-object v4

    .line 446
    invoke-virtual {v4, v1}, Lnx2;->a(Ljava/lang/String;)Ljava/lang/Long;

    .line 447
    .line 448
    .line 449
    move-result-object v4

    .line 450
    if-eqz v4, :cond_e

    .line 451
    .line 452
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 453
    .line 454
    .line 455
    move-result-wide v10

    .line 456
    :cond_e
    const/4 v4, 0x0

    .line 457
    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 458
    .line 459
    .line 460
    move-result v6

    .line 461
    if-ge v4, v6, :cond_11

    .line 462
    .line 463
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    invoke-static {v6}, La3;->d(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    .line 468
    .line 469
    .line 470
    move-result-object v6

    .line 471
    invoke-static {v6}, La3;->b(Landroid/app/ApplicationExitInfo;)I

    .line 472
    .line 473
    .line 474
    move-result v8

    .line 475
    const/16 v13, 0xa

    .line 476
    .line 477
    if-ne v8, v13, :cond_f

    .line 478
    .line 479
    invoke-static {v6}, La3;->c(Landroid/app/ApplicationExitInfo;)J

    .line 480
    .line 481
    .line 482
    move-result-wide v13

    .line 483
    cmp-long v6, v13, v10

    .line 484
    .line 485
    if-ltz v6, :cond_f

    .line 486
    .line 487
    goto :goto_f

    .line 488
    :cond_f
    add-int/lit8 v4, v4, 0x1

    .line 489
    .line 490
    goto :goto_d

    .line 491
    :cond_10
    if-nez v6, :cond_11

    .line 492
    .line 493
    invoke-static {v0}, Lub1;->c(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 494
    .line 495
    .line 496
    goto :goto_f

    .line 497
    :cond_11
    if-eqz v15, :cond_12

    .line 498
    .line 499
    invoke-static {}, Lt72;->g()Lt72;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    const-string v1, "Found unfinished work, scheduling it."

    .line 504
    .line 505
    invoke-virtual {v0, v12, v1}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    iget-object v0, v3, Leg4;->e:Ljava/util/List;

    .line 509
    .line 510
    invoke-static {v5, v7, v0}, Lzd3;->b(Lmd0;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 511
    .line 512
    .line 513
    :cond_12
    return-void

    .line 514
    :goto_e
    invoke-static {}, Lt72;->g()Lt72;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    iget v4, v4, Lt72;->n:I

    .line 519
    .line 520
    const/4 v6, 0x5

    .line 521
    if-gt v4, v6, :cond_13

    .line 522
    .line 523
    const-string v4, "Ignoring exception"

    .line 524
    .line 525
    invoke-static {v12, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    .line 527
    .line 528
    :cond_13
    :goto_f
    invoke-static {}, Lt72;->g()Lt72;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    const-string v4, "Application was force-stopped, rescheduling."

    .line 533
    .line 534
    invoke-virtual {v0, v12, v4}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v3}, Leg4;->e()V

    .line 538
    .line 539
    .line 540
    iget-object v0, v5, Lmd0;->d:Lpr3;

    .line 541
    .line 542
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 543
    .line 544
    .line 545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 546
    .line 547
    .line 548
    move-result-wide v3

    .line 549
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 550
    .line 551
    .line 552
    new-instance v0, Lmx2;

    .line 553
    .line 554
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    invoke-direct {v0, v1, v3}, Lmx2;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 559
    .line 560
    .line 561
    iget-object v1, v2, Ldd1;->o:Ljava/lang/Object;

    .line 562
    .line 563
    check-cast v1, Landroidx/work/impl/WorkDatabase;

    .line 564
    .line 565
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->s()Lnx2;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    iget-object v2, v1, Lnx2;->a:Lga3;

    .line 570
    .line 571
    new-instance v3, Lm;

    .line 572
    .line 573
    invoke-direct {v3, v9, v1, v0}, Lm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 574
    .line 575
    .line 576
    const/4 v10, 0x0

    .line 577
    const/4 v15, 0x1

    .line 578
    invoke-static {v2, v10, v15, v3}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    return-void

    .line 582
    :goto_10
    invoke-virtual {v7}, Lga3;->l()V

    .line 583
    .line 584
    .line 585
    throw v0
.end method

.method public final b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lub1;->o:Leg4;

    .line 2
    .line 3
    iget-object v0, v0, Leg4;->b:Lmd0;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sget-object v2, Lub1;->r:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lt72;->g()Lt72;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v0, "The default process name was not specified."

    .line 22
    .line 23
    invoke-virtual {p0, v2, v0}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_0
    iget-object p0, p0, Lub1;->n:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {p0, v0}, Ldz2;->a(Landroid/content/Context;Lmd0;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-static {}, Lt72;->g()Lt72;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v3, "Is default app process = "

    .line 41
    .line 42
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v2, v1}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return p0
.end method

.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lub1;->n:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v1, Lub1;->r:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lub1;->o:Leg4;

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Lub1;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    invoke-virtual {v2}, Leg4;->d()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {v0}, Luf4;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    :try_start_2
    invoke-static {}, Lt72;->g()Lt72;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "Performing cleanup operations."

    .line 25
    .line 26
    invoke-virtual {v3, v1, v4}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    .line 28
    .line 29
    :try_start_3
    invoke-virtual {p0}, Lub1;->a()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Leg4;->d()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :catch_1
    move-exception v3

    .line 40
    goto :goto_1

    .line 41
    :catch_2
    move-exception v3

    .line 42
    goto :goto_1

    .line 43
    :catch_3
    move-exception v3

    .line 44
    goto :goto_1

    .line 45
    :catch_4
    move-exception v3

    .line 46
    goto :goto_1

    .line 47
    :catch_5
    move-exception v3

    .line 48
    goto :goto_1

    .line 49
    :catch_6
    move-exception v3

    .line 50
    goto :goto_1

    .line 51
    :catch_7
    move-exception v3

    .line 52
    goto :goto_1

    .line 53
    :catch_8
    move-exception v3

    .line 54
    :goto_1
    :try_start_4
    iget v4, p0, Lub1;->q:I

    .line 55
    .line 56
    add-int/lit8 v4, v4, 0x1

    .line 57
    .line 58
    iput v4, p0, Lub1;->q:I

    .line 59
    .line 60
    const/4 v5, 0x3

    .line 61
    if-lt v4, v5, :cond_2

    .line 62
    .line 63
    invoke-static {v0}, Lw80;->D(Landroid/content/Context;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_1

    .line 68
    .line 69
    const-string p0, "The file system on the device is in a bad state. WorkManager cannot access the app\'s internal data store."

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    const-string p0, "WorkManager can\'t be accessed from direct boot, because credential encrypted storage isn\'t accessible.\nDon\'t access or initialise WorkManager from directAware components. See https://developer.android.com/training/articles/direct-boot"

    .line 73
    .line 74
    :goto_2
    invoke-static {}, Lt72;->g()Lt72;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, v1, p0, v3}, Lt72;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    invoke-direct {v0, p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    iget-object p0, v2, Leg4;->b:Lmd0;

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    :cond_2
    int-to-long v4, v4

    .line 93
    const-wide/16 v6, 0x12c

    .line 94
    .line 95
    mul-long/2addr v4, v6

    .line 96
    invoke-static {}, Lt72;->g()Lt72;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    new-instance v9, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v10, "Retrying after "

    .line 106
    .line 107
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v8, v1, v4, v3}, Lt72;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    iget v3, p0, Lub1;->q:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    .line 122
    int-to-long v3, v3

    .line 123
    mul-long/2addr v3, v6

    .line 124
    :try_start_5
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :catch_9
    move-exception p0

    .line 129
    :try_start_6
    const-string v0, "Unexpected SQLite exception during migrations"

    .line 130
    .line 131
    invoke-static {}, Lt72;->g()Lt72;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v3, v1, v0}, Lt72;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 139
    .line 140
    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    iget-object p0, v2, Leg4;->b:Lmd0;

    .line 144
    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 149
    :goto_3
    invoke-virtual {v2}, Leg4;->d()V

    .line 150
    .line 151
    .line 152
    throw p0
.end method

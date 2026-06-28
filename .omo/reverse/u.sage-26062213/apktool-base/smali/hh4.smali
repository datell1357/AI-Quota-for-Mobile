.class public final Lhh4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Log4;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Lqd1;

.field public final e:Lmd0;

.field public final f:Lpr3;

.field public final g:Lez2;

.field public final h:Landroidx/work/impl/WorkDatabase;

.field public final i:Lqg4;

.field public final j:Ljs0;

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/lang/String;

.field public final m:Lvu1;


# direct methods
.method public constructor <init>(Lj04;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lj04;->f:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Log4;

    .line 7
    .line 8
    iput-object v0, p0, Lhh4;->a:Log4;

    .line 9
    .line 10
    iget-object v1, p1, Lj04;->a:Landroid/content/Context;

    .line 11
    .line 12
    iput-object v1, p0, Lhh4;->b:Landroid/content/Context;

    .line 13
    .line 14
    iget-object v0, v0, Log4;->a:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lhh4;->c:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, p1, Lj04;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lqd1;

    .line 21
    .line 22
    iput-object v1, p0, Lhh4;->d:Lqd1;

    .line 23
    .line 24
    iget-object v1, p1, Lj04;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lmd0;

    .line 27
    .line 28
    iput-object v1, p0, Lhh4;->e:Lmd0;

    .line 29
    .line 30
    iget-object v1, v1, Lmd0;->d:Lpr3;

    .line 31
    .line 32
    iput-object v1, p0, Lhh4;->f:Lpr3;

    .line 33
    .line 34
    iget-object v1, p1, Lj04;->d:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lez2;

    .line 37
    .line 38
    iput-object v1, p0, Lhh4;->g:Lez2;

    .line 39
    .line 40
    iget-object v1, p1, Lj04;->e:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Landroidx/work/impl/WorkDatabase;

    .line 43
    .line 44
    iput-object v1, p0, Lhh4;->h:Landroidx/work/impl/WorkDatabase;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->w()Lqg4;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iput-object v2, p0, Lhh4;->i:Lqg4;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->r()Ljs0;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, p0, Lhh4;->j:Ljs0;

    .line 57
    .line 58
    iget-object p1, p1, Lj04;->g:Ljava/lang/Object;

    .line 59
    .line 60
    move-object v1, p1

    .line 61
    check-cast v1, Ljava/util/ArrayList;

    .line 62
    .line 63
    iput-object v1, p0, Lhh4;->k:Ljava/util/ArrayList;

    .line 64
    .line 65
    const-string p1, "Work [ id="

    .line 66
    .line 67
    const-string v2, ", tags={ "

    .line 68
    .line 69
    invoke-static {p1, v0, v2}, Ldi0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const/4 v5, 0x0

    .line 74
    const/16 v6, 0x3e

    .line 75
    .line 76
    const-string v2, ","

    .line 77
    .line 78
    const/4 v3, 0x0

    .line 79
    const/4 v4, 0x0

    .line 80
    invoke-static/range {v1 .. v6}, Lo70;->n0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lpe1;I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-string v1, " } ]"

    .line 85
    .line 86
    invoke-static {p1, v0, v1}, Lxw1;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lhh4;->l:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {}, Ln44;->E()Lvu1;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Lhh4;->m:Lvu1;

    .line 97
    .line 98
    return-void
.end method

.method public static final a(Lhh4;Lfh0;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v6, v1, Lhh4;->l:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, v1, Lhh4;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, v1, Lhh4;->d:Lqd1;

    .line 10
    .line 11
    iget-object v4, v1, Lhh4;->h:Landroidx/work/impl/WorkDatabase;

    .line 12
    .line 13
    iget-object v5, v1, Lhh4;->e:Lmd0;

    .line 14
    .line 15
    iget-object v7, v5, Lmd0;->m:Lqv3;

    .line 16
    .line 17
    iget-object v8, v1, Lhh4;->a:Log4;

    .line 18
    .line 19
    instance-of v9, v0, Lfh4;

    .line 20
    .line 21
    if-eqz v9, :cond_0

    .line 22
    .line 23
    move-object v9, v0

    .line 24
    check-cast v9, Lfh4;

    .line 25
    .line 26
    iget v10, v9, Lfh4;->s:I

    .line 27
    .line 28
    const/high16 v11, -0x80000000

    .line 29
    .line 30
    and-int v12, v10, v11

    .line 31
    .line 32
    if-eqz v12, :cond_0

    .line 33
    .line 34
    sub-int/2addr v10, v11

    .line 35
    iput v10, v9, Lfh4;->s:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v9, Lfh4;

    .line 39
    .line 40
    invoke-direct {v9, v1, v0}, Lfh4;-><init>(Lhh4;Lfh0;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object v0, v9, Lfh4;->q:Ljava/lang/Object;

    .line 44
    .line 45
    iget v10, v9, Lfh4;->s:I

    .line 46
    .line 47
    const/4 v11, 0x1

    .line 48
    if-eqz v10, :cond_2

    .line 49
    .line 50
    if-ne v10, v11, :cond_1

    .line 51
    .line 52
    :try_start_0
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    move-object/from16 v17, v6

    .line 56
    .line 57
    goto/16 :goto_c

    .line 58
    .line 59
    :catchall_0
    move-exception v0

    .line 60
    move-object/from16 v17, v6

    .line 61
    .line 62
    goto/16 :goto_d

    .line 63
    .line 64
    :catch_0
    move-exception v0

    .line 65
    move-object v4, v6

    .line 66
    goto/16 :goto_e

    .line 67
    .line 68
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 69
    .line 70
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    return-object v0

    .line 75
    :cond_2
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object v10, v5, Lmd0;->e:Lw13;

    .line 79
    .line 80
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lix;->B()Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    iget-object v12, v8, Log4;->x:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v13, v8, Log4;->c:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v14, v8, Log4;->d:Ljava/lang/String;

    .line 92
    .line 93
    if-eqz v7, :cond_5

    .line 94
    .line 95
    if-eqz v12, :cond_5

    .line 96
    .line 97
    invoke-virtual {v8}, Log4;->hashCode()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 102
    .line 103
    const/16 v15, 0x1d

    .line 104
    .line 105
    if-lt v11, v15, :cond_3

    .line 106
    .line 107
    invoke-static {v12}, Lix;->Y(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    invoke-static {v0, v11}, Lo04;->a(ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_3
    invoke-static {v12}, Lix;->Y(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    const-string v15, "asyncTraceBegin"

    .line 120
    .line 121
    :try_start_1
    sget-object v16, Lix;->p:Ljava/lang/reflect/Method;

    .line 122
    .line 123
    if-nez v16, :cond_4

    .line 124
    .line 125
    move/from16 v16, v0

    .line 126
    .line 127
    const-class v0, Landroid/os/Trace;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 128
    .line 129
    move-object/from16 v17, v6

    .line 130
    .line 131
    :try_start_2
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 132
    .line 133
    move/from16 v18, v7

    .line 134
    .line 135
    :try_start_3
    const-class v7, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 136
    .line 137
    move-object/from16 v19, v12

    .line 138
    .line 139
    :try_start_4
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 140
    .line 141
    filled-new-array {v6, v7, v12}, [Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v0, v15, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    sput-object v0, Lix;->p:Ljava/lang/reflect/Method;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :catch_1
    move-exception v0

    .line 153
    goto :goto_4

    .line 154
    :catch_2
    move-exception v0

    .line 155
    :goto_1
    move-object/from16 v19, v12

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :catch_3
    move-exception v0

    .line 159
    :goto_2
    move/from16 v18, v7

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :catch_4
    move-exception v0

    .line 163
    move-object/from16 v17, v6

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_4
    move/from16 v16, v0

    .line 167
    .line 168
    move-object/from16 v17, v6

    .line 169
    .line 170
    move/from16 v18, v7

    .line 171
    .line 172
    move-object/from16 v19, v12

    .line 173
    .line 174
    :goto_3
    sget-object v0, Lix;->p:Ljava/lang/reflect/Method;

    .line 175
    .line 176
    sget-wide v6, Lix;->n:J

    .line 177
    .line 178
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    filled-new-array {v6, v11, v7}, [Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    const/4 v7, 0x0

    .line 191
    invoke-virtual {v0, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 192
    .line 193
    .line 194
    goto :goto_6

    .line 195
    :goto_4
    invoke-static {v15, v0}, Lix;->z(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 196
    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_5
    :goto_5
    move-object/from16 v17, v6

    .line 200
    .line 201
    move/from16 v18, v7

    .line 202
    .line 203
    move-object/from16 v19, v12

    .line 204
    .line 205
    :goto_6
    new-instance v0, Lyg4;

    .line 206
    .line 207
    const/4 v6, 0x0

    .line 208
    invoke-direct {v0, v1, v6}, Lyg4;-><init>(Lhh4;I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v0}, Lga3;->n(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Ljava/lang/Boolean;

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_6

    .line 222
    .line 223
    new-instance v0, Lch4;

    .line 224
    .line 225
    invoke-direct {v0}, Lch4;-><init>()V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_f

    .line 229
    .line 230
    :cond_6
    invoke-virtual {v8}, Log4;->c()Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_7

    .line 235
    .line 236
    iget-object v0, v8, Log4;->e:Lzl0;

    .line 237
    .line 238
    const/4 v7, 0x0

    .line 239
    goto/16 :goto_a

    .line 240
    .line 241
    :cond_7
    iget-object v0, v5, Lmd0;->f:Lw13;

    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    sget-object v0, Lir1;->a:Ljava/lang/String;

    .line 250
    .line 251
    :try_start_5
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 255
    const/4 v7, 0x0

    .line 256
    :try_start_6
    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    check-cast v0, Landroidx/work/OverwritingInputMerger;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 268
    .line 269
    goto :goto_8

    .line 270
    :catch_5
    move-exception v0

    .line 271
    goto :goto_7

    .line 272
    :catch_6
    move-exception v0

    .line 273
    const/4 v7, 0x0

    .line 274
    :goto_7
    invoke-static {}, Lt72;->g()Lt72;

    .line 275
    .line 276
    .line 277
    move-result-object v11

    .line 278
    sget-object v12, Lir1;->a:Ljava/lang/String;

    .line 279
    .line 280
    const-string v15, "Trouble instantiating "

    .line 281
    .line 282
    invoke-virtual {v15, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v15

    .line 286
    invoke-virtual {v11, v12, v15, v0}, Lt72;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    .line 288
    .line 289
    move-object v0, v7

    .line 290
    :goto_8
    if-nez v0, :cond_8

    .line 291
    .line 292
    sget-object v0, Lih4;->a:Ljava/lang/String;

    .line 293
    .line 294
    invoke-static {}, Lt72;->g()Lt72;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    const-string v2, "Could not create Input Merger "

    .line 299
    .line 300
    invoke-virtual {v2, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v1, v0, v2}, Lt72;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    new-instance v0, Lah4;

    .line 308
    .line 309
    invoke-direct {v0}, Lah4;-><init>()V

    .line 310
    .line 311
    .line 312
    goto/16 :goto_f

    .line 313
    .line 314
    :cond_8
    iget-object v0, v8, Log4;->e:Lzl0;

    .line 315
    .line 316
    invoke-static {v0}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    iget-object v11, v1, Lhh4;->i:Lqg4;

    .line 321
    .line 322
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    iget-object v11, v11, Lqg4;->a:Lga3;

    .line 329
    .line 330
    new-instance v12, Lao0;

    .line 331
    .line 332
    const/16 v14, 0x14

    .line 333
    .line 334
    invoke-direct {v12, v2, v14}, Lao0;-><init>(Ljava/lang/String;I)V

    .line 335
    .line 336
    .line 337
    const/4 v14, 0x1

    .line 338
    invoke-static {v11, v14, v6, v12}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v11

    .line 342
    check-cast v11, Ljava/util/List;

    .line 343
    .line 344
    invoke-static {v0, v11}, Lo70;->s0(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    new-instance v11, Lyl0;

    .line 349
    .line 350
    invoke-direct {v11, v6}, Lyl0;-><init>(I)V

    .line 351
    .line 352
    .line 353
    new-instance v12, Ljava/util/LinkedHashMap;

    .line 354
    .line 355
    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 359
    .line 360
    .line 361
    move-result v14

    .line 362
    :goto_9
    if-ge v6, v14, :cond_9

    .line 363
    .line 364
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v15

    .line 368
    add-int/lit8 v6, v6, 0x1

    .line 369
    .line 370
    check-cast v15, Lzl0;

    .line 371
    .line 372
    iget-object v15, v15, Lzl0;->a:Ljava/util/HashMap;

    .line 373
    .line 374
    invoke-static {v15}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 375
    .line 376
    .line 377
    move-result-object v15

    .line 378
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    invoke-interface {v12, v15}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 382
    .line 383
    .line 384
    goto :goto_9

    .line 385
    :cond_9
    invoke-virtual {v11, v12}, Lyl0;->a(Ljava/util/HashMap;)V

    .line 386
    .line 387
    .line 388
    new-instance v0, Lzl0;

    .line 389
    .line 390
    iget-object v6, v11, Lyl0;->a:Ljava/util/LinkedHashMap;

    .line 391
    .line 392
    invoke-direct {v0, v6}, Lzl0;-><init>(Ljava/util/LinkedHashMap;)V

    .line 393
    .line 394
    .line 395
    invoke-static {v0}, Lbi4;->L(Lzl0;)[B

    .line 396
    .line 397
    .line 398
    :goto_a
    new-instance v6, Landroidx/work/WorkerParameters;

    .line 399
    .line 400
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    iget-object v11, v1, Lhh4;->k:Ljava/util/ArrayList;

    .line 405
    .line 406
    iget v8, v8, Log4;->k:I

    .line 407
    .line 408
    iget-object v12, v5, Lmd0;->a:Ljava/util/concurrent/ExecutorService;

    .line 409
    .line 410
    iget-object v5, v5, Lmd0;->b:Lzp0;

    .line 411
    .line 412
    new-instance v14, Lkg4;

    .line 413
    .line 414
    new-instance v14, Lag4;

    .line 415
    .line 416
    iget-object v15, v1, Lhh4;->g:Lez2;

    .line 417
    .line 418
    invoke-direct {v14, v4, v15, v3}, Lag4;-><init>(Landroidx/work/impl/WorkDatabase;Lez2;Lqd1;)V

    .line 419
    .line 420
    .line 421
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 422
    .line 423
    .line 424
    iput-object v2, v6, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    .line 425
    .line 426
    iput-object v0, v6, Landroidx/work/WorkerParameters;->b:Lzl0;

    .line 427
    .line 428
    new-instance v0, Ljava/util/HashSet;

    .line 429
    .line 430
    invoke-direct {v0, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 431
    .line 432
    .line 433
    iput v8, v6, Landroidx/work/WorkerParameters;->c:I

    .line 434
    .line 435
    iput-object v12, v6, Landroidx/work/WorkerParameters;->d:Ljava/util/concurrent/ExecutorService;

    .line 436
    .line 437
    iput-object v5, v6, Landroidx/work/WorkerParameters;->e:Lhi0;

    .line 438
    .line 439
    iput-object v3, v6, Landroidx/work/WorkerParameters;->f:Lqd1;

    .line 440
    .line 441
    iput-object v10, v6, Landroidx/work/WorkerParameters;->g:Lw13;

    .line 442
    .line 443
    :try_start_7
    iget-object v0, v1, Lhh4;->b:Landroid/content/Context;

    .line 444
    .line 445
    invoke-virtual {v10, v0, v13, v6}, Lw13;->d(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Lv42;

    .line 446
    .line 447
    .line 448
    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 449
    const/4 v5, 0x1

    .line 450
    iput-boolean v5, v2, Lv42;->d:Z

    .line 451
    .line 452
    iget-object v0, v9, Lfh0;->o:Lhi0;

    .line 453
    .line 454
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 455
    .line 456
    .line 457
    sget-object v6, Lmj1;->W:Lmj1;

    .line 458
    .line 459
    invoke-interface {v0, v6}, Lhi0;->K(Lgi0;)Lfi0;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 464
    .line 465
    .line 466
    check-cast v0, Ltu1;

    .line 467
    .line 468
    new-instance v6, Lzg4;

    .line 469
    .line 470
    move/from16 v8, v18

    .line 471
    .line 472
    move-object/from16 v10, v19

    .line 473
    .line 474
    invoke-direct {v6, v2, v8, v10, v1}, Lzg4;-><init>(Lv42;ZLjava/lang/String;Lhh4;)V

    .line 475
    .line 476
    .line 477
    invoke-interface {v0, v6}, Ltu1;->V(Lpe1;)Ljv0;

    .line 478
    .line 479
    .line 480
    new-instance v6, Lyg4;

    .line 481
    .line 482
    invoke-direct {v6, v1, v5}, Lyg4;-><init>(Lhh4;I)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v4, v6}, Lga3;->n(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v4

    .line 489
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 490
    .line 491
    .line 492
    check-cast v4, Ljava/lang/Boolean;

    .line 493
    .line 494
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 495
    .line 496
    .line 497
    move-result v4

    .line 498
    if-nez v4, :cond_a

    .line 499
    .line 500
    new-instance v0, Lch4;

    .line 501
    .line 502
    invoke-direct {v0}, Lch4;-><init>()V

    .line 503
    .line 504
    .line 505
    goto/16 :goto_f

    .line 506
    .line 507
    :cond_a
    invoke-interface {v0}, Ltu1;->isCancelled()Z

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    if-eqz v0, :cond_b

    .line 512
    .line 513
    new-instance v0, Lch4;

    .line 514
    .line 515
    invoke-direct {v0}, Lch4;-><init>()V

    .line 516
    .line 517
    .line 518
    goto/16 :goto_f

    .line 519
    .line 520
    :cond_b
    iget-object v0, v3, Lqd1;->r:Ljava/lang/Object;

    .line 521
    .line 522
    check-cast v0, Lc73;

    .line 523
    .line 524
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    .line 526
    .line 527
    invoke-static {v0}, Lht4;->p(Ljava/util/concurrent/Executor;)Lji0;

    .line 528
    .line 529
    .line 530
    move-result-object v6

    .line 531
    :try_start_8
    new-instance v0, Lgh4;

    .line 532
    .line 533
    const/4 v5, 0x0

    .line 534
    move-object v4, v7

    .line 535
    move-object v3, v14

    .line 536
    invoke-direct/range {v0 .. v5}, Lgh4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 537
    .line 538
    .line 539
    const/4 v14, 0x1

    .line 540
    iput v14, v9, Lfh4;->s:I

    .line 541
    .line 542
    invoke-static {v6, v0, v9}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v0
    :try_end_8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 546
    sget-object v1, Lri0;->n:Lri0;

    .line 547
    .line 548
    if-ne v0, v1, :cond_c

    .line 549
    .line 550
    :goto_b
    move-object v0, v1

    .line 551
    goto :goto_f

    .line 552
    :cond_c
    :goto_c
    :try_start_9
    check-cast v0, Lu42;

    .line 553
    .line 554
    new-instance v1, Lbh4;

    .line 555
    .line 556
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 557
    .line 558
    .line 559
    invoke-direct {v1, v0}, Lbh4;-><init>(Lu42;)V
    :try_end_9
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 560
    .line 561
    .line 562
    goto :goto_b

    .line 563
    :catchall_1
    move-exception v0

    .line 564
    goto :goto_d

    .line 565
    :catch_7
    move-exception v0

    .line 566
    move-object/from16 v4, v17

    .line 567
    .line 568
    goto :goto_e

    .line 569
    :goto_d
    sget-object v1, Lih4;->a:Ljava/lang/String;

    .line 570
    .line 571
    invoke-static {}, Lt72;->g()Lt72;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    new-instance v3, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .line 579
    .line 580
    move-object/from16 v4, v17

    .line 581
    .line 582
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    const-string v4, " failed because it threw an exception/error"

    .line 586
    .line 587
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v3

    .line 594
    invoke-virtual {v2, v1, v3, v0}, Lt72;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 595
    .line 596
    .line 597
    new-instance v0, Lah4;

    .line 598
    .line 599
    invoke-direct {v0}, Lah4;-><init>()V

    .line 600
    .line 601
    .line 602
    goto :goto_f

    .line 603
    :goto_e
    sget-object v1, Lih4;->a:Ljava/lang/String;

    .line 604
    .line 605
    invoke-static {}, Lt72;->g()Lt72;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    .line 610
    .line 611
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    const-string v4, " was cancelled"

    .line 618
    .line 619
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v3

    .line 626
    iget v2, v2, Lt72;->n:I

    .line 627
    .line 628
    const/4 v4, 0x4

    .line 629
    if-gt v2, v4, :cond_d

    .line 630
    .line 631
    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 632
    .line 633
    .line 634
    :cond_d
    throw v0

    .line 635
    :catchall_2
    sget-object v0, Lih4;->a:Ljava/lang/String;

    .line 636
    .line 637
    invoke-static {}, Lt72;->g()Lt72;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    .line 642
    .line 643
    const-string v3, "Could not create Worker "

    .line 644
    .line 645
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v2

    .line 655
    invoke-virtual {v1, v0, v2}, Lt72;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    new-instance v0, Lah4;

    .line 659
    .line 660
    invoke-direct {v0}, Lah4;-><init>()V

    .line 661
    .line 662
    .line 663
    :goto_f
    return-object v0
.end method


# virtual methods
.method public final b(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lhh4;->i:Lqg4;

    .line 2
    .line 3
    sget-object v1, Lcg4;->n:Lcg4;

    .line 4
    .line 5
    iget-object v2, p0, Lhh4;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lqg4;->h(Lcg4;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lhh4;->f:Lpr3;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    invoke-virtual {v0, v3, v4, v2}, Lqg4;->g(JLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lhh4;->a:Log4;

    .line 23
    .line 24
    iget p0, p0, Log4;->v:I

    .line 25
    .line 26
    invoke-virtual {v0, p0, v2}, Lqg4;->f(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v3, -0x1

    .line 30
    .line 31
    invoke-virtual {v0, v3, v4, v2}, Lqg4;->e(JLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1, v2}, Lqg4;->i(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final c()V
    .locals 6

    .line 1
    iget-object v0, p0, Lhh4;->f:Lpr3;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lhh4;->i:Lqg4;

    .line 11
    .line 12
    iget-object v3, p0, Lhh4;->c:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v2, v0, v1, v3}, Lqg4;->g(JLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcg4;->n:Lcg4;

    .line 18
    .line 19
    invoke-virtual {v2, v0, v3}, Lqg4;->h(Lcg4;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v2, Lqg4;->a:Lga3;

    .line 23
    .line 24
    new-instance v1, Lao0;

    .line 25
    .line 26
    const/16 v4, 0x12

    .line 27
    .line 28
    invoke-direct {v1, v3, v4}, Lao0;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x1

    .line 33
    invoke-static {v0, v4, v5, v1}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Number;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lhh4;->a:Log4;

    .line 43
    .line 44
    iget p0, p0, Log4;->v:I

    .line 45
    .line 46
    invoke-virtual {v2, p0, v3}, Lqg4;->f(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance p0, Lao0;

    .line 50
    .line 51
    const/16 v1, 0x13

    .line 52
    .line 53
    invoke-direct {p0, v3, v1}, Lao0;-><init>(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v4, v5, p0}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    const-wide/16 v0, -0x1

    .line 60
    .line 61
    invoke-virtual {v2, v0, v1, v3}, Lqg4;->e(JLjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final d(Lu42;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lhh4;->c:Ljava/lang/String;

    .line 5
    .line 6
    filled-new-array {v0}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Ltv4;->H([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Lhh4;->i:Lqg4;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    invoke-static {v1}, Lo70;->u0(Ljava/util/List;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Lqg4;->b(Ljava/lang/String;)Lcg4;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    sget-object v5, Lcg4;->s:Lcg4;

    .line 33
    .line 34
    if-eq v4, v5, :cond_0

    .line 35
    .line 36
    sget-object v4, Lcg4;->q:Lcg4;

    .line 37
    .line 38
    invoke-virtual {v3, v4, v2}, Lqg4;->h(Lcg4;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v3, p0, Lhh4;->j:Ljs0;

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Ljs0;->a(Ljava/lang/String;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    check-cast p1, Lr42;

    .line 52
    .line 53
    iget-object p1, p1, Lr42;->a:Lzl0;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lhh4;->a:Log4;

    .line 59
    .line 60
    iget p0, p0, Log4;->v:I

    .line 61
    .line 62
    invoke-virtual {v3, p0, v0}, Lqg4;->f(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p0, v3, Lqg4;->a:Lga3;

    .line 66
    .line 67
    new-instance v1, Lq14;

    .line 68
    .line 69
    const/4 v2, 0x7

    .line 70
    invoke-direct {v1, v2, p1, v0}, Lq14;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    const/4 v0, 0x1

    .line 75
    invoke-static {p0, p1, v0, v1}, Lgg4;->N(Lga3;ZZLpe1;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    return-void
.end method

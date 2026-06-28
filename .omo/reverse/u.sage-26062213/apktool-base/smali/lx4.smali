.class public final Llx4;
.super Lmy4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;

.field public final synthetic u:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lty4;Landroid/app/Activity;Ldw4;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Llx4;->r:I

    .line 3
    .line 4
    iput-object p2, p0, Llx4;->t:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p3, p0, Llx4;->u:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p1, p0, Llx4;->s:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p1, p1, Lty4;->o:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Luy4;

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    invoke-direct {p0, p1, p2}, Lmy4;-><init>(Luy4;Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lty4;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Llx4;->r:I

    .line 19
    iput-object p2, p0, Llx4;->t:Ljava/lang/Object;

    iput-object p3, p0, Llx4;->u:Ljava/lang/Object;

    iput-object p1, p0, Llx4;->s:Ljava/lang/Object;

    iget-object p1, p1, Lty4;->o:Ljava/lang/Object;

    check-cast p1, Luy4;

    const/4 p2, 0x1

    .line 20
    invoke-direct {p0, p1, p2}, Lmy4;-><init>(Luy4;Z)V

    return-void
.end method

.method public constructor <init>(Luy4;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Llx4;->r:I

    .line 21
    iput-object p2, p0, Llx4;->t:Ljava/lang/Object;

    iput-object p3, p0, Llx4;->u:Ljava/lang/Object;

    iput-object p1, p0, Llx4;->s:Ljava/lang/Object;

    .line 22
    invoke-direct {p0, p1, v0}, Lmy4;-><init>(Luy4;Z)V

    return-void
.end method

.method public constructor <init>(Luy4;Ljava/lang/String;Ldw4;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Llx4;->r:I

    .line 25
    iput-object p2, p0, Llx4;->t:Ljava/lang/Object;

    iput-object p3, p0, Llx4;->u:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Llx4;->s:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 26
    invoke-direct {p0, p1, p2}, Lmy4;-><init>(Luy4;Z)V

    return-void
.end method

.method public constructor <init>(Luy4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Llx4;->r:I

    .line 23
    iput-object p2, p0, Llx4;->t:Ljava/lang/Object;

    iput-object p3, p0, Llx4;->u:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Llx4;->s:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 24
    invoke-direct {p0, p1, p2}, Lmy4;-><init>(Luy4;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Llx4;->r:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, v1, Llx4;->s:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lty4;

    .line 12
    .line 13
    iget-object v0, v0, Lty4;->o:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Luy4;

    .line 16
    .line 17
    iget-object v0, v0, Luy4;->g:Lhw4;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lhw4;

    .line 24
    .line 25
    iget-object v2, v1, Llx4;->t:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Landroid/app/Activity;

    .line 28
    .line 29
    invoke-static {v2}, Ljx4;->Y(Landroid/app/Activity;)Ljx4;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-object v3, v1, Llx4;->u:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v3, Ldw4;

    .line 36
    .line 37
    iget-wide v4, v1, Lmy4;->o:J

    .line 38
    .line 39
    invoke-interface {v0, v2, v3, v4, v5}, Lhw4;->onActivitySaveInstanceStateByScionActivityInfo(Ljx4;Lmw4;J)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_0
    iget-object v0, v1, Llx4;->t:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Landroid/os/Bundle;

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    new-instance v2, Landroid/os/Bundle;

    .line 50
    .line 51
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v3, "com.google.app_measurement.screen_service"

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    instance-of v4, v0, Landroid/os/Bundle;

    .line 67
    .line 68
    if-eqz v4, :cond_0

    .line 69
    .line 70
    check-cast v0, Landroid/os/Bundle;

    .line 71
    .line 72
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    iget-object v0, v1, Llx4;->s:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v0, Lty4;

    .line 78
    .line 79
    iget-object v0, v0, Lty4;->o:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Luy4;

    .line 82
    .line 83
    iget-object v0, v0, Luy4;->g:Lhw4;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lhw4;

    .line 90
    .line 91
    iget-object v3, v1, Llx4;->u:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v3, Landroid/app/Activity;

    .line 94
    .line 95
    iget-wide v4, v1, Lmy4;->o:J

    .line 96
    .line 97
    invoke-static {v3}, Ljx4;->Y(Landroid/app/Activity;)Ljx4;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-interface {v0, v1, v2, v4, v5}, Lhw4;->onActivityCreatedByScionActivityInfo(Ljx4;Landroid/os/Bundle;J)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_1
    iget-object v0, v1, Llx4;->s:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, Luy4;

    .line 108
    .line 109
    iget-object v0, v0, Luy4;->g:Lhw4;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Lhw4;

    .line 116
    .line 117
    iget-object v2, v1, Llx4;->t:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v2, Ljava/lang/String;

    .line 120
    .line 121
    iget-object v1, v1, Llx4;->u:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v1, Ldw4;

    .line 124
    .line 125
    invoke-interface {v0, v2, v1}, Lhw4;->getMaxUserProperties(Ljava/lang/String;Lmw4;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :pswitch_2
    const/4 v3, 0x0

    .line 130
    const/4 v4, 0x1

    .line 131
    :try_start_0
    iget-object v0, v1, Llx4;->t:Ljava/lang/Object;

    .line 132
    .line 133
    move-object v5, v0

    .line 134
    check-cast v5, Landroid/content/Context;

    .line 135
    .line 136
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    invoke-static {v5}, Ly35;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    if-eqz v7, :cond_1

    .line 155
    .line 156
    invoke-static {v5}, Ly35;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    goto/16 :goto_8

    .line 163
    .line 164
    :cond_1
    :goto_0
    const-string v7, "google_analytics_force_disable_updates"

    .line 165
    .line 166
    const-string v8, "bool"

    .line 167
    .line 168
    invoke-virtual {v6, v7, v8, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    if-nez v0, :cond_2

    .line 173
    .line 174
    :catch_1
    move-object v6, v2

    .line 175
    goto :goto_1

    .line 176
    :cond_2
    :try_start_1
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 181
    .line 182
    .line 183
    move-result-object v0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    move-object v6, v0

    .line 185
    :goto_1
    :try_start_2
    iget-object v0, v1, Llx4;->s:Ljava/lang/Object;

    .line 186
    .line 187
    move-object v7, v0

    .line 188
    check-cast v7, Luy4;

    .line 189
    .line 190
    if-eqz v6, :cond_3

    .line 191
    .line 192
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_4

    .line 197
    .line 198
    :cond_3
    move v0, v4

    .line 199
    goto :goto_2

    .line 200
    :cond_4
    move v0, v3

    .line 201
    :goto_2
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 202
    .line 203
    .line 204
    const-string v8, "com.google.android.gms.measurement.dynamite"

    .line 205
    .line 206
    if-eqz v0, :cond_5

    .line 207
    .line 208
    :try_start_3
    sget-object v0, Lly0;->c:Lky4;

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :catch_2
    move-exception v0

    .line 212
    goto :goto_4

    .line 213
    :cond_5
    sget-object v0, Lly0;->b:Lky4;

    .line 214
    .line 215
    :goto_3
    invoke-static {v5, v0, v8}, Lly0;->c(Landroid/content/Context;Lky4;Ljava/lang/String;)Lly0;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    const-string v9, "com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"

    .line 220
    .line 221
    invoke-virtual {v0, v9}, Lly0;->b(Ljava/lang/String;)Landroid/os/IBinder;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static {v0}, Lfw4;->asInterface(Landroid/os/IBinder;)Lhw4;

    .line 226
    .line 227
    .line 228
    move-result-object v2
    :try_end_3
    .catch Liy0; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 229
    goto :goto_5

    .line 230
    :goto_4
    :try_start_4
    invoke-virtual {v7, v0, v4, v3}, Luy4;->d(Ljava/lang/Exception;ZZ)V

    .line 231
    .line 232
    .line 233
    :goto_5
    iput-object v2, v7, Luy4;->g:Lhw4;

    .line 234
    .line 235
    iget-object v0, v7, Luy4;->g:Lhw4;

    .line 236
    .line 237
    if-nez v0, :cond_6

    .line 238
    .line 239
    const-string v0, "FA"

    .line 240
    .line 241
    const-string v2, "Failed to connect to measurement client."

    .line 242
    .line 243
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    goto/16 :goto_9

    .line 247
    .line 248
    :cond_6
    invoke-static {v5, v8}, Lly0;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    invoke-static {v5, v8, v3}, Lly0;->d(Landroid/content/Context;Ljava/lang/String;Z)I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 257
    .line 258
    .line 259
    move-result v8

    .line 260
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 261
    .line 262
    invoke-virtual {v9, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v6

    .line 266
    if-nez v6, :cond_7

    .line 267
    .line 268
    if-ge v2, v0, :cond_8

    .line 269
    .line 270
    :cond_7
    move v14, v4

    .line 271
    goto :goto_6

    .line 272
    :cond_8
    move v14, v3

    .line 273
    :goto_6
    int-to-long v12, v8

    .line 274
    iput-wide v12, v7, Luy4;->h:J

    .line 275
    .line 276
    new-instance v17, Lix4;

    .line 277
    .line 278
    iget-object v0, v1, Llx4;->u:Ljava/lang/Object;

    .line 279
    .line 280
    move-object v15, v0

    .line 281
    check-cast v15, Landroid/os/Bundle;

    .line 282
    .line 283
    invoke-static {v5}, Ly35;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v16

    .line 287
    const-wide/32 v10, 0x274e8

    .line 288
    .line 289
    .line 290
    move-object/from16 v9, v17

    .line 291
    .line 292
    invoke-direct/range {v9 .. v16}, Lix4;-><init>(JJZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-wide v8, v7, Luy4;->h:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 296
    .line 297
    const-wide/16 v10, 0xa9

    .line 298
    .line 299
    cmp-long v0, v8, v10

    .line 300
    .line 301
    if-ltz v0, :cond_9

    .line 302
    .line 303
    move v0, v4

    .line 304
    goto :goto_7

    .line 305
    :cond_9
    move v0, v3

    .line 306
    :goto_7
    iget-object v2, v7, Luy4;->g:Lhw4;

    .line 307
    .line 308
    if-eqz v0, :cond_a

    .line 309
    .line 310
    :try_start_5
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    move-object v15, v0

    .line 315
    check-cast v15, Lhw4;

    .line 316
    .line 317
    new-instance v0, Lyn2;

    .line 318
    .line 319
    invoke-direct {v0, v5}, Lyn2;-><init>(Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    iget-wide v5, v1, Lmy4;->n:J

    .line 323
    .line 324
    iget-wide v7, v1, Lmy4;->o:J

    .line 325
    .line 326
    move-object/from16 v16, v0

    .line 327
    .line 328
    move-wide/from16 v18, v5

    .line 329
    .line 330
    move-wide/from16 v20, v7

    .line 331
    .line 332
    invoke-interface/range {v15 .. v21}, Lhw4;->initializeWithElapsedTime(Lkn1;Lix4;JJ)V

    .line 333
    .line 334
    .line 335
    goto :goto_9

    .line 336
    :cond_a
    move-object/from16 v9, v17

    .line 337
    .line 338
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    check-cast v0, Lhw4;

    .line 343
    .line 344
    new-instance v2, Lyn2;

    .line 345
    .line 346
    invoke-direct {v2, v5}, Lyn2;-><init>(Ljava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    iget-wide v5, v1, Lmy4;->n:J

    .line 350
    .line 351
    invoke-interface {v0, v2, v9, v5, v6}, Lhw4;->initialize(Lkn1;Lix4;J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 352
    .line 353
    .line 354
    goto :goto_9

    .line 355
    :goto_8
    iget-object v1, v1, Llx4;->s:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast v1, Luy4;

    .line 358
    .line 359
    invoke-virtual {v1, v0, v4, v3}, Luy4;->d(Ljava/lang/Exception;ZZ)V

    .line 360
    .line 361
    .line 362
    :goto_9
    return-void

    .line 363
    :pswitch_3
    iget-object v0, v1, Llx4;->s:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v0, Luy4;

    .line 366
    .line 367
    iget-object v0, v0, Luy4;->g:Lhw4;

    .line 368
    .line 369
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    check-cast v0, Lhw4;

    .line 374
    .line 375
    iget-object v2, v1, Llx4;->u:Ljava/lang/Object;

    .line 376
    .line 377
    iget-object v3, v1, Llx4;->t:Ljava/lang/Object;

    .line 378
    .line 379
    check-cast v3, Ljava/lang/String;

    .line 380
    .line 381
    new-instance v4, Lyn2;

    .line 382
    .line 383
    invoke-direct {v4, v2}, Lyn2;-><init>(Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    const/4 v5, 0x0

    .line 387
    iget-wide v6, v1, Lmy4;->n:J

    .line 388
    .line 389
    const/4 v2, 0x0

    .line 390
    move-object v1, v0

    .line 391
    invoke-interface/range {v1 .. v7}, Lhw4;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lkn1;ZJ)V

    .line 392
    .line 393
    .line 394
    return-void

    .line 395
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 1

    .line 1
    iget v0, p0, Llx4;->r:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Llx4;->u:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Ldw4;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Ldw4;->i(Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

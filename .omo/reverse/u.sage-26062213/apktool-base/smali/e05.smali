.class public abstract Le05;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final A:Ld05;

.field public static final A0:Ld05;

.field public static final B:Ld05;

.field public static final B0:Ld05;

.field public static final C:Ld05;

.field public static final C0:Ld05;

.field public static final D:Ld05;

.field public static final D0:Ld05;

.field public static final E:Ld05;

.field public static final E0:Ld05;

.field public static final F:Ld05;

.field public static final F0:Ld05;

.field public static final G:Ld05;

.field public static final G0:Ld05;

.field public static final H:Ld05;

.field public static final H0:Ld05;

.field public static final I:Ld05;

.field public static final I0:Ld05;

.field public static final J:Ld05;

.field public static final J0:Ld05;

.field public static final K:Ld05;

.field public static final K0:Ld05;

.field public static final L:Ld05;

.field public static final L0:Ld05;

.field public static final M:Ld05;

.field public static final M0:Ld05;

.field public static final N:Ld05;

.field public static final N0:Ld05;

.field public static final O:Ld05;

.field public static final O0:Ld05;

.field public static final P:Ld05;

.field public static final P0:Ld05;

.field public static final Q:Ld05;

.field public static final Q0:Ld05;

.field public static final R:Ld05;

.field public static final R0:Ld05;

.field public static final S:Ld05;

.field public static final S0:Ld05;

.field public static final T:Ld05;

.field public static final T0:Ld05;

.field public static final U:Ld05;

.field public static final U0:Ld05;

.field public static final V:Ld05;

.field public static final V0:Ld05;

.field public static final W:Ld05;

.field public static final W0:Ld05;

.field public static final X:Ld05;

.field public static final X0:Ld05;

.field public static final Y:Ld05;

.field public static final Y0:Ld05;

.field public static final Z:Ld05;

.field public static final Z0:Ld05;

.field public static final a:Ljava/util/List;

.field public static final a0:Ld05;

.field public static final a1:Ld05;

.field public static final b:Ld05;

.field public static final b0:Ld05;

.field public static final b1:Ld05;

.field public static final c:Ld05;

.field public static final c0:Ld05;

.field public static final c1:Ld05;

.field public static final d:Ld05;

.field public static final d0:Ld05;

.field public static final d1:Ld05;

.field public static final e:Ld05;

.field public static final e0:Ld05;

.field public static final e1:Ld05;

.field public static final f:Ld05;

.field public static final f0:Ld05;

.field public static final f1:Ld05;

.field public static final g:Ld05;

.field public static final g0:Ld05;

.field public static final g1:Ld05;

.field public static final h:Ld05;

.field public static final h0:Ld05;

.field public static final h1:Ld05;

.field public static final i:Ld05;

.field public static final i0:Ld05;

.field public static final i1:Ld05;

.field public static final j:Ld05;

.field public static final j0:Ld05;

.field public static final j1:Ld05;

.field public static final k:Ld05;

.field public static final k0:Ld05;

.field public static final l:Ld05;

.field public static final l0:Ld05;

.field public static final m:Ld05;

.field public static final m0:Ld05;

.field public static final n:Ld05;

.field public static final n0:Ld05;

.field public static final o:Ld05;

.field public static final o0:Ld05;

.field public static final p:Ld05;

.field public static final p0:Ld05;

.field public static final q:Ld05;

.field public static final q0:Ld05;

.field public static final r:Ld05;

.field public static final r0:Ld05;

.field public static final s:Ld05;

.field public static final s0:Ld05;

.field public static final t:Ld05;

.field public static final t0:Ld05;

.field public static final u:Ld05;

.field public static final u0:Ld05;

.field public static final v:Ld05;

.field public static final v0:Ld05;

.field public static final w:Ld05;

.field public static final w0:Ld05;

.field public static final x:Ld05;

.field public static final x0:Ld05;

.field public static final y:Ld05;

.field public static final y0:Ld05;

.field public static final z:Ld05;

.field public static final z0:Ld05;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Le05;->a:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    const-wide/16 v0, 0x2710

    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lky4;->D:Lky4;

    .line 27
    .line 28
    const-string v2, "measurement.ad_id_cache_time"

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static {v2, v0, v1, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sput-object v1, Le05;->b:Ld05;

    .line 36
    .line 37
    const-wide/32 v1, 0x36ee80

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget-object v2, Lpr3;->q:Lpr3;

    .line 45
    .line 46
    const-string v4, "measurement.app_uninstalled_additional_ad_id_cache_time"

    .line 47
    .line 48
    invoke-static {v4, v1, v2, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    sput-object v2, Le05;->c:Ld05;

    .line 53
    .line 54
    const-wide/32 v4, 0x5265c00

    .line 55
    .line 56
    .line 57
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    sget-object v4, Lyv4;->o:Lyv4;

    .line 62
    .line 63
    const-string v5, "measurement.monitoring.sample_period_millis"

    .line 64
    .line 65
    invoke-static {v5, v2, v4, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    sput-object v4, Le05;->d:Ld05;

    .line 70
    .line 71
    sget-object v4, Lzv4;->t:Lzv4;

    .line 72
    .line 73
    const-string v5, "measurement.config.cache_time"

    .line 74
    .line 75
    invoke-static {v5, v2, v4, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    sput-object v4, Le05;->e:Ld05;

    .line 80
    .line 81
    sget-object v4, Lyv4;->z:Lyv4;

    .line 82
    .line 83
    const-string v5, "measurement.config.url_scheme"

    .line 84
    .line 85
    const-string v6, "https"

    .line 86
    .line 87
    invoke-static {v5, v6, v4, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    sput-object v4, Le05;->f:Ld05;

    .line 92
    .line 93
    sget-object v4, Lzv4;->E:Lzv4;

    .line 94
    .line 95
    const-string v5, "measurement.config.url_authority"

    .line 96
    .line 97
    const-string v7, "app-measurement.com"

    .line 98
    .line 99
    invoke-static {v5, v7, v4, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    sput-object v4, Le05;->g:Ld05;

    .line 104
    .line 105
    const/16 v4, 0x64

    .line 106
    .line 107
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    sget-object v5, Lyv4;->K:Lyv4;

    .line 112
    .line 113
    const-string v7, "measurement.upload.max_bundles"

    .line 114
    .line 115
    invoke-static {v7, v4, v5, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    sput-object v5, Le05;->h:Ld05;

    .line 120
    .line 121
    const/high16 v5, 0x10000

    .line 122
    .line 123
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    sget-object v7, Lzv4;->P:Lzv4;

    .line 128
    .line 129
    const-string v8, "measurement.upload.max_batch_size"

    .line 130
    .line 131
    invoke-static {v8, v5, v7, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    sput-object v7, Le05;->i:Ld05;

    .line 136
    .line 137
    sget-object v7, Lky4;->r:Lky4;

    .line 138
    .line 139
    const-string v8, "measurement.upload.max_bundle_size"

    .line 140
    .line 141
    invoke-static {v8, v5, v7, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    sput-object v5, Le05;->j:Ld05;

    .line 146
    .line 147
    const/16 v5, 0x3e8

    .line 148
    .line 149
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    sget-object v7, Lky4;->x:Lky4;

    .line 154
    .line 155
    const-string v8, "measurement.upload.max_events_per_bundle"

    .line 156
    .line 157
    invoke-static {v8, v5, v7, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    sput-object v7, Le05;->k:Ld05;

    .line 162
    .line 163
    const v7, 0x186a0

    .line 164
    .line 165
    .line 166
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    sget-object v8, Lny4;->B:Lny4;

    .line 171
    .line 172
    const-string v9, "measurement.upload.max_events_per_day"

    .line 173
    .line 174
    invoke-static {v9, v7, v8, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    sput-object v8, Le05;->l:Ld05;

    .line 179
    .line 180
    sget-object v8, Lpr3;->t:Lpr3;

    .line 181
    .line 182
    const-string v9, "measurement.upload.max_error_events_per_day"

    .line 183
    .line 184
    invoke-static {v9, v5, v8, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    sput-object v8, Le05;->m:Ld05;

    .line 189
    .line 190
    const v8, 0xc350

    .line 191
    .line 192
    .line 193
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    sget-object v9, Lls3;->y:Lls3;

    .line 198
    .line 199
    const-string v10, "measurement.upload.max_public_events_per_day"

    .line 200
    .line 201
    invoke-static {v10, v8, v9, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    sput-object v8, Le05;->n:Ld05;

    .line 206
    .line 207
    const/16 v8, 0x2710

    .line 208
    .line 209
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    sget-object v9, Lpr3;->u:Lpr3;

    .line 214
    .line 215
    const-string v10, "measurement.upload.max_conversions_per_day"

    .line 216
    .line 217
    invoke-static {v10, v8, v9, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    sput-object v8, Le05;->o:Ld05;

    .line 222
    .line 223
    const/16 v8, 0xa

    .line 224
    .line 225
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    sget-object v9, Lls3;->z:Lls3;

    .line 230
    .line 231
    const-string v10, "measurement.upload.max_realtime_events_per_day"

    .line 232
    .line 233
    invoke-static {v10, v8, v9, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 234
    .line 235
    .line 236
    move-result-object v9

    .line 237
    sput-object v9, Le05;->p:Ld05;

    .line 238
    .line 239
    sget-object v9, Lpr3;->v:Lpr3;

    .line 240
    .line 241
    const-string v10, "measurement.store.max_stored_events_per_app"

    .line 242
    .line 243
    invoke-static {v10, v7, v9, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    sput-object v7, Le05;->q:Ld05;

    .line 248
    .line 249
    sget-object v7, Lls3;->A:Lls3;

    .line 250
    .line 251
    const-string v9, "measurement.upload.url"

    .line 252
    .line 253
    const-string v10, "https://app-measurement.com/a"

    .line 254
    .line 255
    invoke-static {v9, v10, v7, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    sput-object v7, Le05;->r:Ld05;

    .line 260
    .line 261
    sget-object v7, Lpr3;->w:Lpr3;

    .line 262
    .line 263
    const-string v9, "measurement.sgtm.google_signal.url"

    .line 264
    .line 265
    const-string v10, "https://app-measurement.com/s/d"

    .line 266
    .line 267
    invoke-static {v9, v10, v7, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    sput-object v7, Le05;->s:Ld05;

    .line 272
    .line 273
    sget-object v7, Lls3;->B:Lls3;

    .line 274
    .line 275
    const-string v9, "measurement.sgtm.service_upload_apps_list"

    .line 276
    .line 277
    const-string v10, ""

    .line 278
    .line 279
    invoke-static {v9, v10, v7, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    sput-object v7, Le05;->t:Ld05;

    .line 284
    .line 285
    sget-object v7, Lpr3;->x:Lpr3;

    .line 286
    .line 287
    const-string v9, "measurement.sgtm.upload.backoff_http_codes"

    .line 288
    .line 289
    const-string v11, "404,429,503,504"

    .line 290
    .line 291
    invoke-static {v9, v11, v7, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    sput-object v7, Le05;->u:Ld05;

    .line 296
    .line 297
    const-wide/32 v11, 0x927c0

    .line 298
    .line 299
    .line 300
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 301
    .line 302
    .line 303
    move-result-object v7

    .line 304
    sget-object v9, Lls3;->C:Lls3;

    .line 305
    .line 306
    const-string v11, "measurement.sgtm.upload.retry_interval"

    .line 307
    .line 308
    invoke-static {v11, v7, v9, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 309
    .line 310
    .line 311
    move-result-object v9

    .line 312
    sput-object v9, Le05;->v:Ld05;

    .line 313
    .line 314
    const-wide/32 v11, 0x1499700

    .line 315
    .line 316
    .line 317
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 318
    .line 319
    .line 320
    move-result-object v9

    .line 321
    sget-object v11, Lzv4;->o:Lzv4;

    .line 322
    .line 323
    const-string v12, "measurement.sgtm.upload.retry_max_wait"

    .line 324
    .line 325
    invoke-static {v12, v9, v11, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 326
    .line 327
    .line 328
    move-result-object v11

    .line 329
    sput-object v11, Le05;->w:Ld05;

    .line 330
    .line 331
    const-wide/32 v11, 0x1b7740

    .line 332
    .line 333
    .line 334
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 335
    .line 336
    .line 337
    move-result-object v11

    .line 338
    sget-object v12, Lyv4;->p:Lyv4;

    .line 339
    .line 340
    const-string v13, "measurement.sgtm.batch.retry_interval"

    .line 341
    .line 342
    invoke-static {v13, v11, v12, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 343
    .line 344
    .line 345
    move-result-object v12

    .line 346
    sput-object v12, Le05;->x:Ld05;

    .line 347
    .line 348
    sget-object v12, Lzv4;->p:Lzv4;

    .line 349
    .line 350
    const-string v13, "measurement.sgtm.batch.retry_max_wait"

    .line 351
    .line 352
    invoke-static {v13, v9, v12, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 353
    .line 354
    .line 355
    move-result-object v9

    .line 356
    sput-object v9, Le05;->y:Ld05;

    .line 357
    .line 358
    sget-object v9, Lyv4;->q:Lyv4;

    .line 359
    .line 360
    const-string v12, "measurement.sgtm.batch.retry_max_count"

    .line 361
    .line 362
    invoke-static {v12, v8, v9, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 363
    .line 364
    .line 365
    move-result-object v8

    .line 366
    sput-object v8, Le05;->z:Ld05;

    .line 367
    .line 368
    const/16 v8, 0x1388

    .line 369
    .line 370
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 371
    .line 372
    .line 373
    move-result-object v8

    .line 374
    sget-object v9, Lzv4;->q:Lzv4;

    .line 375
    .line 376
    const-string v12, "measurement.sgtm.upload.max_queued_batches"

    .line 377
    .line 378
    invoke-static {v12, v8, v9, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 379
    .line 380
    .line 381
    move-result-object v8

    .line 382
    sput-object v8, Le05;->A:Ld05;

    .line 383
    .line 384
    const/4 v8, 0x5

    .line 385
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 386
    .line 387
    .line 388
    move-result-object v8

    .line 389
    sget-object v9, Lyv4;->r:Lyv4;

    .line 390
    .line 391
    const-string v12, "measurement.sgtm.upload.batches_retrieval_limit"

    .line 392
    .line 393
    invoke-static {v12, v8, v9, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 394
    .line 395
    .line 396
    move-result-object v8

    .line 397
    sput-object v8, Le05;->B:Ld05;

    .line 398
    .line 399
    const-wide/16 v8, 0x1388

    .line 400
    .line 401
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 402
    .line 403
    .line 404
    move-result-object v8

    .line 405
    sget-object v9, Lzv4;->r:Lzv4;

    .line 406
    .line 407
    const-string v12, "measurement.sgtm.upload.min_delay_after_startup"

    .line 408
    .line 409
    invoke-static {v12, v8, v9, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 410
    .line 411
    .line 412
    move-result-object v9

    .line 413
    sput-object v9, Le05;->C:Ld05;

    .line 414
    .line 415
    const-wide/16 v12, 0x3e8

    .line 416
    .line 417
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 418
    .line 419
    .line 420
    move-result-object v9

    .line 421
    sget-object v12, Lyv4;->s:Lyv4;

    .line 422
    .line 423
    const-string v13, "measurement.sgtm.upload.min_delay_after_broadcast"

    .line 424
    .line 425
    invoke-static {v13, v9, v12, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 426
    .line 427
    .line 428
    move-result-object v12

    .line 429
    sput-object v12, Le05;->D:Ld05;

    .line 430
    .line 431
    sget-object v12, Lzv4;->s:Lzv4;

    .line 432
    .line 433
    const-string v13, "measurement.sgtm.upload.min_delay_after_background"

    .line 434
    .line 435
    invoke-static {v13, v7, v12, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 436
    .line 437
    .line 438
    move-result-object v7

    .line 439
    sput-object v7, Le05;->E:Ld05;

    .line 440
    .line 441
    const-wide/32 v12, 0xdbba00

    .line 442
    .line 443
    .line 444
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 445
    .line 446
    .line 447
    move-result-object v7

    .line 448
    sget-object v12, Lyv4;->t:Lyv4;

    .line 449
    .line 450
    const-string v13, "measurement.sgtm.batch.long_queuing_threshold"

    .line 451
    .line 452
    invoke-static {v13, v7, v12, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 453
    .line 454
    .line 455
    move-result-object v7

    .line 456
    sput-object v7, Le05;->F:Ld05;

    .line 457
    .line 458
    const-wide/32 v12, 0x2932e00

    .line 459
    .line 460
    .line 461
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 462
    .line 463
    .line 464
    move-result-object v7

    .line 465
    sget-object v12, Lyv4;->u:Lyv4;

    .line 466
    .line 467
    const-string v13, "measurement.upload.backoff_period"

    .line 468
    .line 469
    invoke-static {v13, v7, v12, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 470
    .line 471
    .line 472
    move-result-object v7

    .line 473
    sput-object v7, Le05;->G:Ld05;

    .line 474
    .line 475
    sget-object v7, Lzv4;->u:Lzv4;

    .line 476
    .line 477
    const-string v12, "measurement.upload.window_interval"

    .line 478
    .line 479
    invoke-static {v12, v1, v7, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 480
    .line 481
    .line 482
    sget-object v7, Lyv4;->v:Lyv4;

    .line 483
    .line 484
    const-string v12, "measurement.upload.interval"

    .line 485
    .line 486
    invoke-static {v12, v1, v7, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 487
    .line 488
    .line 489
    move-result-object v7

    .line 490
    sput-object v7, Le05;->H:Ld05;

    .line 491
    .line 492
    sget-object v7, Lzv4;->v:Lzv4;

    .line 493
    .line 494
    const-string v12, "measurement.upload.realtime_upload_interval"

    .line 495
    .line 496
    invoke-static {v12, v0, v7, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    sput-object v0, Le05;->I:Ld05;

    .line 501
    .line 502
    sget-object v0, Lyv4;->w:Lyv4;

    .line 503
    .line 504
    const-string v7, "measurement.upload.debug_upload_interval"

    .line 505
    .line 506
    invoke-static {v7, v9, v0, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    sput-object v0, Le05;->J:Ld05;

    .line 511
    .line 512
    const-wide/16 v12, 0x1f4

    .line 513
    .line 514
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    sget-object v7, Lzv4;->w:Lzv4;

    .line 519
    .line 520
    const-string v12, "measurement.upload.minimum_delay"

    .line 521
    .line 522
    invoke-static {v12, v0, v7, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    sput-object v0, Le05;->K:Ld05;

    .line 527
    .line 528
    const-wide/32 v12, 0xea60

    .line 529
    .line 530
    .line 531
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    sget-object v7, Lyv4;->x:Lyv4;

    .line 536
    .line 537
    const-string v12, "measurement.alarm_manager.minimum_interval"

    .line 538
    .line 539
    invoke-static {v12, v0, v7, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    sput-object v0, Le05;->L:Ld05;

    .line 544
    .line 545
    sget-object v0, Lzv4;->x:Lzv4;

    .line 546
    .line 547
    const-string v7, "measurement.upload.stale_data_deletion_interval"

    .line 548
    .line 549
    invoke-static {v7, v2, v0, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    sput-object v0, Le05;->M:Ld05;

    .line 554
    .line 555
    const-wide/32 v12, 0x240c8400

    .line 556
    .line 557
    .line 558
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    sget-object v2, Lyv4;->y:Lyv4;

    .line 563
    .line 564
    const-string v7, "measurement.upload.refresh_blacklisted_config_interval"

    .line 565
    .line 566
    invoke-static {v7, v0, v2, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    sput-object v2, Le05;->N:Ld05;

    .line 571
    .line 572
    const-wide/16 v12, 0x3a98

    .line 573
    .line 574
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    sget-object v7, Lzv4;->y:Lzv4;

    .line 579
    .line 580
    const-string v12, "measurement.upload.initial_upload_delay_time"

    .line 581
    .line 582
    invoke-static {v12, v2, v7, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 583
    .line 584
    .line 585
    move-result-object v2

    .line 586
    sput-object v2, Le05;->O:Ld05;

    .line 587
    .line 588
    sget-object v2, Lzv4;->z:Lzv4;

    .line 589
    .line 590
    const-string v7, "measurement.upload.retry_time"

    .line 591
    .line 592
    invoke-static {v7, v11, v2, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 593
    .line 594
    .line 595
    move-result-object v2

    .line 596
    sput-object v2, Le05;->P:Ld05;

    .line 597
    .line 598
    const/4 v2, 0x6

    .line 599
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    sget-object v7, Lyv4;->A:Lyv4;

    .line 604
    .line 605
    const-string v11, "measurement.upload.retry_count"

    .line 606
    .line 607
    invoke-static {v11, v2, v7, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    sput-object v2, Le05;->Q:Ld05;

    .line 612
    .line 613
    const-wide/32 v11, 0x1ee62800

    .line 614
    .line 615
    .line 616
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 617
    .line 618
    .line 619
    move-result-object v2

    .line 620
    sget-object v7, Lzv4;->A:Lzv4;

    .line 621
    .line 622
    const-string v11, "measurement.upload.max_queue_time"

    .line 623
    .line 624
    invoke-static {v11, v2, v7, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 625
    .line 626
    .line 627
    move-result-object v2

    .line 628
    sput-object v2, Le05;->R:Ld05;

    .line 629
    .line 630
    const-wide/32 v11, 0x493e0

    .line 631
    .line 632
    .line 633
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 634
    .line 635
    .line 636
    move-result-object v2

    .line 637
    sget-object v7, Lyv4;->B:Lyv4;

    .line 638
    .line 639
    const-string v11, "measurement.upload.google_signal_max_queue_time"

    .line 640
    .line 641
    invoke-static {v11, v2, v7, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    sput-object v2, Le05;->S:Ld05;

    .line 646
    .line 647
    const/4 v2, 0x4

    .line 648
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 649
    .line 650
    .line 651
    move-result-object v2

    .line 652
    sget-object v7, Lzv4;->B:Lzv4;

    .line 653
    .line 654
    const-string v11, "measurement.lifetimevalue.max_currency_tracked"

    .line 655
    .line 656
    invoke-static {v11, v2, v7, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 657
    .line 658
    .line 659
    move-result-object v2

    .line 660
    sput-object v2, Le05;->T:Ld05;

    .line 661
    .line 662
    const/16 v2, 0xc8

    .line 663
    .line 664
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 665
    .line 666
    .line 667
    move-result-object v2

    .line 668
    sget-object v7, Lyv4;->C:Lyv4;

    .line 669
    .line 670
    const-string v11, "measurement.audience.filter_result_max_count"

    .line 671
    .line 672
    invoke-static {v11, v2, v7, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 673
    .line 674
    .line 675
    move-result-object v2

    .line 676
    sput-object v2, Le05;->U:Ld05;

    .line 677
    .line 678
    const-string v2, "measurement.upload.max_public_user_properties"

    .line 679
    .line 680
    const/4 v7, 0x0

    .line 681
    invoke-static {v2, v4, v7, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 682
    .line 683
    .line 684
    move-result-object v2

    .line 685
    sput-object v2, Le05;->V:Ld05;

    .line 686
    .line 687
    const/16 v2, 0x7d0

    .line 688
    .line 689
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 690
    .line 691
    .line 692
    move-result-object v2

    .line 693
    const-string v11, "measurement.upload.max_event_name_cardinality"

    .line 694
    .line 695
    invoke-static {v11, v2, v7, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 696
    .line 697
    .line 698
    move-result-object v2

    .line 699
    sput-object v2, Le05;->W:Ld05;

    .line 700
    .line 701
    const-string v2, "measurement.upload.max_public_event_params"

    .line 702
    .line 703
    invoke-static {v2, v4, v7, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 704
    .line 705
    .line 706
    move-result-object v2

    .line 707
    sput-object v2, Le05;->X:Ld05;

    .line 708
    .line 709
    sget-object v2, Lzv4;->C:Lzv4;

    .line 710
    .line 711
    const-string v11, "measurement.service_client.idle_disconnect_millis"

    .line 712
    .line 713
    invoke-static {v11, v8, v2, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 714
    .line 715
    .line 716
    move-result-object v2

    .line 717
    sput-object v2, Le05;->Y:Ld05;

    .line 718
    .line 719
    sget-object v2, Lyv4;->D:Lyv4;

    .line 720
    .line 721
    const-string v8, "measurement.service_client.reconnect_millis"

    .line 722
    .line 723
    invoke-static {v8, v9, v2, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 724
    .line 725
    .line 726
    move-result-object v2

    .line 727
    sput-object v2, Le05;->Z:Ld05;

    .line 728
    .line 729
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 730
    .line 731
    sget-object v8, Lzv4;->D:Lzv4;

    .line 732
    .line 733
    const-string v9, "measurement.test.test_boolean_flag"

    .line 734
    .line 735
    invoke-static {v9, v2, v8, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 736
    .line 737
    .line 738
    move-result-object v8

    .line 739
    sput-object v8, Le05;->a0:Ld05;

    .line 740
    .line 741
    sget-object v8, Lyv4;->E:Lyv4;

    .line 742
    .line 743
    const-string v9, "measurement.test.test_string_flag"

    .line 744
    .line 745
    const-string v11, "---"

    .line 746
    .line 747
    invoke-static {v9, v11, v8, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 748
    .line 749
    .line 750
    move-result-object v8

    .line 751
    sput-object v8, Le05;->b0:Ld05;

    .line 752
    .line 753
    const-wide/16 v8, -0x1

    .line 754
    .line 755
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 756
    .line 757
    .line 758
    move-result-object v8

    .line 759
    sget-object v9, Lyv4;->F:Lyv4;

    .line 760
    .line 761
    const-string v11, "measurement.test.test_long_flag"

    .line 762
    .line 763
    invoke-static {v11, v8, v9, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 764
    .line 765
    .line 766
    move-result-object v9

    .line 767
    sput-object v9, Le05;->c0:Ld05;

    .line 768
    .line 769
    sget-object v9, Lzv4;->F:Lzv4;

    .line 770
    .line 771
    const-string v11, "measurement.test.test_cached_long_flag"

    .line 772
    .line 773
    const/4 v12, 0x1

    .line 774
    invoke-static {v11, v8, v9, v12}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 775
    .line 776
    .line 777
    const/4 v8, -0x2

    .line 778
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 779
    .line 780
    .line 781
    move-result-object v8

    .line 782
    sget-object v9, Lyv4;->G:Lyv4;

    .line 783
    .line 784
    const-string v11, "measurement.test.test_int_flag"

    .line 785
    .line 786
    invoke-static {v11, v8, v9, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 787
    .line 788
    .line 789
    move-result-object v8

    .line 790
    sput-object v8, Le05;->d0:Ld05;

    .line 791
    .line 792
    const-wide/high16 v8, -0x3ff8000000000000L    # -3.0

    .line 793
    .line 794
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 795
    .line 796
    .line 797
    move-result-object v8

    .line 798
    sget-object v9, Lzv4;->G:Lzv4;

    .line 799
    .line 800
    const-string v11, "measurement.test.test_double_flag"

    .line 801
    .line 802
    invoke-static {v11, v8, v9, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 803
    .line 804
    .line 805
    move-result-object v8

    .line 806
    sput-object v8, Le05;->e0:Ld05;

    .line 807
    .line 808
    const/16 v8, 0x32

    .line 809
    .line 810
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 811
    .line 812
    .line 813
    move-result-object v8

    .line 814
    sget-object v9, Lyv4;->H:Lyv4;

    .line 815
    .line 816
    const-string v11, "measurement.experiment.max_ids"

    .line 817
    .line 818
    invoke-static {v11, v8, v9, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 819
    .line 820
    .line 821
    const/16 v8, 0x1b

    .line 822
    .line 823
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 824
    .line 825
    .line 826
    move-result-object v8

    .line 827
    sget-object v9, Lzv4;->H:Lzv4;

    .line 828
    .line 829
    const-string v11, "measurement.upload.max_item_scoped_custom_parameters"

    .line 830
    .line 831
    invoke-static {v11, v8, v9, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 832
    .line 833
    .line 834
    move-result-object v8

    .line 835
    sput-object v8, Le05;->f0:Ld05;

    .line 836
    .line 837
    const/16 v8, 0x1f4

    .line 838
    .line 839
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 840
    .line 841
    .line 842
    move-result-object v8

    .line 843
    sget-object v9, Lyv4;->I:Lyv4;

    .line 844
    .line 845
    const-string v11, "measurement.upload.max_event_parameter_value_length"

    .line 846
    .line 847
    invoke-static {v11, v8, v9, v12}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 848
    .line 849
    .line 850
    move-result-object v8

    .line 851
    sput-object v8, Le05;->g0:Ld05;

    .line 852
    .line 853
    sget-object v8, Lzv4;->I:Lzv4;

    .line 854
    .line 855
    const-string v9, "measurement.max_bundles_per_iteration"

    .line 856
    .line 857
    invoke-static {v9, v4, v8, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 858
    .line 859
    .line 860
    move-result-object v4

    .line 861
    sput-object v4, Le05;->h0:Ld05;

    .line 862
    .line 863
    sget-object v4, Lyv4;->J:Lyv4;

    .line 864
    .line 865
    const-string v8, "measurement.sdk.attribution.cache.ttl"

    .line 866
    .line 867
    invoke-static {v8, v0, v4, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 868
    .line 869
    .line 870
    move-result-object v0

    .line 871
    sput-object v0, Le05;->i0:Ld05;

    .line 872
    .line 873
    const-wide/32 v8, 0x6ddd00

    .line 874
    .line 875
    .line 876
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    sget-object v4, Lzv4;->J:Lzv4;

    .line 881
    .line 882
    const-string v8, "measurement.redaction.app_instance_id.ttl"

    .line 883
    .line 884
    invoke-static {v8, v0, v4, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 885
    .line 886
    .line 887
    move-result-object v0

    .line 888
    sput-object v0, Le05;->j0:Ld05;

    .line 889
    .line 890
    const/4 v0, 0x7

    .line 891
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 892
    .line 893
    .line 894
    move-result-object v0

    .line 895
    sget-object v4, Lzv4;->K:Lzv4;

    .line 896
    .line 897
    const-string v8, "measurement.rb.attribution.client.min_ad_services_version"

    .line 898
    .line 899
    invoke-static {v8, v0, v4, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 900
    .line 901
    .line 902
    move-result-object v0

    .line 903
    sput-object v0, Le05;->k0:Ld05;

    .line 904
    .line 905
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    sget-object v4, Lyv4;->L:Lyv4;

    .line 910
    .line 911
    const-string v8, "measurement.dma_consent.max_daily_dcu_realtime_events"

    .line 912
    .line 913
    invoke-static {v8, v0, v4, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 914
    .line 915
    .line 916
    move-result-object v0

    .line 917
    sput-object v0, Le05;->l0:Ld05;

    .line 918
    .line 919
    sget-object v0, Lzv4;->L:Lzv4;

    .line 920
    .line 921
    const-string v4, "measurement.rb.attribution.uri_scheme"

    .line 922
    .line 923
    invoke-static {v4, v6, v0, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 924
    .line 925
    .line 926
    move-result-object v0

    .line 927
    sput-object v0, Le05;->m0:Ld05;

    .line 928
    .line 929
    sget-object v0, Lyv4;->M:Lyv4;

    .line 930
    .line 931
    const-string v4, "measurement.rb.attribution.uri_authority"

    .line 932
    .line 933
    const-string v6, "google-analytics.com"

    .line 934
    .line 935
    invoke-static {v4, v6, v0, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 936
    .line 937
    .line 938
    move-result-object v0

    .line 939
    sput-object v0, Le05;->n0:Ld05;

    .line 940
    .line 941
    sget-object v0, Lzv4;->M:Lzv4;

    .line 942
    .line 943
    const-string v4, "measurement.rb.attribution.uri_path"

    .line 944
    .line 945
    const-string v6, "privacy-sandbox/register-app-conversion"

    .line 946
    .line 947
    invoke-static {v4, v6, v0, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    sput-object v0, Le05;->o0:Ld05;

    .line 952
    .line 953
    sget-object v0, Lyv4;->N:Lyv4;

    .line 954
    .line 955
    const-string v4, "measurement.session.engagement_interval"

    .line 956
    .line 957
    invoke-static {v4, v1, v0, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 958
    .line 959
    .line 960
    move-result-object v0

    .line 961
    sput-object v0, Le05;->p0:Ld05;

    .line 962
    .line 963
    sget-object v0, Lzv4;->N:Lzv4;

    .line 964
    .line 965
    const-string v4, "measurement.rb.attribution.app_allowlist"

    .line 966
    .line 967
    invoke-static {v4, v10, v0, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 968
    .line 969
    .line 970
    move-result-object v0

    .line 971
    sput-object v0, Le05;->q0:Ld05;

    .line 972
    .line 973
    sget-object v0, Lyv4;->O:Lyv4;

    .line 974
    .line 975
    const-string v4, "measurement.rb.attribution.user_properties"

    .line 976
    .line 977
    const-string v6, "_npa,npa|_fot,fot"

    .line 978
    .line 979
    invoke-static {v4, v6, v0, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 980
    .line 981
    .line 982
    move-result-object v0

    .line 983
    sput-object v0, Le05;->r0:Ld05;

    .line 984
    .line 985
    sget-object v0, Lzv4;->O:Lzv4;

    .line 986
    .line 987
    const-string v4, "measurement.rb.attribution.event_params"

    .line 988
    .line 989
    const-string v6, "value|currency"

    .line 990
    .line 991
    invoke-static {v4, v6, v0, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 992
    .line 993
    .line 994
    move-result-object v0

    .line 995
    sput-object v0, Le05;->s0:Ld05;

    .line 996
    .line 997
    sget-object v0, Lyv4;->P:Lyv4;

    .line 998
    .line 999
    const-string v4, "measurement.rb.attribution.query_parameters_to_remove"

    .line 1000
    .line 1001
    invoke-static {v4, v10, v0, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v0

    .line 1005
    sput-object v0, Le05;->t0:Ld05;

    .line 1006
    .line 1007
    const-wide/32 v8, 0x337f9800

    .line 1008
    .line 1009
    .line 1010
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v0

    .line 1014
    sget-object v4, Lyv4;->Q:Lyv4;

    .line 1015
    .line 1016
    const-string v6, "measurement.rb.attribution.max_queue_time"

    .line 1017
    .line 1018
    invoke-static {v6, v0, v4, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v0

    .line 1022
    sput-object v0, Le05;->u0:Ld05;

    .line 1023
    .line 1024
    const/16 v0, 0x10

    .line 1025
    .line 1026
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v0

    .line 1030
    sget-object v4, Lzv4;->Q:Lzv4;

    .line 1031
    .line 1032
    const-string v6, "measurement.rb.attribution.max_retry_delay_seconds"

    .line 1033
    .line 1034
    invoke-static {v6, v0, v4, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v0

    .line 1038
    sput-object v0, Le05;->v0:Ld05;

    .line 1039
    .line 1040
    const/16 v0, 0x5a

    .line 1041
    .line 1042
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v0

    .line 1046
    sget-object v4, Lyv4;->R:Lyv4;

    .line 1047
    .line 1048
    const-string v6, "measurement.rb.attribution.client.min_time_after_boot_seconds"

    .line 1049
    .line 1050
    invoke-static {v6, v0, v4, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v0

    .line 1054
    sput-object v0, Le05;->w0:Ld05;

    .line 1055
    .line 1056
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v0

    .line 1060
    sget-object v4, Lzv4;->R:Lzv4;

    .line 1061
    .line 1062
    const-string v6, "measurement.rb.attribution.max_trigger_uris_queried_at_once"

    .line 1063
    .line 1064
    invoke-static {v6, v0, v4, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1065
    .line 1066
    .line 1067
    sget-object v0, Lky4;->o:Lky4;

    .line 1068
    .line 1069
    const-string v4, "measurement.rb.max_trigger_registrations_per_day"

    .line 1070
    .line 1071
    invoke-static {v4, v5, v0, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v0

    .line 1075
    sput-object v0, Le05;->x0:Ld05;

    .line 1076
    .line 1077
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1078
    .line 1079
    sget-object v4, Lny4;->o:Lny4;

    .line 1080
    .line 1081
    const-string v5, "measurement.config.bundle_for_all_apps_on_backgrounded"

    .line 1082
    .line 1083
    invoke-static {v5, v0, v4, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v4

    .line 1087
    sput-object v4, Le05;->y0:Ld05;

    .line 1088
    .line 1089
    sget-object v4, Lky4;->p:Lky4;

    .line 1090
    .line 1091
    const-string v5, "measurement.config.notify_trigger_uris_on_backgrounded"

    .line 1092
    .line 1093
    invoke-static {v5, v0, v4, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v4

    .line 1097
    sput-object v4, Le05;->z0:Ld05;

    .line 1098
    .line 1099
    const/16 v4, 0xbb8

    .line 1100
    .line 1101
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v4

    .line 1105
    sget-object v5, Lny4;->p:Lny4;

    .line 1106
    .line 1107
    const-string v6, "measurement.rb.attribution.notify_app_delay_millis"

    .line 1108
    .line 1109
    invoke-static {v6, v4, v5, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v4

    .line 1113
    sput-object v4, Le05;->A0:Ld05;

    .line 1114
    .line 1115
    sget-object v4, Lky4;->q:Lky4;

    .line 1116
    .line 1117
    const-string v5, "measurement.config.default_flag_values"

    .line 1118
    .line 1119
    invoke-static {v5, v0, v4, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1120
    .line 1121
    .line 1122
    sget-object v4, Lny4;->q:Lny4;

    .line 1123
    .line 1124
    const-string v5, "measurement.upload.diagnostic_upload_interval"

    .line 1125
    .line 1126
    invoke-static {v5, v1, v4, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v1

    .line 1130
    sput-object v1, Le05;->B0:Ld05;

    .line 1131
    .line 1132
    const-string v1, "measurement.quality.checksum"

    .line 1133
    .line 1134
    invoke-static {v1, v2, v7, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v1

    .line 1138
    sput-object v1, Le05;->C0:Ld05;

    .line 1139
    .line 1140
    sget-object v1, Lny4;->r:Lny4;

    .line 1141
    .line 1142
    const-string v4, "measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters"

    .line 1143
    .line 1144
    invoke-static {v4, v2, v1, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v1

    .line 1148
    sput-object v1, Le05;->D0:Ld05;

    .line 1149
    .line 1150
    sget-object v1, Lky4;->s:Lky4;

    .line 1151
    .line 1152
    const-string v4, "measurement.audience.refresh_event_count_filters_timestamp"

    .line 1153
    .line 1154
    invoke-static {v4, v2, v1, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v1

    .line 1158
    sput-object v1, Le05;->E0:Ld05;

    .line 1159
    .line 1160
    sget-object v1, Lny4;->s:Lny4;

    .line 1161
    .line 1162
    const-string v4, "measurement.audience.use_bundle_timestamp_for_event_count_filters"

    .line 1163
    .line 1164
    invoke-static {v4, v2, v1, v12}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v1

    .line 1168
    sput-object v1, Le05;->F0:Ld05;

    .line 1169
    .line 1170
    sget-object v1, Lky4;->t:Lky4;

    .line 1171
    .line 1172
    const-string v4, "measurement.sdk.collection.last_deep_link_referrer_campaign2"

    .line 1173
    .line 1174
    invoke-static {v4, v2, v1, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v1

    .line 1178
    sput-object v1, Le05;->G0:Ld05;

    .line 1179
    .line 1180
    sget-object v1, Lny4;->t:Lny4;

    .line 1181
    .line 1182
    const-string v4, "measurement.integration.disable_firebase_instance_id"

    .line 1183
    .line 1184
    invoke-static {v4, v2, v1, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v1

    .line 1188
    sput-object v1, Le05;->H0:Ld05;

    .line 1189
    .line 1190
    sget-object v1, Lky4;->u:Lky4;

    .line 1191
    .line 1192
    const-string v4, "measurement.collection.service.update_with_analytics_fix"

    .line 1193
    .line 1194
    invoke-static {v4, v2, v1, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v1

    .line 1198
    sput-object v1, Le05;->I0:Ld05;

    .line 1199
    .line 1200
    const v1, 0x31b50

    .line 1201
    .line 1202
    .line 1203
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v1

    .line 1207
    sget-object v4, Lky4;->v:Lky4;

    .line 1208
    .line 1209
    const-string v5, "measurement.service.storage_consent_support_version"

    .line 1210
    .line 1211
    invoke-static {v5, v1, v4, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v1

    .line 1215
    sput-object v1, Le05;->J0:Ld05;

    .line 1216
    .line 1217
    sget-object v1, Lny4;->u:Lny4;

    .line 1218
    .line 1219
    const-string v4, "measurement.service.store_null_safelist"

    .line 1220
    .line 1221
    invoke-static {v4, v0, v1, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v1

    .line 1225
    sput-object v1, Le05;->K0:Ld05;

    .line 1226
    .line 1227
    sget-object v1, Lky4;->w:Lky4;

    .line 1228
    .line 1229
    const-string v4, "measurement.service.store_safelist"

    .line 1230
    .line 1231
    invoke-static {v4, v0, v1, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v1

    .line 1235
    sput-object v1, Le05;->L0:Ld05;

    .line 1236
    .line 1237
    sget-object v1, Lny4;->v:Lny4;

    .line 1238
    .line 1239
    const-string v4, "measurement.session_stitching_token_enabled"

    .line 1240
    .line 1241
    invoke-static {v4, v2, v1, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v1

    .line 1245
    sput-object v1, Le05;->M0:Ld05;

    .line 1246
    .line 1247
    sget-object v1, Lny4;->w:Lny4;

    .line 1248
    .line 1249
    const-string v4, "measurement.sgtm.client.upload_on_backgrounded.dev"

    .line 1250
    .line 1251
    invoke-static {v4, v2, v1, v12}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v1

    .line 1255
    sput-object v1, Le05;->N0:Ld05;

    .line 1256
    .line 1257
    sget-object v1, Lky4;->y:Lky4;

    .line 1258
    .line 1259
    const-string v4, "measurement.rb.attribution.service"

    .line 1260
    .line 1261
    invoke-static {v4, v0, v1, v12}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v1

    .line 1265
    sput-object v1, Le05;->O0:Ld05;

    .line 1266
    .line 1267
    sget-object v1, Lny4;->x:Lny4;

    .line 1268
    .line 1269
    const-string v4, "measurement.rb.attribution.client2"

    .line 1270
    .line 1271
    invoke-static {v4, v0, v1, v12}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v1

    .line 1275
    sput-object v1, Le05;->P0:Ld05;

    .line 1276
    .line 1277
    sget-object v1, Lky4;->z:Lky4;

    .line 1278
    .line 1279
    const-string v4, "measurement.rb.attribution.uuid_generation"

    .line 1280
    .line 1281
    invoke-static {v4, v0, v1, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v1

    .line 1285
    sput-object v1, Le05;->Q0:Ld05;

    .line 1286
    .line 1287
    sget-object v1, Lny4;->y:Lny4;

    .line 1288
    .line 1289
    const-string v4, "measurement.rb.attribution.enable_trigger_redaction"

    .line 1290
    .line 1291
    invoke-static {v4, v0, v1, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v1

    .line 1295
    sput-object v1, Le05;->R0:Ld05;

    .line 1296
    .line 1297
    sget-object v1, Lny4;->E:Lny4;

    .line 1298
    .line 1299
    const-string v4, "measurement.client.sessions.enable_fix_background_engagement"

    .line 1300
    .line 1301
    invoke-static {v4, v0, v1, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v1

    .line 1305
    sput-object v1, Le05;->S0:Ld05;

    .line 1306
    .line 1307
    sget-object v1, Lky4;->A:Lky4;

    .line 1308
    .line 1309
    const-string v4, "measurement.rb.attribution.service.enable_max_trigger_uris_queried_at_once"

    .line 1310
    .line 1311
    invoke-static {v4, v0, v1, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1312
    .line 1313
    .line 1314
    sget-object v1, Lny4;->z:Lny4;

    .line 1315
    .line 1316
    const-string v4, "measurement.remove_conflicting_first_party_apis.dev"

    .line 1317
    .line 1318
    invoke-static {v4, v2, v1, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1319
    .line 1320
    .line 1321
    sget-object v1, Lky4;->B:Lky4;

    .line 1322
    .line 1323
    const-string v4, "measurement.rb.attribution.service.trigger_uris_high_priority"

    .line 1324
    .line 1325
    invoke-static {v4, v0, v1, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v1

    .line 1329
    sput-object v1, Le05;->T0:Ld05;

    .line 1330
    .line 1331
    sget-object v1, Lny4;->A:Lny4;

    .line 1332
    .line 1333
    const-string v4, "measurement.experiment.enable_phenotype_experiment_reporting"

    .line 1334
    .line 1335
    invoke-static {v4, v0, v1, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v1

    .line 1339
    sput-object v1, Le05;->U0:Ld05;

    .line 1340
    .line 1341
    sget-object v1, Lky4;->C:Lky4;

    .line 1342
    .line 1343
    const-string v4, "measurement.experiment.enable_passthrough_experiment_reporting"

    .line 1344
    .line 1345
    invoke-static {v4, v0, v1, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v1

    .line 1349
    sput-object v1, Le05;->V0:Ld05;

    .line 1350
    .line 1351
    sget-object v1, Lls3;->s:Lls3;

    .line 1352
    .line 1353
    const-string v4, "measurement.set_default_event_parameters.fix_service_request_ordering"

    .line 1354
    .line 1355
    invoke-static {v4, v2, v1, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v1

    .line 1359
    sput-object v1, Le05;->W0:Ld05;

    .line 1360
    .line 1361
    sget-object v1, Lpr3;->o:Lpr3;

    .line 1362
    .line 1363
    const-string v4, "measurement.set_default_event_parameters.fix_app_update_logging"

    .line 1364
    .line 1365
    invoke-static {v4, v0, v1, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v1

    .line 1369
    sput-object v1, Le05;->X0:Ld05;

    .line 1370
    .line 1371
    sget-object v1, Lls3;->u:Lls3;

    .line 1372
    .line 1373
    const-string v4, "measurement.service.fix_stop_bundling_bug"

    .line 1374
    .line 1375
    invoke-static {v4, v0, v1, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v0

    .line 1379
    sput-object v0, Le05;->Y0:Ld05;

    .line 1380
    .line 1381
    sget-object v0, Lky4;->E:Lky4;

    .line 1382
    .line 1383
    const-string v1, "measurement.gbraid_campaign.stop_lgclid"

    .line 1384
    .line 1385
    invoke-static {v1, v2, v0, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v0

    .line 1389
    sput-object v0, Le05;->Z0:Ld05;

    .line 1390
    .line 1391
    sget-object v0, Lny4;->C:Lny4;

    .line 1392
    .line 1393
    const-string v1, "measurement.gbraid_campaign.deep_link_url"

    .line 1394
    .line 1395
    invoke-static {v1, v2, v0, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v0

    .line 1399
    sput-object v0, Le05;->a1:Ld05;

    .line 1400
    .line 1401
    sget-object v0, Lls3;->v:Lls3;

    .line 1402
    .line 1403
    const-string v1, "gclid,gbraid,gad_campaignid"

    .line 1404
    .line 1405
    const-string v4, "measurement.gbraid_compaign.compaign_params_triggering_info_update"

    .line 1406
    .line 1407
    invoke-static {v4, v1, v0, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v0

    .line 1411
    sput-object v0, Le05;->b1:Ld05;

    .line 1412
    .line 1413
    sget-object v0, Lpr3;->p:Lpr3;

    .line 1414
    .line 1415
    const-string v1, "measurement.edpb.service"

    .line 1416
    .line 1417
    invoke-static {v1, v2, v0, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v0

    .line 1421
    sput-object v0, Le05;->c1:Ld05;

    .line 1422
    .line 1423
    sget-object v0, Lpr3;->r:Lpr3;

    .line 1424
    .line 1425
    const-string v1, "measurement.edpb.events_cached_in_no_data_mode"

    .line 1426
    .line 1427
    const-string v4, "_f,_v,_cmp"

    .line 1428
    .line 1429
    invoke-static {v1, v4, v0, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v0

    .line 1433
    sput-object v0, Le05;->d1:Ld05;

    .line 1434
    .line 1435
    sget-object v0, Lky4;->F:Lky4;

    .line 1436
    .line 1437
    const-string v1, "measurement.robust_time_source_2"

    .line 1438
    .line 1439
    invoke-static {v1, v2, v0, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v0

    .line 1443
    sput-object v0, Le05;->e1:Ld05;

    .line 1444
    .line 1445
    sget-object v0, Lny4;->D:Lny4;

    .line 1446
    .line 1447
    const-string v1, "measurement.manual_iap_logging.client_service"

    .line 1448
    .line 1449
    invoke-static {v1, v2, v0, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v0

    .line 1453
    sput-object v0, Le05;->f1:Ld05;

    .line 1454
    .line 1455
    sget-object v0, Lls3;->w:Lls3;

    .line 1456
    .line 1457
    const-string v1, "measurement.dsid_consent_only.app_allowlist1"

    .line 1458
    .line 1459
    invoke-static {v1, v10, v0, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v0

    .line 1463
    sput-object v0, Le05;->g1:Ld05;

    .line 1464
    .line 1465
    sget-object v0, Lpr3;->s:Lpr3;

    .line 1466
    .line 1467
    const-string v1, "measurement.dsid_consent_only.app_allowlist2"

    .line 1468
    .line 1469
    invoke-static {v1, v10, v0, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v0

    .line 1473
    sput-object v0, Le05;->h1:Ld05;

    .line 1474
    .line 1475
    sget-object v0, Lls3;->x:Lls3;

    .line 1476
    .line 1477
    const-string v1, "measurement.dsid_consent_only.app_allowlist3"

    .line 1478
    .line 1479
    invoke-static {v1, v10, v0, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v0

    .line 1483
    sput-object v0, Le05;->i1:Ld05;

    .line 1484
    .line 1485
    sget-object v0, Lls3;->t:Lls3;

    .line 1486
    .line 1487
    const-string v1, "measurement.diagnostics.enabled"

    .line 1488
    .line 1489
    invoke-static {v1, v2, v0, v3}, Le05;->a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v0

    .line 1493
    sput-object v0, Le05;->j1:Ld05;

    .line 1494
    .line 1495
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Lmu4;Z)Ld05;
    .locals 1

    .line 1
    new-instance v0, Ld05;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Ld05;-><init>(Ljava/lang/String;Ljava/lang/Object;Lmu4;)V

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    sget-object p0, Le05;->a:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

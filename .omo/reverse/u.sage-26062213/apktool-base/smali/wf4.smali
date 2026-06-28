.class public final Lwf4;
.super Lad2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lwf4;->c:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/16 p1, 0xe

    .line 7
    .line 8
    const/16 v0, 0xf

    .line 9
    .line 10
    invoke-direct {p0, p1, v0}, Lad2;-><init>(II)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lqv3;

    .line 14
    .line 15
    const/16 v0, 0xe

    .line 16
    .line 17
    invoke-direct {p1, v0}, Lqv3;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lwf4;->d:Ljava/lang/Object;

    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    const/16 p1, 0x13

    .line 24
    .line 25
    const/16 v0, 0x14

    .line 26
    .line 27
    invoke-direct {p0, p1, v0}, Lad2;-><init>(II)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lbx3;

    .line 31
    .line 32
    const/16 v0, 0xe

    .line 33
    .line 34
    invoke-direct {p1, v0}, Lbx3;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lwf4;->d:Ljava/lang/Object;

    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final b(Ljb3;)V
    .locals 10

    .line 1
    iget p0, p0, Lwf4;->c:I

    .line 2
    .line 3
    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)"

    .line 4
    .line 5
    const-string v1, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)"

    .line 6
    .line 7
    const-string v2, "ALTER TABLE `_new_WorkSpec` RENAME TO `WorkSpec`"

    .line 8
    .line 9
    const-string v3, "DROP TABLE `WorkSpec`"

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    packed-switch p0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    const-string p0, "CREATE TABLE IF NOT EXISTS `_new_WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT NOT NULL, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL DEFAULT -1, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807, `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0, `stop_reason` INTEGER NOT NULL DEFAULT -256, `required_network_type` INTEGER NOT NULL, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))"

    .line 18
    .line 19
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p0, "INSERT INTO `_new_WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) SELECT `id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers` FROM `WorkSpec`"

    .line 23
    .line 24
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v3}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v2}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v1}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    instance-of p0, p1, Lju3;

    .line 40
    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    check-cast p1, Lju3;

    .line 44
    .line 45
    iget-object p0, p1, Lju3;->n:Lee1;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    const-string p1, "UPDATE WorkSpec SET `last_enqueue_time` = -1 WHERE `last_enqueue_time` = 0"

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lee1;->A(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void

    .line 56
    :pswitch_0
    const-string p0, "CREATE TABLE IF NOT EXISTS `_new_WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `required_network_type` INTEGER NOT NULL, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))"

    .line 57
    .line 58
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string p0, "INSERT INTO `_new_WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) SELECT `id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers` FROM `WorkSpec`"

    .line 62
    .line 63
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v3}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v2}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1, v1}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p1, v0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    instance-of p0, p1, Lju3;

    .line 79
    .line 80
    if-eqz p0, :cond_12

    .line 81
    .line 82
    check-cast p1, Lju3;

    .line 83
    .line 84
    iget-object p0, p1, Lju3;->n:Lee1;

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    const-string p1, "UPDATE workspec SET period_count = 1 WHERE last_enqueue_time <> 0 AND interval_duration <> 0"

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lee1;->A(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance p1, Landroid/content/ContentValues;

    .line 95
    .line 96
    const/4 v0, 0x1

    .line 97
    invoke-direct {p1, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide v0

    .line 104
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v1, "last_enqueue_time"

    .line 109
    .line 110
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    .line 112
    .line 113
    const/4 v0, 0x0

    .line 114
    new-array v1, v0, [Ljava/lang/Object;

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_11

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    array-length v3, v1

    .line 127
    add-int/2addr v3, v2

    .line 128
    new-array v4, v3, [Ljava/lang/Object;

    .line 129
    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v6, "UPDATE "

    .line 133
    .line 134
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    sget-object v6, Lee1;->o:[Ljava/lang/String;

    .line 138
    .line 139
    const/4 v7, 0x3

    .line 140
    aget-object v6, v6, v7

    .line 141
    .line 142
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v6, "WorkSpec SET "

    .line 146
    .line 147
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    move v7, v0

    .line 159
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    if-eqz v8, :cond_2

    .line 164
    .line 165
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    check-cast v8, Ljava/lang/String;

    .line 170
    .line 171
    if-lez v7, :cond_1

    .line 172
    .line 173
    const-string v9, ","

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_1
    const-string v9, ""

    .line 177
    .line 178
    :goto_1
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    add-int/lit8 v9, v7, 0x1

    .line 185
    .line 186
    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    aput-object v8, v4, v7

    .line 191
    .line 192
    const-string v7, "=?"

    .line 193
    .line 194
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    move v7, v9

    .line 198
    goto :goto_0

    .line 199
    :cond_2
    move p1, v2

    .line 200
    :goto_2
    if-ge p1, v3, :cond_3

    .line 201
    .line 202
    sub-int v6, p1, v2

    .line 203
    .line 204
    aget-object v6, v1, v6

    .line 205
    .line 206
    aput-object v6, v4, p1

    .line 207
    .line 208
    add-int/lit8 p1, p1, 0x1

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_3
    const-string p1, "last_enqueue_time = 0 AND interval_duration <> 0 "

    .line 212
    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-nez p1, :cond_4

    .line 218
    .line 219
    const-string p1, " WHERE last_enqueue_time = 0 AND interval_duration <> 0 "

    .line 220
    .line 221
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {p0, p1}, Lee1;->r(Ljava/lang/String;)Lle1;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    :goto_3
    if-ge v0, v3, :cond_10

    .line 233
    .line 234
    aget-object p1, v4, v0

    .line 235
    .line 236
    add-int/lit8 v0, v0, 0x1

    .line 237
    .line 238
    if-nez p1, :cond_5

    .line 239
    .line 240
    move-object p1, p0

    .line 241
    check-cast p1, Lke1;

    .line 242
    .line 243
    invoke-virtual {p1, v0}, Lke1;->e(I)V

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_5
    instance-of v1, p1, [B

    .line 248
    .line 249
    if-eqz v1, :cond_6

    .line 250
    .line 251
    check-cast p1, [B

    .line 252
    .line 253
    move-object v1, p0

    .line 254
    check-cast v1, Lke1;

    .line 255
    .line 256
    iget-object v1, v1, Lke1;->n:Landroid/database/sqlite/SQLiteProgram;

    .line 257
    .line 258
    invoke-virtual {v1, v0, p1}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    .line 259
    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_6
    instance-of v1, p1, Ljava/lang/Float;

    .line 263
    .line 264
    if-eqz v1, :cond_7

    .line 265
    .line 266
    check-cast p1, Ljava/lang/Number;

    .line 267
    .line 268
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    float-to-double v1, p1

    .line 273
    move-object p1, p0

    .line 274
    check-cast p1, Lke1;

    .line 275
    .line 276
    invoke-virtual {p1, v1, v2, v0}, Lke1;->y(DI)V

    .line 277
    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_7
    instance-of v1, p1, Ljava/lang/Double;

    .line 281
    .line 282
    if-eqz v1, :cond_8

    .line 283
    .line 284
    check-cast p1, Ljava/lang/Number;

    .line 285
    .line 286
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 287
    .line 288
    .line 289
    move-result-wide v1

    .line 290
    move-object p1, p0

    .line 291
    check-cast p1, Lke1;

    .line 292
    .line 293
    invoke-virtual {p1, v1, v2, v0}, Lke1;->y(DI)V

    .line 294
    .line 295
    .line 296
    goto :goto_3

    .line 297
    :cond_8
    instance-of v1, p1, Ljava/lang/Long;

    .line 298
    .line 299
    if-eqz v1, :cond_9

    .line 300
    .line 301
    check-cast p1, Ljava/lang/Number;

    .line 302
    .line 303
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 304
    .line 305
    .line 306
    move-result-wide v1

    .line 307
    move-object p1, p0

    .line 308
    check-cast p1, Lke1;

    .line 309
    .line 310
    invoke-virtual {p1, v0, v1, v2}, Lke1;->h(IJ)V

    .line 311
    .line 312
    .line 313
    goto :goto_3

    .line 314
    :cond_9
    instance-of v1, p1, Ljava/lang/Integer;

    .line 315
    .line 316
    if-eqz v1, :cond_a

    .line 317
    .line 318
    check-cast p1, Ljava/lang/Number;

    .line 319
    .line 320
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 321
    .line 322
    .line 323
    move-result p1

    .line 324
    int-to-long v1, p1

    .line 325
    move-object p1, p0

    .line 326
    check-cast p1, Lke1;

    .line 327
    .line 328
    invoke-virtual {p1, v0, v1, v2}, Lke1;->h(IJ)V

    .line 329
    .line 330
    .line 331
    goto :goto_3

    .line 332
    :cond_a
    instance-of v1, p1, Ljava/lang/Short;

    .line 333
    .line 334
    if-eqz v1, :cond_b

    .line 335
    .line 336
    check-cast p1, Ljava/lang/Number;

    .line 337
    .line 338
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    .line 339
    .line 340
    .line 341
    move-result p1

    .line 342
    int-to-long v1, p1

    .line 343
    move-object p1, p0

    .line 344
    check-cast p1, Lke1;

    .line 345
    .line 346
    invoke-virtual {p1, v0, v1, v2}, Lke1;->h(IJ)V

    .line 347
    .line 348
    .line 349
    goto :goto_3

    .line 350
    :cond_b
    instance-of v1, p1, Ljava/lang/Byte;

    .line 351
    .line 352
    if-eqz v1, :cond_c

    .line 353
    .line 354
    check-cast p1, Ljava/lang/Number;

    .line 355
    .line 356
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    .line 357
    .line 358
    .line 359
    move-result p1

    .line 360
    int-to-long v1, p1

    .line 361
    move-object p1, p0

    .line 362
    check-cast p1, Lke1;

    .line 363
    .line 364
    invoke-virtual {p1, v0, v1, v2}, Lke1;->h(IJ)V

    .line 365
    .line 366
    .line 367
    goto/16 :goto_3

    .line 368
    .line 369
    :cond_c
    instance-of v1, p1, Ljava/lang/String;

    .line 370
    .line 371
    if-eqz v1, :cond_d

    .line 372
    .line 373
    check-cast p1, Ljava/lang/String;

    .line 374
    .line 375
    move-object v1, p0

    .line 376
    check-cast v1, Lke1;

    .line 377
    .line 378
    iget-object v1, v1, Lke1;->n:Landroid/database/sqlite/SQLiteProgram;

    .line 379
    .line 380
    invoke-virtual {v1, v0, p1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 381
    .line 382
    .line 383
    goto/16 :goto_3

    .line 384
    .line 385
    :cond_d
    instance-of v1, p1, Ljava/lang/Boolean;

    .line 386
    .line 387
    if-eqz v1, :cond_f

    .line 388
    .line 389
    check-cast p1, Ljava/lang/Boolean;

    .line 390
    .line 391
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 392
    .line 393
    .line 394
    move-result p1

    .line 395
    if-eqz p1, :cond_e

    .line 396
    .line 397
    const-wide/16 v1, 0x1

    .line 398
    .line 399
    goto :goto_4

    .line 400
    :cond_e
    const-wide/16 v1, 0x0

    .line 401
    .line 402
    :goto_4
    move-object p1, p0

    .line 403
    check-cast p1, Lke1;

    .line 404
    .line 405
    invoke-virtual {p1, v0, v1, v2}, Lke1;->h(IJ)V

    .line 406
    .line 407
    .line 408
    goto/16 :goto_3

    .line 409
    .line 410
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 411
    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    const-string v2, "Cannot bind "

    .line 415
    .line 416
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    const-string p1, " at index "

    .line 423
    .line 424
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    const-string p1, " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String"

    .line 431
    .line 432
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    throw p0

    .line 443
    :cond_10
    iget-object p0, p0, Lle1;->o:Landroid/database/sqlite/SQLiteStatement;

    .line 444
    .line 445
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    .line 446
    .line 447
    .line 448
    goto :goto_5

    .line 449
    :cond_11
    const-string p0, "Empty values"

    .line 450
    .line 451
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    :cond_12
    :goto_5
    return-void

    .line 455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

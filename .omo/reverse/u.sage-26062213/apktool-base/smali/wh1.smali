.class public final Lwh1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final i:Lhh2;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ly84;

.field public final c:Lm10;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/List;

.field public final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lhh2;

    .line 2
    .line 3
    invoke-direct {v0}, Lhh2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lwh1;->i:Lhh2;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ly84;Lm10;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lwh1;->a:Landroid/content/Context;

    .line 14
    .line 15
    iput-object p2, p0, Lwh1;->b:Ly84;

    .line 16
    .line 17
    iput-object p3, p0, Lwh1;->c:Lm10;

    .line 18
    .line 19
    iget-object p1, p2, Ly84;->n:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p1, p0, Lwh1;->d:Ljava/lang/String;

    .line 22
    .line 23
    const-string p3, "Reset times for "

    .line 24
    .line 25
    const-string v0, " usage limits."

    .line 26
    .line 27
    invoke-static {p3, p1, v0}, Ldi0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    iput-object p3, p0, Lwh1;->e:Ljava/lang/String;

    .line 32
    .line 33
    sget-object p3, Loh1;->a:[I

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    aget p3, p3, v0

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    if-ne p3, v0, :cond_0

    .line 43
    .line 44
    const-string p3, "#000000"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string p3, "#d97757"

    .line 48
    .line 49
    :goto_0
    iput-object p3, p0, Lwh1;->f:Ljava/lang/String;

    .line 50
    .line 51
    const-string p3, " Usage"

    .line 52
    .line 53
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    const-string v0, " Resets"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    filled-new-array {p1, p3, v0}, [Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Ltv4;->F([Ljava/lang/Object;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lwh1;->g:Ljava/util/List;

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    const/4 p3, 0x3

    .line 80
    if-ne p1, p3, :cond_1

    .line 81
    .line 82
    const-string p1, "aiusagecodereset"

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    const-string p0, "Calendar sync is not supported for "

    .line 86
    .line 87
    invoke-static {p2, p0}, Lmk0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 p0, 0x0

    .line 91
    throw p0

    .line 92
    :cond_2
    const-string p1, "aiusageclaudereset"

    .line 93
    .line 94
    :goto_1
    iput-object p1, p0, Lwh1;->h:Ljava/lang/String;

    .line 95
    .line 96
    return-void
.end method

.method public static final a(Lwh1;Ljava/lang/String;Lp84;)Lcom/google/api/services/calendar/model/Event;
    .locals 12

    .line 1
    invoke-virtual {p2}, Lp84;->b()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-object p0, p0, Lwh1;->b:Ly84;

    .line 13
    .line 14
    invoke-virtual {p2}, Lp84;->d()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Ly84;->n:Ljava/lang/String;

    .line 22
    .line 23
    const-string v3, "Claude Design"

    .line 24
    .line 25
    const-string v4, "Current session"

    .line 26
    .line 27
    const-string v5, "Weekly limits"

    .line 28
    .line 29
    const-string v6, "Cowork only"

    .line 30
    .line 31
    const-string v7, "Opus only"

    .line 32
    .line 33
    const-string v8, "Sonnet only"

    .line 34
    .line 35
    const-string v9, "Monthly limits"

    .line 36
    .line 37
    if-eqz v2, :cond_6

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    sparse-switch v10, :sswitch_data_0

    .line 44
    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :sswitch_0
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    if-nez v10, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const-string v2, ": Monthly Reset"

    .line 56
    .line 57
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :sswitch_1
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    if-nez v10, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const-string v2, ": Sonnet Reset"

    .line 71
    .line 72
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    goto :goto_1

    .line 77
    :sswitch_2
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    if-nez v10, :cond_2

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const-string v2, ": Opus Reset"

    .line 85
    .line 86
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    goto :goto_1

    .line 91
    :sswitch_3
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    if-nez v10, :cond_3

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    const-string v2, ": Cowork Reset"

    .line 99
    .line 100
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    goto :goto_1

    .line 105
    :sswitch_4
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    if-nez v10, :cond_4

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    const-string v2, ": Weekly Reset"

    .line 113
    .line 114
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    goto :goto_1

    .line 119
    :sswitch_5
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    if-eqz v10, :cond_6

    .line 124
    .line 125
    const-string v2, ": Session Reset"

    .line 126
    .line 127
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    goto :goto_1

    .line 132
    :sswitch_6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    if-nez v10, :cond_5

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_5
    const-string v2, ": Design Reset"

    .line 140
    .line 141
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    goto :goto_1

    .line 146
    :cond_6
    :goto_0
    if-nez v2, :cond_7

    .line 147
    .line 148
    const-string v2, "Unknown"

    .line 149
    .line 150
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v11, " Reset: "

    .line 159
    .line 160
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    :goto_1
    invoke-virtual {p2}, Lp84;->d()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    if-eqz v10, :cond_e

    .line 175
    .line 176
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    sparse-switch v11, :sswitch_data_1

    .line 181
    .line 182
    .line 183
    goto/16 :goto_2

    .line 184
    .line 185
    :sswitch_7
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-nez v3, :cond_8

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_8
    const-string v3, " monthly limit resets."

    .line 193
    .line 194
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    goto :goto_3

    .line 199
    :sswitch_8
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-nez v3, :cond_9

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_9
    const-string v3, " weekly Sonnet limit resets."

    .line 207
    .line 208
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    goto :goto_3

    .line 213
    :sswitch_9
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    if-nez v3, :cond_a

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_a
    const-string v3, " weekly Opus limit resets."

    .line 221
    .line 222
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    goto :goto_3

    .line 227
    :sswitch_a
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-nez v3, :cond_b

    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_b
    const-string v3, " weekly Cowork limit resets."

    .line 235
    .line 236
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    goto :goto_3

    .line 241
    :sswitch_b
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    if-nez v3, :cond_c

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_c
    const-string v3, " weekly limit resets."

    .line 249
    .line 250
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    goto :goto_3

    .line 255
    :sswitch_c
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    if-eqz v3, :cond_e

    .line 260
    .line 261
    const-string v3, " session limit resets."

    .line 262
    .line 263
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    goto :goto_3

    .line 268
    :sswitch_d
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    if-nez v3, :cond_d

    .line 273
    .line 274
    goto :goto_2

    .line 275
    :cond_d
    const-string v3, " weekly Design limit resets."

    .line 276
    .line 277
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    goto :goto_3

    .line 282
    :cond_e
    :goto_2
    const-string v3, " usage limit resets."

    .line 283
    .line 284
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p0

    .line 288
    :goto_3
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    new-instance v4, Lcom/google/api/services/calendar/model/EventDateTime;

    .line 293
    .line 294
    invoke-direct {v4}, Lcom/google/api/services/calendar/model/EventDateTime;-><init>()V

    .line 295
    .line 296
    .line 297
    new-instance v5, Lcom/google/api/client/util/DateTime;

    .line 298
    .line 299
    invoke-direct {v5, v0, v1}, Lcom/google/api/client/util/DateTime;-><init>(J)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v4, v5}, Lcom/google/api/services/calendar/model/EventDateTime;->setDateTime(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/model/EventDateTime;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    invoke-virtual {v4, v5}, Lcom/google/api/services/calendar/model/EventDateTime;->setTimeZone(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventDateTime;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    new-instance v5, Lcom/google/api/services/calendar/model/EventDateTime;

    .line 315
    .line 316
    invoke-direct {v5}, Lcom/google/api/services/calendar/model/EventDateTime;-><init>()V

    .line 317
    .line 318
    .line 319
    new-instance v6, Lcom/google/api/client/util/DateTime;

    .line 320
    .line 321
    invoke-direct {v6, v0, v1}, Lcom/google/api/client/util/DateTime;-><init>(J)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v5, v6}, Lcom/google/api/services/calendar/model/EventDateTime;->setDateTime(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/model/EventDateTime;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/EventDateTime;->setTimeZone(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventDateTime;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    new-instance v1, Lcom/google/api/services/calendar/model/Event$Reminders;

    .line 337
    .line 338
    invoke-direct {v1}, Lcom/google/api/services/calendar/model/Event$Reminders;-><init>()V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p2}, Lp84;->e()D

    .line 342
    .line 343
    .line 344
    move-result-wide v5

    .line 345
    const-wide v7, 0x4056800000000000L    # 90.0

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    cmpl-double p2, v5, v7

    .line 351
    .line 352
    if-ltz p2, :cond_f

    .line 353
    .line 354
    new-instance p2, Lcom/google/api/services/calendar/model/EventReminder;

    .line 355
    .line 356
    invoke-direct {p2}, Lcom/google/api/services/calendar/model/EventReminder;-><init>()V

    .line 357
    .line 358
    .line 359
    const-string v3, "popup"

    .line 360
    .line 361
    invoke-virtual {p2, v3}, Lcom/google/api/services/calendar/model/EventReminder;->setMethod(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventReminder;

    .line 362
    .line 363
    .line 364
    move-result-object p2

    .line 365
    const/4 v3, 0x0

    .line 366
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    invoke-virtual {p2, v3}, Lcom/google/api/services/calendar/model/EventReminder;->setMinutes(Ljava/lang/Integer;)Lcom/google/api/services/calendar/model/EventReminder;

    .line 371
    .line 372
    .line 373
    move-result-object p2

    .line 374
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 375
    .line 376
    invoke-virtual {v1, v3}, Lcom/google/api/services/calendar/model/Event$Reminders;->setUseDefault(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Event$Reminders;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    invoke-static {p2}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    invoke-virtual {v3, p2}, Lcom/google/api/services/calendar/model/Event$Reminders;->setOverrides(Ljava/util/List;)Lcom/google/api/services/calendar/model/Event$Reminders;

    .line 385
    .line 386
    .line 387
    goto :goto_4

    .line 388
    :cond_f
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 389
    .line 390
    invoke-virtual {v1, p2}, Lcom/google/api/services/calendar/model/Event$Reminders;->setUseDefault(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Event$Reminders;

    .line 391
    .line 392
    .line 393
    move-result-object p2

    .line 394
    sget-object v3, Lg01;->n:Lg01;

    .line 395
    .line 396
    invoke-virtual {p2, v3}, Lcom/google/api/services/calendar/model/Event$Reminders;->setOverrides(Ljava/util/List;)Lcom/google/api/services/calendar/model/Event$Reminders;

    .line 397
    .line 398
    .line 399
    :goto_4
    new-instance p2, Lcom/google/api/services/calendar/model/Event;

    .line 400
    .line 401
    invoke-direct {p2}, Lcom/google/api/services/calendar/model/Event;-><init>()V

    .line 402
    .line 403
    .line 404
    invoke-virtual {p2, p1}, Lcom/google/api/services/calendar/model/Event;->setId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    invoke-virtual {p1, v2}, Lcom/google/api/services/calendar/model/Event;->setSummary(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    invoke-virtual {p1, p0}, Lcom/google/api/services/calendar/model/Event;->setDescription(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 413
    .line 414
    .line 415
    move-result-object p0

    .line 416
    invoke-virtual {p0, v4}, Lcom/google/api/services/calendar/model/Event;->setStart(Lcom/google/api/services/calendar/model/EventDateTime;)Lcom/google/api/services/calendar/model/Event;

    .line 417
    .line 418
    .line 419
    move-result-object p0

    .line 420
    invoke-virtual {p0, v0}, Lcom/google/api/services/calendar/model/Event;->setEnd(Lcom/google/api/services/calendar/model/EventDateTime;)Lcom/google/api/services/calendar/model/Event;

    .line 421
    .line 422
    .line 423
    move-result-object p0

    .line 424
    invoke-virtual {p0, v1}, Lcom/google/api/services/calendar/model/Event;->setReminders(Lcom/google/api/services/calendar/model/Event$Reminders;)Lcom/google/api/services/calendar/model/Event;

    .line 425
    .line 426
    .line 427
    move-result-object p0

    .line 428
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    .line 430
    .line 431
    return-object p0

    .line 432
    nop

    .line 433
    :sswitch_data_0
    .sparse-switch
        -0x4762f380 -> :sswitch_6
        -0x467ff531 -> :sswitch_5
        -0xe1b1f89 -> :sswitch_4
        0x2138e04f -> :sswitch_3
        0x270f56cd -> :sswitch_2
        0x30e593c1 -> :sswitch_1
        0x5fac17ab -> :sswitch_0
    .end sparse-switch

    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    :sswitch_data_1
    .sparse-switch
        -0x4762f380 -> :sswitch_d
        -0x467ff531 -> :sswitch_c
        -0xe1b1f89 -> :sswitch_b
        0x2138e04f -> :sswitch_a
        0x270f56cd -> :sswitch_9
        0x30e593c1 -> :sswitch_8
        0x5fac17ab -> :sswitch_7
    .end sparse-switch
.end method

.method public static final b(Lwh1;JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "0"

    .line 25
    .line 26
    const-string p3, "a0"

    .line 27
    .line 28
    invoke-static {p1, p2, p3}, Lgt3;->w0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string p2, "1"

    .line 33
    .line 34
    const-string p3, "b1"

    .line 35
    .line 36
    invoke-static {p1, p2, p3}, Lgt3;->w0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "2"

    .line 41
    .line 42
    const-string p3, "c2"

    .line 43
    .line 44
    invoke-static {p1, p2, p3}, Lgt3;->w0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string p2, "3"

    .line 49
    .line 50
    const-string p3, "d3"

    .line 51
    .line 52
    invoke-static {p1, p2, p3}, Lgt3;->w0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string p2, "4"

    .line 57
    .line 58
    const-string p3, "e4"

    .line 59
    .line 60
    invoke-static {p1, p2, p3}, Lgt3;->w0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string p2, "5"

    .line 65
    .line 66
    const-string p3, "f5"

    .line 67
    .line 68
    invoke-static {p1, p2, p3}, Lgt3;->w0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string p2, "6"

    .line 73
    .line 74
    const-string p3, "g6"

    .line 75
    .line 76
    invoke-static {p1, p2, p3}, Lgt3;->w0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string p2, "7"

    .line 81
    .line 82
    const-string p3, "h7"

    .line 83
    .line 84
    invoke-static {p1, p2, p3}, Lgt3;->w0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string p2, "8"

    .line 89
    .line 90
    const-string p3, "i8"

    .line 91
    .line 92
    invoke-static {p1, p2, p3}, Lgt3;->w0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string p2, "9"

    .line 97
    .line 98
    const-string p3, "j9"

    .line 99
    .line 100
    invoke-static {p1, p2, p3}, Lgt3;->w0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget-object p0, p0, Lwh1;->h:Ljava/lang/String;

    .line 105
    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0
.end method

.method public static final c(Lwh1;)Lcom/google/api/services/calendar/Calendar;
    .locals 4

    .line 1
    sget-object v0, Lez3;->a:Lra3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lwh1;->g()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-array p0, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {p0}, Lra3;->m([Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0

    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getAccount()Landroid/accounts/Account;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getAccount()Landroid/accounts/Account;

    .line 33
    .line 34
    .line 35
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    new-array v2, v1, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lwh1;->a:Landroid/content/Context;

    .line 44
    .line 45
    const-string v2, "https://www.googleapis.com/auth/calendar"

    .line 46
    .line 47
    invoke-static {v2}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {p0, v2}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->usingOAuth2(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getAccount()Landroid/accounts/Account;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setSelectedAccount(Landroid/accounts/Account;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->getSelectedAccount()Landroid/accounts/Account;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->getSelectedAccountName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    new-array v0, v1, [Ljava/lang/Object;

    .line 69
    .line 70
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lcom/google/api/services/calendar/Calendar$Builder;

    .line 74
    .line 75
    new-instance v2, Lcom/google/api/client/http/javanet/NetHttpTransport;

    .line 76
    .line 77
    invoke-direct {v2}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lcom/google/api/client/json/gson/GsonFactory;->getDefaultInstance()Lcom/google/api/client/json/gson/GsonFactory;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-direct {v0, v2, v3, p0}, Lcom/google/api/services/calendar/Calendar$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    .line 85
    .line 86
    .line 87
    const-string p0, "AI Usage"

    .line 88
    .line 89
    invoke-virtual {v0, p0}, Lcom/google/api/services/calendar/Calendar$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lcom/google/api/services/calendar/Calendar$Builder;->build()Lcom/google/api/services/calendar/Calendar;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    new-array v0, v1, [Ljava/lang/Object;

    .line 98
    .line 99
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return-object p0
.end method

.method public static final d(Lwh1;Lcom/google/api/services/calendar/Calendar;Lfh0;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lwh1;->c:Lm10;

    .line 2
    .line 3
    instance-of v1, p2, Lsh1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p2

    .line 8
    check-cast v1, Lsh1;

    .line 9
    .line 10
    iget v2, v1, Lsh1;->v:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lsh1;->v:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lsh1;

    .line 23
    .line 24
    invoke-direct {v1, p0, p2}, Lsh1;-><init>(Lwh1;Lfh0;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p2, v1, Lsh1;->t:Ljava/lang/Object;

    .line 28
    .line 29
    iget v2, v1, Lsh1;->v:I

    .line 30
    .line 31
    const-string v3, "primary"

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    const/4 v5, 0x2

    .line 35
    const/4 v6, 0x1

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    sget-object v9, Lri0;->n:Lri0;

    .line 39
    .line 40
    if-eqz v2, :cond_4

    .line 41
    .line 42
    if-eq v2, v6, :cond_3

    .line 43
    .line 44
    if-eq v2, v5, :cond_2

    .line 45
    .line 46
    if-ne v2, v4, :cond_1

    .line 47
    .line 48
    iget-object p1, v1, Lsh1;->s:Lcom/google/api/services/calendar/model/Calendar;

    .line 49
    .line 50
    iget-object v0, v1, Lsh1;->q:Lcom/google/api/services/calendar/Calendar;

    .line 51
    .line 52
    :try_start_0
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 53
    .line 54
    .line 55
    goto/16 :goto_6

    .line 56
    .line 57
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v8

    .line 63
    :cond_2
    iget-object p0, v1, Lsh1;->r:Lcom/google/api/services/calendar/model/CalendarListEntry;

    .line 64
    .line 65
    :try_start_1
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 66
    .line 67
    .line 68
    goto/16 :goto_3

    .line 69
    .line 70
    :cond_3
    iget-object p1, v1, Lsh1;->q:Lcom/google/api/services/calendar/Calendar;

    .line 71
    .line 72
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iput-object p1, v1, Lsh1;->q:Lcom/google/api/services/calendar/Calendar;

    .line 80
    .line 81
    iput v6, v1, Lsh1;->v:I

    .line 82
    .line 83
    iget-object p2, v0, Lm10;->d:Lnv3;

    .line 84
    .line 85
    invoke-virtual {p2}, Lnv3;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, La81;

    .line 90
    .line 91
    invoke-static {p2, v1}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    if-ne p2, v9, :cond_5

    .line 96
    .line 97
    goto/16 :goto_5

    .line 98
    .line 99
    :cond_5
    :goto_1
    check-cast p2, Ljava/lang/String;

    .line 100
    .line 101
    sget-object v2, Lez3;->a:Lra3;

    .line 102
    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    new-array v6, v7, [Ljava/lang/Object;

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-static {v6}, Lra3;->c([Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-static {p2, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-nez v2, :cond_6

    .line 123
    .line 124
    invoke-static {p2}, Lzs3;->I0(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_6

    .line 129
    .line 130
    :try_start_2
    invoke-virtual {p1}, Lcom/google/api/services/calendar/Calendar;->calendars()Lcom/google/api/services/calendar/Calendar$Calendars;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v2, p2}, Lcom/google/api/services/calendar/Calendar$Calendars;->get(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Calendars$Get;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v2}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 139
    .line 140
    .line 141
    return-object p2

    .line 142
    :catch_0
    sget-object p2, Lez3;->a:Lra3;

    .line 143
    .line 144
    new-array v2, v7, [Ljava/lang/Object;

    .line 145
    .line 146
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-static {v2}, Lra3;->n([Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_6
    :try_start_3
    invoke-virtual {p1}, Lcom/google/api/services/calendar/Calendar;->calendarList()Lcom/google/api/services/calendar/Calendar$CalendarList;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {p2}, Lcom/google/api/services/calendar/Calendar$CalendarList;->list()Lcom/google/api/services/calendar/Calendar$CalendarList$List;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-virtual {p2}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    check-cast p2, Lcom/google/api/services/calendar/model/CalendarList;

    .line 165
    .line 166
    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/CalendarList;->getItems()Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eqz v2, :cond_8

    .line 182
    .line 183
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    move-object v6, v2

    .line 188
    check-cast v6, Lcom/google/api/services/calendar/model/CalendarListEntry;

    .line 189
    .line 190
    iget-object v10, p0, Lwh1;->g:Ljava/util/List;

    .line 191
    .line 192
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getSummary()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    invoke-interface {v10, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    if-eqz v6, :cond_7

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_8
    move-object v2, v8

    .line 204
    :goto_2
    move-object p2, v2

    .line 205
    check-cast p2, Lcom/google/api/services/calendar/model/CalendarListEntry;

    .line 206
    .line 207
    if-eqz p2, :cond_a

    .line 208
    .line 209
    sget-object p0, Lez3;->a:Lra3;

    .line 210
    .line 211
    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getSummary()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getId()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    new-array p1, v7, [Ljava/lang/Object;

    .line 225
    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getId()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    iput-object v8, v1, Lsh1;->q:Lcom/google/api/services/calendar/Calendar;

    .line 240
    .line 241
    iput-object p2, v1, Lsh1;->r:Lcom/google/api/services/calendar/model/CalendarListEntry;

    .line 242
    .line 243
    iput v5, v1, Lsh1;->v:I

    .line 244
    .line 245
    invoke-virtual {v0, p0, v1}, Lm10;->c(Ljava/lang/String;Lfh0;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    if-ne p0, v9, :cond_9

    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_9
    move-object p0, p2

    .line 253
    :goto_3
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getId()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    :goto_4
    move-object v3, p0

    .line 261
    goto/16 :goto_8

    .line 262
    .line 263
    :cond_a
    sget-object p2, Lez3;->a:Lra3;

    .line 264
    .line 265
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    new-array v2, v7, [Ljava/lang/Object;

    .line 273
    .line 274
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    new-instance p2, Lcom/google/api/services/calendar/model/Calendar;

    .line 281
    .line 282
    invoke-direct {p2}, Lcom/google/api/services/calendar/model/Calendar;-><init>()V

    .line 283
    .line 284
    .line 285
    iget-object v2, p0, Lwh1;->d:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {p2, v2}, Lcom/google/api/services/calendar/model/Calendar;->setSummary(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Calendar;

    .line 288
    .line 289
    .line 290
    iget-object v2, p0, Lwh1;->e:Ljava/lang/String;

    .line 291
    .line 292
    invoke-virtual {p2, v2}, Lcom/google/api/services/calendar/model/Calendar;->setDescription(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Calendar;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1}, Lcom/google/api/services/calendar/Calendar;->calendars()Lcom/google/api/services/calendar/Calendar$Calendars;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {v2, p2}, Lcom/google/api/services/calendar/Calendar$Calendars;->insert(Lcom/google/api/services/calendar/model/Calendar;)Lcom/google/api/services/calendar/Calendar$Calendars$Insert;

    .line 300
    .line 301
    .line 302
    move-result-object p2

    .line 303
    invoke-virtual {p2}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    check-cast p2, Lcom/google/api/services/calendar/model/Calendar;

    .line 308
    .line 309
    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/Calendar;->getId()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    iput-object p1, v1, Lsh1;->q:Lcom/google/api/services/calendar/Calendar;

    .line 317
    .line 318
    iput-object v8, v1, Lsh1;->r:Lcom/google/api/services/calendar/model/CalendarListEntry;

    .line 319
    .line 320
    iput-object p2, v1, Lsh1;->s:Lcom/google/api/services/calendar/model/Calendar;

    .line 321
    .line 322
    iput v4, v1, Lsh1;->v:I

    .line 323
    .line 324
    invoke-virtual {v0, v2, v1}, Lm10;->c(Ljava/lang/String;Lfh0;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 328
    if-ne v0, v9, :cond_b

    .line 329
    .line 330
    :goto_5
    move-object v3, v9

    .line 331
    goto :goto_8

    .line 332
    :cond_b
    move-object v0, p1

    .line 333
    move-object p1, p2

    .line 334
    :goto_6
    :try_start_4
    invoke-virtual {v0}, Lcom/google/api/services/calendar/Calendar;->calendarList()Lcom/google/api/services/calendar/Calendar$CalendarList;

    .line 335
    .line 336
    .line 337
    move-result-object p2

    .line 338
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Calendar;->getId()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-virtual {p2, v1}, Lcom/google/api/services/calendar/Calendar$CalendarList;->get(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$CalendarList$Get;

    .line 343
    .line 344
    .line 345
    move-result-object p2

    .line 346
    invoke-virtual {p2}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object p2

    .line 350
    check-cast p2, Lcom/google/api/services/calendar/model/CalendarListEntry;

    .line 351
    .line 352
    iget-object p0, p0, Lwh1;->f:Ljava/lang/String;

    .line 353
    .line 354
    invoke-virtual {p2, p0}, Lcom/google/api/services/calendar/model/CalendarListEntry;->setBackgroundColor(Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Lcom/google/api/services/calendar/Calendar;->calendarList()Lcom/google/api/services/calendar/Calendar$CalendarList;

    .line 358
    .line 359
    .line 360
    move-result-object p0

    .line 361
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Calendar;->getId()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-virtual {p0, v0, p2}, Lcom/google/api/services/calendar/Calendar$CalendarList;->update(Ljava/lang/String;Lcom/google/api/services/calendar/model/CalendarListEntry;)Lcom/google/api/services/calendar/Calendar$CalendarList$Update;

    .line 366
    .line 367
    .line 368
    move-result-object p0

    .line 369
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 370
    .line 371
    invoke-virtual {p0, p2}, Lcom/google/api/services/calendar/Calendar$CalendarList$Update;->setColorRgbFormat(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$CalendarList$Update;

    .line 372
    .line 373
    .line 374
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 375
    .line 376
    .line 377
    goto :goto_7

    .line 378
    :catch_1
    :try_start_5
    sget-object p0, Lez3;->a:Lra3;

    .line 379
    .line 380
    new-array p2, v7, [Ljava/lang/Object;

    .line 381
    .line 382
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    invoke-static {p2}, Lra3;->n([Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    :goto_7
    sget-object p0, Lez3;->a:Lra3;

    .line 389
    .line 390
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Calendar;->getId()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 394
    .line 395
    .line 396
    move-result-object p2

    .line 397
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    new-array p2, v7, [Ljava/lang/Object;

    .line 401
    .line 402
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    invoke-static {p2}, Lra3;->c([Ljava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Calendar;->getId()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object p0

    .line 412
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 413
    .line 414
    .line 415
    goto/16 :goto_4

    .line 416
    .line 417
    :catch_2
    sget-object p0, Lez3;->a:Lra3;

    .line 418
    .line 419
    new-array p1, v7, [Ljava/lang/Object;

    .line 420
    .line 421
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 422
    .line 423
    .line 424
    invoke-static {p1}, Lra3;->g([Ljava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    :goto_8
    return-object v3
.end method


# virtual methods
.method public final e(Lcom/google/api/services/calendar/Calendar;Ljava/lang/String;Ljava/util/List;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lqh1;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v1, p0, v2, v0}, Lqh1;-><init>(Lwh1;Ldh0;I)V

    .line 6
    .line 7
    .line 8
    sget-object v3, Ld01;->n:Ld01;

    .line 9
    .line 10
    invoke-static {v3, v1}, Lca;->H(Lhi0;Ldf1;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/util/List;

    .line 15
    .line 16
    new-instance v3, Lcom/google/api/client/util/DateTime;

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    const-wide/32 v6, 0x5265c00

    .line 23
    .line 24
    .line 25
    sub-long/2addr v4, v6

    .line 26
    invoke-direct {v3, v4, v5}, Lcom/google/api/client/util/DateTime;-><init>(J)V

    .line 27
    .line 28
    .line 29
    new-instance v4, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/services/calendar/Calendar;->events()Lcom/google/api/services/calendar/Calendar$Events;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v5, p2}, Lcom/google/api/services/calendar/Calendar$Events;->list(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$List;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v5, v3}, Lcom/google/api/services/calendar/Calendar$Events$List;->setTimeMin(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/Calendar$Events$List;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v5, v2}, Lcom/google/api/services/calendar/Calendar$Events$List;->setPageToken(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$List;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->execute()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/google/api/services/calendar/model/Events;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/Events;->getItems()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_2

    .line 71
    .line 72
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Lcom/google/api/services/calendar/model/Event;

    .line 77
    .line 78
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    if-eqz v7, :cond_1

    .line 83
    .line 84
    iget-object v8, p0, Lwh1;->h:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v7, v8, v0}, Lgt3;->y0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    const/4 v8, 0x1

    .line 91
    if-ne v7, v8, :cond_1

    .line 92
    .line 93
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/Events;->getNextPageToken()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    if-nez v2, :cond_0

    .line 109
    .line 110
    invoke-static {v1, v4}, Lo70;->s0(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 115
    .line 116
    invoke-direct {v1, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v1}, Lo70;->C0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    sget-object v1, Lez3;->a:Lra3;

    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    new-array v2, v0, [Ljava/lang/Object;

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    new-instance v1, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_4

    .line 153
    .line 154
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    move-object v3, v2

    .line 159
    check-cast v3, Ljava/lang/String;

    .line 160
    .line 161
    invoke-interface {p3, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-nez v3, :cond_3

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    if-eqz p0, :cond_5

    .line 176
    .line 177
    sget-object p0, Lez3;->a:Lra3;

    .line 178
    .line 179
    new-array p1, v0, [Ljava/lang/Object;

    .line 180
    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_5
    sget-object p0, Lez3;->a:Lra3;

    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 191
    .line 192
    .line 193
    new-array p3, v0, [Ljava/lang/Object;

    .line 194
    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    invoke-static {p3}, Lra3;->c([Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->batch()Lcom/google/api/client/googleapis/batch/BatchRequest;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    new-instance p3, Lph1;

    .line 206
    .line 207
    invoke-direct {p3}, Lcom/google/api/client/googleapis/batch/json/JsonBatchCallback;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    move v3, v0

    .line 215
    :goto_2
    if-ge v3, v2, :cond_6

    .line 216
    .line 217
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    add-int/lit8 v3, v3, 0x1

    .line 222
    .line 223
    check-cast v4, Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {p1}, Lcom/google/api/services/calendar/Calendar;->events()Lcom/google/api/services/calendar/Calendar$Events;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-virtual {v5, p2, v4}, Lcom/google/api/services/calendar/Calendar$Events;->delete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$Delete;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-virtual {v4, p0, p3}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->queue(Lcom/google/api/client/googleapis/batch/BatchRequest;Lcom/google/api/client/googleapis/batch/json/JsonBatchCallback;)V

    .line 234
    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_6
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/batch/BatchRequest;->execute()V

    .line 238
    .line 239
    .line 240
    sget-object p0, Lez3;->a:Lra3;

    .line 241
    .line 242
    new-array p1, v0, [Ljava/lang/Object;

    .line 243
    .line 244
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :catch_0
    sget-object p0, Lez3;->a:Lra3;

    .line 252
    .line 253
    new-array p1, v0, [Ljava/lang/Object;

    .line 254
    .line 255
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    invoke-static {p1}, Lra3;->n([Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    return-void
.end method

.method public final f()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    .locals 7

    .line 1
    sget-object v0, Lez3;->a:Lra3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 13
    .line 14
    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 15
    .line 16
    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v2, Lcom/google/android/gms/common/api/Scope;

    .line 24
    .line 25
    const-string v3, "https://www.googleapis.com/auth/calendar"

    .line 26
    .line 27
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-array v3, v1, [Lcom/google/android/gms/common/api/Scope;

    .line 31
    .line 32
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getScopeArray()[Lcom/google/android/gms/common/api/Scope;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    new-instance v3, Ljava/util/ArrayList;

    .line 50
    .line 51
    array-length v4, v2

    .line 52
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .line 54
    .line 55
    array-length v4, v2

    .line 56
    move v5, v1

    .line 57
    :goto_0
    if-ge v5, v4, :cond_1

    .line 58
    .line 59
    aget-object v6, v2, v5

    .line 60
    .line 61
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/Scope;->getScopeUri()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    add-int/lit8 v5, v5, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const/4 v3, 0x0

    .line 72
    :cond_1
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    new-array v1, v1, [Ljava/lang/Object;

    .line 76
    .line 77
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lwh1;->a:Landroid/content/Context;

    .line 81
    .line 82
    invoke-static {p0, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    return-object p0
.end method

.method public final g()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 5

    .line 1
    iget-object p0, p0, Lwh1;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lez3;->a:Lra3;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    :cond_0
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->isExpired()Z

    .line 17
    .line 18
    .line 19
    :cond_1
    if-eqz p0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    :cond_2
    const/4 v1, 0x0

    .line 25
    new-array v2, v1, [Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    if-eqz p0, :cond_4

    .line 35
    .line 36
    new-instance v2, Lcom/google/android/gms/common/api/Scope;

    .line 37
    .line 38
    const-string v3, "https://www.googleapis.com/auth/calendar"

    .line 39
    .line 40
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    filled-new-array {v2}, [Lcom/google/android/gms/common/api/Scope;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {p0, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->hasPermissions(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;[Lcom/google/android/gms/common/api/Scope;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getGrantedScopes()Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getAccount()Landroid/accounts/Account;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    new-array v3, v1, [Ljava/lang/Object;

    .line 66
    .line 67
    invoke-static {v3}, Lra3;->c([Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    if-nez v2, :cond_3

    .line 71
    .line 72
    new-array p0, v1, [Ljava/lang/Object;

    .line 73
    .line 74
    invoke-static {p0}, Lra3;->m([Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_3
    return-object p0

    .line 79
    :cond_4
    new-array p0, v1, [Ljava/lang/Object;

    .line 80
    .line 81
    invoke-static {p0}, Lra3;->c([Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-object v0
.end method

.method public final h(Ld84;Lfh0;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lth1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lth1;

    .line 7
    .line 8
    iget v1, v0, Lth1;->v:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lth1;->v:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lth1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lth1;-><init>(Lwh1;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lth1;->t:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lth1;->v:I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    sget-object v5, Lri0;->n:Lri0;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    if-eq v1, v3, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p0, v0, Lth1;->r:Lfh2;

    .line 41
    .line 42
    :try_start_0
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_3

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v4

    .line 55
    :cond_2
    iget p1, v0, Lth1;->s:I

    .line 56
    .line 57
    iget-object v1, v0, Lth1;->r:Lfh2;

    .line 58
    .line 59
    iget-object v3, v0, Lth1;->q:Ld84;

    .line 60
    .line 61
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    move-object p2, v1

    .line 65
    move v1, p1

    .line 66
    move-object p1, v3

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    sget-object p2, Lez3;->a:Lra3;

    .line 72
    .line 73
    invoke-virtual {p1}, Ld84;->c()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 88
    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    new-array v6, v1, [Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-static {v6}, Lra3;->c([Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iput-object p1, v0, Lth1;->q:Ld84;

    .line 100
    .line 101
    sget-object p2, Lwh1;->i:Lhh2;

    .line 102
    .line 103
    iput-object p2, v0, Lth1;->r:Lfh2;

    .line 104
    .line 105
    iput v1, v0, Lth1;->s:I

    .line 106
    .line 107
    iput v3, v0, Lth1;->v:I

    .line 108
    .line 109
    invoke-virtual {p2, v0}, Lhh2;->j(Lfh0;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    if-ne v3, v5, :cond_4

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    :goto_1
    :try_start_1
    sget-object v3, Lzu0;->a:Lzp0;

    .line 117
    .line 118
    sget-object v3, Llp0;->p:Llp0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 119
    .line 120
    :try_start_2
    new-instance v6, Lvh1;

    .line 121
    .line 122
    invoke-direct {v6, p0, p1, v4}, Lvh1;-><init>(Lwh1;Ld84;Ldh0;)V

    .line 123
    .line 124
    .line 125
    iput-object v4, v0, Lth1;->q:Ld84;

    .line 126
    .line 127
    iput-object p2, v0, Lth1;->r:Lfh2;

    .line 128
    .line 129
    iput v1, v0, Lth1;->s:I

    .line 130
    .line 131
    iput v2, v0, Lth1;->v:I

    .line 132
    .line 133
    invoke-static {v3, v6, v0}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 137
    if-ne p0, v5, :cond_5

    .line 138
    .line 139
    :goto_2
    return-object v5

    .line 140
    :cond_5
    move-object v7, p2

    .line 141
    move-object p2, p0

    .line 142
    move-object p0, v7

    .line 143
    :goto_3
    :try_start_3
    check-cast p2, Lnh1;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    .line 145
    invoke-interface {p0, v4}, Lfh2;->b(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    return-object p2

    .line 149
    :catchall_1
    move-exception p1

    .line 150
    :goto_4
    move-object p0, p2

    .line 151
    goto :goto_5

    .line 152
    :catchall_2
    move-exception p0

    .line 153
    move-object p1, p0

    .line 154
    goto :goto_4

    .line 155
    :goto_5
    invoke-interface {p0, v4}, Lfh2;->b(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    throw p1
.end method

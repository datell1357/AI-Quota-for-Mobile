.class public final Lol0;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public synthetic t:Ljava/lang/Object;

.field public final synthetic u:Z

.field public v:Ljava/lang/Enum;

.field public final synthetic w:Ljava/lang/Object;

.field public final synthetic x:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ldh0;Lpe1;Lga3;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lol0;->r:I

    .line 17
    iput-boolean p4, p0, Lol0;->u:Z

    iput-object p3, p0, Lol0;->w:Ljava/lang/Object;

    iput-object p2, p0, Lol0;->x:Ljava/lang/Object;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method

.method public constructor <init>(Ly84;ZLu/sage/MainActivity;Lps;Ldh0;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lol0;->r:I

    .line 3
    .line 4
    iput-object p1, p0, Lol0;->v:Ljava/lang/Enum;

    .line 5
    .line 6
    iput-boolean p2, p0, Lol0;->u:Z

    .line 7
    .line 8
    iput-object p3, p0, Lol0;->w:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Lol0;->x:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    invoke-direct {p0, p1, p5}, Lbv3;-><init>(ILdh0;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lol0;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljs2;

    .line 9
    .line 10
    check-cast p2, Ldh0;

    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Lol0;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lol0;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lol0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Ld14;

    .line 24
    .line 25
    check-cast p2, Ldh0;

    .line 26
    .line 27
    invoke-virtual {p0, p2, p1}, Lol0;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lol0;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lol0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 9

    .line 1
    iget v0, p0, Lol0;->r:I

    .line 2
    .line 3
    iget-object v1, p0, Lol0;->x:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lol0;->w:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v3, Lol0;

    .line 11
    .line 12
    iget-object v0, p0, Lol0;->v:Ljava/lang/Enum;

    .line 13
    .line 14
    move-object v4, v0

    .line 15
    check-cast v4, Ly84;

    .line 16
    .line 17
    move-object v6, v2

    .line 18
    check-cast v6, Lu/sage/MainActivity;

    .line 19
    .line 20
    move-object v7, v1

    .line 21
    check-cast v7, Lps;

    .line 22
    .line 23
    iget-boolean v5, p0, Lol0;->u:Z

    .line 24
    .line 25
    move-object v8, p1

    .line 26
    invoke-direct/range {v3 .. v8}, Lol0;-><init>(Ly84;ZLu/sage/MainActivity;Lps;Ldh0;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, v3, Lol0;->t:Ljava/lang/Object;

    .line 30
    .line 31
    return-object v3

    .line 32
    :pswitch_0
    move-object v8, p1

    .line 33
    new-instance p1, Lol0;

    .line 34
    .line 35
    check-cast v2, Lga3;

    .line 36
    .line 37
    check-cast v1, Lpe1;

    .line 38
    .line 39
    iget-boolean p0, p0, Lol0;->u:Z

    .line 40
    .line 41
    invoke-direct {p1, v8, v1, v2, p0}, Lol0;-><init>(Ldh0;Lpe1;Lga3;Z)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p1, Lol0;->t:Ljava/lang/Object;

    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lol0;->r:I

    .line 4
    .line 5
    iget-object v2, v0, Lol0;->x:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x2

    .line 10
    iget-boolean v6, v0, Lol0;->u:Z

    .line 11
    .line 12
    const-string v7, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    sget-object v8, Lri0;->n:Lri0;

    .line 15
    .line 16
    iget-object v9, v0, Lol0;->w:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v10, 0x1

    .line 19
    const/4 v11, 0x0

    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v9, Lu/sage/MainActivity;

    .line 24
    .line 25
    iget-object v1, v0, Lol0;->v:Ljava/lang/Enum;

    .line 26
    .line 27
    check-cast v1, Ly84;

    .line 28
    .line 29
    iget-object v12, v0, Lol0;->t:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v12, Ljs2;

    .line 32
    .line 33
    iget v13, v0, Lol0;->s:I

    .line 34
    .line 35
    const-string v14, "service_type"

    .line 36
    .line 37
    const/4 v15, 0x0

    .line 38
    if-eqz v13, :cond_1

    .line 39
    .line 40
    if-ne v13, v10, :cond_0

    .line 41
    .line 42
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_4

    .line 46
    .line 47
    :cond_0
    invoke-static {v7}, Lk21;->n(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    move-object v8, v11

    .line 51
    goto/16 :goto_9

    .line 52
    .line 53
    :cond_1
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v7, v12, Ljs2;->n:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v7, Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    iget-object v12, v12, Ljs2;->o:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v12, Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    sget-object v13, Ly84;->r:Ly84;

    .line 73
    .line 74
    if-ne v1, v13, :cond_4

    .line 75
    .line 76
    if-nez v7, :cond_4

    .line 77
    .line 78
    if-nez v6, :cond_3

    .line 79
    .line 80
    if-eqz v12, :cond_2

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    move v6, v15

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    :goto_1
    move v6, v10

    .line 86
    goto :goto_2

    .line 87
    :cond_4
    if-nez v7, :cond_3

    .line 88
    .line 89
    if-eqz v12, :cond_2

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :goto_2
    sget-object v7, Lez3;->a:Lra3;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    new-array v13, v15, [Ljava/lang/Object;

    .line 98
    .line 99
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-static {v13}, Lra3;->c([Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    if-eqz v6, :cond_6

    .line 106
    .line 107
    if-eqz v12, :cond_6

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    new-array v0, v15, [Ljava/lang/Object;

    .line 113
    .line 114
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v9, v1}, Lmt1;->S(Landroid/content/Context;Ly84;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v9}, Lu/sage/MainActivity;->i()Ln8;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget-object v2, v0, Ln8;->f:Ljava/util/LinkedHashSet;

    .line 125
    .line 126
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_5

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    new-array v2, v15, [Ljava/lang/Object;

    .line 136
    .line 137
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    new-instance v2, Landroid/os/Bundle;

    .line 141
    .line 142
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v2, v14, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string v1, "service_started"

    .line 153
    .line 154
    invoke-virtual {v0, v1, v2}, Ln8;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ln8;->b()Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_8

    .line 165
    .line 166
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    new-array v0, v15, [Ljava/lang/Object;

    .line 170
    .line 171
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_8

    .line 175
    .line 176
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    new-array v7, v15, [Ljava/lang/Object;

    .line 180
    .line 181
    invoke-static {v7}, Lra3;->c([Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    if-nez v6, :cond_c

    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    new-array v6, v15, [Ljava/lang/Object;

    .line 190
    .line 191
    invoke-static {v6}, Lra3;->c([Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    if-eqz v6, :cond_b

    .line 199
    .line 200
    if-eq v6, v10, :cond_a

    .line 201
    .line 202
    if-eq v6, v5, :cond_9

    .line 203
    .line 204
    if-eq v6, v4, :cond_8

    .line 205
    .line 206
    if-ne v6, v3, :cond_7

    .line 207
    .line 208
    sget v3, Lu/sage/CopilotUsageService;->Y:I

    .line 209
    .line 210
    invoke-static {}, Lk75;->s()Ld84;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    goto :goto_3

    .line 215
    :cond_7
    invoke-static {}, Lp61;->x()V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_8
    sget v3, Lu/sage/CodexUsageService;->Y:I

    .line 221
    .line 222
    invoke-static {}, Lon4;->p()Ld84;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    goto :goto_3

    .line 227
    :cond_9
    sget v3, Lu/sage/AntigravityUsageService;->Y:I

    .line 228
    .line 229
    invoke-static {}, Lk75;->r()Ld84;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    goto :goto_3

    .line 234
    :cond_a
    sget v3, Lu/sage/GeminiUsageService;->Y:I

    .line 235
    .line 236
    invoke-static {}, Lc75;->u()Ld84;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    goto :goto_3

    .line 241
    :cond_b
    sget v3, Lu/sage/ClaudeUsageService;->Z:I

    .line 242
    .line 243
    invoke-static {}, Lis0;->v()Ld84;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    :goto_3
    check-cast v2, Lps;

    .line 248
    .line 249
    iput-object v11, v0, Lol0;->t:Ljava/lang/Object;

    .line 250
    .line 251
    iput v10, v0, Lol0;->s:I

    .line 252
    .line 253
    invoke-virtual {v2, v3, v0}, Lps;->g(Ld84;Lfh0;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    if-ne v0, v8, :cond_c

    .line 258
    .line 259
    goto/16 :goto_9

    .line 260
    .line 261
    :cond_c
    :goto_4
    invoke-static {v9, v1}, Lmt1;->T(Landroid/content/Context;Ly84;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v9}, Lu/sage/MainActivity;->i()Ln8;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    iget-object v2, v0, Ln8;->f:Ljava/util/LinkedHashSet;

    .line 269
    .line 270
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-eqz v2, :cond_d

    .line 275
    .line 276
    sget-object v2, Lez3;->a:Lra3;

    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    new-array v3, v15, [Ljava/lang/Object;

    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    invoke-static {v3}, Lra3;->c([Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    new-instance v2, Landroid/os/Bundle;

    .line 290
    .line 291
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    invoke-virtual {v2, v14, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    const-string v3, "service_stopped"

    .line 302
    .line 303
    invoke-virtual {v0, v3, v2}, Ln8;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0}, Ln8;->b()Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 311
    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_d
    sget-object v0, Lez3;->a:Lra3;

    .line 315
    .line 316
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    new-array v2, v15, [Ljava/lang/Object;

    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    :goto_5
    const-string v0, "notification"

    .line 328
    .line 329
    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    check-cast v0, Landroid/app/NotificationManager;

    .line 337
    .line 338
    iget v2, v1, Ly84;->p:I

    .line 339
    .line 340
    :try_start_0
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    array-length v4, v3

    .line 348
    move v5, v15

    .line 349
    :goto_6
    if-ge v5, v4, :cond_f

    .line 350
    .line 351
    aget-object v6, v3, v5

    .line 352
    .line 353
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 354
    .line 355
    .line 356
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    if-ne v6, v2, :cond_e

    .line 358
    .line 359
    goto :goto_7

    .line 360
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 361
    .line 362
    goto :goto_6

    .line 363
    :catch_0
    :cond_f
    move v10, v15

    .line 364
    :goto_7
    sget-object v3, Lez3;->a:Lra3;

    .line 365
    .line 366
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    new-array v4, v15, [Ljava/lang/Object;

    .line 370
    .line 371
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    .line 373
    .line 374
    invoke-static {v4}, Lra3;->c([Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    if-eqz v10, :cond_10

    .line 378
    .line 379
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    new-array v1, v15, [Ljava/lang/Object;

    .line 383
    .line 384
    invoke-static {v1}, Lra3;->m([Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 388
    .line 389
    .line 390
    :cond_10
    :goto_8
    sget-object v8, Lt64;->a:Lt64;

    .line 391
    .line 392
    :goto_9
    return-object v8

    .line 393
    :pswitch_0
    check-cast v2, Lpe1;

    .line 394
    .line 395
    check-cast v9, Lga3;

    .line 396
    .line 397
    iget v1, v0, Lol0;->s:I

    .line 398
    .line 399
    if-eqz v1, :cond_1a

    .line 400
    .line 401
    if-eq v1, v10, :cond_14

    .line 402
    .line 403
    if-eq v1, v5, :cond_13

    .line 404
    .line 405
    if-eq v1, v4, :cond_12

    .line 406
    .line 407
    if-ne v1, v3, :cond_11

    .line 408
    .line 409
    iget-object v0, v0, Lol0;->t:Ljava/lang/Object;

    .line 410
    .line 411
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    move-object v8, v0

    .line 415
    move-object/from16 v0, p1

    .line 416
    .line 417
    goto/16 :goto_d

    .line 418
    .line 419
    :cond_11
    invoke-static {v7}, Lk21;->n(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    move-object v8, v11

    .line 423
    goto/16 :goto_e

    .line 424
    .line 425
    :cond_12
    iget-object v1, v0, Lol0;->t:Ljava/lang/Object;

    .line 426
    .line 427
    check-cast v1, Ld14;

    .line 428
    .line 429
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    move-object/from16 v2, p1

    .line 433
    .line 434
    goto :goto_c

    .line 435
    :cond_13
    iget-object v1, v0, Lol0;->v:Ljava/lang/Enum;

    .line 436
    .line 437
    check-cast v1, Lc14;

    .line 438
    .line 439
    iget-object v5, v0, Lol0;->t:Ljava/lang/Object;

    .line 440
    .line 441
    check-cast v5, Ld14;

    .line 442
    .line 443
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    goto :goto_a

    .line 447
    :cond_14
    iget-object v1, v0, Lol0;->v:Ljava/lang/Enum;

    .line 448
    .line 449
    check-cast v1, Lc14;

    .line 450
    .line 451
    iget-object v7, v0, Lol0;->t:Ljava/lang/Object;

    .line 452
    .line 453
    check-cast v7, Ld14;

    .line 454
    .line 455
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    move-object/from16 v12, p1

    .line 459
    .line 460
    check-cast v12, Ljava/lang/Boolean;

    .line 461
    .line 462
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 463
    .line 464
    .line 465
    move-result v12

    .line 466
    if-nez v12, :cond_16

    .line 467
    .line 468
    invoke-virtual {v9}, Lga3;->f()Lbu1;

    .line 469
    .line 470
    .line 471
    move-result-object v12

    .line 472
    iput-object v7, v0, Lol0;->t:Ljava/lang/Object;

    .line 473
    .line 474
    iput-object v1, v0, Lol0;->v:Ljava/lang/Enum;

    .line 475
    .line 476
    iput v5, v0, Lol0;->s:I

    .line 477
    .line 478
    invoke-virtual {v12, v0}, Lbu1;->a(Lbv3;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v5

    .line 482
    if-ne v5, v8, :cond_15

    .line 483
    .line 484
    goto :goto_e

    .line 485
    :cond_15
    move-object v5, v7

    .line 486
    :goto_a
    move-object/from16 v16, v5

    .line 487
    .line 488
    move-object v5, v1

    .line 489
    move-object/from16 v1, v16

    .line 490
    .line 491
    goto :goto_b

    .line 492
    :cond_16
    move-object v5, v1

    .line 493
    move-object v1, v7

    .line 494
    :goto_b
    new-instance v7, Ljl0;

    .line 495
    .line 496
    invoke-direct {v7, v11, v2, v10}, Ljl0;-><init>(Ldh0;Lpe1;I)V

    .line 497
    .line 498
    .line 499
    iput-object v1, v0, Lol0;->t:Ljava/lang/Object;

    .line 500
    .line 501
    iput-object v11, v0, Lol0;->v:Ljava/lang/Enum;

    .line 502
    .line 503
    iput v4, v0, Lol0;->s:I

    .line 504
    .line 505
    invoke-interface {v1, v5, v7, v0}, Ld14;->d(Lc14;Ldf1;Lbv3;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    if-ne v2, v8, :cond_17

    .line 510
    .line 511
    goto :goto_e

    .line 512
    :cond_17
    :goto_c
    if-nez v6, :cond_19

    .line 513
    .line 514
    iput-object v2, v0, Lol0;->t:Ljava/lang/Object;

    .line 515
    .line 516
    iput v3, v0, Lol0;->s:I

    .line 517
    .line 518
    invoke-interface {v1, v0}, Ld14;->c(Lbv3;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    if-ne v0, v8, :cond_18

    .line 523
    .line 524
    goto :goto_e

    .line 525
    :cond_18
    move-object v8, v2

    .line 526
    :goto_d
    check-cast v0, Ljava/lang/Boolean;

    .line 527
    .line 528
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 529
    .line 530
    .line 531
    move-result v0

    .line 532
    if-nez v0, :cond_1b

    .line 533
    .line 534
    invoke-virtual {v9}, Lga3;->f()Lbu1;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    iget-object v1, v0, Lbu1;->b:Lv24;

    .line 539
    .line 540
    iget-object v2, v0, Lbu1;->e:Ll6;

    .line 541
    .line 542
    iget-object v0, v0, Lbu1;->f:Ll6;

    .line 543
    .line 544
    invoke-virtual {v1, v2, v0}, Lv24;->e(Lne1;Lne1;)V

    .line 545
    .line 546
    .line 547
    goto :goto_e

    .line 548
    :cond_19
    move-object v8, v2

    .line 549
    goto :goto_e

    .line 550
    :cond_1a
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 551
    .line 552
    .line 553
    iget-object v0, v0, Lol0;->t:Ljava/lang/Object;

    .line 554
    .line 555
    check-cast v0, Ld14;

    .line 556
    .line 557
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 558
    .line 559
    .line 560
    check-cast v0, Lu13;

    .line 561
    .line 562
    invoke-interface {v0}, Lu13;->b()Ljb3;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-interface {v2, v0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v8

    .line 570
    :cond_1b
    :goto_e
    return-object v8

    .line 571
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

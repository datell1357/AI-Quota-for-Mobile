.class public final Lys;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public r:J

.field public s:J

.field public t:J

.field public u:I

.field public v:Z

.field public w:I

.field public final synthetic x:Lpt;


# direct methods
.method public constructor <init>(Lpt;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lys;->x:Lpt;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    .line 5
    .line 6
    .line 7
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
    invoke-virtual {p0, p2, p1}, Lys;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lys;

    .line 10
    .line 11
    sget-object p1, Lt64;->a:Lt64;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lys;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 0

    .line 1
    new-instance p2, Lys;

    .line 2
    .line 3
    iget-object p0, p0, Lys;->x:Lpt;

    .line 4
    .line 5
    invoke-direct {p2, p0, p1}, Lys;-><init>(Lpt;Ldh0;)V

    .line 6
    .line 7
    .line 8
    return-object p2
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lys;->x:Lpt;

    .line 4
    .line 5
    iget-object v0, v2, Lpt;->a:Landroid/content/Context;

    .line 6
    .line 7
    iget v3, v1, Lys;->w:I

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    sget-object v5, Lt64;->a:Lt64;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    sget-object v7, Lri0;->n:Lri0;

    .line 14
    .line 15
    packed-switch v3, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    return-object v0

    .line 25
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-object v5

    .line 29
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :pswitch_2
    iget-boolean v3, v1, Lys;->v:Z

    .line 35
    .line 36
    iget v4, v1, Lys;->u:I

    .line 37
    .line 38
    iget-wide v8, v1, Lys;->t:J

    .line 39
    .line 40
    iget-wide v10, v1, Lys;->s:J

    .line 41
    .line 42
    iget-wide v12, v1, Lys;->r:J

    .line 43
    .line 44
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    move-object/from16 v14, p1

    .line 48
    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-object v5

    .line 55
    :pswitch_4
    iget v3, v1, Lys;->u:I

    .line 56
    .line 57
    iget-wide v8, v1, Lys;->t:J

    .line 58
    .line 59
    iget-wide v10, v1, Lys;->s:J

    .line 60
    .line 61
    iget-wide v12, v1, Lys;->r:J

    .line 62
    .line 63
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    move v4, v3

    .line 67
    move-object/from16 v3, p1

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :pswitch_5
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    move-object/from16 v3, p1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Lpt;->l()Lps;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Lps;->c()La81;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iput v4, v1, Lys;->w:I

    .line 88
    .line 89
    invoke-static {v3, v1}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    if-ne v3, v7, :cond_0

    .line 94
    .line 95
    goto/16 :goto_5

    .line 96
    .line 97
    :cond_0
    :goto_0
    check-cast v3, Ld84;

    .line 98
    .line 99
    if-eqz v3, :cond_1

    .line 100
    .line 101
    invoke-virtual {v3}, Ld84;->b()J

    .line 102
    .line 103
    .line 104
    move-result-wide v8

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    const-wide/16 v8, 0x0

    .line 107
    .line 108
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 109
    .line 110
    .line 111
    move-result-wide v10

    .line 112
    const-wide/32 v12, 0xdbba0

    .line 113
    .line 114
    .line 115
    if-eqz v3, :cond_3

    .line 116
    .line 117
    sub-long v14, v10, v8

    .line 118
    .line 119
    cmp-long v3, v14, v12

    .line 120
    .line 121
    if-lez v3, :cond_2

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_2
    move v4, v6

    .line 125
    :cond_3
    :goto_2
    if-nez v4, :cond_4

    .line 126
    .line 127
    sget-object v0, Lez3;->a:Lra3;

    .line 128
    .line 129
    new-array v1, v6, [Ljava/lang/Object;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    return-object v5

    .line 138
    :cond_4
    sget-object v3, Lez3;->a:Lra3;

    .line 139
    .line 140
    new-array v14, v6, [Ljava/lang/Object;

    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-static {v14}, Lra3;->c([Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    iput-wide v12, v1, Lys;->r:J

    .line 149
    .line 150
    iput-wide v8, v1, Lys;->s:J

    .line 151
    .line 152
    iput-wide v10, v1, Lys;->t:J

    .line 153
    .line 154
    iput v4, v1, Lys;->u:I

    .line 155
    .line 156
    const/4 v3, 0x2

    .line 157
    iput v3, v1, Lys;->w:I

    .line 158
    .line 159
    invoke-virtual {v2, v1}, Lpt;->e(Lfh0;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    if-ne v3, v7, :cond_5

    .line 164
    .line 165
    goto/16 :goto_5

    .line 166
    .line 167
    :cond_5
    move-wide/from16 v16, v10

    .line 168
    .line 169
    move-wide v10, v8

    .line 170
    move-wide/from16 v8, v16

    .line 171
    .line 172
    :goto_3
    check-cast v3, Ljava/lang/Boolean;

    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-eqz v3, :cond_6

    .line 179
    .line 180
    iput-wide v12, v1, Lys;->r:J

    .line 181
    .line 182
    iput-wide v10, v1, Lys;->s:J

    .line 183
    .line 184
    iput-wide v8, v1, Lys;->t:J

    .line 185
    .line 186
    iput v4, v1, Lys;->u:I

    .line 187
    .line 188
    iput-boolean v3, v1, Lys;->v:Z

    .line 189
    .line 190
    const/4 v0, 0x3

    .line 191
    iput v0, v1, Lys;->w:I

    .line 192
    .line 193
    invoke-virtual {v2, v1}, Lpt;->m(Lfh0;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    if-ne v0, v7, :cond_9

    .line 198
    .line 199
    goto/16 :goto_5

    .line 200
    .line 201
    :cond_6
    invoke-virtual {v2}, Lpt;->l()Lps;

    .line 202
    .line 203
    .line 204
    move-result-object v14

    .line 205
    invoke-virtual {v14}, Lps;->d()La81;

    .line 206
    .line 207
    .line 208
    move-result-object v14

    .line 209
    iput-wide v12, v1, Lys;->r:J

    .line 210
    .line 211
    iput-wide v10, v1, Lys;->s:J

    .line 212
    .line 213
    iput-wide v8, v1, Lys;->t:J

    .line 214
    .line 215
    iput v4, v1, Lys;->u:I

    .line 216
    .line 217
    iput-boolean v3, v1, Lys;->v:Z

    .line 218
    .line 219
    const/4 v15, 0x4

    .line 220
    iput v15, v1, Lys;->w:I

    .line 221
    .line 222
    invoke-static {v14, v1}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v14

    .line 226
    if-ne v14, v7, :cond_7

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_7
    :goto_4
    check-cast v14, Ljava/lang/Boolean;

    .line 230
    .line 231
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 232
    .line 233
    .line 234
    move-result v14

    .line 235
    if-eqz v14, :cond_8

    .line 236
    .line 237
    new-instance v14, Landroid/content/Intent;

    .line 238
    .line 239
    invoke-virtual {v2}, Lpt;->i()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    move-result-object v15

    .line 243
    invoke-direct {v14, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .line 245
    .line 246
    const-string v15, "u.sage.ACTION_REFRESH"

    .line 247
    .line 248
    invoke-virtual {v14, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    .line 250
    .line 251
    const-string v15, "extra_refresh_source"

    .line 252
    .line 253
    const-string v6, "app_foreground"

    .line 254
    .line 255
    invoke-virtual {v14, v15, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    .line 257
    .line 258
    :try_start_0
    invoke-virtual {v0, v14}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 259
    .line 260
    .line 261
    sget-object v0, Lez3;->a:Lra3;

    .line 262
    .line 263
    const/4 v6, 0x0

    .line 264
    new-array v14, v6, [Ljava/lang/Object;

    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    invoke-static {v14}, Lra3;->c([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .line 271
    .line 272
    goto :goto_6

    .line 273
    :catch_0
    move-exception v0

    .line 274
    sget-object v6, Lez3;->a:Lra3;

    .line 275
    .line 276
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    const/4 v14, 0x0

    .line 280
    new-array v0, v14, [Ljava/lang/Object;

    .line 281
    .line 282
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    invoke-static {v0}, Lra3;->m([Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    iput-wide v12, v1, Lys;->r:J

    .line 289
    .line 290
    iput-wide v10, v1, Lys;->s:J

    .line 291
    .line 292
    iput-wide v8, v1, Lys;->t:J

    .line 293
    .line 294
    iput v4, v1, Lys;->u:I

    .line 295
    .line 296
    iput-boolean v3, v1, Lys;->v:Z

    .line 297
    .line 298
    const/4 v0, 0x5

    .line 299
    iput v0, v1, Lys;->w:I

    .line 300
    .line 301
    invoke-virtual {v2, v1}, Lpt;->b(Lfh0;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    if-ne v0, v7, :cond_9

    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_8
    sget-object v0, Lez3;->a:Lra3;

    .line 309
    .line 310
    const/4 v14, 0x0

    .line 311
    new-array v6, v14, [Ljava/lang/Object;

    .line 312
    .line 313
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    invoke-static {v6}, Lra3;->c([Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    iput-wide v12, v1, Lys;->r:J

    .line 320
    .line 321
    iput-wide v10, v1, Lys;->s:J

    .line 322
    .line 323
    iput-wide v8, v1, Lys;->t:J

    .line 324
    .line 325
    iput v4, v1, Lys;->u:I

    .line 326
    .line 327
    iput-boolean v3, v1, Lys;->v:Z

    .line 328
    .line 329
    const/4 v0, 0x6

    .line 330
    iput v0, v1, Lys;->w:I

    .line 331
    .line 332
    invoke-virtual {v2, v1}, Lpt;->b(Lfh0;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    if-ne v0, v7, :cond_9

    .line 337
    .line 338
    :goto_5
    return-object v7

    .line 339
    :cond_9
    :goto_6
    return-object v5

    .line 340
    nop

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

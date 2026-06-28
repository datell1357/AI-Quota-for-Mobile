.class public final Loz;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:Lpd;

.field public final synthetic u:F

.field public final synthetic v:Z

.field public final synthetic w:Lws1;

.field public final synthetic x:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lpd;FZLjava/lang/Object;Lws1;Ldh0;I)V
    .locals 0

    .line 19
    iput p7, p0, Loz;->r:I

    iput-object p1, p0, Loz;->t:Lpd;

    iput p2, p0, Loz;->u:F

    iput-boolean p3, p0, Loz;->v:Z

    iput-object p4, p0, Loz;->x:Ljava/lang/Object;

    iput-object p5, p0, Loz;->w:Lws1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method

.method public constructor <init>(Lpd;FZLws1;Lpg2;Ldh0;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Loz;->r:I

    .line 3
    .line 4
    iput-object p1, p0, Loz;->t:Lpd;

    .line 5
    .line 6
    iput p2, p0, Loz;->u:F

    .line 7
    .line 8
    iput-boolean p3, p0, Loz;->v:Z

    .line 9
    .line 10
    iput-object p4, p0, Loz;->w:Lws1;

    .line 11
    .line 12
    iput-object p5, p0, Loz;->x:Ljava/lang/Object;

    .line 13
    .line 14
    const/4 p1, 0x2

    .line 15
    invoke-direct {p0, p1, p6}, Lbv3;-><init>(ILdh0;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Loz;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    check-cast p1, Lqi0;

    .line 6
    .line 7
    check-cast p2, Ldh0;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Loz;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Loz;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Loz;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Loz;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Loz;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Loz;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p2, p1}, Loz;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Loz;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Loz;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 10

    .line 1
    iget p2, p0, Loz;->r:I

    .line 2
    .line 3
    iget-object v0, p0, Loz;->x:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v1, Loz;

    .line 9
    .line 10
    iget-object v5, p0, Loz;->w:Lws1;

    .line 11
    .line 12
    move-object v6, v0

    .line 13
    check-cast v6, Lpg2;

    .line 14
    .line 15
    iget-object v2, p0, Loz;->t:Lpd;

    .line 16
    .line 17
    iget v3, p0, Loz;->u:F

    .line 18
    .line 19
    iget-boolean v4, p0, Loz;->v:Z

    .line 20
    .line 21
    move-object v7, p1

    .line 22
    invoke-direct/range {v1 .. v7}, Loz;-><init>(Lpd;FZLws1;Lpg2;Ldh0;)V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :pswitch_0
    move-object v8, p1

    .line 27
    new-instance v2, Loz;

    .line 28
    .line 29
    move-object v6, v0

    .line 30
    check-cast v6, La30;

    .line 31
    .line 32
    iget-object v7, p0, Loz;->w:Lws1;

    .line 33
    .line 34
    const/4 v9, 0x1

    .line 35
    iget-object v3, p0, Loz;->t:Lpd;

    .line 36
    .line 37
    iget v4, p0, Loz;->u:F

    .line 38
    .line 39
    iget-boolean v5, p0, Loz;->v:Z

    .line 40
    .line 41
    invoke-direct/range {v2 .. v9}, Loz;-><init>(Lpd;FZLjava/lang/Object;Lws1;Ldh0;I)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :pswitch_1
    move-object v8, p1

    .line 46
    new-instance v2, Loz;

    .line 47
    .line 48
    move-object v6, v0

    .line 49
    check-cast v6, Lpz;

    .line 50
    .line 51
    iget-object v7, p0, Loz;->w:Lws1;

    .line 52
    .line 53
    const/4 v9, 0x0

    .line 54
    iget-object v3, p0, Loz;->t:Lpd;

    .line 55
    .line 56
    iget v4, p0, Loz;->u:F

    .line 57
    .line 58
    iget-boolean v5, p0, Loz;->v:Z

    .line 59
    .line 60
    invoke-direct/range {v2 .. v9}, Loz;-><init>(Lpd;FZLjava/lang/Object;Lws1;Ldh0;I)V

    .line 61
    .line 62
    .line 63
    return-object v2

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Loz;->r:I

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    sget-object v5, Lt64;->a:Lt64;

    .line 9
    .line 10
    iget-boolean v6, v0, Loz;->v:Z

    .line 11
    .line 12
    const-string v7, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    sget-object v8, Lri0;->n:Lri0;

    .line 15
    .line 16
    iget-object v9, v0, Loz;->t:Lpd;

    .line 17
    .line 18
    iget v10, v0, Loz;->u:F

    .line 19
    .line 20
    const/4 v11, 0x1

    .line 21
    const/4 v12, 0x2

    .line 22
    iget-object v13, v0, Loz;->x:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object v14, v0, Loz;->w:Lws1;

    .line 25
    .line 26
    const/4 v15, 0x0

    .line 27
    packed-switch v1, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    check-cast v13, Lpg2;

    .line 31
    .line 32
    iget v1, v0, Loz;->s:I

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    if-eq v1, v11, :cond_1

    .line 37
    .line 38
    if-ne v1, v12, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {v7}, Lk21;->n(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    move-object v5, v15

    .line 45
    goto :goto_3

    .line 46
    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v9, Lpd;->e:Lws2;

    .line 54
    .line 55
    invoke-virtual {v1}, Lws2;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcw0;

    .line 60
    .line 61
    iget v1, v1, Lcw0;->n:F

    .line 62
    .line 63
    invoke-static {v1, v10}, Lcw0;->b(FF)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_5

    .line 68
    .line 69
    if-nez v6, :cond_3

    .line 70
    .line 71
    new-instance v1, Lcw0;

    .line 72
    .line 73
    invoke-direct {v1, v10}, Lcw0;-><init>(F)V

    .line 74
    .line 75
    .line 76
    iput v11, v0, Loz;->s:I

    .line 77
    .line 78
    invoke-virtual {v9, v1, v0}, Lpd;->e(Ljava/lang/Object;Lbv3;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-ne v0, v8, :cond_4

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    invoke-interface {v13}, Ltr3;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Lws1;

    .line 90
    .line 91
    iput v12, v0, Loz;->s:I

    .line 92
    .line 93
    invoke-static {v9, v10, v1, v14, v0}, Lbz0;->a(Lpd;FLws1;Lws1;Lbv3;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-ne v0, v8, :cond_4

    .line 98
    .line 99
    :goto_1
    move-object v5, v8

    .line 100
    goto :goto_3

    .line 101
    :cond_4
    :goto_2
    invoke-interface {v13, v14}, Lpg2;->setValue(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :cond_5
    :goto_3
    return-object v5

    .line 105
    :pswitch_0
    check-cast v13, La30;

    .line 106
    .line 107
    iget v1, v0, Loz;->s:I

    .line 108
    .line 109
    if-eqz v1, :cond_8

    .line 110
    .line 111
    if-eq v1, v11, :cond_7

    .line 112
    .line 113
    if-ne v1, v12, :cond_6

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_6
    invoke-static {v7}, Lk21;->n(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    move-object v5, v15

    .line 120
    goto/16 :goto_7

    .line 121
    .line 122
    :cond_7
    :goto_4
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto :goto_7

    .line 126
    :cond_8
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v9, Lpd;->e:Lws2;

    .line 130
    .line 131
    invoke-virtual {v1}, Lws2;->getValue()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Lcw0;

    .line 136
    .line 137
    iget v1, v1, Lcw0;->n:F

    .line 138
    .line 139
    invoke-static {v1, v10}, Lcw0;->b(FF)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_e

    .line 144
    .line 145
    if-nez v6, :cond_9

    .line 146
    .line 147
    new-instance v1, Lcw0;

    .line 148
    .line 149
    invoke-direct {v1, v10}, Lcw0;-><init>(F)V

    .line 150
    .line 151
    .line 152
    iput v11, v0, Loz;->s:I

    .line 153
    .line 154
    invoke-virtual {v9, v1, v0}, Lpd;->e(Ljava/lang/Object;Lbv3;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-ne v0, v8, :cond_e

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_9
    iget-object v1, v9, Lpd;->e:Lws2;

    .line 162
    .line 163
    invoke-virtual {v1}, Lws2;->getValue()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    check-cast v1, Lcw0;

    .line 168
    .line 169
    iget v1, v1, Lcw0;->n:F

    .line 170
    .line 171
    invoke-static {v1, v4}, Lcw0;->b(FF)Z

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    if-eqz v6, :cond_a

    .line 176
    .line 177
    new-instance v15, Lhy2;

    .line 178
    .line 179
    invoke-direct {v15, v2, v3}, Lhy2;-><init>(J)V

    .line 180
    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_a
    iget v2, v13, La30;->a:F

    .line 184
    .line 185
    invoke-static {v1, v2}, Lcw0;->b(FF)Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_b

    .line 190
    .line 191
    new-instance v15, Lik1;

    .line 192
    .line 193
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 194
    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_b
    invoke-static {v1, v4}, Lcw0;->b(FF)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_c

    .line 202
    .line 203
    new-instance v15, Lt91;

    .line 204
    .line 205
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_c
    iget v2, v13, La30;->b:F

    .line 210
    .line 211
    invoke-static {v1, v2}, Lcw0;->b(FF)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_d

    .line 216
    .line 217
    new-instance v15, Lzw0;

    .line 218
    .line 219
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 220
    .line 221
    .line 222
    :cond_d
    :goto_5
    iput v12, v0, Loz;->s:I

    .line 223
    .line 224
    invoke-static {v9, v10, v15, v14, v0}, Lbz0;->a(Lpd;FLws1;Lws1;Lbv3;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    if-ne v0, v8, :cond_e

    .line 229
    .line 230
    :goto_6
    move-object v5, v8

    .line 231
    :cond_e
    :goto_7
    return-object v5

    .line 232
    :pswitch_1
    check-cast v13, Lpz;

    .line 233
    .line 234
    iget v1, v0, Loz;->s:I

    .line 235
    .line 236
    if-eqz v1, :cond_11

    .line 237
    .line 238
    if-eq v1, v11, :cond_10

    .line 239
    .line 240
    if-ne v1, v12, :cond_f

    .line 241
    .line 242
    goto :goto_8

    .line 243
    :cond_f
    invoke-static {v7}, Lk21;->n(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    move-object v5, v15

    .line 247
    goto :goto_b

    .line 248
    :cond_10
    :goto_8
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    goto :goto_b

    .line 252
    :cond_11
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    iget-object v1, v9, Lpd;->e:Lws2;

    .line 256
    .line 257
    invoke-virtual {v1}, Lws2;->getValue()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    check-cast v1, Lcw0;

    .line 262
    .line 263
    iget v1, v1, Lcw0;->n:F

    .line 264
    .line 265
    invoke-static {v1, v10}, Lcw0;->b(FF)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-nez v1, :cond_16

    .line 270
    .line 271
    if-nez v6, :cond_12

    .line 272
    .line 273
    new-instance v1, Lcw0;

    .line 274
    .line 275
    invoke-direct {v1, v10}, Lcw0;-><init>(F)V

    .line 276
    .line 277
    .line 278
    iput v11, v0, Loz;->s:I

    .line 279
    .line 280
    invoke-virtual {v9, v1, v0}, Lpd;->e(Ljava/lang/Object;Lbv3;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    if-ne v0, v8, :cond_16

    .line 285
    .line 286
    goto :goto_a

    .line 287
    :cond_12
    iget-object v1, v9, Lpd;->e:Lws2;

    .line 288
    .line 289
    invoke-virtual {v1}, Lws2;->getValue()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    check-cast v1, Lcw0;

    .line 294
    .line 295
    iget v1, v1, Lcw0;->n:F

    .line 296
    .line 297
    invoke-static {v1, v4}, Lcw0;->b(FF)Z

    .line 298
    .line 299
    .line 300
    move-result v6

    .line 301
    if-eqz v6, :cond_13

    .line 302
    .line 303
    new-instance v15, Lhy2;

    .line 304
    .line 305
    invoke-direct {v15, v2, v3}, Lhy2;-><init>(J)V

    .line 306
    .line 307
    .line 308
    goto :goto_9

    .line 309
    :cond_13
    iget v2, v13, Lpz;->a:F

    .line 310
    .line 311
    invoke-static {v1, v2}, Lcw0;->b(FF)Z

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    if-eqz v2, :cond_14

    .line 316
    .line 317
    new-instance v15, Lik1;

    .line 318
    .line 319
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 320
    .line 321
    .line 322
    goto :goto_9

    .line 323
    :cond_14
    invoke-static {v1, v4}, Lcw0;->b(FF)Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-eqz v1, :cond_15

    .line 328
    .line 329
    new-instance v15, Lt91;

    .line 330
    .line 331
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 332
    .line 333
    .line 334
    :cond_15
    :goto_9
    iput v12, v0, Loz;->s:I

    .line 335
    .line 336
    invoke-static {v9, v10, v15, v14, v0}, Lbz0;->a(Lpd;FLws1;Lws1;Lbv3;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    if-ne v0, v8, :cond_16

    .line 341
    .line 342
    :goto_a
    move-object v5, v8

    .line 343
    :cond_16
    :goto_b
    return-object v5

    .line 344
    nop

    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

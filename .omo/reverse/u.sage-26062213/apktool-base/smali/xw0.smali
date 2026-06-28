.class public final Lxw0;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:Lw33;

.field public t:Lw33;

.field public u:I

.field public synthetic v:Ljava/lang/Object;

.field public final synthetic w:Lwf3;


# direct methods
.method public constructor <init>(Lw33;Lwf3;Ldh0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lxw0;->r:I

    .line 3
    .line 4
    iput-object p1, p0, Lxw0;->t:Lw33;

    .line 5
    .line 6
    iput-object p2, p0, Lxw0;->w:Lwf3;

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    invoke-direct {p0, p1, p3}, Lbv3;-><init>(ILdh0;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lwf3;Ldh0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lxw0;->r:I

    .line 13
    iput-object p1, p0, Lxw0;->w:Lwf3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lxw0;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lqi0;

    .line 9
    .line 10
    check-cast p2, Ldh0;

    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Lxw0;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lxw0;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lxw0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lpe1;

    .line 24
    .line 25
    check-cast p2, Ldh0;

    .line 26
    .line 27
    invoke-virtual {p0, p2, p1}, Lxw0;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lxw0;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lxw0;->q(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 2

    .line 1
    iget v0, p0, Lxw0;->r:I

    .line 2
    .line 3
    iget-object v1, p0, Lxw0;->w:Lwf3;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Lxw0;

    .line 9
    .line 10
    invoke-direct {p0, v1, p1}, Lxw0;-><init>(Lwf3;Ldh0;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lxw0;->v:Ljava/lang/Object;

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_0
    new-instance v0, Lxw0;

    .line 17
    .line 18
    iget-object p0, p0, Lxw0;->t:Lw33;

    .line 19
    .line 20
    invoke-direct {v0, p0, v1, p1}, Lxw0;-><init>(Lw33;Lwf3;Ldh0;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, v0, Lxw0;->v:Ljava/lang/Object;

    .line 24
    .line 25
    return-object v0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lxw0;->r:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 5
    .line 6
    iget-object v3, p0, Lxw0;->w:Lwf3;

    .line 7
    .line 8
    sget-object v4, Lt64;->a:Lt64;

    .line 9
    .line 10
    sget-object v5, Lri0;->n:Lri0;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lxw0;->u:I

    .line 17
    .line 18
    packed-switch v0, :pswitch_data_1

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Lk21;->n(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    move-object v4, v6

    .line 25
    goto/16 :goto_a

    .line 26
    .line 27
    :pswitch_0
    iget-object v0, p0, Lxw0;->v:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lqi0;

    .line 30
    .line 31
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :pswitch_1
    iget-object v0, p0, Lxw0;->v:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lqi0;

    .line 38
    .line 39
    :goto_0
    :try_start_0
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :pswitch_2
    iget-object v0, p0, Lxw0;->v:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lqi0;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    :goto_1
    move-object v7, v0

    .line 49
    goto :goto_2

    .line 50
    :pswitch_3
    iget-object v0, p0, Lxw0;->s:Lw33;

    .line 51
    .line 52
    iget-object v2, p0, Lxw0;->v:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Lqi0;

    .line 55
    .line 56
    :try_start_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    .line 58
    .line 59
    :cond_1
    move-object v7, v2

    .line 60
    goto/16 :goto_7

    .line 61
    .line 62
    :catch_0
    move-object v0, v2

    .line 63
    goto/16 :goto_8

    .line 64
    .line 65
    :pswitch_4
    iget-object v0, p0, Lxw0;->s:Lw33;

    .line 66
    .line 67
    iget-object v2, p0, Lxw0;->v:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v2, Lqi0;

    .line 70
    .line 71
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_5

    .line 75
    :pswitch_5
    iget-object v0, p0, Lxw0;->t:Lw33;

    .line 76
    .line 77
    iget-object v2, p0, Lxw0;->s:Lw33;

    .line 78
    .line 79
    iget-object v7, p0, Lxw0;->v:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v7, Lqi0;

    .line 82
    .line 83
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :pswitch_6
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lxw0;->v:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p1, Lqi0;

    .line 93
    .line 94
    move-object v7, p1

    .line 95
    :cond_2
    :goto_2
    invoke-static {v7}, Ldm0;->B(Lqi0;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_8

    .line 100
    .line 101
    new-instance v0, Lw33;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 104
    .line 105
    .line 106
    iget-object p1, v3, Lwf3;->H:Lzy;

    .line 107
    .line 108
    if-eqz p1, :cond_4

    .line 109
    .line 110
    iput-object v7, p0, Lxw0;->v:Ljava/lang/Object;

    .line 111
    .line 112
    iput-object v0, p0, Lxw0;->s:Lw33;

    .line 113
    .line 114
    iput-object v0, p0, Lxw0;->t:Lw33;

    .line 115
    .line 116
    iput v1, p0, Lxw0;->u:I

    .line 117
    .line 118
    invoke-static {p1, p0}, Lzy;->H(Lzy;Lbv3;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-ne p1, v5, :cond_3

    .line 123
    .line 124
    goto/16 :goto_9

    .line 125
    .line 126
    :cond_3
    move-object v2, v0

    .line 127
    :goto_3
    check-cast p1, Lqw0;

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_4
    move-object v2, v0

    .line 131
    move-object p1, v6

    .line 132
    :goto_4
    iput-object p1, v0, Lw33;->n:Ljava/lang/Object;

    .line 133
    .line 134
    iget-object p1, v2, Lw33;->n:Ljava/lang/Object;

    .line 135
    .line 136
    instance-of v0, p1, Low0;

    .line 137
    .line 138
    if-eqz v0, :cond_2

    .line 139
    .line 140
    check-cast p1, Low0;

    .line 141
    .line 142
    iput-object v7, p0, Lxw0;->v:Ljava/lang/Object;

    .line 143
    .line 144
    iput-object v2, p0, Lxw0;->s:Lw33;

    .line 145
    .line 146
    iput-object v6, p0, Lxw0;->t:Lw33;

    .line 147
    .line 148
    const/4 v0, 0x2

    .line 149
    iput v0, p0, Lxw0;->u:I

    .line 150
    .line 151
    invoke-static {v3, p1, p0}, Lwf3;->K0(Lwf3;Low0;Lfh0;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-ne p1, v5, :cond_5

    .line 156
    .line 157
    goto :goto_9

    .line 158
    :cond_5
    move-object v0, v2

    .line 159
    move-object v2, v7

    .line 160
    :goto_5
    :try_start_2
    new-instance p1, Lxw0;

    .line 161
    .line 162
    invoke-direct {p1, v0, v3, v6}, Lxw0;-><init>(Lw33;Lwf3;Ldh0;)V

    .line 163
    .line 164
    .line 165
    iput-object v2, p0, Lxw0;->v:Ljava/lang/Object;

    .line 166
    .line 167
    iput-object v0, p0, Lxw0;->s:Lw33;

    .line 168
    .line 169
    const/4 v7, 0x3

    .line 170
    iput v7, p0, Lxw0;->u:I

    .line 171
    .line 172
    iget-object v7, v3, Lwf3;->a0:Ldg3;

    .line 173
    .line 174
    sget-object v8, Lxg2;->o:Lxg2;

    .line 175
    .line 176
    new-instance v9, Lp;

    .line 177
    .line 178
    const/16 v10, 0x18

    .line 179
    .line 180
    invoke-direct {v9, p1, v7, v6, v10}, Lp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7, v8, v9, p0}, Ldg3;->g(Lxg2;Ldf1;Lfh0;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p1
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 187
    if-ne p1, v5, :cond_6

    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_6
    move-object p1, v4

    .line 191
    :goto_6
    if-ne p1, v5, :cond_1

    .line 192
    .line 193
    goto :goto_9

    .line 194
    :goto_7
    :try_start_3
    iget-object p1, v0, Lw33;->n:Ljava/lang/Object;

    .line 195
    .line 196
    instance-of v0, p1, Lpw0;

    .line 197
    .line 198
    if-eqz v0, :cond_7

    .line 199
    .line 200
    check-cast p1, Lpw0;

    .line 201
    .line 202
    iput-object v7, p0, Lxw0;->v:Ljava/lang/Object;

    .line 203
    .line 204
    iput-object v6, p0, Lxw0;->s:Lw33;

    .line 205
    .line 206
    const/4 v0, 0x4

    .line 207
    iput v0, p0, Lxw0;->u:I

    .line 208
    .line 209
    invoke-static {v3, p1, p0}, Lwf3;->L0(Lwf3;Lpw0;Lfh0;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    if-ne p1, v5, :cond_2

    .line 214
    .line 215
    goto :goto_9

    .line 216
    :catch_1
    move-object v0, v7

    .line 217
    goto :goto_8

    .line 218
    :cond_7
    instance-of p1, p1, Lmw0;

    .line 219
    .line 220
    if-eqz p1, :cond_2

    .line 221
    .line 222
    iput-object v7, p0, Lxw0;->v:Ljava/lang/Object;

    .line 223
    .line 224
    iput-object v6, p0, Lxw0;->s:Lw33;

    .line 225
    .line 226
    const/4 p1, 0x5

    .line 227
    iput p1, p0, Lxw0;->u:I

    .line 228
    .line 229
    invoke-static {v3, p0}, Lwf3;->J0(Lwf3;Lfh0;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p1
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1

    .line 233
    if-ne p1, v5, :cond_2

    .line 234
    .line 235
    goto :goto_9

    .line 236
    :catch_2
    :goto_8
    iput-object v0, p0, Lxw0;->v:Ljava/lang/Object;

    .line 237
    .line 238
    iput-object v6, p0, Lxw0;->s:Lw33;

    .line 239
    .line 240
    const/4 p1, 0x6

    .line 241
    iput p1, p0, Lxw0;->u:I

    .line 242
    .line 243
    invoke-static {v3, p0}, Lwf3;->J0(Lwf3;Lfh0;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    if-ne p1, v5, :cond_0

    .line 248
    .line 249
    :goto_9
    move-object v4, v5

    .line 250
    :cond_8
    :goto_a
    return-object v4

    .line 251
    :pswitch_7
    iget-object v0, p0, Lxw0;->t:Lw33;

    .line 252
    .line 253
    iget v7, p0, Lxw0;->u:I

    .line 254
    .line 255
    if-eqz v7, :cond_a

    .line 256
    .line 257
    if-ne v7, v1, :cond_9

    .line 258
    .line 259
    iget-object v2, p0, Lxw0;->s:Lw33;

    .line 260
    .line 261
    iget-object v7, p0, Lxw0;->v:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v7, Lpe1;

    .line 264
    .line 265
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    goto :goto_d

    .line 269
    :cond_9
    invoke-static {v2}, Lk21;->n(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    move-object v4, v6

    .line 273
    goto :goto_f

    .line 274
    :cond_a
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    iget-object p1, p0, Lxw0;->v:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast p1, Lpe1;

    .line 280
    .line 281
    move-object v7, p1

    .line 282
    :goto_b
    iget-object p1, v0, Lw33;->n:Ljava/lang/Object;

    .line 283
    .line 284
    instance-of v2, p1, Lpw0;

    .line 285
    .line 286
    if-nez v2, :cond_f

    .line 287
    .line 288
    instance-of v2, p1, Lmw0;

    .line 289
    .line 290
    if-nez v2, :cond_f

    .line 291
    .line 292
    instance-of v2, p1, Lnw0;

    .line 293
    .line 294
    if-eqz v2, :cond_b

    .line 295
    .line 296
    check-cast p1, Lnw0;

    .line 297
    .line 298
    goto :goto_c

    .line 299
    :cond_b
    move-object p1, v6

    .line 300
    :goto_c
    if-eqz p1, :cond_c

    .line 301
    .line 302
    invoke-interface {v7, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    :cond_c
    iget-object p1, v3, Lwf3;->H:Lzy;

    .line 306
    .line 307
    if-eqz p1, :cond_e

    .line 308
    .line 309
    iput-object v7, p0, Lxw0;->v:Ljava/lang/Object;

    .line 310
    .line 311
    iput-object v0, p0, Lxw0;->s:Lw33;

    .line 312
    .line 313
    iput v1, p0, Lxw0;->u:I

    .line 314
    .line 315
    invoke-static {p1, p0}, Lzy;->H(Lzy;Lbv3;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    if-ne p1, v5, :cond_d

    .line 320
    .line 321
    move-object v4, v5

    .line 322
    goto :goto_f

    .line 323
    :cond_d
    move-object v2, v0

    .line 324
    :goto_d
    check-cast p1, Lqw0;

    .line 325
    .line 326
    goto :goto_e

    .line 327
    :cond_e
    move-object v2, v0

    .line 328
    move-object p1, v6

    .line 329
    :goto_e
    iput-object p1, v2, Lw33;->n:Ljava/lang/Object;

    .line 330
    .line 331
    goto :goto_b

    .line 332
    :cond_f
    :goto_f
    return-object v4

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    :pswitch_data_1
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

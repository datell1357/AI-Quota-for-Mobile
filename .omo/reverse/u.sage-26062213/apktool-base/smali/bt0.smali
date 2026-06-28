.class public final synthetic Lbt0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 14
    iput p4, p0, Lbt0;->n:I

    iput-object p1, p0, Lbt0;->o:Ljava/lang/Object;

    iput-object p2, p0, Lbt0;->p:Ljava/lang/Object;

    iput-object p3, p0, Lbt0;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 15
    iput p5, p0, Lbt0;->n:I

    iput-object p1, p0, Lbt0;->o:Ljava/lang/Object;

    iput-object p2, p0, Lbt0;->p:Ljava/lang/Object;

    iput-object p3, p0, Lbt0;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ly84;Lw3;Lne1;I)V
    .locals 0

    .line 1
    const/4 p4, 0x6

    .line 2
    iput p4, p0, Lbt0;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lbt0;->p:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lbt0;->q:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lbt0;->o:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lbt0;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    sget-object v4, Lt64;->a:Lt64;

    .line 7
    .line 8
    iget-object v5, p0, Lbt0;->q:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v6, p0, Lbt0;->p:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object p0, p0, Lbt0;->o:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object v7, p0

    .line 18
    check-cast v7, Ly70;

    .line 19
    .line 20
    move-object v9, v6

    .line 21
    check-cast v9, Le54;

    .line 22
    .line 23
    move-object v10, v5

    .line 24
    check-cast v10, Lka0;

    .line 25
    .line 26
    move-object v11, p1

    .line 27
    check-cast v11, Lag1;

    .line 28
    .line 29
    check-cast p2, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    and-int/lit8 p1, p0, 0x3

    .line 36
    .line 37
    if-eq p1, v2, :cond_0

    .line 38
    .line 39
    move v1, v3

    .line 40
    :cond_0
    and-int/2addr p0, v3

    .line 41
    invoke-virtual {v11, p0, v1}, Lag1;->N(IZ)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    const/4 v12, 0x0

    .line 49
    invoke-static/range {v7 .. v12}, Lwa2;->b(Ly70;Lnl3;Le54;Lka0;Lag1;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v11}, Lag1;->Q()V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-object v4

    .line 57
    :pswitch_0
    check-cast p0, Lio3;

    .line 58
    .line 59
    check-cast v6, Lnd2;

    .line 60
    .line 61
    check-cast v5, Lff1;

    .line 62
    .line 63
    check-cast p1, Lag1;

    .line 64
    .line 65
    check-cast p2, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const/4 p2, 0x7

    .line 71
    invoke-static {p2}, Lqj0;->f0(I)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    invoke-static {p0, v6, v5, p1, p2}, Lk30;->e(Lio3;Lnd2;Lff1;Lag1;I)V

    .line 76
    .line 77
    .line 78
    return-object v4

    .line 79
    :pswitch_1
    check-cast v6, Ly84;

    .line 80
    .line 81
    check-cast v5, Lw3;

    .line 82
    .line 83
    check-cast p0, Lne1;

    .line 84
    .line 85
    check-cast p1, Lag1;

    .line 86
    .line 87
    check-cast p2, Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {v3}, Lqj0;->f0(I)I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    invoke-static {v6, v5, p0, p1, p2}, Lqj0;->b(Ly84;Lw3;Lne1;Lag1;I)V

    .line 97
    .line 98
    .line 99
    return-object v4

    .line 100
    :pswitch_2
    check-cast p0, Ly84;

    .line 101
    .line 102
    check-cast v6, Lpe1;

    .line 103
    .line 104
    check-cast v5, Lnd2;

    .line 105
    .line 106
    check-cast p1, Lag1;

    .line 107
    .line 108
    check-cast p2, Ljava/lang/Integer;

    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-static {v3}, Lqj0;->f0(I)I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    invoke-static {p0, v6, v5, p1, p2}, Lqj0;->m(Ly84;Lpe1;Lnd2;Lag1;I)V

    .line 118
    .line 119
    .line 120
    return-object v4

    .line 121
    :pswitch_3
    check-cast p0, Lt33;

    .line 122
    .line 123
    check-cast v6, Ldg3;

    .line 124
    .line 125
    check-cast v5, Lbg3;

    .line 126
    .line 127
    check-cast p1, Ljava/lang/Float;

    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    check-cast p2, Ljava/lang/Float;

    .line 134
    .line 135
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    iget p2, p0, Lt33;->n:F

    .line 139
    .line 140
    sub-float/2addr p1, p2

    .line 141
    invoke-virtual {v6, p1}, Ldg3;->e(F)F

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    invoke-virtual {v6, p1}, Ldg3;->i(F)J

    .line 146
    .line 147
    .line 148
    move-result-wide p1

    .line 149
    iget-object v0, v5, Lbg3;->a:Ldg3;

    .line 150
    .line 151
    iget-object v1, v0, Ldg3;->k:Ljf3;

    .line 152
    .line 153
    invoke-virtual {v0, v1, p1, p2, v3}, Ldg3;->d(Ljf3;JI)J

    .line 154
    .line 155
    .line 156
    move-result-wide p1

    .line 157
    invoke-virtual {v6, p1, p2}, Ldg3;->h(J)F

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    invoke-virtual {v6, p1}, Ldg3;->e(F)F

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    iget p2, p0, Lt33;->n:F

    .line 166
    .line 167
    add-float/2addr p2, p1

    .line 168
    iput p2, p0, Lt33;->n:F

    .line 169
    .line 170
    return-object v4

    .line 171
    :pswitch_4
    check-cast p0, Lqi0;

    .line 172
    .line 173
    check-cast v6, Lpg3;

    .line 174
    .line 175
    check-cast v5, Lyh2;

    .line 176
    .line 177
    check-cast p1, Ljava/lang/Float;

    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    check-cast p2, Ljava/lang/Float;

    .line 184
    .line 185
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    new-instance p2, Lej2;

    .line 189
    .line 190
    const/4 v0, 0x0

    .line 191
    invoke-direct {p2, p1, v6, v5, v0}, Lej2;-><init>(FLpg3;Lyh2;Ldh0;)V

    .line 192
    .line 193
    .line 194
    const/4 p1, 0x3

    .line 195
    invoke-static {p0, v0, v0, p2, p1}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 196
    .line 197
    .line 198
    return-object v4

    .line 199
    :pswitch_5
    check-cast p0, Lyh2;

    .line 200
    .line 201
    check-cast v6, Lfc3;

    .line 202
    .line 203
    check-cast v5, Lka0;

    .line 204
    .line 205
    check-cast p1, Lag1;

    .line 206
    .line 207
    check-cast p2, Ljava/lang/Integer;

    .line 208
    .line 209
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    const/16 p2, 0x181

    .line 213
    .line 214
    invoke-static {p2}, Lqj0;->f0(I)I

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    invoke-static {p0, v6, v5, p1, p2}, Lqj0;->j(Lyh2;Lfc3;Lka0;Lag1;I)V

    .line 219
    .line 220
    .line 221
    return-object v4

    .line 222
    :pswitch_6
    move-object v7, p0

    .line 223
    check-cast v7, Lu/sage/MainActivity;

    .line 224
    .line 225
    move-object v10, v6

    .line 226
    check-cast v10, Ljava/lang/String;

    .line 227
    .line 228
    check-cast v5, Ltr3;

    .line 229
    .line 230
    move-object v11, p1

    .line 231
    check-cast v11, Lag1;

    .line 232
    .line 233
    check-cast p2, Ljava/lang/Integer;

    .line 234
    .line 235
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 236
    .line 237
    .line 238
    move-result p0

    .line 239
    sget p1, Lu/sage/MainActivity;->C:I

    .line 240
    .line 241
    and-int/lit8 p1, p0, 0x3

    .line 242
    .line 243
    if-eq p1, v2, :cond_2

    .line 244
    .line 245
    move p1, v3

    .line 246
    goto :goto_1

    .line 247
    :cond_2
    move p1, v1

    .line 248
    :goto_1
    and-int/2addr p0, v3

    .line 249
    invoke-virtual {v11, p0, p1}, Lag1;->N(IZ)Z

    .line 250
    .line 251
    .line 252
    move-result p0

    .line 253
    if-eqz p0, :cond_4

    .line 254
    .line 255
    invoke-interface {v5}, Ltr3;->getValue()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    check-cast p0, Ljava/util/List;

    .line 260
    .line 261
    if-eqz p0, :cond_3

    .line 262
    .line 263
    const p0, 0x7f4c8b36

    .line 264
    .line 265
    .line 266
    invoke-virtual {v11, p0}, Lag1;->W(I)V

    .line 267
    .line 268
    .line 269
    invoke-interface {v5}, Ltr3;->getValue()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    check-cast p0, Ljava/util/List;

    .line 274
    .line 275
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    invoke-static {p0}, Lo70;->h0(Ljava/util/List;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    check-cast p0, Ly84;

    .line 283
    .line 284
    invoke-static {p0}, Lmt1;->i(Ly84;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    invoke-interface {v5}, Ltr3;->getValue()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    move-object v9, p0

    .line 293
    check-cast v9, Ljava/util/List;

    .line 294
    .line 295
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    const/4 v12, 0x0

    .line 299
    invoke-virtual/range {v7 .. v12}, Lu/sage/MainActivity;->g(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lag1;I)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v11, v1}, Lag1;->p(Z)V

    .line 303
    .line 304
    .line 305
    goto :goto_2

    .line 306
    :cond_3
    const p0, 0x7f5b78b0

    .line 307
    .line 308
    .line 309
    invoke-virtual {v11, p0}, Lag1;->W(I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v11, v1}, Lag1;->p(Z)V

    .line 313
    .line 314
    .line 315
    goto :goto_2

    .line 316
    :cond_4
    invoke-virtual {v11}, Lag1;->Q()V

    .line 317
    .line 318
    .line 319
    :goto_2
    return-object v4

    .line 320
    :pswitch_7
    check-cast p0, Lne1;

    .line 321
    .line 322
    check-cast v6, Lne1;

    .line 323
    .line 324
    check-cast v5, Lne1;

    .line 325
    .line 326
    check-cast p1, Lag1;

    .line 327
    .line 328
    check-cast p2, Ljava/lang/Integer;

    .line 329
    .line 330
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    invoke-static {v3}, Lqj0;->f0(I)I

    .line 334
    .line 335
    .line 336
    move-result p2

    .line 337
    invoke-static {p0, v6, v5, p1, p2}, Lon4;->b(Lne1;Lne1;Lne1;Lag1;I)V

    .line 338
    .line 339
    .line 340
    return-object v4

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

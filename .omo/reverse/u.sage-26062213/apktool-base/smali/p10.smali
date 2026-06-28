.class public final Lp10;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:Ljava/util/Iterator;

.field public t:I

.field public u:I

.field public v:Landroid/content/Context;

.field public synthetic w:Ljava/lang/Object;

.field public x:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldh0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lp10;->r:I

    .line 3
    .line 4
    iput-object p1, p0, Lp10;->w:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lu/sage/MainActivity;Ldh0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lp10;->r:I

    .line 11
    iput-object p1, p0, Lp10;->x:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lp10;->r:I

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
    invoke-virtual {p0, p2, p1}, Lp10;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lp10;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lp10;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Lp10;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lp10;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lp10;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 1

    .line 1
    iget v0, p0, Lp10;->r:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lp10;

    .line 7
    .line 8
    iget-object p0, p0, Lp10;->x:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lu/sage/MainActivity;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1}, Lp10;-><init>(Lu/sage/MainActivity;Ldh0;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, v0, Lp10;->w:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_0
    new-instance p2, Lp10;

    .line 19
    .line 20
    iget-object p0, p0, Lp10;->w:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Landroid/content/Context;

    .line 23
    .line 24
    invoke-direct {p2, p0, p1}, Lp10;-><init>(Landroid/content/Context;Ldh0;)V

    .line 25
    .line 26
    .line 27
    return-object p2

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lp10;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    sget-object v3, Lri0;->n:Lri0;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    sget-object v5, Ly84;->x:Lt11;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lp10;->x:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lu/sage/MainActivity;

    .line 20
    .line 21
    iget-object v8, p0, Lp10;->w:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v8, Lqi0;

    .line 24
    .line 25
    iget v9, p0, Lp10;->u:I

    .line 26
    .line 27
    if-eqz v9, :cond_1

    .line 28
    .line 29
    if-ne v9, v4, :cond_0

    .line 30
    .line 31
    iget v2, p0, Lp10;->t:I

    .line 32
    .line 33
    iget-object v9, p0, Lp10;->s:Ljava/util/Iterator;

    .line 34
    .line 35
    iget-object v10, p0, Lp10;->v:Landroid/content/Context;

    .line 36
    .line 37
    check-cast v10, Lu/sage/MainActivity;

    .line 38
    .line 39
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {v2}, Lk21;->n(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    move-object v1, v6

    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    if-eqz v5, :cond_2

    .line 53
    .line 54
    invoke-virtual {v5}, Lw;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    new-instance p1, Lg1;

    .line 65
    .line 66
    invoke-direct {p1, v7, v5}, Lg1;-><init>(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    move-object v9, p1

    .line 70
    move-object v10, v0

    .line 71
    move v2, v7

    .line 72
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Ly84;

    .line 83
    .line 84
    sget v11, Lu/sage/MainActivity;->C:I

    .line 85
    .line 86
    invoke-virtual {v10, p1}, Lu/sage/MainActivity;->j(Ly84;)Lpt;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object v8, p0, Lp10;->w:Ljava/lang/Object;

    .line 91
    .line 92
    iput-object v10, p0, Lp10;->v:Landroid/content/Context;

    .line 93
    .line 94
    iput-object v9, p0, Lp10;->s:Ljava/util/Iterator;

    .line 95
    .line 96
    iput v2, p0, Lp10;->t:I

    .line 97
    .line 98
    iput v4, p0, Lp10;->u:I

    .line 99
    .line 100
    iget-object p1, p1, Lpt;->e:Lnv3;

    .line 101
    .line 102
    invoke-virtual {p1}, Lnv3;->getValue()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, La81;

    .line 107
    .line 108
    invoke-static {p1, p0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-ne p1, v3, :cond_4

    .line 113
    .line 114
    move-object v1, v3

    .line 115
    goto :goto_3

    .line 116
    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_3

    .line 123
    .line 124
    move v4, v7

    .line 125
    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    .line 126
    .line 127
    sget-object p0, Lez3;->a:Lra3;

    .line 128
    .line 129
    new-array p1, v7, [Ljava/lang/Object;

    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    new-instance p0, Lg1;

    .line 141
    .line 142
    invoke-direct {p0, v7, v5}, Lg1;-><init>(ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :goto_2
    invoke-virtual {p0}, Lg1;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_7

    .line 150
    .line 151
    invoke-virtual {p0}, Lg1;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Ly84;

    .line 156
    .line 157
    new-instance v2, Lkl0;

    .line 158
    .line 159
    invoke-direct {v2, v0, p1, v4, v6}, Lkl0;-><init>(Lu/sage/MainActivity;Ly84;ZLdh0;)V

    .line 160
    .line 161
    .line 162
    const/4 p1, 0x3

    .line 163
    invoke-static {v8, v6, v6, v2, p1}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_7
    :goto_3
    return-object v1

    .line 168
    :pswitch_0
    iget v0, p0, Lp10;->u:I

    .line 169
    .line 170
    if-eqz v0, :cond_9

    .line 171
    .line 172
    if-ne v0, v4, :cond_8

    .line 173
    .line 174
    iget v0, p0, Lp10;->t:I

    .line 175
    .line 176
    iget-object v2, p0, Lp10;->x:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v2, Ly84;

    .line 179
    .line 180
    iget-object v5, p0, Lp10;->s:Ljava/util/Iterator;

    .line 181
    .line 182
    iget-object v6, p0, Lp10;->v:Landroid/content/Context;

    .line 183
    .line 184
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_6

    .line 188
    .line 189
    :cond_8
    invoke-static {v2}, Lk21;->n(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    move-object v1, v6

    .line 193
    goto/16 :goto_7

    .line 194
    .line 195
    :cond_9
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    new-instance p1, Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    new-instance v0, Lg1;

    .line 207
    .line 208
    invoke-direct {v0, v7, v5}, Lg1;-><init>(ILjava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :cond_a
    :goto_4
    invoke-virtual {v0}, Lg1;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-eqz v2, :cond_c

    .line 216
    .line 217
    invoke-virtual {v0}, Lg1;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    move-object v5, v2

    .line 222
    check-cast v5, Ly84;

    .line 223
    .line 224
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    sget-object v6, Ly84;->r:Ly84;

    .line 228
    .line 229
    if-eq v5, v6, :cond_b

    .line 230
    .line 231
    sget-object v6, Ly84;->u:Ly84;

    .line 232
    .line 233
    if-ne v5, v6, :cond_a

    .line 234
    .line 235
    :cond_b
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_c
    iget-object v0, p0, Lp10;->w:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v0, Landroid/content/Context;

    .line 242
    .line 243
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    move-object v5, p1

    .line 248
    move-object v6, v0

    .line 249
    move v0, v7

    .line 250
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    if-eqz p1, :cond_f

    .line 255
    .line 256
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    move-object v2, p1

    .line 261
    check-cast v2, Ly84;

    .line 262
    .line 263
    new-instance p1, Lm10;

    .line 264
    .line 265
    invoke-direct {p1, v6, v2}, Lm10;-><init>(Landroid/content/Context;Ly84;)V

    .line 266
    .line 267
    .line 268
    iput-object v6, p0, Lp10;->v:Landroid/content/Context;

    .line 269
    .line 270
    iput-object v5, p0, Lp10;->s:Ljava/util/Iterator;

    .line 271
    .line 272
    iput-object v2, p0, Lp10;->x:Ljava/lang/Object;

    .line 273
    .line 274
    iput v0, p0, Lp10;->t:I

    .line 275
    .line 276
    iput v4, p0, Lp10;->u:I

    .line 277
    .line 278
    iget-object p1, p1, Lm10;->b:Lnv3;

    .line 279
    .line 280
    invoke-virtual {p1}, Lnv3;->getValue()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    check-cast p1, La81;

    .line 285
    .line 286
    invoke-static {p1, p0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    if-ne p1, v3, :cond_d

    .line 291
    .line 292
    move-object v1, v3

    .line 293
    goto :goto_7

    .line 294
    :cond_d
    :goto_6
    check-cast p1, Ljava/lang/Boolean;

    .line 295
    .line 296
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    if-eqz p1, :cond_e

    .line 301
    .line 302
    sget-object p1, Lez3;->a:Lra3;

    .line 303
    .line 304
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    new-array v8, v7, [Ljava/lang/Object;

    .line 308
    .line 309
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    invoke-static {v8}, Lra3;->c([Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    invoke-static {v6, v2}, Lbi4;->G(Landroid/content/Context;Ly84;)V

    .line 316
    .line 317
    .line 318
    goto :goto_5

    .line 319
    :cond_e
    sget-object p1, Lez3;->a:Lra3;

    .line 320
    .line 321
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    new-array v2, v7, [Ljava/lang/Object;

    .line 325
    .line 326
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    goto :goto_5

    .line 333
    :cond_f
    :goto_7
    return-object v1

    .line 334
    nop

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

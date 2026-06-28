.class public final Lbb2;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Lcb2;


# direct methods
.method public synthetic constructor <init>(Lcb2;I)V
    .locals 0

    .line 1
    iput p2, p0, Lbb2;->o:I

    .line 2
    .line 3
    iput-object p1, p0, Lbb2;->p:Lcb2;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lbb2;->o:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object p0, p0, Lbb2;->p:Lcb2;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcb2;->s:Lbz1;

    .line 11
    .line 12
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v2, v2, Lmm2;->H:Lmm2;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v2, v2, Lk82;->C:Ll82;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    :cond_0
    iget-object v2, v0, Lbz1;->a:Lxy1;

    .line 25
    .line 26
    invoke-static {v2}, Laz1;->a(Lxy1;)Lsr2;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lq9;

    .line 31
    .line 32
    invoke-virtual {v2}, Lq9;->getPlacementScope()Lcv2;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :cond_1
    iget-object v3, p0, Lcb2;->T:Lpe1;

    .line 37
    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-wide v3, p0, Lcb2;->U:J

    .line 45
    .line 46
    iget p0, p0, Lcb2;->V:F

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v0}, Lcv2;->a(Lcv2;Ldv2;)V

    .line 52
    .line 53
    .line 54
    iget-wide v5, v0, Ldv2;->r:J

    .line 55
    .line 56
    invoke-static {v3, v4, v5, v6}, Ljs1;->c(JJ)J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-virtual {v0, v2, v3, p0, v4}, Ldv2;->d0(JFLpe1;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-wide v4, p0, Lcb2;->U:J

    .line 70
    .line 71
    iget p0, p0, Lcb2;->V:F

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {v2, v0}, Lcv2;->a(Lcv2;Ldv2;)V

    .line 77
    .line 78
    .line 79
    iget-wide v6, v0, Ldv2;->r:J

    .line 80
    .line 81
    invoke-static {v4, v5, v6, v7}, Ljs1;->c(JJ)J

    .line 82
    .line 83
    .line 84
    move-result-wide v4

    .line 85
    invoke-virtual {v0, v4, v5, p0, v3}, Ldv2;->d0(JFLpe1;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    return-object v1

    .line 89
    :pswitch_0
    iget-object v0, p0, Lcb2;->s:Lbz1;

    .line 90
    .line 91
    invoke-virtual {v0}, Lbz1;->a()Lmm2;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-wide v2, p0, Lcb2;->O:J

    .line 96
    .line 97
    invoke-interface {v0, v2, v3}, Lya2;->e(J)Ldv2;

    .line 98
    .line 99
    .line 100
    return-object v1

    .line 101
    :pswitch_1
    iget-object v0, p0, Lcb2;->s:Lbz1;

    .line 102
    .line 103
    const/4 v2, 0x0

    .line 104
    iput v2, v0, Lbz1;->i:I

    .line 105
    .line 106
    iget-object v3, v0, Lbz1;->a:Lxy1;

    .line 107
    .line 108
    invoke-virtual {v3}, Lxy1;->z()Lug2;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    iget-object v4, v3, Lug2;->n:[Ljava/lang/Object;

    .line 113
    .line 114
    iget v3, v3, Lug2;->p:I

    .line 115
    .line 116
    move v5, v2

    .line 117
    :goto_1
    const v6, 0x7fffffff

    .line 118
    .line 119
    .line 120
    if-ge v5, v3, :cond_4

    .line 121
    .line 122
    aget-object v7, v4, v5

    .line 123
    .line 124
    check-cast v7, Lxy1;

    .line 125
    .line 126
    iget-object v7, v7, Lxy1;->T:Lbz1;

    .line 127
    .line 128
    iget-object v7, v7, Lbz1;->p:Lcb2;

    .line 129
    .line 130
    iget v8, v7, Lcb2;->v:I

    .line 131
    .line 132
    iput v8, v7, Lcb2;->u:I

    .line 133
    .line 134
    iput v6, v7, Lcb2;->v:I

    .line 135
    .line 136
    iput-boolean v2, v7, Lcb2;->G:Z

    .line 137
    .line 138
    iget-object v6, v7, Lcb2;->y:Lvy1;

    .line 139
    .line 140
    sget-object v8, Lvy1;->o:Lvy1;

    .line 141
    .line 142
    if-ne v6, v8, :cond_3

    .line 143
    .line 144
    sget-object v6, Lvy1;->p:Lvy1;

    .line 145
    .line 146
    iput-object v6, v7, Lcb2;->y:Lvy1;

    .line 147
    .line 148
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_4
    iget-object v3, v0, Lbz1;->a:Lxy1;

    .line 152
    .line 153
    iget-object v0, v0, Lbz1;->a:Lxy1;

    .line 154
    .line 155
    invoke-virtual {v3}, Lxy1;->z()Lug2;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    iget-object v4, v3, Lug2;->n:[Ljava/lang/Object;

    .line 160
    .line 161
    iget v3, v3, Lug2;->p:I

    .line 162
    .line 163
    move v5, v2

    .line 164
    :goto_2
    if-ge v5, v3, :cond_5

    .line 165
    .line 166
    aget-object v7, v4, v5

    .line 167
    .line 168
    check-cast v7, Lxy1;

    .line 169
    .line 170
    iget-object v7, v7, Lxy1;->T:Lbz1;

    .line 171
    .line 172
    iget-object v7, v7, Lbz1;->p:Lcb2;

    .line 173
    .line 174
    iget-object v7, v7, Lcb2;->K:Lyy1;

    .line 175
    .line 176
    iput-boolean v2, v7, Lyy1;->d:Z

    .line 177
    .line 178
    add-int/lit8 v5, v5, 0x1

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_5
    invoke-virtual {p0}, Lcb2;->n()Lgr1;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    iget-boolean v3, v3, Lk82;->B:Z

    .line 186
    .line 187
    if-eqz v3, :cond_6

    .line 188
    .line 189
    invoke-virtual {v0}, Lxy1;->n()Ljava/util/List;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    check-cast v3, Lrg2;

    .line 194
    .line 195
    iget-object v4, v3, Lrg2;->n:Lug2;

    .line 196
    .line 197
    iget v4, v4, Lug2;->p:I

    .line 198
    .line 199
    move v5, v2

    .line 200
    :goto_3
    if-ge v5, v4, :cond_6

    .line 201
    .line 202
    invoke-virtual {v3, v5}, Lrg2;->get(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    check-cast v7, Lxy1;

    .line 207
    .line 208
    iget-object v7, v7, Lxy1;->S:Lbo;

    .line 209
    .line 210
    iget-object v7, v7, Lbo;->e:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v7, Lmm2;

    .line 213
    .line 214
    const/4 v8, 0x1

    .line 215
    iput-boolean v8, v7, Lk82;->B:Z

    .line 216
    .line 217
    add-int/lit8 v5, v5, 0x1

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_6
    invoke-virtual {p0}, Lcb2;->n()Lgr1;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v3}, Lmm2;->v0()Leb2;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-interface {v3}, Leb2;->d()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Lcb2;->n()Lgr1;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    iget-boolean p0, p0, Lk82;->B:Z

    .line 236
    .line 237
    if-eqz p0, :cond_7

    .line 238
    .line 239
    invoke-virtual {v0}, Lxy1;->n()Ljava/util/List;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    check-cast p0, Lrg2;

    .line 244
    .line 245
    iget-object v3, p0, Lrg2;->n:Lug2;

    .line 246
    .line 247
    iget v3, v3, Lug2;->p:I

    .line 248
    .line 249
    move v4, v2

    .line 250
    :goto_4
    if-ge v4, v3, :cond_7

    .line 251
    .line 252
    invoke-virtual {p0, v4}, Lrg2;->get(I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    check-cast v5, Lxy1;

    .line 257
    .line 258
    iget-object v5, v5, Lxy1;->S:Lbo;

    .line 259
    .line 260
    iget-object v5, v5, Lbo;->e:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v5, Lmm2;

    .line 263
    .line 264
    iput-boolean v2, v5, Lk82;->B:Z

    .line 265
    .line 266
    add-int/lit8 v4, v4, 0x1

    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_7
    invoke-virtual {v0}, Lxy1;->z()Lug2;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    iget-object v3, p0, Lug2;->n:[Ljava/lang/Object;

    .line 274
    .line 275
    iget p0, p0, Lug2;->p:I

    .line 276
    .line 277
    move v4, v2

    .line 278
    :goto_5
    if-ge v4, p0, :cond_b

    .line 279
    .line 280
    aget-object v5, v3, v4

    .line 281
    .line 282
    check-cast v5, Lxy1;

    .line 283
    .line 284
    iget-object v7, v5, Lxy1;->T:Lbz1;

    .line 285
    .line 286
    iget-object v8, v7, Lbz1;->p:Lcb2;

    .line 287
    .line 288
    iget v8, v8, Lcb2;->u:I

    .line 289
    .line 290
    invoke-virtual {v5}, Lxy1;->v()I

    .line 291
    .line 292
    .line 293
    move-result v9

    .line 294
    if-eq v8, v9, :cond_a

    .line 295
    .line 296
    invoke-virtual {v0}, Lxy1;->O()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0}, Lxy1;->C()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v5}, Lxy1;->v()I

    .line 303
    .line 304
    .line 305
    move-result v8

    .line 306
    if-ne v8, v6, :cond_a

    .line 307
    .line 308
    iget-boolean v8, v7, Lbz1;->c:Z

    .line 309
    .line 310
    if-nez v8, :cond_8

    .line 311
    .line 312
    invoke-static {v5}, Lix;->C(Lxy1;)Z

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    if-eqz v5, :cond_9

    .line 317
    .line 318
    :cond_8
    iget-object v5, v7, Lbz1;->q:Lq82;

    .line 319
    .line 320
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v5, v2}, Lq82;->k0(Z)V

    .line 324
    .line 325
    .line 326
    :cond_9
    iget-object v5, v7, Lbz1;->p:Lcb2;

    .line 327
    .line 328
    invoke-virtual {v5}, Lcb2;->l0()V

    .line 329
    .line 330
    .line 331
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 332
    .line 333
    goto :goto_5

    .line 334
    :cond_b
    invoke-virtual {v0}, Lxy1;->z()Lug2;

    .line 335
    .line 336
    .line 337
    move-result-object p0

    .line 338
    iget-object v0, p0, Lug2;->n:[Ljava/lang/Object;

    .line 339
    .line 340
    iget p0, p0, Lug2;->p:I

    .line 341
    .line 342
    :goto_6
    if-ge v2, p0, :cond_c

    .line 343
    .line 344
    aget-object v3, v0, v2

    .line 345
    .line 346
    check-cast v3, Lxy1;

    .line 347
    .line 348
    iget-object v3, v3, Lxy1;->T:Lbz1;

    .line 349
    .line 350
    iget-object v3, v3, Lbz1;->p:Lcb2;

    .line 351
    .line 352
    iget-object v3, v3, Lcb2;->K:Lyy1;

    .line 353
    .line 354
    iget-boolean v4, v3, Lyy1;->d:Z

    .line 355
    .line 356
    iput-boolean v4, v3, Lyy1;->e:Z

    .line 357
    .line 358
    add-int/lit8 v2, v2, 0x1

    .line 359
    .line 360
    goto :goto_6

    .line 361
    :cond_c
    return-object v1

    .line 362
    nop

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

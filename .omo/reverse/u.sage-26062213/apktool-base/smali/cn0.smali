.class public final Lcn0;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:Ljava/lang/Object;

.field public u:Ljava/lang/Object;

.field public v:Ljava/lang/Object;

.field public final synthetic w:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lfn0;Lhi0;Ldf1;Ldh0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcn0;->r:I

    .line 16
    iput-object p1, p0, Lcn0;->t:Ljava/lang/Object;

    iput-object p2, p0, Lcn0;->v:Ljava/lang/Object;

    iput-object p3, p0, Lcn0;->w:Ljava/lang/Object;

    invoke-direct {p0, v0, p4}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method

.method public constructor <init>(Ls51;Ljava/lang/Object;Ldh0;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcn0;->r:I

    .line 15
    iput-object p1, p0, Lcn0;->t:Ljava/lang/Object;

    iput-object p2, p0, Lcn0;->w:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method

.method public constructor <init>(Lw33;Lfn0;Lu33;Ldh0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn0;->r:I

    .line 3
    .line 4
    iput-object p1, p0, Lcn0;->v:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lcn0;->t:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lcn0;->w:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-direct {p0, p1, p4}, Lbv3;-><init>(ILdh0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcn0;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object v2, p0, Lcn0;->w:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lcn0;->t:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Ldh0;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    new-instance p0, Lcn0;

    .line 15
    .line 16
    check-cast v3, Ls51;

    .line 17
    .line 18
    invoke-direct {p0, v3, v2, p1}, Lcn0;-><init>(Ls51;Ljava/lang/Object;Ldh0;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcn0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :pswitch_0
    new-instance v0, Lcn0;

    .line 27
    .line 28
    check-cast v3, Lfn0;

    .line 29
    .line 30
    iget-object p0, p0, Lcn0;->v:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Lhi0;

    .line 33
    .line 34
    check-cast v2, Ldf1;

    .line 35
    .line 36
    invoke-direct {v0, v3, p0, v2, p1}, Lcn0;-><init>(Lfn0;Lhi0;Ldf1;Ldh0;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcn0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :pswitch_1
    new-instance v0, Lcn0;

    .line 45
    .line 46
    iget-object p0, p0, Lcn0;->v:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Lw33;

    .line 49
    .line 50
    check-cast v3, Lfn0;

    .line 51
    .line 52
    check-cast v2, Lu33;

    .line 53
    .line 54
    invoke-direct {v0, p0, v3, v2, p1}, Lcn0;-><init>(Lw33;Lfn0;Lu33;Ldh0;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcn0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lcn0;->r:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x3

    .line 5
    sget-object v3, Lt64;->a:Lt64;

    .line 6
    .line 7
    iget-object v4, p0, Lcn0;->w:Ljava/lang/Object;

    .line 8
    .line 9
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    sget-object v6, Lri0;->n:Lri0;

    .line 12
    .line 13
    iget-object v7, p0, Lcn0;->t:Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    const/4 v9, 0x0

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast v7, Ls51;

    .line 21
    .line 22
    iget-object v0, v7, Lj51;->a:Ljava/io/File;

    .line 23
    .line 24
    iget v1, p0, Lcn0;->s:I

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    if-ne v1, v8, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lcn0;->v:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Ljava/io/FileOutputStream;

    .line 33
    .line 34
    iget-object p0, p0, Lcn0;->u:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Ljava/io/FileOutputStream;

    .line 37
    .line 38
    :try_start_0
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    move-object v3, v9

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    .line 53
    .line 54
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    .line 56
    .line 57
    :try_start_2
    iget-object p1, v7, Lj51;->b:Loi3;

    .line 58
    .line 59
    new-instance v2, Ll64;

    .line 60
    .line 61
    invoke-direct {v2, v1}, Ll64;-><init>(Ljava/io/FileOutputStream;)V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcn0;->u:Ljava/lang/Object;

    .line 65
    .line 66
    iput-object v1, p0, Lcn0;->v:Ljava/lang/Object;

    .line 67
    .line 68
    iput v8, p0, Lcn0;->s:I

    .line 69
    .line 70
    invoke-interface {p1, v4, v2}, Loi3;->i(Ljava/lang/Object;Ll64;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    .line 72
    .line 73
    if-ne v3, v6, :cond_2

    .line 74
    .line 75
    move-object v3, v6

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    move-object p0, v1

    .line 78
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    .line 84
    .line 85
    :try_start_4
    invoke-static {p0, v9}, Lfl4;->j(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 86
    .line 87
    .line 88
    :goto_1
    return-object v3

    .line 89
    :catch_0
    move-exception p0

    .line 90
    goto :goto_3

    .line 91
    :catchall_1
    move-exception p1

    .line 92
    move-object p0, v1

    .line 93
    :goto_2
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 94
    :catchall_2
    move-exception v1

    .line 95
    :try_start_6
    invoke-static {p0, p1}, Lfl4;->j(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 99
    :goto_3
    instance-of p1, p0, Ljava/io/FileNotFoundException;

    .line 100
    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p0, Ljava/io/FileNotFoundException;

    .line 108
    .line 109
    invoke-static {p1, p0}, Lmt1;->a0(Ljava/lang/String;Ljava/io/FileNotFoundException;)Ljava/lang/Exception;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    :cond_3
    throw p0

    .line 114
    :pswitch_0
    check-cast v7, Lfn0;

    .line 115
    .line 116
    iget v0, p0, Lcn0;->s:I

    .line 117
    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    if-eq v0, v8, :cond_6

    .line 121
    .line 122
    if-eq v0, v1, :cond_5

    .line 123
    .line 124
    if-ne v0, v2, :cond_4

    .line 125
    .line 126
    iget-object v6, p0, Lcn0;->u:Ljava/lang/Object;

    .line 127
    .line 128
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_8

    .line 132
    .line 133
    :cond_4
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :goto_4
    move-object v6, v9

    .line 137
    goto :goto_8

    .line 138
    :cond_5
    iget-object v0, p0, Lcn0;->u:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v0, Lam0;

    .line 141
    .line 142
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_6
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_7
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    iput v8, p0, Lcn0;->s:I

    .line 154
    .line 155
    invoke-static {v7, v8, p0}, Lfn0;->h(Lfn0;ZLfh0;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    if-ne p1, v6, :cond_8

    .line 160
    .line 161
    goto :goto_8

    .line 162
    :cond_8
    :goto_5
    move-object v0, p1

    .line 163
    check-cast v0, Lam0;

    .line 164
    .line 165
    iget-object p1, p0, Lcn0;->v:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast p1, Lhi0;

    .line 168
    .line 169
    new-instance v3, Ln;

    .line 170
    .line 171
    check-cast v4, Ldf1;

    .line 172
    .line 173
    const/16 v5, 0x11

    .line 174
    .line 175
    invoke-direct {v3, v4, v0, v9, v5}, Ln;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 176
    .line 177
    .line 178
    iput-object v0, p0, Lcn0;->u:Ljava/lang/Object;

    .line 179
    .line 180
    iput v1, p0, Lcn0;->s:I

    .line 181
    .line 182
    invoke-static {p1, v3, p0}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    if-ne p1, v6, :cond_9

    .line 187
    .line 188
    goto :goto_8

    .line 189
    :cond_9
    :goto_6
    iget-object v1, v0, Lam0;->b:Ljava/lang/Object;

    .line 190
    .line 191
    if-eqz v1, :cond_a

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    goto :goto_7

    .line 198
    :cond_a
    const/4 v1, 0x0

    .line 199
    :goto_7
    iget v3, v0, Lam0;->c:I

    .line 200
    .line 201
    if-ne v1, v3, :cond_c

    .line 202
    .line 203
    iget-object v0, v0, Lam0;->b:Ljava/lang/Object;

    .line 204
    .line 205
    invoke-static {v0, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-nez v0, :cond_b

    .line 210
    .line 211
    iput-object p1, p0, Lcn0;->u:Ljava/lang/Object;

    .line 212
    .line 213
    iput v2, p0, Lcn0;->s:I

    .line 214
    .line 215
    invoke-virtual {v7, p1, v8, p0}, Lfn0;->k(Ljava/lang/Object;ZLfh0;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    if-ne p0, v6, :cond_b

    .line 220
    .line 221
    goto :goto_8

    .line 222
    :cond_b
    move-object v6, p1

    .line 223
    goto :goto_8

    .line 224
    :cond_c
    const-string p0, "Data in DataStore was mutated but DataStore is only compatible with Immutable types."

    .line 225
    .line 226
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :goto_8
    return-object v6

    .line 231
    :pswitch_1
    check-cast v4, Lu33;

    .line 232
    .line 233
    iget-object v0, p0, Lcn0;->v:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v0, Lw33;

    .line 236
    .line 237
    check-cast v7, Lfn0;

    .line 238
    .line 239
    iget v10, p0, Lcn0;->s:I

    .line 240
    .line 241
    if-eqz v10, :cond_10

    .line 242
    .line 243
    if-eq v10, v8, :cond_f

    .line 244
    .line 245
    if-eq v10, v1, :cond_e

    .line 246
    .line 247
    if-ne v10, v2, :cond_d

    .line 248
    .line 249
    iget-object p0, p0, Lcn0;->u:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast p0, Ljava/io/Serializable;

    .line 252
    .line 253
    move-object v4, p0

    .line 254
    check-cast v4, Lu33;

    .line 255
    .line 256
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    goto :goto_c

    .line 260
    :cond_d
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    move-object v3, v9

    .line 264
    goto :goto_d

    .line 265
    :cond_e
    iget-object v1, p0, Lcn0;->u:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v1, Ljava/io/Serializable;

    .line 268
    .line 269
    check-cast v1, Lu33;

    .line 270
    .line 271
    :try_start_7
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_7
    .catch Lxi0; {:try_start_7 .. :try_end_7} :catch_1

    .line 272
    .line 273
    .line 274
    goto :goto_a

    .line 275
    :cond_f
    iget-object v5, p0, Lcn0;->u:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v5, Ljava/io/Serializable;

    .line 278
    .line 279
    check-cast v5, Lw33;

    .line 280
    .line 281
    :try_start_8
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_8
    .catch Lxi0; {:try_start_8 .. :try_end_8} :catch_1

    .line 282
    .line 283
    .line 284
    goto :goto_9

    .line 285
    :cond_10
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    :try_start_9
    iput-object v0, p0, Lcn0;->u:Ljava/lang/Object;

    .line 289
    .line 290
    iput v8, p0, Lcn0;->s:I

    .line 291
    .line 292
    invoke-virtual {v7, p0}, Lfn0;->j(Lfh0;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    if-ne p1, v6, :cond_11

    .line 297
    .line 298
    goto :goto_b

    .line 299
    :cond_11
    move-object v5, v0

    .line 300
    :goto_9
    iput-object p1, v5, Lw33;->n:Ljava/lang/Object;

    .line 301
    .line 302
    invoke-virtual {v7}, Lfn0;->i()Lvs1;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    iput-object v4, p0, Lcn0;->u:Ljava/lang/Object;

    .line 307
    .line 308
    iput v1, p0, Lcn0;->s:I

    .line 309
    .line 310
    invoke-interface {p1, p0}, Lvs1;->b(Lfh0;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    if-ne p1, v6, :cond_12

    .line 315
    .line 316
    goto :goto_b

    .line 317
    :cond_12
    move-object v1, v4

    .line 318
    :goto_a
    check-cast p1, Ljava/lang/Number;

    .line 319
    .line 320
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 321
    .line 322
    .line 323
    move-result p1

    .line 324
    iput p1, v1, Lu33;->n:I
    :try_end_9
    .catch Lxi0; {:try_start_9 .. :try_end_9} :catch_1

    .line 325
    .line 326
    goto :goto_d

    .line 327
    :catch_1
    iget-object p1, v0, Lw33;->n:Ljava/lang/Object;

    .line 328
    .line 329
    iput-object v4, p0, Lcn0;->u:Ljava/lang/Object;

    .line 330
    .line 331
    iput v2, p0, Lcn0;->s:I

    .line 332
    .line 333
    invoke-virtual {v7, p1, v8, p0}, Lfn0;->k(Ljava/lang/Object;ZLfh0;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    if-ne p1, v6, :cond_13

    .line 338
    .line 339
    :goto_b
    move-object v3, v6

    .line 340
    goto :goto_d

    .line 341
    :cond_13
    :goto_c
    check-cast p1, Ljava/lang/Number;

    .line 342
    .line 343
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 344
    .line 345
    .line 346
    move-result p0

    .line 347
    iput p0, v4, Lu33;->n:I

    .line 348
    .line 349
    :goto_d
    return-object v3

    .line 350
    nop

    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

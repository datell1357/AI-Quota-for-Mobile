.class public final Lu23;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ltw3;

.field public final b:Laz0;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Z

.field public final h:Z

.field public final i:Le7;

.field public final j:Lra3;

.field public final k:Lh23;

.field public final l:Z

.field public m:Laa3;

.field public n:Lr23;

.field public o:Lqa3;

.field public final p:Lvh;


# direct methods
.method public constructor <init>(Ltw3;Laz0;IIIIZZLe7;Lra3;Lh23;Lk63;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lu23;->a:Ltw3;

    .line 14
    .line 15
    iput-object p2, p0, Lu23;->b:Laz0;

    .line 16
    .line 17
    iput p3, p0, Lu23;->c:I

    .line 18
    .line 19
    iput p4, p0, Lu23;->d:I

    .line 20
    .line 21
    iput p5, p0, Lu23;->e:I

    .line 22
    .line 23
    iput p6, p0, Lu23;->f:I

    .line 24
    .line 25
    iput-boolean p7, p0, Lu23;->g:Z

    .line 26
    .line 27
    iput-boolean p8, p0, Lu23;->h:Z

    .line 28
    .line 29
    iput-object p9, p0, Lu23;->i:Le7;

    .line 30
    .line 31
    iput-object p10, p0, Lu23;->j:Lra3;

    .line 32
    .line 33
    iput-object p11, p0, Lu23;->k:Lh23;

    .line 34
    .line 35
    iget-object p1, p12, Lk63;->b:Ljava/lang/String;

    .line 36
    .line 37
    const-string p2, "GET"

    .line 38
    .line 39
    invoke-static {p1, p2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    xor-int/lit8 p1, p1, 0x1

    .line 44
    .line 45
    iput-boolean p1, p0, Lu23;->l:Z

    .line 46
    .line 47
    new-instance p1, Lvh;

    .line 48
    .line 49
    invoke-direct {p1}, Lvh;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lu23;->p:Lvh;

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final a(Li23;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lu23;->p:Lvh;

    .line 2
    .line 3
    invoke-virtual {v0}, Lvh;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, p0, Lu23;->o:Lqa3;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    if-eqz p1, :cond_5

    .line 17
    .line 18
    monitor-enter p1

    .line 19
    :try_start_0
    iget v0, p1, Li23;->l:I

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    iget-boolean v0, p1, Li23;->j:Z

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    iget-object v0, p1, Li23;->c:Lqa3;

    .line 31
    .line 32
    iget-object v0, v0, Lqa3;->a:Le7;

    .line 33
    .line 34
    iget-object v0, v0, Le7;->h:Lcn1;

    .line 35
    .line 36
    iget-object v3, p0, Lu23;->i:Le7;

    .line 37
    .line 38
    iget-object v3, v3, Le7;->h:Lcn1;

    .line 39
    .line 40
    invoke-static {v0, v3}, Lhi4;->a(Lcn1;Lcn1;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_4

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    iget-object v2, p1, Li23;->c:Lqa3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    :goto_0
    monitor-exit p1

    .line 50
    if-eqz v2, :cond_5

    .line 51
    .line 52
    iput-object v2, p0, Lu23;->o:Lqa3;

    .line 53
    .line 54
    return v1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    monitor-exit p1

    .line 57
    throw p0

    .line 58
    :cond_5
    iget-object p1, p0, Lu23;->m:Laa3;

    .line 59
    .line 60
    if-eqz p1, :cond_6

    .line 61
    .line 62
    iget v0, p1, Laa3;->b:I

    .line 63
    .line 64
    iget-object p1, p1, Laa3;->a:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-ge v0, p1, :cond_6

    .line 71
    .line 72
    return v1

    .line 73
    :cond_6
    iget-object p0, p0, Lu23;->n:Lr23;

    .line 74
    .line 75
    if-nez p0, :cond_7

    .line 76
    .line 77
    :goto_1
    return v1

    .line 78
    :cond_7
    invoke-virtual {p0}, Lr23;->a()Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    return p0
.end method

.method public final b()Lwa3;
    .locals 13

    .line 1
    iget-object v0, p0, Lu23;->k:Lh23;

    .line 2
    .line 3
    iget-object v0, v0, Lh23;->u:Li23;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    :goto_0
    move-object v3, v1

    .line 10
    goto :goto_4

    .line 11
    :cond_1
    iget-boolean v3, p0, Lu23;->l:Z

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Li23;->e(Z)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    monitor-enter v0

    .line 18
    iget-boolean v4, v0, Li23;->j:Z

    .line 19
    .line 20
    if-nez v3, :cond_2

    .line 21
    .line 22
    :try_start_0
    iput-boolean v2, v0, Li23;->j:Z

    .line 23
    .line 24
    iget-object v3, p0, Lu23;->k:Lh23;

    .line 25
    .line 26
    invoke-virtual {v3}, Lh23;->i()Ljava/net/Socket;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    goto :goto_3

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto/16 :goto_12

    .line 33
    .line 34
    :cond_2
    if-nez v4, :cond_5

    .line 35
    .line 36
    iget-object v3, v0, Li23;->c:Lqa3;

    .line 37
    .line 38
    iget-object v3, v3, Lqa3;->a:Le7;

    .line 39
    .line 40
    iget-object v3, v3, Le7;->h:Lcn1;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object v4, p0, Lu23;->i:Le7;

    .line 46
    .line 47
    iget-object v4, v4, Le7;->h:Lcn1;

    .line 48
    .line 49
    iget v5, v3, Lcn1;->e:I

    .line 50
    .line 51
    iget v6, v4, Lcn1;->e:I

    .line 52
    .line 53
    if-ne v5, v6, :cond_3

    .line 54
    .line 55
    iget-object v3, v3, Lcn1;->d:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v4, v4, Lcn1;->d:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v3, v4}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    move v3, v2

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    const/4 v3, 0x0

    .line 68
    :goto_1
    if-nez v3, :cond_4

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    move-object v3, v1

    .line 72
    goto :goto_3

    .line 73
    :cond_5
    :goto_2
    iget-object v3, p0, Lu23;->k:Lh23;

    .line 74
    .line 75
    invoke-virtual {v3}, Lh23;->i()Ljava/net/Socket;

    .line 76
    .line 77
    .line 78
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :goto_3
    monitor-exit v0

    .line 80
    iget-object v4, p0, Lu23;->k:Lh23;

    .line 81
    .line 82
    iget-object v4, v4, Lh23;->u:Li23;

    .line 83
    .line 84
    if-eqz v4, :cond_7

    .line 85
    .line 86
    if-nez v3, :cond_6

    .line 87
    .line 88
    new-instance v3, Lp83;

    .line 89
    .line 90
    invoke-direct {v3, v0}, Lp83;-><init>(Li23;)V

    .line 91
    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_6
    const-string p0, "Check failed."

    .line 95
    .line 96
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-object v1

    .line 100
    :cond_7
    if-eqz v3, :cond_0

    .line 101
    .line 102
    invoke-static {v3}, Lhi4;->b(Ljava/net/Socket;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :goto_4
    if-eqz v3, :cond_8

    .line 107
    .line 108
    return-object v3

    .line 109
    :cond_8
    invoke-virtual {p0, v1, v1}, Lu23;->d(Lvd0;Ljava/util/List;)Lp83;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_9

    .line 114
    .line 115
    return-object v0

    .line 116
    :cond_9
    iget-object v0, p0, Lu23;->p:Lvh;

    .line 117
    .line 118
    invoke-virtual {v0}, Lvh;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_a

    .line 123
    .line 124
    iget-object p0, p0, Lu23;->p:Lvh;

    .line 125
    .line 126
    invoke-virtual {p0}, Lvh;->removeFirst()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    check-cast p0, Lwa3;

    .line 131
    .line 132
    return-object p0

    .line 133
    :cond_a
    iget-object v0, p0, Lu23;->o:Lqa3;

    .line 134
    .line 135
    if-eqz v0, :cond_b

    .line 136
    .line 137
    iput-object v1, p0, Lu23;->o:Lqa3;

    .line 138
    .line 139
    invoke-virtual {p0, v0, v1}, Lu23;->c(Lqa3;Ljava/util/ArrayList;)Lvd0;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    goto/16 :goto_11

    .line 144
    .line 145
    :cond_b
    iget-object v0, p0, Lu23;->m:Laa3;

    .line 146
    .line 147
    if-eqz v0, :cond_d

    .line 148
    .line 149
    iget v3, v0, Laa3;->b:I

    .line 150
    .line 151
    iget-object v4, v0, Laa3;->a:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-ge v3, v4, :cond_d

    .line 158
    .line 159
    iget v2, v0, Laa3;->b:I

    .line 160
    .line 161
    iget-object v3, v0, Laa3;->a:Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-ge v2, v4, :cond_c

    .line 168
    .line 169
    iget v2, v0, Laa3;->b:I

    .line 170
    .line 171
    add-int/lit8 v4, v2, 0x1

    .line 172
    .line 173
    iput v4, v0, Laa3;->b:I

    .line 174
    .line 175
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Lqa3;

    .line 180
    .line 181
    invoke-virtual {p0, v0, v1}, Lu23;->c(Lqa3;Ljava/util/ArrayList;)Lvd0;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    goto/16 :goto_11

    .line 186
    .line 187
    :cond_c
    invoke-static {}, Lp61;->v()V

    .line 188
    .line 189
    .line 190
    return-object v1

    .line 191
    :cond_d
    iget-object v0, p0, Lu23;->n:Lr23;

    .line 192
    .line 193
    if-nez v0, :cond_e

    .line 194
    .line 195
    new-instance v0, Lr23;

    .line 196
    .line 197
    iget-object v3, p0, Lu23;->i:Le7;

    .line 198
    .line 199
    iget-object v4, p0, Lu23;->j:Lra3;

    .line 200
    .line 201
    iget-object v5, p0, Lu23;->k:Lh23;

    .line 202
    .line 203
    iget-boolean v6, p0, Lu23;->h:Z

    .line 204
    .line 205
    invoke-direct {v0, v3, v4, v5, v6}, Lr23;-><init>(Le7;Lra3;Lh23;Z)V

    .line 206
    .line 207
    .line 208
    iput-object v0, p0, Lu23;->n:Lr23;

    .line 209
    .line 210
    :cond_e
    invoke-virtual {v0}, Lr23;->a()Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-eqz v3, :cond_2b

    .line 215
    .line 216
    invoke-virtual {v0}, Lr23;->a()Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-eqz v3, :cond_2a

    .line 221
    .line 222
    new-instance v3, Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .line 226
    .line 227
    :cond_f
    iget v4, v0, Lr23;->c:I

    .line 228
    .line 229
    iget-object v5, v0, Lr23;->b:Ljava/util/List;

    .line 230
    .line 231
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    if-ge v4, v5, :cond_25

    .line 236
    .line 237
    iget-object v4, v0, Lr23;->d:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v4, Le7;

    .line 240
    .line 241
    const-string v5, "No route to "

    .line 242
    .line 243
    iget v6, v0, Lr23;->c:I

    .line 244
    .line 245
    iget-object v7, v0, Lr23;->b:Ljava/util/List;

    .line 246
    .line 247
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 248
    .line 249
    .line 250
    move-result v7

    .line 251
    if-ge v6, v7, :cond_24

    .line 252
    .line 253
    iget-object v6, v0, Lr23;->b:Ljava/util/List;

    .line 254
    .line 255
    iget v7, v0, Lr23;->c:I

    .line 256
    .line 257
    add-int/lit8 v8, v7, 0x1

    .line 258
    .line 259
    iput v8, v0, Lr23;->c:I

    .line 260
    .line 261
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    check-cast v6, Ljava/net/Proxy;

    .line 266
    .line 267
    new-instance v7, Ljava/util/ArrayList;

    .line 268
    .line 269
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .line 271
    .line 272
    iput-object v7, v0, Lr23;->f:Ljava/lang/Object;

    .line 273
    .line 274
    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    sget-object v9, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 279
    .line 280
    if-eq v8, v9, :cond_13

    .line 281
    .line 282
    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    sget-object v9, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 287
    .line 288
    if-ne v8, v9, :cond_10

    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_10
    invoke-virtual {v6}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 292
    .line 293
    .line 294
    move-result-object v8

    .line 295
    instance-of v9, v8, Ljava/net/InetSocketAddress;

    .line 296
    .line 297
    if-eqz v9, :cond_12

    .line 298
    .line 299
    check-cast v8, Ljava/net/InetSocketAddress;

    .line 300
    .line 301
    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 302
    .line 303
    .line 304
    move-result-object v9

    .line 305
    if-nez v9, :cond_11

    .line 306
    .line 307
    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v9

    .line 311
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    goto :goto_5

    .line 315
    :cond_11
    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v9

    .line 319
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    :goto_5
    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->getPort()I

    .line 323
    .line 324
    .line 325
    move-result v8

    .line 326
    goto :goto_7

    .line 327
    :cond_12
    const-string p0, "Proxy.address() is not an InetSocketAddress: "

    .line 328
    .line 329
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-static {v0, p0}, Lq73;->s(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    return-object v1

    .line 337
    :cond_13
    :goto_6
    iget-object v8, v4, Le7;->h:Lcn1;

    .line 338
    .line 339
    iget-object v9, v8, Lcn1;->d:Ljava/lang/String;

    .line 340
    .line 341
    iget v8, v8, Lcn1;->e:I

    .line 342
    .line 343
    :goto_7
    if-gt v2, v8, :cond_23

    .line 344
    .line 345
    const/high16 v10, 0x10000

    .line 346
    .line 347
    if-ge v8, v10, :cond_23

    .line 348
    .line 349
    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    sget-object v10, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    .line 354
    .line 355
    if-ne v5, v10, :cond_14

    .line 356
    .line 357
    invoke-static {v9, v8}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    goto/16 :goto_e

    .line 365
    .line 366
    :cond_14
    sget-object v5, Ldi4;->a:Lw43;

    .line 367
    .line 368
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    sget-object v5, Ldi4;->a:Lw43;

    .line 372
    .line 373
    invoke-virtual {v5, v9}, Lw43;->c(Ljava/lang/CharSequence;)Z

    .line 374
    .line 375
    .line 376
    move-result v5

    .line 377
    if-eqz v5, :cond_15

    .line 378
    .line 379
    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    invoke-static {v4}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    goto :goto_8

    .line 388
    :cond_15
    iget-object v5, v4, Le7;->a:Lw13;

    .line 389
    .line 390
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    :try_start_1
    invoke-static {v9}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    .line 399
    .line 400
    invoke-static {v5}, Lji;->c0([Ljava/lang/Object;)Ljava/util/List;

    .line 401
    .line 402
    .line 403
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 404
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 405
    .line 406
    .line 407
    move-result v10

    .line 408
    if-nez v10, :cond_22

    .line 409
    .line 410
    move-object v4, v5

    .line 411
    :goto_8
    iget-boolean v5, v0, Lr23;->a:Z

    .line 412
    .line 413
    if-eqz v5, :cond_1e

    .line 414
    .line 415
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 416
    .line 417
    .line 418
    move-result v5

    .line 419
    const/4 v9, 0x2

    .line 420
    if-ge v5, v9, :cond_16

    .line 421
    .line 422
    goto/16 :goto_c

    .line 423
    .line 424
    :cond_16
    new-instance v5, Ljava/util/ArrayList;

    .line 425
    .line 426
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .line 428
    .line 429
    new-instance v9, Ljava/util/ArrayList;

    .line 430
    .line 431
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .line 433
    .line 434
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 435
    .line 436
    .line 437
    move-result-object v10

    .line 438
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 439
    .line 440
    .line 441
    move-result v11

    .line 442
    if-eqz v11, :cond_18

    .line 443
    .line 444
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v11

    .line 448
    move-object v12, v11

    .line 449
    check-cast v12, Ljava/net/InetAddress;

    .line 450
    .line 451
    instance-of v12, v12, Ljava/net/Inet6Address;

    .line 452
    .line 453
    if-eqz v12, :cond_17

    .line 454
    .line 455
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    goto :goto_9

    .line 459
    :cond_17
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    goto :goto_9

    .line 463
    :cond_18
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 464
    .line 465
    .line 466
    move-result v10

    .line 467
    if-nez v10, :cond_1e

    .line 468
    .line 469
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 470
    .line 471
    .line 472
    move-result v10

    .line 473
    if-eqz v10, :cond_19

    .line 474
    .line 475
    goto :goto_c

    .line 476
    :cond_19
    sget-object v4, Lfi4;->a:[B

    .line 477
    .line 478
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 479
    .line 480
    .line 481
    move-result-object v5

    .line 482
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 483
    .line 484
    .line 485
    move-result-object v9

    .line 486
    invoke-static {}, Ltv4;->p()La42;

    .line 487
    .line 488
    .line 489
    move-result-object v10

    .line 490
    :cond_1a
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 491
    .line 492
    .line 493
    move-result v4

    .line 494
    if-nez v4, :cond_1c

    .line 495
    .line 496
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 497
    .line 498
    .line 499
    move-result v4

    .line 500
    if-eqz v4, :cond_1b

    .line 501
    .line 502
    goto :goto_b

    .line 503
    :cond_1b
    invoke-static {v10}, Ltv4;->l(La42;)La42;

    .line 504
    .line 505
    .line 506
    move-result-object v4

    .line 507
    goto :goto_c

    .line 508
    :cond_1c
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 509
    .line 510
    .line 511
    move-result v4

    .line 512
    if-eqz v4, :cond_1d

    .line 513
    .line 514
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    invoke-virtual {v10, v4}, La42;->add(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    :cond_1d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 522
    .line 523
    .line 524
    move-result v4

    .line 525
    if-eqz v4, :cond_1a

    .line 526
    .line 527
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v4

    .line 531
    invoke-virtual {v10, v4}, La42;->add(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    goto :goto_a

    .line 535
    :cond_1e
    :goto_c
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 536
    .line 537
    .line 538
    move-result-object v4

    .line 539
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 540
    .line 541
    .line 542
    move-result v5

    .line 543
    if-eqz v5, :cond_1f

    .line 544
    .line 545
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v5

    .line 549
    check-cast v5, Ljava/net/InetAddress;

    .line 550
    .line 551
    new-instance v9, Ljava/net/InetSocketAddress;

    .line 552
    .line 553
    invoke-direct {v9, v5, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    goto :goto_d

    .line 560
    :cond_1f
    :goto_e
    iget-object v4, v0, Lr23;->f:Ljava/lang/Object;

    .line 561
    .line 562
    check-cast v4, Ljava/util/List;

    .line 563
    .line 564
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 565
    .line 566
    .line 567
    move-result-object v4

    .line 568
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 569
    .line 570
    .line 571
    move-result v5

    .line 572
    if-eqz v5, :cond_21

    .line 573
    .line 574
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v5

    .line 578
    check-cast v5, Ljava/net/InetSocketAddress;

    .line 579
    .line 580
    new-instance v7, Lqa3;

    .line 581
    .line 582
    iget-object v8, v0, Lr23;->d:Ljava/lang/Object;

    .line 583
    .line 584
    check-cast v8, Le7;

    .line 585
    .line 586
    invoke-direct {v7, v8, v6, v5}, Lqa3;-><init>(Le7;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 587
    .line 588
    .line 589
    iget-object v5, v0, Lr23;->e:Ljava/lang/Object;

    .line 590
    .line 591
    check-cast v5, Lra3;

    .line 592
    .line 593
    monitor-enter v5

    .line 594
    :try_start_2
    iget-object v8, v5, Lra3;->o:Ljava/lang/Object;

    .line 595
    .line 596
    check-cast v8, Ljava/util/LinkedHashSet;

    .line 597
    .line 598
    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 602
    monitor-exit v5

    .line 603
    if-eqz v8, :cond_20

    .line 604
    .line 605
    iget-object v5, v0, Lr23;->g:Ljava/lang/Object;

    .line 606
    .line 607
    check-cast v5, Ljava/util/ArrayList;

    .line 608
    .line 609
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    goto :goto_f

    .line 613
    :cond_20
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    goto :goto_f

    .line 617
    :catchall_1
    move-exception p0

    .line 618
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 619
    throw p0

    .line 620
    :cond_21
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 621
    .line 622
    .line 623
    move-result v4

    .line 624
    if-nez v4, :cond_f

    .line 625
    .line 626
    goto :goto_10

    .line 627
    :cond_22
    new-instance p0, Ljava/net/UnknownHostException;

    .line 628
    .line 629
    iget-object v0, v4, Le7;->a:Lw13;

    .line 630
    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    .line 632
    .line 633
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    const-string v0, " returned no addresses for "

    .line 640
    .line 641
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    invoke-direct {p0, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    throw p0

    .line 655
    :catch_0
    move-exception p0

    .line 656
    new-instance v0, Ljava/net/UnknownHostException;

    .line 657
    .line 658
    const-string v1, "Broken system behaviour for dns lookup of "

    .line 659
    .line 660
    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 668
    .line 669
    .line 670
    throw v0

    .line 671
    :cond_23
    new-instance p0, Ljava/net/SocketException;

    .line 672
    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    .line 674
    .line 675
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    const/16 v1, 0x3a

    .line 682
    .line 683
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    const-string v1, "; port is out of range"

    .line 690
    .line 691
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    invoke-direct {p0, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    throw p0

    .line 702
    :cond_24
    new-instance p0, Ljava/net/SocketException;

    .line 703
    .line 704
    iget-object v1, v4, Le7;->h:Lcn1;

    .line 705
    .line 706
    iget-object v1, v1, Lcn1;->d:Ljava/lang/String;

    .line 707
    .line 708
    const-string v2, "; exhausted proxy configurations: "

    .line 709
    .line 710
    iget-object v0, v0, Lr23;->b:Ljava/util/List;

    .line 711
    .line 712
    new-instance v3, Ljava/lang/StringBuilder;

    .line 713
    .line 714
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v0

    .line 730
    invoke-direct {p0, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    throw p0

    .line 734
    :cond_25
    :goto_10
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 735
    .line 736
    .line 737
    move-result v2

    .line 738
    if-eqz v2, :cond_26

    .line 739
    .line 740
    iget-object v2, v0, Lr23;->g:Ljava/lang/Object;

    .line 741
    .line 742
    check-cast v2, Ljava/util/ArrayList;

    .line 743
    .line 744
    invoke-static {v2, v3}, Lo70;->d0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 745
    .line 746
    .line 747
    iget-object v0, v0, Lr23;->g:Ljava/lang/Object;

    .line 748
    .line 749
    check-cast v0, Ljava/util/ArrayList;

    .line 750
    .line 751
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 752
    .line 753
    .line 754
    :cond_26
    new-instance v0, Laa3;

    .line 755
    .line 756
    invoke-direct {v0, v3}, Laa3;-><init>(Ljava/util/ArrayList;)V

    .line 757
    .line 758
    .line 759
    iput-object v0, p0, Lu23;->m:Laa3;

    .line 760
    .line 761
    iget-object v2, p0, Lu23;->k:Lh23;

    .line 762
    .line 763
    iget-boolean v2, v2, Lh23;->C:Z

    .line 764
    .line 765
    if-nez v2, :cond_29

    .line 766
    .line 767
    iget v2, v0, Laa3;->b:I

    .line 768
    .line 769
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 770
    .line 771
    .line 772
    move-result v4

    .line 773
    if-ge v2, v4, :cond_28

    .line 774
    .line 775
    iget v1, v0, Laa3;->b:I

    .line 776
    .line 777
    add-int/lit8 v2, v1, 0x1

    .line 778
    .line 779
    iput v2, v0, Laa3;->b:I

    .line 780
    .line 781
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    check-cast v0, Lqa3;

    .line 786
    .line 787
    invoke-virtual {p0, v0, v3}, Lu23;->c(Lqa3;Ljava/util/ArrayList;)Lvd0;

    .line 788
    .line 789
    .line 790
    move-result-object v0

    .line 791
    :goto_11
    iget-object v1, v0, Lvd0;->k:Ljava/util/List;

    .line 792
    .line 793
    invoke-virtual {p0, v0, v1}, Lu23;->d(Lvd0;Ljava/util/List;)Lp83;

    .line 794
    .line 795
    .line 796
    move-result-object p0

    .line 797
    if-eqz p0, :cond_27

    .line 798
    .line 799
    return-object p0

    .line 800
    :cond_27
    return-object v0

    .line 801
    :cond_28
    invoke-static {}, Lp61;->v()V

    .line 802
    .line 803
    .line 804
    return-object v1

    .line 805
    :cond_29
    const-string p0, "Canceled"

    .line 806
    .line 807
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    return-object v1

    .line 811
    :cond_2a
    invoke-static {}, Lp61;->v()V

    .line 812
    .line 813
    .line 814
    return-object v1

    .line 815
    :cond_2b
    const-string p0, "exhausted all routes"

    .line 816
    .line 817
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    return-object v1

    .line 821
    :goto_12
    monitor-exit v0

    .line 822
    throw p0
.end method

.method public final c(Lqa3;Ljava/util/ArrayList;)Lvd0;
    .locals 15

    .line 1
    move-object/from16 v10, p1

    .line 2
    .line 3
    sget-object v0, Ld03;->t:Ld03;

    .line 4
    .line 5
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v10, Lqa3;->a:Le7;

    .line 9
    .line 10
    iget-object v2, v1, Le7;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 11
    .line 12
    if-nez v2, :cond_2

    .line 13
    .line 14
    iget-object v1, v1, Le7;->j:Ljava/util/List;

    .line 15
    .line 16
    sget-object v2, Lne0;->f:Lne0;

    .line 17
    .line 18
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, v10, Lqa3;->a:Le7;

    .line 25
    .line 26
    iget-object v1, v1, Le7;->h:Lcn1;

    .line 27
    .line 28
    iget-object v1, v1, Lcn1;->d:Ljava/lang/String;

    .line 29
    .line 30
    sget-object v2, Liv2;->a:Liv2;

    .line 31
    .line 32
    sget-object v2, Liv2;->a:Liv2;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Liv2;->h(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p0, Ljava/net/UnknownServiceException;

    .line 42
    .line 43
    const-string v0, "CLEARTEXT communication to "

    .line 44
    .line 45
    const-string v2, " not permitted by network security policy"

    .line 46
    .line 47
    invoke-static {v0, v1, v2}, Ldi0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {p0, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_1
    new-instance p0, Ljava/net/UnknownServiceException;

    .line 56
    .line 57
    const-string v0, "CLEARTEXT communication not enabled for client"

    .line 58
    .line 59
    invoke-direct {p0, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_2
    iget-object v1, v1, Le7;->i:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_8

    .line 70
    .line 71
    :goto_0
    iget-object v1, v10, Lqa3;->b:Ljava/net/Proxy;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    if-eq v1, v2, :cond_3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-object v1, v10, Lqa3;->a:Le7;

    .line 84
    .line 85
    iget-object v2, v1, Le7;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 86
    .line 87
    if-nez v2, :cond_5

    .line 88
    .line 89
    iget-object v1, v1, Le7;->i:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    :goto_1
    move-object v12, v3

    .line 99
    goto/16 :goto_4

    .line 100
    .line 101
    :cond_5
    :goto_2
    new-instance v0, Lrp;

    .line 102
    .line 103
    const/4 v1, 0x5

    .line 104
    invoke-direct {v0, v1}, Lrp;-><init>(I)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v10, Lqa3;->a:Le7;

    .line 108
    .line 109
    iget-object v1, v1, Le7;->h:Lcn1;

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    iput-object v1, v0, Lrp;->b:Ljava/lang/Object;

    .line 115
    .line 116
    const-string v1, "CONNECT"

    .line 117
    .line 118
    invoke-virtual {v0, v1, v3}, Lrp;->m(Ljava/lang/String;Lq63;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, v10, Lqa3;->a:Le7;

    .line 122
    .line 123
    iget-object v2, v1, Le7;->h:Lcn1;

    .line 124
    .line 125
    const/4 v3, 0x1

    .line 126
    invoke-static {v2, v3}, Lhi4;->g(Lcn1;Z)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    const-string v3, "Host"

    .line 131
    .line 132
    invoke-virtual {v0, v3, v2}, Lrp;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const-string v2, "Proxy-Connection"

    .line 136
    .line 137
    const-string v3, "Keep-Alive"

    .line 138
    .line 139
    invoke-virtual {v0, v2, v3}, Lrp;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v2, "User-Agent"

    .line 143
    .line 144
    const-string v3, "okhttp/5.3.2"

    .line 145
    .line 146
    invoke-virtual {v0, v2, v3}, Lrp;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance v3, Lk63;

    .line 150
    .line 151
    invoke-direct {v3, v0}, Lk63;-><init>(Lrp;)V

    .line 152
    .line 153
    .line 154
    sget-object v0, Ly73;->n:Lx73;

    .line 155
    .line 156
    new-instance v2, Ljava/util/ArrayList;

    .line 157
    .line 158
    const/16 v4, 0x14

    .line 159
    .line 160
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    .line 162
    .line 163
    const-string v4, "Proxy-Authenticate"

    .line 164
    .line 165
    invoke-static {v4}, Lci4;->b(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-string v5, "OkHttp-Preemptive"

    .line 169
    .line 170
    invoke-static {v5, v4}, Lci4;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const/4 v6, 0x0

    .line 174
    move v7, v6

    .line 175
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    if-ge v7, v8, :cond_7

    .line 180
    .line 181
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    check-cast v8, Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    if-eqz v8, :cond_6

    .line 192
    .line 193
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    add-int/lit8 v7, v7, -0x2

    .line 200
    .line 201
    :cond_6
    add-int/lit8 v7, v7, 0x2

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_7
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    invoke-static {v5}, Lzs3;->Y0(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    new-instance v4, Lkj1;

    .line 219
    .line 220
    new-array v5, v6, [Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    check-cast v2, [Ljava/lang/String;

    .line 227
    .line 228
    invoke-direct {v4, v2}, Lkj1;-><init>([Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    iget-object v0, v1, Le7;->f:Lw13;

    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    goto/16 :goto_1

    .line 240
    .line 241
    :goto_4
    new-instance v0, Lvd0;

    .line 242
    .line 243
    iget-object v1, p0, Lu23;->a:Ltw3;

    .line 244
    .line 245
    iget-object v2, p0, Lu23;->b:Laz0;

    .line 246
    .line 247
    iget v3, p0, Lu23;->c:I

    .line 248
    .line 249
    iget v4, p0, Lu23;->d:I

    .line 250
    .line 251
    iget v5, p0, Lu23;->e:I

    .line 252
    .line 253
    iget v6, p0, Lu23;->f:I

    .line 254
    .line 255
    iget-boolean v7, p0, Lu23;->g:Z

    .line 256
    .line 257
    iget-object v8, p0, Lu23;->k:Lh23;

    .line 258
    .line 259
    const/4 v13, -0x1

    .line 260
    const/4 v14, 0x0

    .line 261
    move-object v9, p0

    .line 262
    move-object/from16 v11, p2

    .line 263
    .line 264
    invoke-direct/range {v0 .. v14}, Lvd0;-><init>(Ltw3;Laz0;IIIIZLh23;Lu23;Lqa3;Ljava/util/List;Lk63;IZ)V

    .line 265
    .line 266
    .line 267
    return-object v0

    .line 268
    :cond_8
    new-instance p0, Ljava/net/UnknownServiceException;

    .line 269
    .line 270
    const-string v0, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    .line 271
    .line 272
    invoke-direct {p0, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw p0
.end method

.method public final d(Lvd0;Ljava/util/List;)Lp83;
    .locals 10

    .line 1
    iget-object v0, p0, Lu23;->b:Laz0;

    .line 2
    .line 3
    iget-boolean v1, p0, Lu23;->l:Z

    .line 4
    .line 5
    iget-object v2, p0, Lu23;->i:Le7;

    .line 6
    .line 7
    iget-object v3, p0, Lu23;->k:Lh23;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lvd0;->d()Z

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    if-eqz v6, :cond_0

    .line 18
    .line 19
    move v6, v5

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v6, v4

    .line 22
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Laz0;->d:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    const/4 v8, 0x0

    .line 41
    if-eqz v7, :cond_6

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    check-cast v7, Li23;

    .line 48
    .line 49
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    monitor-enter v7

    .line 53
    if-eqz v6, :cond_3

    .line 54
    .line 55
    :try_start_0
    iget-object v9, v7, Li23;->i:Lcl1;

    .line 56
    .line 57
    if-eqz v9, :cond_2

    .line 58
    .line 59
    move v9, v5

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    move v9, v4

    .line 62
    :goto_2
    if-nez v9, :cond_3

    .line 63
    .line 64
    :goto_3
    move v9, v4

    .line 65
    goto :goto_4

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_5

    .line 68
    :cond_3
    invoke-virtual {v7, v2, p2}, Li23;->d(Le7;Ljava/util/List;)Z

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    if-nez v9, :cond_4

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_4
    invoke-virtual {v3, v7}, Lh23;->b(Li23;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    move v9, v5

    .line 79
    :goto_4
    monitor-exit v7

    .line 80
    if-eqz v9, :cond_1

    .line 81
    .line 82
    invoke-virtual {v7, v1}, Li23;->e(Z)Z

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    if-eqz v9, :cond_5

    .line 87
    .line 88
    goto :goto_6

    .line 89
    :cond_5
    monitor-enter v7

    .line 90
    :try_start_1
    iput-boolean v5, v7, Li23;->j:Z

    .line 91
    .line 92
    invoke-virtual {v3}, Lh23;->i()Ljava/net/Socket;

    .line 93
    .line 94
    .line 95
    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    monitor-exit v7

    .line 97
    if-eqz v8, :cond_1

    .line 98
    .line 99
    invoke-static {v8}, Lhi4;->b(Ljava/net/Socket;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catchall_1
    move-exception p0

    .line 104
    monitor-exit v7

    .line 105
    throw p0

    .line 106
    :goto_5
    monitor-exit v7

    .line 107
    throw p0

    .line 108
    :cond_6
    move-object v7, v8

    .line 109
    :goto_6
    if-nez v7, :cond_7

    .line 110
    .line 111
    return-object v8

    .line 112
    :cond_7
    if-eqz p1, :cond_8

    .line 113
    .line 114
    iget-object p2, p1, Lvd0;->j:Lqa3;

    .line 115
    .line 116
    iput-object p2, p0, Lu23;->o:Lqa3;

    .line 117
    .line 118
    iget-object p0, p1, Lvd0;->q:Ljava/net/Socket;

    .line 119
    .line 120
    if-eqz p0, :cond_8

    .line 121
    .line 122
    invoke-static {p0}, Lhi4;->b(Ljava/net/Socket;)V

    .line 123
    .line 124
    .line 125
    :cond_8
    new-instance p0, Lp83;

    .line 126
    .line 127
    invoke-direct {p0, v7}, Lp83;-><init>(Li23;)V

    .line 128
    .line 129
    .line 130
    return-object p0
.end method

.class public final Lvd0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lwa3;
.implements Lx21;


# instance fields
.field public final a:Ltw3;

.field public final b:Laz0;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Z

.field public final h:Lh23;

.field public final i:Lu23;

.field public final j:Lqa3;

.field public final k:Ljava/util/List;

.field public final l:Lk63;

.field public final m:I

.field public final n:Z

.field public volatile o:Z

.field public p:Ljava/net/Socket;

.field public q:Ljava/net/Socket;

.field public r:Laj1;

.field public s:Ld03;

.field public t:Leh;

.field public u:Li23;


# direct methods
.method public constructor <init>(Ltw3;Laz0;IIIIZLh23;Lu23;Lqa3;Ljava/util/List;Lk63;IZ)V
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
    iput-object p1, p0, Lvd0;->a:Ltw3;

    .line 14
    .line 15
    iput-object p2, p0, Lvd0;->b:Laz0;

    .line 16
    .line 17
    iput p3, p0, Lvd0;->c:I

    .line 18
    .line 19
    iput p4, p0, Lvd0;->d:I

    .line 20
    .line 21
    iput p5, p0, Lvd0;->e:I

    .line 22
    .line 23
    iput p6, p0, Lvd0;->f:I

    .line 24
    .line 25
    iput-boolean p7, p0, Lvd0;->g:Z

    .line 26
    .line 27
    iput-object p8, p0, Lvd0;->h:Lh23;

    .line 28
    .line 29
    iput-object p9, p0, Lvd0;->i:Lu23;

    .line 30
    .line 31
    iput-object p10, p0, Lvd0;->j:Lqa3;

    .line 32
    .line 33
    iput-object p11, p0, Lvd0;->k:Ljava/util/List;

    .line 34
    .line 35
    iput-object p12, p0, Lvd0;->l:Lk63;

    .line 36
    .line 37
    iput p13, p0, Lvd0;->m:I

    .line 38
    .line 39
    iput-boolean p14, p0, Lvd0;->n:Z

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final a()Lwa3;
    .locals 15

    .line 1
    new-instance v0, Lvd0;

    .line 2
    .line 3
    iget v13, p0, Lvd0;->m:I

    .line 4
    .line 5
    iget-boolean v14, p0, Lvd0;->n:Z

    .line 6
    .line 7
    iget-object v1, p0, Lvd0;->a:Ltw3;

    .line 8
    .line 9
    iget-object v2, p0, Lvd0;->b:Laz0;

    .line 10
    .line 11
    iget v3, p0, Lvd0;->c:I

    .line 12
    .line 13
    iget v4, p0, Lvd0;->d:I

    .line 14
    .line 15
    iget v5, p0, Lvd0;->e:I

    .line 16
    .line 17
    iget v6, p0, Lvd0;->f:I

    .line 18
    .line 19
    iget-boolean v7, p0, Lvd0;->g:Z

    .line 20
    .line 21
    iget-object v8, p0, Lvd0;->h:Lh23;

    .line 22
    .line 23
    iget-object v9, p0, Lvd0;->i:Lu23;

    .line 24
    .line 25
    iget-object v10, p0, Lvd0;->j:Lqa3;

    .line 26
    .line 27
    iget-object v11, p0, Lvd0;->k:Ljava/util/List;

    .line 28
    .line 29
    iget-object v12, p0, Lvd0;->l:Lk63;

    .line 30
    .line 31
    invoke-direct/range {v0 .. v14}, Lvd0;-><init>(Ltw3;Laz0;IIIIZLh23;Lu23;Lqa3;Ljava/util/List;Lk63;IZ)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public final b()Lva3;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lvd0;->b:Laz0;

    .line 4
    .line 5
    iget-object v0, v1, Lvd0;->h:Lh23;

    .line 6
    .line 7
    iget-object v3, v0, Lh23;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    iget-object v8, v1, Lvd0;->p:Ljava/net/Socket;

    .line 10
    .line 11
    const/4 v13, 0x0

    .line 12
    if-eqz v8, :cond_12

    .line 13
    .line 14
    invoke-virtual {v1}, Lvd0;->d()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_11

    .line 19
    .line 20
    iget-object v0, v1, Lvd0;->j:Lqa3;

    .line 21
    .line 22
    iget-object v4, v0, Lqa3;->a:Le7;

    .line 23
    .line 24
    iget-object v14, v0, Lqa3;->c:Ljava/net/InetSocketAddress;

    .line 25
    .line 26
    iget-object v0, v0, Lqa3;->a:Le7;

    .line 27
    .line 28
    iget-object v4, v4, Le7;->j:Ljava/util/List;

    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    const/4 v15, 0x0

    .line 34
    :try_start_0
    iget-object v5, v1, Lvd0;->l:Lk63;

    .line 35
    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1}, Lvd0;->h()Lva3;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    iget-object v6, v5, Lva3;->c:Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    if-eqz v6, :cond_1

    .line 45
    .line 46
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    iget-object v0, v1, Lvd0;->q:Ljava/net/Socket;

    .line 50
    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-static {v0}, Lhi4;->b(Ljava/net/Socket;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-static {v8}, Lhi4;->b(Ljava/net/Socket;)V

    .line 57
    .line 58
    .line 59
    return-object v5

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto/16 :goto_4

    .line 62
    .line 63
    :catch_0
    move-exception v0

    .line 64
    move-object v4, v13

    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_1
    :try_start_1
    iget-object v5, v0, Le7;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    const/4 v6, 0x1

    .line 70
    const-string v7, "socket"

    .line 71
    .line 72
    if-eqz v5, :cond_5

    .line 73
    .line 74
    :try_start_2
    iget-object v5, v1, Lvd0;->t:Leh;

    .line 75
    .line 76
    if-eqz v5, :cond_4

    .line 77
    .line 78
    iget-object v5, v5, Leh;->p:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v5, Ld23;

    .line 81
    .line 82
    iget-object v5, v5, Ld23;->o:Lsy;

    .line 83
    .line 84
    invoke-virtual {v5}, Lsy;->r()Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_3

    .line 89
    .line 90
    iget-object v5, v1, Lvd0;->t:Leh;

    .line 91
    .line 92
    if-eqz v5, :cond_2

    .line 93
    .line 94
    iget-object v5, v5, Leh;->q:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v5, Lc23;

    .line 97
    .line 98
    iget-object v5, v5, Lc23;->o:Lsy;

    .line 99
    .line 100
    invoke-virtual {v5}, Lsy;->r()Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_3

    .line 105
    .line 106
    iget-object v5, v0, Le7;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 107
    .line 108
    iget-object v0, v0, Le7;->h:Lcn1;

    .line 109
    .line 110
    iget-object v9, v0, Lcn1;->d:Ljava/lang/String;

    .line 111
    .line 112
    iget v0, v0, Lcn1;->e:I

    .line 113
    .line 114
    invoke-virtual {v5, v8, v9, v0, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 122
    .line 123
    invoke-virtual {v1, v4, v0}, Lvd0;->m(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lvd0;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    iget v9, v5, Lvd0;->m:I

    .line 128
    .line 129
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    check-cast v9, Lne0;

    .line 134
    .line 135
    invoke-virtual {v5, v4, v0}, Lvd0;->l(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lvd0;

    .line 136
    .line 137
    .line 138
    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    :try_start_3
    iget-boolean v5, v5, Lvd0;->n:Z

    .line 140
    .line 141
    invoke-virtual {v9, v0, v5}, Lne0;->a(Ljavax/net/ssl/SSLSocket;Z)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v0, v9}, Lvd0;->g(Ljavax/net/ssl/SSLSocket;Lne0;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    .line 146
    .line 147
    move-object/from16 v16, v4

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :catch_1
    move-exception v0

    .line 151
    goto/16 :goto_2

    .line 152
    .line 153
    :cond_2
    :try_start_4
    invoke-static {v7}, Lnt1;->X(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v13

    .line 157
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 158
    .line 159
    const-string v4, "TLS tunnel buffered too many bytes!"

    .line 160
    .line 161
    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v0

    .line 165
    :cond_4
    invoke-static {v7}, Lnt1;->X(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v13

    .line 169
    :cond_5
    iput-object v8, v1, Lvd0;->q:Ljava/net/Socket;

    .line 170
    .line 171
    iget-object v0, v0, Le7;->i:Ljava/util/List;

    .line 172
    .line 173
    sget-object v4, Ld03;->t:Ld03;

    .line 174
    .line 175
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_6

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_6
    sget-object v4, Ld03;->q:Ld03;

    .line 183
    .line 184
    :goto_0
    iput-object v4, v1, Lvd0;->s:Ld03;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 185
    .line 186
    move-object/from16 v16, v13

    .line 187
    .line 188
    :goto_1
    :try_start_5
    new-instance v4, Li23;

    .line 189
    .line 190
    iget-object v5, v1, Lvd0;->a:Ltw3;

    .line 191
    .line 192
    move v9, v6

    .line 193
    iget-object v6, v1, Lvd0;->b:Laz0;

    .line 194
    .line 195
    move-object v0, v7

    .line 196
    iget-object v7, v1, Lvd0;->j:Lqa3;

    .line 197
    .line 198
    move v10, v9

    .line 199
    iget-object v9, v1, Lvd0;->q:Ljava/net/Socket;

    .line 200
    .line 201
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    move v11, v10

    .line 205
    iget-object v10, v1, Lvd0;->r:Laj1;

    .line 206
    .line 207
    move v12, v11

    .line 208
    iget-object v11, v1, Lvd0;->s:Ld03;

    .line 209
    .line 210
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    move/from16 v17, v12

    .line 214
    .line 215
    iget-object v12, v1, Lvd0;->t:Leh;

    .line 216
    .line 217
    if-eqz v12, :cond_7

    .line 218
    .line 219
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    invoke-direct/range {v4 .. v12}, Li23;-><init>(Ltw3;Laz0;Lqa3;Ljava/net/Socket;Ljava/net/Socket;Laj1;Ld03;Leh;)V

    .line 223
    .line 224
    .line 225
    iput-object v4, v1, Lvd0;->u:Li23;

    .line 226
    .line 227
    invoke-virtual {v4}, Li23;->f()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 231
    .line 232
    .line 233
    :try_start_6
    new-instance v0, Lva3;

    .line 234
    .line 235
    const/4 v4, 0x6

    .line 236
    invoke-direct {v0, v1, v13, v4}, Lva3;-><init>(Lwa3;Ljava/lang/Throwable;I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    return-object v0

    .line 243
    :catchall_1
    move-exception v0

    .line 244
    move/from16 v15, v17

    .line 245
    .line 246
    goto :goto_4

    .line 247
    :catch_2
    move-exception v0

    .line 248
    move-object/from16 v4, v16

    .line 249
    .line 250
    move/from16 v15, v17

    .line 251
    .line 252
    goto :goto_2

    .line 253
    :catch_3
    move-exception v0

    .line 254
    move-object/from16 v4, v16

    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_7
    :try_start_7
    invoke-static {v0}, Lnt1;->X(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw v13
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 261
    :goto_2
    :try_start_8
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    iget-boolean v2, v1, Lvd0;->g:Z

    .line 268
    .line 269
    if-eqz v2, :cond_c

    .line 270
    .line 271
    instance-of v2, v0, Ljava/net/ProtocolException;

    .line 272
    .line 273
    if-eqz v2, :cond_8

    .line 274
    .line 275
    goto :goto_3

    .line 276
    :cond_8
    instance-of v2, v0, Ljava/io/InterruptedIOException;

    .line 277
    .line 278
    if-eqz v2, :cond_9

    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_9
    instance-of v2, v0, Ljavax/net/ssl/SSLHandshakeException;

    .line 282
    .line 283
    if-eqz v2, :cond_a

    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    instance-of v2, v2, Ljava/security/cert/CertificateException;

    .line 290
    .line 291
    if-eqz v2, :cond_a

    .line 292
    .line 293
    goto :goto_3

    .line 294
    :cond_a
    instance-of v2, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 295
    .line 296
    if-eqz v2, :cond_b

    .line 297
    .line 298
    goto :goto_3

    .line 299
    :cond_b
    instance-of v2, v0, Ljavax/net/ssl/SSLException;

    .line 300
    .line 301
    if-eqz v2, :cond_c

    .line 302
    .line 303
    move-object v13, v4

    .line 304
    :cond_c
    :goto_3
    new-instance v2, Lva3;

    .line 305
    .line 306
    invoke-direct {v2, v1, v13, v0}, Lva3;-><init>(Lwa3;Lvd0;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 307
    .line 308
    .line 309
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    if-nez v15, :cond_e

    .line 313
    .line 314
    iget-object v0, v1, Lvd0;->q:Ljava/net/Socket;

    .line 315
    .line 316
    if-eqz v0, :cond_d

    .line 317
    .line 318
    invoke-static {v0}, Lhi4;->b(Ljava/net/Socket;)V

    .line 319
    .line 320
    .line 321
    :cond_d
    invoke-static {v8}, Lhi4;->b(Ljava/net/Socket;)V

    .line 322
    .line 323
    .line 324
    :cond_e
    return-object v2

    .line 325
    :goto_4
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    if-nez v15, :cond_10

    .line 329
    .line 330
    iget-object v1, v1, Lvd0;->q:Ljava/net/Socket;

    .line 331
    .line 332
    if-eqz v1, :cond_f

    .line 333
    .line 334
    invoke-static {v1}, Lhi4;->b(Ljava/net/Socket;)V

    .line 335
    .line 336
    .line 337
    :cond_f
    invoke-static {v8}, Lhi4;->b(Ljava/net/Socket;)V

    .line 338
    .line 339
    .line 340
    :cond_10
    throw v0

    .line 341
    :cond_11
    const-string v0, "already connected"

    .line 342
    .line 343
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    return-object v13

    .line 347
    :cond_12
    const-string v0, "TCP not connected"

    .line 348
    .line 349
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    return-object v13
.end method

.method public final c()Li23;
    .locals 5

    .line 1
    iget-object v0, p0, Lvd0;->h:Lh23;

    .line 2
    .line 3
    iget-object v0, v0, Lh23;->n:Lio2;

    .line 4
    .line 5
    iget-object v0, v0, Lio2;->y:Lra3;

    .line 6
    .line 7
    iget-object v1, p0, Lvd0;->j:Lqa3;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v2, v0, Lra3;->o:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Ljava/util/LinkedHashSet;

    .line 16
    .line 17
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    iget-object v0, p0, Lvd0;->u:Li23;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lvd0;->j:Lqa3;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lvd0;->i:Lu23;

    .line 32
    .line 33
    iget-object v2, p0, Lvd0;->k:Ljava/util/List;

    .line 34
    .line 35
    invoke-virtual {v1, p0, v2}, Lu23;->d(Lvd0;Ljava/util/List;)Lp83;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    iget-object p0, v1, Lp83;->a:Li23;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_0
    monitor-enter v0

    .line 45
    :try_start_1
    iget-object v1, p0, Lvd0;->b:Laz0;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    sget-object v2, Lhi4;->a:Ljava/util/TimeZone;

    .line 51
    .line 52
    iget-object v2, v1, Laz0;->d:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    iget-object v2, v1, Laz0;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v2, Lsw3;

    .line 62
    .line 63
    iget-object v1, v1, Laz0;->c:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, Lj23;

    .line 66
    .line 67
    const-wide/16 v3, 0x0

    .line 68
    .line 69
    invoke-virtual {v2, v1, v3, v4}, Lsw3;->c(Lnw3;J)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lvd0;->h:Lh23;

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lh23;->b(Li23;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    monitor-exit v0

    .line 78
    return-object v0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    monitor-exit v0

    .line 81
    throw p0

    .line 82
    :catchall_1
    move-exception p0

    .line 83
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    throw p0
.end method

.method public final cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lvd0;->o:Z

    .line 3
    .line 4
    iget-object p0, p0, Lvd0;->p:Ljava/net/Socket;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Lhi4;->b(Ljava/net/Socket;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lvd0;->s:Ld03;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final e()Lva3;
    .locals 8

    .line 1
    iget-object v0, p0, Lvd0;->b:Laz0;

    .line 2
    .line 3
    iget-object v1, p0, Lvd0;->h:Lh23;

    .line 4
    .line 5
    iget-object v1, v1, Lh23;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    iget-object v2, p0, Lvd0;->j:Lqa3;

    .line 8
    .line 9
    iget-object v3, p0, Lvd0;->p:Ljava/net/Socket;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_3

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    :try_start_0
    iget-object v5, v2, Lqa3;->c:Ljava/net/InetSocketAddress;

    .line 19
    .line 20
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lvd0;->f()V

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    new-instance v5, Lva3;

    .line 31
    .line 32
    const/4 v6, 0x6

    .line 33
    invoke-direct {v5, p0, v4, v6}, Lva3;-><init>(Lwa3;Ljava/lang/Throwable;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    return-object v5

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v4

    .line 43
    :try_start_1
    iget-object v5, v2, Lqa3;->a:Le7;

    .line 44
    .line 45
    iget-object v5, v2, Lqa3;->b:Ljava/net/Proxy;

    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    sget-object v6, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 52
    .line 53
    if-eq v5, v6, :cond_0

    .line 54
    .line 55
    iget-object v5, v2, Lqa3;->a:Le7;

    .line 56
    .line 57
    iget-object v6, v5, Le7;->g:Ljava/net/ProxySelector;

    .line 58
    .line 59
    iget-object v5, v5, Le7;->h:Lcn1;

    .line 60
    .line 61
    invoke-virtual {v5}, Lcn1;->g()Ljava/net/URI;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    iget-object v7, v2, Lqa3;->b:Ljava/net/Proxy;

    .line 66
    .line 67
    invoke-virtual {v7}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {v6, v5, v7, v4}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    iget-object v2, v2, Lqa3;->c:Ljava/net/InetSocketAddress;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    new-instance v0, Lva3;

    .line 83
    .line 84
    const/4 v2, 0x2

    .line 85
    invoke-direct {v0, p0, v4, v2}, Lva3;-><init>(Lwa3;Ljava/lang/Throwable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    if-nez v3, :cond_1

    .line 92
    .line 93
    iget-object p0, p0, Lvd0;->p:Ljava/net/Socket;

    .line 94
    .line 95
    if-eqz p0, :cond_1

    .line 96
    .line 97
    invoke-static {p0}, Lhi4;->b(Ljava/net/Socket;)V

    .line 98
    .line 99
    .line 100
    :cond_1
    return-object v0

    .line 101
    :goto_0
    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    if-nez v3, :cond_2

    .line 105
    .line 106
    iget-object p0, p0, Lvd0;->p:Ljava/net/Socket;

    .line 107
    .line 108
    if-eqz p0, :cond_2

    .line 109
    .line 110
    invoke-static {p0}, Lhi4;->b(Ljava/net/Socket;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    throw v0

    .line 114
    :cond_3
    const-string p0, "TCP already connected"

    .line 115
    .line 116
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-object v4
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lvd0;->j:Lqa3;

    .line 2
    .line 3
    iget-object v0, v0, Lqa3;->b:Ljava/net/Proxy;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lud0;->a:[I

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    aget v0, v1, v0

    .line 20
    .line 21
    :goto_0
    const/4 v1, 0x1

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    new-instance v0, Ljava/net/Socket;

    .line 28
    .line 29
    iget-object v1, p0, Lvd0;->j:Lqa3;

    .line 30
    .line 31
    iget-object v1, v1, Lqa3;->b:Ljava/net/Proxy;

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object v0, p0, Lvd0;->j:Lqa3;

    .line 38
    .line 39
    iget-object v0, v0, Lqa3;->a:Le7;

    .line 40
    .line 41
    iget-object v0, v0, Le7;->b:Ljavax/net/SocketFactory;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    :goto_1
    iput-object v0, p0, Lvd0;->p:Ljava/net/Socket;

    .line 51
    .line 52
    iget-boolean v1, p0, Lvd0;->o:Z

    .line 53
    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    iget v1, p0, Lvd0;->f:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 59
    .line 60
    .line 61
    :try_start_0
    sget-object v1, Liv2;->a:Liv2;

    .line 62
    .line 63
    sget-object v1, Liv2;->a:Liv2;

    .line 64
    .line 65
    iget-object v2, p0, Lvd0;->j:Lqa3;

    .line 66
    .line 67
    iget-object v2, v2, Lqa3;->c:Ljava/net/InetSocketAddress;

    .line 68
    .line 69
    iget v3, p0, Lvd0;->e:I

    .line 70
    .line 71
    invoke-virtual {v1, v0, v2, v3}, Liv2;->e(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    .line 73
    .line 74
    :try_start_1
    new-instance v1, Lqd1;

    .line 75
    .line 76
    invoke-direct {v1, v0}, Lqd1;-><init>(Ljava/net/Socket;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Leh;

    .line 80
    .line 81
    invoke-direct {v0, v1}, Leh;-><init>(Lqd1;)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lvd0;->t:Leh;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    .line 86
    return-void

    .line 87
    :catch_0
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v1, "throw with null exception"

    .line 93
    .line 94
    invoke-static {v0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_2

    .line 99
    .line 100
    return-void

    .line 101
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 102
    .line 103
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :catch_1
    move-exception v0

    .line 108
    new-instance v1, Ljava/net/ConnectException;

    .line 109
    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v3, "Failed to connect to "

    .line 113
    .line 114
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object p0, p0, Lvd0;->j:Lqa3;

    .line 118
    .line 119
    iget-object p0, p0, Lqa3;->c:Ljava/net/InetSocketAddress;

    .line 120
    .line 121
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-direct {v1, p0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 132
    .line 133
    .line 134
    throw v1

    .line 135
    :cond_3
    const-string p0, "canceled"

    .line 136
    .line 137
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public final g(Ljavax/net/ssl/SSLSocket;Lne0;)V
    .locals 9

    .line 1
    const-string v0, "Hostname "

    .line 2
    .line 3
    const-string v1, "\n            |Hostname "

    .line 4
    .line 5
    iget-object v2, p0, Lvd0;->j:Lqa3;

    .line 6
    .line 7
    iget-object v2, v2, Lqa3;->a:Le7;

    .line 8
    .line 9
    :try_start_0
    iget-boolean v3, p2, Lne0;->b:Z

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    sget-object v3, Liv2;->a:Liv2;

    .line 14
    .line 15
    sget-object v3, Liv2;->a:Liv2;

    .line 16
    .line 17
    iget-object v4, v2, Le7;->h:Lcn1;

    .line 18
    .line 19
    iget-object v4, v4, Lcn1;->d:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v5, v2, Le7;->i:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {v3, p1, v4, v5}, Liv2;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Lca;->s(Ljavax/net/ssl/SSLSession;)Laj1;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iget-object v5, v2, Le7;->d:Ljavax/net/ssl/HostnameVerifier;

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object v6, v2, Le7;->h:Lcn1;

    .line 50
    .line 51
    iget-object v6, v6, Lcn1;->d:Ljava/lang/String;

    .line 52
    .line 53
    invoke-interface {v5, v6, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const/4 v5, 0x2

    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    invoke-virtual {v4}, Laj1;->a()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-nez p2, :cond_1

    .line 69
    .line 70
    const/4 p2, 0x0

    .line 71
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 79
    .line 80
    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 81
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v2, Le7;->h:Lcn1;

    .line 88
    .line 89
    iget-object v1, v1, Lcn1;->d:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, " not verified:\n            |    certificate: "

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    sget-object v1, Lj30;->c:Lj30;

    .line 100
    .line 101
    invoke-static {p0}, Lw80;->M(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, "\n            |    DN: "

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-interface {v1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, "\n            |    subjectAltNames: "

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const/4 v1, 0x7

    .line 130
    invoke-static {p0, v1}, Lho2;->b(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {p0, v5}, Lho2;->b(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-static {v1, p0}, Lo70;->s0(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string p0, "\n            "

    .line 146
    .line 147
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-static {p0}, Lat3;->p0(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-direct {p2, p0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p2

    .line 162
    :cond_1
    new-instance p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 163
    .line 164
    new-instance p2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, v2, Le7;->h:Lcn1;

    .line 170
    .line 171
    iget-object v0, v0, Lcn1;->d:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v0, " not verified (no certificates)"

    .line 177
    .line 178
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-direct {p0, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p0

    .line 189
    :cond_2
    iget-object v0, v2, Le7;->e:Lj30;

    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    new-instance v1, Laj1;

    .line 195
    .line 196
    iget-object v3, v4, Laj1;->a:Lsz3;

    .line 197
    .line 198
    iget-object v6, v4, Laj1;->b:Ld50;

    .line 199
    .line 200
    iget-object v7, v4, Laj1;->c:Ljava/util/List;

    .line 201
    .line 202
    new-instance v8, Lpp;

    .line 203
    .line 204
    invoke-direct {v8, v0, v4, v2, v5}, Lpp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 205
    .line 206
    .line 207
    invoke-direct {v1, v3, v6, v7, v8}, Laj1;-><init>(Lsz3;Ld50;Ljava/util/List;Lne1;)V

    .line 208
    .line 209
    .line 210
    iput-object v1, p0, Lvd0;->r:Laj1;

    .line 211
    .line 212
    iget-object v1, v2, Le7;->h:Lcn1;

    .line 213
    .line 214
    iget-object v1, v1, Lcn1;->d:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    iget-object v0, v0, Lj30;->a:Ljava/util/Set;

    .line 220
    .line 221
    check-cast v0, Ljava/lang/Iterable;

    .line 222
    .line 223
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    const/4 v2, 0x0

    .line 232
    if-nez v1, :cond_5

    .line 233
    .line 234
    iget-boolean p2, p2, Lne0;->b:Z

    .line 235
    .line 236
    if-eqz p2, :cond_3

    .line 237
    .line 238
    sget-object p2, Liv2;->a:Liv2;

    .line 239
    .line 240
    sget-object p2, Liv2;->a:Liv2;

    .line 241
    .line 242
    invoke-virtual {p2, p1}, Liv2;->f(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    :cond_3
    iput-object p1, p0, Lvd0;->q:Ljava/net/Socket;

    .line 247
    .line 248
    new-instance p2, Lqd1;

    .line 249
    .line 250
    invoke-direct {p2, p1}, Lqd1;-><init>(Ljava/net/Socket;)V

    .line 251
    .line 252
    .line 253
    new-instance v0, Leh;

    .line 254
    .line 255
    invoke-direct {v0, p2}, Leh;-><init>(Lqd1;)V

    .line 256
    .line 257
    .line 258
    iput-object v0, p0, Lvd0;->t:Leh;

    .line 259
    .line 260
    if-eqz v2, :cond_4

    .line 261
    .line 262
    sget-object p2, Ld03;->o:Lqz0;

    .line 263
    .line 264
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    invoke-static {v2}, Lqz0;->m(Ljava/lang/String;)Ld03;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    goto :goto_1

    .line 272
    :cond_4
    sget-object p2, Ld03;->q:Ld03;

    .line 273
    .line 274
    :goto_1
    iput-object p2, p0, Lvd0;->s:Ld03;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    .line 276
    sget-object p0, Liv2;->a:Liv2;

    .line 277
    .line 278
    sget-object p0, Liv2;->a:Liv2;

    .line 279
    .line 280
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    :cond_5
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object p0

    .line 288
    invoke-static {p0}, Ldi0;->D(Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    :goto_2
    sget-object p2, Liv2;->a:Liv2;

    .line 293
    .line 294
    sget-object p2, Liv2;->a:Liv2;

    .line 295
    .line 296
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    invoke-static {p1}, Lhi4;->b(Ljava/net/Socket;)V

    .line 300
    .line 301
    .line 302
    throw p0
.end method

.method public final h()Lva3;
    .locals 9

    .line 1
    iget-object v0, p0, Lvd0;->l:Lk63;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lvd0;->j:Lqa3;

    .line 7
    .line 8
    iget-object v2, v1, Lqa3;->a:Le7;

    .line 9
    .line 10
    iget-object v2, v2, Le7;->h:Lcn1;

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "CONNECT "

    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-static {v2, v4}, Lhi4;->g(Lcn1;Z)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, " HTTP/1.1"

    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-instance v3, Lsk1;

    .line 37
    .line 38
    iget-object v4, p0, Lvd0;->t:Leh;

    .line 39
    .line 40
    const-string v5, "socket"

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    if-eqz v4, :cond_5

    .line 44
    .line 45
    invoke-direct {v3, v6, p0, v4}, Lsk1;-><init>(Lio2;Lx21;Leh;)V

    .line 46
    .line 47
    .line 48
    iget-object v4, p0, Lvd0;->t:Leh;

    .line 49
    .line 50
    if-eqz v4, :cond_4

    .line 51
    .line 52
    iget-object v4, v4, Leh;->p:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v4, Ld23;

    .line 55
    .line 56
    iget-object v4, v4, Ld23;->n:Lyp3;

    .line 57
    .line 58
    invoke-interface {v4}, Lyp3;->g()Lmz3;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    iget v7, p0, Lvd0;->c:I

    .line 63
    .line 64
    int-to-long v7, v7

    .line 65
    invoke-virtual {v4, v7, v8}, Lmz3;->g(J)Lmz3;

    .line 66
    .line 67
    .line 68
    iget-object v4, p0, Lvd0;->t:Leh;

    .line 69
    .line 70
    if-eqz v4, :cond_3

    .line 71
    .line 72
    iget-object v4, v4, Leh;->q:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v4, Lc23;

    .line 75
    .line 76
    iget-object v4, v4, Lc23;->n:Lkn3;

    .line 77
    .line 78
    invoke-interface {v4}, Lkn3;->g()Lmz3;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    iget v5, p0, Lvd0;->d:I

    .line 83
    .line 84
    int-to-long v7, v5

    .line 85
    invoke-virtual {v4, v7, v8}, Lmz3;->g(J)Lmz3;

    .line 86
    .line 87
    .line 88
    iget-object v4, v0, Lk63;->c:Lkj1;

    .line 89
    .line 90
    invoke-virtual {v3, v4, v2}, Lsk1;->b(Lkj1;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Lsk1;->i()V

    .line 94
    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    invoke-virtual {v3, v2}, Lsk1;->o(Z)Lv73;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iput-object v0, v2, Lv73;->a:Lk63;

    .line 105
    .line 106
    invoke-virtual {v2}, Lv73;->a()Lw73;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget v2, v0, Lw73;->q:I

    .line 111
    .line 112
    invoke-static {v0}, Lhi4;->d(Lw73;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v4

    .line 116
    const-wide/16 v7, -0x1

    .line 117
    .line 118
    cmp-long v7, v4, v7

    .line 119
    .line 120
    if-nez v7, :cond_0

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, v0, Lw73;->n:Lk63;

    .line 124
    .line 125
    iget-object v0, v0, Lk63;->a:Lcn1;

    .line 126
    .line 127
    invoke-virtual {v3, v0, v4, v5}, Lsk1;->a(Lcn1;J)Lqk1;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const v3, 0x7fffffff

    .line 132
    .line 133
    .line 134
    invoke-static {v0, v3}, Lhi4;->e(Lyp3;I)Z

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Lqk1;->close()V

    .line 138
    .line 139
    .line 140
    :goto_0
    const/16 v0, 0xc8

    .line 141
    .line 142
    if-eq v2, v0, :cond_2

    .line 143
    .line 144
    const/16 p0, 0x197

    .line 145
    .line 146
    if-ne v2, p0, :cond_1

    .line 147
    .line 148
    iget-object p0, v1, Lqa3;->a:Le7;

    .line 149
    .line 150
    iget-object p0, p0, Le7;->f:Lw13;

    .line 151
    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    const-string p0, "Failed to authenticate with proxy"

    .line 156
    .line 157
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return-object v6

    .line 161
    :cond_1
    const-string p0, "Unexpected response code for CONNECT: "

    .line 162
    .line 163
    invoke-static {v2, p0}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    return-object v6

    .line 171
    :cond_2
    new-instance v0, Lva3;

    .line 172
    .line 173
    const/4 v1, 0x6

    .line 174
    invoke-direct {v0, p0, v6, v1}, Lva3;-><init>(Lwa3;Ljava/lang/Throwable;I)V

    .line 175
    .line 176
    .line 177
    return-object v0

    .line 178
    :cond_3
    invoke-static {v5}, Lnt1;->X(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw v6

    .line 182
    :cond_4
    invoke-static {v5}, Lnt1;->X(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v6

    .line 186
    :cond_5
    invoke-static {v5}, Lnt1;->X(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw v6
.end method

.method public final i()Lqa3;
    .locals 0

    .line 1
    iget-object p0, p0, Lvd0;->j:Lqa3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final j(Lh23;Ljava/io/IOException;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final k()V
    .locals 0

    .line 1
    return-void
.end method

.method public final l(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lvd0;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget v1, v0, Lvd0;->m:I

    .line 7
    .line 8
    add-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    :goto_0
    if-ge v2, v3, :cond_4

    .line 15
    .line 16
    move-object/from16 v4, p1

    .line 17
    .line 18
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Lne0;

    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-boolean v6, v5, Lne0;->a:Z

    .line 28
    .line 29
    if-nez v6, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object v6, v5, Lne0;->d:[Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v6, :cond_1

    .line 35
    .line 36
    invoke-virtual/range {p2 .. p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    sget-object v8, Luh2;->o:Luh2;

    .line 41
    .line 42
    invoke-static {v6, v7, v8}, Lfi4;->d([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-nez v6, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object v5, v5, Lne0;->c:[Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v5, :cond_2

    .line 52
    .line 53
    invoke-virtual/range {p2 .. p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    sget-object v7, Ld50;->c:Llh0;

    .line 58
    .line 59
    invoke-static {v5, v6, v7}, Lfi4;->d([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_2

    .line 64
    .line 65
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const/4 v3, -0x1

    .line 69
    if-eq v1, v3, :cond_3

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    :goto_2
    move/from16 v18, v1

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    const/4 v1, 0x0

    .line 76
    goto :goto_2

    .line 77
    :goto_3
    new-instance v4, Lvd0;

    .line 78
    .line 79
    iget-object v14, v0, Lvd0;->j:Lqa3;

    .line 80
    .line 81
    iget-object v15, v0, Lvd0;->k:Ljava/util/List;

    .line 82
    .line 83
    iget-object v5, v0, Lvd0;->a:Ltw3;

    .line 84
    .line 85
    iget-object v6, v0, Lvd0;->b:Laz0;

    .line 86
    .line 87
    iget v7, v0, Lvd0;->c:I

    .line 88
    .line 89
    iget v8, v0, Lvd0;->d:I

    .line 90
    .line 91
    iget v9, v0, Lvd0;->e:I

    .line 92
    .line 93
    iget v10, v0, Lvd0;->f:I

    .line 94
    .line 95
    iget-boolean v11, v0, Lvd0;->g:Z

    .line 96
    .line 97
    iget-object v12, v0, Lvd0;->h:Lh23;

    .line 98
    .line 99
    iget-object v13, v0, Lvd0;->i:Lu23;

    .line 100
    .line 101
    iget-object v0, v0, Lvd0;->l:Lk63;

    .line 102
    .line 103
    move-object/from16 v16, v0

    .line 104
    .line 105
    move/from16 v17, v2

    .line 106
    .line 107
    invoke-direct/range {v4 .. v18}, Lvd0;-><init>(Ltw3;Laz0;IIIIZLh23;Lu23;Lqa3;Ljava/util/List;Lk63;IZ)V

    .line 108
    .line 109
    .line 110
    return-object v4

    .line 111
    :cond_4
    const/4 v0, 0x0

    .line 112
    return-object v0
.end method

.method public final m(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lvd0;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lvd0;->m:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Lvd0;->l(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lvd0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    new-instance v0, Ljava/net/UnknownServiceException;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "Unable to find acceptable protocols. isFallback="

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-boolean p0, p0, Lvd0;->n:Z

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p0, ", modes="

    .line 32
    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const-string p1, ", supported protocols="

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-direct {v0, p0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0
.end method

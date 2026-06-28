.class public final Lbp0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lorg/apache/commons/logging/Log;

.field public final b:Lr82;

.field public final c:Lmj1;

.field public final d:Lqv3;


# direct methods
.method public constructor <init>(Ly43;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lbp0;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lbp0;->a:Lorg/apache/commons/logging/Log;

    .line 11
    .line 12
    const-string v0, "Socket factory registry"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lbp0;->b:Lr82;

    .line 18
    .line 19
    sget-object p1, Lmj1;->K:Lmj1;

    .line 20
    .line 21
    iput-object p1, p0, Lbp0;->c:Lmj1;

    .line 22
    .line 23
    sget-object p1, Lqv3;->o:Lqv3;

    .line 24
    .line 25
    iput-object p1, p0, Lbp0;->d:Lqv3;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lv92;Lem1;Ljava/net/InetSocketAddress;ILmp3;Lrl1;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v6, p2

    .line 6
    .line 7
    move-object/from16 v9, p6

    .line 8
    .line 9
    const-string v10, "Connect to "

    .line 10
    .line 11
    const-string v0, "http.socket-factory-registry"

    .line 12
    .line 13
    iget-object v3, v9, Lvl1;->n:Lul1;

    .line 14
    .line 15
    invoke-interface {v3, v0}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lr82;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, v1, Lbp0;->b:Lr82;

    .line 24
    .line 25
    :cond_0
    iget-object v3, v6, Lem1;->q:Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {v0, v3}, Lr82;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    move-object v3, v0

    .line 32
    check-cast v3, Lle0;

    .line 33
    .line 34
    if-eqz v3, :cond_b

    .line 35
    .line 36
    iget-object v0, v6, Lem1;->n:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v4, v1, Lbp0;->d:Lqv3;

    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    iget-object v0, v1, Lbp0;->c:Lmj1;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {v6}, Lmj1;->t(Lem1;)I

    .line 53
    .line 54
    .line 55
    move-result v12

    .line 56
    const/4 v13, 0x0

    .line 57
    move v14, v13

    .line 58
    :goto_0
    array-length v0, v11

    .line 59
    if-ge v14, v0, :cond_a

    .line 60
    .line 61
    aget-object v0, v11, v14

    .line 62
    .line 63
    array-length v4, v11

    .line 64
    const/4 v5, 0x1

    .line 65
    sub-int/2addr v4, v5

    .line 66
    if-ne v14, v4, :cond_1

    .line 67
    .line 68
    move v15, v5

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move v15, v13

    .line 71
    :goto_1
    invoke-interface {v3, v9}, Lle0;->createSocket(Lul1;)Ljava/net/Socket;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v4, v13}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v13}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v5}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v13}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v2, v4}, Lv92;->S(Ljava/net/Socket;)V

    .line 88
    .line 89
    .line 90
    new-instance v7, Ljava/net/InetSocketAddress;

    .line 91
    .line 92
    invoke-direct {v7, v0, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, v1, Lbp0;->a:Lorg/apache/commons/logging/Log;

    .line 96
    .line 97
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    iget-object v0, v1, Lbp0;->a:Lorg/apache/commons/logging/Log;

    .line 104
    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v8, "Connecting to "

    .line 108
    .line 109
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-interface {v0, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :cond_2
    move-object/from16 v8, p3

    .line 123
    .line 124
    move-object v5, v4

    .line 125
    move/from16 v4, p4

    .line 126
    .line 127
    :try_start_0
    invoke-interface/range {v3 .. v9}, Lle0;->connectSocket(ILjava/net/Socket;Lem1;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lul1;)Ljava/net/Socket;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-interface {v2, v0}, Lv92;->S(Ljava/net/Socket;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, v1, Lbp0;->a:Lorg/apache/commons/logging/Log;

    .line 135
    .line 136
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_a

    .line 141
    .line 142
    iget-object v0, v1, Lbp0;->a:Lorg/apache/commons/logging/Log;

    .line 143
    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v5, "Connection established "

    .line 150
    .line 151
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-interface {v0, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .line 163
    .line 164
    goto/16 :goto_9

    .line 165
    .line 166
    :catch_0
    move-exception v0

    .line 167
    goto :goto_2

    .line 168
    :catch_1
    move-exception v0

    .line 169
    goto :goto_3

    .line 170
    :catch_2
    move-exception v0

    .line 171
    goto :goto_7

    .line 172
    :goto_2
    if-nez v15, :cond_3

    .line 173
    .line 174
    goto :goto_8

    .line 175
    :cond_3
    throw v0

    .line 176
    :goto_3
    if-eqz v15, :cond_7

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    const-string v2, "Connection timed out"

    .line 183
    .line 184
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-nez v1, :cond_6

    .line 189
    .line 190
    new-instance v1, Lfm1;

    .line 191
    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v6}, Lem1;->a()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    array-length v3, v11

    .line 205
    if-lez v3, :cond_4

    .line 206
    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string v4, " "

    .line 210
    .line 211
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    goto :goto_4

    .line 226
    :cond_4
    const-string v3, ""

    .line 227
    .line 228
    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    if-eqz v3, :cond_5

    .line 236
    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    const-string v4, " failed: "

    .line 240
    .line 241
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    goto :goto_5

    .line 256
    :cond_5
    const-string v3, " refused"

    .line 257
    .line 258
    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 269
    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_6
    new-instance v1, Lwd0;

    .line 273
    .line 274
    invoke-direct {v1, v0, v6, v11}, Lwd0;-><init>(Ljava/io/IOException;Lem1;[Ljava/net/InetAddress;)V

    .line 275
    .line 276
    .line 277
    :goto_6
    throw v1

    .line 278
    :goto_7
    if-nez v15, :cond_9

    .line 279
    .line 280
    :cond_7
    :goto_8
    iget-object v0, v1, Lbp0;->a:Lorg/apache/commons/logging/Log;

    .line 281
    .line 282
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_8

    .line 287
    .line 288
    iget-object v0, v1, Lbp0;->a:Lorg/apache/commons/logging/Log;

    .line 289
    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v5, " timed out. Connection will be retried using another IP address"

    .line 299
    .line 300
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-interface {v0, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    :cond_8
    add-int/lit8 v14, v14, 0x1

    .line 311
    .line 312
    move-object/from16 v9, p6

    .line 313
    .line 314
    goto/16 :goto_0

    .line 315
    .line 316
    :cond_9
    new-instance v1, Lwd0;

    .line 317
    .line 318
    invoke-direct {v1, v0, v6, v11}, Lwd0;-><init>(Ljava/io/IOException;Lem1;[Ljava/net/InetAddress;)V

    .line 319
    .line 320
    .line 321
    throw v1

    .line 322
    :cond_a
    :goto_9
    return-void

    .line 323
    :cond_b
    new-instance v0, Lr74;

    .line 324
    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    .line 330
    iget-object v2, v6, Lem1;->q:Ljava/lang/String;

    .line 331
    .line 332
    const-string v3, " protocol is not supported"

    .line 333
    .line 334
    invoke-static {v1, v2, v3}, Lxw1;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw v0
.end method

.class public abstract Luf1;
.super Loj;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final o:Lorg/apache/commons/logging/Log;

.field public final p:Loq;

.field public final q:Z

.field public final r:Z

.field public s:I

.field public t:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Luf1;->o:Lorg/apache/commons/logging/Log;

    .line 13
    .line 14
    new-instance v0, Loq;

    .line 15
    .line 16
    invoke-direct {v0}, Loq;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Luf1;->p:Loq;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Luf1;->q:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Luf1;->r:Z

    .line 25
    .line 26
    iput v0, p0, Luf1;->s:I

    .line 27
    .line 28
    return-void
.end method

.method public static j(Lorg/ietf/jgss/GSSManager;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSName;)Lorg/ietf/jgss/GSSContext;
    .locals 2

    .line 1
    invoke-interface {p2, p1}, Lorg/ietf/jgss/GSSName;->canonicalize(Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p2, p1, v1, v0}, Lorg/ietf/jgss/GSSManager;->createContext(Lorg/ietf/jgss/GSSName;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSCredential;I)Lorg/ietf/jgss/GSSContext;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-interface {p0, p1}, Lorg/ietf/jgss/GSSContext;->requestMutualAuth(Z)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public static k([BLorg/ietf/jgss/Oid;Ljava/lang/String;)[B
    .locals 2

    .line 1
    invoke-static {}, Luf1;->m()Lorg/ietf/jgss/GSSManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "HTTP@"

    .line 6
    .line 7
    invoke-static {v1, p2}, Ldi0;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    sget-object v1, Lorg/ietf/jgss/GSSName;->NT_HOSTBASED_SERVICE:Lorg/ietf/jgss/Oid;

    .line 12
    .line 13
    invoke-virtual {v0, p2, v1}, Lorg/ietf/jgss/GSSManager;->createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {v0, p1, p2}, Luf1;->j(Lorg/ietf/jgss/GSSManager;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSName;)Lorg/ietf/jgss/GSSContext;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 p2, 0x0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    array-length v0, p0

    .line 25
    invoke-interface {p1, p0, p2, v0}, Lorg/ietf/jgss/GSSContext;->initSecContext([BII)[B

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    new-array p0, p2, [B

    .line 31
    .line 32
    invoke-interface {p1, p0, p2, p2}, Lorg/ietf/jgss/GSSContext;->initSecContext([BII)[B

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static m()Lorg/ietf/jgss/GSSManager;
    .locals 1

    .line 1
    invoke-static {}, Lorg/ietf/jgss/GSSManager;->getInstance()Lorg/ietf/jgss/GSSManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public final a(Lyk0;Lom1;)Lgj1;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Luf1;->b(Lyk0;Lom1;Lul1;)Lgj1;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public b(Lyk0;Lom1;Lul1;)Lgj1;
    .locals 5

    .line 1
    const-string p2, "init "

    .line 2
    .line 3
    iget v0, p0, Luf1;->s:I

    .line 4
    .line 5
    invoke-static {v0}, Ldi0;->F(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_14

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x3

    .line 14
    if-eq v0, v2, :cond_5

    .line 15
    .line 16
    const/4 p1, 0x2

    .line 17
    if-eq v0, p1, :cond_c

    .line 18
    .line 19
    if-eq v0, v3, :cond_4

    .line 20
    .line 21
    iget p0, p0, Luf1;->s:I

    .line 22
    .line 23
    if-eq p0, v2, :cond_3

    .line 24
    .line 25
    if-eq p0, p1, :cond_2

    .line 26
    .line 27
    if-eq p0, v3, :cond_1

    .line 28
    .line 29
    if-eq p0, v1, :cond_0

    .line 30
    .line 31
    const-string p0, "null"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string p0, "FAILED"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string p0, "TOKEN_GENERATED"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-string p0, "CHALLENGE_RECEIVED"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const-string p0, "UNINITIATED"

    .line 44
    .line 45
    :goto_0
    const-string p1, "Illegal state: "

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    return-object p0

    .line 56
    :cond_4
    new-instance p1, Luj;

    .line 57
    .line 58
    invoke-virtual {p0}, Loj;->d()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string p2, " authentication has failed"

    .line 63
    .line 64
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_5
    :try_start_0
    const-string v0, "http.route"

    .line 77
    .line 78
    invoke-interface {p3, v0}, Lul1;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    check-cast p3, Lym1;

    .line 83
    .line 84
    if-eqz p3, :cond_f

    .line 85
    .line 86
    iget-object v0, p3, Lym1;->n:Lem1;

    .line 87
    .line 88
    invoke-virtual {p0}, Loj;->g()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_7

    .line 93
    .line 94
    invoke-virtual {p3}, Lym1;->e()Lem1;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    if-nez p3, :cond_6

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_6
    move-object v0, p3

    .line 102
    goto :goto_1

    .line 103
    :catch_0
    move-exception p1

    .line 104
    goto/16 :goto_5

    .line 105
    .line 106
    :cond_7
    :goto_1
    iget-object p3, v0, Lem1;->n:Ljava/lang/String;

    .line 107
    .line 108
    iget-boolean v2, p0, Luf1;->r:Z
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    if-eqz v2, :cond_9

    .line 111
    .line 112
    :try_start_1
    invoke-static {p3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v2}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v2
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/ietf/jgss/GSSException; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    if-eqz v2, :cond_8

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_8
    move-object p3, v4

    .line 132
    :catch_1
    :cond_9
    :goto_2
    :try_start_2
    iget-boolean v2, p0, Luf1;->q:Z

    .line 133
    .line 134
    if-eqz v2, :cond_a

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string p3, ":"

    .line 146
    .line 147
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget p3, v0, Lem1;->p:I

    .line 151
    .line 152
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p3

    .line 159
    :goto_3
    iget-object v0, p0, Luf1;->o:Lorg/apache/commons/logging/Log;

    .line 160
    .line 161
    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_b

    .line 166
    .line 167
    iget-object v0, p0, Luf1;->o:Lorg/apache/commons/logging/Log;

    .line 168
    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-interface {v0, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_b
    iget-object p2, p0, Luf1;->t:[B

    .line 185
    .line 186
    invoke-virtual {p0, p2, p3, p1}, Luf1;->l([BLjava/lang/String;Lyk0;)[B

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    iput-object p1, p0, Luf1;->t:[B

    .line 191
    .line 192
    iput v3, p0, Luf1;->s:I
    :try_end_2
    .catch Lorg/ietf/jgss/GSSException; {:try_start_2 .. :try_end_2} :catch_0

    .line 193
    .line 194
    :cond_c
    new-instance p1, Ljava/lang/String;

    .line 195
    .line 196
    iget-object p2, p0, Luf1;->p:Loq;

    .line 197
    .line 198
    iget-object p3, p0, Luf1;->t:[B

    .line 199
    .line 200
    invoke-virtual {p2, p3}, Lnr;->b([B)[B

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    .line 205
    .line 206
    .line 207
    iget-object p2, p0, Luf1;->o:Lorg/apache/commons/logging/Log;

    .line 208
    .line 209
    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    if-eqz p2, :cond_d

    .line 214
    .line 215
    iget-object p2, p0, Luf1;->o:Lorg/apache/commons/logging/Log;

    .line 216
    .line 217
    new-instance p3, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string v0, "Sending response \'"

    .line 220
    .line 221
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v0, "\' back to the auth server"

    .line 228
    .line 229
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p3

    .line 236
    invoke-interface {p2, p3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    :cond_d
    new-instance p2, Lb40;

    .line 240
    .line 241
    const/16 p3, 0x20

    .line 242
    .line 243
    invoke-direct {p2, p3}, Lb40;-><init>(I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Loj;->g()Z

    .line 247
    .line 248
    .line 249
    move-result p0

    .line 250
    if-eqz p0, :cond_e

    .line 251
    .line 252
    const-string p0, "Proxy-Authorization"

    .line 253
    .line 254
    invoke-virtual {p2, p0}, Lb40;->b(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_e
    const-string p0, "Authorization"

    .line 259
    .line 260
    invoke-virtual {p2, p0}, Lb40;->b(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    :goto_4
    const-string p0, ": Negotiate "

    .line 264
    .line 265
    invoke-virtual {p2, p0}, Lb40;->b(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p2, p1}, Lb40;->b(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    new-instance p0, Lcz;

    .line 272
    .line 273
    invoke-direct {p0, p2}, Lcz;-><init>(Lb40;)V

    .line 274
    .line 275
    .line 276
    return-object p0

    .line 277
    :cond_f
    :try_start_3
    new-instance p1, Luj;

    .line 278
    .line 279
    const-string p2, "Connection route is not available"

    .line 280
    .line 281
    invoke-static {p2}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p2

    .line 285
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw p1
    :try_end_3
    .catch Lorg/ietf/jgss/GSSException; {:try_start_3 .. :try_end_3} :catch_0

    .line 289
    :goto_5
    iput v1, p0, Luf1;->s:I

    .line 290
    .line 291
    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMajor()I

    .line 292
    .line 293
    .line 294
    move-result p0

    .line 295
    const/16 p2, 0x9

    .line 296
    .line 297
    if-eq p0, p2, :cond_13

    .line 298
    .line 299
    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMajor()I

    .line 300
    .line 301
    .line 302
    move-result p0

    .line 303
    const/16 p2, 0x8

    .line 304
    .line 305
    if-eq p0, p2, :cond_13

    .line 306
    .line 307
    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMajor()I

    .line 308
    .line 309
    .line 310
    move-result p0

    .line 311
    const/16 p2, 0xd

    .line 312
    .line 313
    if-eq p0, p2, :cond_12

    .line 314
    .line 315
    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMajor()I

    .line 316
    .line 317
    .line 318
    move-result p0

    .line 319
    const/16 p2, 0xa

    .line 320
    .line 321
    if-eq p0, p2, :cond_11

    .line 322
    .line 323
    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMajor()I

    .line 324
    .line 325
    .line 326
    move-result p0

    .line 327
    const/16 p2, 0x13

    .line 328
    .line 329
    if-eq p0, p2, :cond_11

    .line 330
    .line 331
    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMajor()I

    .line 332
    .line 333
    .line 334
    move-result p0

    .line 335
    const/16 p2, 0x14

    .line 336
    .line 337
    if-ne p0, p2, :cond_10

    .line 338
    .line 339
    goto :goto_6

    .line 340
    :cond_10
    new-instance p0, Luj;

    .line 341
    .line 342
    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMessage()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-direct {p0, p1}, Lcm1;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    throw p0

    .line 350
    :cond_11
    :goto_6
    new-instance p0, Luj;

    .line 351
    .line 352
    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMessage()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p2

    .line 356
    invoke-direct {p0, p2, p1}, Lcm1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 357
    .line 358
    .line 359
    throw p0

    .line 360
    :cond_12
    new-instance p0, Lut1;

    .line 361
    .line 362
    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMessage()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object p2

    .line 366
    invoke-direct {p0, p2, p1}, Lcm1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 367
    .line 368
    .line 369
    throw p0

    .line 370
    :cond_13
    new-instance p0, Lut1;

    .line 371
    .line 372
    invoke-virtual {p1}, Lorg/ietf/jgss/GSSException;->getMessage()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object p2

    .line 376
    invoke-direct {p0, p2, p1}, Lcm1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 377
    .line 378
    .line 379
    throw p0

    .line 380
    :cond_14
    new-instance p1, Luj;

    .line 381
    .line 382
    invoke-virtual {p0}, Loj;->d()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object p0

    .line 386
    const-string p2, " authentication has not been initiated"

    .line 387
    .line 388
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object p0

    .line 392
    invoke-static {p0}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p0

    .line 396
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    throw p1
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget p0, p0, Luf1;->s:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method public final h(Lb40;II)V
    .locals 1

    .line 1
    invoke-virtual {p1, p2, p3}, Lb40;->i(II)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Luf1;->o:Lorg/apache/commons/logging/Log;

    .line 6
    .line 7
    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Luf1;->o:Lorg/apache/commons/logging/Log;

    .line 14
    .line 15
    new-instance p3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v0, "Received challenge \'"

    .line 18
    .line 19
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, "\' from the auth server"

    .line 26
    .line 27
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-interface {p2, p3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget p2, p0, Luf1;->s:I

    .line 38
    .line 39
    const/4 p3, 0x1

    .line 40
    if-ne p2, p3, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Loq;->f([B)[B

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Luf1;->t:[B

    .line 51
    .line 52
    const/4 p1, 0x2

    .line 53
    iput p1, p0, Luf1;->s:I

    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    iget-object p1, p0, Luf1;->o:Lorg/apache/commons/logging/Log;

    .line 57
    .line 58
    const-string p2, "Authentication already attempted"

    .line 59
    .line 60
    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x4

    .line 64
    iput p1, p0, Luf1;->s:I

    .line 65
    .line 66
    return-void
.end method

.method public abstract l([BLjava/lang/String;Lyk0;)[B
.end method

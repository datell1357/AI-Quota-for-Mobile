.class public final Lf03;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lj60;


# instance fields
.field public final a:Lorg/apache/commons/logging/Log;

.field public final b:Lm92;

.field public final c:Lfp1;


# direct methods
.method public constructor <init>(Lm92;Lfp1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lf03;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lf03;->a:Lorg/apache/commons/logging/Log;

    .line 11
    .line 12
    iput-object p1, p0, Lf03;->b:Lm92;

    .line 13
    .line 14
    iput-object p2, p0, Lf03;->c:Lfp1;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lym1;Lum1;Lrl1;Lj0;)Lt60;
    .locals 8

    .line 1
    const-string v0, "HTTP route"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lym1;->n:Lem1;

    .line 7
    .line 8
    iget-object v1, p2, Lum1;->n:Lom1;

    .line 9
    .line 10
    instance-of v2, v1, Lan1;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    check-cast v1, Lan1;

    .line 16
    .line 17
    invoke-interface {v1}, Lan1;->getURI()Ljava/net/URI;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {v1}, Lom1;->getRequestLine()Ld73;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lhv;

    .line 27
    .line 28
    iget-object v1, v1, Lhv;->p:Ljava/lang/String;

    .line 29
    .line 30
    :try_start_0
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 31
    .line 32
    .line 33
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v2

    .line 36
    iget-object v4, p0, Lf03;->a:Lorg/apache/commons/logging/Log;

    .line 37
    .line 38
    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    iget-object v4, p0, Lf03;->a:Lorg/apache/commons/logging/Log;

    .line 45
    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v6, "Unable to parse \'"

    .line 49
    .line 50
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, "\' as a valid URI; request URI and Host header may be inconsistent"

    .line 57
    .line 58
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v4, v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    move-object v1, v3

    .line 69
    :goto_0
    iput-object v1, p2, Lum1;->s:Ljava/net/URI;

    .line 70
    .line 71
    iput-object v3, p2, Lum1;->q:Lhv;

    .line 72
    .line 73
    invoke-virtual {p3}, Lrl1;->d()Lv63;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iget-boolean v2, v2, Lv63;->C:Z

    .line 78
    .line 79
    iget-object v4, p2, Lum1;->s:Ljava/net/URI;

    .line 80
    .line 81
    if-eqz v4, :cond_7

    .line 82
    .line 83
    :try_start_1
    sget-object v5, Lz54;->b:Ljava/util/EnumSet;

    .line 84
    .line 85
    sget-object v6, Lz54;->d:Ljava/util/EnumSet;

    .line 86
    .line 87
    invoke-virtual {p1}, Lym1;->e()Lem1;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    if-eqz v7, :cond_4

    .line 92
    .line 93
    invoke-virtual {p1}, Lym1;->c()Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-nez v7, :cond_4

    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/net/URI;->isAbsolute()Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-eqz v7, :cond_2

    .line 104
    .line 105
    invoke-static {v4}, Lz54;->d(Ljava/net/URI;)Ljava/net/URI;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    if-eqz v2, :cond_3

    .line 111
    .line 112
    move-object v5, v6

    .line 113
    :cond_3
    invoke-static {v4, v0, v5}, Lz54;->e(Ljava/net/URI;Lem1;Ljava/util/EnumSet;)Ljava/net/URI;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    goto :goto_1

    .line 118
    :cond_4
    invoke-virtual {v4}, Ljava/net/URI;->isAbsolute()Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_6

    .line 123
    .line 124
    if-eqz v2, :cond_5

    .line 125
    .line 126
    move-object v5, v6

    .line 127
    :cond_5
    invoke-static {v4, v3, v5}, Lz54;->e(Ljava/net/URI;Lem1;Ljava/util/EnumSet;)Ljava/net/URI;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    goto :goto_1

    .line 132
    :cond_6
    invoke-static {v4}, Lz54;->d(Ljava/net/URI;)Ljava/net/URI;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    :goto_1
    iput-object v2, p2, Lum1;->s:Ljava/net/URI;

    .line 137
    .line 138
    iput-object v3, p2, Lum1;->q:Lhv;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :catch_1
    move-exception p0

    .line 142
    new-instance p1, Le03;

    .line 143
    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string p3, "Invalid URI: "

    .line 147
    .line 148
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-direct {p1, p2, p0}, Lcm1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    .line 160
    .line 161
    throw p1

    .line 162
    :cond_7
    :goto_2
    invoke-virtual {p2}, Lum1;->getParams()Lkm1;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    const-string v4, "http.virtual-host"

    .line 167
    .line 168
    invoke-interface {v2, v4}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Lem1;

    .line 173
    .line 174
    if-eqz v2, :cond_9

    .line 175
    .line 176
    iget v4, v2, Lem1;->p:I

    .line 177
    .line 178
    const/4 v5, -0x1

    .line 179
    if-ne v4, v5, :cond_9

    .line 180
    .line 181
    iget v4, v0, Lem1;->p:I

    .line 182
    .line 183
    if-eq v4, v5, :cond_8

    .line 184
    .line 185
    new-instance v5, Lem1;

    .line 186
    .line 187
    iget-object v6, v2, Lem1;->n:Ljava/lang/String;

    .line 188
    .line 189
    iget-object v2, v2, Lem1;->q:Ljava/lang/String;

    .line 190
    .line 191
    invoke-direct {v5, v6, v4, v2}, Lem1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    move-object v2, v5

    .line 195
    :cond_8
    iget-object v4, p0, Lf03;->a:Lorg/apache/commons/logging/Log;

    .line 196
    .line 197
    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    if-eqz v4, :cond_9

    .line 202
    .line 203
    iget-object v4, p0, Lf03;->a:Lorg/apache/commons/logging/Log;

    .line 204
    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v6, "Using virtual host"

    .line 208
    .line 209
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    :cond_9
    if-eqz v2, :cond_a

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_a
    if-eqz v1, :cond_b

    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-eqz v2, :cond_b

    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    if-eqz v2, :cond_b

    .line 238
    .line 239
    new-instance v2, Lem1;

    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    invoke-direct {v2, v4, v5, v6}, Lem1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 254
    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_b
    move-object v2, v3

    .line 258
    :goto_3
    if-nez v2, :cond_c

    .line 259
    .line 260
    iget-object v2, p2, Lum1;->o:Lem1;

    .line 261
    .line 262
    :cond_c
    if-nez v2, :cond_d

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_d
    move-object v0, v2

    .line 266
    :goto_4
    if-eqz v1, :cond_f

    .line 267
    .line 268
    invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    if-eqz v1, :cond_f

    .line 273
    .line 274
    const-class v2, Lzk0;

    .line 275
    .line 276
    const-string v4, "http.auth.credentials-provider"

    .line 277
    .line 278
    invoke-virtual {p3, v4, v2}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    check-cast v2, Lzk0;

    .line 283
    .line 284
    if-nez v2, :cond_e

    .line 285
    .line 286
    new-instance v2, Lnu;

    .line 287
    .line 288
    invoke-direct {v2}, Lnu;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p3, v2, v4}, Lvl1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    :cond_e
    new-instance v4, Lsj;

    .line 295
    .line 296
    invoke-direct {v4, v0, v3, v3}, Lsj;-><init>(Lem1;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    new-instance v3, Le94;

    .line 300
    .line 301
    invoke-direct {v3, v1}, Le94;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-interface {v2, v4, v3}, Lzk0;->b(Lsj;Le94;)V

    .line 305
    .line 306
    .line 307
    :cond_f
    const-string v1, "http.target_host"

    .line 308
    .line 309
    invoke-virtual {p3, v0, v1}, Lvl1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    const-string v0, "http.route"

    .line 313
    .line 314
    invoke-virtual {p3, p1, v0}, Lvl1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    const-string v0, "http.request"

    .line 318
    .line 319
    invoke-virtual {p3, p2, v0}, Lvl1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    iget-object v0, p0, Lf03;->c:Lfp1;

    .line 323
    .line 324
    invoke-virtual {v0, p2, p3}, Lfp1;->a(Lom1;Lul1;)V

    .line 325
    .line 326
    .line 327
    iget-object p0, p0, Lf03;->b:Lm92;

    .line 328
    .line 329
    invoke-virtual {p0, p1, p2, p3, p4}, Lm92;->a(Lym1;Lum1;Lrl1;Lj0;)Lt60;

    .line 330
    .line 331
    .line 332
    move-result-object p0

    .line 333
    :try_start_2
    const-string p1, "http.response"

    .line 334
    .line 335
    invoke-virtual {p3, p0, p1}, Lvl1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, p0, p3}, Lfp1;->b(Lvm1;Lul1;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcm1; {:try_start_2 .. :try_end_2} :catch_2

    .line 339
    .line 340
    .line 341
    return-object p0

    .line 342
    :catch_2
    move-exception p1

    .line 343
    goto :goto_5

    .line 344
    :catch_3
    move-exception p1

    .line 345
    goto :goto_6

    .line 346
    :catch_4
    move-exception p1

    .line 347
    goto :goto_7

    .line 348
    :goto_5
    check-cast p0, Lxm1;

    .line 349
    .line 350
    invoke-virtual {p0}, Lxm1;->close()V

    .line 351
    .line 352
    .line 353
    throw p1

    .line 354
    :goto_6
    check-cast p0, Lxm1;

    .line 355
    .line 356
    invoke-virtual {p0}, Lxm1;->close()V

    .line 357
    .line 358
    .line 359
    throw p1

    .line 360
    :goto_7
    check-cast p0, Lxm1;

    .line 361
    .line 362
    invoke-virtual {p0}, Lxm1;->close()V

    .line 363
    .line 364
    .line 365
    throw p1
.end method

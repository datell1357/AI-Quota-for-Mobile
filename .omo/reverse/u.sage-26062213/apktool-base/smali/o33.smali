.class public final Lo33;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lj60;


# instance fields
.field public final a:Lorg/apache/commons/logging/Log;

.field public final b:Lj60;

.field public final c:Lr33;

.field public final d:Lzm1;


# direct methods
.method public constructor <init>(Lj60;Lzm1;Lr33;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lo33;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lo33;->a:Lorg/apache/commons/logging/Log;

    .line 11
    .line 12
    const-string v0, "HTTP redirect strategy"

    .line 13
    .line 14
    invoke-static {p3, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lo33;->b:Lj60;

    .line 18
    .line 19
    iput-object p2, p0, Lo33;->d:Lzm1;

    .line 20
    .line 21
    iput-object p3, p0, Lo33;->c:Lr33;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lym1;Lum1;Lrl1;Lj0;)Lt60;
    .locals 11

    .line 1
    const-class v0, Ltj;

    .line 2
    .line 3
    iget-object v1, p0, Lo33;->c:Lr33;

    .line 4
    .line 5
    const-string v2, "HTTP route"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "http.protocol.redirect-locations"

    .line 11
    .line 12
    const-class v3, Ljava/util/List;

    .line 13
    .line 14
    invoke-virtual {p3, v2, v3}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/util/List;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p3}, Lrl1;->d()Lv63;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget v3, v2, Lv63;->v:I

    .line 30
    .line 31
    if-lez v3, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/16 v3, 0x32

    .line 35
    .line 36
    :goto_0
    const/4 v4, 0x0

    .line 37
    move-object v5, p2

    .line 38
    :goto_1
    iget-object v6, v5, Lum1;->n:Lom1;

    .line 39
    .line 40
    iget-object v7, p0, Lo33;->b:Lj60;

    .line 41
    .line 42
    invoke-interface {v7, p1, v5, p3, p4}, Lj60;->a(Lym1;Lum1;Lrl1;Lj0;)Lt60;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    :try_start_0
    iget-boolean v8, v2, Lv63;->s:Z

    .line 47
    .line 48
    if-eqz v8, :cond_b

    .line 49
    .line 50
    invoke-interface {v1, v6, v7, p3}, Lr33;->h(Lom1;Lvm1;Lul1;)Z

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-eqz v8, :cond_b

    .line 55
    .line 56
    invoke-static {v5}, Lz63;->a(Lum1;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-nez v5, :cond_2

    .line 61
    .line 62
    iget-object p1, p0, Lo33;->a:Lorg/apache/commons/logging/Log;

    .line 63
    .line 64
    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_b

    .line 69
    .line 70
    iget-object p1, p0, Lo33;->a:Lorg/apache/commons/logging/Log;

    .line 71
    .line 72
    const-string p2, "Cannot redirect non-repeatable request"

    .line 73
    .line 74
    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-object v7

    .line 78
    :catch_0
    move-exception p1

    .line 79
    goto/16 :goto_4

    .line 80
    .line 81
    :catch_1
    move-exception p0

    .line 82
    goto/16 :goto_8

    .line 83
    .line 84
    :catch_2
    move-exception p0

    .line 85
    goto/16 :goto_9

    .line 86
    .line 87
    :cond_2
    if-ge v4, v3, :cond_a

    .line 88
    .line 89
    add-int/lit8 v4, v4, 0x1

    .line 90
    .line 91
    invoke-interface {v1, v6, v7, p3}, Lr33;->a(Lom1;Lvm1;Lul1;)Lpm1;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-interface {v5}, Lim1;->headerIterator()Ljj1;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-nez v6, :cond_3

    .line 104
    .line 105
    iget-object v6, p2, Lum1;->n:Lom1;

    .line 106
    .line 107
    invoke-interface {v6}, Lim1;->getAllHeaders()[Lgj1;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-interface {v5, v6}, Lim1;->setHeaders([Lgj1;)V

    .line 112
    .line 113
    .line 114
    :cond_3
    instance-of v6, v5, Lzl1;

    .line 115
    .line 116
    const/4 v8, 0x0

    .line 117
    if-eqz v6, :cond_4

    .line 118
    .line 119
    new-instance v6, Ltm1;

    .line 120
    .line 121
    check-cast v5, Lzl1;

    .line 122
    .line 123
    invoke-direct {v6, v8, v5}, Lum1;-><init>(Lem1;Lom1;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v5}, Lzl1;->getEntity()Lxl1;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    iput-object v5, v6, Ltm1;->t:Lxl1;

    .line 131
    .line 132
    :goto_2
    move-object v5, v6

    .line 133
    goto :goto_3

    .line 134
    :cond_4
    new-instance v6, Lum1;

    .line 135
    .line 136
    invoke-direct {v6, v8, v5}, Lum1;-><init>(Lem1;Lom1;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :goto_3
    instance-of v6, v5, Lzl1;

    .line 141
    .line 142
    if-eqz v6, :cond_5

    .line 143
    .line 144
    move-object v6, v5

    .line 145
    check-cast v6, Lzl1;

    .line 146
    .line 147
    invoke-interface {v6}, Lzl1;->getEntity()Lxl1;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    if-eqz v8, :cond_5

    .line 152
    .line 153
    invoke-interface {v8}, Lxl1;->isRepeatable()Z

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    if-nez v9, :cond_5

    .line 158
    .line 159
    instance-of v9, v8, Lz63;

    .line 160
    .line 161
    if-nez v9, :cond_5

    .line 162
    .line 163
    new-instance v9, Lz63;

    .line 164
    .line 165
    invoke-direct {v9, v8}, Lz63;-><init>(Lxl1;)V

    .line 166
    .line 167
    .line 168
    invoke-interface {v6, v9}, Lzl1;->setEntity(Lxl1;)V

    .line 169
    .line 170
    .line 171
    :cond_5
    iget-object v6, v5, Lum1;->s:Ljava/net/URI;

    .line 172
    .line 173
    invoke-static {v6}, Lz54;->a(Ljava/net/URI;)Lem1;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    if-eqz v8, :cond_9

    .line 178
    .line 179
    iget-object p1, p1, Lym1;->n:Lem1;

    .line 180
    .line 181
    invoke-virtual {p1, v8}, Lem1;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-nez p1, :cond_7

    .line 186
    .line 187
    const-string p1, "http.auth.target-scope"

    .line 188
    .line 189
    invoke-virtual {p3, p1, v0}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Ltj;

    .line 194
    .line 195
    if-eqz p1, :cond_6

    .line 196
    .line 197
    iget-object v9, p0, Lo33;->a:Lorg/apache/commons/logging/Log;

    .line 198
    .line 199
    const-string v10, "Resetting target auth state"

    .line 200
    .line 201
    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Ltj;->c()V

    .line 205
    .line 206
    .line 207
    :cond_6
    const-string p1, "http.auth.proxy-scope"

    .line 208
    .line 209
    invoke-virtual {p3, p1, v0}, Lvl1;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Ltj;

    .line 214
    .line 215
    if-eqz p1, :cond_7

    .line 216
    .line 217
    invoke-virtual {p1}, Ltj;->b()Z

    .line 218
    .line 219
    .line 220
    move-result v9

    .line 221
    if-eqz v9, :cond_7

    .line 222
    .line 223
    iget-object v9, p0, Lo33;->a:Lorg/apache/commons/logging/Log;

    .line 224
    .line 225
    const-string v10, "Resetting proxy auth state"

    .line 226
    .line 227
    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1}, Ltj;->c()V

    .line 231
    .line 232
    .line 233
    :cond_7
    iget-object p1, p0, Lo33;->d:Lzm1;

    .line 234
    .line 235
    invoke-interface {p1, v8, v5, p3}, Lzm1;->f(Lem1;Lom1;Lul1;)Lym1;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    iget-object v8, p0, Lo33;->a:Lorg/apache/commons/logging/Log;

    .line 240
    .line 241
    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    if-eqz v8, :cond_8

    .line 246
    .line 247
    iget-object v8, p0, Lo33;->a:Lorg/apache/commons/logging/Log;

    .line 248
    .line 249
    new-instance v9, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .line 253
    .line 254
    const-string v10, "Redirecting to \'"

    .line 255
    .line 256
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v6, "\' via "

    .line 263
    .line 264
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    invoke-interface {v8, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    :cond_8
    invoke-interface {v7}, Lvm1;->getEntity()Lxl1;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    invoke-static {v6}, Ln44;->f0(Lxl1;)V

    .line 282
    .line 283
    .line 284
    invoke-interface {v7}, Ljava/io/Closeable;->close()V

    .line 285
    .line 286
    .line 287
    goto/16 :goto_1

    .line 288
    .line 289
    :cond_9
    new-instance p1, Le03;

    .line 290
    .line 291
    new-instance p2, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .line 295
    .line 296
    const-string p3, "Redirect URI does not specify a valid host name: "

    .line 297
    .line 298
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    invoke-static {p2}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    throw p1

    .line 316
    :cond_a
    new-instance p1, Lum2;

    .line 317
    .line 318
    new-instance p2, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    const-string p3, "Maximum redirects ("

    .line 324
    .line 325
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    const-string p3, ") exceeded"

    .line 332
    .line 333
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p2

    .line 340
    invoke-static {p2}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p2

    .line 344
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcm1; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :cond_b
    return-object v7

    .line 349
    :goto_4
    :try_start_1
    invoke-interface {v7}, Lvm1;->getEntity()Lxl1;

    .line 350
    .line 351
    .line 352
    move-result-object p2

    .line 353
    invoke-static {p2}, Ln44;->f0(Lxl1;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    .line 355
    .line 356
    :goto_5
    invoke-interface {v7}, Ljava/io/Closeable;->close()V

    .line 357
    .line 358
    .line 359
    goto :goto_6

    .line 360
    :catchall_0
    move-exception p0

    .line 361
    goto :goto_7

    .line 362
    :catch_3
    move-exception p2

    .line 363
    :try_start_2
    iget-object p0, p0, Lo33;->a:Lorg/apache/commons/logging/Log;

    .line 364
    .line 365
    const-string p3, "I/O error while releasing connection"

    .line 366
    .line 367
    invoke-interface {p0, p3, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    .line 369
    .line 370
    goto :goto_5

    .line 371
    :goto_6
    throw p1

    .line 372
    :goto_7
    invoke-interface {v7}, Ljava/io/Closeable;->close()V

    .line 373
    .line 374
    .line 375
    throw p0

    .line 376
    :goto_8
    invoke-interface {v7}, Ljava/io/Closeable;->close()V

    .line 377
    .line 378
    .line 379
    throw p0

    .line 380
    :goto_9
    invoke-interface {v7}, Ljava/io/Closeable;->close()V

    .line 381
    .line 382
    .line 383
    throw p0
.end method

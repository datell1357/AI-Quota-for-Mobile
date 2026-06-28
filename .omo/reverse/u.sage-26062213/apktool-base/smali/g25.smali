.class public final Lg25;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final o:Ljava/net/URL;

.field public final p:[B

.field public final q:Ljava/lang/String;

.field public final r:Ljava/util/Map;

.field public final s:Ljava/lang/Object;

.field public final synthetic t:Lib0;


# direct methods
.method public constructor <init>(Li25;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Ld25;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lg25;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lg25;->t:Lib0;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iput-object p3, p0, Lg25;->o:Ljava/net/URL;

    .line 22
    .line 23
    iput-object p4, p0, Lg25;->p:[B

    .line 24
    .line 25
    iput-object p6, p0, Lg25;->s:Ljava/lang/Object;

    .line 26
    .line 27
    iput-object p2, p0, Lg25;->q:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p5, p0, Lg25;->r:Ljava/util/Map;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Lr75;Ljava/lang/String;Ljava/net/URL;[BLjava/util/HashMap;Lp75;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg25;->n:I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lg25;->t:Lib0;

    .line 33
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lg25;->o:Ljava/net/URL;

    iput-object p4, p0, Lg25;->p:[B

    iput-object p6, p0, Lg25;->s:Ljava/lang/Object;

    iput-object p2, p0, Lg25;->q:Ljava/lang/String;

    iput-object p5, p0, Lg25;->r:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(ILjava/io/IOException;[BLjava/util/Map;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lg25;->t:Lib0;

    .line 2
    .line 3
    check-cast v0, Lr75;

    .line 4
    .line 5
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lr45;

    .line 8
    .line 9
    iget-object v0, v0, Lr45;->g:Lj45;

    .line 10
    .line 11
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lq75;

    .line 15
    .line 16
    move-object v2, p0

    .line 17
    move v3, p1

    .line 18
    move-object v4, p2

    .line 19
    move-object v5, p3

    .line 20
    move-object v6, p4

    .line 21
    invoke-direct/range {v1 .. v6}, Lq75;-><init>(Lg25;ILjava/lang/Exception;[BLjava/util/Map;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final run()V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lg25;->s:Ljava/lang/Object;

    .line 4
    .line 5
    iget v0, v1, Lg25;->n:I

    .line 6
    .line 7
    const-string v3, "Failed to obtain HTTP connection"

    .line 8
    .line 9
    const-string v5, "gzip"

    .line 10
    .line 11
    const-string v6, "Content-Encoding"

    .line 12
    .line 13
    const-string v7, "Uploading data. size"

    .line 14
    .line 15
    iget-object v8, v1, Lg25;->p:[B

    .line 16
    .line 17
    iget-object v9, v1, Lg25;->r:Ljava/util/Map;

    .line 18
    .line 19
    const v10, 0xee48

    .line 20
    .line 21
    .line 22
    const v11, 0xea60

    .line 23
    .line 24
    .line 25
    iget-object v12, v1, Lg25;->o:Ljava/net/URL;

    .line 26
    .line 27
    iget-object v13, v1, Lg25;->t:Lib0;

    .line 28
    .line 29
    const/4 v15, 0x0

    .line 30
    iget-object v4, v1, Lg25;->q:Ljava/lang/String;

    .line 31
    .line 32
    const-string v14, "Error closing HTTP compressed POST connection output stream. appId"

    .line 33
    .line 34
    packed-switch v0, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    check-cast v13, Lr75;

    .line 38
    .line 39
    iget-object v0, v13, Lib0;->a:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lr45;

    .line 42
    .line 43
    iget-object v2, v13, Lib0;->a:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v2, Lr45;

    .line 46
    .line 47
    iget-object v0, v0, Lr45;->g:Lj45;

    .line 48
    .line 49
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lj45;->z()V

    .line 53
    .line 54
    .line 55
    :try_start_0
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    instance-of v12, v0, Ljava/net/HttpURLConnection;

    .line 60
    .line 61
    if-eqz v12, :cond_4

    .line 62
    .line 63
    move-object v3, v0

    .line 64
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 65
    .line 66
    invoke-virtual {v3, v15}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v11}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v15}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 79
    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    invoke-virtual {v3, v0}, Ljava/net/URLConnection;->setDoInput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 83
    .line 84
    .line 85
    if-eqz v9, :cond_0

    .line 86
    .line 87
    :try_start_1
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-eqz v9, :cond_0

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    check-cast v9, Ljava/util/Map$Entry;

    .line 106
    .line 107
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    check-cast v10, Ljava/lang/String;

    .line 112
    .line 113
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    check-cast v9, Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v3, v10, v9}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    goto/16 :goto_e

    .line 125
    .line 126
    :catch_0
    move-exception v0

    .line 127
    goto/16 :goto_f

    .line 128
    .line 129
    :cond_0
    if-eqz v8, :cond_1

    .line 130
    .line 131
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 134
    .line 135
    .line 136
    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    .line 137
    .line 138
    invoke-direct {v9, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v9, v8}, Ljava/io/OutputStream;->write([B)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 151
    .line 152
    .line 153
    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    :try_start_3
    iget-object v8, v2, Lr45;->f:La25;

    .line 155
    .line 156
    invoke-static {v8}, Lr45;->l(Lq55;)V

    .line 157
    .line 158
    .line 159
    iget-object v8, v8, La25;->n:Lx15;

    .line 160
    .line 161
    array-length v9, v0

    .line 162
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    invoke-virtual {v8, v10, v7}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const/4 v7, 0x1

    .line 170
    invoke-virtual {v3, v7}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v6, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 183
    .line 184
    .line 185
    move-result-object v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    :try_start_4
    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 190
    .line 191
    .line 192
    goto :goto_6

    .line 193
    :catchall_1
    move-exception v0

    .line 194
    goto :goto_1

    .line 195
    :catch_1
    move-exception v0

    .line 196
    goto :goto_4

    .line 197
    :goto_1
    move-object v6, v3

    .line 198
    :goto_2
    const/4 v7, 0x0

    .line 199
    :goto_3
    move-object v3, v0

    .line 200
    goto/16 :goto_11

    .line 201
    .line 202
    :goto_4
    move-object v6, v3

    .line 203
    move-object v3, v0

    .line 204
    move-object v0, v5

    .line 205
    move-object v5, v6

    .line 206
    :goto_5
    const/4 v6, 0x0

    .line 207
    goto/16 :goto_14

    .line 208
    .line 209
    :catch_2
    move-exception v0

    .line 210
    :try_start_5
    iget-object v5, v2, Lr45;->f:La25;

    .line 211
    .line 212
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 213
    .line 214
    .line 215
    iget-object v5, v5, La25;->f:Lx15;

    .line 216
    .line 217
    const-string v6, "Failed to gzip post request content"

    .line 218
    .line 219
    invoke-virtual {v5, v0, v6}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw v0

    .line 223
    :cond_1
    :goto_6
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 224
    .line 225
    .line 226
    move-result v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 227
    :try_start_6
    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 228
    .line 229
    .line 230
    move-result-object v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 231
    :try_start_7
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 232
    .line 233
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 237
    .line 238
    .line 239
    move-result-object v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 240
    const/16 v8, 0x400

    .line 241
    .line 242
    :try_start_8
    new-array v8, v8, [B

    .line 243
    .line 244
    :goto_7
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    if-lez v9, :cond_2

    .line 249
    .line 250
    invoke-virtual {v0, v8, v15, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 251
    .line 252
    .line 253
    goto :goto_7

    .line 254
    :catchall_2
    move-exception v0

    .line 255
    goto :goto_8

    .line 256
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 257
    .line 258
    .line 259
    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 260
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 264
    .line 265
    .line 266
    const/4 v2, 0x0

    .line 267
    invoke-virtual {v1, v5, v2, v0, v6}, Lg25;->a(ILjava/io/IOException;[BLjava/util/Map;)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_16

    .line 271
    .line 272
    :catchall_3
    move-exception v0

    .line 273
    goto :goto_9

    .line 274
    :catch_3
    move-exception v0

    .line 275
    goto :goto_a

    .line 276
    :catchall_4
    move-exception v0

    .line 277
    const/4 v7, 0x0

    .line 278
    :goto_8
    if-eqz v7, :cond_3

    .line 279
    .line 280
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 281
    .line 282
    .line 283
    :cond_3
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 284
    :goto_9
    move v15, v5

    .line 285
    move-object v7, v6

    .line 286
    const/4 v5, 0x0

    .line 287
    move-object v6, v3

    .line 288
    goto :goto_3

    .line 289
    :goto_a
    move v15, v5

    .line 290
    :goto_b
    move-object v5, v3

    .line 291
    :goto_c
    move-object v3, v0

    .line 292
    const/4 v0, 0x0

    .line 293
    goto :goto_14

    .line 294
    :catchall_5
    move-exception v0

    .line 295
    move-object v6, v3

    .line 296
    move v15, v5

    .line 297
    :goto_d
    const/4 v5, 0x0

    .line 298
    goto :goto_2

    .line 299
    :catch_4
    move-exception v0

    .line 300
    move v15, v5

    .line 301
    const/4 v6, 0x0

    .line 302
    goto :goto_b

    .line 303
    :goto_e
    move-object v6, v3

    .line 304
    goto :goto_d

    .line 305
    :goto_f
    move-object v5, v3

    .line 306
    const/4 v6, 0x0

    .line 307
    goto :goto_c

    .line 308
    :catchall_6
    move-exception v0

    .line 309
    goto :goto_10

    .line 310
    :catch_5
    move-exception v0

    .line 311
    goto :goto_13

    .line 312
    :cond_4
    :try_start_b
    new-instance v0, Ljava/io/IOException;

    .line 313
    .line 314
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 318
    :goto_10
    move-object v3, v0

    .line 319
    const/4 v5, 0x0

    .line 320
    const/4 v6, 0x0

    .line 321
    const/4 v7, 0x0

    .line 322
    :goto_11
    if-eqz v5, :cond_5

    .line 323
    .line 324
    :try_start_c
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 325
    .line 326
    .line 327
    goto :goto_12

    .line 328
    :catch_6
    move-exception v0

    .line 329
    iget-object v2, v2, Lr45;->f:La25;

    .line 330
    .line 331
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 332
    .line 333
    .line 334
    iget-object v2, v2, La25;->f:Lx15;

    .line 335
    .line 336
    invoke-static {v4}, La25;->D(Ljava/lang/String;)Ly15;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-virtual {v2, v4, v0, v14}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    :cond_5
    :goto_12
    if-eqz v6, :cond_6

    .line 344
    .line 345
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 346
    .line 347
    .line 348
    :cond_6
    const/4 v2, 0x0

    .line 349
    invoke-virtual {v1, v15, v2, v2, v7}, Lg25;->a(ILjava/io/IOException;[BLjava/util/Map;)V

    .line 350
    .line 351
    .line 352
    throw v3

    .line 353
    :goto_13
    move-object v3, v0

    .line 354
    const/4 v0, 0x0

    .line 355
    const/4 v5, 0x0

    .line 356
    goto/16 :goto_5

    .line 357
    .line 358
    :goto_14
    if-eqz v0, :cond_7

    .line 359
    .line 360
    :try_start_d
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 361
    .line 362
    .line 363
    goto :goto_15

    .line 364
    :catch_7
    move-exception v0

    .line 365
    iget-object v2, v2, Lr45;->f:La25;

    .line 366
    .line 367
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 368
    .line 369
    .line 370
    iget-object v2, v2, La25;->f:Lx15;

    .line 371
    .line 372
    invoke-static {v4}, La25;->D(Ljava/lang/String;)Ly15;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    invoke-virtual {v2, v4, v0, v14}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    :cond_7
    :goto_15
    if-eqz v5, :cond_8

    .line 380
    .line 381
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 382
    .line 383
    .line 384
    :cond_8
    const/4 v2, 0x0

    .line 385
    invoke-virtual {v1, v15, v3, v2, v6}, Lg25;->a(ILjava/io/IOException;[BLjava/util/Map;)V

    .line 386
    .line 387
    .line 388
    :goto_16
    return-void

    .line 389
    :pswitch_0
    const/16 v16, 0x0

    .line 390
    .line 391
    check-cast v13, Li25;

    .line 392
    .line 393
    iget-object v0, v13, Lib0;->a:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v0, Lr45;

    .line 396
    .line 397
    iget-object v10, v13, Lib0;->a:Ljava/lang/Object;

    .line 398
    .line 399
    check-cast v10, Lr45;

    .line 400
    .line 401
    iget-object v0, v0, Lr45;->g:Lj45;

    .line 402
    .line 403
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0}, Lj45;->z()V

    .line 407
    .line 408
    .line 409
    :try_start_e
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    instance-of v12, v0, Ljava/net/HttpURLConnection;

    .line 414
    .line 415
    if-eqz v12, :cond_d

    .line 416
    .line 417
    move-object v3, v0

    .line 418
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 419
    .line 420
    invoke-virtual {v3, v15}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v3, v11}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 427
    .line 428
    .line 429
    const v0, 0xee48

    .line 430
    .line 431
    .line 432
    invoke-virtual {v3, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v3, v15}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 436
    .line 437
    .line 438
    const/4 v0, 0x1

    .line 439
    invoke-virtual {v3, v0}, Ljava/net/URLConnection;->setDoInput(Z)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    .line 440
    .line 441
    .line 442
    if-eqz v9, :cond_9

    .line 443
    .line 444
    :try_start_f
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 453
    .line 454
    .line 455
    move-result v9

    .line 456
    if-eqz v9, :cond_9

    .line 457
    .line 458
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v9

    .line 462
    check-cast v9, Ljava/util/Map$Entry;

    .line 463
    .line 464
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v11

    .line 468
    check-cast v11, Ljava/lang/String;

    .line 469
    .line 470
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v9

    .line 474
    check-cast v9, Ljava/lang/String;

    .line 475
    .line 476
    invoke-virtual {v3, v11, v9}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    goto :goto_17

    .line 480
    :catchall_7
    move-exception v0

    .line 481
    goto/16 :goto_23

    .line 482
    .line 483
    :catch_8
    move-exception v0

    .line 484
    goto/16 :goto_24

    .line 485
    .line 486
    :cond_9
    if-eqz v8, :cond_a

    .line 487
    .line 488
    iget-object v0, v13, Lta5;->b:Lpb5;

    .line 489
    .line 490
    iget-object v0, v0, Lpb5;->g:Lub5;

    .line 491
    .line 492
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v0, v8}, Lub5;->f0([B)[B

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    iget-object v8, v10, Lr45;->f:La25;

    .line 500
    .line 501
    invoke-static {v8}, Lr45;->l(Lq55;)V

    .line 502
    .line 503
    .line 504
    iget-object v8, v8, La25;->n:Lx15;

    .line 505
    .line 506
    array-length v9, v0

    .line 507
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 508
    .line 509
    .line 510
    move-result-object v11

    .line 511
    invoke-virtual {v8, v11, v7}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    const/4 v7, 0x1

    .line 515
    invoke-virtual {v3, v7}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v3, v6, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v3, v9}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 528
    .line 529
    .line 530
    move-result-object v5
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 531
    :try_start_10
    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 535
    .line 536
    .line 537
    goto :goto_1c

    .line 538
    :catchall_8
    move-exception v0

    .line 539
    goto :goto_18

    .line 540
    :catch_9
    move-exception v0

    .line 541
    goto :goto_1b

    .line 542
    :goto_18
    move/from16 v20, v15

    .line 543
    .line 544
    move-object/from16 v23, v16

    .line 545
    .line 546
    move-object/from16 v16, v5

    .line 547
    .line 548
    :goto_19
    move-object v5, v3

    .line 549
    :goto_1a
    move-object v3, v0

    .line 550
    goto/16 :goto_26

    .line 551
    .line 552
    :goto_1b
    move-object/from16 v21, v0

    .line 553
    .line 554
    move/from16 v20, v15

    .line 555
    .line 556
    move-object/from16 v23, v16

    .line 557
    .line 558
    move-object/from16 v16, v5

    .line 559
    .line 560
    goto/16 :goto_29

    .line 561
    .line 562
    :cond_a
    :goto_1c
    :try_start_11
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 563
    .line 564
    .line 565
    move-result v20
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 566
    :try_start_12
    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 567
    .line 568
    .line 569
    move-result-object v23
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    .line 570
    :try_start_13
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 571
    .line 572
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 576
    .line 577
    .line 578
    move-result-object v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 579
    const/16 v8, 0x400

    .line 580
    .line 581
    :try_start_14
    new-array v6, v8, [B

    .line 582
    .line 583
    :goto_1d
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    .line 584
    .line 585
    .line 586
    move-result v7

    .line 587
    if-lez v7, :cond_b

    .line 588
    .line 589
    invoke-virtual {v0, v6, v15, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 590
    .line 591
    .line 592
    goto :goto_1d

    .line 593
    :catchall_9
    move-exception v0

    .line 594
    goto :goto_1f

    .line 595
    :cond_b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 596
    .line 597
    .line 598
    move-result-object v22
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    .line 599
    :try_start_15
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 600
    .line 601
    .line 602
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 603
    .line 604
    .line 605
    move-object/from16 v19, v2

    .line 606
    .line 607
    check-cast v19, Ld25;

    .line 608
    .line 609
    iget-object v0, v10, Lr45;->g:Lj45;

    .line 610
    .line 611
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 612
    .line 613
    .line 614
    new-instance v17, Lv15;

    .line 615
    .line 616
    const/16 v21, 0x0

    .line 617
    .line 618
    iget-object v1, v1, Lg25;->q:Ljava/lang/String;

    .line 619
    .line 620
    move-object/from16 v18, v1

    .line 621
    .line 622
    invoke-direct/range {v17 .. v23}, Lv15;-><init>(Ljava/lang/String;Ld25;ILjava/io/IOException;[BLjava/util/Map;)V

    .line 623
    .line 624
    .line 625
    :goto_1e
    move-object/from16 v1, v17

    .line 626
    .line 627
    invoke-virtual {v0, v1}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 628
    .line 629
    .line 630
    goto/16 :goto_2b

    .line 631
    .line 632
    :catchall_a
    move-exception v0

    .line 633
    goto :goto_19

    .line 634
    :catch_a
    move-exception v0

    .line 635
    goto :goto_20

    .line 636
    :catchall_b
    move-exception v0

    .line 637
    move-object/from16 v5, v16

    .line 638
    .line 639
    :goto_1f
    if-eqz v5, :cond_c

    .line 640
    .line 641
    :try_start_16
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 642
    .line 643
    .line 644
    :cond_c
    throw v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 645
    :goto_20
    move-object/from16 v21, v0

    .line 646
    .line 647
    goto/16 :goto_29

    .line 648
    .line 649
    :catchall_c
    move-exception v0

    .line 650
    move-object v5, v3

    .line 651
    :goto_21
    move-object/from16 v23, v16

    .line 652
    .line 653
    goto :goto_1a

    .line 654
    :catch_b
    move-exception v0

    .line 655
    move-object/from16 v21, v0

    .line 656
    .line 657
    :goto_22
    move-object/from16 v23, v16

    .line 658
    .line 659
    goto :goto_29

    .line 660
    :goto_23
    move-object v5, v3

    .line 661
    move/from16 v20, v15

    .line 662
    .line 663
    goto :goto_21

    .line 664
    :goto_24
    move-object/from16 v21, v0

    .line 665
    .line 666
    move/from16 v20, v15

    .line 667
    .line 668
    goto :goto_22

    .line 669
    :catchall_d
    move-exception v0

    .line 670
    goto :goto_25

    .line 671
    :catch_c
    move-exception v0

    .line 672
    goto :goto_28

    .line 673
    :cond_d
    :try_start_17
    new-instance v0, Ljava/io/IOException;

    .line 674
    .line 675
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    throw v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    .line 679
    :goto_25
    move-object v3, v0

    .line 680
    move/from16 v20, v15

    .line 681
    .line 682
    move-object/from16 v5, v16

    .line 683
    .line 684
    move-object/from16 v23, v5

    .line 685
    .line 686
    :goto_26
    if-eqz v16, :cond_e

    .line 687
    .line 688
    :try_start_18
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_d

    .line 689
    .line 690
    .line 691
    goto :goto_27

    .line 692
    :catch_d
    move-exception v0

    .line 693
    iget-object v6, v10, Lr45;->f:La25;

    .line 694
    .line 695
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 696
    .line 697
    .line 698
    iget-object v6, v6, La25;->f:Lx15;

    .line 699
    .line 700
    invoke-static {v4}, La25;->D(Ljava/lang/String;)Ly15;

    .line 701
    .line 702
    .line 703
    move-result-object v4

    .line 704
    invoke-virtual {v6, v4, v0, v14}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    :cond_e
    :goto_27
    if-eqz v5, :cond_f

    .line 708
    .line 709
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 710
    .line 711
    .line 712
    :cond_f
    move-object/from16 v19, v2

    .line 713
    .line 714
    check-cast v19, Ld25;

    .line 715
    .line 716
    iget-object v0, v10, Lr45;->g:Lj45;

    .line 717
    .line 718
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 719
    .line 720
    .line 721
    new-instance v17, Lv15;

    .line 722
    .line 723
    const/16 v21, 0x0

    .line 724
    .line 725
    const/16 v22, 0x0

    .line 726
    .line 727
    iget-object v1, v1, Lg25;->q:Ljava/lang/String;

    .line 728
    .line 729
    move-object/from16 v18, v1

    .line 730
    .line 731
    invoke-direct/range {v17 .. v23}, Lv15;-><init>(Ljava/lang/String;Ld25;ILjava/io/IOException;[BLjava/util/Map;)V

    .line 732
    .line 733
    .line 734
    move-object/from16 v1, v17

    .line 735
    .line 736
    invoke-virtual {v0, v1}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 737
    .line 738
    .line 739
    throw v3

    .line 740
    :goto_28
    move-object/from16 v21, v0

    .line 741
    .line 742
    move/from16 v20, v15

    .line 743
    .line 744
    move-object/from16 v3, v16

    .line 745
    .line 746
    move-object/from16 v23, v3

    .line 747
    .line 748
    :goto_29
    if-eqz v16, :cond_10

    .line 749
    .line 750
    :try_start_19
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_e

    .line 751
    .line 752
    .line 753
    goto :goto_2a

    .line 754
    :catch_e
    move-exception v0

    .line 755
    iget-object v5, v10, Lr45;->f:La25;

    .line 756
    .line 757
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 758
    .line 759
    .line 760
    iget-object v5, v5, La25;->f:Lx15;

    .line 761
    .line 762
    invoke-static {v4}, La25;->D(Ljava/lang/String;)Ly15;

    .line 763
    .line 764
    .line 765
    move-result-object v4

    .line 766
    invoke-virtual {v5, v4, v0, v14}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    :cond_10
    :goto_2a
    if-eqz v3, :cond_11

    .line 770
    .line 771
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 772
    .line 773
    .line 774
    :cond_11
    move-object/from16 v19, v2

    .line 775
    .line 776
    check-cast v19, Ld25;

    .line 777
    .line 778
    iget-object v0, v10, Lr45;->g:Lj45;

    .line 779
    .line 780
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 781
    .line 782
    .line 783
    new-instance v17, Lv15;

    .line 784
    .line 785
    const/16 v22, 0x0

    .line 786
    .line 787
    iget-object v1, v1, Lg25;->q:Ljava/lang/String;

    .line 788
    .line 789
    move-object/from16 v18, v1

    .line 790
    .line 791
    invoke-direct/range {v17 .. v23}, Lv15;-><init>(Ljava/lang/String;Ld25;ILjava/io/IOException;[BLjava/util/Map;)V

    .line 792
    .line 793
    .line 794
    goto/16 :goto_1e

    .line 795
    .line 796
    :goto_2b
    return-void

    .line 797
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

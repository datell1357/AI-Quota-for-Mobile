.class public abstract Ljz2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lqz0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lqz0;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lqz0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ljz2;->a:Lqz0;

    .line 9
    .line 10
    return-void
.end method

.method public static a(Landroid/content/pm/PackageInfo;Ljava/io/File;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance p1, Ljava/io/DataOutputStream;

    .line 9
    .line 10
    new-instance v1, Ljava/io/FileOutputStream;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :try_start_1
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception p1

    .line 33
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 37
    :catch_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/util/concurrent/Executor;Liz2;Z)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v5, p2

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    new-instance v0, Ljava/io/File;

    .line 22
    .line 23
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v8, 0x7

    .line 37
    const/4 v9, 0x0

    .line 38
    :try_start_0
    invoke-virtual {v0, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_12

    .line 42
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    const-string v3, "ProfileInstaller"

    .line 47
    .line 48
    const/4 v12, 0x0

    .line 49
    if-nez p3, :cond_4

    .line 50
    .line 51
    new-instance v0, Ljava/io/File;

    .line 52
    .line 53
    const-string v7, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    .line 54
    .line 55
    invoke-direct {v0, v11, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-nez v7, :cond_0

    .line 63
    .line 64
    :catch_0
    move v0, v9

    .line 65
    goto :goto_2

    .line 66
    :cond_0
    :try_start_1
    new-instance v7, Ljava/io/DataInputStream;

    .line 67
    .line 68
    new-instance v14, Ljava/io/FileInputStream;

    .line 69
    .line 70
    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {v7, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    .line 75
    .line 76
    :try_start_2
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    .line 77
    .line 78
    .line 79
    move-result-wide v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 81
    .line 82
    .line 83
    move-wide/from16 v16, v14

    .line 84
    .line 85
    iget-wide v13, v10, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 86
    .line 87
    cmp-long v0, v16, v13

    .line 88
    .line 89
    if-nez v0, :cond_1

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    move v0, v9

    .line 94
    :goto_0
    if-eqz v0, :cond_2

    .line 95
    .line 96
    const/4 v7, 0x2

    .line 97
    invoke-interface {v5, v7, v12}, Liz2;->n(ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    move-object v13, v0

    .line 103
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catchall_1
    move-exception v0

    .line 108
    :try_start_5
    invoke-virtual {v13, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    :goto_1
    throw v13
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 112
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v2, "Skipping profile installation for "

    .line 118
    .line 119
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v9}, Lnz2;->c(Landroid/content/Context;Z)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_38

    .line 140
    .line 141
    :cond_4
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v7, "Installing profile for "

    .line 144
    .line 145
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    new-instance v7, Ljava/io/File;

    .line 163
    .line 164
    new-instance v0, Ljava/io/File;

    .line 165
    .line 166
    const-string v3, "/data/misc/profiles/cur/0"

    .line 167
    .line 168
    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string v2, "primary.prof"

    .line 172
    .line 173
    invoke-direct {v7, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    new-instance v2, Let0;

    .line 177
    .line 178
    const-string v0, "dexopt/baseline.prof"

    .line 179
    .line 180
    move-object v3, v4

    .line 181
    move-object/from16 v4, p1

    .line 182
    .line 183
    invoke-direct/range {v2 .. v7}, Let0;-><init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Liz2;Ljava/lang/String;Ljava/io/File;)V

    .line 184
    .line 185
    .line 186
    iget-object v4, v2, Let0;->c:[B

    .line 187
    .line 188
    if-nez v4, :cond_5

    .line 189
    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 191
    .line 192
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    const/4 v3, 0x3

    .line 197
    invoke-virtual {v2, v3, v0}, Let0;->b(ILjava/io/Serializable;)V

    .line 198
    .line 199
    .line 200
    :goto_4
    const/4 v7, 0x1

    .line 201
    goto/16 :goto_35

    .line 202
    .line 203
    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    const/4 v13, 0x4

    .line 208
    if-eqz v6, :cond_7

    .line 209
    .line 210
    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-nez v6, :cond_6

    .line 215
    .line 216
    invoke-virtual {v2, v13, v12}, Let0;->b(ILjava/io/Serializable;)V

    .line 217
    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_6
    const/4 v6, 0x1

    .line 221
    goto :goto_5

    .line 222
    :cond_7
    :try_start_6
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    if-nez v6, :cond_6

    .line 227
    .line 228
    invoke-virtual {v2, v13, v12}, Let0;->b(ILjava/io/Serializable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 229
    .line 230
    .line 231
    goto :goto_4

    .line 232
    :catch_1
    const/4 v7, 0x1

    .line 233
    goto/16 :goto_34

    .line 234
    .line 235
    :goto_5
    iput-boolean v6, v2, Let0;->f:Z

    .line 236
    .line 237
    const/4 v6, 0x6

    .line 238
    :try_start_7
    invoke-virtual {v2, v3, v0}, Let0;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 239
    .line 240
    .line 241
    move-result-object v0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 242
    move-object v7, v0

    .line 243
    goto :goto_7

    .line 244
    :catch_2
    move-exception v0

    .line 245
    invoke-interface {v5, v8, v0}, Liz2;->n(ILjava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    goto :goto_6

    .line 249
    :catch_3
    move-exception v0

    .line 250
    invoke-interface {v5, v6, v0}, Liz2;->n(ILjava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    :goto_6
    move-object v7, v12

    .line 254
    :goto_7
    const-string v14, "Invalid magic"

    .line 255
    .line 256
    sget-object v15, Ltv4;->c:[B

    .line 257
    .line 258
    const/16 v6, 0x8

    .line 259
    .line 260
    if-eqz v7, :cond_9

    .line 261
    .line 262
    :try_start_8
    invoke-static {v7, v13}, Ldm0;->G(Ljava/io/InputStream;I)[B

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_8

    .line 271
    .line 272
    invoke-static {v7, v13}, Ldm0;->G(Ljava/io/InputStream;I)[B

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    iget-object v9, v2, Let0;->e:Ljava/lang/String;

    .line 277
    .line 278
    invoke-static {v7, v0, v9}, Ltv4;->N(Ljava/io/FileInputStream;[BLjava/lang/String;)[Lft0;

    .line 279
    .line 280
    .line 281
    move-result-object v9
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 282
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 283
    .line 284
    .line 285
    goto :goto_c

    .line 286
    :catch_4
    move-exception v0

    .line 287
    invoke-interface {v5, v8, v0}, Liz2;->n(ILjava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    goto :goto_c

    .line 291
    :catchall_2
    move-exception v0

    .line 292
    move-object v1, v0

    .line 293
    goto :goto_d

    .line 294
    :catch_5
    move-exception v0

    .line 295
    goto :goto_8

    .line 296
    :catch_6
    move-exception v0

    .line 297
    goto :goto_a

    .line 298
    :cond_8
    :try_start_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 299
    .line 300
    invoke-direct {v0, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 304
    :goto_8
    :try_start_b
    invoke-interface {v5, v6, v0}, Liz2;->n(ILjava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 305
    .line 306
    .line 307
    :goto_9
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 308
    .line 309
    .line 310
    goto :goto_b

    .line 311
    :catch_7
    move-exception v0

    .line 312
    invoke-interface {v5, v8, v0}, Liz2;->n(ILjava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    goto :goto_b

    .line 316
    :goto_a
    :try_start_d
    invoke-interface {v5, v8, v0}, Liz2;->n(ILjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 317
    .line 318
    .line 319
    goto :goto_9

    .line 320
    :goto_b
    move-object v9, v12

    .line 321
    :goto_c
    iput-object v9, v2, Let0;->g:[Lft0;

    .line 322
    .line 323
    goto :goto_f

    .line 324
    :goto_d
    :try_start_e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 325
    .line 326
    .line 327
    goto :goto_e

    .line 328
    :catch_8
    move-exception v0

    .line 329
    invoke-interface {v5, v8, v0}, Liz2;->n(ILjava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    :goto_e
    throw v1

    .line 333
    :cond_9
    :goto_f
    iget-object v0, v2, Let0;->g:[Lft0;

    .line 334
    .line 335
    if-eqz v0, :cond_f

    .line 336
    .line 337
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 338
    .line 339
    const/16 v9, 0x1f

    .line 340
    .line 341
    if-lt v7, v9, :cond_a

    .line 342
    .line 343
    goto :goto_10

    .line 344
    :cond_a
    const/16 v9, 0x18

    .line 345
    .line 346
    if-eq v7, v9, :cond_b

    .line 347
    .line 348
    const/16 v9, 0x19

    .line 349
    .line 350
    if-eq v7, v9, :cond_b

    .line 351
    .line 352
    goto :goto_18

    .line 353
    :cond_b
    :goto_10
    :try_start_f
    const-string v7, "dexopt/baseline.profm"

    .line 354
    .line 355
    invoke-virtual {v2, v3, v7}, Let0;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 356
    .line 357
    .line 358
    move-result-object v3
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_9

    .line 359
    if-eqz v3, :cond_d

    .line 360
    .line 361
    :try_start_10
    sget-object v7, Ltv4;->d:[B

    .line 362
    .line 363
    invoke-static {v3, v13}, Ldm0;->G(Ljava/io/InputStream;I)[B

    .line 364
    .line 365
    .line 366
    move-result-object v9

    .line 367
    invoke-static {v7, v9}, Ljava/util/Arrays;->equals([B[B)Z

    .line 368
    .line 369
    .line 370
    move-result v7

    .line 371
    if-eqz v7, :cond_c

    .line 372
    .line 373
    invoke-static {v3, v13}, Ldm0;->G(Ljava/io/InputStream;I)[B

    .line 374
    .line 375
    .line 376
    move-result-object v7

    .line 377
    invoke-static {v3, v7, v4, v0}, Ltv4;->K(Ljava/io/FileInputStream;[B[B[Lft0;)[Lft0;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    iput-object v0, v2, Let0;->g:[Lft0;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 382
    .line 383
    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_9

    .line 384
    .line 385
    .line 386
    move-object v0, v2

    .line 387
    goto :goto_17

    .line 388
    :catch_9
    move-exception v0

    .line 389
    goto :goto_13

    .line 390
    :catch_a
    move-exception v0

    .line 391
    goto :goto_14

    .line 392
    :catch_b
    move-exception v0

    .line 393
    goto :goto_15

    .line 394
    :catchall_3
    move-exception v0

    .line 395
    move-object v4, v0

    .line 396
    goto :goto_11

    .line 397
    :cond_c
    :try_start_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 398
    .line 399
    invoke-direct {v0, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 403
    :goto_11
    :try_start_13
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 404
    .line 405
    .line 406
    goto :goto_12

    .line 407
    :catchall_4
    move-exception v0

    .line 408
    :try_start_14
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 409
    .line 410
    .line 411
    :goto_12
    throw v4

    .line 412
    :cond_d
    if-eqz v3, :cond_e

    .line 413
    .line 414
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_9

    .line 415
    .line 416
    .line 417
    goto :goto_16

    .line 418
    :goto_13
    iput-object v12, v2, Let0;->g:[Lft0;

    .line 419
    .line 420
    invoke-interface {v5, v6, v0}, Liz2;->n(ILjava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    goto :goto_16

    .line 424
    :goto_14
    invoke-interface {v5, v8, v0}, Liz2;->n(ILjava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    goto :goto_16

    .line 428
    :goto_15
    const/16 v3, 0x9

    .line 429
    .line 430
    invoke-interface {v5, v3, v0}, Liz2;->n(ILjava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    :cond_e
    :goto_16
    move-object v0, v12

    .line 434
    :goto_17
    if-eqz v0, :cond_f

    .line 435
    .line 436
    move-object v2, v0

    .line 437
    :cond_f
    :goto_18
    iget-object v3, v2, Let0;->b:Liz2;

    .line 438
    .line 439
    iget-object v0, v2, Let0;->g:[Lft0;

    .line 440
    .line 441
    iget-object v4, v2, Let0;->c:[B

    .line 442
    .line 443
    const-string v5, "This device doesn\'t support aot. Did you call deviceSupportsAotProfile()?"

    .line 444
    .line 445
    if-eqz v0, :cond_13

    .line 446
    .line 447
    if-nez v4, :cond_10

    .line 448
    .line 449
    goto :goto_1e

    .line 450
    :cond_10
    iget-boolean v7, v2, Let0;->f:Z

    .line 451
    .line 452
    if-eqz v7, :cond_12

    .line 453
    .line 454
    :try_start_15
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .line 455
    .line 456
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_c

    .line 457
    .line 458
    .line 459
    :try_start_16
    invoke-virtual {v7, v15}, Ljava/io/OutputStream;->write([B)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v7, v4}, Ljava/io/OutputStream;->write([B)V

    .line 463
    .line 464
    .line 465
    invoke-static {v7, v4, v0}, Ltv4;->U(Ljava/io/ByteArrayOutputStream;[B[Lft0;)Z

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    if-nez v0, :cond_11

    .line 470
    .line 471
    const/4 v0, 0x5

    .line 472
    invoke-interface {v3, v0, v12}, Liz2;->n(ILjava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    iput-object v12, v2, Let0;->g:[Lft0;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 476
    .line 477
    :try_start_17
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_17} :catch_c

    .line 478
    .line 479
    .line 480
    goto :goto_1e

    .line 481
    :catch_c
    move-exception v0

    .line 482
    goto :goto_1b

    .line 483
    :catch_d
    move-exception v0

    .line 484
    goto :goto_1c

    .line 485
    :catchall_5
    move-exception v0

    .line 486
    move-object v4, v0

    .line 487
    goto :goto_19

    .line 488
    :cond_11
    :try_start_18
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    iput-object v0, v2, Let0;->h:[B
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 493
    .line 494
    :try_start_19
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_19} :catch_c

    .line 495
    .line 496
    .line 497
    goto :goto_1d

    .line 498
    :goto_19
    :try_start_1a
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 499
    .line 500
    .line 501
    goto :goto_1a

    .line 502
    :catchall_6
    move-exception v0

    .line 503
    :try_start_1b
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 504
    .line 505
    .line 506
    :goto_1a
    throw v4
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_1b} :catch_c

    .line 507
    :goto_1b
    invoke-interface {v3, v6, v0}, Liz2;->n(ILjava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    goto :goto_1d

    .line 511
    :goto_1c
    invoke-interface {v3, v8, v0}, Liz2;->n(ILjava/lang/Object;)V

    .line 512
    .line 513
    .line 514
    :goto_1d
    iput-object v12, v2, Let0;->g:[Lft0;

    .line 515
    .line 516
    goto :goto_1e

    .line 517
    :cond_12
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    return-void

    .line 521
    :cond_13
    :goto_1e
    iget-object v0, v2, Let0;->h:[B

    .line 522
    .line 523
    if-nez v0, :cond_14

    .line 524
    .line 525
    const/4 v6, 0x0

    .line 526
    const/4 v7, 0x1

    .line 527
    goto/16 :goto_32

    .line 528
    .line 529
    :cond_14
    iget-boolean v3, v2, Let0;->f:Z

    .line 530
    .line 531
    if-eqz v3, :cond_1a

    .line 532
    .line 533
    :try_start_1c
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 534
    .line 535
    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_11
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_10
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .line 536
    .line 537
    .line 538
    :try_start_1d
    new-instance v4, Ljava/io/FileOutputStream;

    .line 539
    .line 540
    iget-object v0, v2, Let0;->d:Ljava/io/File;

    .line 541
    .line 542
    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_12

    .line 543
    .line 544
    .line 545
    :try_start_1e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 546
    .line 547
    .line 548
    move-result-object v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    .line 549
    :try_start_1f
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    .line 550
    .line 551
    .line 552
    move-result-object v6
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    .line 553
    if-eqz v6, :cond_16

    .line 554
    .line 555
    :try_start_20
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->isValid()Z

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    if-eqz v0, :cond_16

    .line 560
    .line 561
    const/16 v0, 0x200

    .line 562
    .line 563
    new-array v0, v0, [B

    .line 564
    .line 565
    :goto_1f
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 566
    .line 567
    .line 568
    move-result v7

    .line 569
    if-lez v7, :cond_15

    .line 570
    .line 571
    const/4 v9, 0x0

    .line 572
    invoke-virtual {v4, v0, v9, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    .line 573
    .line 574
    .line 575
    goto :goto_1f

    .line 576
    :cond_15
    const/4 v7, 0x1

    .line 577
    :try_start_21
    invoke-virtual {v2, v7, v12}, Let0;->b(ILjava/io/Serializable;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    .line 578
    .line 579
    .line 580
    :try_start_22
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    .line 581
    .line 582
    .line 583
    :try_start_23
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    .line 584
    .line 585
    .line 586
    :try_start_24
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    .line 587
    .line 588
    .line 589
    :try_start_25
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_25} :catch_f
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_e
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    .line 590
    .line 591
    .line 592
    iput-object v12, v2, Let0;->h:[B

    .line 593
    .line 594
    iput-object v12, v2, Let0;->g:[Lft0;

    .line 595
    .line 596
    move v6, v7

    .line 597
    goto/16 :goto_32

    .line 598
    .line 599
    :catchall_7
    move-exception v0

    .line 600
    goto/16 :goto_33

    .line 601
    .line 602
    :catch_e
    move-exception v0

    .line 603
    goto/16 :goto_2e

    .line 604
    .line 605
    :catch_f
    move-exception v0

    .line 606
    :goto_20
    const/4 v3, 0x6

    .line 607
    goto/16 :goto_30

    .line 608
    .line 609
    :catchall_8
    move-exception v0

    .line 610
    :goto_21
    move-object v4, v0

    .line 611
    goto :goto_2c

    .line 612
    :catchall_9
    move-exception v0

    .line 613
    :goto_22
    move-object v5, v0

    .line 614
    goto :goto_2a

    .line 615
    :catchall_a
    move-exception v0

    .line 616
    :goto_23
    move-object v6, v0

    .line 617
    goto :goto_28

    .line 618
    :catchall_b
    move-exception v0

    .line 619
    :goto_24
    move-object v9, v0

    .line 620
    goto :goto_26

    .line 621
    :cond_16
    const/4 v7, 0x1

    .line 622
    goto :goto_25

    .line 623
    :catchall_c
    move-exception v0

    .line 624
    const/4 v7, 0x1

    .line 625
    goto :goto_24

    .line 626
    :goto_25
    :try_start_26
    new-instance v0, Ljava/io/IOException;

    .line 627
    .line 628
    const-string v9, "Unable to acquire a lock on the underlying file channel."

    .line 629
    .line 630
    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    .line 634
    :goto_26
    if-eqz v6, :cond_17

    .line 635
    .line 636
    :try_start_27
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_d

    .line 637
    .line 638
    .line 639
    goto :goto_27

    .line 640
    :catchall_d
    move-exception v0

    .line 641
    :try_start_28
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 642
    .line 643
    .line 644
    :cond_17
    :goto_27
    throw v9
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    .line 645
    :catchall_e
    move-exception v0

    .line 646
    const/4 v7, 0x1

    .line 647
    goto :goto_23

    .line 648
    :goto_28
    if-eqz v5, :cond_18

    .line 649
    .line 650
    :try_start_29
    invoke-virtual {v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_f

    .line 651
    .line 652
    .line 653
    goto :goto_29

    .line 654
    :catchall_f
    move-exception v0

    .line 655
    :try_start_2a
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 656
    .line 657
    .line 658
    :cond_18
    :goto_29
    throw v6
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_9

    .line 659
    :catchall_10
    move-exception v0

    .line 660
    const/4 v7, 0x1

    .line 661
    goto :goto_22

    .line 662
    :goto_2a
    :try_start_2b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_11

    .line 663
    .line 664
    .line 665
    goto :goto_2b

    .line 666
    :catchall_11
    move-exception v0

    .line 667
    :try_start_2c
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 668
    .line 669
    .line 670
    :goto_2b
    throw v5
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_8

    .line 671
    :catchall_12
    move-exception v0

    .line 672
    const/4 v7, 0x1

    .line 673
    goto :goto_21

    .line 674
    :goto_2c
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_13

    .line 675
    .line 676
    .line 677
    goto :goto_2d

    .line 678
    :catchall_13
    move-exception v0

    .line 679
    :try_start_2e
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 680
    .line 681
    .line 682
    :goto_2d
    throw v4
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_2e} :catch_f
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_7

    .line 683
    :catch_10
    move-exception v0

    .line 684
    const/4 v7, 0x1

    .line 685
    goto :goto_2e

    .line 686
    :catch_11
    move-exception v0

    .line 687
    const/4 v7, 0x1

    .line 688
    goto :goto_20

    .line 689
    :goto_2e
    :try_start_2f
    invoke-virtual {v2, v8, v0}, Let0;->b(ILjava/io/Serializable;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_7

    .line 690
    .line 691
    .line 692
    :goto_2f
    iput-object v12, v2, Let0;->h:[B

    .line 693
    .line 694
    iput-object v12, v2, Let0;->g:[Lft0;

    .line 695
    .line 696
    goto :goto_31

    .line 697
    :goto_30
    :try_start_30
    invoke-virtual {v2, v3, v0}, Let0;->b(ILjava/io/Serializable;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_7

    .line 698
    .line 699
    .line 700
    goto :goto_2f

    .line 701
    :goto_31
    const/4 v6, 0x0

    .line 702
    :goto_32
    if-eqz v6, :cond_19

    .line 703
    .line 704
    invoke-static {v10, v11}, Ljz2;->a(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    .line 705
    .line 706
    .line 707
    :cond_19
    move v9, v6

    .line 708
    goto :goto_36

    .line 709
    :goto_33
    iput-object v12, v2, Let0;->h:[B

    .line 710
    .line 711
    iput-object v12, v2, Let0;->g:[Lft0;

    .line 712
    .line 713
    throw v0

    .line 714
    :cond_1a
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    return-void

    .line 718
    :goto_34
    invoke-virtual {v2, v13, v12}, Let0;->b(ILjava/io/Serializable;)V

    .line 719
    .line 720
    .line 721
    :goto_35
    const/4 v9, 0x0

    .line 722
    :goto_36
    if-eqz v9, :cond_1b

    .line 723
    .line 724
    if-eqz p3, :cond_1b

    .line 725
    .line 726
    move v9, v7

    .line 727
    goto :goto_37

    .line 728
    :cond_1b
    const/4 v9, 0x0

    .line 729
    :goto_37
    invoke-static {v1, v9}, Lnz2;->c(Landroid/content/Context;Z)V

    .line 730
    .line 731
    .line 732
    :goto_38
    return-void

    .line 733
    :catch_12
    move-exception v0

    .line 734
    invoke-interface {v5, v8, v0}, Liz2;->n(ILjava/lang/Object;)V

    .line 735
    .line 736
    .line 737
    const/4 v9, 0x0

    .line 738
    invoke-static {v1, v9}, Lnz2;->c(Landroid/content/Context;Z)V

    .line 739
    .line 740
    .line 741
    return-void
.end method

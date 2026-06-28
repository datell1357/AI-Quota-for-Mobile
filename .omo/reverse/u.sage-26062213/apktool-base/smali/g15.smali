.class public final Lg15;
.super Lj05;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public final i:J

.field public final j:J

.field public k:Ljava/util/List;

.field public l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public n:I

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:J

.field public r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr45;JJLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lj05;-><init>(Lr45;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lg15;->q:J

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lg15;->r:Ljava/lang/String;

    .line 10
    .line 11
    iput-wide p2, p0, Lg15;->i:J

    .line 12
    .line 13
    iput-wide p4, p0, Lg15;->j:J

    .line 14
    .line 15
    iput-object p6, p0, Lg15;->m:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Laz4;->v()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lr45;

    .line 7
    .line 8
    iget-object v1, v0, Lr45;->e:Lf35;

    .line 9
    .line 10
    iget-object v2, v0, Lr45;->f:La25;

    .line 11
    .line 12
    invoke-static {v1}, Lr45;->j(Lib0;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lf35;->C()Ly55;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v3, Lx55;->p:Lx55;

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Ly55;->i(Lx55;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v2, La25;->m:Lx15;

    .line 31
    .line 32
    const-string v3, "Analytics Storage consent is not granted"

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Lx15;->a(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/16 v1, 0x10

    .line 40
    .line 41
    new-array v1, v1, [B

    .line 42
    .line 43
    iget-object v3, v0, Lr45;->i:Lac5;

    .line 44
    .line 45
    invoke-static {v3}, Lr45;->j(Lib0;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Lac5;->t0()Ljava/security/SecureRandom;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 53
    .line 54
    .line 55
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 56
    .line 57
    new-instance v4, Ljava/math/BigInteger;

    .line 58
    .line 59
    const/4 v5, 0x1

    .line 60
    invoke-direct {v4, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 61
    .line 62
    .line 63
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v4, "%032x"

    .line 68
    .line 69
    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    :goto_0
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, v2, La25;->m:Lx15;

    .line 77
    .line 78
    if-nez v1, :cond_1

    .line 79
    .line 80
    const-string v3, "null"

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    const-string v3, "not null"

    .line 84
    .line 85
    :goto_1
    const-string v4, "Resetting session stitching token to "

    .line 86
    .line 87
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v2, v3}, Lx15;->a(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iput-object v1, p0, Lg15;->p:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v0, v0, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 97
    .line 98
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v0

    .line 102
    iput-wide v0, p0, Lg15;->q:J

    .line 103
    .line 104
    return-void
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj05;->w()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lg15;->c:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lg15;->c:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Laz4;->v()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lj05;->w()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lg15;->o:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lg15;->o:Ljava/lang/String;

    .line 13
    .line 14
    return-object p0
.end method

.method public final y()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final z(Ljava/lang/String;)Lvc5;
    .locals 48

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual {v1}, Laz4;->v()V

    .line 4
    .line 5
    .line 6
    new-instance v2, Lvc5;

    .line 7
    .line 8
    move-object v3, v2

    .line 9
    invoke-virtual {v1}, Lg15;->B()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    move-object v4, v3

    .line 14
    invoke-virtual {v1}, Lg15;->C()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1}, Lj05;->w()V

    .line 19
    .line 20
    .line 21
    move-object v5, v4

    .line 22
    iget-object v4, v1, Lg15;->d:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1}, Lj05;->w()V

    .line 25
    .line 26
    .line 27
    iget v0, v1, Lg15;->e:I

    .line 28
    .line 29
    int-to-long v6, v0

    .line 30
    invoke-virtual {v1}, Lj05;->w()V

    .line 31
    .line 32
    .line 33
    iget-object v0, v1, Lg15;->f:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-object v8, v5

    .line 39
    move-wide v5, v6

    .line 40
    iget-object v7, v1, Lg15;->f:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v0, v1, Lib0;->a:Ljava/lang/Object;

    .line 43
    .line 44
    move-object v9, v0

    .line 45
    check-cast v9, Lr45;

    .line 46
    .line 47
    iget-object v0, v9, Lr45;->d:Lds4;

    .line 48
    .line 49
    iget-object v10, v9, Lr45;->f:La25;

    .line 50
    .line 51
    iget-object v11, v9, Lr45;->d:Lds4;

    .line 52
    .line 53
    iget-object v12, v9, Lr45;->a:Landroid/content/Context;

    .line 54
    .line 55
    iget-object v13, v9, Lr45;->i:Lac5;

    .line 56
    .line 57
    iget-object v14, v9, Lr45;->e:Lf35;

    .line 58
    .line 59
    invoke-virtual {v0}, Lds4;->B()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lj05;->w()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Laz4;->v()V

    .line 66
    .line 67
    .line 68
    move-object v15, v2

    .line 69
    move-object/from16 v16, v3

    .line 70
    .line 71
    iget-wide v2, v1, Lg15;->h:J

    .line 72
    .line 73
    const-wide/16 v17, 0x0

    .line 74
    .line 75
    cmp-long v0, v2, v17

    .line 76
    .line 77
    move-wide/from16 v19, v2

    .line 78
    .line 79
    if-nez v0, :cond_4

    .line 80
    .line 81
    invoke-static {v13}, Lr45;->j(Lib0;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, v13, Lib0;->a:Ljava/lang/Object;

    .line 85
    .line 86
    move-object v3, v0

    .line 87
    check-cast v3, Lr45;

    .line 88
    .line 89
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v13}, Lib0;->v()V

    .line 94
    .line 95
    .line 96
    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 103
    .line 104
    .line 105
    move-result-object v19

    .line 106
    const/16 v21, 0x0

    .line 107
    .line 108
    invoke-static {}, Lac5;->O()Ljava/security/MessageDigest;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    const-wide/16 v22, -0x1

    .line 113
    .line 114
    if-nez v2, :cond_0

    .line 115
    .line 116
    iget-object v0, v3, Lr45;->f:La25;

    .line 117
    .line 118
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, v0, La25;->f:Lx15;

    .line 122
    .line 123
    const-string v2, "Could not get MD5 instance"

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    move-object/from16 v24, v4

    .line 129
    .line 130
    move-wide/from16 v25, v5

    .line 131
    .line 132
    :goto_0
    move-wide/from16 v2, v22

    .line 133
    .line 134
    goto/16 :goto_4

    .line 135
    .line 136
    :cond_0
    if-eqz v19, :cond_3

    .line 137
    .line 138
    :try_start_0
    invoke-virtual {v13, v12, v0}, Lac5;->c0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_2

    .line 143
    .line 144
    invoke-static {v12}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 145
    .line 146
    .line 147
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 148
    move-object/from16 v24, v4

    .line 149
    .line 150
    :try_start_1
    iget-object v4, v3, Lr45;->a:Landroid/content/Context;

    .line 151
    .line 152
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    move-wide/from16 v25, v5

    .line 157
    .line 158
    const/16 v5, 0x40

    .line 159
    .line 160
    :try_start_2
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 165
    .line 166
    if-eqz v0, :cond_1

    .line 167
    .line 168
    array-length v4, v0

    .line 169
    if-lez v4, :cond_1

    .line 170
    .line 171
    aget-object v0, v0, v21

    .line 172
    .line 173
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-static {v0}, Lac5;->P([B)J

    .line 182
    .line 183
    .line 184
    move-result-wide v22

    .line 185
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    goto :goto_2

    .line 188
    :cond_1
    iget-object v0, v3, Lr45;->f:La25;

    .line 189
    .line 190
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 191
    .line 192
    .line 193
    iget-object v0, v0, La25;->i:Lx15;

    .line 194
    .line 195
    const-string v2, "Could not get signatures"

    .line 196
    .line 197
    invoke-virtual {v0, v2}, Lx15;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 198
    .line 199
    .line 200
    goto :goto_0

    .line 201
    :catch_1
    move-exception v0

    .line 202
    :goto_1
    move-wide/from16 v25, v5

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :catch_2
    move-exception v0

    .line 206
    move-object/from16 v24, v4

    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_2
    move-object/from16 v24, v4

    .line 210
    .line 211
    move-wide/from16 v25, v5

    .line 212
    .line 213
    move-wide/from16 v22, v17

    .line 214
    .line 215
    goto :goto_0

    .line 216
    :goto_2
    iget-object v2, v3, Lr45;->f:La25;

    .line 217
    .line 218
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 219
    .line 220
    .line 221
    iget-object v2, v2, La25;->f:Lx15;

    .line 222
    .line 223
    const-string v3, "Package name not found"

    .line 224
    .line 225
    invoke-virtual {v2, v0, v3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :goto_3
    move-wide/from16 v2, v17

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_3
    move-object/from16 v24, v4

    .line 232
    .line 233
    move-wide/from16 v25, v5

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :goto_4
    iput-wide v2, v1, Lg15;->h:J

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_4
    move-object/from16 v24, v4

    .line 240
    .line 241
    move-wide/from16 v25, v5

    .line 242
    .line 243
    const/16 v21, 0x0

    .line 244
    .line 245
    move-wide/from16 v2, v19

    .line 246
    .line 247
    :goto_5
    invoke-virtual {v9}, Lr45;->a()Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    invoke-static {v14}, Lr45;->j(Lib0;)V

    .line 252
    .line 253
    .line 254
    iget-boolean v4, v14, Lf35;->r:Z

    .line 255
    .line 256
    const/4 v5, 0x1

    .line 257
    xor-int/2addr v4, v5

    .line 258
    invoke-virtual {v1}, Laz4;->v()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v9}, Lr45;->a()Z

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    const/4 v5, 0x0

    .line 266
    if-nez v6, :cond_5

    .line 267
    .line 268
    :goto_6
    move/from16 v23, v0

    .line 269
    .line 270
    move-object v12, v5

    .line 271
    goto/16 :goto_8

    .line 272
    .line 273
    :cond_5
    sget-object v6, Lwr4;->o:Lwr4;

    .line 274
    .line 275
    iget-object v6, v6, Lwr4;->n:Lfu3;

    .line 276
    .line 277
    iget-object v6, v6, Lfu3;->n:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v6, Lxr4;

    .line 280
    .line 281
    sget-object v6, Le05;->H0:Ld05;

    .line 282
    .line 283
    invoke-virtual {v11, v5, v6}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 284
    .line 285
    .line 286
    move-result v6

    .line 287
    if-eqz v6, :cond_6

    .line 288
    .line 289
    invoke-static {v10}, Lr45;->l(Lq55;)V

    .line 290
    .line 291
    .line 292
    iget-object v6, v10, La25;->n:Lx15;

    .line 293
    .line 294
    const-string v10, "Disabled IID for tests."

    .line 295
    .line 296
    invoke-virtual {v6, v10}, Lx15;->a(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_6
    :try_start_3
    invoke-virtual {v12}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    const-string v5, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 305
    .line 306
    invoke-virtual {v6, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    move-result-object v5
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 310
    if-nez v5, :cond_7

    .line 311
    .line 312
    :catch_3
    move/from16 v23, v0

    .line 313
    .line 314
    :goto_7
    const/4 v12, 0x0

    .line 315
    goto :goto_8

    .line 316
    :cond_7
    :try_start_4
    const-string v6, "getInstance"

    .line 317
    .line 318
    const-class v22, Landroid/content/Context;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 319
    .line 320
    move/from16 v23, v0

    .line 321
    .line 322
    :try_start_5
    filled-new-array/range {v22 .. v22}, [Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    const/4 v12, 0x0

    .line 335
    invoke-virtual {v0, v12, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 339
    if-nez v0, :cond_8

    .line 340
    .line 341
    goto :goto_8

    .line 342
    :cond_8
    :try_start_6
    const-string v6, "getFirebaseInstanceId"

    .line 343
    .line 344
    invoke-virtual {v5, v6, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 345
    .line 346
    .line 347
    move-result-object v5

    .line 348
    invoke-virtual {v5, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    check-cast v0, Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 353
    .line 354
    move-object v12, v0

    .line 355
    goto :goto_8

    .line 356
    :catch_4
    invoke-static {v10}, Lr45;->l(Lq55;)V

    .line 357
    .line 358
    .line 359
    iget-object v0, v10, La25;->k:Lx15;

    .line 360
    .line 361
    const-string v5, "Failed to retrieve Firebase Instance Id"

    .line 362
    .line 363
    invoke-virtual {v0, v5}, Lx15;->a(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    goto :goto_7

    .line 367
    :catch_5
    move/from16 v23, v0

    .line 368
    .line 369
    :catch_6
    invoke-static {v10}, Lr45;->l(Lq55;)V

    .line 370
    .line 371
    .line 372
    iget-object v0, v10, La25;->j:Lx15;

    .line 373
    .line 374
    const-string v5, "Failed to obtain Firebase Analytics instance"

    .line 375
    .line 376
    invoke-virtual {v0, v5}, Lx15;->a(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    goto :goto_7

    .line 380
    :goto_8
    invoke-static {v14}, Lr45;->j(Lib0;)V

    .line 381
    .line 382
    .line 383
    iget-object v0, v14, Lf35;->f:Ly25;

    .line 384
    .line 385
    invoke-virtual {v0}, Ly25;->a()J

    .line 386
    .line 387
    .line 388
    move-result-wide v5

    .line 389
    cmp-long v0, v5, v17

    .line 390
    .line 391
    move-wide/from16 v27, v2

    .line 392
    .line 393
    iget-wide v2, v9, Lr45;->D:J

    .line 394
    .line 395
    if-nez v0, :cond_9

    .line 396
    .line 397
    goto :goto_9

    .line 398
    :cond_9
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 399
    .line 400
    .line 401
    move-result-wide v2

    .line 402
    :goto_9
    invoke-virtual {v1}, Lj05;->w()V

    .line 403
    .line 404
    .line 405
    iget v0, v1, Lg15;->n:I

    .line 406
    .line 407
    const-string v5, "google_analytics_adid_collection_enabled"

    .line 408
    .line 409
    invoke-virtual {v11, v5}, Lds4;->I(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    if-eqz v5, :cond_b

    .line 414
    .line 415
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 416
    .line 417
    .line 418
    move-result v5

    .line 419
    if-eqz v5, :cond_a

    .line 420
    .line 421
    goto :goto_a

    .line 422
    :cond_a
    move/from16 v5, v21

    .line 423
    .line 424
    goto :goto_b

    .line 425
    :cond_b
    :goto_a
    const/4 v5, 0x1

    .line 426
    :goto_b
    invoke-static {v14}, Lr45;->j(Lib0;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v14}, Lib0;->v()V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v14}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 433
    .line 434
    .line 435
    move-result-object v6

    .line 436
    const-string v10, "deferred_analytics_collection"

    .line 437
    .line 438
    move-wide/from16 v29, v2

    .line 439
    .line 440
    move/from16 v2, v21

    .line 441
    .line 442
    invoke-interface {v6, v10, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 443
    .line 444
    .line 445
    move-result v3

    .line 446
    const-string v2, "google_analytics_default_allow_ad_personalization_signals"

    .line 447
    .line 448
    const/4 v6, 0x1

    .line 449
    invoke-virtual {v11, v2, v6}, Lds4;->L(Ljava/lang/String;Z)Lu55;

    .line 450
    .line 451
    .line 452
    move-result-object v10

    .line 453
    sget-object v6, Lu55;->r:Lu55;

    .line 454
    .line 455
    if-eq v10, v6, :cond_c

    .line 456
    .line 457
    const/4 v6, 0x1

    .line 458
    goto :goto_c

    .line 459
    :cond_c
    const/4 v6, 0x0

    .line 460
    :goto_c
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 461
    .line 462
    .line 463
    move-result-object v6

    .line 464
    iget-object v10, v1, Lg15;->k:Ljava/util/List;

    .line 465
    .line 466
    invoke-virtual {v14}, Lf35;->C()Ly55;

    .line 467
    .line 468
    .line 469
    move-result-object v22

    .line 470
    invoke-virtual/range {v22 .. v22}, Ly55;->g()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v22

    .line 474
    move/from16 v31, v0

    .line 475
    .line 476
    iget-object v0, v1, Lg15;->l:Ljava/lang/String;

    .line 477
    .line 478
    if-nez v0, :cond_d

    .line 479
    .line 480
    invoke-static {v13}, Lr45;->j(Lib0;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v13}, Lac5;->r0()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    iput-object v0, v1, Lg15;->l:Ljava/lang/String;

    .line 488
    .line 489
    :cond_d
    iget-object v0, v1, Lg15;->l:Ljava/lang/String;

    .line 490
    .line 491
    move-object/from16 v32, v0

    .line 492
    .line 493
    invoke-virtual {v14}, Lf35;->C()Ly55;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    move/from16 v33, v3

    .line 498
    .line 499
    sget-object v3, Lx55;->p:Lx55;

    .line 500
    .line 501
    invoke-virtual {v0, v3}, Ly55;->i(Lx55;)Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    if-nez v0, :cond_e

    .line 506
    .line 507
    move/from16 v34, v4

    .line 508
    .line 509
    const/4 v0, 0x0

    .line 510
    goto :goto_e

    .line 511
    :cond_e
    invoke-virtual {v1}, Laz4;->v()V

    .line 512
    .line 513
    .line 514
    move v0, v4

    .line 515
    iget-wide v3, v1, Lg15;->q:J

    .line 516
    .line 517
    cmp-long v3, v3, v17

    .line 518
    .line 519
    if-nez v3, :cond_f

    .line 520
    .line 521
    move/from16 v34, v0

    .line 522
    .line 523
    goto :goto_d

    .line 524
    :cond_f
    iget-object v3, v9, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 525
    .line 526
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 527
    .line 528
    .line 529
    move-result-wide v3

    .line 530
    move-wide/from16 v34, v3

    .line 531
    .line 532
    iget-wide v3, v1, Lg15;->q:J

    .line 533
    .line 534
    sub-long v3, v34, v3

    .line 535
    .line 536
    move/from16 v34, v0

    .line 537
    .line 538
    iget-object v0, v1, Lg15;->p:Ljava/lang/String;

    .line 539
    .line 540
    if-eqz v0, :cond_10

    .line 541
    .line 542
    const-wide/32 v35, 0x5265c00

    .line 543
    .line 544
    .line 545
    cmp-long v0, v3, v35

    .line 546
    .line 547
    if-lez v0, :cond_10

    .line 548
    .line 549
    iget-object v0, v1, Lg15;->r:Ljava/lang/String;

    .line 550
    .line 551
    if-nez v0, :cond_10

    .line 552
    .line 553
    invoke-virtual {v1}, Lg15;->A()V

    .line 554
    .line 555
    .line 556
    :cond_10
    :goto_d
    iget-object v0, v1, Lg15;->p:Ljava/lang/String;

    .line 557
    .line 558
    if-nez v0, :cond_11

    .line 559
    .line 560
    invoke-virtual {v1}, Lg15;->A()V

    .line 561
    .line 562
    .line 563
    :cond_11
    iget-object v0, v1, Lg15;->p:Ljava/lang/String;

    .line 564
    .line 565
    :goto_e
    const-string v3, "google_analytics_sgtm_upload_enabled"

    .line 566
    .line 567
    invoke-virtual {v11, v3}, Lds4;->I(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 568
    .line 569
    .line 570
    move-result-object v3

    .line 571
    if-nez v3, :cond_12

    .line 572
    .line 573
    const/4 v3, 0x0

    .line 574
    goto :goto_f

    .line 575
    :cond_12
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 576
    .line 577
    .line 578
    move-result v3

    .line 579
    :goto_f
    invoke-static {v13}, Lr45;->j(Lib0;)V

    .line 580
    .line 581
    .line 582
    iget-object v4, v13, Lib0;->a:Ljava/lang/Object;

    .line 583
    .line 584
    check-cast v4, Lr45;

    .line 585
    .line 586
    move-object/from16 v35, v0

    .line 587
    .line 588
    invoke-virtual {v1}, Lg15;->B()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    move/from16 v36, v3

    .line 593
    .line 594
    iget-object v3, v4, Lr45;->a:Landroid/content/Context;

    .line 595
    .line 596
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 597
    .line 598
    .line 599
    move-result-object v3

    .line 600
    if-nez v3, :cond_13

    .line 601
    .line 602
    move/from16 v37, v5

    .line 603
    .line 604
    move-wide/from16 v3, v17

    .line 605
    .line 606
    const/4 v5, 0x0

    .line 607
    goto :goto_12

    .line 608
    :cond_13
    :try_start_7
    iget-object v3, v4, Lr45;->a:Landroid/content/Context;

    .line 609
    .line 610
    invoke-static {v3}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 611
    .line 612
    .line 613
    move-result-object v3
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    .line 614
    move/from16 v37, v5

    .line 615
    .line 616
    const/4 v5, 0x0

    .line 617
    :try_start_8
    invoke-virtual {v3, v0, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 618
    .line 619
    .line 620
    move-result-object v3

    .line 621
    if-eqz v3, :cond_14

    .line 622
    .line 623
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    .line 624
    .line 625
    goto :goto_11

    .line 626
    :cond_14
    :goto_10
    move v0, v5

    .line 627
    goto :goto_11

    .line 628
    :catch_7
    move/from16 v37, v5

    .line 629
    .line 630
    const/4 v5, 0x0

    .line 631
    :catch_8
    iget-object v3, v4, Lr45;->f:La25;

    .line 632
    .line 633
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 634
    .line 635
    .line 636
    iget-object v3, v3, La25;->l:Lx15;

    .line 637
    .line 638
    const-string v4, "PackageManager failed to find running app: app_id"

    .line 639
    .line 640
    invoke-virtual {v3, v0, v4}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    goto :goto_10

    .line 644
    :goto_11
    int-to-long v3, v0

    .line 645
    :goto_12
    invoke-static {v14}, Lr45;->j(Lib0;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v14}, Lf35;->C()Ly55;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    iget v0, v0, Ly55;->b:I

    .line 653
    .line 654
    invoke-static {v14}, Lr45;->j(Lib0;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v14}, Lib0;->v()V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v14}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 661
    .line 662
    .line 663
    move-result-object v14

    .line 664
    const-string v5, "dma_consent_settings"

    .line 665
    .line 666
    move/from16 v38, v0

    .line 667
    .line 668
    const/4 v0, 0x0

    .line 669
    invoke-interface {v14, v5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v5

    .line 673
    invoke-static {v5}, Lrt4;->b(Ljava/lang/String;)Lrt4;

    .line 674
    .line 675
    .line 676
    move-result-object v5

    .line 677
    iget-object v5, v5, Lrt4;->b:Ljava/lang/String;

    .line 678
    .line 679
    invoke-static {}, Ler4;->a()V

    .line 680
    .line 681
    .line 682
    sget-object v14, Le05;->P0:Ld05;

    .line 683
    .line 684
    invoke-virtual {v11, v0, v14}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 685
    .line 686
    .line 687
    move-result v39

    .line 688
    if-eqz v39, :cond_15

    .line 689
    .line 690
    invoke-static {v13}, Lr45;->j(Lib0;)V

    .line 691
    .line 692
    .line 693
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 694
    .line 695
    move-wide/from16 v39, v3

    .line 696
    .line 697
    const/16 v3, 0x1e

    .line 698
    .line 699
    if-lt v0, v3, :cond_16

    .line 700
    .line 701
    invoke-static {}, Lzb5;->a()I

    .line 702
    .line 703
    .line 704
    move-result v0

    .line 705
    const/4 v3, 0x3

    .line 706
    if-le v0, v3, :cond_16

    .line 707
    .line 708
    invoke-static {}, La3;->s()I

    .line 709
    .line 710
    .line 711
    move-result v0

    .line 712
    goto :goto_13

    .line 713
    :cond_15
    move-wide/from16 v39, v3

    .line 714
    .line 715
    :cond_16
    const/4 v0, 0x0

    .line 716
    :goto_13
    invoke-static {}, Ler4;->a()V

    .line 717
    .line 718
    .line 719
    const/4 v3, 0x0

    .line 720
    invoke-virtual {v11, v3, v14}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 721
    .line 722
    .line 723
    move-result v4

    .line 724
    if-eqz v4, :cond_17

    .line 725
    .line 726
    invoke-static {v13}, Lr45;->j(Lib0;)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v13}, Lac5;->R()J

    .line 730
    .line 731
    .line 732
    move-result-wide v3

    .line 733
    goto :goto_14

    .line 734
    :cond_17
    move-wide/from16 v3, v17

    .line 735
    .line 736
    :goto_14
    iget-object v13, v11, Lds4;->c:Ljava/lang/String;

    .line 737
    .line 738
    const/4 v14, 0x1

    .line 739
    invoke-virtual {v11, v2, v14}, Lds4;->L(Ljava/lang/String;Z)Lu55;

    .line 740
    .line 741
    .line 742
    move-result-object v2

    .line 743
    invoke-static {v2}, Ly55;->h(Lu55;)C

    .line 744
    .line 745
    .line 746
    move-result v2

    .line 747
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    move-wide/from16 v41, v3

    .line 752
    .line 753
    move-object v4, v2

    .line 754
    iget-wide v2, v9, Lr45;->D:J

    .line 755
    .line 756
    iget-object v14, v9, Lr45;->u:Ls75;

    .line 757
    .line 758
    invoke-static {v14}, Lr45;->i(Laz4;)V

    .line 759
    .line 760
    .line 761
    iget-object v14, v9, Lr45;->u:Ls75;

    .line 762
    .line 763
    invoke-virtual {v14}, Ls75;->A()Le55;

    .line 764
    .line 765
    .line 766
    move-result-object v14

    .line 767
    iget v14, v14, Le55;->n:I

    .line 768
    .line 769
    move/from16 v19, v0

    .line 770
    .line 771
    sget-object v0, Le05;->e1:Ld05;

    .line 772
    .line 773
    move-wide/from16 v43, v2

    .line 774
    .line 775
    const/4 v2, 0x0

    .line 776
    invoke-virtual {v11, v2, v0}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 777
    .line 778
    .line 779
    move-result v0

    .line 780
    if-eqz v0, :cond_18

    .line 781
    .line 782
    iget-wide v2, v9, Lr45;->E:J

    .line 783
    .line 784
    move-wide/from16 v17, v2

    .line 785
    .line 786
    :cond_18
    move-object v3, v8

    .line 787
    const-wide/32 v8, 0x274e8

    .line 788
    .line 789
    .line 790
    iget-wide v0, v1, Lg15;->i:J

    .line 791
    .line 792
    move-object/from16 v21, v6

    .line 793
    .line 794
    move-object v2, v15

    .line 795
    move/from16 v20, v33

    .line 796
    .line 797
    move-object v15, v12

    .line 798
    move/from16 v33, v19

    .line 799
    .line 800
    move/from16 v19, v37

    .line 801
    .line 802
    move-object/from16 v12, p1

    .line 803
    .line 804
    move-object/from16 v37, v4

    .line 805
    .line 806
    move-object/from16 v4, v24

    .line 807
    .line 808
    move-object/from16 v24, v10

    .line 809
    .line 810
    move-wide/from16 v10, v27

    .line 811
    .line 812
    move-object/from16 v27, v35

    .line 813
    .line 814
    move/from16 v28, v36

    .line 815
    .line 816
    move-object/from16 v36, v13

    .line 817
    .line 818
    move/from16 v13, v23

    .line 819
    .line 820
    move-wide/from16 v45, v0

    .line 821
    .line 822
    move-object v1, v3

    .line 823
    move-object/from16 v3, v16

    .line 824
    .line 825
    move-object/from16 v47, v32

    .line 826
    .line 827
    move-object/from16 v32, v5

    .line 828
    .line 829
    move-wide/from16 v5, v25

    .line 830
    .line 831
    move-object/from16 v26, v47

    .line 832
    .line 833
    move-object/from16 v25, v22

    .line 834
    .line 835
    move-wide/from16 v22, v45

    .line 836
    .line 837
    move-wide/from16 v45, v39

    .line 838
    .line 839
    move/from16 v40, v14

    .line 840
    .line 841
    move/from16 v14, v34

    .line 842
    .line 843
    move-wide/from16 v34, v41

    .line 844
    .line 845
    move-wide/from16 v41, v17

    .line 846
    .line 847
    move-wide/from16 v16, v29

    .line 848
    .line 849
    move/from16 v18, v31

    .line 850
    .line 851
    move/from16 v31, v38

    .line 852
    .line 853
    move-wide/from16 v29, v45

    .line 854
    .line 855
    move-wide/from16 v38, v43

    .line 856
    .line 857
    invoke-direct/range {v1 .. v42}, Lvc5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JIJ)V

    .line 858
    .line 859
    .line 860
    move-object v3, v1

    .line 861
    return-object v3
.end method

.class public abstract Lon4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:[Ljava/lang/StackTraceElement;

.field public static final b:J = -0x8000000000000000L

.field public static final synthetic c:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/StackTraceElement;

    .line 3
    .line 4
    sput-object v0, Lon4;->a:[Ljava/lang/StackTraceElement;

    .line 5
    .line 6
    return-void
.end method

.method public static final A(Llb;)Landroid/graphics/Paint;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ly33;->a(Ljava/lang/Class;)Li50;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Li50;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "Extracting native reference is only supported from androidx.compose.ui.graphics.AndroidPaint instances but received "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lzq1;->a(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p0, p0, Llb;->o:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Landroid/graphics/Paint;

    .line 35
    .line 36
    return-object p0
.end method

.method public static final B(Lwu4;)J
    .locals 6

    .line 1
    iget-object p0, p0, Lwu4;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/view/DragEvent;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/DragEvent;->getX()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/view/DragEvent;->getY()F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-long v0, v0

    .line 18
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    int-to-long v2, p0

    .line 23
    const/16 p0, 0x20

    .line 24
    .line 25
    shl-long/2addr v0, p0

    .line 26
    const-wide v4, 0xffffffffL

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    and-long/2addr v2, v4

    .line 32
    or-long/2addr v0, v2

    .line 33
    return-wide v0
.end method

.method public static final C(D)J
    .locals 2

    .line 1
    const-wide v0, 0x100000000L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    double-to-float p0, p0

    .line 7
    invoke-static {p0, v0, v1}, Lon4;->F(FJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public static final D(I)J
    .locals 2

    .line 1
    const-wide v0, 0x100000000L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    int-to-float p0, p0

    .line 7
    invoke-static {p0, v0, v1}, Lon4;->F(FJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public static final E(Ljava/lang/String;)Lnd2;
    .locals 1

    .line 1
    new-instance v0, Lky1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lky1;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final F(FJ)J
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    int-to-long v0, p0

    .line 6
    const-wide v2, 0xffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    and-long/2addr v0, v2

    .line 12
    or-long p0, p1, v0

    .line 13
    .line 14
    sget-object p2, Lcy3;->b:[Ldy3;

    .line 15
    .line 16
    return-wide p0
.end method

.method public static G(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Lgb1;
    .locals 26

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x2

    .line 11
    if-eq v2, v4, :cond_0

    .line 12
    .line 13
    if-eq v2, v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-ne v2, v4, :cond_21

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const-string v5, "font-family"

    .line 20
    .line 21
    move-object/from16 v6, p0

    .line 22
    .line 23
    invoke-interface {v6, v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_20

    .line 35
    .line 36
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    sget-object v7, Lf13;->b:[I

    .line 41
    .line 42
    invoke-virtual {v0, v5, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const/4 v7, 0x0

    .line 47
    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    const/4 v8, 0x5

    .line 52
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    const/4 v11, 0x6

    .line 57
    invoke-virtual {v5, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v15

    .line 61
    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v16

    .line 65
    invoke-virtual {v5, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    const/4 v13, 0x3

    .line 70
    invoke-virtual {v5, v13, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 71
    .line 72
    .line 73
    move-result v14

    .line 74
    move-object/from16 v17, v2

    .line 75
    .line 76
    const/16 v2, 0x1f4

    .line 77
    .line 78
    const/4 v8, 0x4

    .line 79
    invoke-virtual {v5, v8, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    const/4 v8, 0x7

    .line 84
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    .line 90
    .line 91
    if-eqz v9, :cond_14

    .line 92
    .line 93
    if-eqz v10, :cond_14

    .line 94
    .line 95
    invoke-static {v0, v12}, Lon4;->I(Landroid/content/res/Resources;I)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v12

    .line 99
    new-instance v5, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    :goto_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    if-eq v8, v13, :cond_10

    .line 109
    .line 110
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    if-eq v8, v4, :cond_1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    const-string v11, "fallback"

    .line 122
    .line 123
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    if-eqz v8, :cond_f

    .line 128
    .line 129
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    sget-object v11, Lf13;->d:[I

    .line 134
    .line 135
    invoke-virtual {v0, v8, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    move/from16 v18, v14

    .line 140
    .line 141
    :try_start_0
    invoke-virtual {v8, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    const/4 v13, 0x1

    .line 146
    invoke-virtual {v8, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v14

    .line 150
    move-object v13, v14

    .line 151
    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v14

    .line 155
    if-eqz v11, :cond_9

    .line 156
    .line 157
    :goto_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 158
    .line 159
    .line 160
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 161
    const/4 v4, 0x3

    .line 162
    if-eq v7, v4, :cond_2

    .line 163
    .line 164
    :try_start_1
    invoke-static {v6}, Lon4;->M(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .line 166
    .line 167
    const/4 v4, 0x2

    .line 168
    goto :goto_2

    .line 169
    :catchall_0
    move-exception v0

    .line 170
    move-object v5, v0

    .line 171
    move-object v4, v8

    .line 172
    const-wide/16 v2, 0x1

    .line 173
    .line 174
    goto/16 :goto_7

    .line 175
    .line 176
    :cond_2
    move-object v7, v8

    .line 177
    :try_start_2
    new-instance v8, Lza1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 178
    .line 179
    move-object/from16 v20, v3

    .line 180
    .line 181
    move-object v4, v7

    .line 182
    move/from16 v7, v18

    .line 183
    .line 184
    move/from16 v18, v2

    .line 185
    .line 186
    const-wide/16 v2, 0x1

    .line 187
    .line 188
    :try_start_3
    invoke-direct/range {v8 .. v14}, Lza1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 189
    .line 190
    .line 191
    instance-of v11, v4, Ljava/lang/AutoCloseable;

    .line 192
    .line 193
    if-eqz v11, :cond_3

    .line 194
    .line 195
    move-object v2, v4

    .line 196
    check-cast v2, Ljava/lang/AutoCloseable;

    .line 197
    .line 198
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_3
    instance-of v11, v4, Ljava/util/concurrent/ExecutorService;

    .line 203
    .line 204
    if-eqz v11, :cond_7

    .line 205
    .line 206
    check-cast v4, Ljava/util/concurrent/ExecutorService;

    .line 207
    .line 208
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    if-ne v4, v11, :cond_4

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_4
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 216
    .line 217
    .line 218
    move-result v11

    .line 219
    if-nez v11, :cond_8

    .line 220
    .line 221
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 222
    .line 223
    .line 224
    const/4 v13, 0x0

    .line 225
    :cond_5
    :goto_3
    if-nez v11, :cond_6

    .line 226
    .line 227
    :try_start_4
    invoke-interface {v4, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 228
    .line 229
    .line 230
    move-result v11
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 231
    goto :goto_3

    .line 232
    :catch_0
    if-nez v13, :cond_5

    .line 233
    .line 234
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 235
    .line 236
    .line 237
    const/4 v13, 0x1

    .line 238
    goto :goto_3

    .line 239
    :cond_6
    if-eqz v13, :cond_8

    .line 240
    .line 241
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 246
    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_7
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 250
    .line 251
    .line 252
    :cond_8
    :goto_4
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    goto/16 :goto_a

    .line 256
    .line 257
    :catchall_1
    move-exception v0

    .line 258
    :goto_5
    move-object v5, v0

    .line 259
    goto :goto_7

    .line 260
    :catchall_2
    move-exception v0

    .line 261
    move-object v4, v7

    .line 262
    :goto_6
    const-wide/16 v2, 0x1

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :catchall_3
    move-exception v0

    .line 266
    move-object v4, v8

    .line 267
    goto :goto_6

    .line 268
    :cond_9
    move-object v4, v8

    .line 269
    const-wide/16 v2, 0x1

    .line 270
    .line 271
    :try_start_5
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 272
    .line 273
    const-string v5, "query attribute must be set in fallback element"

    .line 274
    .line 275
    invoke-direct {v0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 279
    :goto_7
    if-eqz v4, :cond_e

    .line 280
    .line 281
    :try_start_6
    instance-of v0, v4, Ljava/lang/AutoCloseable;

    .line 282
    .line 283
    if-nez v0, :cond_d

    .line 284
    .line 285
    instance-of v0, v4, Ljava/util/concurrent/ExecutorService;

    .line 286
    .line 287
    if-eqz v0, :cond_c

    .line 288
    .line 289
    move-object v8, v4

    .line 290
    check-cast v8, Ljava/util/concurrent/ExecutorService;

    .line 291
    .line 292
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    if-eq v8, v0, :cond_e

    .line 297
    .line 298
    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-nez v0, :cond_e

    .line 303
    .line 304
    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 305
    .line 306
    .line 307
    const/4 v7, 0x0

    .line 308
    :cond_a
    :goto_8
    if-nez v0, :cond_b

    .line 309
    .line 310
    :try_start_7
    invoke-interface {v8, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 311
    .line 312
    .line 313
    move-result v0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 314
    goto :goto_8

    .line 315
    :catch_1
    if-nez v7, :cond_a

    .line 316
    .line 317
    :try_start_8
    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 318
    .line 319
    .line 320
    const/4 v7, 0x1

    .line 321
    goto :goto_8

    .line 322
    :cond_b
    if-eqz v7, :cond_e

    .line 323
    .line 324
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 329
    .line 330
    .line 331
    goto :goto_9

    .line 332
    :cond_c
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 333
    .line 334
    .line 335
    goto :goto_9

    .line 336
    :cond_d
    move-object v8, v4

    .line 337
    check-cast v8, Ljava/lang/AutoCloseable;

    .line 338
    .line 339
    invoke-interface {v8}, Ljava/lang/AutoCloseable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 340
    .line 341
    .line 342
    goto :goto_9

    .line 343
    :catchall_4
    move-exception v0

    .line 344
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 345
    .line 346
    .line 347
    :cond_e
    :goto_9
    throw v5

    .line 348
    :cond_f
    move/from16 v18, v2

    .line 349
    .line 350
    move-object/from16 v20, v3

    .line 351
    .line 352
    move v7, v14

    .line 353
    invoke-static {v6}, Lon4;->M(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 354
    .line 355
    .line 356
    :goto_a
    move v14, v7

    .line 357
    move/from16 v2, v18

    .line 358
    .line 359
    move-object/from16 v3, v20

    .line 360
    .line 361
    const/4 v4, 0x2

    .line 362
    const/4 v7, 0x0

    .line 363
    const/4 v13, 0x3

    .line 364
    goto/16 :goto_1

    .line 365
    .line 366
    :cond_10
    move/from16 v18, v2

    .line 367
    .line 368
    move-object/from16 v20, v3

    .line 369
    .line 370
    move v7, v14

    .line 371
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-nez v0, :cond_11

    .line 376
    .line 377
    new-instance v0, Ljb1;

    .line 378
    .line 379
    move/from16 v1, v18

    .line 380
    .line 381
    move-object/from16 v2, v20

    .line 382
    .line 383
    invoke-direct {v0, v5, v7, v1, v2}, Ljb1;-><init>(Ljava/util/ArrayList;IILjava/lang/String;)V

    .line 384
    .line 385
    .line 386
    goto :goto_b

    .line 387
    :cond_11
    move/from16 v1, v18

    .line 388
    .line 389
    move-object/from16 v2, v20

    .line 390
    .line 391
    if-eqz v15, :cond_13

    .line 392
    .line 393
    new-instance v8, Lza1;

    .line 394
    .line 395
    const/4 v13, 0x0

    .line 396
    const/4 v14, 0x0

    .line 397
    move-object v11, v15

    .line 398
    invoke-direct/range {v8 .. v14}, Lza1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    if-eqz v16, :cond_12

    .line 405
    .line 406
    new-instance v8, Lza1;

    .line 407
    .line 408
    const/4 v13, 0x0

    .line 409
    const/4 v14, 0x0

    .line 410
    move-object/from16 v11, v16

    .line 411
    .line 412
    invoke-direct/range {v8 .. v14}, Lza1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    :cond_12
    new-instance v0, Ljb1;

    .line 419
    .line 420
    invoke-direct {v0, v5, v7, v1, v2}, Ljb1;-><init>(Ljava/util/ArrayList;IILjava/lang/String;)V

    .line 421
    .line 422
    .line 423
    :goto_b
    return-object v0

    .line 424
    :cond_13
    const-string v0, "The provider font XML requires query attribute or fallback children."

    .line 425
    .line 426
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    return-object v17

    .line 430
    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    .line 431
    .line 432
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .line 434
    .line 435
    :goto_c
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 436
    .line 437
    .line 438
    move-result v2

    .line 439
    const/4 v4, 0x3

    .line 440
    if-eq v2, v4, :cond_1e

    .line 441
    .line 442
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 443
    .line 444
    .line 445
    move-result v2

    .line 446
    const/4 v3, 0x2

    .line 447
    if-eq v2, v3, :cond_15

    .line 448
    .line 449
    goto :goto_c

    .line 450
    :cond_15
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    const-string v4, "font"

    .line 455
    .line 456
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v2

    .line 460
    if-eqz v2, :cond_1d

    .line 461
    .line 462
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    sget-object v4, Lf13;->c:[I

    .line 467
    .line 468
    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    const/16 v13, 0x8

    .line 473
    .line 474
    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 475
    .line 476
    .line 477
    move-result v4

    .line 478
    if-eqz v4, :cond_16

    .line 479
    .line 480
    goto :goto_d

    .line 481
    :cond_16
    const/4 v13, 0x1

    .line 482
    :goto_d
    const/16 v4, 0x190

    .line 483
    .line 484
    invoke-virtual {v2, v13, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 485
    .line 486
    .line 487
    move-result v20

    .line 488
    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 489
    .line 490
    .line 491
    move-result v4

    .line 492
    if-eqz v4, :cond_17

    .line 493
    .line 494
    move v4, v11

    .line 495
    :goto_e
    const/4 v5, 0x0

    .line 496
    goto :goto_f

    .line 497
    :cond_17
    move v4, v3

    .line 498
    goto :goto_e

    .line 499
    :goto_f
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 500
    .line 501
    .line 502
    move-result v4

    .line 503
    const/4 v13, 0x1

    .line 504
    if-ne v13, v4, :cond_18

    .line 505
    .line 506
    move/from16 v25, v13

    .line 507
    .line 508
    goto :goto_10

    .line 509
    :cond_18
    const/16 v25, 0x0

    .line 510
    .line 511
    :goto_10
    const/16 v4, 0x9

    .line 512
    .line 513
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 514
    .line 515
    .line 516
    move-result v5

    .line 517
    if-eqz v5, :cond_19

    .line 518
    .line 519
    goto :goto_11

    .line 520
    :cond_19
    const/4 v4, 0x3

    .line 521
    :goto_11
    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 522
    .line 523
    .line 524
    move-result v5

    .line 525
    if-eqz v5, :cond_1a

    .line 526
    .line 527
    move v5, v8

    .line 528
    goto :goto_12

    .line 529
    :cond_1a
    const/4 v5, 0x4

    .line 530
    :goto_12
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v24

    .line 534
    const/4 v5, 0x0

    .line 535
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 536
    .line 537
    .line 538
    move-result v21

    .line 539
    const/4 v4, 0x5

    .line 540
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 541
    .line 542
    .line 543
    move-result v7

    .line 544
    if-eqz v7, :cond_1b

    .line 545
    .line 546
    move v7, v4

    .line 547
    goto :goto_13

    .line 548
    :cond_1b
    move v7, v5

    .line 549
    :goto_13
    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 550
    .line 551
    .line 552
    move-result v22

    .line 553
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v23

    .line 557
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 558
    .line 559
    .line 560
    :goto_14
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 561
    .line 562
    .line 563
    move-result v2

    .line 564
    const/4 v5, 0x3

    .line 565
    if-eq v2, v5, :cond_1c

    .line 566
    .line 567
    invoke-static {v6}, Lon4;->M(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 568
    .line 569
    .line 570
    goto :goto_14

    .line 571
    :cond_1c
    new-instance v19, Lib1;

    .line 572
    .line 573
    invoke-direct/range {v19 .. v25}, Lib1;-><init>(IIILjava/lang/String;Ljava/lang/String;Z)V

    .line 574
    .line 575
    .line 576
    move-object/from16 v2, v19

    .line 577
    .line 578
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    goto/16 :goto_c

    .line 582
    .line 583
    :cond_1d
    const/4 v4, 0x5

    .line 584
    const/4 v5, 0x3

    .line 585
    const/4 v13, 0x1

    .line 586
    invoke-static {v6}, Lon4;->M(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 587
    .line 588
    .line 589
    goto/16 :goto_c

    .line 590
    .line 591
    :cond_1e
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    if-eqz v0, :cond_1f

    .line 596
    .line 597
    return-object v17

    .line 598
    :cond_1f
    new-instance v0, Lhb1;

    .line 599
    .line 600
    const/4 v5, 0x0

    .line 601
    new-array v2, v5, [Lib1;

    .line 602
    .line 603
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    check-cast v1, [Lib1;

    .line 608
    .line 609
    invoke-direct {v0, v1}, Lhb1;-><init>([Lib1;)V

    .line 610
    .line 611
    .line 612
    return-object v0

    .line 613
    :cond_20
    move-object/from16 v17, v2

    .line 614
    .line 615
    invoke-static {v6}, Lon4;->M(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 616
    .line 617
    .line 618
    return-object v17

    .line 619
    :cond_21
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 620
    .line 621
    const-string v1, "No start tag found"

    .line 622
    .line 623
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    throw v0
.end method

.method public static H(Ljava/lang/String;Ldd1;Lpe1;I)Lqx2;
    .locals 1

    .line 1
    and-int/lit8 v0, p3, 0x2

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x4

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    new-instance p2, Lz82;

    .line 11
    .line 12
    const/16 p3, 0x14

    .line 13
    .line 14
    invoke-direct {p2, p3}, Lz82;-><init>(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    sget-object p3, Lzu0;->a:Lzp0;

    .line 18
    .line 19
    sget-object p3, Llp0;->p:Llp0;

    .line 20
    .line 21
    invoke-static {}, Lk30;->f()Lbu3;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {p3, v0}, Lca;->B(Lfi0;Lhi0;)Lhi0;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-static {p3}, Ldm0;->c(Lhi0;)Lbh0;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    new-instance v0, Lqx2;

    .line 37
    .line 38
    invoke-direct {v0, p0, p1, p2, p3}, Lqx2;-><init>(Ljava/lang/String;Ldd1;Lpe1;Lqi0;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public static I(Landroid/content/res/Resources;I)Ljava/util/List;
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_3

    .line 24
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getType(I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x1

    .line 35
    if-ne v3, v4, :cond_4

    .line 36
    .line 37
    move p1, v2

    .line 38
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-ge p1, v3, :cond_6

    .line 43
    .line 44
    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    new-instance v4, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    array-length v5, v3

    .line 60
    move v6, v2

    .line 61
    :goto_1
    if-ge v6, v5, :cond_2

    .line 62
    .line 63
    aget-object v7, v3, v6

    .line 64
    .line 65
    invoke-static {v7, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    add-int/lit8 v6, v6, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    new-instance p1, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    array-length v3, p0

    .line 91
    move v4, v2

    .line 92
    :goto_2
    if-ge v4, v3, :cond_5

    .line 93
    .line 94
    aget-object v5, p0, v4

    .line 95
    .line 96
    invoke-static {v5, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    add-int/lit8 v4, v4, 0x1

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .line 108
    .line 109
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    .line 111
    .line 112
    return-object v1

    .line 113
    :goto_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    .line 115
    .line 116
    throw p0
.end method

.method public static final J(Lpb3;)Ljava/util/List;
    .locals 10

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lqj0;->B(Lpb3;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "seq"

    .line 8
    .line 9
    invoke-static {p0, v1}, Lqj0;->B(Lpb3;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "from"

    .line 14
    .line 15
    invoke-static {p0, v2}, Lqj0;->B(Lpb3;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const-string v3, "to"

    .line 20
    .line 21
    invoke-static {p0, v3}, Lqj0;->B(Lpb3;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {}, Ltv4;->p()La42;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    :goto_0
    invoke-interface {p0}, Lpb3;->c0()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    new-instance v5, Lwb1;

    .line 36
    .line 37
    invoke-interface {p0, v0}, Lpb3;->getLong(I)J

    .line 38
    .line 39
    .line 40
    move-result-wide v6

    .line 41
    long-to-int v6, v6

    .line 42
    invoke-interface {p0, v1}, Lpb3;->getLong(I)J

    .line 43
    .line 44
    .line 45
    move-result-wide v7

    .line 46
    long-to-int v7, v7

    .line 47
    invoke-interface {p0, v2}, Lpb3;->o(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-interface {p0, v3}, Lpb3;->o(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    invoke-direct {v5, v6, v7, v8, v9}, Lwb1;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v5}, La42;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-static {v4}, Ltv4;->l(La42;)La42;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0}, Lo70;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method

.method public static final K(Ljb3;Ljava/lang/String;Z)Lew3;
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PRAGMA index_xinfo(`"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "`)"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p0, v0}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :try_start_0
    const-string v0, "seqno"

    .line 25
    .line 26
    invoke-static {p0, v0}, Lqj0;->B(Lpb3;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string v1, "cid"

    .line 31
    .line 32
    invoke-static {p0, v1}, Lqj0;->B(Lpb3;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const-string v2, "name"

    .line 37
    .line 38
    invoke-static {p0, v2}, Lqj0;->B(Lpb3;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const-string v3, "desc"

    .line 43
    .line 44
    invoke-static {p0, v3}, Lqj0;->B(Lpb3;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/4 v4, -0x1

    .line 49
    const/4 v5, 0x0

    .line 50
    if-eq v0, v4, :cond_6

    .line 51
    .line 52
    if-eq v1, v4, :cond_6

    .line 53
    .line 54
    if-eq v2, v4, :cond_6

    .line 55
    .line 56
    if-ne v3, v4, :cond_0

    .line 57
    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :cond_0
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 61
    .line 62
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 66
    .line 67
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-interface {p0}, Lpb3;->c0()Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_3

    .line 75
    .line 76
    invoke-interface {p0, v1}, Lpb3;->getLong(I)J

    .line 77
    .line 78
    .line 79
    move-result-wide v7

    .line 80
    long-to-int v7, v7

    .line 81
    if-gez v7, :cond_1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-interface {p0, v0}, Lpb3;->getLong(I)J

    .line 85
    .line 86
    .line 87
    move-result-wide v7

    .line 88
    long-to-int v7, v7

    .line 89
    invoke-interface {p0, v2}, Lpb3;->o(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-interface {p0, v3}, Lpb3;->getLong(I)J

    .line 94
    .line 95
    .line 96
    move-result-wide v9

    .line 97
    const-wide/16 v11, 0x0

    .line 98
    .line 99
    cmp-long v9, v9, v11

    .line 100
    .line 101
    if-lez v9, :cond_2

    .line 102
    .line 103
    const-string v9, "DESC"

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catchall_0
    move-exception p1

    .line 107
    goto/16 :goto_5

    .line 108
    .line 109
    :cond_2
    const-string v9, "ASC"

    .line 110
    .line 111
    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-interface {v4, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-interface {v6, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Ljava/lang/Iterable;

    .line 131
    .line 132
    new-instance v1, Llh0;

    .line 133
    .line 134
    const/16 v2, 0xe

    .line 135
    .line 136
    invoke-direct {v1, v2}, Llh0;-><init>(I)V

    .line 137
    .line 138
    .line 139
    invoke-static {v0, v1}, Lo70;->y0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    .line 144
    .line 145
    const/16 v2, 0xa

    .line 146
    .line 147
    invoke-static {v0, v2}, Lp70;->a0(Ljava/lang/Iterable;I)I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    .line 153
    .line 154
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_4

    .line 163
    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    check-cast v3, Ljava/util/Map$Entry;

    .line 169
    .line 170
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    check-cast v3, Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_4
    invoke-static {v1}, Lo70;->C0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    check-cast v1, Ljava/lang/Iterable;

    .line 189
    .line 190
    new-instance v3, Llh0;

    .line 191
    .line 192
    const/16 v4, 0xf

    .line 193
    .line 194
    invoke-direct {v3, v4}, Llh0;-><init>(I)V

    .line 195
    .line 196
    .line 197
    invoke-static {v1, v3}, Lo70;->y0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    new-instance v3, Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-static {v1, v2}, Lp70;->a0(Ljava/lang/Iterable;I)I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    .line 209
    .line 210
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-eqz v2, :cond_5

    .line 219
    .line 220
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    check-cast v2, Ljava/util/Map$Entry;

    .line 225
    .line 226
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    check-cast v2, Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_5
    invoke-static {v3}, Lo70;->C0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    new-instance v2, Lew3;

    .line 241
    .line 242
    invoke-direct {v2, p1, p2, v0, v1}, Lew3;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    .line 244
    .line 245
    invoke-static {p0, v5}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 246
    .line 247
    .line 248
    return-object v2

    .line 249
    :cond_6
    :goto_4
    invoke-static {p0, v5}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 250
    .line 251
    .line 252
    return-object v5

    .line 253
    :goto_5
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    :catchall_1
    move-exception p2

    .line 255
    invoke-static {p0, p1}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 256
    .line 257
    .line 258
    throw p2
.end method

.method public static final L(Ll33;)J
    .locals 6

    .line 1
    iget v0, p0, Ll33;->c:F

    .line 2
    .line 3
    iget v1, p0, Ll33;->a:F

    .line 4
    .line 5
    sub-float/2addr v0, v1

    .line 6
    iget v1, p0, Ll33;->d:F

    .line 7
    .line 8
    iget p0, p0, Ll33;->b:F

    .line 9
    .line 10
    sub-float/2addr v1, p0

    .line 11
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    int-to-long v2, p0

    .line 16
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    int-to-long v0, p0

    .line 21
    const/16 p0, 0x20

    .line 22
    .line 23
    shl-long/2addr v2, p0

    .line 24
    const-wide v4, 0xffffffffL

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    and-long/2addr v0, v4

    .line 30
    or-long/2addr v0, v2

    .line 31
    return-wide v0
.end method

.method public static M(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    if-lez v0, :cond_2

    .line 3
    .line 4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    return-void
.end method

.method public static N(ILbi0;)Lpa3;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    mul-int/lit8 v0, p0, 0x4

    .line 5
    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    const/4 v3, 0x0

    .line 11
    if-ge v1, p0, :cond_0

    .line 12
    .line 13
    sget v4, Lk94;->b:F

    .line 14
    .line 15
    int-to-float v5, p0

    .line 16
    div-float/2addr v4, v5

    .line 17
    const/high16 v5, 0x40000000    # 2.0f

    .line 18
    .line 19
    mul-float/2addr v5, v4

    .line 20
    int-to-float v6, v1

    .line 21
    mul-float/2addr v5, v6

    .line 22
    const/high16 v6, 0x3f800000    # 1.0f

    .line 23
    .line 24
    invoke-static {v6, v5}, Lk94;->e(FF)J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    add-int/lit8 v7, v2, 0x1

    .line 29
    .line 30
    invoke-static {v5, v6}, Lix;->x(J)F

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    add-float/2addr v8, v3

    .line 35
    aput v8, v0, v2

    .line 36
    .line 37
    add-int/lit8 v8, v2, 0x2

    .line 38
    .line 39
    invoke-static {v5, v6}, Lix;->y(J)F

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    add-float/2addr v5, v3

    .line 44
    aput v5, v0, v7

    .line 45
    .line 46
    mul-int/lit8 v5, v1, 0x2

    .line 47
    .line 48
    add-int/lit8 v5, v5, 0x1

    .line 49
    .line 50
    int-to-float v5, v5

    .line 51
    mul-float/2addr v4, v5

    .line 52
    const v5, 0x3f4ccccd    # 0.8f

    .line 53
    .line 54
    .line 55
    invoke-static {v5, v4}, Lk94;->e(FF)J

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    add-int/lit8 v6, v2, 0x3

    .line 60
    .line 61
    invoke-static {v4, v5}, Lix;->x(J)F

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    add-float/2addr v7, v3

    .line 66
    aput v7, v0, v8

    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x4

    .line 69
    .line 70
    invoke-static {v4, v5}, Lix;->y(J)F

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    add-float/2addr v4, v3

    .line 75
    aput v4, v0, v6

    .line 76
    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const/4 p0, 0x0

    .line 81
    invoke-static {v0, p1, p0, v3, v3}, Lc75;->f([FLbi0;Ljava/util/AbstractList;FF)Lpa3;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method public static final O(ILag1;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lea;->c:Llc0;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/content/res/Resources;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static final P(I[Ljava/lang/Object;Lag1;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lea;->c:Llc0;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Landroid/content/res/Resources;

    .line 8
    .line 9
    array-length v0, p1

    .line 10
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p2, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final Q(J)D
    .locals 4

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    ushr-long v0, p0, v0

    .line 4
    .line 5
    long-to-double v0, v0

    .line 6
    const-wide/high16 v2, 0x40a0000000000000L    # 2048.0

    .line 7
    .line 8
    mul-double/2addr v0, v2

    .line 9
    const-wide/16 v2, 0x7ff

    .line 10
    .line 11
    and-long/2addr p0, v2

    .line 12
    long-to-double p0, p0

    .line 13
    add-double/2addr v0, p0

    .line 14
    return-wide v0
.end method

.method public static final R(IJ)Ljava/lang/String;
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lqj0;->z(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2, p0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    ushr-long v1, p1, v0

    .line 20
    .line 21
    int-to-long v3, p0

    .line 22
    div-long/2addr v1, v3

    .line 23
    shl-long v0, v1, v0

    .line 24
    .line 25
    mul-long v5, v0, v3

    .line 26
    .line 27
    sub-long/2addr p1, v5

    .line 28
    cmp-long v2, p1, v3

    .line 29
    .line 30
    if-ltz v2, :cond_1

    .line 31
    .line 32
    sub-long/2addr p1, v3

    .line 33
    const-wide/16 v2, 0x1

    .line 34
    .line 35
    add-long/2addr v0, v2

    .line 36
    :cond_1
    invoke-static {p0}, Lqj0;->z(I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1, p0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Lqj0;->z(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p2, p0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public static S()Lkn4;
    .locals 13

    .line 1
    const-string v0, "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader"

    .line 2
    .line 3
    const-class v1, Lon4;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-class v2, Lkn4;

    .line 10
    .line 11
    invoke-virtual {v2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :try_start_0
    invoke-static {v0, v4, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    :try_start_1
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    throw v5

    .line 35
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/ClassCastException;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 38
    .line 39
    .line 40
    throw v0
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw v1
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 48
    :catch_1
    :goto_0
    const/4 v1, 0x0

    .line 49
    :try_start_4
    new-array v0, v1, [Lon4;

    .line 50
    .line 51
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 59
    new-instance v6, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-ne v0, v4, :cond_2

    .line 75
    .line 76
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lkn4;

    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_3

    .line 88
    .line 89
    return-object v5

    .line 90
    :cond_3
    :try_start_5
    const-string v0, "combine"

    .line 91
    .line 92
    const-class v1, Ljava/util/Collection;

    .line 93
    .line 94
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lkn4;
    :try_end_5
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_5 .. :try_end_5} :catch_2

    .line 111
    .line 112
    return-object v0

    .line 113
    :catch_2
    move-exception v0

    .line 114
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 115
    .line 116
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    throw v1

    .line 120
    :cond_4
    :try_start_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0
    :try_end_6
    .catch Ljava/util/ServiceConfigurationError; {:try_start_6 .. :try_end_6} :catch_3

    .line 124
    if-nez v0, :cond_5

    .line 125
    .line 126
    throw v5

    .line 127
    :cond_5
    :try_start_7
    new-instance v0, Ljava/lang/ClassCastException;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 130
    .line 131
    .line 132
    throw v0
    :try_end_7
    .catch Ljava/util/ServiceConfigurationError; {:try_start_7 .. :try_end_7} :catch_3

    .line 133
    :goto_2
    move-object v12, v0

    .line 134
    goto :goto_3

    .line 135
    :catch_3
    move-exception v0

    .line 136
    goto :goto_2

    .line 137
    :goto_3
    const-class v0, Ljn4;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const-string v10, "load"

    .line 154
    .line 155
    const-string v9, "Unable to load "

    .line 156
    .line 157
    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v11

    .line 161
    const-string v9, "com.google.protobuf.GeneratedExtensionRegistryLoader"

    .line 162
    .line 163
    invoke-virtual/range {v7 .. v12}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :catchall_0
    move-exception v0

    .line 168
    new-instance v1, Ljava/util/ServiceConfigurationError;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-direct {v1, v2, v0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    .line 176
    .line 177
    throw v1
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Lso1;Lne1;Lag1;I)V
    .locals 32

    .line 1
    move-object/from16 v4, p3

    .line 2
    .line 3
    move-object/from16 v10, p4

    .line 4
    .line 5
    const v0, 0x6ff494d8

    .line 6
    .line 7
    .line 8
    invoke-virtual {v10, v0}, Lag1;->X(I)Lag1;

    .line 9
    .line 10
    .line 11
    move-object/from16 v3, p2

    .line 12
    .line 13
    invoke-virtual {v10, v3}, Lag1;->f(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/16 v0, 0x100

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 v0, 0x80

    .line 23
    .line 24
    :goto_0
    or-int v0, p5, v0

    .line 25
    .line 26
    invoke-virtual {v10, v4}, Lag1;->h(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/16 v1, 0x800

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/16 v1, 0x400

    .line 36
    .line 37
    :goto_1
    or-int/2addr v0, v1

    .line 38
    and-int/lit16 v1, v0, 0x493

    .line 39
    .line 40
    const/16 v2, 0x492

    .line 41
    .line 42
    const/4 v13, 0x1

    .line 43
    const/4 v14, 0x0

    .line 44
    if-eq v1, v2, :cond_2

    .line 45
    .line 46
    move v1, v13

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move v1, v14

    .line 49
    :goto_2
    and-int/lit8 v2, v0, 0x1

    .line 50
    .line 51
    invoke-virtual {v10, v2, v1}, Lag1;->N(IZ)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_6

    .line 56
    .line 57
    sget-object v1, Lon3;->a:Lu51;

    .line 58
    .line 59
    invoke-static {v1, v4}, Ltv4;->n(Lnd2;Lne1;)Lnd2;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const/high16 v2, 0x41800000    # 16.0f

    .line 64
    .line 65
    const/high16 v15, 0x41400000    # 12.0f

    .line 66
    .line 67
    invoke-static {v1, v2, v15}, Lis0;->L(Lnd2;FF)Lnd2;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    sget-object v5, Lmj1;->y:Lbw;

    .line 72
    .line 73
    sget-object v6, Lth;->a:Lph;

    .line 74
    .line 75
    const/16 v7, 0x30

    .line 76
    .line 77
    invoke-static {v6, v5, v10, v7}, Lbb3;->a(Lqh;Lbw;Lag1;I)Lcb3;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    iget-wide v6, v10, Lag1;->T:J

    .line 82
    .line 83
    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    invoke-virtual {v10}, Lag1;->l()Lhu2;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-static {v10, v1}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    sget-object v8, Llb0;->c:Lkb0;

    .line 96
    .line 97
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    sget-object v8, Lkb0;->b:Lic0;

    .line 101
    .line 102
    invoke-virtual {v10}, Lag1;->Z()V

    .line 103
    .line 104
    .line 105
    iget-boolean v9, v10, Lag1;->S:Z

    .line 106
    .line 107
    if-eqz v9, :cond_3

    .line 108
    .line 109
    invoke-virtual {v10, v8}, Lag1;->k(Lne1;)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_3
    invoke-virtual {v10}, Lag1;->j0()V

    .line 114
    .line 115
    .line 116
    :goto_3
    sget-object v9, Lkb0;->f:Lfd;

    .line 117
    .line 118
    invoke-static {v9, v10, v5}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    sget-object v5, Lkb0;->e:Lfd;

    .line 122
    .line 123
    invoke-static {v5, v10, v7}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    sget-object v7, Lkb0;->g:Lfd;

    .line 131
    .line 132
    invoke-static {v7, v10, v6}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    sget-object v6, Lkb0;->h:Ll9;

    .line 136
    .line 137
    invoke-static {v10, v6}, Lht4;->y(Lag1;Lpe1;)V

    .line 138
    .line 139
    .line 140
    sget-object v11, Lkb0;->d:Lfd;

    .line 141
    .line 142
    invoke-static {v11, v10, v1}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v10}, Lis0;->y(Lag1;)Ly70;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    move/from16 v27, v2

    .line 150
    .line 151
    iget-wide v2, v1, Ly70;->s:J

    .line 152
    .line 153
    const/high16 v1, 0x41c00000    # 24.0f

    .line 154
    .line 155
    sget-object v12, Lkd2;->b:Lkd2;

    .line 156
    .line 157
    invoke-static {v12, v1}, Lon3;->c(Lnd2;F)Lnd2;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    shr-int/lit8 v0, v0, 0x6

    .line 162
    .line 163
    and-int/lit8 v0, v0, 0xe

    .line 164
    .line 165
    or-int/lit16 v0, v0, 0x1b0

    .line 166
    .line 167
    move-object/from16 v16, v12

    .line 168
    .line 169
    const/4 v12, 0x0

    .line 170
    move-object/from16 v17, v6

    .line 171
    .line 172
    const/4 v6, 0x0

    .line 173
    move-object/from16 v28, v11

    .line 174
    .line 175
    move-object/from16 v29, v16

    .line 176
    .line 177
    move-object/from16 v15, v17

    .line 178
    .line 179
    move v11, v0

    .line 180
    move-object v0, v8

    .line 181
    move-object/from16 v30, v5

    .line 182
    .line 183
    move-object/from16 v5, p2

    .line 184
    .line 185
    move-object/from16 v31, v7

    .line 186
    .line 187
    move-object v7, v1

    .line 188
    move-object v1, v9

    .line 189
    move-wide v8, v2

    .line 190
    move-object/from16 v2, v30

    .line 191
    .line 192
    move-object/from16 v3, v31

    .line 193
    .line 194
    invoke-static/range {v5 .. v12}, Lqn1;->a(Lso1;Ljava/lang/String;Lnd2;JLag1;II)V

    .line 195
    .line 196
    .line 197
    invoke-static/range {v27 .. v27}, Lon3;->f(F)Lnd2;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-static {v10, v5}, Lmt1;->f(Lag1;Lnd2;)V

    .line 202
    .line 203
    .line 204
    new-instance v5, Lnz1;

    .line 205
    .line 206
    const/high16 v6, 0x3f800000    # 1.0f

    .line 207
    .line 208
    invoke-direct {v5, v6, v13}, Lnz1;-><init>(FZ)V

    .line 209
    .line 210
    .line 211
    sget-object v6, Lth;->c:Loh;

    .line 212
    .line 213
    sget-object v7, Lmj1;->z:Law;

    .line 214
    .line 215
    invoke-static {v6, v7, v10, v14}, Li80;->a(Lsh;Law;Lag1;I)Lk80;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    iget-wide v7, v10, Lag1;->T:J

    .line 220
    .line 221
    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    invoke-virtual {v10}, Lag1;->l()Lhu2;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    invoke-static {v10, v5}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    invoke-virtual {v10}, Lag1;->Z()V

    .line 234
    .line 235
    .line 236
    iget-boolean v9, v10, Lag1;->S:Z

    .line 237
    .line 238
    if-eqz v9, :cond_4

    .line 239
    .line 240
    invoke-virtual {v10, v0}, Lag1;->k(Lne1;)V

    .line 241
    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_4
    invoke-virtual {v10}, Lag1;->j0()V

    .line 245
    .line 246
    .line 247
    :goto_4
    invoke-static {v1, v10, v6}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    invoke-static {v2, v10, v8}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    invoke-static {v7, v10, v3, v10, v15}, Ldi0;->C(ILag1;Lfd;Lag1;Ll9;)V

    .line 254
    .line 255
    .line 256
    move-object/from16 v0, v28

    .line 257
    .line 258
    invoke-static {v0, v10, v5}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    invoke-static {v10}, Lis0;->C(Lag1;)Le54;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    iget-object v0, v0, Le54;->j:Lay3;

    .line 266
    .line 267
    invoke-static {v10}, Lis0;->y(Lag1;)Ly70;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    iget-wide v7, v1, Ly70;->q:J

    .line 272
    .line 273
    const/16 v25, 0x0

    .line 274
    .line 275
    const v26, 0x1fffa

    .line 276
    .line 277
    .line 278
    const/4 v6, 0x0

    .line 279
    const-wide/16 v9, 0x0

    .line 280
    .line 281
    const/4 v11, 0x0

    .line 282
    const/4 v12, 0x0

    .line 283
    move v1, v13

    .line 284
    const-wide/16 v13, 0x0

    .line 285
    .line 286
    const/4 v15, 0x0

    .line 287
    const/high16 v2, 0x41400000    # 12.0f

    .line 288
    .line 289
    const-wide/16 v16, 0x0

    .line 290
    .line 291
    const/16 v18, 0x0

    .line 292
    .line 293
    const/16 v19, 0x0

    .line 294
    .line 295
    const/16 v20, 0x0

    .line 296
    .line 297
    const/16 v21, 0x0

    .line 298
    .line 299
    const/16 v24, 0x6

    .line 300
    .line 301
    move-object/from16 v5, p0

    .line 302
    .line 303
    move-object/from16 v23, p4

    .line 304
    .line 305
    move-object/from16 v22, v0

    .line 306
    .line 307
    invoke-static/range {v5 .. v26}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 308
    .line 309
    .line 310
    invoke-static/range {p4 .. p4}, Lis0;->C(Lag1;)Le54;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    iget-object v0, v0, Le54;->k:Lay3;

    .line 315
    .line 316
    invoke-static/range {p4 .. p4}, Lis0;->y(Lag1;)Ly70;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    iget-wide v7, v3, Ly70;->s:J

    .line 321
    .line 322
    move-object/from16 v5, p1

    .line 323
    .line 324
    move-object/from16 v22, v0

    .line 325
    .line 326
    invoke-static/range {v5 .. v26}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 327
    .line 328
    .line 329
    move-object/from16 v10, v23

    .line 330
    .line 331
    invoke-virtual {v10, v1}, Lag1;->p(Z)V

    .line 332
    .line 333
    .line 334
    invoke-static/range {v27 .. v27}, Lon3;->f(F)Lnd2;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-static {v10, v0}, Lmt1;->f(Lag1;Lnd2;)V

    .line 339
    .line 340
    .line 341
    sget-object v0, Ldm0;->O:Lso1;

    .line 342
    .line 343
    const/high16 v3, 0x41a00000    # 20.0f

    .line 344
    .line 345
    if-eqz v0, :cond_5

    .line 346
    .line 347
    :goto_5
    move-object v5, v0

    .line 348
    goto :goto_6

    .line 349
    :cond_5
    new-instance v11, Lro1;

    .line 350
    .line 351
    const/16 v19, 0x0

    .line 352
    .line 353
    const/16 v21, 0x60

    .line 354
    .line 355
    const-string v12, "AutoMirrored.Filled.ArrowForward"

    .line 356
    .line 357
    const/high16 v13, 0x41c00000    # 24.0f

    .line 358
    .line 359
    const/high16 v14, 0x41c00000    # 24.0f

    .line 360
    .line 361
    const/high16 v15, 0x41c00000    # 24.0f

    .line 362
    .line 363
    const/high16 v16, 0x41c00000    # 24.0f

    .line 364
    .line 365
    const-wide/16 v17, 0x0

    .line 366
    .line 367
    const/16 v20, 0x1

    .line 368
    .line 369
    invoke-direct/range {v11 .. v21}, Lro1;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 370
    .line 371
    .line 372
    sget v0, Lea4;->a:I

    .line 373
    .line 374
    new-instance v0, Lsp3;

    .line 375
    .line 376
    sget-wide v5, Lt70;->b:J

    .line 377
    .line 378
    invoke-direct {v0, v5, v6}, Lsp3;-><init>(J)V

    .line 379
    .line 380
    .line 381
    new-instance v5, Lct2;

    .line 382
    .line 383
    invoke-direct {v5}, Lct2;-><init>()V

    .line 384
    .line 385
    .line 386
    const/high16 v6, 0x40800000    # 4.0f

    .line 387
    .line 388
    invoke-virtual {v5, v2, v6}, Lct2;->h(FF)V

    .line 389
    .line 390
    .line 391
    const v7, -0x404b851f    # -1.41f

    .line 392
    .line 393
    .line 394
    const v8, 0x3fb47ae1    # 1.41f

    .line 395
    .line 396
    .line 397
    invoke-virtual {v5, v7, v8}, Lct2;->g(FF)V

    .line 398
    .line 399
    .line 400
    const v7, 0x41815c29    # 16.17f

    .line 401
    .line 402
    .line 403
    const/high16 v8, 0x41300000    # 11.0f

    .line 404
    .line 405
    invoke-virtual {v5, v7, v8}, Lct2;->f(FF)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v5, v6}, Lct2;->d(F)V

    .line 409
    .line 410
    .line 411
    const/high16 v6, 0x40000000    # 2.0f

    .line 412
    .line 413
    invoke-virtual {v5, v6}, Lct2;->m(F)V

    .line 414
    .line 415
    .line 416
    const v6, 0x4142b852    # 12.17f

    .line 417
    .line 418
    .line 419
    invoke-virtual {v5, v6}, Lct2;->e(F)V

    .line 420
    .line 421
    .line 422
    const v6, -0x3f4d70a4    # -5.58f

    .line 423
    .line 424
    .line 425
    const v7, 0x40b2e148    # 5.59f

    .line 426
    .line 427
    .line 428
    invoke-virtual {v5, v6, v7}, Lct2;->g(FF)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v5, v2, v3}, Lct2;->f(FF)V

    .line 432
    .line 433
    .line 434
    const/high16 v2, 0x41000000    # 8.0f

    .line 435
    .line 436
    const/high16 v6, -0x3f000000    # -8.0f

    .line 437
    .line 438
    invoke-virtual {v5, v2, v6}, Lct2;->g(FF)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v5}, Lct2;->a()V

    .line 442
    .line 443
    .line 444
    iget-object v2, v5, Lct2;->n:Ljava/util/ArrayList;

    .line 445
    .line 446
    invoke-static {v11, v2, v0}, Lro1;->a(Lro1;Ljava/util/ArrayList;Lsp3;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v11}, Lro1;->b()Lso1;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    sput-object v0, Ldm0;->O:Lso1;

    .line 454
    .line 455
    goto :goto_5

    .line 456
    :goto_6
    invoke-static {v10}, Lis0;->y(Lag1;)Ly70;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    iget-wide v8, v0, Ly70;->s:J

    .line 461
    .line 462
    move-object/from16 v0, v29

    .line 463
    .line 464
    invoke-static {v0, v3}, Lon3;->c(Lnd2;F)Lnd2;

    .line 465
    .line 466
    .line 467
    move-result-object v7

    .line 468
    const/16 v11, 0x1b0

    .line 469
    .line 470
    const/4 v12, 0x0

    .line 471
    const/4 v6, 0x0

    .line 472
    invoke-static/range {v5 .. v12}, Lqn1;->a(Lso1;Ljava/lang/String;Lnd2;JLag1;II)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v10, v1}, Lag1;->p(Z)V

    .line 476
    .line 477
    .line 478
    goto :goto_7

    .line 479
    :cond_6
    invoke-virtual {v10}, Lag1;->Q()V

    .line 480
    .line 481
    .line 482
    :goto_7
    invoke-virtual {v10}, Lag1;->r()Lc33;

    .line 483
    .line 484
    .line 485
    move-result-object v7

    .line 486
    if-eqz v7, :cond_7

    .line 487
    .line 488
    new-instance v0, Lg4;

    .line 489
    .line 490
    const/4 v6, 0x2

    .line 491
    move-object/from16 v1, p0

    .line 492
    .line 493
    move-object/from16 v2, p1

    .line 494
    .line 495
    move-object/from16 v3, p2

    .line 496
    .line 497
    move/from16 v5, p5

    .line 498
    .line 499
    invoke-direct/range {v0 .. v6}, Lg4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lef1;II)V

    .line 500
    .line 501
    .line 502
    iput-object v0, v7, Lc33;->d:Ldf1;

    .line 503
    .line 504
    :cond_7
    return-void
.end method

.method public static final b(Lne1;Lne1;Lne1;Lag1;I)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v5, p3

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const v0, 0x51d66346

    .line 9
    .line 10
    .line 11
    invoke-virtual {v5, v0}, Lag1;->X(I)Lag1;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v5, v1}, Lag1;->h(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v8, 0x2

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v8

    .line 24
    :goto_0
    or-int v0, p4, v0

    .line 25
    .line 26
    move-object/from16 v14, p1

    .line 27
    .line 28
    invoke-virtual {v5, v14}, Lag1;->h(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    const/16 v2, 0x20

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v2, 0x10

    .line 38
    .line 39
    :goto_1
    or-int/2addr v0, v2

    .line 40
    move-object/from16 v15, p2

    .line 41
    .line 42
    invoke-virtual {v5, v15}, Lag1;->h(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    const/16 v2, 0x100

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v2, 0x80

    .line 52
    .line 53
    :goto_2
    or-int/2addr v0, v2

    .line 54
    and-int/lit16 v2, v0, 0x93

    .line 55
    .line 56
    const/16 v3, 0x92

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    if-eq v2, v3, :cond_3

    .line 60
    .line 61
    move v2, v4

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    const/4 v2, 0x0

    .line 64
    :goto_3
    and-int/2addr v0, v4

    .line 65
    invoke-virtual {v5, v0, v2}, Lag1;->N(IZ)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    invoke-static {v5}, Lw80;->O(Lag1;)Llf3;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    sget-object v0, Lea;->b:Lis3;

    .line 76
    .line 77
    invoke-virtual {v5, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    move-object v13, v0

    .line 82
    check-cast v13, Landroid/content/Context;

    .line 83
    .line 84
    invoke-virtual {v5}, Lag1;->K()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    sget-object v2, Lrb0;->a:Lbx3;

    .line 89
    .line 90
    if-ne v0, v2, :cond_4

    .line 91
    .line 92
    new-instance v0, Lus0;

    .line 93
    .line 94
    invoke-direct {v0, v13}, Lus0;-><init>(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v0}, Lag1;->g0(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    move-object v12, v0

    .line 101
    check-cast v12, Lus0;

    .line 102
    .line 103
    invoke-virtual {v5}, Lag1;->K()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-ne v0, v2, :cond_5

    .line 108
    .line 109
    invoke-static {v5}, Lzf5;->x(Lag1;)Lqi0;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v5, v0}, Lag1;->g0(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_5
    move-object v11, v0

    .line 117
    check-cast v11, Lqi0;

    .line 118
    .line 119
    iget-object v2, v12, Lus0;->b:Lb23;

    .line 120
    .line 121
    sget-object v0, Lus0;->e:Lrx2;

    .line 122
    .line 123
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 124
    .line 125
    const/16 v6, 0x30

    .line 126
    .line 127
    const/4 v7, 0x2

    .line 128
    const/4 v4, 0x0

    .line 129
    invoke-static/range {v2 .. v7}, Lca;->g(La81;Ljava/lang/Object;Lhi0;Lag1;II)Lpg2;

    .line 130
    .line 131
    .line 132
    move-result-object v16

    .line 133
    move-object v0, v3

    .line 134
    iget-object v2, v12, Lus0;->c:Lb23;

    .line 135
    .line 136
    sget-boolean v3, Lus0;->g:Z

    .line 137
    .line 138
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    move-object/from16 v5, p3

    .line 143
    .line 144
    invoke-static/range {v2 .. v7}, Lca;->g(La81;Ljava/lang/Object;Lhi0;Lag1;II)Lpg2;

    .line 145
    .line 146
    .line 147
    move-result-object v18

    .line 148
    iget-object v2, v12, Lus0;->d:Lb23;

    .line 149
    .line 150
    move-object v3, v0

    .line 151
    invoke-static/range {v2 .. v7}, Lca;->g(La81;Ljava/lang/Object;Lhi0;Lag1;II)Lpg2;

    .line 152
    .line 153
    .line 154
    move-result-object v17

    .line 155
    new-instance v0, Lo4;

    .line 156
    .line 157
    invoke-direct {v0, v8, v1}, Lo4;-><init>(ILne1;)V

    .line 158
    .line 159
    .line 160
    const v2, 0x6e57190a

    .line 161
    .line 162
    .line 163
    invoke-static {v2, v0, v5}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    new-instance v9, Lat0;

    .line 168
    .line 169
    invoke-direct/range {v9 .. v18}, Lat0;-><init>(Llf3;Lqi0;Lus0;Landroid/content/Context;Lne1;Lne1;Lpg2;Lpg2;Lpg2;)V

    .line 170
    .line 171
    .line 172
    const v0, 0x39112e95

    .line 173
    .line 174
    .line 175
    invoke-static {v0, v9, v5}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 176
    .line 177
    .line 178
    move-result-object v13

    .line 179
    const v15, 0x30000030

    .line 180
    .line 181
    .line 182
    const/16 v16, 0x1fd

    .line 183
    .line 184
    const/4 v2, 0x0

    .line 185
    const/4 v5, 0x0

    .line 186
    const/4 v6, 0x0

    .line 187
    const/4 v7, 0x0

    .line 188
    const-wide/16 v8, 0x0

    .line 189
    .line 190
    const-wide/16 v10, 0x0

    .line 191
    .line 192
    const/4 v12, 0x0

    .line 193
    move-object/from16 v14, p3

    .line 194
    .line 195
    invoke-static/range {v2 .. v16}, Ln44;->H(Lnd2;Ldf1;Ldf1;Ldf1;Ldf1;IJJLhd4;Lka0;Lag1;II)V

    .line 196
    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lag1;->Q()V

    .line 200
    .line 201
    .line 202
    :goto_4
    invoke-virtual/range {p3 .. p3}, Lag1;->r()Lc33;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    if-eqz v6, :cond_7

    .line 207
    .line 208
    new-instance v0, Lbt0;

    .line 209
    .line 210
    const/4 v5, 0x0

    .line 211
    move-object/from16 v2, p1

    .line 212
    .line 213
    move-object/from16 v3, p2

    .line 214
    .line 215
    move/from16 v4, p4

    .line 216
    .line 217
    invoke-direct/range {v0 .. v5}, Lbt0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 218
    .line 219
    .line 220
    iput-object v0, v6, Lc33;->d:Ldf1;

    .line 221
    .line 222
    :cond_7
    return-void
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;Lso1;ZLpe1;Lag1;I)V
    .locals 29

    .line 1
    move/from16 v0, p3

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v5, p5

    .line 6
    .line 7
    const v2, -0x368cfbbe

    .line 8
    .line 9
    .line 10
    invoke-virtual {v5, v2}, Lag1;->X(I)Lag1;

    .line 11
    .line 12
    .line 13
    move-object/from16 v2, p2

    .line 14
    .line 15
    invoke-virtual {v5, v2}, Lag1;->f(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    const/16 v3, 0x100

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v3, 0x80

    .line 25
    .line 26
    :goto_0
    or-int v3, p6, v3

    .line 27
    .line 28
    invoke-virtual {v5, v0}, Lag1;->g(Z)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/16 v6, 0x800

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    move v4, v6

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/16 v4, 0x400

    .line 39
    .line 40
    :goto_1
    or-int/2addr v3, v4

    .line 41
    invoke-virtual {v5, v1}, Lag1;->h(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    const/16 v7, 0x4000

    .line 46
    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    move v4, v7

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v4, 0x2000

    .line 52
    .line 53
    :goto_2
    or-int v10, v3, v4

    .line 54
    .line 55
    and-int/lit16 v3, v10, 0x2493

    .line 56
    .line 57
    const/16 v4, 0x2492

    .line 58
    .line 59
    const/4 v12, 0x0

    .line 60
    if-eq v3, v4, :cond_3

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    move v3, v12

    .line 65
    :goto_3
    and-int/lit8 v4, v10, 0x1

    .line 66
    .line 67
    invoke-virtual {v5, v4, v3}, Lag1;->N(IZ)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_a

    .line 72
    .line 73
    sget-object v3, Lon3;->a:Lu51;

    .line 74
    .line 75
    const v4, 0xe000

    .line 76
    .line 77
    .line 78
    and-int/2addr v4, v10

    .line 79
    if-ne v4, v7, :cond_4

    .line 80
    .line 81
    const/4 v4, 0x1

    .line 82
    goto :goto_4

    .line 83
    :cond_4
    move v4, v12

    .line 84
    :goto_4
    and-int/lit16 v7, v10, 0x1c00

    .line 85
    .line 86
    if-ne v7, v6, :cond_5

    .line 87
    .line 88
    const/4 v6, 0x1

    .line 89
    goto :goto_5

    .line 90
    :cond_5
    move v6, v12

    .line 91
    :goto_5
    or-int/2addr v4, v6

    .line 92
    invoke-virtual {v5}, Lag1;->K()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    if-nez v4, :cond_6

    .line 97
    .line 98
    sget-object v4, Lrb0;->a:Lbx3;

    .line 99
    .line 100
    if-ne v6, v4, :cond_7

    .line 101
    .line 102
    :cond_6
    new-instance v6, Lys0;

    .line 103
    .line 104
    invoke-direct {v6, v1, v0, v12}, Lys0;-><init>(Lpe1;ZI)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v6}, Lag1;->g0(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :cond_7
    check-cast v6, Lne1;

    .line 111
    .line 112
    invoke-static {v3, v6}, Ltv4;->n(Lnd2;Lne1;)Lnd2;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const/high16 v4, 0x41400000    # 12.0f

    .line 117
    .line 118
    const/high16 v13, 0x41800000    # 16.0f

    .line 119
    .line 120
    invoke-static {v3, v13, v4}, Lis0;->L(Lnd2;FF)Lnd2;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    sget-object v4, Lmj1;->y:Lbw;

    .line 125
    .line 126
    sget-object v6, Lth;->a:Lph;

    .line 127
    .line 128
    const/16 v7, 0x30

    .line 129
    .line 130
    invoke-static {v6, v4, v5, v7}, Lbb3;->a(Lqh;Lbw;Lag1;I)Lcb3;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    iget-wide v6, v5, Lag1;->T:J

    .line 135
    .line 136
    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    invoke-virtual {v5}, Lag1;->l()Lhu2;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    invoke-static {v5, v3}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    sget-object v8, Llb0;->c:Lkb0;

    .line 149
    .line 150
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    sget-object v14, Lkb0;->b:Lic0;

    .line 154
    .line 155
    invoke-virtual {v5}, Lag1;->Z()V

    .line 156
    .line 157
    .line 158
    iget-boolean v8, v5, Lag1;->S:Z

    .line 159
    .line 160
    if-eqz v8, :cond_8

    .line 161
    .line 162
    invoke-virtual {v5, v14}, Lag1;->k(Lne1;)V

    .line 163
    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_8
    invoke-virtual {v5}, Lag1;->j0()V

    .line 167
    .line 168
    .line 169
    :goto_6
    sget-object v15, Lkb0;->f:Lfd;

    .line 170
    .line 171
    invoke-static {v15, v5, v4}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    sget-object v4, Lkb0;->e:Lfd;

    .line 175
    .line 176
    invoke-static {v4, v5, v7}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    sget-object v7, Lkb0;->g:Lfd;

    .line 184
    .line 185
    invoke-static {v7, v5, v6}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    sget-object v6, Lkb0;->h:Ll9;

    .line 189
    .line 190
    invoke-static {v5, v6}, Lht4;->y(Lag1;Lpe1;)V

    .line 191
    .line 192
    .line 193
    sget-object v8, Lkb0;->d:Lfd;

    .line 194
    .line 195
    invoke-static {v8, v5, v3}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    const v3, 0x51393f3a

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5, v3}, Lag1;->W(I)V

    .line 202
    .line 203
    .line 204
    sget-object v3, Lwa2;->a:Lis3;

    .line 205
    .line 206
    invoke-virtual {v5, v3}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    check-cast v9, Lua2;

    .line 211
    .line 212
    iget-object v9, v9, Lua2;->a:Ly70;

    .line 213
    .line 214
    move/from16 v16, v13

    .line 215
    .line 216
    move-object/from16 v17, v14

    .line 217
    .line 218
    iget-wide v13, v9, Ly70;->s:J

    .line 219
    .line 220
    const/high16 v9, 0x41c00000    # 24.0f

    .line 221
    .line 222
    sget-object v11, Lkd2;->b:Lkd2;

    .line 223
    .line 224
    invoke-static {v11, v9}, Lon3;->c(Lnd2;F)Lnd2;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    shr-int/lit8 v11, v10, 0x6

    .line 229
    .line 230
    and-int/lit8 v11, v11, 0xe

    .line 231
    .line 232
    or-int/lit16 v11, v11, 0x1b0

    .line 233
    .line 234
    move-object/from16 v19, v4

    .line 235
    .line 236
    move-object v4, v9

    .line 237
    const/4 v9, 0x0

    .line 238
    move-object/from16 v20, v3

    .line 239
    .line 240
    const/4 v3, 0x0

    .line 241
    move-object/from16 v24, v8

    .line 242
    .line 243
    move v8, v11

    .line 244
    move-object/from16 v11, v19

    .line 245
    .line 246
    move/from16 v19, v10

    .line 247
    .line 248
    move-object/from16 v10, v20

    .line 249
    .line 250
    move-object/from16 v26, v7

    .line 251
    .line 252
    move-object v7, v5

    .line 253
    move-wide/from16 v27, v13

    .line 254
    .line 255
    move-object v14, v6

    .line 256
    move-object/from16 v13, v26

    .line 257
    .line 258
    move-wide/from16 v5, v27

    .line 259
    .line 260
    invoke-static/range {v2 .. v9}, Lqn1;->a(Lso1;Ljava/lang/String;Lnd2;JLag1;II)V

    .line 261
    .line 262
    .line 263
    move-object v5, v7

    .line 264
    invoke-static/range {v16 .. v16}, Lon3;->f(F)Lnd2;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-static {v5, v2}, Lmt1;->f(Lag1;Lnd2;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v5, v12}, Lag1;->p(Z)V

    .line 272
    .line 273
    .line 274
    new-instance v2, Lnz1;

    .line 275
    .line 276
    const/high16 v3, 0x3f800000    # 1.0f

    .line 277
    .line 278
    const/4 v4, 0x1

    .line 279
    invoke-direct {v2, v3, v4}, Lnz1;-><init>(FZ)V

    .line 280
    .line 281
    .line 282
    sget-object v3, Lth;->c:Loh;

    .line 283
    .line 284
    sget-object v6, Lmj1;->z:Law;

    .line 285
    .line 286
    invoke-static {v3, v6, v5, v12}, Li80;->a(Lsh;Law;Lag1;I)Lk80;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    iget-wide v6, v5, Lag1;->T:J

    .line 291
    .line 292
    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    invoke-virtual {v5}, Lag1;->l()Lhu2;

    .line 297
    .line 298
    .line 299
    move-result-object v7

    .line 300
    invoke-static {v5, v2}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v5}, Lag1;->Z()V

    .line 305
    .line 306
    .line 307
    iget-boolean v8, v5, Lag1;->S:Z

    .line 308
    .line 309
    if-eqz v8, :cond_9

    .line 310
    .line 311
    move-object/from16 v8, v17

    .line 312
    .line 313
    invoke-virtual {v5, v8}, Lag1;->k(Lne1;)V

    .line 314
    .line 315
    .line 316
    goto :goto_7

    .line 317
    :cond_9
    invoke-virtual {v5}, Lag1;->j0()V

    .line 318
    .line 319
    .line 320
    :goto_7
    invoke-static {v15, v5, v3}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    invoke-static {v11, v5, v7}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    invoke-static {v6, v5, v13, v5, v14}, Ldi0;->C(ILag1;Lfd;Lag1;Ll9;)V

    .line 327
    .line 328
    .line 329
    move-object/from16 v3, v24

    .line 330
    .line 331
    invoke-static {v3, v5, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v5, v10}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    check-cast v2, Lua2;

    .line 339
    .line 340
    iget-object v2, v2, Lua2;->b:Le54;

    .line 341
    .line 342
    iget-object v2, v2, Le54;->j:Lay3;

    .line 343
    .line 344
    invoke-virtual {v5, v10}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    check-cast v3, Lua2;

    .line 349
    .line 350
    iget-object v3, v3, Lua2;->a:Ly70;

    .line 351
    .line 352
    iget-wide v6, v3, Ly70;->q:J

    .line 353
    .line 354
    const/16 v22, 0x0

    .line 355
    .line 356
    const v23, 0x1fffa

    .line 357
    .line 358
    .line 359
    const/4 v3, 0x0

    .line 360
    move/from16 v18, v4

    .line 361
    .line 362
    move-wide v4, v6

    .line 363
    const-wide/16 v6, 0x0

    .line 364
    .line 365
    const/4 v8, 0x0

    .line 366
    const/4 v9, 0x0

    .line 367
    move-object/from16 v20, v10

    .line 368
    .line 369
    const-wide/16 v10, 0x0

    .line 370
    .line 371
    const/4 v12, 0x0

    .line 372
    const-wide/16 v13, 0x0

    .line 373
    .line 374
    const/4 v15, 0x0

    .line 375
    move/from16 v17, v16

    .line 376
    .line 377
    const/16 v16, 0x0

    .line 378
    .line 379
    move/from16 v21, v17

    .line 380
    .line 381
    const/16 v17, 0x0

    .line 382
    .line 383
    move/from16 v24, v18

    .line 384
    .line 385
    const/16 v18, 0x0

    .line 386
    .line 387
    move/from16 v25, v21

    .line 388
    .line 389
    const/16 v21, 0x6

    .line 390
    .line 391
    move-object/from16 v0, v20

    .line 392
    .line 393
    move/from16 v1, v24

    .line 394
    .line 395
    move-object/from16 v20, p5

    .line 396
    .line 397
    move/from16 v24, v19

    .line 398
    .line 399
    move-object/from16 v19, v2

    .line 400
    .line 401
    move-object/from16 v2, p0

    .line 402
    .line 403
    invoke-static/range {v2 .. v23}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 404
    .line 405
    .line 406
    move-object/from16 v5, v20

    .line 407
    .line 408
    invoke-virtual {v5, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    check-cast v2, Lua2;

    .line 413
    .line 414
    iget-object v2, v2, Lua2;->b:Le54;

    .line 415
    .line 416
    iget-object v2, v2, Le54;->k:Lay3;

    .line 417
    .line 418
    invoke-virtual {v5, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    check-cast v3, Lua2;

    .line 423
    .line 424
    iget-object v3, v3, Lua2;->a:Ly70;

    .line 425
    .line 426
    iget-wide v3, v3, Ly70;->s:J

    .line 427
    .line 428
    move-wide v4, v3

    .line 429
    const/4 v3, 0x0

    .line 430
    move-object/from16 v19, v2

    .line 431
    .line 432
    move-object/from16 v2, p1

    .line 433
    .line 434
    invoke-static/range {v2 .. v23}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 435
    .line 436
    .line 437
    move-object/from16 v5, v20

    .line 438
    .line 439
    invoke-virtual {v5, v1}, Lag1;->p(Z)V

    .line 440
    .line 441
    .line 442
    invoke-static/range {v25 .. v25}, Lon3;->f(F)Lnd2;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    invoke-static {v5, v2}, Lmt1;->f(Lag1;Lnd2;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v5, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    check-cast v0, Lua2;

    .line 454
    .line 455
    iget-object v0, v0, Lua2;->a:Ly70;

    .line 456
    .line 457
    iget-wide v2, v0, Ly70;->F:J

    .line 458
    .line 459
    invoke-static {v2, v3, v5}, Lzf5;->u(JLag1;)Lgv3;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    shr-int/lit8 v0, v24, 0x9

    .line 464
    .line 465
    and-int/lit8 v6, v0, 0x7e

    .line 466
    .line 467
    const/4 v2, 0x0

    .line 468
    const/4 v3, 0x0

    .line 469
    move/from16 v0, p3

    .line 470
    .line 471
    move v7, v1

    .line 472
    move-object/from16 v1, p4

    .line 473
    .line 474
    invoke-static/range {v0 .. v6}, Ljv3;->a(ZLpe1;Lnd2;ZLgv3;Lag1;I)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v5, v7}, Lag1;->p(Z)V

    .line 478
    .line 479
    .line 480
    goto :goto_8

    .line 481
    :cond_a
    invoke-virtual {v5}, Lag1;->Q()V

    .line 482
    .line 483
    .line 484
    :goto_8
    invoke-virtual {v5}, Lag1;->r()Lc33;

    .line 485
    .line 486
    .line 487
    move-result-object v7

    .line 488
    if-eqz v7, :cond_b

    .line 489
    .line 490
    new-instance v0, Lzs0;

    .line 491
    .line 492
    move-object/from16 v1, p0

    .line 493
    .line 494
    move-object/from16 v2, p1

    .line 495
    .line 496
    move-object/from16 v3, p2

    .line 497
    .line 498
    move/from16 v4, p3

    .line 499
    .line 500
    move-object/from16 v5, p4

    .line 501
    .line 502
    move/from16 v6, p6

    .line 503
    .line 504
    invoke-direct/range {v0 .. v6}, Lzs0;-><init>(Ljava/lang/String;Ljava/lang/String;Lso1;ZLpe1;I)V

    .line 505
    .line 506
    .line 507
    iput-object v0, v7, Lc33;->d:Ldf1;

    .line 508
    .line 509
    :cond_b
    return-void
.end method

.method public static d(Lbt2;Lr51;Ljava/lang/String;Lk23;I)Lg51;
    .locals 2

    .line 1
    and-int/lit8 v0, p4, 0x4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p2, v1

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x8

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move-object p3, v1

    .line 12
    :cond_1
    new-instance p4, Lg51;

    .line 13
    .line 14
    invoke-direct {p4, p0, p1, p2, p3}, Lg51;-><init>(Lbt2;Lr51;Ljava/lang/String;Ljava/lang/AutoCloseable;)V

    .line 15
    .line 16
    .line 17
    return-object p4
.end method

.method public static final e()Llb;
    .locals 3

    .line 1
    new-instance v0, Llb;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/Paint;

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Llb;-><init>(Landroid/graphics/Paint;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static final f(Landroid/content/Context;Lag1;I)V
    .locals 40

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    const v1, 0x24f6d520

    .line 6
    .line 7
    .line 8
    invoke-virtual {v9, v1}, Lag1;->X(I)Lag1;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v9, v0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x2

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v2

    .line 21
    :goto_0
    or-int v1, p2, v1

    .line 22
    .line 23
    and-int/lit8 v3, v1, 0x3

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x1

    .line 27
    if-eq v3, v2, :cond_1

    .line 28
    .line 29
    move v3, v5

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v3, v4

    .line 32
    :goto_1
    and-int/2addr v1, v5

    .line 33
    invoke-virtual {v9, v1, v3}, Lag1;->N(IZ)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_8

    .line 38
    .line 39
    const/high16 v1, 0x41800000    # 16.0f

    .line 40
    .line 41
    sget-object v3, Lkd2;->b:Lkd2;

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    invoke-static {v3, v1, v6, v2}, Lis0;->M(Lnd2;FFI)Lnd2;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    sget-object v7, Lth;->c:Loh;

    .line 49
    .line 50
    sget-object v8, Lmj1;->z:Law;

    .line 51
    .line 52
    invoke-static {v7, v8, v9, v4}, Li80;->a(Lsh;Law;Lag1;I)Lk80;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    iget-wide v10, v9, Lag1;->T:J

    .line 57
    .line 58
    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    invoke-virtual {v9}, Lag1;->l()Lhu2;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    invoke-static {v9, v1}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    sget-object v11, Llb0;->c:Lkb0;

    .line 71
    .line 72
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    sget-object v11, Lkb0;->b:Lic0;

    .line 76
    .line 77
    invoke-virtual {v9}, Lag1;->Z()V

    .line 78
    .line 79
    .line 80
    iget-boolean v12, v9, Lag1;->S:Z

    .line 81
    .line 82
    if-eqz v12, :cond_2

    .line 83
    .line 84
    invoke-virtual {v9, v11}, Lag1;->k(Lne1;)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    invoke-virtual {v9}, Lag1;->j0()V

    .line 89
    .line 90
    .line 91
    :goto_2
    sget-object v12, Lkb0;->f:Lfd;

    .line 92
    .line 93
    invoke-static {v12, v9, v7}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    sget-object v7, Lkb0;->e:Lfd;

    .line 97
    .line 98
    invoke-static {v7, v9, v10}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    sget-object v10, Lkb0;->g:Lfd;

    .line 106
    .line 107
    invoke-static {v10, v9, v8}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    sget-object v8, Lkb0;->h:Ll9;

    .line 111
    .line 112
    invoke-static {v9, v8}, Lht4;->y(Lag1;Lpe1;)V

    .line 113
    .line 114
    .line 115
    sget-object v13, Lkb0;->d:Lfd;

    .line 116
    .line 117
    invoke-static {v13, v9, v1}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    sget-object v1, Lwa2;->a:Lis3;

    .line 121
    .line 122
    invoke-virtual {v9, v1}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v14

    .line 126
    check-cast v14, Lua2;

    .line 127
    .line 128
    iget-object v14, v14, Lua2;->b:Le54;

    .line 129
    .line 130
    iget-object v14, v14, Le54;->j:Lay3;

    .line 131
    .line 132
    invoke-virtual {v9, v1}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v15

    .line 136
    check-cast v15, Lua2;

    .line 137
    .line 138
    iget-object v15, v15, Lua2;->a:Ly70;

    .line 139
    .line 140
    move-object/from16 v17, v3

    .line 141
    .line 142
    iget-wide v2, v15, Ly70;->q:J

    .line 143
    .line 144
    const/16 v21, 0x0

    .line 145
    .line 146
    const v22, 0x1fffa

    .line 147
    .line 148
    .line 149
    move-object v15, v1

    .line 150
    const-string v1, "Schedule Test Trigger"

    .line 151
    .line 152
    move/from16 v18, v4

    .line 153
    .line 154
    move-wide v3, v2

    .line 155
    const/4 v2, 0x0

    .line 156
    move/from16 v20, v5

    .line 157
    .line 158
    move/from16 v19, v6

    .line 159
    .line 160
    const-wide/16 v5, 0x0

    .line 161
    .line 162
    move-object/from16 v23, v7

    .line 163
    .line 164
    const/4 v7, 0x0

    .line 165
    move-object/from16 v24, v8

    .line 166
    .line 167
    const/4 v8, 0x0

    .line 168
    move-object/from16 v25, v10

    .line 169
    .line 170
    const-wide/16 v9, 0x0

    .line 171
    .line 172
    move-object/from16 v26, v11

    .line 173
    .line 174
    const/4 v11, 0x0

    .line 175
    move-object/from16 v27, v12

    .line 176
    .line 177
    move-object/from16 v28, v13

    .line 178
    .line 179
    const-wide/16 v12, 0x0

    .line 180
    .line 181
    move/from16 v29, v18

    .line 182
    .line 183
    move-object/from16 v18, v14

    .line 184
    .line 185
    const/4 v14, 0x0

    .line 186
    move-object/from16 v30, v15

    .line 187
    .line 188
    const/4 v15, 0x0

    .line 189
    const/16 v31, 0x2

    .line 190
    .line 191
    const/16 v16, 0x0

    .line 192
    .line 193
    move-object/from16 v32, v17

    .line 194
    .line 195
    const/16 v17, 0x0

    .line 196
    .line 197
    move/from16 v33, v20

    .line 198
    .line 199
    const/16 v20, 0x6

    .line 200
    .line 201
    move-object/from16 v19, p1

    .line 202
    .line 203
    move-object/from16 v35, v23

    .line 204
    .line 205
    move-object/from16 v37, v24

    .line 206
    .line 207
    move-object/from16 v36, v25

    .line 208
    .line 209
    move-object/from16 v34, v27

    .line 210
    .line 211
    move-object/from16 v38, v28

    .line 212
    .line 213
    move-object/from16 v0, v30

    .line 214
    .line 215
    move-object/from16 v39, v32

    .line 216
    .line 217
    invoke-static/range {v1 .. v22}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 218
    .line 219
    .line 220
    move-object/from16 v9, v19

    .line 221
    .line 222
    invoke-virtual {v9, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    check-cast v1, Lua2;

    .line 227
    .line 228
    iget-object v1, v1, Lua2;->b:Le54;

    .line 229
    .line 230
    iget-object v1, v1, Le54;->k:Lay3;

    .line 231
    .line 232
    invoke-virtual {v9, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    check-cast v0, Lua2;

    .line 237
    .line 238
    iget-object v0, v0, Lua2;->a:Ly70;

    .line 239
    .line 240
    iget-wide v3, v0, Ly70;->s:J

    .line 241
    .line 242
    const/high16 v0, 0x41000000    # 8.0f

    .line 243
    .line 244
    const/4 v2, 0x7

    .line 245
    move-object/from16 v6, v39

    .line 246
    .line 247
    const/4 v5, 0x0

    .line 248
    invoke-static {v6, v5, v5, v0, v2}, Lis0;->O(Lnd2;FFFI)Lnd2;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    const v22, 0x1fff8

    .line 253
    .line 254
    .line 255
    move-object/from16 v18, v1

    .line 256
    .line 257
    const-string v1, "Simulates the alarm receiver firing to start the automation service. (Forces execution)"

    .line 258
    .line 259
    const-wide/16 v5, 0x0

    .line 260
    .line 261
    const-wide/16 v9, 0x0

    .line 262
    .line 263
    const/16 v20, 0x36

    .line 264
    .line 265
    invoke-static/range {v1 .. v22}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 266
    .line 267
    .line 268
    move-object/from16 v9, v19

    .line 269
    .line 270
    sget-object v0, Lon3;->a:Lu51;

    .line 271
    .line 272
    new-instance v1, Lrh;

    .line 273
    .line 274
    new-instance v2, Lk21;

    .line 275
    .line 276
    const/4 v3, 0x2

    .line 277
    invoke-direct {v2, v3}, Lk21;-><init>(I)V

    .line 278
    .line 279
    .line 280
    const/high16 v3, 0x41400000    # 12.0f

    .line 281
    .line 282
    invoke-direct {v1, v3, v2}, Lrh;-><init>(FLk21;)V

    .line 283
    .line 284
    .line 285
    sget-object v2, Lmj1;->x:Lbw;

    .line 286
    .line 287
    const/4 v3, 0x6

    .line 288
    invoke-static {v1, v2, v9, v3}, Lbb3;->a(Lqh;Lbw;Lag1;I)Lcb3;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    iget-wide v2, v9, Lag1;->T:J

    .line 293
    .line 294
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    invoke-virtual {v9}, Lag1;->l()Lhu2;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-static {v9, v0}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v9}, Lag1;->Z()V

    .line 307
    .line 308
    .line 309
    iget-boolean v4, v9, Lag1;->S:Z

    .line 310
    .line 311
    if-eqz v4, :cond_3

    .line 312
    .line 313
    move-object/from16 v4, v26

    .line 314
    .line 315
    invoke-virtual {v9, v4}, Lag1;->k(Lne1;)V

    .line 316
    .line 317
    .line 318
    :goto_3
    move-object/from16 v4, v34

    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_3
    invoke-virtual {v9}, Lag1;->j0()V

    .line 322
    .line 323
    .line 324
    goto :goto_3

    .line 325
    :goto_4
    invoke-static {v4, v9, v1}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    move-object/from16 v1, v35

    .line 329
    .line 330
    invoke-static {v1, v9, v3}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    move-object/from16 v1, v36

    .line 334
    .line 335
    move-object/from16 v3, v37

    .line 336
    .line 337
    invoke-static {v2, v9, v1, v9, v3}, Ldi0;->C(ILag1;Lfd;Lag1;Ll9;)V

    .line 338
    .line 339
    .line 340
    move-object/from16 v1, v38

    .line 341
    .line 342
    invoke-static {v1, v9, v0}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    move-object/from16 v0, p0

    .line 346
    .line 347
    invoke-virtual {v9, v0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    invoke-virtual {v9}, Lag1;->K()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    sget-object v11, Lrb0;->a:Lbx3;

    .line 356
    .line 357
    if-nez v1, :cond_5

    .line 358
    .line 359
    if-ne v2, v11, :cond_4

    .line 360
    .line 361
    goto :goto_5

    .line 362
    :cond_4
    const/4 v12, 0x0

    .line 363
    goto :goto_6

    .line 364
    :cond_5
    :goto_5
    new-instance v2, Lws0;

    .line 365
    .line 366
    const/4 v12, 0x0

    .line 367
    invoke-direct {v2, v0, v12}, Lws0;-><init>(Landroid/content/Context;I)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v9, v2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    :goto_6
    move-object v1, v2

    .line 374
    check-cast v1, Lne1;

    .line 375
    .line 376
    new-instance v2, Lnz1;

    .line 377
    .line 378
    const/high16 v13, 0x3f800000    # 1.0f

    .line 379
    .line 380
    const/4 v14, 0x1

    .line 381
    invoke-direct {v2, v13, v14}, Lnz1;-><init>(FZ)V

    .line 382
    .line 383
    .line 384
    sget-object v8, Lw80;->e:Lka0;

    .line 385
    .line 386
    const/high16 v10, 0x30000000

    .line 387
    .line 388
    const/4 v3, 0x0

    .line 389
    const/4 v4, 0x0

    .line 390
    const/4 v5, 0x0

    .line 391
    const/4 v6, 0x0

    .line 392
    const/4 v7, 0x0

    .line 393
    invoke-static/range {v1 .. v10}, Ldm0;->f(Lne1;Lnd2;ZLjl3;Lkz;Lfx;Lzr2;Lka0;Lag1;I)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v9, v0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    invoke-virtual {v9}, Lag1;->K()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    if-nez v1, :cond_6

    .line 405
    .line 406
    if-ne v2, v11, :cond_7

    .line 407
    .line 408
    :cond_6
    new-instance v2, Lws0;

    .line 409
    .line 410
    invoke-direct {v2, v0, v14}, Lws0;-><init>(Landroid/content/Context;I)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v9, v2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    :cond_7
    move-object v1, v2

    .line 417
    check-cast v1, Lne1;

    .line 418
    .line 419
    new-instance v2, Lnz1;

    .line 420
    .line 421
    invoke-direct {v2, v13, v14}, Lnz1;-><init>(FZ)V

    .line 422
    .line 423
    .line 424
    sget-object v8, Lw80;->f:Lka0;

    .line 425
    .line 426
    const/high16 v10, 0x30000000

    .line 427
    .line 428
    const/4 v3, 0x0

    .line 429
    const/4 v4, 0x0

    .line 430
    const/4 v5, 0x0

    .line 431
    const/4 v6, 0x0

    .line 432
    const/4 v7, 0x0

    .line 433
    invoke-static/range {v1 .. v10}, Ldm0;->f(Lne1;Lnd2;ZLjl3;Lkz;Lfx;Lzr2;Lka0;Lag1;I)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v9, v14}, Lag1;->p(Z)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v9, v14}, Lag1;->p(Z)V

    .line 440
    .line 441
    .line 442
    goto :goto_7

    .line 443
    :cond_8
    move v12, v4

    .line 444
    invoke-virtual {v9}, Lag1;->Q()V

    .line 445
    .line 446
    .line 447
    :goto_7
    invoke-virtual {v9}, Lag1;->r()Lc33;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    if-eqz v1, :cond_9

    .line 452
    .line 453
    new-instance v2, Lxs0;

    .line 454
    .line 455
    move/from16 v3, p2

    .line 456
    .line 457
    invoke-direct {v2, v0, v3, v12}, Lxs0;-><init>(Landroid/content/Context;II)V

    .line 458
    .line 459
    .line 460
    iput-object v2, v1, Lc33;->d:Ldf1;

    .line 461
    .line 462
    :cond_9
    return-void
.end method

.method public static final g(JLandroid/content/Context;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x3e8

    .line 6
    .line 7
    mul-long/2addr v2, p0

    .line 8
    add-long/2addr v2, v0

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "rolling_window_trigger_timestamp"

    .line 15
    .line 16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const-string v1, "force_rolling_window"

    .line 24
    .line 25
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    new-instance v1, Lzl0;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Lzl0;-><init>(Ljava/util/LinkedHashMap;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lbi4;->L(Lzl0;)[B

    .line 36
    .line 37
    .line 38
    new-instance v0, Lnp2;

    .line 39
    .line 40
    const-class v4, Lu/sage/worker/RollingWindowWorker;

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-direct {v0, v4, v5}, Lnp2;-><init>(Ljava/lang/Class;I)V

    .line 44
    .line 45
    .line 46
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 47
    .line 48
    invoke-virtual {v0, p0, p1, v4}, Lnp2;->b(JLjava/util/concurrent/TimeUnit;)Lnp2;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v4, v0, Lnp2;->c:Log4;

    .line 53
    .line 54
    iput-object v1, v4, Log4;->e:Lzl0;

    .line 55
    .line 56
    invoke-virtual {v0}, Lnp2;->a()Lmg4;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lop2;

    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {p2}, Leg4;->c(Landroid/content/Context;)Leg4;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1, v0}, Leg4;->a(Lop2;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v1, "Work scheduled in "

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v1, "s (Forced)"

    .line 80
    .line 81
    invoke-static {v0, p0, p1, v1}, Ldi0;->x(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {p2, p0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 90
    .line 91
    .line 92
    sget-object p0, Lez3;->a:Lra3;

    .line 93
    .line 94
    new-instance p1, Ljava/util/Date;

    .line 95
    .line 96
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    new-array p1, v5, [Ljava/lang/Object;

    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public static final h(Landroid/content/Context;Lag1;I)V
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    const v1, -0x319398e5

    .line 6
    .line 7
    .line 8
    invoke-virtual {v9, v1}, Lag1;->X(I)Lag1;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v9, v0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x2

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v2

    .line 21
    :goto_0
    or-int v1, p2, v1

    .line 22
    .line 23
    and-int/lit8 v3, v1, 0x3

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x1

    .line 27
    if-eq v3, v2, :cond_1

    .line 28
    .line 29
    move v3, v5

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v3, v4

    .line 32
    :goto_1
    and-int/2addr v1, v5

    .line 33
    invoke-virtual {v9, v1, v3}, Lag1;->N(IZ)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_8

    .line 38
    .line 39
    const/high16 v1, 0x41800000    # 16.0f

    .line 40
    .line 41
    sget-object v3, Lkd2;->b:Lkd2;

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    invoke-static {v3, v1, v6, v2}, Lis0;->M(Lnd2;FFI)Lnd2;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    sget-object v7, Lth;->c:Loh;

    .line 49
    .line 50
    sget-object v8, Lmj1;->z:Law;

    .line 51
    .line 52
    invoke-static {v7, v8, v9, v4}, Li80;->a(Lsh;Law;Lag1;I)Lk80;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    iget-wide v7, v9, Lag1;->T:J

    .line 57
    .line 58
    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    invoke-virtual {v9}, Lag1;->l()Lhu2;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    invoke-static {v9, v1}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    sget-object v10, Llb0;->c:Lkb0;

    .line 71
    .line 72
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    sget-object v10, Lkb0;->b:Lic0;

    .line 76
    .line 77
    invoke-virtual {v9}, Lag1;->Z()V

    .line 78
    .line 79
    .line 80
    iget-boolean v11, v9, Lag1;->S:Z

    .line 81
    .line 82
    if-eqz v11, :cond_2

    .line 83
    .line 84
    invoke-virtual {v9, v10}, Lag1;->k(Lne1;)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    invoke-virtual {v9}, Lag1;->j0()V

    .line 89
    .line 90
    .line 91
    :goto_2
    sget-object v11, Lkb0;->f:Lfd;

    .line 92
    .line 93
    invoke-static {v11, v9, v4}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    sget-object v4, Lkb0;->e:Lfd;

    .line 97
    .line 98
    invoke-static {v4, v9, v8}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    sget-object v8, Lkb0;->g:Lfd;

    .line 106
    .line 107
    invoke-static {v8, v9, v7}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    sget-object v7, Lkb0;->h:Ll9;

    .line 111
    .line 112
    invoke-static {v9, v7}, Lht4;->y(Lag1;Lpe1;)V

    .line 113
    .line 114
    .line 115
    sget-object v12, Lkb0;->d:Lfd;

    .line 116
    .line 117
    invoke-static {v12, v9, v1}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    sget-object v1, Lwa2;->a:Lis3;

    .line 121
    .line 122
    invoke-virtual {v9, v1}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    check-cast v13, Lua2;

    .line 127
    .line 128
    iget-object v13, v13, Lua2;->b:Le54;

    .line 129
    .line 130
    iget-object v13, v13, Le54;->j:Lay3;

    .line 131
    .line 132
    invoke-virtual {v9, v1}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v14

    .line 136
    check-cast v14, Lua2;

    .line 137
    .line 138
    iget-object v14, v14, Lua2;->a:Ly70;

    .line 139
    .line 140
    iget-wide v14, v14, Ly70;->q:J

    .line 141
    .line 142
    const/16 v21, 0x0

    .line 143
    .line 144
    const v22, 0x1fffa

    .line 145
    .line 146
    .line 147
    move-object/from16 v16, v1

    .line 148
    .line 149
    const-string v1, "Simulate WebView Freeze"

    .line 150
    .line 151
    move/from16 v17, v2

    .line 152
    .line 153
    const/4 v2, 0x0

    .line 154
    move/from16 v19, v5

    .line 155
    .line 156
    move/from16 v18, v6

    .line 157
    .line 158
    const-wide/16 v5, 0x0

    .line 159
    .line 160
    move-object/from16 v20, v7

    .line 161
    .line 162
    const/4 v7, 0x0

    .line 163
    move-object/from16 v23, v8

    .line 164
    .line 165
    const/4 v8, 0x0

    .line 166
    move-object/from16 v24, v10

    .line 167
    .line 168
    const-wide/16 v9, 0x0

    .line 169
    .line 170
    move-object/from16 v25, v11

    .line 171
    .line 172
    const/4 v11, 0x0

    .line 173
    move-object/from16 v26, v12

    .line 174
    .line 175
    move/from16 v27, v18

    .line 176
    .line 177
    move-object/from16 v18, v13

    .line 178
    .line 179
    const-wide/16 v12, 0x0

    .line 180
    .line 181
    move-object/from16 v28, v3

    .line 182
    .line 183
    move-wide/from16 v39, v14

    .line 184
    .line 185
    move-object v15, v4

    .line 186
    move-wide/from16 v3, v39

    .line 187
    .line 188
    const/4 v14, 0x0

    .line 189
    move-object/from16 v29, v15

    .line 190
    .line 191
    const/4 v15, 0x0

    .line 192
    move-object/from16 v30, v16

    .line 193
    .line 194
    const/16 v16, 0x0

    .line 195
    .line 196
    move/from16 v31, v17

    .line 197
    .line 198
    const/16 v17, 0x0

    .line 199
    .line 200
    move-object/from16 v32, v20

    .line 201
    .line 202
    const/16 v20, 0x6

    .line 203
    .line 204
    move-object/from16 v19, p1

    .line 205
    .line 206
    move-object/from16 v35, v23

    .line 207
    .line 208
    move-object/from16 v33, v25

    .line 209
    .line 210
    move-object/from16 v37, v26

    .line 211
    .line 212
    move-object/from16 v38, v28

    .line 213
    .line 214
    move-object/from16 v34, v29

    .line 215
    .line 216
    move-object/from16 v0, v30

    .line 217
    .line 218
    move-object/from16 v36, v32

    .line 219
    .line 220
    invoke-static/range {v1 .. v22}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 221
    .line 222
    .line 223
    move-object/from16 v9, v19

    .line 224
    .line 225
    invoke-virtual {v9, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    check-cast v1, Lua2;

    .line 230
    .line 231
    iget-object v1, v1, Lua2;->b:Le54;

    .line 232
    .line 233
    iget-object v1, v1, Le54;->k:Lay3;

    .line 234
    .line 235
    invoke-virtual {v9, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    check-cast v0, Lua2;

    .line 240
    .line 241
    iget-object v0, v0, Lua2;->a:Ly70;

    .line 242
    .line 243
    iget-wide v3, v0, Ly70;->s:J

    .line 244
    .line 245
    const/high16 v0, 0x41000000    # 8.0f

    .line 246
    .line 247
    const/4 v2, 0x7

    .line 248
    move-object/from16 v6, v38

    .line 249
    .line 250
    const/4 v5, 0x0

    .line 251
    invoke-static {v6, v5, v5, v0, v2}, Lis0;->O(Lnd2;FFFI)Lnd2;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    const v22, 0x1fff8

    .line 256
    .line 257
    .line 258
    move-object/from16 v18, v1

    .line 259
    .line 260
    const-string v1, "Pauses WebView and timers to simulate OS throttling. Next refresh will wake it."

    .line 261
    .line 262
    const-wide/16 v5, 0x0

    .line 263
    .line 264
    const-wide/16 v9, 0x0

    .line 265
    .line 266
    const/16 v20, 0x36

    .line 267
    .line 268
    invoke-static/range {v1 .. v22}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 269
    .line 270
    .line 271
    move-object/from16 v9, v19

    .line 272
    .line 273
    sget-object v0, Lon3;->a:Lu51;

    .line 274
    .line 275
    new-instance v1, Lrh;

    .line 276
    .line 277
    new-instance v2, Lk21;

    .line 278
    .line 279
    const/4 v3, 0x2

    .line 280
    invoke-direct {v2, v3}, Lk21;-><init>(I)V

    .line 281
    .line 282
    .line 283
    const/high16 v4, 0x41400000    # 12.0f

    .line 284
    .line 285
    invoke-direct {v1, v4, v2}, Lrh;-><init>(FLk21;)V

    .line 286
    .line 287
    .line 288
    sget-object v2, Lmj1;->x:Lbw;

    .line 289
    .line 290
    const/4 v4, 0x6

    .line 291
    invoke-static {v1, v2, v9, v4}, Lbb3;->a(Lqh;Lbw;Lag1;I)Lcb3;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    iget-wide v4, v9, Lag1;->T:J

    .line 296
    .line 297
    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    invoke-virtual {v9}, Lag1;->l()Lhu2;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-static {v9, v0}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-virtual {v9}, Lag1;->Z()V

    .line 310
    .line 311
    .line 312
    iget-boolean v5, v9, Lag1;->S:Z

    .line 313
    .line 314
    if-eqz v5, :cond_3

    .line 315
    .line 316
    move-object/from16 v5, v24

    .line 317
    .line 318
    invoke-virtual {v9, v5}, Lag1;->k(Lne1;)V

    .line 319
    .line 320
    .line 321
    :goto_3
    move-object/from16 v5, v33

    .line 322
    .line 323
    goto :goto_4

    .line 324
    :cond_3
    invoke-virtual {v9}, Lag1;->j0()V

    .line 325
    .line 326
    .line 327
    goto :goto_3

    .line 328
    :goto_4
    invoke-static {v5, v9, v1}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    move-object/from16 v15, v34

    .line 332
    .line 333
    invoke-static {v15, v9, v4}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    move-object/from16 v1, v35

    .line 337
    .line 338
    move-object/from16 v4, v36

    .line 339
    .line 340
    invoke-static {v2, v9, v1, v9, v4}, Ldi0;->C(ILag1;Lfd;Lag1;Ll9;)V

    .line 341
    .line 342
    .line 343
    move-object/from16 v1, v37

    .line 344
    .line 345
    invoke-static {v1, v9, v0}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    move-object/from16 v0, p0

    .line 349
    .line 350
    invoke-virtual {v9, v0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    invoke-virtual {v9}, Lag1;->K()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    sget-object v11, Lrb0;->a:Lbx3;

    .line 359
    .line 360
    if-nez v1, :cond_4

    .line 361
    .line 362
    if-ne v2, v11, :cond_5

    .line 363
    .line 364
    :cond_4
    new-instance v2, Lws0;

    .line 365
    .line 366
    invoke-direct {v2, v0, v3}, Lws0;-><init>(Landroid/content/Context;I)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v9, v2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    :cond_5
    move-object v1, v2

    .line 373
    check-cast v1, Lne1;

    .line 374
    .line 375
    new-instance v2, Lnz1;

    .line 376
    .line 377
    const/high16 v12, 0x3f800000    # 1.0f

    .line 378
    .line 379
    const/4 v13, 0x1

    .line 380
    invoke-direct {v2, v12, v13}, Lnz1;-><init>(FZ)V

    .line 381
    .line 382
    .line 383
    sget-object v8, Lw80;->g:Lka0;

    .line 384
    .line 385
    const/high16 v10, 0x30000000

    .line 386
    .line 387
    const/4 v3, 0x0

    .line 388
    const/4 v4, 0x0

    .line 389
    const/4 v5, 0x0

    .line 390
    const/4 v6, 0x0

    .line 391
    const/4 v7, 0x0

    .line 392
    invoke-static/range {v1 .. v10}, Ldm0;->f(Lne1;Lnd2;ZLjl3;Lkz;Lfx;Lzr2;Lka0;Lag1;I)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v9, v0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    invoke-virtual {v9}, Lag1;->K()Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    if-nez v1, :cond_6

    .line 404
    .line 405
    if-ne v2, v11, :cond_7

    .line 406
    .line 407
    :cond_6
    new-instance v2, Lws0;

    .line 408
    .line 409
    const/4 v1, 0x3

    .line 410
    invoke-direct {v2, v0, v1}, Lws0;-><init>(Landroid/content/Context;I)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v9, v2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    :cond_7
    move-object v1, v2

    .line 417
    check-cast v1, Lne1;

    .line 418
    .line 419
    new-instance v2, Lnz1;

    .line 420
    .line 421
    invoke-direct {v2, v12, v13}, Lnz1;-><init>(FZ)V

    .line 422
    .line 423
    .line 424
    sget-object v8, Lw80;->h:Lka0;

    .line 425
    .line 426
    const/high16 v10, 0x30000000

    .line 427
    .line 428
    const/4 v3, 0x0

    .line 429
    const/4 v4, 0x0

    .line 430
    const/4 v5, 0x0

    .line 431
    const/4 v6, 0x0

    .line 432
    const/4 v7, 0x0

    .line 433
    invoke-static/range {v1 .. v10}, Ldm0;->f(Lne1;Lnd2;ZLjl3;Lkz;Lfx;Lzr2;Lka0;Lag1;I)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v9, v13}, Lag1;->p(Z)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v9, v13}, Lag1;->p(Z)V

    .line 440
    .line 441
    .line 442
    goto :goto_5

    .line 443
    :cond_8
    move v13, v5

    .line 444
    invoke-virtual {v9}, Lag1;->Q()V

    .line 445
    .line 446
    .line 447
    :goto_5
    invoke-virtual {v9}, Lag1;->r()Lc33;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    if-eqz v1, :cond_9

    .line 452
    .line 453
    new-instance v2, Lxs0;

    .line 454
    .line 455
    move/from16 v3, p2

    .line 456
    .line 457
    invoke-direct {v2, v0, v3, v13}, Lxs0;-><init>(Landroid/content/Context;II)V

    .line 458
    .line 459
    .line 460
    iput-object v2, v1, Lc33;->d:Ldf1;

    .line 461
    .line 462
    :cond_9
    return-void
.end method

.method public static final i(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "u.sage.ACTION_SIMULATE_FREEZE"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Freeze sent to "

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lez3;->a:Lra3;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "DeveloperSettingsScreen: Simulate freeze sent to "

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    new-array p1, v1, [Ljava/lang/Object;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    if-eq p0, p1, :cond_3

    .line 8
    .line 9
    sget-object v0, Lgu1;->a:Ljava/lang/Integer;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x13

    .line 18
    .line 19
    if-lt v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    sget-object v0, Ljv2;->a:Ljava/lang/reflect/Method;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_3
    return-void
.end method

.method public static k()Lnd2;
    .locals 1

    .line 1
    new-instance v0, Lox;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final l(Lvb4;Luc3;Lh22;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    .line 8
    .line 9
    iget-object p0, p0, Lvb4;->a:Lwb4;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lwb4;->a:Lls3;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object p0, p0, Lwb4;->b:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit v1

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v1

    .line 28
    throw p0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    check-cast p0, Lnc3;

    .line 31
    .line 32
    if-eqz p0, :cond_3

    .line 33
    .line 34
    iget-boolean v0, p0, Lnc3;->p:Z

    .line 35
    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0, p2, p1}, Lnc3;->b(Lh22;Luc3;)V

    .line 39
    .line 40
    .line 41
    move-object p0, p2

    .line 42
    check-cast p0, Lr22;

    .line 43
    .line 44
    iget-object p0, p0, Lr22;->d:Lg22;

    .line 45
    .line 46
    sget-object v0, Lg22;->o:Lg22;

    .line 47
    .line 48
    if-eq p0, v0, :cond_2

    .line 49
    .line 50
    sget-object v0, Lg22;->q:Lg22;

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-ltz p0, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    new-instance p0, Lqp0;

    .line 60
    .line 61
    invoke-direct {p0, p2, p1}, Lqp0;-><init>(Lh22;Luc3;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p0}, Lh22;->a(Lo22;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    :goto_1
    invoke-virtual {p1}, Luc3;->d()V

    .line 69
    .line 70
    .line 71
    :cond_3
    return-void
.end method

.method public static m(III)V
    .locals 3

    .line 1
    const-string v0, "startIndex: "

    .line 2
    .line 3
    if-ltz p0, :cond_1

    .line 4
    .line 5
    if-gt p1, p2, :cond_1

    .line 6
    .line 7
    if-gt p0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p2, " > endIndex: "

    .line 11
    .line 12
    invoke-static {p0, p1, v0, p2}, Ldi0;->p(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const-string v1, ", endIndex: "

    .line 21
    .line 22
    const-string v2, ", size: "

    .line 23
    .line 24
    invoke-static {v0, p0, v1, p1, v2}, Lxw1;->v(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0, p2}, Lk21;->k(Ljava/lang/StringBuilder;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static n(III)V
    .locals 3

    .line 1
    const-string v0, "fromIndex: "

    .line 2
    .line 3
    if-ltz p0, :cond_1

    .line 4
    .line 5
    if-gt p1, p2, :cond_1

    .line 6
    .line 7
    if-gt p0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p2, " > toIndex: "

    .line 11
    .line 12
    invoke-static {p0, p1, v0, p2}, Ldi0;->p(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const-string v1, ", toIndex: "

    .line 21
    .line 22
    const-string v2, ", size: "

    .line 23
    .line 24
    invoke-static {v0, p0, v1, p1, v2}, Lxw1;->v(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0, p2}, Lk21;->k(Ljava/lang/StringBuilder;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static o(I)Lpa3;
    .locals 12

    .line 1
    and-int/lit8 p0, p0, 0x1

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/16 p0, 0x8

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 p0, 0xa

    .line 9
    .line 10
    :goto_0
    sget v0, Lk94;->b:F

    .line 11
    .line 12
    int-to-float v1, p0

    .line 13
    div-float/2addr v0, v1

    .line 14
    float-to-double v2, v0

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    double-to-float v0, v2

    .line 20
    const/high16 v2, 0x3f800000    # 1.0f

    .line 21
    .line 22
    div-float v0, v2, v0

    .line 23
    .line 24
    new-instance v3, Lbi0;

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    invoke-direct {v3, v4, v2}, Lbi0;-><init>(IF)V

    .line 28
    .line 29
    .line 30
    mul-int/lit8 v2, p0, 0x2

    .line 31
    .line 32
    new-array v2, v2, [F

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    move v6, v5

    .line 36
    :goto_1
    const/4 v7, 0x0

    .line 37
    if-ge v5, p0, :cond_1

    .line 38
    .line 39
    sget v8, Lk94;->b:F

    .line 40
    .line 41
    div-float/2addr v8, v1

    .line 42
    const/high16 v9, 0x40000000    # 2.0f

    .line 43
    .line 44
    mul-float/2addr v8, v9

    .line 45
    int-to-float v9, v5

    .line 46
    mul-float/2addr v8, v9

    .line 47
    invoke-static {v0, v8}, Lk94;->e(FF)J

    .line 48
    .line 49
    .line 50
    move-result-wide v8

    .line 51
    invoke-static {v7, v7}, Lv71;->a(FF)J

    .line 52
    .line 53
    .line 54
    move-result-wide v10

    .line 55
    invoke-static {v8, v9, v10, v11}, Lix;->K(JJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v7

    .line 59
    add-int/lit8 v9, v6, 0x1

    .line 60
    .line 61
    invoke-static {v7, v8}, Lix;->x(J)F

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    aput v10, v2, v6

    .line 66
    .line 67
    add-int/2addr v6, v4

    .line 68
    invoke-static {v7, v8}, Lix;->y(J)F

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    aput v7, v2, v9

    .line 73
    .line 74
    add-int/lit8 v5, v5, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    const/4 p0, 0x0

    .line 78
    invoke-static {v2, v3, p0, v7, v7}, Lc75;->f([FLbi0;Ljava/util/AbstractList;FF)Lpa3;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method

.method public static p()Ld84;
    .locals 22

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x6ddcff

    .line 6
    .line 7
    .line 8
    add-long/2addr v2, v0

    .line 9
    const-wide/32 v4, 0x9032100

    .line 10
    .line 11
    .line 12
    add-long/2addr v4, v0

    .line 13
    const-wide/32 v6, 0x36ee80

    .line 14
    .line 15
    .line 16
    div-long/2addr v4, v6

    .line 17
    mul-long/2addr v4, v6

    .line 18
    const-wide/32 v8, 0x6c258c00

    .line 19
    .line 20
    .line 21
    add-long/2addr v8, v0

    .line 22
    div-long/2addr v8, v6

    .line 23
    mul-long/2addr v8, v6

    .line 24
    const-wide/32 v6, -0xa4cb81

    .line 25
    .line 26
    .line 27
    add-long/2addr v6, v0

    .line 28
    const-wide/32 v10, 0x240c8400

    .line 29
    .line 30
    .line 31
    sub-long v10, v4, v10

    .line 32
    .line 33
    const-wide v12, 0x9a7ec800L

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    sub-long v12, v8, v12

    .line 39
    .line 40
    new-instance v14, Ld84;

    .line 41
    .line 42
    new-instance v15, Lp84;

    .line 43
    .line 44
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v19

    .line 48
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v20

    .line 52
    const-string v16, "Current session"

    .line 53
    .line 54
    const-wide/high16 v17, 0x4039000000000000L    # 25.0

    .line 55
    .line 56
    invoke-direct/range {v15 .. v20}, Lp84;-><init>(Ljava/lang/String;DLjava/lang/Long;Ljava/lang/Long;)V

    .line 57
    .line 58
    .line 59
    new-instance v16, Lp84;

    .line 60
    .line 61
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v20

    .line 65
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v21

    .line 69
    const-string v17, "Weekly limits"

    .line 70
    .line 71
    const-wide/high16 v18, 0x4049000000000000L    # 50.0

    .line 72
    .line 73
    invoke-direct/range {v16 .. v21}, Lp84;-><init>(Ljava/lang/String;DLjava/lang/Long;Ljava/lang/Long;)V

    .line 74
    .line 75
    .line 76
    move-object/from16 v2, v16

    .line 77
    .line 78
    new-instance v16, Lp84;

    .line 79
    .line 80
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v20

    .line 84
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v21

    .line 88
    const-string v17, "Monthly limits"

    .line 89
    .line 90
    const-wide v18, 0x4052c00000000000L    # 75.0

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    invoke-direct/range {v16 .. v21}, Lp84;-><init>(Ljava/lang/String;DLjava/lang/Long;Ljava/lang/Long;)V

    .line 96
    .line 97
    .line 98
    move-object/from16 v3, v16

    .line 99
    .line 100
    filled-new-array {v15, v2, v3}, [Lp84;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-static {v2}, Ltv4;->F([Ljava/lang/Object;)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-direct {v14, v2, v0, v1}, Ld84;-><init>(Ljava/util/List;J)V

    .line 109
    .line 110
    .line 111
    return-object v14
.end method

.method public static final q(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v1, "datastore/"

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static r(Ljava/io/File;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    array-length v2, p0

    .line 17
    move v3, v0

    .line 18
    move v4, v1

    .line 19
    :goto_0
    if-ge v3, v2, :cond_2

    .line 20
    .line 21
    aget-object v5, p0, v3

    .line 22
    .line 23
    invoke-static {v5}, Lon4;->r(Ljava/io/File;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    move v4, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v4, v0

    .line 34
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return v4

    .line 38
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 39
    .line 40
    .line 41
    return v1
.end method

.method public static s(IIII)J
    .locals 4

    .line 1
    const v0, 0x3fffe

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    const v1, 0x7fffffff

    .line 9
    .line 10
    .line 11
    if-ne p3, v1, :cond_0

    .line 12
    .line 13
    move p3, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    :goto_0
    if-ne p3, v1, :cond_1

    .line 20
    .line 21
    move v2, p2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v2, p3

    .line 24
    :goto_1
    const/16 v3, 0x1fff

    .line 25
    .line 26
    if-ge v2, v3, :cond_2

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    const/16 v0, 0x7fff

    .line 30
    .line 31
    if-ge v2, v0, :cond_3

    .line 32
    .line 33
    const v0, 0xfffe

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    const v0, 0xffff

    .line 38
    .line 39
    .line 40
    if-ge v2, v0, :cond_4

    .line 41
    .line 42
    const/16 v0, 0x7ffe

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_4
    const v0, 0x3ffff

    .line 46
    .line 47
    .line 48
    if-ge v2, v0, :cond_6

    .line 49
    .line 50
    const/16 v0, 0x1ffe

    .line 51
    .line 52
    :goto_2
    if-ne p1, v1, :cond_5

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_5
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    :goto_3
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-static {p0, v1, p2, p3}, Lnf0;->a(IIII)J

    .line 64
    .line 65
    .line 66
    move-result-wide p0

    .line 67
    return-wide p0

    .line 68
    :cond_6
    invoke-static {v2}, Lnf0;->j(I)Ljava/lang/Void;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lp61;->q()V

    .line 72
    .line 73
    .line 74
    const-wide/16 p0, 0x0

    .line 75
    .line 76
    return-wide p0
.end method

.method public static t(IIII)J
    .locals 4

    .line 1
    const v0, 0x3fffe

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const v1, 0x7fffffff

    .line 9
    .line 10
    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    .line 13
    move p1, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    :goto_0
    if-ne p1, v1, :cond_1

    .line 20
    .line 21
    move v2, p0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v2, p1

    .line 24
    :goto_1
    const/16 v3, 0x1fff

    .line 25
    .line 26
    if-ge v2, v3, :cond_2

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    const/16 v0, 0x7fff

    .line 30
    .line 31
    if-ge v2, v0, :cond_3

    .line 32
    .line 33
    const v0, 0xfffe

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    const v0, 0xffff

    .line 38
    .line 39
    .line 40
    if-ge v2, v0, :cond_4

    .line 41
    .line 42
    const/16 v0, 0x7ffe

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_4
    const v0, 0x3ffff

    .line 46
    .line 47
    .line 48
    if-ge v2, v0, :cond_6

    .line 49
    .line 50
    const/16 v0, 0x1ffe

    .line 51
    .line 52
    :goto_2
    if-ne p3, v1, :cond_5

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_5
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    :goto_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    invoke-static {p0, p1, p2, v1}, Lnf0;->a(IIII)J

    .line 64
    .line 65
    .line 66
    move-result-wide p0

    .line 67
    return-wide p0

    .line 68
    :cond_6
    invoke-static {v2}, Lnf0;->j(I)Ljava/lang/Void;

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lp61;->q()V

    .line 72
    .line 73
    .line 74
    const-wide/16 p0, 0x0

    .line 75
    .line 76
    return-wide p0
.end method

.method public static final u(Landroid/view/View;)Lp22;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :goto_0
    const/4 v0, 0x0

    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    const v1, 0x7f0900d7

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    instance-of v2, v1, Lp22;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    check-cast v1, Lp22;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    move-object v1, v0

    .line 22
    :goto_1
    if-eqz v1, :cond_1

    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_1
    invoke-static {p0}, Lfl4;->q(Landroid/view/View;)Landroid/view/ViewParent;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    instance-of v1, p0, Landroid/view/View;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    check-cast p0, Landroid/view/View;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move-object p0, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    return-object v0
.end method

.method public static v(Ljava/lang/String;)Lpb2;
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lpb2;->b:Lw43;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, p0}, Lw43;->a(ILjava/lang/String;)Lqd1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/16 v2, 0x22

    .line 12
    .line 13
    if-eqz v0, :cond_7

    .line 14
    .line 15
    invoke-virtual {v0}, Lqd1;->y()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lqa2;

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-virtual {v3, v4}, Lqa2;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/String;

    .line 27
    .line 28
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 29
    .line 30
    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lqd1;->y()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    check-cast v6, Lqa2;

    .line 42
    .line 43
    const/4 v7, 0x2

    .line 44
    invoke-virtual {v6, v7}, Lqa2;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v6, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-instance v6, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lqd1;->z()Lms1;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget v0, v0, Lks1;->o:I

    .line 67
    .line 68
    :goto_0
    add-int/2addr v0, v4

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-ge v0, v8, :cond_6

    .line 74
    .line 75
    sget-object v8, Lpb2;->c:Lw43;

    .line 76
    .line 77
    invoke-virtual {v8, v0, p0}, Lw43;->a(ILjava/lang/String;)Lqd1;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    const/4 v9, 0x0

    .line 82
    if-eqz v8, :cond_5

    .line 83
    .line 84
    iget-object v0, v8, Lqd1;->q:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, Lra2;

    .line 87
    .line 88
    invoke-virtual {v0, v4}, Lra2;->d(I)Lpa2;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    if-eqz v10, :cond_0

    .line 93
    .line 94
    iget-object v10, v10, Lpa2;->a:Ljava/lang/String;

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_0
    move-object v10, v9

    .line 98
    :goto_1
    if-nez v10, :cond_1

    .line 99
    .line 100
    invoke-virtual {v8}, Lqd1;->z()Lms1;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget v0, v0, Lks1;->o:I

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v0, v7}, Lra2;->d(I)Lpa2;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    if-eqz v11, :cond_2

    .line 112
    .line 113
    iget-object v9, v11, Lpa2;->a:Ljava/lang/String;

    .line 114
    .line 115
    :cond_2
    if-nez v9, :cond_3

    .line 116
    .line 117
    const/4 v9, 0x3

    .line 118
    invoke-virtual {v0, v9}, Lra2;->d(I)Lpa2;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    iget-object v9, v0, Lpa2;->a:Ljava/lang/String;

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-lez v0, :cond_4

    .line 133
    .line 134
    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    const/16 v11, 0x27

    .line 139
    .line 140
    invoke-static {v0, v11, v1}, Lqj0;->F(CCZ)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_4

    .line 145
    .line 146
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-lez v0, :cond_4

    .line 151
    .line 152
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    sub-int/2addr v0, v4

    .line 157
    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    invoke-static {v0, v11, v1}, Lqj0;->F(CCZ)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_4

    .line 166
    .line 167
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-le v0, v7, :cond_4

    .line 172
    .line 173
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    sub-int/2addr v0, v4

    .line 178
    invoke-virtual {v9, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v9

    .line 182
    :cond_4
    :goto_2
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    invoke-virtual {v8}, Lqd1;->z()Lms1;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    iget v0, v0, Lks1;->o:I

    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    const-string v1, "\" for: \""

    .line 200
    .line 201
    const-string v3, "Parameter is not formatted correctly: \""

    .line 202
    .line 203
    invoke-static {v3, v0, v1, p0, v2}, Lp61;->n(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 204
    .line 205
    .line 206
    return-object v9

    .line 207
    :cond_6
    new-instance v0, Lpb2;

    .line 208
    .line 209
    new-array v1, v1, [Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    check-cast v1, [Ljava/lang/String;

    .line 216
    .line 217
    invoke-direct {v0, p0, v3, v5, v1}, Lpb2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    return-object v0

    .line 221
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 222
    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string v3, "No subtype found for: \""

    .line 226
    .line 227
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw v0
.end method

.method public static w(Lc20;)Le20;
    .locals 3

    .line 1
    new-instance v0, Lb20;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lj73;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lb20;->c:Lj73;

    .line 12
    .line 13
    new-instance v1, Le20;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Le20;-><init>(Lb20;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lb20;->b:Le20;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, v0, Lb20;->a:Ljava/lang/Object;

    .line 25
    .line 26
    :try_start_0
    invoke-interface {p0, v0}, Lc20;->d(Lb20;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    iput-object p0, v0, Lb20;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    return-object v1

    .line 35
    :catch_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-object v1

    .line 38
    :goto_0
    iget-object v0, v1, Le20;->o:Ld20;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Lb2;->k(Ljava/lang/Throwable;)Z

    .line 41
    .line 42
    .line 43
    return-object v1
.end method

.method public static final x(Li50;)Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p0, Lg50;

    .line 5
    .line 6
    invoke-interface {p0}, Lg50;->a()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public static final y(Li50;)Ljava/lang/Class;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p0, Lg50;

    .line 5
    .line 6
    invoke-interface {p0}, Lg50;->a()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    sparse-switch v1, :sswitch_data_0

    .line 27
    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :sswitch_0
    const-string v1, "short"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-class p0, Ljava/lang/Short;

    .line 41
    .line 42
    return-object p0

    .line 43
    :sswitch_1
    const-string v1, "float"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-class p0, Ljava/lang/Float;

    .line 53
    .line 54
    return-object p0

    .line 55
    :sswitch_2
    const-string v1, "boolean"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const-class p0, Ljava/lang/Boolean;

    .line 65
    .line 66
    return-object p0

    .line 67
    :sswitch_3
    const-string v1, "void"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_4

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    const-class p0, Ljava/lang/Void;

    .line 77
    .line 78
    return-object p0

    .line 79
    :sswitch_4
    const-string v1, "long"

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_5

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    const-class p0, Ljava/lang/Long;

    .line 89
    .line 90
    return-object p0

    .line 91
    :sswitch_5
    const-string v1, "char"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_6

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    const-class p0, Ljava/lang/Character;

    .line 101
    .line 102
    return-object p0

    .line 103
    :sswitch_6
    const-string v1, "byte"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_7

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_7
    const-class p0, Ljava/lang/Byte;

    .line 113
    .line 114
    return-object p0

    .line 115
    :sswitch_7
    const-string v1, "int"

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_8

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_8
    const-class p0, Ljava/lang/Integer;

    .line 125
    .line 126
    return-object p0

    .line 127
    :sswitch_8
    const-string v1, "double"

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_9

    .line 134
    .line 135
    :goto_0
    return-object p0

    .line 136
    :cond_9
    const-class p0, Ljava/lang/Double;

    .line 137
    .line 138
    return-object p0

    .line 139
    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_6
        0x2e9356 -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch
.end method

.method public static final z(Lya2;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-interface {p0}, Lya2;->i()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lly1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Lly1;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v1

    .line 14
    :goto_0
    if-eqz p0, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lly1;->B:Ljava/lang/String;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    return-object v1
.end method

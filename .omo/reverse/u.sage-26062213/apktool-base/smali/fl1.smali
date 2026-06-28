.class public final Lfl1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final q:Ljava/util/logging/Logger;


# instance fields
.field public final n:Lfz;

.field public final o:Lel1;

.field public final p:Lkk1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ltk1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sput-object v0, Lfl1;->q:Ljava/util/logging/Logger;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ld23;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lfl1;->n:Lfz;

    .line 8
    .line 9
    new-instance v0, Lel1;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lel1;-><init>(Lfz;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lfl1;->o:Lel1;

    .line 15
    .line 16
    new-instance p1, Lkk1;

    .line 17
    .line 18
    invoke-direct {p1, v0}, Lkk1;-><init>(Lel1;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lfl1;->p:Lkk1;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final A(Lbl1;III)V
    .locals 4

    .line 1
    if-eqz p4, :cond_2

    .line 2
    .line 3
    and-int/lit8 v0, p3, 0x8

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lfl1;->n:Lfz;

    .line 9
    .line 10
    invoke-interface {v0}, Lfz;->readByte()B

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sget-object v2, Lfi4;->a:[B

    .line 15
    .line 16
    and-int/lit16 v0, v0, 0xff

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    iget-object v2, p0, Lfl1;->n:Lfz;

    .line 21
    .line 22
    invoke-interface {v2}, Lfz;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const v3, 0x7fffffff

    .line 27
    .line 28
    .line 29
    and-int/2addr v2, v3

    .line 30
    add-int/lit8 p2, p2, -0x4

    .line 31
    .line 32
    invoke-static {p2, p3, v0}, Lqj0;->Q(III)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-virtual {p0, p2, v0, p3, p4}, Lfl1;->r(IIII)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    iget-object p1, p1, Lbl1;->p:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lcl1;

    .line 43
    .line 44
    monitor-enter p1

    .line 45
    :try_start_0
    iget-object p2, p1, Lcl1;->L:Ljava/util/LinkedHashSet;

    .line 46
    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_1

    .line 56
    .line 57
    sget-object p0, Ld21;->q:Ld21;

    .line 58
    .line 59
    invoke-virtual {p1, v2, p0}, Lcl1;->F(ILd21;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    monitor-exit p1

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :try_start_1
    iget-object p2, p1, Lcl1;->L:Ljava/util/LinkedHashSet;

    .line 67
    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    monitor-exit p1

    .line 76
    iget-object p2, p1, Lcl1;->v:Lsw3;

    .line 77
    .line 78
    new-instance p3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    iget-object p4, p1, Lcl1;->p:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const/16 p4, 0x5b

    .line 89
    .line 90
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p4, "] onRequest"

    .line 97
    .line 98
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    new-instance p4, Lxk1;

    .line 106
    .line 107
    invoke-direct {p4, p1, v2, p0, v1}, Lxk1;-><init>(Lcl1;ILjava/lang/Object;I)V

    .line 108
    .line 109
    .line 110
    invoke-static {p2, p3, p4}, Lsw3;->b(Lsw3;Ljava/lang/String;Lne1;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :goto_1
    monitor-exit p1

    .line 115
    throw p0

    .line 116
    :cond_2
    const-string p0, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    .line 117
    .line 118
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final b(ZLbl1;)Z
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfl1;->n:Lfz;

    .line 3
    .line 4
    const-wide/16 v2, 0x9

    .line 5
    .line 6
    invoke-interface {v1, v2, v3}, Lfz;->d0(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lfl1;->n:Lfz;

    .line 10
    .line 11
    invoke-static {v1}, Lfi4;->k(Lfz;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v2, 0x4000

    .line 16
    .line 17
    if-gt v1, v2, :cond_2f

    .line 18
    .line 19
    iget-object v3, p0, Lfl1;->n:Lfz;

    .line 20
    .line 21
    invoke-interface {v3}, Lfz;->readByte()B

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    and-int/lit16 v3, v3, 0xff

    .line 26
    .line 27
    iget-object v4, p0, Lfl1;->n:Lfz;

    .line 28
    .line 29
    invoke-interface {v4}, Lfz;->readByte()B

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    and-int/lit16 v5, v4, 0xff

    .line 34
    .line 35
    iget-object v6, p0, Lfl1;->n:Lfz;

    .line 36
    .line 37
    invoke-interface {v6}, Lfz;->readInt()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    const v7, 0x7fffffff

    .line 42
    .line 43
    .line 44
    and-int/2addr v7, v6

    .line 45
    const/16 v8, 0x8

    .line 46
    .line 47
    const/4 v9, 0x1

    .line 48
    if-eq v3, v8, :cond_0

    .line 49
    .line 50
    sget-object v10, Lfl1;->q:Ljava/util/logging/Logger;

    .line 51
    .line 52
    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 53
    .line 54
    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 55
    .line 56
    .line 57
    move-result v11

    .line 58
    if-eqz v11, :cond_0

    .line 59
    .line 60
    invoke-static {v9, v7, v1, v3, v5}, Ltk1;->b(ZIIII)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    const/4 v10, 0x4

    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    if-ne v3, v10, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const-string p0, "Expected a SETTINGS frame but was "

    .line 74
    .line 75
    invoke-static {v3}, Ltk1;->a(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1, p0}, Lp61;->r(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return v0

    .line 83
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 84
    const/4 v11, 0x5

    .line 85
    const/4 v12, 0x2

    .line 86
    packed-switch v3, :pswitch_data_0

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lfl1;->n:Lfz;

    .line 90
    .line 91
    int-to-long p1, v1

    .line 92
    invoke-interface {p0, p1, p2}, Lfz;->skip(J)V

    .line 93
    .line 94
    .line 95
    return v9

    .line 96
    :pswitch_0
    const-string p1, "TYPE_WINDOW_UPDATE length !=4: "

    .line 97
    .line 98
    if-ne v1, v10, :cond_7

    .line 99
    .line 100
    :try_start_1
    iget-object p0, p0, Lfl1;->n:Lfz;

    .line 101
    .line 102
    invoke-interface {p0}, Lfz;->readInt()I

    .line 103
    .line 104
    .line 105
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    const-wide/32 v2, 0x7fffffff

    .line 107
    .line 108
    .line 109
    int-to-long p0, p0

    .line 110
    and-long/2addr p0, v2

    .line 111
    const-wide/16 v2, 0x0

    .line 112
    .line 113
    cmp-long v0, p0, v2

    .line 114
    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    sget-object v2, Lfl1;->q:Ljava/util/logging/Logger;

    .line 118
    .line 119
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_3

    .line 126
    .line 127
    invoke-static {v9, v7, v1, p0, p1}, Ltk1;->c(ZIIJ)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_3
    iget-object p2, p2, Lbl1;->p:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast p2, Lcl1;

    .line 137
    .line 138
    if-nez v7, :cond_4

    .line 139
    .line 140
    monitor-enter p2

    .line 141
    :try_start_2
    iget-wide v0, p2, Lcl1;->H:J

    .line 142
    .line 143
    add-long/2addr v0, p0

    .line 144
    iput-wide v0, p2, Lcl1;->H:J

    .line 145
    .line 146
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    .line 148
    .line 149
    monitor-exit p2

    .line 150
    return v9

    .line 151
    :catchall_0
    move-exception p0

    .line 152
    monitor-exit p2

    .line 153
    throw p0

    .line 154
    :cond_4
    invoke-virtual {p2, v7}, Lcl1;->j(I)Ljl1;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    if-eqz p2, :cond_29

    .line 159
    .line 160
    monitor-enter p2

    .line 161
    :try_start_3
    iget-wide v1, p2, Ljl1;->r:J

    .line 162
    .line 163
    add-long/2addr v1, p0

    .line 164
    iput-wide v1, p2, Ljl1;->r:J

    .line 165
    .line 166
    if-lez v0, :cond_5

    .line 167
    .line 168
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 169
    .line 170
    .line 171
    :cond_5
    monitor-exit p2

    .line 172
    return v9

    .line 173
    :catchall_1
    move-exception p0

    .line 174
    monitor-exit p2

    .line 175
    throw p0

    .line 176
    :cond_6
    :try_start_4
    new-instance p0, Ljava/io/IOException;

    .line 177
    .line 178
    const-string p1, "windowSizeIncrement was 0"

    .line 179
    .line 180
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p0

    .line 184
    :catch_0
    move-exception p0

    .line 185
    goto :goto_1

    .line 186
    :cond_7
    new-instance p0, Ljava/io/IOException;

    .line 187
    .line 188
    new-instance p2, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 204
    :goto_1
    sget-object p1, Lfl1;->q:Ljava/util/logging/Logger;

    .line 205
    .line 206
    invoke-static {v9, v7, v1, v8, v5}, Ltk1;->b(ZIIII)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p0

    .line 214
    :pswitch_1
    if-lt v1, v8, :cond_f

    .line 215
    .line 216
    if-nez v7, :cond_e

    .line 217
    .line 218
    iget-object v2, p0, Lfl1;->n:Lfz;

    .line 219
    .line 220
    invoke-interface {v2}, Lfz;->readInt()I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    iget-object v3, p0, Lfl1;->n:Lfz;

    .line 225
    .line 226
    invoke-interface {v3}, Lfz;->readInt()I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    sub-int/2addr v1, v8

    .line 231
    sget-object v4, Ld21;->o:Lb21;

    .line 232
    .line 233
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    invoke-static {}, Ld21;->values()[Ld21;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    array-length v5, v4

    .line 241
    move v6, v0

    .line 242
    :goto_2
    if-ge v6, v5, :cond_9

    .line 243
    .line 244
    aget-object v7, v4, v6

    .line 245
    .line 246
    iget v8, v7, Ld21;->n:I

    .line 247
    .line 248
    if-ne v8, v3, :cond_8

    .line 249
    .line 250
    move-object p1, v7

    .line 251
    goto :goto_3

    .line 252
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 253
    .line 254
    goto :goto_2

    .line 255
    :cond_9
    :goto_3
    if-eqz p1, :cond_d

    .line 256
    .line 257
    sget-object p1, Lg00;->q:Lg00;

    .line 258
    .line 259
    if-lez v1, :cond_a

    .line 260
    .line 261
    iget-object p0, p0, Lfl1;->n:Lfz;

    .line 262
    .line 263
    int-to-long v3, v1

    .line 264
    invoke-interface {p0, v3, v4}, Lfz;->p(J)Lg00;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1}, Lg00;->c()I

    .line 272
    .line 273
    .line 274
    iget-object p0, p2, Lbl1;->p:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast p0, Lcl1;

    .line 277
    .line 278
    monitor-enter p0

    .line 279
    :try_start_5
    iget-object p1, p0, Lcl1;->o:Ljava/util/LinkedHashMap;

    .line 280
    .line 281
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    new-array v1, v0, [Ljl1;

    .line 286
    .line 287
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    iput-boolean v9, p0, Lcl1;->s:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 292
    .line 293
    monitor-exit p0

    .line 294
    check-cast p1, [Ljl1;

    .line 295
    .line 296
    array-length p0, p1

    .line 297
    :goto_4
    if-ge v0, p0, :cond_29

    .line 298
    .line 299
    aget-object v1, p1, v0

    .line 300
    .line 301
    iget v3, v1, Ljl1;->n:I

    .line 302
    .line 303
    if-le v3, v2, :cond_c

    .line 304
    .line 305
    invoke-virtual {v1}, Ljl1;->i()Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    if-eqz v3, :cond_c

    .line 310
    .line 311
    sget-object v3, Ld21;->t:Ld21;

    .line 312
    .line 313
    monitor-enter v1

    .line 314
    :try_start_6
    invoke-virtual {v1}, Ljl1;->h()Ld21;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    if-nez v4, :cond_b

    .line 319
    .line 320
    iput-object v3, v1, Ljl1;->y:Ld21;

    .line 321
    .line 322
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 323
    .line 324
    .line 325
    goto :goto_5

    .line 326
    :catchall_2
    move-exception p0

    .line 327
    goto :goto_6

    .line 328
    :cond_b
    :goto_5
    monitor-exit v1

    .line 329
    iget-object v3, p2, Lbl1;->p:Ljava/lang/Object;

    .line 330
    .line 331
    check-cast v3, Lcl1;

    .line 332
    .line 333
    iget v1, v1, Ljl1;->n:I

    .line 334
    .line 335
    invoke-virtual {v3, v1}, Lcl1;->r(I)Ljl1;

    .line 336
    .line 337
    .line 338
    goto :goto_7

    .line 339
    :goto_6
    monitor-exit v1

    .line 340
    throw p0

    .line 341
    :cond_c
    :goto_7
    add-int/lit8 v0, v0, 0x1

    .line 342
    .line 343
    goto :goto_4

    .line 344
    :catchall_3
    move-exception p1

    .line 345
    monitor-exit p0

    .line 346
    throw p1

    .line 347
    :cond_d
    const-string p0, "TYPE_GOAWAY unexpected error code: "

    .line 348
    .line 349
    invoke-static {v3, p0}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p0

    .line 353
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    return v0

    .line 357
    :cond_e
    const-string p0, "TYPE_GOAWAY streamId != 0"

    .line 358
    .line 359
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    return v0

    .line 363
    :cond_f
    const-string p0, "TYPE_GOAWAY length < 8: "

    .line 364
    .line 365
    invoke-static {v1, p0}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p0

    .line 369
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    return v0

    .line 373
    :pswitch_2
    if-ne v1, v8, :cond_16

    .line 374
    .line 375
    if-nez v7, :cond_15

    .line 376
    .line 377
    iget-object p1, p0, Lfl1;->n:Lfz;

    .line 378
    .line 379
    invoke-interface {p1}, Lfz;->readInt()I

    .line 380
    .line 381
    .line 382
    move-result p1

    .line 383
    iget-object p0, p0, Lfl1;->n:Lfz;

    .line 384
    .line 385
    invoke-interface {p0}, Lfz;->readInt()I

    .line 386
    .line 387
    .line 388
    move-result p0

    .line 389
    and-int/lit8 v1, v4, 0x1

    .line 390
    .line 391
    if-eqz v1, :cond_10

    .line 392
    .line 393
    move v0, v9

    .line 394
    :cond_10
    iget-object v1, p2, Lbl1;->p:Ljava/lang/Object;

    .line 395
    .line 396
    check-cast v1, Lcl1;

    .line 397
    .line 398
    if-eqz v0, :cond_14

    .line 399
    .line 400
    monitor-enter v1

    .line 401
    const-wide/16 v2, 0x1

    .line 402
    .line 403
    if-eq p1, v9, :cond_13

    .line 404
    .line 405
    if-eq p1, v12, :cond_12

    .line 406
    .line 407
    const/4 p0, 0x3

    .line 408
    if-eq p1, p0, :cond_11

    .line 409
    .line 410
    goto :goto_8

    .line 411
    :cond_11
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 412
    .line 413
    .line 414
    goto :goto_8

    .line 415
    :catchall_4
    move-exception p0

    .line 416
    goto :goto_9

    .line 417
    :cond_12
    iget-wide p0, v1, Lcl1;->A:J

    .line 418
    .line 419
    add-long/2addr p0, v2

    .line 420
    iput-wide p0, v1, Lcl1;->A:J

    .line 421
    .line 422
    goto :goto_8

    .line 423
    :cond_13
    iget-wide p0, v1, Lcl1;->y:J

    .line 424
    .line 425
    add-long/2addr p0, v2

    .line 426
    iput-wide p0, v1, Lcl1;->y:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 427
    .line 428
    :goto_8
    monitor-exit v1

    .line 429
    return v9

    .line 430
    :goto_9
    monitor-exit v1

    .line 431
    throw p0

    .line 432
    :cond_14
    iget-object v0, v1, Lcl1;->u:Lsw3;

    .line 433
    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .line 438
    .line 439
    iget-object v2, p2, Lbl1;->p:Ljava/lang/Object;

    .line 440
    .line 441
    check-cast v2, Lcl1;

    .line 442
    .line 443
    iget-object v2, v2, Lcl1;->p:Ljava/lang/String;

    .line 444
    .line 445
    const-string v3, " ping"

    .line 446
    .line 447
    invoke-static {v1, v2, v3}, Lxw1;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    iget-object p2, p2, Lbl1;->p:Ljava/lang/Object;

    .line 452
    .line 453
    check-cast p2, Lcl1;

    .line 454
    .line 455
    new-instance v2, Lal1;

    .line 456
    .line 457
    invoke-direct {v2, p2, p1, p0}, Lal1;-><init>(Lcl1;II)V

    .line 458
    .line 459
    .line 460
    invoke-static {v0, v1, v2}, Lsw3;->b(Lsw3;Ljava/lang/String;Lne1;)V

    .line 461
    .line 462
    .line 463
    return v9

    .line 464
    :cond_15
    const-string p0, "TYPE_PING streamId != 0"

    .line 465
    .line 466
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    return v0

    .line 470
    :cond_16
    const-string p0, "TYPE_PING length != 8: "

    .line 471
    .line 472
    invoke-static {v1, p0}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object p0

    .line 476
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    return v0

    .line 480
    :pswitch_3
    invoke-virtual {p0, p2, v1, v5, v7}, Lfl1;->A(Lbl1;III)V

    .line 481
    .line 482
    .line 483
    return v9

    .line 484
    :pswitch_4
    iget-object p0, p0, Lfl1;->n:Lfz;

    .line 485
    .line 486
    if-nez v7, :cond_24

    .line 487
    .line 488
    and-int/lit8 p1, v4, 0x1

    .line 489
    .line 490
    if-eqz p1, :cond_18

    .line 491
    .line 492
    if-nez v1, :cond_17

    .line 493
    .line 494
    goto/16 :goto_10

    .line 495
    .line 496
    :cond_17
    const-string p0, "FRAME_SIZE_ERROR ack frame should be empty!"

    .line 497
    .line 498
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    return v0

    .line 502
    :cond_18
    rem-int/lit8 p1, v1, 0x6

    .line 503
    .line 504
    if-nez p1, :cond_23

    .line 505
    .line 506
    new-instance p1, Llk3;

    .line 507
    .line 508
    invoke-direct {p1}, Llk3;-><init>()V

    .line 509
    .line 510
    .line 511
    invoke-static {v0, v1}, Lix;->a0(II)Lms1;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    const/4 v3, 0x6

    .line 516
    invoke-static {v1, v3}, Lix;->T(Lms1;I)Lks1;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    iget v3, v1, Lks1;->n:I

    .line 521
    .line 522
    iget v4, v1, Lks1;->o:I

    .line 523
    .line 524
    iget v1, v1, Lks1;->p:I

    .line 525
    .line 526
    if-lez v1, :cond_19

    .line 527
    .line 528
    if-le v3, v4, :cond_1a

    .line 529
    .line 530
    :cond_19
    if-gez v1, :cond_22

    .line 531
    .line 532
    if-gt v4, v3, :cond_22

    .line 533
    .line 534
    :cond_1a
    :goto_a
    invoke-interface {p0}, Lfz;->readShort()S

    .line 535
    .line 536
    .line 537
    move-result v5

    .line 538
    sget-object v6, Lfi4;->a:[B

    .line 539
    .line 540
    const v6, 0xffff

    .line 541
    .line 542
    .line 543
    and-int/2addr v5, v6

    .line 544
    invoke-interface {p0}, Lfz;->readInt()I

    .line 545
    .line 546
    .line 547
    move-result v6

    .line 548
    if-eq v5, v12, :cond_1f

    .line 549
    .line 550
    if-eq v5, v10, :cond_1d

    .line 551
    .line 552
    if-eq v5, v11, :cond_1b

    .line 553
    .line 554
    goto :goto_b

    .line 555
    :cond_1b
    if-lt v6, v2, :cond_1c

    .line 556
    .line 557
    const v7, 0xffffff

    .line 558
    .line 559
    .line 560
    if-gt v6, v7, :cond_1c

    .line 561
    .line 562
    goto :goto_b

    .line 563
    :cond_1c
    const-string p0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "

    .line 564
    .line 565
    invoke-static {v6, p0}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object p0

    .line 569
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    return v0

    .line 573
    :cond_1d
    if-ltz v6, :cond_1e

    .line 574
    .line 575
    goto :goto_b

    .line 576
    :cond_1e
    const-string p0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    .line 577
    .line 578
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    return v0

    .line 582
    :cond_1f
    if-eqz v6, :cond_21

    .line 583
    .line 584
    if-ne v6, v9, :cond_20

    .line 585
    .line 586
    goto :goto_b

    .line 587
    :cond_20
    const-string p0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    .line 588
    .line 589
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    return v0

    .line 593
    :cond_21
    :goto_b
    invoke-virtual {p1, v5, v6}, Llk3;->b(II)V

    .line 594
    .line 595
    .line 596
    if-eq v3, v4, :cond_22

    .line 597
    .line 598
    add-int/2addr v3, v1

    .line 599
    goto :goto_a

    .line 600
    :cond_22
    iget-object p0, p2, Lbl1;->p:Ljava/lang/Object;

    .line 601
    .line 602
    check-cast p0, Lcl1;

    .line 603
    .line 604
    iget-object v0, p0, Lcl1;->u:Lsw3;

    .line 605
    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    .line 607
    .line 608
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    .line 610
    .line 611
    iget-object p0, p0, Lcl1;->p:Ljava/lang/String;

    .line 612
    .line 613
    const-string v2, " applyAndAckSettings"

    .line 614
    .line 615
    invoke-static {v1, p0, v2}, Lxw1;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object p0

    .line 619
    new-instance v1, Lh4;

    .line 620
    .line 621
    const/16 v2, 0xf

    .line 622
    .line 623
    invoke-direct {v1, v2, p2, p1}, Lh4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 624
    .line 625
    .line 626
    invoke-static {v0, p0, v1}, Lsw3;->b(Lsw3;Ljava/lang/String;Lne1;)V

    .line 627
    .line 628
    .line 629
    return v9

    .line 630
    :cond_23
    const-string p0, "TYPE_SETTINGS length % 6 != 0: "

    .line 631
    .line 632
    invoke-static {v1, p0}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object p0

    .line 636
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    return v0

    .line 640
    :cond_24
    const-string p0, "TYPE_SETTINGS streamId != 0"

    .line 641
    .line 642
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    return v0

    .line 646
    :pswitch_5
    if-ne v1, v10, :cond_2c

    .line 647
    .line 648
    if-eqz v7, :cond_2b

    .line 649
    .line 650
    iget-object p0, p0, Lfl1;->n:Lfz;

    .line 651
    .line 652
    invoke-interface {p0}, Lfz;->readInt()I

    .line 653
    .line 654
    .line 655
    move-result p0

    .line 656
    sget-object v1, Ld21;->o:Lb21;

    .line 657
    .line 658
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 659
    .line 660
    .line 661
    invoke-static {}, Ld21;->values()[Ld21;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    array-length v2, v1

    .line 666
    move v3, v0

    .line 667
    :goto_c
    if-ge v3, v2, :cond_26

    .line 668
    .line 669
    aget-object v4, v1, v3

    .line 670
    .line 671
    iget v5, v4, Ld21;->n:I

    .line 672
    .line 673
    if-ne v5, p0, :cond_25

    .line 674
    .line 675
    move-object p1, v4

    .line 676
    goto :goto_d

    .line 677
    :cond_25
    add-int/lit8 v3, v3, 0x1

    .line 678
    .line 679
    goto :goto_c

    .line 680
    :cond_26
    :goto_d
    if-eqz p1, :cond_2a

    .line 681
    .line 682
    iget-object p0, p2, Lbl1;->p:Ljava/lang/Object;

    .line 683
    .line 684
    check-cast p0, Lcl1;

    .line 685
    .line 686
    if-eqz v7, :cond_27

    .line 687
    .line 688
    and-int/lit8 p2, v6, 0x1

    .line 689
    .line 690
    if-nez p2, :cond_27

    .line 691
    .line 692
    iget-object p2, p0, Lcl1;->v:Lsw3;

    .line 693
    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    .line 695
    .line 696
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 697
    .line 698
    .line 699
    iget-object v1, p0, Lcl1;->p:Ljava/lang/String;

    .line 700
    .line 701
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    const/16 v1, 0x5b

    .line 705
    .line 706
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    const-string v1, "] onReset"

    .line 713
    .line 714
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    new-instance v1, Lxk1;

    .line 722
    .line 723
    invoke-direct {v1, p0, v7, p1, v9}, Lxk1;-><init>(Lcl1;ILjava/lang/Object;I)V

    .line 724
    .line 725
    .line 726
    invoke-static {p2, v0, v1}, Lsw3;->b(Lsw3;Ljava/lang/String;Lne1;)V

    .line 727
    .line 728
    .line 729
    return v9

    .line 730
    :cond_27
    invoke-virtual {p0, v7}, Lcl1;->r(I)Ljl1;

    .line 731
    .line 732
    .line 733
    move-result-object p0

    .line 734
    if-eqz p0, :cond_29

    .line 735
    .line 736
    monitor-enter p0

    .line 737
    :try_start_8
    invoke-virtual {p0}, Ljl1;->h()Ld21;

    .line 738
    .line 739
    .line 740
    move-result-object p2

    .line 741
    if-nez p2, :cond_28

    .line 742
    .line 743
    iput-object p1, p0, Ljl1;->y:Ld21;

    .line 744
    .line 745
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 746
    .line 747
    .line 748
    goto :goto_e

    .line 749
    :catchall_5
    move-exception p1

    .line 750
    goto :goto_f

    .line 751
    :cond_28
    :goto_e
    monitor-exit p0

    .line 752
    return v9

    .line 753
    :goto_f
    monitor-exit p0

    .line 754
    throw p1

    .line 755
    :cond_29
    :goto_10
    return v9

    .line 756
    :cond_2a
    const-string p1, "TYPE_RST_STREAM unexpected error code: "

    .line 757
    .line 758
    invoke-static {p0, p1}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object p0

    .line 762
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    return v0

    .line 766
    :cond_2b
    const-string p0, "TYPE_RST_STREAM streamId == 0"

    .line 767
    .line 768
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    return v0

    .line 772
    :cond_2c
    const-string p0, "TYPE_RST_STREAM length: "

    .line 773
    .line 774
    const-string p1, " != 4"

    .line 775
    .line 776
    invoke-static {p0, v1, p1}, Lxw1;->q(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object p0

    .line 780
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    return v0

    .line 784
    :pswitch_6
    if-ne v1, v11, :cond_2e

    .line 785
    .line 786
    if-eqz v7, :cond_2d

    .line 787
    .line 788
    iget-object p0, p0, Lfl1;->n:Lfz;

    .line 789
    .line 790
    invoke-interface {p0}, Lfz;->readInt()I

    .line 791
    .line 792
    .line 793
    invoke-interface {p0}, Lfz;->readByte()B

    .line 794
    .line 795
    .line 796
    return v9

    .line 797
    :cond_2d
    const-string p0, "TYPE_PRIORITY streamId == 0"

    .line 798
    .line 799
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    return v0

    .line 803
    :cond_2e
    const-string p0, "TYPE_PRIORITY length: "

    .line 804
    .line 805
    const-string p1, " != 5"

    .line 806
    .line 807
    invoke-static {p0, v1, p1}, Lxw1;->q(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object p0

    .line 811
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    return v0

    .line 815
    :pswitch_7
    invoke-virtual {p0, p2, v1, v5, v7}, Lfl1;->z(Lbl1;III)V

    .line 816
    .line 817
    .line 818
    return v9

    .line 819
    :pswitch_8
    invoke-virtual {p0, p2, v1, v5, v7}, Lfl1;->j(Lbl1;III)V

    .line 820
    .line 821
    .line 822
    return v9

    .line 823
    :cond_2f
    const-string p0, "FRAME_SIZE_ERROR: "

    .line 824
    .line 825
    invoke-static {v1, p0}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object p0

    .line 829
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    :catch_1
    return v0

    .line 833
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lfl1;->n:Lfz;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j(Lbl1;III)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    if-eqz v3, :cond_f

    .line 10
    .line 11
    and-int/lit8 v4, v2, 0x1

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    move v4, v6

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v4, v6

    .line 19
    const/4 v6, 0x0

    .line 20
    :goto_0
    and-int/lit8 v7, v2, 0x20

    .line 21
    .line 22
    if-nez v7, :cond_e

    .line 23
    .line 24
    and-int/lit8 v7, v2, 0x8

    .line 25
    .line 26
    if-eqz v7, :cond_1

    .line 27
    .line 28
    iget-object v7, v0, Lfl1;->n:Lfz;

    .line 29
    .line 30
    invoke-interface {v7}, Lfz;->readByte()B

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    sget-object v8, Lfi4;->a:[B

    .line 35
    .line 36
    and-int/lit16 v7, v7, 0xff

    .line 37
    .line 38
    :goto_1
    move/from16 v8, p2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    const/4 v7, 0x0

    .line 42
    goto :goto_1

    .line 43
    :goto_2
    invoke-static {v8, v2, v7}, Lqj0;->Q(III)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iget-object v8, v0, Lfl1;->n:Lfz;

    .line 48
    .line 49
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget-object v9, v1, Lbl1;->p:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v9, Lcl1;

    .line 55
    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    and-int/lit8 v10, v3, 0x1

    .line 59
    .line 60
    if-nez v10, :cond_2

    .line 61
    .line 62
    move v10, v4

    .line 63
    goto :goto_3

    .line 64
    :cond_2
    const/4 v10, 0x0

    .line 65
    :goto_3
    if-eqz v10, :cond_3

    .line 66
    .line 67
    new-instance v4, Lsy;

    .line 68
    .line 69
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    int-to-long v10, v2

    .line 73
    invoke-interface {v8, v10, v11}, Lfz;->d0(J)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v8, v10, v11, v4}, Lyp3;->l(JLsy;)J

    .line 77
    .line 78
    .line 79
    iget-object v8, v9, Lcl1;->v:Lsw3;

    .line 80
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object v5, v9, Lcl1;->p:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const/16 v5, 0x5b

    .line 92
    .line 93
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v5, "] onData"

    .line 100
    .line 101
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    new-instance v1, Lwk1;

    .line 109
    .line 110
    move v5, v2

    .line 111
    move-object v2, v9

    .line 112
    invoke-direct/range {v1 .. v6}, Lwk1;-><init>(Lcl1;ILsy;IZ)V

    .line 113
    .line 114
    .line 115
    invoke-static {v8, v10, v1}, Lsw3;->b(Lsw3;Ljava/lang/String;Lne1;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_a

    .line 119
    .line 120
    :cond_3
    invoke-virtual {v9, v3}, Lcl1;->j(I)Ljl1;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    if-nez v9, :cond_4

    .line 125
    .line 126
    iget-object v4, v1, Lbl1;->p:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v4, Lcl1;

    .line 129
    .line 130
    sget-object v5, Ld21;->q:Ld21;

    .line 131
    .line 132
    invoke-virtual {v4, v3, v5}, Lcl1;->F(ILd21;)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v1, Lbl1;->p:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v1, Lcl1;

    .line 138
    .line 139
    int-to-long v2, v2

    .line 140
    invoke-virtual {v1, v2, v3}, Lcl1;->A(J)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v8, v2, v3}, Lfz;->skip(J)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_a

    .line 147
    .line 148
    :cond_4
    sget-object v1, Lhi4;->a:Ljava/util/TimeZone;

    .line 149
    .line 150
    iget-object v1, v9, Ljl1;->u:Lhl1;

    .line 151
    .line 152
    int-to-long v2, v2

    .line 153
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    move-wide v10, v2

    .line 157
    :goto_4
    const-wide/16 v12, 0x0

    .line 158
    .line 159
    cmp-long v14, v10, v12

    .line 160
    .line 161
    iget-object v15, v1, Lhl1;->s:Ljl1;

    .line 162
    .line 163
    if-lez v14, :cond_c

    .line 164
    .line 165
    monitor-enter v15

    .line 166
    :try_start_0
    iget-boolean v14, v1, Lhl1;->o:Z

    .line 167
    .line 168
    iget-object v5, v1, Lhl1;->q:Lsy;

    .line 169
    .line 170
    move-wide/from16 p1, v12

    .line 171
    .line 172
    iget-wide v12, v5, Lsy;->o:J

    .line 173
    .line 174
    add-long/2addr v12, v10

    .line 175
    iget-wide v4, v1, Lhl1;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 176
    .line 177
    cmp-long v4, v12, v4

    .line 178
    .line 179
    if-lez v4, :cond_5

    .line 180
    .line 181
    const/4 v4, 0x1

    .line 182
    goto :goto_5

    .line 183
    :cond_5
    const/4 v4, 0x0

    .line 184
    :goto_5
    monitor-exit v15

    .line 185
    if-eqz v4, :cond_6

    .line 186
    .line 187
    invoke-interface {v8, v10, v11}, Lfz;->skip(J)V

    .line 188
    .line 189
    .line 190
    iget-object v1, v1, Lhl1;->s:Ljl1;

    .line 191
    .line 192
    sget-object v2, Ld21;->s:Ld21;

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Ljl1;->e(Ld21;)V

    .line 195
    .line 196
    .line 197
    goto :goto_9

    .line 198
    :cond_6
    if-eqz v14, :cond_7

    .line 199
    .line 200
    invoke-interface {v8, v10, v11}, Lfz;->skip(J)V

    .line 201
    .line 202
    .line 203
    goto :goto_9

    .line 204
    :cond_7
    iget-object v4, v1, Lhl1;->p:Lsy;

    .line 205
    .line 206
    invoke-interface {v8, v10, v11, v4}, Lyp3;->l(JLsy;)J

    .line 207
    .line 208
    .line 209
    move-result-wide v4

    .line 210
    const-wide/16 v12, -0x1

    .line 211
    .line 212
    cmp-long v12, v4, v12

    .line 213
    .line 214
    if-eqz v12, :cond_b

    .line 215
    .line 216
    sub-long/2addr v10, v4

    .line 217
    iget-object v4, v1, Lhl1;->s:Ljl1;

    .line 218
    .line 219
    monitor-enter v4

    .line 220
    :try_start_1
    iget-boolean v5, v1, Lhl1;->r:Z

    .line 221
    .line 222
    if-eqz v5, :cond_8

    .line 223
    .line 224
    iget-object v5, v1, Lhl1;->p:Lsy;

    .line 225
    .line 226
    iget-wide v12, v5, Lsy;->o:J

    .line 227
    .line 228
    invoke-virtual {v5, v12, v13}, Lsy;->skip(J)V

    .line 229
    .line 230
    .line 231
    goto :goto_7

    .line 232
    :catchall_0
    move-exception v0

    .line 233
    goto :goto_8

    .line 234
    :cond_8
    iget-object v5, v1, Lhl1;->q:Lsy;

    .line 235
    .line 236
    iget-wide v12, v5, Lsy;->o:J

    .line 237
    .line 238
    cmp-long v12, v12, p1

    .line 239
    .line 240
    if-nez v12, :cond_9

    .line 241
    .line 242
    const/4 v12, 0x1

    .line 243
    goto :goto_6

    .line 244
    :cond_9
    const/4 v12, 0x0

    .line 245
    :goto_6
    iget-object v13, v1, Lhl1;->p:Lsy;

    .line 246
    .line 247
    invoke-virtual {v5, v13}, Lsy;->n0(Lyp3;)V

    .line 248
    .line 249
    .line 250
    if-eqz v12, :cond_a

    .line 251
    .line 252
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    .line 254
    .line 255
    :cond_a
    :goto_7
    monitor-exit v4

    .line 256
    const/4 v4, 0x1

    .line 257
    goto :goto_4

    .line 258
    :goto_8
    monitor-exit v4

    .line 259
    throw v0

    .line 260
    :cond_b
    new-instance v0, Ljava/io/EOFException;

    .line 261
    .line 262
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 263
    .line 264
    .line 265
    throw v0

    .line 266
    :catchall_1
    move-exception v0

    .line 267
    monitor-exit v15

    .line 268
    throw v0

    .line 269
    :cond_c
    sget-object v4, Lhi4;->a:Ljava/util/TimeZone;

    .line 270
    .line 271
    iget-object v4, v15, Ljl1;->o:Lcl1;

    .line 272
    .line 273
    invoke-virtual {v4, v2, v3}, Lcl1;->A(J)V

    .line 274
    .line 275
    .line 276
    iget-object v1, v1, Lhl1;->s:Ljl1;

    .line 277
    .line 278
    iget-object v1, v1, Ljl1;->o:Lcl1;

    .line 279
    .line 280
    iget-object v1, v1, Lcl1;->C:Lc81;

    .line 281
    .line 282
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    :goto_9
    if-eqz v6, :cond_d

    .line 286
    .line 287
    sget-object v1, Lkj1;->o:Lkj1;

    .line 288
    .line 289
    const/4 v4, 0x1

    .line 290
    invoke-virtual {v9, v1, v4}, Ljl1;->k(Lkj1;Z)V

    .line 291
    .line 292
    .line 293
    :cond_d
    :goto_a
    iget-object v0, v0, Lfl1;->n:Lfz;

    .line 294
    .line 295
    int-to-long v1, v7

    .line 296
    invoke-interface {v0, v1, v2}, Lfz;->skip(J)V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :cond_e
    const-string v0, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    .line 301
    .line 302
    invoke-static {v0}, Lp61;->k(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :cond_f
    const-string v0, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    .line 307
    .line 308
    invoke-static {v0}, Lp61;->k(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    return-void
.end method

.method public final r(IIII)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lfl1;->o:Lel1;

    .line 2
    .line 3
    iput p1, v0, Lel1;->r:I

    .line 4
    .line 5
    iput p1, v0, Lel1;->o:I

    .line 6
    .line 7
    iput p2, v0, Lel1;->s:I

    .line 8
    .line 9
    iput p3, v0, Lel1;->p:I

    .line 10
    .line 11
    iput p4, v0, Lel1;->q:I

    .line 12
    .line 13
    iget-object p0, p0, Lfl1;->p:Lkk1;

    .line 14
    .line 15
    iget-object p1, p0, Lkk1;->c:Ld23;

    .line 16
    .line 17
    iget-object p2, p0, Lkk1;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ld23;->b()Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-nez p3, :cond_c

    .line 24
    .line 25
    invoke-virtual {p1}, Ld23;->readByte()B

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    sget-object p4, Lfi4;->a:[B

    .line 30
    .line 31
    and-int/lit16 p4, p3, 0xff

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    const/16 v1, 0x80

    .line 35
    .line 36
    if-eq p4, v1, :cond_b

    .line 37
    .line 38
    and-int/lit16 v2, p3, 0x80

    .line 39
    .line 40
    if-ne v2, v1, :cond_3

    .line 41
    .line 42
    const/16 p3, 0x7f

    .line 43
    .line 44
    invoke-virtual {p0, p4, p3}, Lkk1;->e(II)I

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    add-int/lit8 p4, p3, -0x1

    .line 49
    .line 50
    if-ltz p4, :cond_1

    .line 51
    .line 52
    sget-object v1, Lmk1;->a:[Lhj1;

    .line 53
    .line 54
    array-length v2, v1

    .line 55
    add-int/lit8 v2, v2, -0x1

    .line 56
    .line 57
    if-gt p4, v2, :cond_1

    .line 58
    .line 59
    aget-object p3, v1, p4

    .line 60
    .line 61
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    sget-object v1, Lmk1;->a:[Lhj1;

    .line 66
    .line 67
    array-length v1, v1

    .line 68
    sub-int/2addr p4, v1

    .line 69
    iget v1, p0, Lkk1;->e:I

    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    add-int/2addr v1, p4

    .line 74
    if-ltz v1, :cond_2

    .line 75
    .line 76
    iget-object p4, p0, Lkk1;->d:[Lhj1;

    .line 77
    .line 78
    array-length v2, p4

    .line 79
    if-ge v1, v2, :cond_2

    .line 80
    .line 81
    aget-object p3, p4, v1

    .line 82
    .line 83
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    const-string p0, "Header index too large "

    .line 91
    .line 92
    invoke-static {p3, p0}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-object v0

    .line 100
    :cond_3
    const/16 v1, 0x40

    .line 101
    .line 102
    if-ne p4, v1, :cond_4

    .line 103
    .line 104
    sget-object p3, Lmk1;->a:[Lhj1;

    .line 105
    .line 106
    invoke-virtual {p0}, Lkk1;->d()Lg00;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-static {p3}, Lmk1;->a(Lg00;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lkk1;->d()Lg00;

    .line 114
    .line 115
    .line 116
    move-result-object p4

    .line 117
    new-instance v0, Lhj1;

    .line 118
    .line 119
    invoke-direct {v0, p3, p4}, Lhj1;-><init>(Lg00;Lg00;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v0}, Lkk1;->c(Lhj1;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    and-int/lit8 v2, p3, 0x40

    .line 127
    .line 128
    if-ne v2, v1, :cond_5

    .line 129
    .line 130
    const/16 p3, 0x3f

    .line 131
    .line 132
    invoke-virtual {p0, p4, p3}, Lkk1;->e(II)I

    .line 133
    .line 134
    .line 135
    move-result p3

    .line 136
    add-int/lit8 p3, p3, -0x1

    .line 137
    .line 138
    invoke-virtual {p0, p3}, Lkk1;->b(I)Lg00;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    invoke-virtual {p0}, Lkk1;->d()Lg00;

    .line 143
    .line 144
    .line 145
    move-result-object p4

    .line 146
    new-instance v0, Lhj1;

    .line 147
    .line 148
    invoke-direct {v0, p3, p4}, Lhj1;-><init>(Lg00;Lg00;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v0}, Lkk1;->c(Lhj1;)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_5
    and-int/lit8 p3, p3, 0x20

    .line 157
    .line 158
    const/16 v1, 0x20

    .line 159
    .line 160
    if-ne p3, v1, :cond_8

    .line 161
    .line 162
    const/16 p3, 0x1f

    .line 163
    .line 164
    invoke-virtual {p0, p4, p3}, Lkk1;->e(II)I

    .line 165
    .line 166
    .line 167
    move-result p3

    .line 168
    iput p3, p0, Lkk1;->a:I

    .line 169
    .line 170
    if-ltz p3, :cond_7

    .line 171
    .line 172
    const/16 p4, 0x1000

    .line 173
    .line 174
    if-gt p3, p4, :cond_7

    .line 175
    .line 176
    iget p4, p0, Lkk1;->g:I

    .line 177
    .line 178
    if-ge p3, p4, :cond_0

    .line 179
    .line 180
    if-nez p3, :cond_6

    .line 181
    .line 182
    iget-object p3, p0, Lkk1;->d:[Lhj1;

    .line 183
    .line 184
    invoke-static {p3, v0}, Lji;->W([Ljava/lang/Object;Lsg0;)V

    .line 185
    .line 186
    .line 187
    iget-object p3, p0, Lkk1;->d:[Lhj1;

    .line 188
    .line 189
    array-length p3, p3

    .line 190
    add-int/lit8 p3, p3, -0x1

    .line 191
    .line 192
    iput p3, p0, Lkk1;->e:I

    .line 193
    .line 194
    const/4 p3, 0x0

    .line 195
    iput p3, p0, Lkk1;->f:I

    .line 196
    .line 197
    iput p3, p0, Lkk1;->g:I

    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_6
    sub-int/2addr p4, p3

    .line 202
    invoke-virtual {p0, p4}, Lkk1;->a(I)I

    .line 203
    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_7
    new-instance p1, Ljava/io/IOException;

    .line 208
    .line 209
    iget p0, p0, Lkk1;->a:I

    .line 210
    .line 211
    new-instance p2, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string p3, "Invalid dynamic table size update "

    .line 214
    .line 215
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw p1

    .line 229
    :cond_8
    const/16 p3, 0x10

    .line 230
    .line 231
    if-eq p4, p3, :cond_a

    .line 232
    .line 233
    if-nez p4, :cond_9

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_9
    const/16 p3, 0xf

    .line 237
    .line 238
    invoke-virtual {p0, p4, p3}, Lkk1;->e(II)I

    .line 239
    .line 240
    .line 241
    move-result p3

    .line 242
    add-int/lit8 p3, p3, -0x1

    .line 243
    .line 244
    invoke-virtual {p0, p3}, Lkk1;->b(I)Lg00;

    .line 245
    .line 246
    .line 247
    move-result-object p3

    .line 248
    invoke-virtual {p0}, Lkk1;->d()Lg00;

    .line 249
    .line 250
    .line 251
    move-result-object p4

    .line 252
    new-instance v0, Lhj1;

    .line 253
    .line 254
    invoke-direct {v0, p3, p4}, Lhj1;-><init>(Lg00;Lg00;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :cond_a
    :goto_1
    sget-object p3, Lmk1;->a:[Lhj1;

    .line 263
    .line 264
    invoke-virtual {p0}, Lkk1;->d()Lg00;

    .line 265
    .line 266
    .line 267
    move-result-object p3

    .line 268
    invoke-static {p3}, Lmk1;->a(Lg00;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Lkk1;->d()Lg00;

    .line 272
    .line 273
    .line 274
    move-result-object p4

    .line 275
    new-instance v0, Lhj1;

    .line 276
    .line 277
    invoke-direct {v0, p3, p4}, Lhj1;-><init>(Lg00;Lg00;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    goto/16 :goto_0

    .line 284
    .line 285
    :cond_b
    const-string p0, "index == 0"

    .line 286
    .line 287
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    return-object v0

    .line 291
    :cond_c
    invoke-static {p2}, Lo70;->C0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 296
    .line 297
    .line 298
    return-object p0
.end method

.method public final z(Lbl1;III)V
    .locals 9

    .line 1
    if-eqz p4, :cond_9

    .line 2
    .line 3
    and-int/lit8 v0, p3, 0x1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v7, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v7, v1

    .line 12
    :goto_0
    and-int/lit8 v0, p3, 0x8

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lfl1;->n:Lfz;

    .line 17
    .line 18
    invoke-interface {v0}, Lfz;->readByte()B

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sget-object v3, Lfi4;->a:[B

    .line 23
    .line 24
    and-int/lit16 v0, v0, 0xff

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v0, v1

    .line 28
    :goto_1
    and-int/lit8 v3, p3, 0x20

    .line 29
    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    iget-object v3, p0, Lfl1;->n:Lfz;

    .line 33
    .line 34
    invoke-interface {v3}, Lfz;->readInt()I

    .line 35
    .line 36
    .line 37
    invoke-interface {v3}, Lfz;->readByte()B

    .line 38
    .line 39
    .line 40
    sget-object v3, Lfi4;->a:[B

    .line 41
    .line 42
    add-int/lit8 p2, p2, -0x5

    .line 43
    .line 44
    :cond_2
    invoke-static {p2, p3, v0}, Lqj0;->Q(III)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-virtual {p0, p2, v0, p3, p4}, Lfl1;->r(IIII)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    iget-object p1, p1, Lbl1;->p:Ljava/lang/Object;

    .line 53
    .line 54
    move-object v5, p1

    .line 55
    check-cast v5, Lcl1;

    .line 56
    .line 57
    if-eqz p4, :cond_3

    .line 58
    .line 59
    and-int/lit8 p1, p4, 0x1

    .line 60
    .line 61
    if-nez p1, :cond_3

    .line 62
    .line 63
    move v1, v2

    .line 64
    :cond_3
    const/16 p1, 0x5b

    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    iget-object p2, v5, Lcl1;->v:Lsw3;

    .line 69
    .line 70
    new-instance p3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    iget-object v0, v5, Lcl1;->p:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p1, "] onHeaders"

    .line 87
    .line 88
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    new-instance p3, Lxk1;

    .line 96
    .line 97
    invoke-direct {p3, v5, p4, p0, v7}, Lxk1;-><init>(Lcl1;ILjava/util/List;Z)V

    .line 98
    .line 99
    .line 100
    invoke-static {p2, p1, p3}, Lsw3;->b(Lsw3;Ljava/lang/String;Lne1;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_4
    monitor-enter v5

    .line 105
    :try_start_0
    invoke-virtual {v5, p4}, Lcl1;->j(I)Ljl1;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    if-nez p2, :cond_8

    .line 110
    .line 111
    iget-boolean p2, v5, Lcl1;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    if-eqz p2, :cond_5

    .line 114
    .line 115
    monitor-exit v5

    .line 116
    return-void

    .line 117
    :cond_5
    :try_start_1
    iget p2, v5, Lcl1;->q:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .line 119
    if-gt p4, p2, :cond_6

    .line 120
    .line 121
    monitor-exit v5

    .line 122
    return-void

    .line 123
    :cond_6
    :try_start_2
    rem-int/lit8 p2, p4, 0x2

    .line 124
    .line 125
    iget p3, v5, Lcl1;->r:I

    .line 126
    .line 127
    rem-int/lit8 p3, p3, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .line 129
    if-ne p2, p3, :cond_7

    .line 130
    .line 131
    monitor-exit v5

    .line 132
    return-void

    .line 133
    :cond_7
    :try_start_3
    invoke-static {p0}, Lhi4;->f(Ljava/util/List;)Lkj1;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    new-instance v3, Ljl1;

    .line 138
    .line 139
    const/4 v6, 0x0

    .line 140
    move v4, p4

    .line 141
    invoke-direct/range {v3 .. v8}, Ljl1;-><init>(ILcl1;ZZLkj1;)V

    .line 142
    .line 143
    .line 144
    iput v4, v5, Lcl1;->q:I

    .line 145
    .line 146
    iget-object p0, v5, Lcl1;->o:Ljava/util/LinkedHashMap;

    .line 147
    .line 148
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-interface {p0, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    iget-object p0, v5, Lcl1;->t:Ltw3;

    .line 156
    .line 157
    invoke-virtual {p0}, Ltw3;->d()Lsw3;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    iget-object p3, v5, Lcl1;->p:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string p1, "] onStream"

    .line 178
    .line 179
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    new-instance p2, Lh4;

    .line 187
    .line 188
    const/16 p3, 0xe

    .line 189
    .line 190
    invoke-direct {p2, p3, v5, v3}, Lh4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-static {p0, p1, p2}, Lsw3;->b(Lsw3;Ljava/lang/String;Lne1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    .line 195
    .line 196
    monitor-exit v5

    .line 197
    return-void

    .line 198
    :catchall_0
    move-exception v0

    .line 199
    move-object p0, v0

    .line 200
    goto :goto_2

    .line 201
    :cond_8
    monitor-exit v5

    .line 202
    invoke-static {p0}, Lhi4;->f(Ljava/util/List;)Lkj1;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-virtual {p2, p0, v7}, Ljl1;->k(Lkj1;Z)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :goto_2
    monitor-exit v5

    .line 211
    throw p0

    .line 212
    :cond_9
    const-string p0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    .line 213
    .line 214
    invoke-static {p0}, Lp61;->k(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    return-void
.end method

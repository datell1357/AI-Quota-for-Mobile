.class public final Lpk1;
.super Lnk1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public r:J

.field public s:Z

.field public final synthetic t:Lsk1;


# direct methods
.method public constructor <init>(Lsk1;Lcn1;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpk1;->t:Lsk1;

    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lnk1;-><init>(Lsk1;Lcn1;)V

    .line 7
    .line 8
    .line 9
    const-wide/16 p1, -0x1

    .line 10
    .line 11
    iput-wide p1, p0, Lpk1;->r:J

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lpk1;->s:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnk1;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lpk1;->s:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lhi4;->a:Ljava/util/TimeZone;

    .line 11
    .line 12
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/16 v0, 0x64

    .line 18
    .line 19
    :try_start_0
    invoke-static {p0, v0}, Lhi4;->e(Lyp3;I)Z

    .line 20
    .line 21
    .line 22
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lpk1;->t:Lsk1;

    .line 28
    .line 29
    iget-object v0, v0, Lsk1;->b:Lx21;

    .line 30
    .line 31
    invoke-interface {v0}, Lx21;->k()V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lsk1;->f:Lkj1;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lnk1;->b(Lkj1;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lnk1;->p:Z

    .line 41
    .line 42
    return-void
.end method

.method public final l(JLsy;)J
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    iget-object v3, v0, Lpk1;->t:Lsk1;

    .line 6
    .line 7
    iget-object v4, v3, Lsk1;->c:Leh;

    .line 8
    .line 9
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-wide/16 v5, 0x0

    .line 13
    .line 14
    cmp-long v7, v1, v5

    .line 15
    .line 16
    if-ltz v7, :cond_f

    .line 17
    .line 18
    iget-boolean v7, v0, Lnk1;->p:Z

    .line 19
    .line 20
    if-nez v7, :cond_e

    .line 21
    .line 22
    iget-boolean v7, v0, Lpk1;->s:Z

    .line 23
    .line 24
    const-wide/16 v8, -0x1

    .line 25
    .line 26
    if-nez v7, :cond_0

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    iget-wide v10, v0, Lpk1;->r:J

    .line 31
    .line 32
    cmp-long v7, v10, v5

    .line 33
    .line 34
    if-eqz v7, :cond_1

    .line 35
    .line 36
    cmp-long v7, v10, v8

    .line 37
    .line 38
    if-nez v7, :cond_b

    .line 39
    .line 40
    :cond_1
    cmp-long v7, v10, v8

    .line 41
    .line 42
    const-wide v10, 0x7fffffffffffffffL

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    if-eqz v7, :cond_2

    .line 48
    .line 49
    iget-object v7, v4, Leh;->p:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v7, Ld23;

    .line 52
    .line 53
    invoke-virtual {v7, v10, v11}, Ld23;->Q(J)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    :cond_2
    :try_start_0
    iget-object v7, v4, Leh;->p:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v7, Ld23;

    .line 59
    .line 60
    iget-object v12, v7, Ld23;->o:Lsy;

    .line 61
    .line 62
    const-wide/16 v13, 0x1

    .line 63
    .line 64
    invoke-virtual {v7, v13, v14}, Ld23;->d0(J)V

    .line 65
    .line 66
    .line 67
    const/4 v13, 0x0

    .line 68
    move v14, v13

    .line 69
    :goto_0
    add-int/lit8 v15, v14, 0x1

    .line 70
    .line 71
    move-wide/from16 v16, v5

    .line 72
    .line 73
    int-to-long v5, v15

    .line 74
    invoke-virtual {v7, v5, v6}, Ld23;->u(J)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_8

    .line 79
    .line 80
    int-to-long v5, v14

    .line 81
    invoke-virtual {v12, v5, v6}, Lsy;->z(J)B

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    const/16 v6, 0x30

    .line 86
    .line 87
    if-lt v5, v6, :cond_3

    .line 88
    .line 89
    const/16 v6, 0x39

    .line 90
    .line 91
    if-le v5, v6, :cond_5

    .line 92
    .line 93
    :cond_3
    const/16 v6, 0x61

    .line 94
    .line 95
    if-lt v5, v6, :cond_4

    .line 96
    .line 97
    const/16 v6, 0x66

    .line 98
    .line 99
    if-le v5, v6, :cond_5

    .line 100
    .line 101
    :cond_4
    const/16 v6, 0x41

    .line 102
    .line 103
    if-lt v5, v6, :cond_6

    .line 104
    .line 105
    const/16 v6, 0x46

    .line 106
    .line 107
    if-le v5, v6, :cond_5

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    move v14, v15

    .line 111
    move-wide/from16 v5, v16

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_6
    :goto_1
    if-eqz v14, :cond_7

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 118
    .line 119
    const/16 v1, 0x10

    .line 120
    .line 121
    invoke-static {v1}, Lqj0;->z(I)V

    .line 122
    .line 123
    .line 124
    invoke-static {v5, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    .line 132
    .line 133
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :cond_8
    :goto_2
    invoke-virtual {v12}, Lsy;->L()J

    .line 142
    .line 143
    .line 144
    move-result-wide v5

    .line 145
    iput-wide v5, v0, Lpk1;->r:J

    .line 146
    .line 147
    iget-object v4, v4, Leh;->p:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v4, Ld23;

    .line 150
    .line 151
    invoke-virtual {v4, v10, v11}, Ld23;->Q(J)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-static {v4}, Lzs3;->Y0(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    iget-wide v5, v0, Lpk1;->r:J

    .line 164
    .line 165
    cmp-long v5, v5, v16

    .line 166
    .line 167
    if-ltz v5, :cond_d

    .line 168
    .line 169
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-lez v5, :cond_9

    .line 174
    .line 175
    const-string v5, ";"

    .line 176
    .line 177
    invoke-static {v4, v5, v13}, Lgt3;->y0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 178
    .line 179
    .line 180
    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    if-eqz v5, :cond_d

    .line 182
    .line 183
    :cond_9
    iget-wide v4, v0, Lpk1;->r:J

    .line 184
    .line 185
    cmp-long v4, v4, v16

    .line 186
    .line 187
    if-nez v4, :cond_a

    .line 188
    .line 189
    iput-boolean v13, v0, Lpk1;->s:Z

    .line 190
    .line 191
    iget-object v4, v3, Lsk1;->e:Llj1;

    .line 192
    .line 193
    invoke-virtual {v4}, Llj1;->d()Lkj1;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-virtual {v0, v4}, Lnk1;->b(Lkj1;)V

    .line 198
    .line 199
    .line 200
    :cond_a
    iget-boolean v4, v0, Lpk1;->s:Z

    .line 201
    .line 202
    if-nez v4, :cond_b

    .line 203
    .line 204
    :goto_3
    return-wide v8

    .line 205
    :cond_b
    iget-wide v4, v0, Lpk1;->r:J

    .line 206
    .line 207
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 208
    .line 209
    .line 210
    move-result-wide v1

    .line 211
    move-object/from16 v4, p3

    .line 212
    .line 213
    invoke-super {v0, v1, v2, v4}, Lnk1;->l(JLsy;)J

    .line 214
    .line 215
    .line 216
    move-result-wide v1

    .line 217
    cmp-long v4, v1, v8

    .line 218
    .line 219
    if-eqz v4, :cond_c

    .line 220
    .line 221
    iget-wide v3, v0, Lpk1;->r:J

    .line 222
    .line 223
    sub-long/2addr v3, v1

    .line 224
    iput-wide v3, v0, Lpk1;->r:J

    .line 225
    .line 226
    return-wide v1

    .line 227
    :cond_c
    iget-object v1, v3, Lsk1;->b:Lx21;

    .line 228
    .line 229
    invoke-interface {v1}, Lx21;->k()V

    .line 230
    .line 231
    .line 232
    new-instance v1, Ljava/net/ProtocolException;

    .line 233
    .line 234
    const-string v2, "unexpected end of stream"

    .line 235
    .line 236
    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    sget-object v2, Lsk1;->f:Lkj1;

    .line 240
    .line 241
    invoke-virtual {v0, v2}, Lnk1;->b(Lkj1;)V

    .line 242
    .line 243
    .line 244
    throw v1

    .line 245
    :cond_d
    :try_start_1
    new-instance v1, Ljava/net/ProtocolException;

    .line 246
    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    const-string v3, "expected chunk size and optional extensions but was \""

    .line 253
    .line 254
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    iget-wide v5, v0, Lpk1;->r:J

    .line 258
    .line 259
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const/16 v0, 0x22

    .line 266
    .line 267
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    new-instance v1, Ljava/net/ProtocolException;

    .line 280
    .line 281
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw v1

    .line 289
    :cond_e
    move-wide/from16 v16, v5

    .line 290
    .line 291
    const-string v0, "closed"

    .line 292
    .line 293
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    return-wide v16

    .line 297
    :cond_f
    move-wide/from16 v16, v5

    .line 298
    .line 299
    const-string v0, "byteCount < 0: "

    .line 300
    .line 301
    invoke-static {v1, v2, v0}, Ldi0;->s(JLjava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-static {v0}, Lk21;->l(Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    return-wide v16
.end method

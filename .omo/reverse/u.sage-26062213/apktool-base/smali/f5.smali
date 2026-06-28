.class public final Lf5;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;

.field public final synthetic u:Ljava/lang/Object;

.field public final synthetic v:Ljava/lang/Object;

.field public final synthetic w:Ljava/lang/Object;

.field public final synthetic x:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V
    .locals 0

    .line 1
    iput p8, p0, Lf5;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Lf5;->s:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lf5;->t:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lf5;->u:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lf5;->v:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Lf5;->w:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p6, p0, Lf5;->x:Ljava/lang/Object;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p7}, Lbv3;-><init>(ILdh0;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lpd;Ljava/util/List;Lts2;Lss2;Lpd;Ldh0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lf5;->r:I

    .line 20
    iput-object p1, p0, Lf5;->t:Ljava/lang/Object;

    iput-object p2, p0, Lf5;->u:Ljava/lang/Object;

    iput-object p3, p0, Lf5;->v:Ljava/lang/Object;

    iput-object p4, p0, Lf5;->w:Ljava/lang/Object;

    iput-object p5, p0, Lf5;->x:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lf5;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    check-cast p1, Lqi0;

    .line 6
    .line 7
    check-cast p2, Ldh0;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Lf5;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lf5;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lf5;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Lf5;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lf5;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lf5;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_1
    invoke-virtual {p0, p2, p1}, Lf5;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lf5;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lf5;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lf5;->r:I

    .line 4
    .line 5
    iget-object v2, v0, Lf5;->x:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, v0, Lf5;->w:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Lf5;->v:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Lf5;->u:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Lf5;->t:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    new-instance v7, Lf5;

    .line 19
    .line 20
    iget-object v0, v0, Lf5;->s:Ljava/lang/Object;

    .line 21
    .line 22
    move-object v8, v0

    .line 23
    check-cast v8, Ln14;

    .line 24
    .line 25
    move-object v9, v6

    .line 26
    check-cast v9, Lxi2;

    .line 27
    .line 28
    move-object v10, v5

    .line 29
    check-cast v10, Lyh2;

    .line 30
    .line 31
    move-object v11, v4

    .line 32
    check-cast v11, Lbg2;

    .line 33
    .line 34
    move-object v12, v3

    .line 35
    check-cast v12, Ltr3;

    .line 36
    .line 37
    move-object v13, v2

    .line 38
    check-cast v13, Lwa0;

    .line 39
    .line 40
    const/4 v15, 0x2

    .line 41
    move-object/from16 v14, p1

    .line 42
    .line 43
    invoke-direct/range {v7 .. v15}, Lf5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 44
    .line 45
    .line 46
    return-object v7

    .line 47
    :pswitch_0
    new-instance v0, Lf5;

    .line 48
    .line 49
    move-object v1, v6

    .line 50
    check-cast v1, Lpd;

    .line 51
    .line 52
    check-cast v5, Ljava/util/List;

    .line 53
    .line 54
    check-cast v4, Lts2;

    .line 55
    .line 56
    check-cast v3, Lss2;

    .line 57
    .line 58
    check-cast v2, Lpd;

    .line 59
    .line 60
    move-object v6, v5

    .line 61
    move-object v5, v2

    .line 62
    move-object v2, v6

    .line 63
    move-object v6, v4

    .line 64
    move-object v4, v3

    .line 65
    move-object v3, v6

    .line 66
    move-object/from16 v6, p1

    .line 67
    .line 68
    invoke-direct/range {v0 .. v6}, Lf5;-><init>(Lpd;Ljava/util/List;Lts2;Lss2;Lpd;Ldh0;)V

    .line 69
    .line 70
    .line 71
    move-object v1, v0

    .line 72
    move-object/from16 v0, p2

    .line 73
    .line 74
    iput-object v0, v1, Lf5;->s:Ljava/lang/Object;

    .line 75
    .line 76
    return-object v1

    .line 77
    :pswitch_1
    new-instance v8, Lf5;

    .line 78
    .line 79
    iget-object v0, v0, Lf5;->s:Ljava/lang/Object;

    .line 80
    .line 81
    move-object v9, v0

    .line 82
    check-cast v9, Ls33;

    .line 83
    .line 84
    move-object v10, v6

    .line 85
    check-cast v10, Le4;

    .line 86
    .line 87
    move-object v11, v5

    .line 88
    check-cast v11, Le4;

    .line 89
    .line 90
    move-object v12, v4

    .line 91
    check-cast v12, Ljava/lang/String;

    .line 92
    .line 93
    move-object v13, v3

    .line 94
    check-cast v13, Ly3;

    .line 95
    .line 96
    move-object v14, v2

    .line 97
    check-cast v14, Lne1;

    .line 98
    .line 99
    const/16 v16, 0x0

    .line 100
    .line 101
    move-object/from16 v15, p1

    .line 102
    .line 103
    invoke-direct/range {v8 .. v16}, Lf5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 104
    .line 105
    .line 106
    return-object v8

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lf5;->r:I

    .line 4
    .line 5
    iget-object v2, v0, Lf5;->v:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v5, 0x3

    .line 9
    sget-object v6, Lt64;->a:Lt64;

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    iget-object v8, v0, Lf5;->x:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v9, v0, Lf5;->w:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v10, v0, Lf5;->u:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v11, v0, Lf5;->t:Ljava/lang/Object;

    .line 19
    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Lf5;->s:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Ln14;

    .line 29
    .line 30
    iget-object v1, v0, Ln14;->a:Lib0;

    .line 31
    .line 32
    invoke-virtual {v1}, Lib0;->l()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v0, v0, Ln14;->d:Lws2;

    .line 37
    .line 38
    invoke-virtual {v0}, Lws2;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v12

    .line 42
    invoke-static {v1, v12}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_6

    .line 47
    .line 48
    check-cast v11, Lxi2;

    .line 49
    .line 50
    iget-object v1, v11, Lxi2;->b:Lii2;

    .line 51
    .line 52
    invoke-virtual {v1}, Lii2;->g()Lyh2;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    invoke-virtual {v0}, Lws2;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v10, Lyh2;

    .line 63
    .line 64
    invoke-static {v1, v10}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_6

    .line 69
    .line 70
    :cond_0
    check-cast v9, Ltr3;

    .line 71
    .line 72
    invoke-interface {v9}, Ltr3;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Ljava/util/List;

    .line 77
    .line 78
    check-cast v8, Lwa0;

    .line 79
    .line 80
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    if-eqz v9, :cond_1

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    check-cast v9, Lyh2;

    .line 95
    .line 96
    invoke-virtual {v8}, Llk2;->b()Lei2;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    invoke-virtual {v10, v9}, Lei2;->c(Lyh2;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    check-cast v2, Lbg2;

    .line 105
    .line 106
    iget-object v1, v2, Lbg2;->a:[J

    .line 107
    .line 108
    array-length v8, v1

    .line 109
    add-int/lit8 v8, v8, -0x2

    .line 110
    .line 111
    if-ltz v8, :cond_6

    .line 112
    .line 113
    const/4 v9, 0x0

    .line 114
    :goto_1
    aget-wide v10, v1, v9

    .line 115
    .line 116
    not-long v12, v10

    .line 117
    const/4 v14, 0x7

    .line 118
    shl-long/2addr v12, v14

    .line 119
    and-long/2addr v12, v10

    .line 120
    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    and-long/2addr v12, v15

    .line 126
    cmp-long v12, v12, v15

    .line 127
    .line 128
    if-eqz v12, :cond_5

    .line 129
    .line 130
    sub-int v12, v9, v8

    .line 131
    .line 132
    not-int v12, v12

    .line 133
    ushr-int/lit8 v12, v12, 0x1f

    .line 134
    .line 135
    const/16 v13, 0x8

    .line 136
    .line 137
    rsub-int/lit8 v12, v12, 0x8

    .line 138
    .line 139
    const/4 v15, 0x0

    .line 140
    :goto_2
    if-ge v15, v12, :cond_4

    .line 141
    .line 142
    const-wide/16 v16, 0xff

    .line 143
    .line 144
    and-long v18, v10, v16

    .line 145
    .line 146
    const-wide/16 v20, 0x80

    .line 147
    .line 148
    cmp-long v18, v18, v20

    .line 149
    .line 150
    if-gez v18, :cond_2

    .line 151
    .line 152
    shl-int/lit8 v18, v9, 0x3

    .line 153
    .line 154
    add-int v18, v18, v15

    .line 155
    .line 156
    move/from16 p0, v14

    .line 157
    .line 158
    iget-object v14, v2, Lbg2;->b:[Ljava/lang/Object;

    .line 159
    .line 160
    aget-object v14, v14, v18

    .line 161
    .line 162
    iget-object v4, v2, Lbg2;->c:[F

    .line 163
    .line 164
    aget v4, v4, v18

    .line 165
    .line 166
    check-cast v14, Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v0}, Lws2;->getValue()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Lyh2;

    .line 173
    .line 174
    iget-object v4, v4, Lyh2;->s:Ljava/lang/String;

    .line 175
    .line 176
    invoke-static {v14, v4}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-nez v4, :cond_3

    .line 181
    .line 182
    iget v4, v2, Lbg2;->e:I

    .line 183
    .line 184
    sub-int/2addr v4, v3

    .line 185
    iput v4, v2, Lbg2;->e:I

    .line 186
    .line 187
    iget-object v4, v2, Lbg2;->a:[J

    .line 188
    .line 189
    iget v14, v2, Lbg2;->d:I

    .line 190
    .line 191
    shr-int/lit8 v20, v18, 0x3

    .line 192
    .line 193
    and-int/lit8 v21, v18, 0x7

    .line 194
    .line 195
    shl-int/lit8 v21, v21, 0x3

    .line 196
    .line 197
    aget-wide v22, v4, v20

    .line 198
    .line 199
    move-object/from16 p1, v4

    .line 200
    .line 201
    shl-long v3, v16, v21

    .line 202
    .line 203
    not-long v3, v3

    .line 204
    and-long v3, v22, v3

    .line 205
    .line 206
    const-wide/16 v16, 0xfe

    .line 207
    .line 208
    shl-long v16, v16, v21

    .line 209
    .line 210
    or-long v3, v3, v16

    .line 211
    .line 212
    aput-wide v3, p1, v20

    .line 213
    .line 214
    add-int/lit8 v16, v18, -0x7

    .line 215
    .line 216
    and-int v16, v16, v14

    .line 217
    .line 218
    and-int/lit8 v14, v14, 0x7

    .line 219
    .line 220
    add-int v16, v16, v14

    .line 221
    .line 222
    shr-int/lit8 v14, v16, 0x3

    .line 223
    .line 224
    aput-wide v3, p1, v14

    .line 225
    .line 226
    iget-object v3, v2, Lbg2;->b:[Ljava/lang/Object;

    .line 227
    .line 228
    aput-object v7, v3, v18

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_2
    move/from16 p0, v14

    .line 232
    .line 233
    :cond_3
    :goto_3
    shr-long/2addr v10, v13

    .line 234
    add-int/lit8 v15, v15, 0x1

    .line 235
    .line 236
    move/from16 v14, p0

    .line 237
    .line 238
    const/4 v3, 0x1

    .line 239
    goto :goto_2

    .line 240
    :cond_4
    if-ne v12, v13, :cond_6

    .line 241
    .line 242
    :cond_5
    if-eq v9, v8, :cond_6

    .line 243
    .line 244
    add-int/lit8 v9, v9, 0x1

    .line 245
    .line 246
    const/4 v3, 0x1

    .line 247
    goto/16 :goto_1

    .line 248
    .line 249
    :cond_6
    return-object v6

    .line 250
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    iget-object v0, v0, Lf5;->s:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v0, Lqi0;

    .line 256
    .line 257
    move-object v13, v11

    .line 258
    check-cast v13, Lpd;

    .line 259
    .line 260
    move-object v14, v10

    .line 261
    check-cast v14, Ljava/util/List;

    .line 262
    .line 263
    move-object v15, v2

    .line 264
    check-cast v15, Lts2;

    .line 265
    .line 266
    move-object/from16 v16, v9

    .line 267
    .line 268
    check-cast v16, Lss2;

    .line 269
    .line 270
    check-cast v8, Lpd;

    .line 271
    .line 272
    invoke-interface {v0}, Lqi0;->d()Lhi0;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    sget-object v2, Lw13;->F:Lw13;

    .line 277
    .line 278
    invoke-interface {v1, v2}, Lhi0;->K(Lgi0;)Lfi0;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    if-nez v1, :cond_7

    .line 283
    .line 284
    new-instance v12, Lu01;

    .line 285
    .line 286
    const/16 v17, 0x0

    .line 287
    .line 288
    invoke-direct/range {v12 .. v17}, Lu01;-><init>(Lpd;Ljava/util/List;Lts2;Lss2;Ldh0;)V

    .line 289
    .line 290
    .line 291
    invoke-static {v0, v7, v7, v12, v5}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 292
    .line 293
    .line 294
    new-instance v1, Lx50;

    .line 295
    .line 296
    const/16 v2, 0xa

    .line 297
    .line 298
    invoke-direct {v1, v8, v7, v2}, Lx50;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 299
    .line 300
    .line 301
    invoke-static {v0, v7, v7, v1, v5}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 302
    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_7
    invoke-static {}, Lmk0;->b()V

    .line 306
    .line 307
    .line 308
    move-object v6, v7

    .line 309
    :goto_4
    return-object v6

    .line 310
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    iget-object v0, v0, Lf5;->s:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v0, Ls33;

    .line 316
    .line 317
    iget-boolean v1, v0, Ls33;->n:Z

    .line 318
    .line 319
    if-nez v1, :cond_8

    .line 320
    .line 321
    const/4 v1, 0x1

    .line 322
    iput-boolean v1, v0, Ls33;->n:Z

    .line 323
    .line 324
    check-cast v11, Le4;

    .line 325
    .line 326
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 327
    .line 328
    invoke-virtual {v11, v0}, Le4;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    check-cast v10, Le4;

    .line 332
    .line 333
    new-instance v0, Lx72;

    .line 334
    .line 335
    const-string v1, "success"

    .line 336
    .line 337
    const-string v2, ""

    .line 338
    .line 339
    invoke-direct {v0, v1, v2}, Lx72;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v10, v0}, Le4;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    sget-object v0, Lez3;->a:Lra3;

    .line 346
    .line 347
    check-cast v9, Ly3;

    .line 348
    .line 349
    iget-object v1, v9, Ly3;->a:Ly84;

    .line 350
    .line 351
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    const/4 v1, 0x0

    .line 355
    new-array v1, v1, [Ljava/lang/Object;

    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    check-cast v8, Lne1;

    .line 364
    .line 365
    invoke-interface {v8}, Lne1;->a()Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    goto :goto_5

    .line 369
    :cond_8
    const/4 v1, 0x0

    .line 370
    sget-object v0, Lez3;->a:Lra3;

    .line 371
    .line 372
    new-array v1, v1, [Ljava/lang/Object;

    .line 373
    .line 374
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    .line 376
    .line 377
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    :goto_5
    return-object v6

    .line 381
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

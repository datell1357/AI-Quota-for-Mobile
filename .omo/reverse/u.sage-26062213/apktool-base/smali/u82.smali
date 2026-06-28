.class public final synthetic Lu82;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lpg2;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;

.field public final synthetic u:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lpg2;Ljava/util/List;Lu/sage/MainActivity;Lpg2;Lxi2;Ljava/lang/String;)V
    .locals 1

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lu82;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu82;->p:Ljava/lang/Object;

    iput-object p2, p0, Lu82;->q:Ljava/lang/Object;

    iput-object p3, p0, Lu82;->r:Ljava/lang/Object;

    iput-object p4, p0, Lu82;->s:Ljava/lang/Object;

    iput-object p5, p0, Lu82;->o:Lpg2;

    iput-object p6, p0, Lu82;->t:Ljava/lang/Object;

    iput-object p7, p0, Lu82;->u:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ln8;Lm10;Lqi0;Lwh1;Ls92;Lpg2;Ly84;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lu82;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p4, p0, Lu82;->p:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p5, p0, Lu82;->q:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lu82;->r:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p2, p0, Lu82;->s:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p1, p0, Lu82;->t:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p7, p0, Lu82;->u:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p6, p0, Lu82;->o:Lpg2;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lu82;->n:I

    .line 4
    .line 5
    sget-object v2, Lt64;->a:Lt64;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    iget-object v6, v0, Lu82;->u:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v7, v0, Lu82;->t:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v8, v0, Lu82;->s:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v9, v0, Lu82;->r:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v10, v0, Lu82;->q:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v11, v0, Lu82;->p:Ljava/lang/Object;

    .line 21
    .line 22
    packed-switch v1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    move-object v13, v11

    .line 26
    check-cast v13, Lwh1;

    .line 27
    .line 28
    move-object v14, v10

    .line 29
    check-cast v14, Ls92;

    .line 30
    .line 31
    move-object v15, v9

    .line 32
    check-cast v15, Lqi0;

    .line 33
    .line 34
    check-cast v8, Lm10;

    .line 35
    .line 36
    check-cast v7, Ln8;

    .line 37
    .line 38
    move-object/from16 v17, v6

    .line 39
    .line 40
    check-cast v17, Ly84;

    .line 41
    .line 42
    move-object/from16 v1, p1

    .line 43
    .line 44
    check-cast v1, Lag1;

    .line 45
    .line 46
    move-object/from16 v6, p2

    .line 47
    .line 48
    check-cast v6, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    and-int/lit8 v9, v6, 0x3

    .line 55
    .line 56
    if-eq v9, v3, :cond_0

    .line 57
    .line 58
    move v5, v4

    .line 59
    :cond_0
    and-int/lit8 v3, v6, 0x1

    .line 60
    .line 61
    invoke-virtual {v1, v3, v5}, Lag1;->N(IZ)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    iget-object v0, v0, Lu82;->o:Lpg2;

    .line 68
    .line 69
    invoke-interface {v0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {v1, v13}, Lag1;->h(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-virtual {v1, v14}, Lag1;->h(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    or-int/2addr v3, v4

    .line 88
    invoke-virtual {v1, v15}, Lag1;->h(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    or-int/2addr v3, v4

    .line 93
    invoke-virtual {v1, v8}, Lag1;->h(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    or-int/2addr v3, v4

    .line 98
    invoke-virtual {v1, v7}, Lag1;->h(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    or-int/2addr v3, v4

    .line 103
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-virtual {v1, v4}, Lag1;->d(I)Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    or-int/2addr v3, v4

    .line 112
    invoke-virtual {v1}, Lag1;->K()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    if-nez v3, :cond_1

    .line 117
    .line 118
    sget-object v3, Lrb0;->a:Lbx3;

    .line 119
    .line 120
    if-ne v4, v3, :cond_2

    .line 121
    .line 122
    :cond_1
    new-instance v12, Lsx;

    .line 123
    .line 124
    const/16 v19, 0x1

    .line 125
    .line 126
    move-object/from16 v16, v7

    .line 127
    .line 128
    move-object/from16 v18, v8

    .line 129
    .line 130
    invoke-direct/range {v12 .. v19}, Lsx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v12}, Lag1;->g0(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    move-object v4, v12

    .line 137
    :cond_2
    move-object/from16 v19, v4

    .line 138
    .line 139
    check-cast v19, Lpe1;

    .line 140
    .line 141
    sget-object v3, Lwa2;->a:Lis3;

    .line 142
    .line 143
    invoke-virtual {v1, v3}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Lua2;

    .line 148
    .line 149
    iget-object v3, v3, Lua2;->a:Ly70;

    .line 150
    .line 151
    iget-wide v3, v3, Ly70;->F:J

    .line 152
    .line 153
    invoke-static {v3, v4, v1}, Lzf5;->u(JLag1;)Lgv3;

    .line 154
    .line 155
    .line 156
    move-result-object v22

    .line 157
    const/16 v24, 0x0

    .line 158
    .line 159
    const/16 v20, 0x0

    .line 160
    .line 161
    const/16 v21, 0x0

    .line 162
    .line 163
    move/from16 v18, v0

    .line 164
    .line 165
    move-object/from16 v23, v1

    .line 166
    .line 167
    invoke-static/range {v18 .. v24}, Ljv3;->a(ZLpe1;Lnd2;ZLgv3;Lag1;I)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_3
    move-object/from16 v23, v1

    .line 172
    .line 173
    invoke-virtual/range {v23 .. v23}, Lag1;->Q()V

    .line 174
    .line 175
    .line 176
    :goto_0
    return-object v2

    .line 177
    :pswitch_0
    check-cast v11, Ljava/util/ArrayList;

    .line 178
    .line 179
    check-cast v10, Ltr3;

    .line 180
    .line 181
    check-cast v9, Ljava/util/List;

    .line 182
    .line 183
    check-cast v8, Lu/sage/MainActivity;

    .line 184
    .line 185
    check-cast v7, Lxi2;

    .line 186
    .line 187
    check-cast v6, Ljava/lang/String;

    .line 188
    .line 189
    move-object/from16 v1, p1

    .line 190
    .line 191
    check-cast v1, Lag1;

    .line 192
    .line 193
    move-object/from16 v12, p2

    .line 194
    .line 195
    check-cast v12, Ljava/lang/Integer;

    .line 196
    .line 197
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 198
    .line 199
    .line 200
    move-result v12

    .line 201
    sget v13, Lu/sage/MainActivity;->C:I

    .line 202
    .line 203
    and-int/lit8 v13, v12, 0x3

    .line 204
    .line 205
    if-eq v13, v3, :cond_4

    .line 206
    .line 207
    move v5, v4

    .line 208
    :cond_4
    and-int/lit8 v3, v12, 0x1

    .line 209
    .line 210
    invoke-virtual {v1, v3, v5}, Lag1;->N(IZ)Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-eqz v3, :cond_5

    .line 215
    .line 216
    sget-object v3, Lwa2;->a:Lis3;

    .line 217
    .line 218
    invoke-virtual {v1, v3}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    check-cast v3, Lua2;

    .line 223
    .line 224
    iget-object v3, v3, Lua2;->a:Ly70;

    .line 225
    .line 226
    iget-wide v13, v3, Ly70;->F:J

    .line 227
    .line 228
    new-instance v3, Lw82;

    .line 229
    .line 230
    iget-object v0, v0, Lu82;->o:Lpg2;

    .line 231
    .line 232
    move-object v5, v10

    .line 233
    move-object v4, v11

    .line 234
    move-object v10, v6

    .line 235
    move-object v6, v9

    .line 236
    move-object v9, v7

    .line 237
    move-object v7, v8

    .line 238
    move-object v8, v0

    .line 239
    invoke-direct/range {v3 .. v10}, Lw82;-><init>(Ljava/util/ArrayList;Ltr3;Ljava/util/List;Lu/sage/MainActivity;Lpg2;Lxi2;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    const v0, -0x539d2524

    .line 243
    .line 244
    .line 245
    invoke-static {v0, v3, v1}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 246
    .line 247
    .line 248
    move-result-object v18

    .line 249
    const/high16 v20, 0x30000

    .line 250
    .line 251
    const/4 v12, 0x0

    .line 252
    const-wide/16 v15, 0x0

    .line 253
    .line 254
    const/16 v17, 0x0

    .line 255
    .line 256
    move-object/from16 v19, v1

    .line 257
    .line 258
    invoke-static/range {v12 .. v20}, Lzj2;->a(Lnd2;JJLhd4;Lka0;Lag1;I)V

    .line 259
    .line 260
    .line 261
    goto :goto_1

    .line 262
    :cond_5
    move-object/from16 v19, v1

    .line 263
    .line 264
    invoke-virtual/range {v19 .. v19}, Lag1;->Q()V

    .line 265
    .line 266
    .line 267
    :goto_1
    return-object v2

    .line 268
    nop

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

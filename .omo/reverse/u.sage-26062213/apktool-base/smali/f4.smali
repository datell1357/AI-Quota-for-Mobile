.class public final synthetic Lf4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    iput p2, p0, Lf4;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lf4;->o:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p3, p0, Lf4;->p:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lf4;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf4;->o:Ljava/lang/String;

    iput-object p2, p0, Lf4;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lf4;->n:I

    .line 4
    .line 5
    sget-object v2, Lt64;->a:Lt64;

    .line 6
    .line 7
    iget-object v3, v0, Lf4;->p:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, v0, Lf4;->o:Ljava/lang/String;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object/from16 v1, p1

    .line 15
    .line 16
    check-cast v1, Lag1;

    .line 17
    .line 18
    move-object/from16 v4, p2

    .line 19
    .line 20
    check-cast v4, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const/16 v4, 0x31

    .line 26
    .line 27
    invoke-static {v4}, Lqj0;->f0(I)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-static {v0, v3, v1, v4}, Lqj0;->a(Ljava/lang/String;Ljava/lang/String;Lag1;I)V

    .line 32
    .line 33
    .line 34
    return-object v2

    .line 35
    :pswitch_0
    move-object/from16 v1, p1

    .line 36
    .line 37
    check-cast v1, Lag1;

    .line 38
    .line 39
    move-object/from16 v4, p2

    .line 40
    .line 41
    check-cast v4, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    and-int/lit8 v5, v4, 0x3

    .line 48
    .line 49
    const/4 v6, 0x2

    .line 50
    const/4 v7, 0x1

    .line 51
    const/4 v8, 0x0

    .line 52
    if-eq v5, v6, :cond_0

    .line 53
    .line 54
    move v5, v7

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move v5, v8

    .line 57
    :goto_0
    and-int/2addr v4, v7

    .line 58
    invoke-virtual {v1, v4, v5}, Lag1;->N(IZ)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_7

    .line 63
    .line 64
    sget-object v4, Lmj1;->s:Lcw;

    .line 65
    .line 66
    invoke-static {v4, v8}, Lqx;->d(Lcw;Z)Ldb2;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    iget-wide v5, v1, Lag1;->T:J

    .line 71
    .line 72
    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    invoke-virtual {v1}, Lag1;->l()Lhu2;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    sget-object v9, Lkd2;->b:Lkd2;

    .line 81
    .line 82
    invoke-static {v1, v9}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    sget-object v10, Llb0;->c:Lkb0;

    .line 87
    .line 88
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    sget-object v10, Lkb0;->b:Lic0;

    .line 92
    .line 93
    invoke-virtual {v1}, Lag1;->Z()V

    .line 94
    .line 95
    .line 96
    iget-boolean v11, v1, Lag1;->S:Z

    .line 97
    .line 98
    if-eqz v11, :cond_1

    .line 99
    .line 100
    invoke-virtual {v1, v10}, Lag1;->k(Lne1;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    invoke-virtual {v1}, Lag1;->j0()V

    .line 105
    .line 106
    .line 107
    :goto_1
    sget-object v10, Lkb0;->f:Lfd;

    .line 108
    .line 109
    invoke-static {v10, v1, v4}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    sget-object v4, Lkb0;->e:Lfd;

    .line 113
    .line 114
    invoke-static {v4, v1, v6}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    sget-object v5, Lkb0;->g:Lfd;

    .line 122
    .line 123
    invoke-static {v5, v1, v4}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    sget-object v4, Lkb0;->h:Ll9;

    .line 127
    .line 128
    invoke-static {v1, v4}, Lht4;->y(Lag1;Lpe1;)V

    .line 129
    .line 130
    .line 131
    sget-object v4, Lkb0;->d:Lfd;

    .line 132
    .line 133
    invoke-static {v4, v1, v9}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    const/4 v4, 0x0

    .line 137
    if-eqz v0, :cond_3

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-nez v5, :cond_2

    .line 144
    .line 145
    move-object v0, v4

    .line 146
    goto :goto_2

    .line 147
    :cond_2
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    :goto_2
    if-eqz v0, :cond_3

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    goto :goto_4

    .line 162
    :cond_3
    if-eqz v3, :cond_5

    .line 163
    .line 164
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_4

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_4
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    .line 180
    .line 181
    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    goto :goto_4

    .line 186
    :cond_6
    const/16 v0, 0x3f

    .line 187
    .line 188
    :goto_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 196
    .line 197
    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    sget-object v0, Lwa2;->a:Lis3;

    .line 205
    .line 206
    invoke-virtual {v1, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    check-cast v3, Lua2;

    .line 211
    .line 212
    iget-object v3, v3, Lua2;->b:Le54;

    .line 213
    .line 214
    iget-object v3, v3, Le54;->n:Lay3;

    .line 215
    .line 216
    invoke-virtual {v1, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    check-cast v0, Lua2;

    .line 221
    .line 222
    iget-object v0, v0, Lua2;->a:Ly70;

    .line 223
    .line 224
    iget-wide v8, v0, Ly70;->d:J

    .line 225
    .line 226
    const/16 v25, 0x0

    .line 227
    .line 228
    const v26, 0x1fffa

    .line 229
    .line 230
    .line 231
    const/4 v6, 0x0

    .line 232
    move v0, v7

    .line 233
    move-wide v7, v8

    .line 234
    const-wide/16 v9, 0x0

    .line 235
    .line 236
    const/4 v11, 0x0

    .line 237
    const/4 v12, 0x0

    .line 238
    const-wide/16 v13, 0x0

    .line 239
    .line 240
    const/4 v15, 0x0

    .line 241
    const-wide/16 v16, 0x0

    .line 242
    .line 243
    const/16 v18, 0x0

    .line 244
    .line 245
    const/16 v19, 0x0

    .line 246
    .line 247
    const/16 v20, 0x0

    .line 248
    .line 249
    const/16 v21, 0x0

    .line 250
    .line 251
    const/16 v24, 0x0

    .line 252
    .line 253
    move-object/from16 v23, v1

    .line 254
    .line 255
    move-object/from16 v22, v3

    .line 256
    .line 257
    invoke-static/range {v5 .. v26}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v0}, Lag1;->p(Z)V

    .line 261
    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_7
    invoke-virtual {v1}, Lag1;->Q()V

    .line 265
    .line 266
    .line 267
    :goto_5
    return-object v2

    .line 268
    nop

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

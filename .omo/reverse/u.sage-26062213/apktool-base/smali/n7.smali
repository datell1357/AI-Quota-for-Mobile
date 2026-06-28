.class public final synthetic Ln7;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ldf1;


# direct methods
.method public synthetic constructor <init>(ILdf1;)V
    .locals 0

    .line 1
    iput p1, p0, Ln7;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Ln7;->o:Ldf1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Ln7;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object p0, p0, Ln7;->o:Ldf1;

    .line 9
    .line 10
    check-cast p1, Lag1;

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    and-int/lit8 v0, p2, 0x3

    .line 22
    .line 23
    if-eq v0, v2, :cond_0

    .line 24
    .line 25
    move v0, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v4

    .line 28
    :goto_0
    and-int/2addr p2, v3

    .line 29
    invoke-virtual {p1, p2, v0}, Lag1;->N(IZ)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    sget-object p2, Lkd2;->b:Lkd2;

    .line 36
    .line 37
    sget-object v0, Lx7;->a:Lds2;

    .line 38
    .line 39
    invoke-static {p2, v0}, Lis0;->J(Lnd2;Lzr2;)Lnd2;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    sget-object v0, Lmj1;->A:Law;

    .line 44
    .line 45
    new-instance v2, Lak1;

    .line 46
    .line 47
    invoke-direct {v2, v0}, Lak1;-><init>(Law;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p2, v2}, Lnd2;->c(Lnd2;)Lnd2;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    sget-object v0, Lmj1;->o:Lcw;

    .line 55
    .line 56
    invoke-static {v0, v4}, Lqx;->d(Lcw;Z)Ldb2;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-wide v5, p1, Lag1;->T:J

    .line 61
    .line 62
    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {p1}, Lag1;->l()Lhu2;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-static {p1, p2}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    sget-object v6, Llb0;->c:Lkb0;

    .line 75
    .line 76
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    sget-object v6, Lkb0;->b:Lic0;

    .line 80
    .line 81
    invoke-virtual {p1}, Lag1;->Z()V

    .line 82
    .line 83
    .line 84
    iget-boolean v7, p1, Lag1;->S:Z

    .line 85
    .line 86
    if-eqz v7, :cond_1

    .line 87
    .line 88
    invoke-virtual {p1, v6}, Lag1;->k(Lne1;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {p1}, Lag1;->j0()V

    .line 93
    .line 94
    .line 95
    :goto_1
    sget-object v6, Lkb0;->f:Lfd;

    .line 96
    .line 97
    invoke-static {v6, p1, v0}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    sget-object v0, Lkb0;->e:Lfd;

    .line 101
    .line 102
    invoke-static {v0, p1, v5}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sget-object v2, Lkb0;->g:Lfd;

    .line 110
    .line 111
    invoke-static {v2, p1, v0}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    sget-object v0, Lkb0;->h:Ll9;

    .line 115
    .line 116
    invoke-static {p1, v0}, Lht4;->y(Lag1;Lpe1;)V

    .line 117
    .line 118
    .line 119
    sget-object v0, Lkb0;->d:Lfd;

    .line 120
    .line 121
    invoke-static {v0, p1, p2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-interface {p0, p1, p2}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v3}, Lag1;->p(Z)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_2
    invoke-virtual {p1}, Lag1;->Q()V

    .line 136
    .line 137
    .line 138
    :goto_2
    return-object v1

    .line 139
    :pswitch_0
    and-int/lit8 v0, p2, 0x3

    .line 140
    .line 141
    if-eq v0, v2, :cond_3

    .line 142
    .line 143
    move v0, v3

    .line 144
    goto :goto_3

    .line 145
    :cond_3
    move v0, v4

    .line 146
    :goto_3
    and-int/2addr p2, v3

    .line 147
    invoke-virtual {p1, p2, v0}, Lag1;->N(IZ)Z

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    if-eqz p2, :cond_7

    .line 152
    .line 153
    const/high16 p2, 0x3f800000    # 1.0f

    .line 154
    .line 155
    float-to-double v5, p2

    .line 156
    const-wide/16 v7, 0x0

    .line 157
    .line 158
    cmpl-double v0, v5, v7

    .line 159
    .line 160
    if-lez v0, :cond_4

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_4
    const-string v0, "invalid weight; must be greater than zero"

    .line 164
    .line 165
    invoke-static {v0}, Lyq1;->a(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :goto_4
    new-instance v0, Lnz1;

    .line 169
    .line 170
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 171
    .line 172
    .line 173
    cmpl-float v5, p2, v2

    .line 174
    .line 175
    if-lez v5, :cond_5

    .line 176
    .line 177
    move p2, v2

    .line 178
    :cond_5
    invoke-direct {v0, p2, v4}, Lnz1;-><init>(FZ)V

    .line 179
    .line 180
    .line 181
    sget-object p2, Lm7;->b:Lds2;

    .line 182
    .line 183
    invoke-static {v0, p2}, Lis0;->J(Lnd2;Lzr2;)Lnd2;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    sget-object v0, Lmj1;->z:Law;

    .line 188
    .line 189
    new-instance v2, Lak1;

    .line 190
    .line 191
    invoke-direct {v2, v0}, Lak1;-><init>(Law;)V

    .line 192
    .line 193
    .line 194
    invoke-interface {p2, v2}, Lnd2;->c(Lnd2;)Lnd2;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    sget-object v0, Lmj1;->o:Lcw;

    .line 199
    .line 200
    invoke-static {v0, v4}, Lqx;->d(Lcw;Z)Ldb2;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iget-wide v5, p1, Lag1;->T:J

    .line 205
    .line 206
    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    invoke-virtual {p1}, Lag1;->l()Lhu2;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-static {p1, p2}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    sget-object v6, Llb0;->c:Lkb0;

    .line 219
    .line 220
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    sget-object v6, Lkb0;->b:Lic0;

    .line 224
    .line 225
    invoke-virtual {p1}, Lag1;->Z()V

    .line 226
    .line 227
    .line 228
    iget-boolean v7, p1, Lag1;->S:Z

    .line 229
    .line 230
    if-eqz v7, :cond_6

    .line 231
    .line 232
    invoke-virtual {p1, v6}, Lag1;->k(Lne1;)V

    .line 233
    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_6
    invoke-virtual {p1}, Lag1;->j0()V

    .line 237
    .line 238
    .line 239
    :goto_5
    sget-object v6, Lkb0;->f:Lfd;

    .line 240
    .line 241
    invoke-static {v6, p1, v0}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    sget-object v0, Lkb0;->e:Lfd;

    .line 245
    .line 246
    invoke-static {v0, p1, v5}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    sget-object v2, Lkb0;->g:Lfd;

    .line 254
    .line 255
    invoke-static {v2, p1, v0}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    sget-object v0, Lkb0;->h:Ll9;

    .line 259
    .line 260
    invoke-static {p1, v0}, Lht4;->y(Lag1;Lpe1;)V

    .line 261
    .line 262
    .line 263
    sget-object v0, Lkb0;->d:Lfd;

    .line 264
    .line 265
    invoke-static {v0, p1, p2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    invoke-interface {p0, p1, p2}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v3}, Lag1;->p(Z)V

    .line 276
    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_7
    invoke-virtual {p1}, Lag1;->Q()V

    .line 280
    .line 281
    .line 282
    :goto_6
    return-object v1

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final La30;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:F

.field public final b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, La30;->a:F

    .line 5
    .line 6
    iput p2, p0, La30;->b:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(ZLvf2;Lag1;I)Ltr3;
    .locals 14

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v8, p3

    .line 4
    .line 5
    move/from16 v1, p4

    .line 6
    .line 7
    const v2, -0x691c96f5

    .line 8
    .line 9
    .line 10
    invoke-virtual {v8, v2}, Lag1;->W(I)V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    sget-object v5, Lrb0;->a:Lbx3;

    .line 15
    .line 16
    const/4 v9, 0x0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const v0, 0x9ff4d4b

    .line 20
    .line 21
    .line 22
    invoke-virtual {v8, v0}, Lag1;->W(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v8}, Lag1;->K()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-ne v0, v5, :cond_0

    .line 30
    .line 31
    new-instance v0, Lcw0;

    .line 32
    .line 33
    invoke-direct {v0, v2}, Lcw0;-><init>(F)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v8, v0}, Lag1;->g0(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    check-cast v0, Lpg2;

    .line 44
    .line 45
    invoke-virtual {v8, v9}, Lag1;->p(Z)V

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {v8, v9}, Lag1;->p(Z)V

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_1
    const v6, 0xa006a97

    .line 53
    .line 54
    .line 55
    invoke-virtual {v8, v6}, Lag1;->W(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v8, v9}, Lag1;->p(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8}, Lag1;->K()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    if-ne v6, v5, :cond_2

    .line 66
    .line 67
    new-instance v6, Lgp3;

    .line 68
    .line 69
    invoke-direct {v6}, Lgp3;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v8, v6}, Lag1;->g0(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    check-cast v6, Lgp3;

    .line 76
    .line 77
    and-int/lit8 v7, v1, 0x70

    .line 78
    .line 79
    xor-int/lit8 v7, v7, 0x30

    .line 80
    .line 81
    const/4 v10, 0x1

    .line 82
    const/16 v11, 0x20

    .line 83
    .line 84
    if-le v7, v11, :cond_3

    .line 85
    .line 86
    invoke-virtual {v8, v0}, Lag1;->f(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-nez v7, :cond_4

    .line 91
    .line 92
    :cond_3
    and-int/lit8 v7, v1, 0x30

    .line 93
    .line 94
    if-ne v7, v11, :cond_5

    .line 95
    .line 96
    :cond_4
    move v7, v10

    .line 97
    goto :goto_1

    .line 98
    :cond_5
    move v7, v9

    .line 99
    :goto_1
    invoke-virtual {v8}, Lag1;->K()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    const/4 v12, 0x0

    .line 104
    if-nez v7, :cond_6

    .line 105
    .line 106
    if-ne v11, v5, :cond_7

    .line 107
    .line 108
    :cond_6
    new-instance v11, Lnz;

    .line 109
    .line 110
    invoke-direct {v11, v0, v6, v12, v10}, Lnz;-><init>(Lxs1;Lgp3;Ldh0;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v8, v11}, Lag1;->g0(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_7
    check-cast v11, Ldf1;

    .line 117
    .line 118
    invoke-static {v11, v8, v0}, Lzf5;->c(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v6}, Lo70;->p0(Ljava/util/List;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lws1;

    .line 126
    .line 127
    if-nez p1, :cond_8

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_8
    instance-of v6, v0, Lhy2;

    .line 131
    .line 132
    if-eqz v6, :cond_9

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_9
    instance-of v6, v0, Lik1;

    .line 136
    .line 137
    if-eqz v6, :cond_a

    .line 138
    .line 139
    iget v2, p0, La30;->a:F

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_a
    instance-of v6, v0, Lt91;

    .line 143
    .line 144
    if-eqz v6, :cond_b

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_b
    instance-of v6, v0, Lzw0;

    .line 148
    .line 149
    if-eqz v6, :cond_c

    .line 150
    .line 151
    iget v2, p0, La30;->b:F

    .line 152
    .line 153
    :cond_c
    :goto_2
    invoke-virtual {v8}, Lag1;->K()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    if-ne v6, v5, :cond_d

    .line 158
    .line 159
    new-instance v6, Lpd;

    .line 160
    .line 161
    new-instance v7, Lcw0;

    .line 162
    .line 163
    invoke-direct {v7, v2}, Lcw0;-><init>(F)V

    .line 164
    .line 165
    .line 166
    sget-object v11, Lk30;->o:Le34;

    .line 167
    .line 168
    const/16 v13, 0xc

    .line 169
    .line 170
    invoke-direct {v6, v7, v11, v12, v13}, Lpd;-><init>(Ljava/lang/Object;Le34;Ljava/lang/Float;I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8, v6}, Lag1;->g0(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    :cond_d
    check-cast v6, Lpd;

    .line 177
    .line 178
    new-instance v11, Lcw0;

    .line 179
    .line 180
    invoke-direct {v11, v2}, Lcw0;-><init>(F)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v6}, Lag1;->h(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    invoke-virtual {v8, v2}, Lag1;->c(F)Z

    .line 188
    .line 189
    .line 190
    move-result v12

    .line 191
    or-int/2addr v7, v12

    .line 192
    and-int/lit8 v12, v1, 0xe

    .line 193
    .line 194
    xor-int/lit8 v12, v12, 0x6

    .line 195
    .line 196
    const/4 v13, 0x4

    .line 197
    if-le v12, v13, :cond_e

    .line 198
    .line 199
    invoke-virtual {v8, p1}, Lag1;->g(Z)Z

    .line 200
    .line 201
    .line 202
    move-result v12

    .line 203
    if-nez v12, :cond_f

    .line 204
    .line 205
    :cond_e
    and-int/lit8 v12, v1, 0x6

    .line 206
    .line 207
    if-ne v12, v13, :cond_10

    .line 208
    .line 209
    :cond_f
    move v12, v10

    .line 210
    goto :goto_3

    .line 211
    :cond_10
    move v12, v9

    .line 212
    :goto_3
    or-int/2addr v7, v12

    .line 213
    and-int/lit16 v12, v1, 0x380

    .line 214
    .line 215
    xor-int/lit16 v12, v12, 0x180

    .line 216
    .line 217
    const/16 v13, 0x100

    .line 218
    .line 219
    if-le v12, v13, :cond_11

    .line 220
    .line 221
    invoke-virtual {v8, p0}, Lag1;->f(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v12

    .line 225
    if-nez v12, :cond_13

    .line 226
    .line 227
    :cond_11
    and-int/lit16 v1, v1, 0x180

    .line 228
    .line 229
    if-ne v1, v13, :cond_12

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_12
    move v10, v9

    .line 233
    :cond_13
    :goto_4
    or-int v1, v7, v10

    .line 234
    .line 235
    invoke-virtual {v8, v0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    or-int/2addr v1, v7

    .line 240
    invoke-virtual {v8}, Lag1;->K()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    if-nez v1, :cond_14

    .line 245
    .line 246
    if-ne v7, v5, :cond_15

    .line 247
    .line 248
    :cond_14
    move-object v5, v0

    .line 249
    goto :goto_5

    .line 250
    :cond_15
    move-object v1, v6

    .line 251
    goto :goto_6

    .line 252
    :goto_5
    new-instance v0, Loz;

    .line 253
    .line 254
    move-object v1, v6

    .line 255
    const/4 v6, 0x0

    .line 256
    const/4 v7, 0x1

    .line 257
    move-object v4, p0

    .line 258
    move v3, p1

    .line 259
    invoke-direct/range {v0 .. v7}, Loz;-><init>(Lpd;FZLjava/lang/Object;Lws1;Ldh0;I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v8, v0}, Lag1;->g0(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    move-object v7, v0

    .line 266
    :goto_6
    check-cast v7, Ldf1;

    .line 267
    .line 268
    invoke-static {v7, v8, v11}, Lzf5;->c(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    iget-object v0, v1, Lpd;->c:Lwe;

    .line 272
    .line 273
    goto/16 :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    if-eqz p1, :cond_7

    .line 5
    .line 6
    instance-of v0, p1, La30;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    check-cast p1, La30;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {v0, v0}, Lcw0;->b(FF)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    invoke-static {v0, v0}, Lcw0;->b(FF)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_3
    invoke-static {v0, v0}, Lcw0;->b(FF)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_4

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_4
    iget p0, p0, La30;->a:F

    .line 36
    .line 37
    iget p1, p1, La30;->a:F

    .line 38
    .line 39
    invoke-static {p0, p1}, Lcw0;->b(FF)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_5

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_5
    invoke-static {v0, v0}, Lcw0;->b(FF)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_6

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_6
    :goto_0
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :cond_7
    :goto_1
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/16 v2, 0x1f

    .line 7
    .line 8
    mul-int/2addr v1, v2

    .line 9
    invoke-static {v0, v1, v2}, Ldi0;->l(FII)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, v1, v2}, Ldi0;->l(FII)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget p0, p0, La30;->a:F

    .line 18
    .line 19
    invoke-static {p0, v1, v2}, Ldi0;->l(FII)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/2addr v0, p0

    .line 28
    return v0
.end method

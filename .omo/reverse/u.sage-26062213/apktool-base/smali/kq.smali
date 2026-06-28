.class public final Lkq;
.super Lmd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Loy1;
.implements Ljx0;
.implements Leh3;
.implements Lcw2;
.implements Lpd2;
.implements Lxs2;
.implements Ley1;
.implements Lfh1;
.implements Lda1;
.implements Ltr2;
.implements Liz;
.implements Ljr0;


# instance fields
.field public B:Lld2;


# virtual methods
.method public final F(Lvv2;Lwv2;J)V
    .locals 8

    .line 1
    iget-object p0, p0, Lkq;->B:Lld2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Lfw2;

    .line 7
    .line 8
    iget-object p0, p0, Lfw2;->e:Lqd1;

    .line 9
    .line 10
    iget-object p3, p0, Lqd1;->r:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p3, Lfw2;

    .line 13
    .line 14
    iget-object p4, p1, Lvv2;->a:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    move v2, v1

    .line 22
    :goto_0
    const/4 v3, 0x1

    .line 23
    if-ge v2, v0, :cond_1

    .line 24
    .line 25
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lzv2;

    .line 30
    .line 31
    invoke-static {v4}, Lse0;->d(Lzv2;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_0

    .line 36
    .line 37
    invoke-static {v4}, Lse0;->f(Lzv2;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_0

    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v0, v1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move v0, v3

    .line 49
    :goto_1
    if-eqz v0, :cond_4

    .line 50
    .line 51
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    move v4, v1

    .line 56
    :goto_2
    if-ge v4, v2, :cond_3

    .line 57
    .line 58
    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Lzv2;

    .line 63
    .line 64
    invoke-virtual {v5}, Lzv2;->c()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_2

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    move v2, v3

    .line 75
    goto :goto_4

    .line 76
    :cond_4
    :goto_3
    move v2, v1

    .line 77
    :goto_4
    iget-boolean v4, p3, Lfw2;->d:Z

    .line 78
    .line 79
    if-nez v4, :cond_8

    .line 80
    .line 81
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    move v5, v1

    .line 86
    :goto_5
    if-ge v5, v4, :cond_6

    .line 87
    .line 88
    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    check-cast v6, Lzv2;

    .line 93
    .line 94
    invoke-static {v6}, Lse0;->d(Lzv2;)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-nez v7, :cond_8

    .line 99
    .line 100
    invoke-static {v6}, Lse0;->f(Lzv2;)Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-eqz v6, :cond_5

    .line 105
    .line 106
    goto :goto_6

    .line 107
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_6
    if-eqz v2, :cond_7

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_7
    move v2, v1

    .line 114
    goto :goto_7

    .line 115
    :cond_8
    :goto_6
    move v2, v3

    .line 116
    :goto_7
    iget-object v4, p0, Lqd1;->p:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v4, Lew2;

    .line 119
    .line 120
    sget-object v5, Lew2;->p:Lew2;

    .line 121
    .line 122
    sget-object v6, Lwv2;->p:Lwv2;

    .line 123
    .line 124
    if-eq v4, v5, :cond_e

    .line 125
    .line 126
    sget-object v4, Lwv2;->n:Lwv2;

    .line 127
    .line 128
    if-ne p2, v4, :cond_b

    .line 129
    .line 130
    if-eqz v2, :cond_b

    .line 131
    .line 132
    iput-object p1, p0, Lqd1;->q:Ljava/lang/Object;

    .line 133
    .line 134
    if-eqz v0, :cond_a

    .line 135
    .line 136
    iget-boolean v4, p3, Lfw2;->d:Z

    .line 137
    .line 138
    if-eqz v4, :cond_9

    .line 139
    .line 140
    goto :goto_8

    .line 141
    :cond_9
    move v4, v1

    .line 142
    goto :goto_9

    .line 143
    :cond_a
    :goto_8
    move v4, v3

    .line 144
    :goto_9
    invoke-virtual {p0, p1, v4}, Lqd1;->l(Lvv2;Z)V

    .line 145
    .line 146
    .line 147
    :cond_b
    sget-object v4, Lwv2;->o:Lwv2;

    .line 148
    .line 149
    if-ne p2, v4, :cond_d

    .line 150
    .line 151
    if-eqz v0, :cond_d

    .line 152
    .line 153
    iget-object v4, p0, Lqd1;->q:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v4, Lvv2;

    .line 156
    .line 157
    if-eq p1, v4, :cond_c

    .line 158
    .line 159
    goto :goto_b

    .line 160
    :cond_c
    iget-boolean v4, p3, Lfw2;->d:Z

    .line 161
    .line 162
    if-eqz v4, :cond_d

    .line 163
    .line 164
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    move v5, v1

    .line 169
    :goto_a
    if-ge v5, v4, :cond_d

    .line 170
    .line 171
    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    check-cast v7, Lzv2;

    .line 176
    .line 177
    invoke-virtual {v7}, Lzv2;->a()V

    .line 178
    .line 179
    .line 180
    add-int/lit8 v5, v5, 0x1

    .line 181
    .line 182
    goto :goto_a

    .line 183
    :cond_d
    :goto_b
    if-ne p2, v6, :cond_e

    .line 184
    .line 185
    if-nez v2, :cond_e

    .line 186
    .line 187
    iget-object v2, p0, Lqd1;->q:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v2, Lvv2;

    .line 190
    .line 191
    if-eq p1, v2, :cond_e

    .line 192
    .line 193
    invoke-virtual {p0, p1, v3}, Lqd1;->l(Lvv2;Z)V

    .line 194
    .line 195
    .line 196
    :cond_e
    if-ne p2, v6, :cond_14

    .line 197
    .line 198
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    move v2, v1

    .line 203
    :goto_c
    if-ge v2, p2, :cond_10

    .line 204
    .line 205
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    check-cast v3, Lzv2;

    .line 210
    .line 211
    invoke-static {v3}, Lse0;->f(Lzv2;)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-nez v3, :cond_f

    .line 216
    .line 217
    goto :goto_d

    .line 218
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .line 219
    .line 220
    goto :goto_c

    .line 221
    :cond_10
    sget-object p2, Lew2;->n:Lew2;

    .line 222
    .line 223
    iput-object p2, p0, Lqd1;->p:Ljava/lang/Object;

    .line 224
    .line 225
    iget-object p2, p0, Lqd1;->r:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast p2, Lfw2;

    .line 228
    .line 229
    iput-boolean v1, p2, Lfw2;->d:Z

    .line 230
    .line 231
    const/4 p2, 0x0

    .line 232
    iput-object p2, p0, Lqd1;->q:Ljava/lang/Object;

    .line 233
    .line 234
    :goto_d
    iget-object p2, p0, Lqd1;->q:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast p2, Lvv2;

    .line 237
    .line 238
    if-eq p1, p2, :cond_11

    .line 239
    .line 240
    goto :goto_10

    .line 241
    :cond_11
    if-eqz v0, :cond_14

    .line 242
    .line 243
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    .line 244
    .line 245
    .line 246
    move-result p2

    .line 247
    move v0, v1

    .line 248
    :goto_e
    if-ge v0, p2, :cond_13

    .line 249
    .line 250
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    check-cast v2, Lzv2;

    .line 255
    .line 256
    invoke-virtual {v2}, Lzv2;->c()Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-eqz v2, :cond_12

    .line 261
    .line 262
    iget-boolean p2, p3, Lfw2;->d:Z

    .line 263
    .line 264
    if-nez p2, :cond_13

    .line 265
    .line 266
    invoke-virtual {p0, p1}, Lqd1;->H(Lvv2;)V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    :cond_12
    add-int/lit8 v0, v0, 0x1

    .line 271
    .line 272
    goto :goto_e

    .line 273
    :cond_13
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    .line 274
    .line 275
    .line 276
    move-result p0

    .line 277
    :goto_f
    if-ge v1, p0, :cond_14

    .line 278
    .line 279
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    check-cast p1, Lzv2;

    .line 284
    .line 285
    invoke-virtual {p1}, Lzv2;->a()V

    .line 286
    .line 287
    .line 288
    add-int/lit8 v1, v1, 0x1

    .line 289
    .line 290
    goto :goto_f

    .line 291
    :cond_14
    :goto_10
    return-void
.end method

.method public final G0(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lmd2;->A:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "initializeModifier called on unattached node"

    .line 6
    .line 7
    invoke-static {v0}, Lar1;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lkq;->B:Lld2;

    .line 11
    .line 12
    iget v1, p0, Lmd2;->p:I

    .line 13
    .line 14
    and-int/lit8 v1, v1, 0x4

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    invoke-static {p0, v2}, Lw80;->P(Ljr0;I)Lmm2;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lmm2;->V0()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget v1, p0, Lmd2;->p:I

    .line 29
    .line 30
    and-int/2addr v1, v2

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v1, v1, Lxy1;->S:Lbo;

    .line 38
    .line 39
    iget-object v1, v1, Lbo;->f:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lgw3;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-boolean v1, v1, Lgw3;->B:Z

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    iget-object v1, p0, Lmd2;->u:Lmm2;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-object v3, v1

    .line 56
    check-cast v3, Lqy1;

    .line 57
    .line 58
    invoke-virtual {v3, p0}, Lqy1;->n1(Loy1;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v1, Lmm2;->c0:Lrr2;

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    check-cast v1, Lci1;

    .line 66
    .line 67
    invoke-virtual {v1}, Lci1;->c()V

    .line 68
    .line 69
    .line 70
    :cond_2
    if-nez p1, :cond_3

    .line 71
    .line 72
    invoke-static {p0, v2}, Lw80;->P(Ljr0;I)Lmm2;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lmm2;->V0()V

    .line 77
    .line 78
    .line 79
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lxy1;->E()V

    .line 84
    .line 85
    .line 86
    :cond_3
    instance-of p1, v0, Ll12;

    .line 87
    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    move-object p1, v0

    .line 91
    check-cast p1, Ll12;

    .line 92
    .line 93
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iget-object p1, p1, Ll12;->b:Ln12;

    .line 98
    .line 99
    iput-object v1, p1, Ln12;->l:Lxy1;

    .line 100
    .line 101
    :cond_4
    iget p1, p0, Lmd2;->p:I

    .line 102
    .line 103
    and-int/lit8 v1, p1, 0x10

    .line 104
    .line 105
    if-eqz v1, :cond_5

    .line 106
    .line 107
    instance-of v1, v0, Lfw2;

    .line 108
    .line 109
    if-eqz v1, :cond_5

    .line 110
    .line 111
    check-cast v0, Lfw2;

    .line 112
    .line 113
    iget-object v0, v0, Lfw2;->e:Lqd1;

    .line 114
    .line 115
    iget-object v1, p0, Lmd2;->u:Lmm2;

    .line 116
    .line 117
    iput-object v1, v0, Lqd1;->o:Ljava/lang/Object;

    .line 118
    .line 119
    :cond_5
    and-int/lit8 p1, p1, 0x8

    .line 120
    .line 121
    if-eqz p1, :cond_6

    .line 122
    .line 123
    invoke-static {p0}, Lw80;->S(Ljr0;)Lsr2;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    check-cast p0, Lq9;

    .line 128
    .line 129
    invoke-virtual {p0}, Lq9;->y()V

    .line 130
    .line 131
    .line 132
    :cond_6
    return-void
.end method

.method public final H0(Lfa1;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkq;->B:Lld2;

    .line 2
    .line 3
    const-string p1, "onFocusEvent called on wrong node"

    .line 4
    .line 5
    invoke-static {p1}, Lar1;->b(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance p0, Ljava/lang/ClassCastException;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p0
.end method

.method public final K(Lzy1;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkq;->B:Lld2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Lix0;

    .line 7
    .line 8
    invoke-virtual {p1}, Lzy1;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final O(Lk82;Lya2;I)I
    .locals 4

    .line 1
    iget-object p0, p0, Lkq;->B:Lld2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Lpf0;

    .line 7
    .line 8
    new-instance v0, Lkp0;

    .line 9
    .line 10
    sget-object v1, Lob2;->n:Lob2;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    sget-object v3, Lnb2;->n:Lnb2;

    .line 14
    .line 15
    invoke-direct {v0, p2, v3, v1, v2}, Lkp0;-><init>(Lya2;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    const/4 v1, 0x7

    .line 20
    invoke-static {p2, p3, v1}, Lnf0;->b(III)J

    .line 21
    .line 22
    .line 23
    move-result-wide p2

    .line 24
    new-instance v1, Ltt1;

    .line 25
    .line 26
    invoke-interface {p1}, Ljt1;->getLayoutDirection()Lhy1;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v1, p1, v2}, Ltt1;-><init>(Ljt1;Lhy1;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1, v0, p2, p3}, Lpf0;->f(Lgb2;Lya2;J)Leb2;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0}, Leb2;->b()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public final Q(Lba1;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkq;->B:Lld2;

    .line 2
    .line 3
    const-string p1, "applyFocusProperties called on wrong node"

    .line 4
    .line 5
    invoke-static {p1}, Lar1;->b(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance p0, Ljava/lang/ClassCastException;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p0
.end method

.method public final V()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lkq;->B:Lld2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Lfw2;

    .line 7
    .line 8
    iget-object p0, p0, Lfw2;->e:Lqd1;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0
.end method

.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkq;->B:Lld2;

    .line 2
    .line 3
    instance-of v0, v0, Lfw2;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lkq;->c0()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final a0(Lph3;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lkq;->B:Lld2;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast v0, Lch3;

    .line 9
    .line 10
    invoke-interface {v0}, Lch3;->d()Lbh3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-object/from16 v1, p1

    .line 18
    .line 19
    check-cast v1, Lbh3;

    .line 20
    .line 21
    iget-object v2, v1, Lbh3;->n:Lkg2;

    .line 22
    .line 23
    iget-boolean v3, v0, Lbh3;->p:Z

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    iput-boolean v4, v1, Lbh3;->p:Z

    .line 29
    .line 30
    :cond_0
    iget-boolean v3, v0, Lbh3;->q:Z

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    iput-boolean v4, v1, Lbh3;->q:Z

    .line 35
    .line 36
    :cond_1
    iget-object v0, v0, Lbh3;->n:Lkg2;

    .line 37
    .line 38
    iget-object v1, v0, Lkg2;->b:[Ljava/lang/Object;

    .line 39
    .line 40
    iget-object v3, v0, Lkg2;->c:[Ljava/lang/Object;

    .line 41
    .line 42
    iget-object v0, v0, Lkg2;->a:[J

    .line 43
    .line 44
    array-length v4, v0

    .line 45
    add-int/lit8 v4, v4, -0x2

    .line 46
    .line 47
    if-ltz v4, :cond_8

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    :goto_0
    aget-wide v7, v0, v6

    .line 51
    .line 52
    not-long v9, v7

    .line 53
    const/4 v11, 0x7

    .line 54
    shl-long/2addr v9, v11

    .line 55
    and-long/2addr v9, v7

    .line 56
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    and-long/2addr v9, v11

    .line 62
    cmp-long v9, v9, v11

    .line 63
    .line 64
    if-eqz v9, :cond_7

    .line 65
    .line 66
    sub-int v9, v6, v4

    .line 67
    .line 68
    not-int v9, v9

    .line 69
    ushr-int/lit8 v9, v9, 0x1f

    .line 70
    .line 71
    const/16 v10, 0x8

    .line 72
    .line 73
    rsub-int/lit8 v9, v9, 0x8

    .line 74
    .line 75
    const/4 v11, 0x0

    .line 76
    :goto_1
    if-ge v11, v9, :cond_6

    .line 77
    .line 78
    const-wide/16 v12, 0xff

    .line 79
    .line 80
    and-long/2addr v12, v7

    .line 81
    const-wide/16 v14, 0x80

    .line 82
    .line 83
    cmp-long v12, v12, v14

    .line 84
    .line 85
    if-gez v12, :cond_5

    .line 86
    .line 87
    shl-int/lit8 v12, v6, 0x3

    .line 88
    .line 89
    add-int/2addr v12, v11

    .line 90
    aget-object v13, v1, v12

    .line 91
    .line 92
    aget-object v12, v3, v12

    .line 93
    .line 94
    check-cast v13, Loh3;

    .line 95
    .line 96
    invoke-virtual {v2, v13}, Lkg2;->b(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v14

    .line 100
    if-nez v14, :cond_2

    .line 101
    .line 102
    invoke-virtual {v2, v13, v12}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    instance-of v14, v12, Lo2;

    .line 107
    .line 108
    if-eqz v14, :cond_5

    .line 109
    .line 110
    invoke-virtual {v2, v13}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v14

    .line 114
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    check-cast v14, Lo2;

    .line 118
    .line 119
    new-instance v15, Lo2;

    .line 120
    .line 121
    iget-object v5, v14, Lo2;->a:Ljava/lang/String;

    .line 122
    .line 123
    if-nez v5, :cond_3

    .line 124
    .line 125
    move-object v5, v12

    .line 126
    check-cast v5, Lo2;

    .line 127
    .line 128
    iget-object v5, v5, Lo2;->a:Ljava/lang/String;

    .line 129
    .line 130
    :cond_3
    iget-object v14, v14, Lo2;->b:Lef1;

    .line 131
    .line 132
    if-nez v14, :cond_4

    .line 133
    .line 134
    check-cast v12, Lo2;

    .line 135
    .line 136
    iget-object v14, v12, Lo2;->b:Lef1;

    .line 137
    .line 138
    :cond_4
    invoke-direct {v15, v5, v14}, Lo2;-><init>(Ljava/lang/String;Lef1;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v13, v15}, Lkg2;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_5
    :goto_2
    shr-long/2addr v7, v10

    .line 145
    add-int/lit8 v11, v11, 0x1

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_6
    if-ne v9, v10, :cond_8

    .line 149
    .line 150
    :cond_7
    if-eq v6, v4, :cond_8

    .line 151
    .line 152
    add-int/lit8 v6, v6, 0x1

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_8
    return-void
.end method

.method public final b()Las0;
    .locals 0

    .line 1
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lxy1;->L:Las0;

    .line 6
    .line 7
    return-object p0
.end method

.method public final c(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c0()V
    .locals 11

    .line 1
    iget-object p0, p0, Lkq;->B:Lld2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Lfw2;

    .line 7
    .line 8
    iget-object p0, p0, Lfw2;->e:Lqd1;

    .line 9
    .line 10
    iget-object v0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lew2;

    .line 13
    .line 14
    iget-object v1, p0, Lqd1;->r:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lfw2;

    .line 17
    .line 18
    sget-object v2, Lew2;->o:Lew2;

    .line 19
    .line 20
    if-ne v0, v2, :cond_0

    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v10, 0x0

    .line 28
    const/4 v7, 0x3

    .line 29
    const/4 v8, 0x0

    .line 30
    move-wide v5, v3

    .line 31
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lfw2;->e()Lpe1;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lwc;

    .line 44
    .line 45
    invoke-virtual {v3, v0}, Lwc;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 49
    .line 50
    .line 51
    sget-object v0, Lew2;->n:Lew2;

    .line 52
    .line 53
    iput-object v0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 54
    .line 55
    iput-boolean v2, v1, Lfw2;->d:Z

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lqd1;->q:Ljava/lang/Object;

    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method public final d()J
    .locals 2

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    invoke-static {p0, v0}, Lw80;->P(Ljr0;I)Lmm2;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-wide v0, p0, Ldv2;->p:J

    .line 8
    .line 9
    invoke-static {v0, v1}, Lse0;->H(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final e(Lk82;Lya2;I)I
    .locals 4

    .line 1
    iget-object p0, p0, Lkq;->B:Lld2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Lpf0;

    .line 7
    .line 8
    new-instance v0, Lkp0;

    .line 9
    .line 10
    sget-object v1, Lob2;->n:Lob2;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    sget-object v3, Lnb2;->o:Lnb2;

    .line 14
    .line 15
    invoke-direct {v0, p2, v3, v1, v2}, Lkp0;-><init>(Lya2;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    const/4 v1, 0x7

    .line 20
    invoke-static {p2, p3, v1}, Lnf0;->b(III)J

    .line 21
    .line 22
    .line 23
    move-result-wide p2

    .line 24
    new-instance v1, Ltt1;

    .line 25
    .line 26
    invoke-interface {p1}, Ljt1;->getLayoutDirection()Lhy1;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v1, p1, v2}, Ltt1;-><init>(Ljt1;Lhy1;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v1, v0, p2, p3}, Lpf0;->f(Lgb2;Lya2;J)Leb2;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0}, Leb2;->b()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public final getLayoutDirection()Lhy1;
    .locals 0

    .line 1
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lxy1;->M:Lhy1;

    .line 6
    .line 7
    return-object p0
.end method

.method public final h()Lw13;
    .locals 0

    .line 1
    sget-object p0, Lw13;->z:Lw13;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h0(Lgb2;Lya2;J)Leb2;
    .locals 0

    .line 1
    iget-object p0, p0, Lkq;->B:Lld2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Lpf0;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, p3, p4}, Lpf0;->f(Lgb2;Lya2;J)Leb2;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final l(Lk82;Lya2;I)I
    .locals 4

    .line 1
    iget-object p0, p0, Lkq;->B:Lld2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Lpf0;

    .line 7
    .line 8
    new-instance v0, Lkp0;

    .line 9
    .line 10
    sget-object v1, Lob2;->o:Lob2;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    sget-object v3, Lnb2;->o:Lnb2;

    .line 14
    .line 15
    invoke-direct {v0, p2, v3, v1, v2}, Lkp0;-><init>(Lya2;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    const/16 v1, 0xd

    .line 20
    .line 21
    invoke-static {p3, p2, v1}, Lnf0;->b(III)J

    .line 22
    .line 23
    .line 24
    move-result-wide p2

    .line 25
    new-instance v1, Ltt1;

    .line 26
    .line 27
    invoke-interface {p1}, Ljt1;->getLayoutDirection()Lhy1;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-direct {v1, p1, v2}, Ltt1;-><init>(Ljt1;Lhy1;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1, v0, p2, p3}, Lpf0;->f(Lgb2;Lya2;J)Leb2;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p0}, Leb2;->a()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0
.end method

.method public final l0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lkq;->B:Lld2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Lce;

    .line 7
    .line 8
    return-object p0
.end method

.method public final m(Lgy1;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final m0()V
    .locals 0

    .line 1
    invoke-static {p0}, Lkt4;->Q(Ljx0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final n0()V
    .locals 0

    .line 1
    iget-object p0, p0, Lkq;->B:Lld2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Lfw2;

    .line 7
    .line 8
    iget-object p0, p0, Lfw2;->e:Lqd1;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final r(Lmm2;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkq;->B:Lld2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/ClassCastException;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lkq;->B:Lld2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final w()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmd2;->A:Z

    .line 2
    .line 3
    return p0
.end method

.method public final y(Lk82;Lya2;I)I
    .locals 4

    .line 1
    iget-object p0, p0, Lkq;->B:Lld2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Lpf0;

    .line 7
    .line 8
    new-instance v0, Lkp0;

    .line 9
    .line 10
    sget-object v1, Lob2;->o:Lob2;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    sget-object v3, Lnb2;->n:Lnb2;

    .line 14
    .line 15
    invoke-direct {v0, p2, v3, v1, v2}, Lkp0;-><init>(Lya2;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    const/16 v1, 0xd

    .line 20
    .line 21
    invoke-static {p3, p2, v1}, Lnf0;->b(III)J

    .line 22
    .line 23
    .line 24
    move-result-wide p2

    .line 25
    new-instance v1, Ltt1;

    .line 26
    .line 27
    invoke-interface {p1}, Ljt1;->getLayoutDirection()Lhy1;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-direct {v1, p1, v2}, Ltt1;-><init>(Ljt1;Lhy1;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1, v0, p2, p3}, Lpf0;->f(Lgb2;Lya2;J)Leb2;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p0}, Leb2;->a()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0
.end method

.method public final y0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lkq;->G0(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final z0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmd2;->A:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "unInitializeModifier called on unattached node"

    .line 6
    .line 7
    invoke-static {v0}, Lar1;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lmd2;->p:I

    .line 11
    .line 12
    and-int/lit8 v0, v0, 0x8

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {p0}, Lw80;->S(Ljr0;)Lsr2;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lq9;

    .line 21
    .line 22
    invoke-virtual {p0}, Lq9;->y()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

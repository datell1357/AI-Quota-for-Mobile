.class public final Lii2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final A:Lwl3;

.field public final a:Lxi2;

.field public final b:Lf92;

.field public c:Lsi2;

.field public d:Landroid/os/Bundle;

.field public e:[Landroid/os/Bundle;

.field public final f:Lvh;

.field public final g:Lwr3;

.field public final h:Lb23;

.field public final i:Lwr3;

.field public final j:Lb23;

.field public final k:Ljava/util/LinkedHashMap;

.field public final l:Ljava/util/LinkedHashMap;

.field public final m:Ljava/util/LinkedHashMap;

.field public final n:Ljava/util/LinkedHashMap;

.field public o:Lp22;

.field public p:Lji2;

.field public final q:Ljava/util/ArrayList;

.field public r:Lg22;

.field public final s:Lfi2;

.field public final t:Lmk2;

.field public final u:Ljava/util/LinkedHashMap;

.field public v:Lpe1;

.field public w:Lgi2;

.field public final x:Ljava/util/LinkedHashMap;

.field public y:I

.field public final z:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lxi2;Lf92;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lii2;->a:Lxi2;

    .line 5
    .line 6
    iput-object p2, p0, Lii2;->b:Lf92;

    .line 7
    .line 8
    new-instance p1, Lvh;

    .line 9
    .line 10
    invoke-direct {p1}, Lvh;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lii2;->f:Lvh;

    .line 14
    .line 15
    sget-object p1, Lg01;->n:Lg01;

    .line 16
    .line 17
    invoke-static {p1}, Lxr3;->a(Ljava/lang/Object;)Lwr3;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iput-object p2, p0, Lii2;->g:Lwr3;

    .line 22
    .line 23
    new-instance v0, Lb23;

    .line 24
    .line 25
    invoke-direct {v0, p2}, Lb23;-><init>(Lwr3;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lii2;->h:Lb23;

    .line 29
    .line 30
    invoke-static {p1}, Lxr3;->a(Ljava/lang/Object;)Lwr3;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lii2;->i:Lwr3;

    .line 35
    .line 36
    new-instance p2, Lb23;

    .line 37
    .line 38
    invoke-direct {p2, p1}, Lb23;-><init>(Lwr3;)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Lii2;->j:Lb23;

    .line 42
    .line 43
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lii2;->k:Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lii2;->l:Ljava/util/LinkedHashMap;

    .line 56
    .line 57
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lii2;->m:Ljava/util/LinkedHashMap;

    .line 63
    .line 64
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lii2;->n:Ljava/util/LinkedHashMap;

    .line 70
    .line 71
    new-instance p1, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lii2;->q:Ljava/util/ArrayList;

    .line 77
    .line 78
    sget-object p1, Lg22;->o:Lg22;

    .line 79
    .line 80
    iput-object p1, p0, Lii2;->r:Lg22;

    .line 81
    .line 82
    new-instance p1, Lfi2;

    .line 83
    .line 84
    const/4 p2, 0x0

    .line 85
    invoke-direct {p1, p2, p0}, Lfi2;-><init>(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iput-object p1, p0, Lii2;->s:Lfi2;

    .line 89
    .line 90
    new-instance p1, Lmk2;

    .line 91
    .line 92
    invoke-direct {p1}, Lmk2;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Lii2;->t:Lmk2;

    .line 96
    .line 97
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 98
    .line 99
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object p1, p0, Lii2;->u:Ljava/util/LinkedHashMap;

    .line 103
    .line 104
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 105
    .line 106
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object p1, p0, Lii2;->x:Ljava/util/LinkedHashMap;

    .line 110
    .line 111
    new-instance p1, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object p1, p0, Lii2;->z:Ljava/util/ArrayList;

    .line 117
    .line 118
    const/4 p1, 0x1

    .line 119
    const/4 p2, 0x2

    .line 120
    invoke-static {p1, p2}, Lxl3;->a(II)Lwl3;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-object p1, p0, Lii2;->A:Lwl3;

    .line 125
    .line 126
    return-void
.end method

.method public static e(ILqi2;Lqi2;Z)Lqi2;
    .locals 2

    .line 1
    iget-object v0, p1, Lqi2;->o:Lgg;

    .line 2
    .line 3
    iget v0, v0, Lgg;->a:I

    .line 4
    .line 5
    if-ne v0, p0, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lqi2;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p1, Lqi2;->p:Lsi2;

    .line 16
    .line 17
    iget-object v1, p2, Lqi2;->p:Lsi2;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :cond_0
    return-object p1

    .line 26
    :cond_1
    instance-of v0, p1, Lsi2;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    move-object v0, p1

    .line 31
    check-cast v0, Lsi2;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    :goto_0
    if-nez v0, :cond_3

    .line 36
    .line 37
    iget-object v0, p1, Lqi2;->p:Lsi2;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    :cond_3
    iget-object p1, v0, Lsi2;->s:Lvi2;

    .line 43
    .line 44
    invoke-virtual {p1, p0, v0, p2, p3}, Lvi2;->p(ILqi2;Lqi2;Z)Lqi2;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public static synthetic r(Lii2;Lyh2;)V
    .locals 2

    .line 1
    new-instance v0, Lvh;

    .line 2
    .line 3
    invoke-direct {v0}, Lvh;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p1, v1, v0}, Lii2;->q(Lyh2;ZLvh;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lqi2;Landroid/os/Bundle;Lyh2;Ljava/util/List;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    iget-object v5, v0, Lii2;->a:Lxi2;

    .line 12
    .line 13
    iget-object v5, v5, Lxi2;->c:Ldi2;

    .line 14
    .line 15
    iget-object v6, v3, Lyh2;->o:Lqi2;

    .line 16
    .line 17
    instance-of v7, v6, Ltt0;

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v9, 0x1

    .line 21
    iget-object v10, v0, Lii2;->f:Lvh;

    .line 22
    .line 23
    if-nez v7, :cond_1

    .line 24
    .line 25
    :cond_0
    invoke-virtual {v10}, Lvh;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-nez v7, :cond_1

    .line 30
    .line 31
    invoke-virtual {v10}, Lvh;->last()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    check-cast v7, Lyh2;

    .line 36
    .line 37
    iget-object v7, v7, Lyh2;->o:Lqi2;

    .line 38
    .line 39
    instance-of v7, v7, Ltt0;

    .line 40
    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    invoke-virtual {v10}, Lvh;->last()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    check-cast v7, Lyh2;

    .line 48
    .line 49
    iget-object v7, v7, Lyh2;->o:Lqi2;

    .line 50
    .line 51
    iget-object v7, v7, Lqi2;->o:Lgg;

    .line 52
    .line 53
    iget v7, v7, Lgg;->a:I

    .line 54
    .line 55
    invoke-virtual {v0, v7, v9, v8}, Lii2;->o(IZZ)Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-nez v7, :cond_0

    .line 60
    .line 61
    :cond_1
    new-instance v7, Lvh;

    .line 62
    .line 63
    invoke-direct {v7}, Lvh;-><init>()V

    .line 64
    .line 65
    .line 66
    instance-of v11, v1, Lsi2;

    .line 67
    .line 68
    const/4 v12, 0x0

    .line 69
    if-eqz v11, :cond_7

    .line 70
    .line 71
    move-object v11, v6

    .line 72
    :cond_2
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    iget-object v11, v11, Lqi2;->p:Lsi2;

    .line 76
    .line 77
    if-eqz v11, :cond_6

    .line 78
    .line 79
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    invoke-interface {v4, v13}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    :cond_3
    invoke-interface {v13}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 88
    .line 89
    .line 90
    move-result v14

    .line 91
    if-eqz v14, :cond_4

    .line 92
    .line 93
    invoke-interface {v13}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v14

    .line 97
    move-object v15, v14

    .line 98
    check-cast v15, Lyh2;

    .line 99
    .line 100
    iget-object v15, v15, Lyh2;->o:Lqi2;

    .line 101
    .line 102
    invoke-static {v15, v11}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v15

    .line 106
    if-eqz v15, :cond_3

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    move-object v14, v12

    .line 110
    :goto_0
    check-cast v14, Lyh2;

    .line 111
    .line 112
    if-nez v14, :cond_5

    .line 113
    .line 114
    invoke-virtual {v0}, Lii2;->j()Lg22;

    .line 115
    .line 116
    .line 117
    move-result-object v13

    .line 118
    iget-object v14, v0, Lii2;->p:Lji2;

    .line 119
    .line 120
    invoke-static {v5, v11, v2, v13, v14}, Lb21;->v(Ldi2;Lqi2;Landroid/os/Bundle;Lg22;Lji2;)Lyh2;

    .line 121
    .line 122
    .line 123
    move-result-object v14

    .line 124
    :cond_5
    invoke-virtual {v7, v14}, Lvh;->addFirst(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v10}, Lvh;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v13

    .line 131
    if-nez v13, :cond_6

    .line 132
    .line 133
    invoke-virtual {v10}, Lvh;->last()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v13

    .line 137
    check-cast v13, Lyh2;

    .line 138
    .line 139
    iget-object v13, v13, Lyh2;->o:Lqi2;

    .line 140
    .line 141
    if-ne v13, v11, :cond_6

    .line 142
    .line 143
    invoke-virtual {v10}, Lvh;->last()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    check-cast v13, Lyh2;

    .line 148
    .line 149
    invoke-static {v0, v13}, Lii2;->r(Lii2;Lyh2;)V

    .line 150
    .line 151
    .line 152
    :cond_6
    if-eqz v11, :cond_7

    .line 153
    .line 154
    if-ne v11, v1, :cond_2

    .line 155
    .line 156
    :cond_7
    invoke-virtual {v7}, Lvh;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v11

    .line 160
    if-eqz v11, :cond_8

    .line 161
    .line 162
    move-object v11, v6

    .line 163
    goto :goto_1

    .line 164
    :cond_8
    invoke-virtual {v7}, Lvh;->first()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    check-cast v11, Lyh2;

    .line 169
    .line 170
    iget-object v11, v11, Lyh2;->o:Lqi2;

    .line 171
    .line 172
    :goto_1
    if-eqz v11, :cond_e

    .line 173
    .line 174
    iget-object v13, v11, Lqi2;->o:Lgg;

    .line 175
    .line 176
    iget v13, v13, Lgg;->a:I

    .line 177
    .line 178
    invoke-virtual {v0, v13, v11}, Lii2;->d(ILqi2;)Lqi2;

    .line 179
    .line 180
    .line 181
    move-result-object v13

    .line 182
    if-eq v13, v11, :cond_e

    .line 183
    .line 184
    iget-object v11, v11, Lqi2;->p:Lsi2;

    .line 185
    .line 186
    if-eqz v11, :cond_d

    .line 187
    .line 188
    if-eqz v2, :cond_9

    .line 189
    .line 190
    invoke-virtual {v2}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result v13

    .line 194
    if-ne v13, v9, :cond_9

    .line 195
    .line 196
    move-object v13, v12

    .line 197
    goto :goto_2

    .line 198
    :cond_9
    move-object v13, v2

    .line 199
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 200
    .line 201
    .line 202
    move-result v14

    .line 203
    invoke-interface {v4, v14}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 204
    .line 205
    .line 206
    move-result-object v14

    .line 207
    :goto_3
    invoke-interface {v14}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 208
    .line 209
    .line 210
    move-result v15

    .line 211
    if-eqz v15, :cond_b

    .line 212
    .line 213
    invoke-interface {v14}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v15

    .line 217
    move-object v8, v15

    .line 218
    check-cast v8, Lyh2;

    .line 219
    .line 220
    iget-object v8, v8, Lyh2;->o:Lqi2;

    .line 221
    .line 222
    invoke-static {v8, v11}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    if-eqz v8, :cond_a

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_a
    const/4 v8, 0x0

    .line 230
    goto :goto_3

    .line 231
    :cond_b
    move-object v15, v12

    .line 232
    :goto_4
    check-cast v15, Lyh2;

    .line 233
    .line 234
    if-nez v15, :cond_c

    .line 235
    .line 236
    invoke-virtual {v11, v13}, Lqi2;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    invoke-virtual {v0}, Lii2;->j()Lg22;

    .line 241
    .line 242
    .line 243
    move-result-object v13

    .line 244
    iget-object v14, v0, Lii2;->p:Lji2;

    .line 245
    .line 246
    invoke-static {v5, v11, v8, v13, v14}, Lb21;->v(Ldi2;Lqi2;Landroid/os/Bundle;Lg22;Lji2;)Lyh2;

    .line 247
    .line 248
    .line 249
    move-result-object v15

    .line 250
    :cond_c
    invoke-virtual {v7, v15}, Lvh;->addFirst(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    :cond_d
    const/4 v8, 0x0

    .line 254
    goto :goto_1

    .line 255
    :cond_e
    invoke-virtual {v7}, Lvh;->isEmpty()Z

    .line 256
    .line 257
    .line 258
    move-result v8

    .line 259
    if-eqz v8, :cond_f

    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_f
    invoke-virtual {v7}, Lvh;->first()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    check-cast v6, Lyh2;

    .line 267
    .line 268
    iget-object v6, v6, Lyh2;->o:Lqi2;

    .line 269
    .line 270
    :goto_5
    invoke-virtual {v10}, Lvh;->isEmpty()Z

    .line 271
    .line 272
    .line 273
    move-result v8

    .line 274
    if-nez v8, :cond_10

    .line 275
    .line 276
    invoke-virtual {v10}, Lvh;->last()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v8

    .line 280
    check-cast v8, Lyh2;

    .line 281
    .line 282
    iget-object v8, v8, Lyh2;->o:Lqi2;

    .line 283
    .line 284
    instance-of v8, v8, Lsi2;

    .line 285
    .line 286
    if-eqz v8, :cond_10

    .line 287
    .line 288
    invoke-virtual {v10}, Lvh;->last()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v8

    .line 292
    check-cast v8, Lyh2;

    .line 293
    .line 294
    iget-object v8, v8, Lyh2;->o:Lqi2;

    .line 295
    .line 296
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    check-cast v8, Lsi2;

    .line 300
    .line 301
    iget-object v8, v8, Lsi2;->s:Lvi2;

    .line 302
    .line 303
    iget-object v8, v8, Lvi2;->f:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v8, Lmq3;

    .line 306
    .line 307
    iget-object v9, v6, Lqi2;->o:Lgg;

    .line 308
    .line 309
    iget v9, v9, Lgg;->a:I

    .line 310
    .line 311
    invoke-virtual {v8, v9}, Lmq3;->c(I)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v8

    .line 315
    if-nez v8, :cond_10

    .line 316
    .line 317
    invoke-virtual {v10}, Lvh;->last()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v8

    .line 321
    check-cast v8, Lyh2;

    .line 322
    .line 323
    invoke-static {v0, v8}, Lii2;->r(Lii2;Lyh2;)V

    .line 324
    .line 325
    .line 326
    goto :goto_5

    .line 327
    :cond_10
    invoke-virtual {v10}, Lvh;->g()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    check-cast v6, Lyh2;

    .line 332
    .line 333
    if-nez v6, :cond_11

    .line 334
    .line 335
    invoke-virtual {v7}, Lvh;->g()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    check-cast v6, Lyh2;

    .line 340
    .line 341
    :cond_11
    if-eqz v6, :cond_12

    .line 342
    .line 343
    iget-object v6, v6, Lyh2;->o:Lqi2;

    .line 344
    .line 345
    goto :goto_6

    .line 346
    :cond_12
    move-object v6, v12

    .line 347
    :goto_6
    iget-object v8, v0, Lii2;->c:Lsi2;

    .line 348
    .line 349
    invoke-static {v6, v8}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v6

    .line 353
    if-nez v6, :cond_16

    .line 354
    .line 355
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 356
    .line 357
    .line 358
    move-result v6

    .line 359
    invoke-interface {v4, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    :cond_13
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 364
    .line 365
    .line 366
    move-result v6

    .line 367
    if-eqz v6, :cond_14

    .line 368
    .line 369
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    move-object v8, v6

    .line 374
    check-cast v8, Lyh2;

    .line 375
    .line 376
    iget-object v8, v8, Lyh2;->o:Lqi2;

    .line 377
    .line 378
    iget-object v9, v0, Lii2;->c:Lsi2;

    .line 379
    .line 380
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    .line 382
    .line 383
    invoke-static {v8, v9}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v8

    .line 387
    if-eqz v8, :cond_13

    .line 388
    .line 389
    move-object v12, v6

    .line 390
    :cond_14
    check-cast v12, Lyh2;

    .line 391
    .line 392
    if-nez v12, :cond_15

    .line 393
    .line 394
    iget-object v4, v0, Lii2;->c:Lsi2;

    .line 395
    .line 396
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    iget-object v6, v0, Lii2;->c:Lsi2;

    .line 400
    .line 401
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v6, v2}, Lqi2;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    invoke-virtual {v0}, Lii2;->j()Lg22;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    iget-object v8, v0, Lii2;->p:Lji2;

    .line 413
    .line 414
    invoke-static {v5, v4, v2, v6, v8}, Lb21;->v(Ldi2;Lqi2;Landroid/os/Bundle;Lg22;Lji2;)Lyh2;

    .line 415
    .line 416
    .line 417
    move-result-object v12

    .line 418
    :cond_15
    invoke-virtual {v7, v12}, Lvh;->addFirst(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    :cond_16
    invoke-virtual {v7}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 426
    .line 427
    .line 428
    move-result v4

    .line 429
    if-eqz v4, :cond_18

    .line 430
    .line 431
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    check-cast v4, Lyh2;

    .line 436
    .line 437
    iget-object v5, v4, Lyh2;->o:Lqi2;

    .line 438
    .line 439
    iget-object v5, v5, Lqi2;->n:Ljava/lang/String;

    .line 440
    .line 441
    iget-object v6, v0, Lii2;->t:Lmk2;

    .line 442
    .line 443
    invoke-virtual {v6, v5}, Lmk2;->b(Ljava/lang/String;)Llk2;

    .line 444
    .line 445
    .line 446
    move-result-object v5

    .line 447
    iget-object v6, v0, Lii2;->u:Ljava/util/LinkedHashMap;

    .line 448
    .line 449
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    if-eqz v5, :cond_17

    .line 454
    .line 455
    check-cast v5, Lei2;

    .line 456
    .line 457
    invoke-virtual {v5, v4}, Lei2;->a(Lyh2;)V

    .line 458
    .line 459
    .line 460
    goto :goto_7

    .line 461
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 462
    .line 463
    const-string v2, "NavigatorBackStack for "

    .line 464
    .line 465
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    iget-object v1, v1, Lqi2;->n:Ljava/lang/String;

    .line 469
    .line 470
    const-string v2, " should already be created"

    .line 471
    .line 472
    invoke-static {v0, v1, v2}, Lxw1;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-static {v0}, Lp61;->e(Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    return-void

    .line 480
    :cond_18
    invoke-virtual {v10, v7}, Lvh;->addAll(Ljava/util/Collection;)Z

    .line 481
    .line 482
    .line 483
    invoke-virtual {v10, v3}, Lvh;->addLast(Ljava/lang/Object;)V

    .line 484
    .line 485
    .line 486
    invoke-static {v7, v3}, Lo70;->r0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    const/4 v8, 0x0

    .line 495
    :cond_19
    :goto_8
    if-ge v8, v2, :cond_1a

    .line 496
    .line 497
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    add-int/lit8 v8, v8, 0x1

    .line 502
    .line 503
    check-cast v3, Lyh2;

    .line 504
    .line 505
    iget-object v4, v3, Lyh2;->o:Lqi2;

    .line 506
    .line 507
    iget-object v4, v4, Lqi2;->p:Lsi2;

    .line 508
    .line 509
    if-eqz v4, :cond_19

    .line 510
    .line 511
    iget-object v4, v4, Lqi2;->o:Lgg;

    .line 512
    .line 513
    iget v4, v4, Lgg;->a:I

    .line 514
    .line 515
    invoke-virtual {v0, v4}, Lii2;->f(I)Lyh2;

    .line 516
    .line 517
    .line 518
    move-result-object v4

    .line 519
    invoke-virtual {v0, v3, v4}, Lii2;->l(Lyh2;Lyh2;)V

    .line 520
    .line 521
    .line 522
    goto :goto_8

    .line 523
    :cond_1a
    return-void
.end method

.method public final b()Z
    .locals 11

    .line 1
    :goto_0
    iget-object v0, p0, Lii2;->f:Lvh;

    .line 2
    .line 3
    invoke-virtual {v0}, Lvh;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lvh;->last()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lyh2;

    .line 14
    .line 15
    iget-object v1, v1, Lyh2;->o:Lqi2;

    .line 16
    .line 17
    instance-of v1, v1, Lsi2;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lvh;->last()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lyh2;

    .line 26
    .line 27
    invoke-static {p0, v0}, Lii2;->r(Lii2;Lyh2;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Lvh;->i()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lyh2;

    .line 36
    .line 37
    iget-object v2, p0, Lii2;->z:Ljava/util/ArrayList;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_1
    iget v3, p0, Lii2;->y:I

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    add-int/2addr v3, v4

    .line 48
    iput v3, p0, Lii2;->y:I

    .line 49
    .line 50
    invoke-virtual {p0}, Lii2;->v()V

    .line 51
    .line 52
    .line 53
    iget v3, p0, Lii2;->y:I

    .line 54
    .line 55
    add-int/lit8 v3, v3, -0x1

    .line 56
    .line 57
    iput v3, p0, Lii2;->y:I

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    if-nez v3, :cond_5

    .line 61
    .line 62
    invoke-static {v2}, Lo70;->D0(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    move v6, v5

    .line 74
    :goto_1
    const/4 v7, 0x0

    .line 75
    if-ge v6, v2, :cond_4

    .line 76
    .line 77
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    add-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    check-cast v8, Lyh2;

    .line 84
    .line 85
    iget-object v9, p0, Lii2;->q:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-static {v9}, Lo70;->C0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    if-nez v10, :cond_2

    .line 100
    .line 101
    iget-object v7, p0, Lii2;->A:Lwl3;

    .line 102
    .line 103
    invoke-virtual {v7, v8}, Lwl3;->q(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    if-eqz p0, :cond_3

    .line 112
    .line 113
    invoke-static {}, Lmk0;->b()V

    .line 114
    .line 115
    .line 116
    return v5

    .line 117
    :cond_3
    iget-object p0, v8, Lyh2;->o:Lqi2;

    .line 118
    .line 119
    iget-object p0, v8, Lyh2;->u:Lai2;

    .line 120
    .line 121
    invoke-virtual {p0}, Lai2;->a()Landroid/os/Bundle;

    .line 122
    .line 123
    .line 124
    throw v7

    .line 125
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lii2;->g:Lwr3;

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v7, v2}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lii2;->s()Ljava/util/ArrayList;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object p0, p0, Lii2;->i:Lwr3;

    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v7, v0}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    :cond_5
    if-eqz v1, :cond_6

    .line 151
    .line 152
    return v4

    .line 153
    :cond_6
    return v5
.end method

.method public final c(Ljava/util/ArrayList;Lqi2;ZZ)Z
    .locals 12

    .line 1
    new-instance v2, Ls33;

    .line 2
    .line 3
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v5, Lvh;

    .line 7
    .line 8
    invoke-direct {v5}, Lvh;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    const/4 v7, 0x0

    .line 16
    move v0, v7

    .line 17
    :goto_0
    const/4 v8, 0x0

    .line 18
    if-ge v0, v6, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    add-int/lit8 v9, v0, 0x1

    .line 25
    .line 26
    move-object v10, v1

    .line 27
    check-cast v10, Llk2;

    .line 28
    .line 29
    new-instance v1, Ls33;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lii2;->f:Lvh;

    .line 35
    .line 36
    invoke-virtual {v0}, Lvh;->last()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    move-object v11, v0

    .line 41
    check-cast v11, Lyh2;

    .line 42
    .line 43
    new-instance v0, Lgi2;

    .line 44
    .line 45
    move-object v3, p0

    .line 46
    move/from16 v4, p4

    .line 47
    .line 48
    invoke-direct/range {v0 .. v5}, Lgi2;-><init>(Ls33;Ls33;Lii2;ZLvh;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lii2;->w:Lgi2;

    .line 58
    .line 59
    invoke-virtual {v10, v11, v4}, Llk2;->e(Lyh2;Z)V

    .line 60
    .line 61
    .line 62
    iput-object v8, p0, Lii2;->w:Lgi2;

    .line 63
    .line 64
    iget-boolean v0, v1, Ls33;->n:Z

    .line 65
    .line 66
    if-nez v0, :cond_0

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    move v0, v9

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    move/from16 v4, p4

    .line 72
    .line 73
    :goto_1
    if-eqz v4, :cond_5

    .line 74
    .line 75
    iget-object p1, p0, Lii2;->m:Ljava/util/LinkedHashMap;

    .line 76
    .line 77
    if-nez p3, :cond_3

    .line 78
    .line 79
    new-instance p3, Lz82;

    .line 80
    .line 81
    const/4 v0, 0x6

    .line 82
    invoke-direct {p3, v0}, Lz82;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-static {p2, p3}, Lci3;->K(Ljava/lang/Object;Lpe1;)Lai3;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    new-instance p3, Lhi2;

    .line 90
    .line 91
    invoke-direct {p3, p0, v7}, Lhi2;-><init>(Lii2;I)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Lhw3;

    .line 95
    .line 96
    invoke-direct {v0, p2, p3, v7}, Lhw3;-><init>(Lai3;Lpe1;I)V

    .line 97
    .line 98
    .line 99
    new-instance p2, Lx51;

    .line 100
    .line 101
    invoke-direct {p2, v0}, Lx51;-><init>(Lhw3;)V

    .line 102
    .line 103
    .line 104
    :goto_2
    invoke-virtual {p2}, Lx51;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result p3

    .line 108
    if-eqz p3, :cond_3

    .line 109
    .line 110
    invoke-virtual {p2}, Lx51;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    check-cast p3, Lqi2;

    .line 115
    .line 116
    iget-object p3, p3, Lqi2;->o:Lgg;

    .line 117
    .line 118
    iget p3, p3, Lgg;->a:I

    .line 119
    .line 120
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    invoke-virtual {v5}, Lvh;->g()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Lbi2;

    .line 129
    .line 130
    if-eqz v0, :cond_2

    .line 131
    .line 132
    iget-object v0, v0, Lbi2;->a:Llb;

    .line 133
    .line 134
    iget-object v0, v0, Llb;->o:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v0, Ljava/lang/String;

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_2
    move-object v0, v8

    .line 140
    :goto_3
    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_3
    invoke-virtual {v5}, Lvh;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    if-nez p2, :cond_5

    .line 149
    .line 150
    invoke-virtual {v5}, Lvh;->first()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    check-cast p2, Lbi2;

    .line 155
    .line 156
    iget-object p2, p2, Lbi2;->a:Llb;

    .line 157
    .line 158
    iget p3, p2, Llb;->n:I

    .line 159
    .line 160
    invoke-virtual {p0, p3, v8}, Lii2;->d(ILqi2;)Lqi2;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    new-instance v0, Lz82;

    .line 165
    .line 166
    const/4 v1, 0x7

    .line 167
    invoke-direct {v0, v1}, Lz82;-><init>(I)V

    .line 168
    .line 169
    .line 170
    invoke-static {p3, v0}, Lci3;->K(Ljava/lang/Object;Lpe1;)Lai3;

    .line 171
    .line 172
    .line 173
    move-result-object p3

    .line 174
    new-instance v0, Lhi2;

    .line 175
    .line 176
    const/4 v1, 0x1

    .line 177
    invoke-direct {v0, p0, v1}, Lhi2;-><init>(Lii2;I)V

    .line 178
    .line 179
    .line 180
    new-instance v1, Lhw3;

    .line 181
    .line 182
    invoke-direct {v1, p3, v0, v7}, Lhw3;-><init>(Lai3;Lpe1;I)V

    .line 183
    .line 184
    .line 185
    new-instance p3, Lx51;

    .line 186
    .line 187
    invoke-direct {p3, v1}, Lx51;-><init>(Lhw3;)V

    .line 188
    .line 189
    .line 190
    :goto_4
    invoke-virtual {p3}, Lx51;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_4

    .line 195
    .line 196
    invoke-virtual {p3}, Lx51;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Lqi2;

    .line 201
    .line 202
    iget-object v0, v0, Lqi2;->o:Lgg;

    .line 203
    .line 204
    iget v0, v0, Lgg;->a:I

    .line 205
    .line 206
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    iget-object v1, p2, Llb;->o:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v1, Ljava/lang/String;

    .line 213
    .line 214
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_4
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    iget-object p3, p2, Llb;->o:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast p3, Ljava/lang/String;

    .line 225
    .line 226
    invoke-interface {p1, p3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    if-eqz p1, :cond_5

    .line 231
    .line 232
    iget-object p1, p2, Llb;->o:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast p1, Ljava/lang/String;

    .line 235
    .line 236
    iget-object p2, p0, Lii2;->n:Ljava/util/LinkedHashMap;

    .line 237
    .line 238
    invoke-interface {p2, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    :cond_5
    iget-object p0, p0, Lii2;->b:Lf92;

    .line 242
    .line 243
    invoke-virtual {p0}, Lf92;->a()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    iget-boolean p0, v2, Ls33;->n:Z

    .line 247
    .line 248
    return p0
.end method

.method public final d(ILqi2;)Lqi2;
    .locals 2

    .line 1
    iget-object v0, p0, Lii2;->c:Lsi2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object v1, v0, Lqi2;->o:Lgg;

    .line 8
    .line 9
    iget v1, v1, Lgg;->a:I

    .line 10
    .line 11
    if-ne v1, p1, :cond_2

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    invoke-static {v0, p2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p2, Lqi2;->p:Lsi2;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    iget-object p0, p0, Lii2;->c:Lsi2;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    return-object v0

    .line 29
    :cond_2
    iget-object v0, p0, Lii2;->f:Lvh;

    .line 30
    .line 31
    invoke-virtual {v0}, Lvh;->i()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lyh2;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    iget-object v0, v0, Lyh2;->o:Lqi2;

    .line 40
    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    :cond_3
    iget-object v0, p0, Lii2;->c:Lsi2;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    :cond_4
    const/4 p0, 0x0

    .line 49
    invoke-static {p1, v0, p2, p0}, Lii2;->e(ILqi2;Lqi2;Z)Lqi2;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public final f(I)Lyh2;
    .locals 3

    .line 1
    iget-object v0, p0, Lii2;->f:Lvh;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    move-object v2, v1

    .line 22
    check-cast v2, Lyh2;

    .line 23
    .line 24
    iget-object v2, v2, Lyh2;->o:Lqi2;

    .line 25
    .line 26
    iget-object v2, v2, Lqi2;->o:Lgg;

    .line 27
    .line 28
    iget v2, v2, Lgg;->a:I

    .line 29
    .line 30
    if-ne v2, p1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 34
    :goto_0
    check-cast v1, Lyh2;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_2
    const-string v0, "No destination with ID "

    .line 40
    .line 41
    const-string v1, " is on the NavController\'s back stack. The current destination is "

    .line 42
    .line 43
    invoke-static {v0, p1, v1}, Lxw1;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0}, Lii2;->h()Lqi2;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method

.method public final g()Lyh2;
    .locals 0

    .line 1
    iget-object p0, p0, Lii2;->f:Lvh;

    .line 2
    .line 3
    invoke-virtual {p0}, Lvh;->i()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lyh2;

    .line 8
    .line 9
    return-object p0
.end method

.method public final h()Lqi2;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lii2;->g()Lyh2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lyh2;->o:Lqi2;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final i()Lsi2;
    .locals 0

    .line 1
    iget-object p0, p0, Lii2;->c:Lsi2;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    const-string p0, "You must call setGraph() before calling getGraph()"

    .line 10
    .line 11
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method public final j()Lg22;
    .locals 1

    .line 1
    iget-object v0, p0, Lii2;->o:Lp22;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lg22;->p:Lg22;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object p0, p0, Lii2;->r:Lg22;

    .line 9
    .line 10
    return-object p0
.end method

.method public final k()Lsi2;
    .locals 1

    .line 1
    iget-object v0, p0, Lii2;->f:Lvh;

    .line 2
    .line 3
    invoke-virtual {v0}, Lvh;->i()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lyh2;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lyh2;->o:Lqi2;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lii2;->c:Lsi2;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    :cond_1
    instance-of p0, v0, Lsi2;

    .line 21
    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    move-object p0, v0

    .line 25
    check-cast p0, Lsi2;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 p0, 0x0

    .line 29
    :goto_0
    if-nez p0, :cond_3

    .line 30
    .line 31
    iget-object p0, v0, Lqi2;->p:Lsi2;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    :cond_3
    return-object p0
.end method

.method public final l(Lyh2;Lyh2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lii2;->k:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lii2;->l:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Lkj;

    .line 15
    .line 16
    invoke-direct {p1}, Lkj;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    check-cast p0, Lkj;

    .line 30
    .line 31
    iget-object p0, p0, Lkj;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final m(Lqi2;Landroid/os/Bundle;Ljj2;)V
    .locals 22

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v6, p3

    .line 6
    .line 7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, Lii2;->u:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Iterable;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v4, 0x1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lei2;

    .line 34
    .line 35
    iput-boolean v4, v1, Lei2;->d:Z

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v1, Ls33;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    const/4 v0, -0x1

    .line 44
    if-eqz v6, :cond_2

    .line 45
    .line 46
    iget-object v5, v6, Ljj2;->h:Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    iget-boolean v8, v6, Ljj2;->d:Z

    .line 51
    .line 52
    iget-boolean v9, v6, Ljj2;->e:Z

    .line 53
    .line 54
    invoke-virtual {v2, v5, v8, v9}, Lii2;->p(Ljava/lang/String;ZZ)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    :goto_1
    move v8, v5

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    iget v5, v6, Ljj2;->c:I

    .line 61
    .line 62
    if-eq v5, v0, :cond_2

    .line 63
    .line 64
    iget-boolean v8, v6, Ljj2;->d:Z

    .line 65
    .line 66
    iget-boolean v9, v6, Ljj2;->e:Z

    .line 67
    .line 68
    invoke-virtual {v2, v5, v8, v9}, Lii2;->o(IZZ)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const/4 v8, 0x0

    .line 74
    :goto_2
    invoke-virtual/range {p1 .. p2}, Lqi2;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    if-eqz v6, :cond_3

    .line 79
    .line 80
    iget-boolean v9, v6, Ljj2;->b:Z

    .line 81
    .line 82
    if-ne v9, v4, :cond_3

    .line 83
    .line 84
    iget-object v9, v2, Lii2;->m:Ljava/util/LinkedHashMap;

    .line 85
    .line 86
    iget-object v10, v3, Lqi2;->o:Lgg;

    .line 87
    .line 88
    iget v10, v10, Lgg;->a:I

    .line 89
    .line 90
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-eqz v9, :cond_3

    .line 99
    .line 100
    iget-object v0, v3, Lqi2;->o:Lgg;

    .line 101
    .line 102
    iget v0, v0, Lgg;->a:I

    .line 103
    .line 104
    invoke-virtual {v2, v0, v5, v6}, Lii2;->t(ILandroid/os/Bundle;Ljj2;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iput-boolean v0, v1, Ls33;->n:Z

    .line 109
    .line 110
    const/16 v21, 0x0

    .line 111
    .line 112
    goto/16 :goto_d

    .line 113
    .line 114
    :cond_3
    if-eqz v6, :cond_13

    .line 115
    .line 116
    iget-boolean v10, v6, Ljj2;->a:Z

    .line 117
    .line 118
    if-ne v10, v4, :cond_13

    .line 119
    .line 120
    invoke-virtual {v2}, Lii2;->g()Lyh2;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    iget-object v11, v2, Lii2;->f:Lvh;

    .line 125
    .line 126
    invoke-virtual {v11}, Lvh;->a()I

    .line 127
    .line 128
    .line 129
    move-result v12

    .line 130
    invoke-virtual {v11, v12}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 131
    .line 132
    .line 133
    move-result-object v11

    .line 134
    :cond_4
    invoke-interface {v11}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 135
    .line 136
    .line 137
    move-result v12

    .line 138
    if-eqz v12, :cond_5

    .line 139
    .line 140
    invoke-interface {v11}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    check-cast v12, Lyh2;

    .line 145
    .line 146
    iget-object v12, v12, Lyh2;->o:Lqi2;

    .line 147
    .line 148
    if-ne v12, v3, :cond_4

    .line 149
    .line 150
    invoke-interface {v11}, Ljava/util/ListIterator;->nextIndex()I

    .line 151
    .line 152
    .line 153
    move-result v11

    .line 154
    goto :goto_3

    .line 155
    :cond_5
    move v11, v0

    .line 156
    :goto_3
    if-ne v11, v0, :cond_6

    .line 157
    .line 158
    goto/16 :goto_b

    .line 159
    .line 160
    :cond_6
    instance-of v12, v3, Lsi2;

    .line 161
    .line 162
    if-eqz v12, :cond_9

    .line 163
    .line 164
    sget v10, Lsi2;->t:I

    .line 165
    .line 166
    move-object v10, v3

    .line 167
    check-cast v10, Lsi2;

    .line 168
    .line 169
    new-instance v12, Lz82;

    .line 170
    .line 171
    const/16 v13, 0xb

    .line 172
    .line 173
    invoke-direct {v12, v13}, Lz82;-><init>(I)V

    .line 174
    .line 175
    .line 176
    invoke-static {v10, v12}, Lci3;->K(Ljava/lang/Object;Lpe1;)Lai3;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    new-instance v12, Lz82;

    .line 181
    .line 182
    const/16 v13, 0x8

    .line 183
    .line 184
    invoke-direct {v12, v13}, Lz82;-><init>(I)V

    .line 185
    .line 186
    .line 187
    new-instance v13, Lhw3;

    .line 188
    .line 189
    invoke-direct {v13, v10, v12, v4}, Lhw3;-><init>(Lai3;Lpe1;I)V

    .line 190
    .line 191
    .line 192
    invoke-static {v13}, Lci3;->M(Lai3;)Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    iget-object v12, v2, Lii2;->f:Lvh;

    .line 197
    .line 198
    iget v12, v12, Lvh;->p:I

    .line 199
    .line 200
    sub-int/2addr v12, v11

    .line 201
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 202
    .line 203
    .line 204
    move-result v13

    .line 205
    if-eq v12, v13, :cond_7

    .line 206
    .line 207
    goto/16 :goto_b

    .line 208
    .line 209
    :cond_7
    iget-object v12, v2, Lii2;->f:Lvh;

    .line 210
    .line 211
    iget v13, v12, Lvh;->p:I

    .line 212
    .line 213
    invoke-virtual {v12, v11, v13}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v12

    .line 217
    new-instance v13, Ljava/util/ArrayList;

    .line 218
    .line 219
    const/16 v14, 0xa

    .line 220
    .line 221
    invoke-static {v12, v14}, Lp70;->a0(Ljava/lang/Iterable;I)I

    .line 222
    .line 223
    .line 224
    move-result v14

    .line 225
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    .line 227
    .line 228
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v12

    .line 232
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v14

    .line 236
    if-eqz v14, :cond_8

    .line 237
    .line 238
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v14

    .line 242
    check-cast v14, Lyh2;

    .line 243
    .line 244
    iget-object v14, v14, Lyh2;->o:Lqi2;

    .line 245
    .line 246
    iget-object v14, v14, Lqi2;->o:Lgg;

    .line 247
    .line 248
    iget v14, v14, Lgg;->a:I

    .line 249
    .line 250
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v14

    .line 254
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_8
    invoke-virtual {v13, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v10

    .line 262
    if-nez v10, :cond_a

    .line 263
    .line 264
    goto/16 :goto_b

    .line 265
    .line 266
    :cond_9
    if-eqz v10, :cond_13

    .line 267
    .line 268
    iget-object v10, v10, Lyh2;->o:Lqi2;

    .line 269
    .line 270
    if-eqz v10, :cond_13

    .line 271
    .line 272
    iget-object v12, v3, Lqi2;->o:Lgg;

    .line 273
    .line 274
    iget v12, v12, Lgg;->a:I

    .line 275
    .line 276
    iget-object v10, v10, Lqi2;->o:Lgg;

    .line 277
    .line 278
    iget v10, v10, Lgg;->a:I

    .line 279
    .line 280
    if-ne v12, v10, :cond_13

    .line 281
    .line 282
    :cond_a
    new-instance v10, Lvh;

    .line 283
    .line 284
    invoke-direct {v10}, Lvh;-><init>()V

    .line 285
    .line 286
    .line 287
    :goto_5
    iget-object v12, v2, Lii2;->f:Lvh;

    .line 288
    .line 289
    invoke-static {v12}, Ltv4;->v(Ljava/util/List;)I

    .line 290
    .line 291
    .line 292
    move-result v12

    .line 293
    if-lt v12, v11, :cond_b

    .line 294
    .line 295
    iget-object v12, v2, Lii2;->f:Lvh;

    .line 296
    .line 297
    invoke-static {v12}, Lo70;->u0(Ljava/util/List;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v12

    .line 301
    check-cast v12, Lyh2;

    .line 302
    .line 303
    invoke-virtual {v2, v12}, Lii2;->u(Lyh2;)V

    .line 304
    .line 305
    .line 306
    new-instance v13, Lyh2;

    .line 307
    .line 308
    iget-object v14, v12, Lyh2;->o:Lqi2;

    .line 309
    .line 310
    move-object/from16 v15, p2

    .line 311
    .line 312
    invoke-virtual {v14, v15}, Lqi2;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 313
    .line 314
    .line 315
    move-result-object v16

    .line 316
    iget-object v14, v12, Lyh2;->n:Ldi2;

    .line 317
    .line 318
    iget-object v15, v12, Lyh2;->o:Lqi2;

    .line 319
    .line 320
    iget-object v0, v12, Lyh2;->q:Lg22;

    .line 321
    .line 322
    iget-object v4, v12, Lyh2;->r:Lji2;

    .line 323
    .line 324
    iget-object v7, v12, Lyh2;->s:Ljava/lang/String;

    .line 325
    .line 326
    iget-object v9, v12, Lyh2;->t:Landroid/os/Bundle;

    .line 327
    .line 328
    move-object/from16 v17, v0

    .line 329
    .line 330
    move-object/from16 v18, v4

    .line 331
    .line 332
    move-object/from16 v19, v7

    .line 333
    .line 334
    move-object/from16 v20, v9

    .line 335
    .line 336
    invoke-direct/range {v13 .. v20}, Lyh2;-><init>(Ldi2;Lqi2;Landroid/os/Bundle;Lg22;Lji2;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 337
    .line 338
    .line 339
    iget-object v0, v13, Lyh2;->u:Lai2;

    .line 340
    .line 341
    iget-object v4, v12, Lyh2;->q:Lg22;

    .line 342
    .line 343
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    iput-object v4, v0, Lai2;->d:Lg22;

    .line 350
    .line 351
    iget-object v0, v13, Lyh2;->u:Lai2;

    .line 352
    .line 353
    iget-object v4, v12, Lyh2;->u:Lai2;

    .line 354
    .line 355
    iget-object v4, v4, Lai2;->k:Lg22;

    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    .line 362
    .line 363
    iput-object v4, v0, Lai2;->k:Lg22;

    .line 364
    .line 365
    invoke-virtual {v0}, Lai2;->b()V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v10, v13}, Lvh;->addFirst(Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    const/4 v0, -0x1

    .line 372
    const/4 v4, 0x1

    .line 373
    goto :goto_5

    .line 374
    :cond_b
    invoke-virtual {v10}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    if-eqz v4, :cond_d

    .line 383
    .line 384
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    check-cast v4, Lyh2;

    .line 389
    .line 390
    iget-object v7, v4, Lyh2;->o:Lqi2;

    .line 391
    .line 392
    iget-object v7, v7, Lqi2;->p:Lsi2;

    .line 393
    .line 394
    if-eqz v7, :cond_c

    .line 395
    .line 396
    iget-object v7, v7, Lqi2;->o:Lgg;

    .line 397
    .line 398
    iget v7, v7, Lgg;->a:I

    .line 399
    .line 400
    invoke-virtual {v2, v7}, Lii2;->f(I)Lyh2;

    .line 401
    .line 402
    .line 403
    move-result-object v7

    .line 404
    invoke-virtual {v2, v4, v7}, Lii2;->l(Lyh2;Lyh2;)V

    .line 405
    .line 406
    .line 407
    :cond_c
    iget-object v7, v2, Lii2;->f:Lvh;

    .line 408
    .line 409
    invoke-virtual {v7, v4}, Lvh;->addLast(Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    goto :goto_6

    .line 413
    :cond_d
    invoke-virtual {v10}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 418
    .line 419
    .line 420
    move-result v4

    .line 421
    if-eqz v4, :cond_12

    .line 422
    .line 423
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    check-cast v4, Lyh2;

    .line 428
    .line 429
    iget-object v7, v2, Lii2;->t:Lmk2;

    .line 430
    .line 431
    iget-object v9, v4, Lyh2;->o:Lqi2;

    .line 432
    .line 433
    iget-object v9, v9, Lqi2;->n:Ljava/lang/String;

    .line 434
    .line 435
    invoke-virtual {v7, v9}, Lmk2;->b(Ljava/lang/String;)Llk2;

    .line 436
    .line 437
    .line 438
    move-result-object v7

    .line 439
    iget-object v9, v4, Lyh2;->o:Lqi2;

    .line 440
    .line 441
    if-eqz v9, :cond_e

    .line 442
    .line 443
    goto :goto_8

    .line 444
    :cond_e
    const/4 v9, 0x0

    .line 445
    :goto_8
    if-nez v9, :cond_f

    .line 446
    .line 447
    goto :goto_7

    .line 448
    :cond_f
    invoke-virtual {v7, v9}, Llk2;->c(Lqi2;)Lqi2;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v7}, Llk2;->b()Lei2;

    .line 452
    .line 453
    .line 454
    move-result-object v7

    .line 455
    iget-object v9, v7, Lei2;->a:Lpr3;

    .line 456
    .line 457
    monitor-enter v9

    .line 458
    :try_start_0
    iget-object v10, v7, Lei2;->e:Lb23;

    .line 459
    .line 460
    iget-object v10, v10, Lb23;->n:Lwr3;

    .line 461
    .line 462
    invoke-virtual {v10}, Lwr3;->getValue()Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v10

    .line 466
    check-cast v10, Ljava/util/Collection;

    .line 467
    .line 468
    invoke-static {v10}, Lo70;->D0(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 469
    .line 470
    .line 471
    move-result-object v10

    .line 472
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 473
    .line 474
    .line 475
    move-result v11

    .line 476
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 477
    .line 478
    .line 479
    move-result-object v11

    .line 480
    :cond_10
    invoke-interface {v11}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 481
    .line 482
    .line 483
    move-result v12

    .line 484
    if-eqz v12, :cond_11

    .line 485
    .line 486
    invoke-interface {v11}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v12

    .line 490
    check-cast v12, Lyh2;

    .line 491
    .line 492
    iget-object v12, v12, Lyh2;->s:Ljava/lang/String;

    .line 493
    .line 494
    iget-object v13, v4, Lyh2;->s:Ljava/lang/String;

    .line 495
    .line 496
    invoke-static {v12, v13}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    move-result v12

    .line 500
    if-eqz v12, :cond_10

    .line 501
    .line 502
    invoke-interface {v11}, Ljava/util/ListIterator;->nextIndex()I

    .line 503
    .line 504
    .line 505
    move-result v11

    .line 506
    goto :goto_9

    .line 507
    :catchall_0
    move-exception v0

    .line 508
    goto :goto_a

    .line 509
    :cond_11
    const/4 v11, -0x1

    .line 510
    :goto_9
    invoke-virtual {v10, v11, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    iget-object v4, v7, Lei2;->b:Lwr3;

    .line 514
    .line 515
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 516
    .line 517
    .line 518
    const/4 v7, 0x0

    .line 519
    invoke-virtual {v4, v7, v10}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    .line 521
    .line 522
    monitor-exit v9

    .line 523
    goto :goto_7

    .line 524
    :goto_a
    monitor-exit v9

    .line 525
    throw v0

    .line 526
    :cond_12
    const/16 v21, 0x1

    .line 527
    .line 528
    goto :goto_c

    .line 529
    :cond_13
    :goto_b
    const/16 v21, 0x0

    .line 530
    .line 531
    :goto_c
    if-nez v21, :cond_14

    .line 532
    .line 533
    iget-object v0, v2, Lii2;->a:Lxi2;

    .line 534
    .line 535
    iget-object v0, v0, Lxi2;->c:Ldi2;

    .line 536
    .line 537
    invoke-virtual {v2}, Lii2;->j()Lg22;

    .line 538
    .line 539
    .line 540
    move-result-object v4

    .line 541
    iget-object v7, v2, Lii2;->p:Lji2;

    .line 542
    .line 543
    invoke-static {v0, v3, v5, v4, v7}, Lb21;->v(Ldi2;Lqi2;Landroid/os/Bundle;Lg22;Lji2;)Lyh2;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    iget-object v4, v2, Lii2;->t:Lmk2;

    .line 548
    .line 549
    iget-object v7, v3, Lqi2;->n:Ljava/lang/String;

    .line 550
    .line 551
    invoke-virtual {v4, v7}, Lmk2;->b(Ljava/lang/String;)Llk2;

    .line 552
    .line 553
    .line 554
    move-result-object v7

    .line 555
    invoke-static {v0}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 556
    .line 557
    .line 558
    move-result-object v9

    .line 559
    new-instance v0, Lk4;

    .line 560
    .line 561
    move-object v4, v5

    .line 562
    const/4 v5, 0x6

    .line 563
    invoke-direct/range {v0 .. v5}, Lk4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 564
    .line 565
    .line 566
    iput-object v0, v2, Lii2;->v:Lpe1;

    .line 567
    .line 568
    invoke-virtual {v7, v9, v6}, Llk2;->d(Ljava/util/List;Ljj2;)V

    .line 569
    .line 570
    .line 571
    const/4 v7, 0x0

    .line 572
    iput-object v7, v2, Lii2;->v:Lpe1;

    .line 573
    .line 574
    :cond_14
    :goto_d
    iget-object v0, v2, Lii2;->b:Lf92;

    .line 575
    .line 576
    invoke-virtual {v0}, Lf92;->a()Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    iget-object v0, v2, Lii2;->u:Ljava/util/LinkedHashMap;

    .line 580
    .line 581
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    check-cast v0, Ljava/lang/Iterable;

    .line 586
    .line 587
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 592
    .line 593
    .line 594
    move-result v3

    .line 595
    if-eqz v3, :cond_15

    .line 596
    .line 597
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v3

    .line 601
    check-cast v3, Lei2;

    .line 602
    .line 603
    const/4 v4, 0x0

    .line 604
    iput-boolean v4, v3, Lei2;->d:Z

    .line 605
    .line 606
    goto :goto_e

    .line 607
    :cond_15
    if-nez v8, :cond_17

    .line 608
    .line 609
    iget-boolean v0, v1, Ls33;->n:Z

    .line 610
    .line 611
    if-nez v0, :cond_17

    .line 612
    .line 613
    if-eqz v21, :cond_16

    .line 614
    .line 615
    goto :goto_f

    .line 616
    :cond_16
    invoke-virtual {v2}, Lii2;->v()V

    .line 617
    .line 618
    .line 619
    return-void

    .line 620
    :cond_17
    :goto_f
    invoke-virtual {v2}, Lii2;->b()Z

    .line 621
    .line 622
    .line 623
    return-void
.end method

.method public final n(Ljava/lang/String;Ljj2;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lii2;->c:Lsi2;

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Lii2;->k()Lsi2;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, p1, v1, v0}, Lsi2;->g(Ljava/lang/String;ZLqi2;)Lpi2;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object p1, v0, Lpi2;->n:Lqi2;

    .line 20
    .line 21
    iget-object v0, v0, Lpi2;->o:Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lqi2;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    new-array v1, v0, [Ljs2;

    .line 31
    .line 32
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, [Ljs2;

    .line 37
    .line 38
    invoke-static {v0}, Lqj0;->x([Ljs2;)Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_0
    sget v1, Lqi2;->r:I

    .line 43
    .line 44
    iget-object v1, p1, Lqi2;->o:Lgg;

    .line 45
    .line 46
    iget-object v1, v1, Lgg;->e:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    const-string v2, "android-app://androidx.navigation/"

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const-string v1, ""

    .line 60
    .line 61
    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    new-instance v2, Landroid/content/Intent;

    .line 69
    .line 70
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 71
    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    const-string v1, "android-support-nav:controller:deepLinkIntent"

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1, v0, p2}, Lii2;->m(Lqi2;Landroid/os/Bundle;Ljj2;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    const-string v0, "Navigation destination that matches route "

    .line 92
    .line 93
    const-string v1, " cannot be found in the navigation graph "

    .line 94
    .line 95
    invoke-static {v0, p1, v1}, Ldi0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object p0, p0, Lii2;->c:Lsi2;

    .line 100
    .line 101
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p2

    .line 112
    :cond_3
    const-string p2, ". Navigation graph has not been set for NavController "

    .line 113
    .line 114
    const/16 v0, 0x2e

    .line 115
    .line 116
    const-string v1, "Cannot navigate to "

    .line 117
    .line 118
    invoke-static {v1, p1, p2, p0, v0}, Lp61;->n(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final o(IZZ)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lii2;->f:Lvh;

    .line 2
    .line 3
    invoke-virtual {v0}, Lvh;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lo70;->w0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_4

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lyh2;

    .line 35
    .line 36
    iget-object v3, v3, Lyh2;->o:Lqi2;

    .line 37
    .line 38
    iget-object v4, v3, Lqi2;->n:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v5, v3, Lqi2;->o:Lgg;

    .line 41
    .line 42
    iget-object v6, p0, Lii2;->t:Lmk2;

    .line 43
    .line 44
    invoke-virtual {v6, v4}, Lmk2;->b(Ljava/lang/String;)Llk2;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    if-nez p2, :cond_2

    .line 49
    .line 50
    iget v6, v5, Lgg;->a:I

    .line 51
    .line 52
    if-eq v6, p1, :cond_3

    .line 53
    .line 54
    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_3
    iget v4, v5, Lgg;->a:I

    .line 58
    .line 59
    if-ne v4, p1, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    const/4 v3, 0x0

    .line 63
    :goto_0
    if-nez v3, :cond_5

    .line 64
    .line 65
    sget p2, Lqi2;->r:I

    .line 66
    .line 67
    iget-object p0, p0, Lii2;->a:Lxi2;

    .line 68
    .line 69
    iget-object p0, p0, Lxi2;->c:Ldi2;

    .line 70
    .line 71
    invoke-static {p0, p1}, Lmt1;->w(Ldi2;I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string p2, "Ignoring popBackStack to destination "

    .line 78
    .line 79
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p0, " as it was not found on the current back stack"

    .line 86
    .line 87
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const-string p1, "NavController"

    .line 95
    .line 96
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    return v2

    .line 100
    :cond_5
    invoke-virtual {p0, v1, v3, p2, p3}, Lii2;->c(Ljava/util/ArrayList;Lqi2;ZZ)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    return p0
.end method

.method public final p(Ljava/lang/String;ZZ)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v3, v0, Lii2;->f:Lvh;

    .line 11
    .line 12
    invoke-virtual {v3}, Lvh;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, 0x0

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    return v5

    .line 20
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Lvh;->a()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    invoke-virtual {v3, v6}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    :cond_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    const/4 v7, 0x0

    .line 38
    if-eqz v6, :cond_f

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    move-object v8, v6

    .line 45
    check-cast v8, Lyh2;

    .line 46
    .line 47
    iget-object v9, v8, Lyh2;->o:Lqi2;

    .line 48
    .line 49
    iget-object v10, v8, Lyh2;->u:Lai2;

    .line 50
    .line 51
    invoke-virtual {v10}, Lai2;->a()Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object v9, v9, Lqi2;->o:Lgg;

    .line 59
    .line 60
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object v11, v9, Lgg;->e:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v11, Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v11, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    if-eqz v11, :cond_2

    .line 72
    .line 73
    goto/16 :goto_4

    .line 74
    .line 75
    :cond_2
    invoke-virtual {v9, v1}, Lgg;->c(Ljava/lang/String;)Lpi2;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    iget-object v9, v9, Lgg;->b:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v9, Lqi2;

    .line 82
    .line 83
    if-eqz v11, :cond_3

    .line 84
    .line 85
    iget-object v12, v11, Lpi2;->n:Lqi2;

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    move-object v12, v7

    .line 89
    :goto_0
    invoke-virtual {v9, v12}, Lqi2;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-nez v9, :cond_4

    .line 94
    .line 95
    goto :goto_5

    .line 96
    :cond_4
    iget-object v9, v11, Lpi2;->o:Landroid/os/Bundle;

    .line 97
    .line 98
    if-eqz v10, :cond_c

    .line 99
    .line 100
    if-nez v9, :cond_5

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_5
    invoke-virtual {v9}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    check-cast v12, Ljava/lang/Iterable;

    .line 111
    .line 112
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v13

    .line 120
    if-eqz v13, :cond_b

    .line 121
    .line 122
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    check-cast v13, Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v10, v13}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v14

    .line 135
    if-nez v14, :cond_7

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_7
    iget-object v14, v11, Lpi2;->n:Lqi2;

    .line 139
    .line 140
    invoke-virtual {v14}, Lqi2;->d()Ljava/util/Map;

    .line 141
    .line 142
    .line 143
    move-result-object v14

    .line 144
    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v14

    .line 148
    check-cast v14, Lwh2;

    .line 149
    .line 150
    if-eqz v14, :cond_8

    .line 151
    .line 152
    iget-object v14, v14, Lwh2;->a:Lqj2;

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_8
    move-object v14, v7

    .line 156
    :goto_1
    if-eqz v14, :cond_9

    .line 157
    .line 158
    invoke-virtual {v14, v13, v9}, Lqj2;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v15

    .line 162
    goto :goto_2

    .line 163
    :cond_9
    move-object v15, v7

    .line 164
    :goto_2
    if-eqz v14, :cond_a

    .line 165
    .line 166
    invoke-virtual {v14, v13, v10}, Lqj2;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v13

    .line 170
    goto :goto_3

    .line 171
    :cond_a
    move-object v13, v7

    .line 172
    :goto_3
    if-eqz v14, :cond_6

    .line 173
    .line 174
    invoke-virtual {v14, v15, v13}, Lqj2;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v13

    .line 178
    if-nez v13, :cond_6

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_b
    :goto_4
    const/4 v9, 0x1

    .line 182
    goto :goto_6

    .line 183
    :cond_c
    :goto_5
    move v9, v5

    .line 184
    :goto_6
    if-nez v2, :cond_d

    .line 185
    .line 186
    if-nez v9, :cond_e

    .line 187
    .line 188
    :cond_d
    iget-object v8, v8, Lyh2;->o:Lqi2;

    .line 189
    .line 190
    iget-object v8, v8, Lqi2;->n:Ljava/lang/String;

    .line 191
    .line 192
    iget-object v10, v0, Lii2;->t:Lmk2;

    .line 193
    .line 194
    invoke-virtual {v10, v8}, Lmk2;->b(Ljava/lang/String;)Llk2;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    :cond_e
    if-eqz v9, :cond_1

    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_f
    move-object v6, v7

    .line 205
    :goto_7
    check-cast v6, Lyh2;

    .line 206
    .line 207
    if-eqz v6, :cond_10

    .line 208
    .line 209
    iget-object v7, v6, Lyh2;->o:Lqi2;

    .line 210
    .line 211
    :cond_10
    if-nez v7, :cond_11

    .line 212
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string v2, "Ignoring popBackStack to route "

    .line 216
    .line 217
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v1, " as it was not found on the current back stack"

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    const-string v1, "NavController"

    .line 233
    .line 234
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    return v5

    .line 238
    :cond_11
    move/from16 v1, p3

    .line 239
    .line 240
    invoke-virtual {v0, v4, v7, v2, v1}, Lii2;->c(Ljava/util/ArrayList;Lqi2;ZZ)Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    return v0
.end method

.method public final q(Lyh2;ZLvh;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lii2;->f:Lvh;

    .line 5
    .line 6
    invoke-virtual {v0}, Lvh;->last()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lyh2;

    .line 11
    .line 12
    invoke-static {v1, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_6

    .line 17
    .line 18
    invoke-static {v0}, Lo70;->u0(Ljava/util/List;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object p1, v1, Lyh2;->o:Lqi2;

    .line 22
    .line 23
    iget-object p1, p1, Lqi2;->n:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v0, p0, Lii2;->t:Lmk2;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lmk2;->b(Ljava/lang/String;)Llk2;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lii2;->u:Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lei2;

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    iget-object p1, p1, Lei2;->f:Lb23;

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    iget-object p1, p1, Lb23;->n:Lwr3;

    .line 47
    .line 48
    invoke-virtual {p1}, Lwr3;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Ljava/util/Set;

    .line 53
    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-ne p1, v0, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lii2;->l:Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x0

    .line 73
    :goto_0
    iget-object p1, v1, Lyh2;->u:Lai2;

    .line 74
    .line 75
    iget-object p1, p1, Lai2;->j:Lr22;

    .line 76
    .line 77
    iget-object p1, p1, Lr22;->d:Lg22;

    .line 78
    .line 79
    sget-object v2, Lg22;->p:Lg22;

    .line 80
    .line 81
    invoke-virtual {p1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-ltz p1, :cond_4

    .line 86
    .line 87
    if-eqz p2, :cond_2

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Lyh2;->a(Lg22;)V

    .line 90
    .line 91
    .line 92
    new-instance p1, Lbi2;

    .line 93
    .line 94
    invoke-direct {p1, v1}, Lbi2;-><init>(Lyh2;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3, p1}, Lvh;->addFirst(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    if-nez v0, :cond_3

    .line 101
    .line 102
    sget-object p1, Lg22;->n:Lg22;

    .line 103
    .line 104
    invoke-virtual {v1, p1}, Lyh2;->a(Lg22;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v1}, Lii2;->u(Lyh2;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    invoke-virtual {v1, v2}, Lyh2;->a(Lg22;)V

    .line 112
    .line 113
    .line 114
    :cond_4
    :goto_1
    if-nez p2, :cond_5

    .line 115
    .line 116
    if-nez v0, :cond_5

    .line 117
    .line 118
    iget-object p0, p0, Lii2;->p:Lji2;

    .line 119
    .line 120
    if-eqz p0, :cond_5

    .line 121
    .line 122
    iget-object p1, v1, Lyh2;->s:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    iget-object p0, p0, Lji2;->b:Ljava/util/LinkedHashMap;

    .line 128
    .line 129
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    check-cast p0, Lbc4;

    .line 134
    .line 135
    if-eqz p0, :cond_5

    .line 136
    .line 137
    invoke-virtual {p0}, Lbc4;->a()V

    .line 138
    .line 139
    .line 140
    :cond_5
    return-void

    .line 141
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string p2, "Attempted to pop "

    .line 144
    .line 145
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p1, Lyh2;->o:Lqi2;

    .line 149
    .line 150
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-object p1, v1, Lyh2;->o:Lqi2;

    .line 154
    .line 155
    const-string p2, ", which is not the top of the back stack ("

    .line 156
    .line 157
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const/16 p1, 0x29

    .line 164
    .line 165
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p1
.end method

.method public final s()Ljava/util/ArrayList;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lii2;->u:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    sget-object v3, Lg22;->q:Lg22;

    .line 23
    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lei2;

    .line 31
    .line 32
    iget-object v2, v2, Lei2;->f:Lb23;

    .line 33
    .line 34
    iget-object v2, v2, Lb23;->n:Lwr3;

    .line 35
    .line 36
    invoke-virtual {v2}, Lwr3;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/Iterable;

    .line 41
    .line 42
    new-instance v4, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    move-object v6, v5

    .line 62
    check-cast v6, Lyh2;

    .line 63
    .line 64
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-nez v7, :cond_0

    .line 69
    .line 70
    iget-object v6, v6, Lyh2;->u:Lai2;

    .line 71
    .line 72
    iget-object v6, v6, Lai2;->k:Lg22;

    .line 73
    .line 74
    invoke-virtual {v6, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-ltz v6, :cond_1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    invoke-static {v4, v0}, Lo70;->d0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lii2;->f:Lvh;

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_5

    .line 105
    .line 106
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    move-object v4, v2

    .line 111
    check-cast v4, Lyh2;

    .line 112
    .line 113
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-nez v5, :cond_4

    .line 118
    .line 119
    iget-object v4, v4, Lyh2;->u:Lai2;

    .line 120
    .line 121
    iget-object v4, v4, Lai2;->k:Lg22;

    .line 122
    .line 123
    invoke-virtual {v4, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-ltz v4, :cond_4

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_5
    invoke-static {v1, v0}, Lo70;->d0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 134
    .line 135
    .line 136
    new-instance p0, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    const/4 v2, 0x0

    .line 146
    :cond_6
    :goto_3
    if-ge v2, v1, :cond_7

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    add-int/lit8 v2, v2, 0x1

    .line 153
    .line 154
    move-object v4, v3

    .line 155
    check-cast v4, Lyh2;

    .line 156
    .line 157
    iget-object v4, v4, Lyh2;->o:Lqi2;

    .line 158
    .line 159
    instance-of v4, v4, Lsi2;

    .line 160
    .line 161
    if-nez v4, :cond_6

    .line 162
    .line 163
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_7
    return-object p0
.end method

.method public final t(ILandroid/os/Bundle;Ljj2;)Z
    .locals 15

    .line 1
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lii2;->m:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Iterable;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x1

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v3, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-ne v3, v4, :cond_1

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object v1, p0, Lii2;->n:Ljava/util/LinkedHashMap;

    .line 62
    .line 63
    invoke-static {v1}, Ln44;->P(Ljava/lang/Object;)Ljava/util/Map;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lvh;

    .line 72
    .line 73
    iget-object v1, p0, Lii2;->a:Lxi2;

    .line 74
    .line 75
    iget-object v6, v1, Lxi2;->c:Ldi2;

    .line 76
    .line 77
    new-instance v1, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    iget-object v3, p0, Lii2;->f:Lvh;

    .line 83
    .line 84
    invoke-virtual {v3}, Lvh;->i()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Lyh2;

    .line 89
    .line 90
    if-eqz v3, :cond_3

    .line 91
    .line 92
    iget-object v3, v3, Lyh2;->o:Lqi2;

    .line 93
    .line 94
    if-nez v3, :cond_4

    .line 95
    .line 96
    :cond_3
    invoke-virtual {p0}, Lii2;->i()Lsi2;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    :cond_4
    const/4 v14, 0x0

    .line 101
    if-eqz v0, :cond_8

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_8

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    check-cast v5, Lbi2;

    .line 118
    .line 119
    iget-object v7, v5, Lbi2;->a:Llb;

    .line 120
    .line 121
    iget-object v5, v5, Lbi2;->a:Llb;

    .line 122
    .line 123
    iget v7, v7, Llb;->n:I

    .line 124
    .line 125
    invoke-static {v7, v3, v14, v4}, Lii2;->e(ILqi2;Lqi2;Z)Lqi2;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    if-eqz v7, :cond_7

    .line 130
    .line 131
    invoke-virtual {p0}, Lii2;->j()Lg22;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    iget-object v10, p0, Lii2;->p:Lji2;

    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    iget-object v3, v5, Llb;->p:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v3, Landroid/os/Bundle;

    .line 146
    .line 147
    if-eqz v3, :cond_6

    .line 148
    .line 149
    iget-object v8, v6, Ldi2;->o:Landroid/content/Context;

    .line 150
    .line 151
    if-eqz v8, :cond_5

    .line 152
    .line 153
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    goto :goto_2

    .line 158
    :cond_5
    move-object v8, v14

    .line 159
    :goto_2
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 160
    .line 161
    .line 162
    move-object v8, v3

    .line 163
    goto :goto_3

    .line 164
    :cond_6
    move-object v8, v14

    .line 165
    :goto_3
    iget-object v3, v5, Llb;->o:Ljava/lang/Object;

    .line 166
    .line 167
    move-object v11, v3

    .line 168
    check-cast v11, Ljava/lang/String;

    .line 169
    .line 170
    iget-object v3, v5, Llb;->q:Ljava/lang/Object;

    .line 171
    .line 172
    move-object v12, v3

    .line 173
    check-cast v12, Landroid/os/Bundle;

    .line 174
    .line 175
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    new-instance v5, Lyh2;

    .line 179
    .line 180
    invoke-direct/range {v5 .. v12}, Lyh2;-><init>(Ldi2;Lqi2;Landroid/os/Bundle;Lg22;Lji2;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-object v3, v7

    .line 187
    goto :goto_1

    .line 188
    :cond_7
    sget p0, Lqi2;->r:I

    .line 189
    .line 190
    iget p0, v5, Llb;->n:I

    .line 191
    .line 192
    invoke-static {v6, p0}, Lmt1;->w(Ldi2;I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    const-string v0, "Restore State failed: destination "

    .line 197
    .line 198
    const-string v1, " cannot be found from the current destination "

    .line 199
    .line 200
    invoke-static {v0, p0, v1, v3}, Lp61;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    return v2

    .line 204
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .line 208
    .line 209
    new-instance v3, Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    move v5, v2

    .line 219
    :cond_9
    :goto_4
    if-ge v5, v4, :cond_a

    .line 220
    .line 221
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    add-int/lit8 v5, v5, 0x1

    .line 226
    .line 227
    move-object v7, v6

    .line 228
    check-cast v7, Lyh2;

    .line 229
    .line 230
    iget-object v7, v7, Lyh2;->o:Lqi2;

    .line 231
    .line 232
    instance-of v7, v7, Lsi2;

    .line 233
    .line 234
    if-nez v7, :cond_9

    .line 235
    .line 236
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    move v5, v2

    .line 245
    :goto_5
    if-ge v5, v4, :cond_d

    .line 246
    .line 247
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    add-int/lit8 v5, v5, 0x1

    .line 252
    .line 253
    check-cast v6, Lyh2;

    .line 254
    .line 255
    invoke-static {v0}, Lo70;->p0(Ljava/util/List;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    check-cast v7, Ljava/util/List;

    .line 260
    .line 261
    if-eqz v7, :cond_b

    .line 262
    .line 263
    invoke-static {v7}, Lo70;->o0(Ljava/util/List;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    check-cast v8, Lyh2;

    .line 268
    .line 269
    if-eqz v8, :cond_b

    .line 270
    .line 271
    iget-object v8, v8, Lyh2;->o:Lqi2;

    .line 272
    .line 273
    if-eqz v8, :cond_b

    .line 274
    .line 275
    iget-object v8, v8, Lqi2;->n:Ljava/lang/String;

    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_b
    move-object v8, v14

    .line 279
    :goto_6
    iget-object v9, v6, Lyh2;->o:Lqi2;

    .line 280
    .line 281
    iget-object v9, v9, Lqi2;->n:Ljava/lang/String;

    .line 282
    .line 283
    invoke-static {v8, v9}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v8

    .line 287
    if-eqz v8, :cond_c

    .line 288
    .line 289
    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    goto :goto_5

    .line 293
    :cond_c
    filled-new-array {v6}, [Lyh2;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    invoke-static {v6}, Ltv4;->H([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    goto :goto_5

    .line 305
    :cond_d
    new-instance v8, Ls33;

    .line 306
    .line 307
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    :goto_7
    if-ge v2, v3, :cond_e

    .line 315
    .line 316
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    add-int/lit8 v2, v2, 0x1

    .line 321
    .line 322
    check-cast v4, Ljava/util/List;

    .line 323
    .line 324
    invoke-static {v4}, Lo70;->h0(Ljava/util/List;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    check-cast v5, Lyh2;

    .line 329
    .line 330
    iget-object v5, v5, Lyh2;->o:Lqi2;

    .line 331
    .line 332
    iget-object v5, v5, Lqi2;->n:Ljava/lang/String;

    .line 333
    .line 334
    iget-object v6, p0, Lii2;->t:Lmk2;

    .line 335
    .line 336
    invoke-virtual {v6, v5}, Lmk2;->b(Ljava/lang/String;)Llk2;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    new-instance v10, Lu33;

    .line 341
    .line 342
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 343
    .line 344
    .line 345
    new-instance v7, Lq6;

    .line 346
    .line 347
    const/4 v13, 0x2

    .line 348
    move-object v11, p0

    .line 349
    move-object/from16 v12, p2

    .line 350
    .line 351
    move-object v9, v1

    .line 352
    invoke-direct/range {v7 .. v13}, Lq6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 353
    .line 354
    .line 355
    iput-object v7, p0, Lii2;->v:Lpe1;

    .line 356
    .line 357
    move-object/from16 v1, p3

    .line 358
    .line 359
    invoke-virtual {v5, v4, v1}, Llk2;->d(Ljava/util/List;Ljj2;)V

    .line 360
    .line 361
    .line 362
    iput-object v14, p0, Lii2;->v:Lpe1;

    .line 363
    .line 364
    move-object v1, v9

    .line 365
    goto :goto_7

    .line 366
    :cond_e
    iget-boolean p0, v8, Ls33;->n:Z

    .line 367
    .line 368
    return p0
.end method

.method public final u(Lyh2;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lii2;->k:Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lyh2;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v0, p0, Lii2;->l:Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lkj;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v1, v1, Lkj;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :goto_0
    if-nez v1, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_4

    .line 45
    .line 46
    iget-object v1, p1, Lyh2;->o:Lqi2;

    .line 47
    .line 48
    iget-object v1, v1, Lqi2;->n:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v2, p0, Lii2;->t:Lmk2;

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Lmk2;->b(Ljava/lang/String;)Llk2;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object p0, p0, Lii2;->u:Ljava/util/LinkedHashMap;

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Lei2;

    .line 63
    .line 64
    if-eqz p0, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lei2;->c(Lyh2;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_4
    :goto_1
    return-void
.end method

.method public final v()V
    .locals 12

    .line 1
    iget-object v0, p0, Lii2;->f:Lvh;

    .line 2
    .line 3
    invoke-static {v0}, Lo70;->D0(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_6

    .line 14
    .line 15
    :cond_0
    invoke-static {v0}, Lo70;->o0(Ljava/util/List;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lyh2;

    .line 20
    .line 21
    iget-object v1, v1, Lyh2;->o:Lqi2;

    .line 22
    .line 23
    filled-new-array {v1}, [Lqi2;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Ltv4;->H([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Lo70;->o0(Ljava/util/List;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    instance-of v3, v3, Ltt0;

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    invoke-static {v0}, Lo70;->w0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Lyh2;

    .line 63
    .line 64
    iget-object v4, v4, Lyh2;->o:Lqi2;

    .line 65
    .line 66
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    instance-of v5, v4, Ltt0;

    .line 70
    .line 71
    if-nez v5, :cond_1

    .line 72
    .line 73
    instance-of v4, v4, Lsi2;

    .line 74
    .line 75
    if-nez v4, :cond_1

    .line 76
    .line 77
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Lo70;->w0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_d

    .line 95
    .line 96
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    check-cast v5, Lyh2;

    .line 101
    .line 102
    iget-object v6, v5, Lyh2;->u:Lai2;

    .line 103
    .line 104
    iget-object v6, v6, Lai2;->k:Lg22;

    .line 105
    .line 106
    iget-object v7, v5, Lyh2;->o:Lqi2;

    .line 107
    .line 108
    invoke-static {v1}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    check-cast v8, Lqi2;

    .line 113
    .line 114
    sget-object v9, Lg22;->r:Lg22;

    .line 115
    .line 116
    sget-object v10, Lg22;->q:Lg22;

    .line 117
    .line 118
    if-eqz v8, :cond_9

    .line 119
    .line 120
    iget-object v8, v8, Lqi2;->o:Lgg;

    .line 121
    .line 122
    iget v8, v8, Lgg;->a:I

    .line 123
    .line 124
    iget-object v11, v7, Lqi2;->o:Lgg;

    .line 125
    .line 126
    iget v11, v11, Lgg;->a:I

    .line 127
    .line 128
    if-ne v8, v11, :cond_9

    .line 129
    .line 130
    if-eq v6, v9, :cond_7

    .line 131
    .line 132
    iget-object v6, v5, Lyh2;->o:Lqi2;

    .line 133
    .line 134
    iget-object v6, v6, Lqi2;->n:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v8, p0, Lii2;->t:Lmk2;

    .line 137
    .line 138
    invoke-virtual {v8, v6}, Lmk2;->b(Ljava/lang/String;)Llk2;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    iget-object v8, p0, Lii2;->u:Ljava/util/LinkedHashMap;

    .line 143
    .line 144
    invoke-virtual {v8, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    check-cast v6, Lei2;

    .line 149
    .line 150
    if-eqz v6, :cond_4

    .line 151
    .line 152
    iget-object v6, v6, Lei2;->f:Lb23;

    .line 153
    .line 154
    if-eqz v6, :cond_4

    .line 155
    .line 156
    iget-object v6, v6, Lb23;->n:Lwr3;

    .line 157
    .line 158
    invoke-virtual {v6}, Lwr3;->getValue()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    check-cast v6, Ljava/util/Set;

    .line 163
    .line 164
    if-eqz v6, :cond_4

    .line 165
    .line 166
    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    goto :goto_1

    .line 175
    :cond_4
    const/4 v6, 0x0

    .line 176
    :goto_1
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 177
    .line 178
    invoke-static {v6, v8}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    if-nez v6, :cond_6

    .line 183
    .line 184
    iget-object v6, p0, Lii2;->l:Ljava/util/LinkedHashMap;

    .line 185
    .line 186
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    check-cast v6, Lkj;

    .line 191
    .line 192
    if-eqz v6, :cond_5

    .line 193
    .line 194
    iget-object v6, v6, Lkj;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 195
    .line 196
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    if-nez v6, :cond_5

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_5
    invoke-virtual {v3, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_6
    :goto_2
    invoke-virtual {v3, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    :cond_7
    :goto_3
    invoke-static {v2}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    check-cast v5, Lqi2;

    .line 215
    .line 216
    if-eqz v5, :cond_8

    .line 217
    .line 218
    iget-object v5, v5, Lqi2;->o:Lgg;

    .line 219
    .line 220
    iget v5, v5, Lgg;->a:I

    .line 221
    .line 222
    iget-object v6, v7, Lqi2;->o:Lgg;

    .line 223
    .line 224
    iget v6, v6, Lgg;->a:I

    .line 225
    .line 226
    if-ne v5, v6, :cond_8

    .line 227
    .line 228
    invoke-static {v2}, Lo70;->t0(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    :cond_8
    invoke-static {v1}, Lo70;->t0(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    iget-object v5, v7, Lqi2;->p:Lsi2;

    .line 235
    .line 236
    if-eqz v5, :cond_3

    .line 237
    .line 238
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    if-nez v8, :cond_c

    .line 248
    .line 249
    iget-object v7, v7, Lqi2;->o:Lgg;

    .line 250
    .line 251
    iget v7, v7, Lgg;->a:I

    .line 252
    .line 253
    invoke-static {v2}, Lo70;->h0(Ljava/util/List;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v8

    .line 257
    check-cast v8, Lqi2;

    .line 258
    .line 259
    iget-object v8, v8, Lqi2;->o:Lgg;

    .line 260
    .line 261
    iget v8, v8, Lgg;->a:I

    .line 262
    .line 263
    if-ne v7, v8, :cond_c

    .line 264
    .line 265
    invoke-static {v2}, Lo70;->t0(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    check-cast v7, Lqi2;

    .line 270
    .line 271
    if-ne v6, v9, :cond_a

    .line 272
    .line 273
    invoke-virtual {v5, v10}, Lyh2;->a(Lg22;)V

    .line 274
    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_a
    if-eq v6, v10, :cond_b

    .line 278
    .line 279
    invoke-virtual {v3, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    :cond_b
    :goto_4
    iget-object v5, v7, Lqi2;->p:Lsi2;

    .line 283
    .line 284
    if-eqz v5, :cond_3

    .line 285
    .line 286
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    if-nez v6, :cond_3

    .line 291
    .line 292
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    goto/16 :goto_0

    .line 296
    .line 297
    :cond_c
    sget-object v6, Lg22;->p:Lg22;

    .line 298
    .line 299
    invoke-virtual {v5, v6}, Lyh2;->a(Lg22;)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_0

    .line 303
    .line 304
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 305
    .line 306
    .line 307
    move-result p0

    .line 308
    const/4 v1, 0x0

    .line 309
    :goto_5
    if-ge v1, p0, :cond_f

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    add-int/lit8 v1, v1, 0x1

    .line 316
    .line 317
    check-cast v2, Lyh2;

    .line 318
    .line 319
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    check-cast v4, Lg22;

    .line 324
    .line 325
    if-eqz v4, :cond_e

    .line 326
    .line 327
    invoke-virtual {v2, v4}, Lyh2;->a(Lg22;)V

    .line 328
    .line 329
    .line 330
    goto :goto_5

    .line 331
    :cond_e
    iget-object v2, v2, Lyh2;->u:Lai2;

    .line 332
    .line 333
    invoke-virtual {v2}, Lai2;->b()V

    .line 334
    .line 335
    .line 336
    goto :goto_5

    .line 337
    :cond_f
    :goto_6
    return-void
.end method

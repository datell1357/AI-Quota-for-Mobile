.class public final Lpb0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Landroid/view/View;

.field public b:Z

.field public c:Lzb0;

.field public d:Lp22;

.field public e:Lyc3;

.field public f:Lcc4;

.field public final g:Lvo1;

.field public final h:Lm73;

.field public final i:Landroid/content/res/Configuration;

.field public final j:Lpg2;

.field public final k:Ls8;

.field public final l:Lqv3;

.field public final m:Lgw4;

.field public final n:Lbx3;

.field public final o:Lpa1;

.field public final p:Lpg2;

.field public final q:Lbj1;

.field public final r:Ltc;

.field public final s:Lzy1;

.field public final t:Ldh1;

.field public final u:Ly20;

.field public v:I

.field public final w:Lje;

.field public final x:Lob0;


# direct methods
.method public constructor <init>(Lpb0;Landroid/view/View;Lzb0;Lp22;Lyc3;Lcc4;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v1, p1, Lpb0;->a:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v0

    .line 14
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v1, v2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lpb0;->a:Landroid/view/View;

    .line 26
    .line 27
    iput-object p3, p0, Lpb0;->c:Lzb0;

    .line 28
    .line 29
    iput-object p4, p0, Lpb0;->d:Lp22;

    .line 30
    .line 31
    iput-object p5, p0, Lpb0;->e:Lyc3;

    .line 32
    .line 33
    iput-object p6, p0, Lpb0;->f:Lcc4;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object p3, p1, Lpb0;->g:Lvo1;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    new-instance p3, Lvo1;

    .line 44
    .line 45
    invoke-direct {p3}, Lvo1;-><init>()V

    .line 46
    .line 47
    .line 48
    :goto_1
    iput-object p3, p0, Lpb0;->g:Lvo1;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget-object p3, p1, Lpb0;->h:Lm73;

    .line 53
    .line 54
    if-nez p3, :cond_3

    .line 55
    .line 56
    :cond_2
    new-instance p3, Lm73;

    .line 57
    .line 58
    invoke-direct {p3}, Lm73;-><init>()V

    .line 59
    .line 60
    .line 61
    :cond_3
    iput-object p3, p0, Lpb0;->h:Lm73;

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iget-object p3, p1, Lpb0;->i:Landroid/content/res/Configuration;

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    new-instance p3, Landroid/content/res/Configuration;

    .line 72
    .line 73
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object p4

    .line 77
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object p4

    .line 81
    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 82
    .line 83
    .line 84
    move-result-object p4

    .line 85
    invoke-direct {p3, p4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 86
    .line 87
    .line 88
    :goto_2
    iput-object p3, p0, Lpb0;->i:Landroid/content/res/Configuration;

    .line 89
    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    iget-object p3, p1, Lpb0;->j:Lpg2;

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_5
    new-instance p4, Landroid/content/res/Configuration;

    .line 99
    .line 100
    invoke-direct {p4, p3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p4}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    :goto_3
    iput-object p3, p0, Lpb0;->j:Lpg2;

    .line 108
    .line 109
    if-eqz v1, :cond_6

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    iget-object p3, p1, Lpb0;->k:Ls8;

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_6
    new-instance p3, Ls8;

    .line 118
    .line 119
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object p4

    .line 123
    invoke-direct {p3, p4}, Ls8;-><init>(Landroid/content/Context;)V

    .line 124
    .line 125
    .line 126
    :goto_4
    iput-object p3, p0, Lpb0;->k:Ls8;

    .line 127
    .line 128
    if-eqz v1, :cond_7

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    iget-object p3, p1, Lpb0;->l:Lqv3;

    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_7
    new-instance p3, Lqv3;

    .line 137
    .line 138
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    const/16 p4, 0xb

    .line 142
    .line 143
    invoke-direct {p3, p4}, Lqv3;-><init>(I)V

    .line 144
    .line 145
    .line 146
    :goto_5
    iput-object p3, p0, Lpb0;->l:Lqv3;

    .line 147
    .line 148
    const/4 p3, 0x2

    .line 149
    if-eqz v1, :cond_8

    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    iget-object p4, p1, Lpb0;->m:Lgw4;

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_8
    new-instance p4, Lgw4;

    .line 158
    .line 159
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 160
    .line 161
    .line 162
    move-result-object p5

    .line 163
    invoke-direct {p4, p5, p3}, Lgw4;-><init>(Landroid/content/Context;I)V

    .line 164
    .line 165
    .line 166
    :goto_6
    iput-object p4, p0, Lpb0;->m:Lgw4;

    .line 167
    .line 168
    if-eqz v1, :cond_9

    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    iget-object p4, p1, Lpb0;->n:Lbx3;

    .line 174
    .line 175
    goto :goto_7

    .line 176
    :cond_9
    new-instance p4, Lbx3;

    .line 177
    .line 178
    const/4 p5, 0x7

    .line 179
    invoke-direct {p4, p5}, Lbx3;-><init>(I)V

    .line 180
    .line 181
    .line 182
    :goto_7
    iput-object p4, p0, Lpb0;->n:Lbx3;

    .line 183
    .line 184
    if-eqz v1, :cond_a

    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    iget-object p4, p1, Lpb0;->o:Lpa1;

    .line 190
    .line 191
    goto :goto_8

    .line 192
    :cond_a
    new-instance p4, Lbx3;

    .line 193
    .line 194
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 195
    .line 196
    .line 197
    const/16 p5, 0x9

    .line 198
    .line 199
    invoke-direct {p4, p5}, Lbx3;-><init>(I)V

    .line 200
    .line 201
    .line 202
    :goto_8
    iput-object p4, p0, Lpb0;->o:Lpa1;

    .line 203
    .line 204
    if-eqz v1, :cond_b

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    iget-object p4, p1, Lpb0;->p:Lpg2;

    .line 210
    .line 211
    goto :goto_9

    .line 212
    :cond_b
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 213
    .line 214
    .line 215
    move-result-object p4

    .line 216
    invoke-static {p4}, Lbi4;->o(Landroid/content/Context;)Lsa1;

    .line 217
    .line 218
    .line 219
    move-result-object p4

    .line 220
    sget-object p5, Lw13;->P:Lw13;

    .line 221
    .line 222
    new-instance p6, Lws2;

    .line 223
    .line 224
    invoke-direct {p6, p4, p5}, Lws2;-><init>(Ljava/lang/Object;Lw13;)V

    .line 225
    .line 226
    .line 227
    move-object p4, p6

    .line 228
    :goto_9
    iput-object p4, p0, Lpb0;->p:Lpg2;

    .line 229
    .line 230
    if-eqz p1, :cond_c

    .line 231
    .line 232
    iget-object v0, p1, Lpb0;->a:Landroid/view/View;

    .line 233
    .line 234
    :cond_c
    if-ne p2, v0, :cond_d

    .line 235
    .line 236
    iget-object p4, p1, Lpb0;->q:Lbj1;

    .line 237
    .line 238
    goto :goto_a

    .line 239
    :cond_d
    new-instance p4, Lqz0;

    .line 240
    .line 241
    const/16 p5, 0x12

    .line 242
    .line 243
    invoke-direct {p4, p5}, Lqz0;-><init>(I)V

    .line 244
    .line 245
    .line 246
    :goto_a
    iput-object p4, p0, Lpb0;->q:Lbj1;

    .line 247
    .line 248
    if-eqz v1, :cond_e

    .line 249
    .line 250
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    iget-object p2, p1, Lpb0;->r:Ltc;

    .line 254
    .line 255
    goto :goto_b

    .line 256
    :cond_e
    new-instance p4, Ltc;

    .line 257
    .line 258
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 263
    .line 264
    .line 265
    move-result-object p2

    .line 266
    invoke-direct {p4, p2}, Ltc;-><init>(Landroid/view/ViewConfiguration;)V

    .line 267
    .line 268
    .line 269
    move-object p2, p4

    .line 270
    :goto_b
    iput-object p2, p0, Lpb0;->r:Ltc;

    .line 271
    .line 272
    if-eqz p1, :cond_f

    .line 273
    .line 274
    iget-object p2, p1, Lpb0;->s:Lzy1;

    .line 275
    .line 276
    if-nez p2, :cond_10

    .line 277
    .line 278
    :cond_f
    new-instance p2, Lzy1;

    .line 279
    .line 280
    invoke-direct {p2}, Lzy1;-><init>()V

    .line 281
    .line 282
    .line 283
    :cond_10
    iput-object p2, p0, Lpb0;->s:Lzy1;

    .line 284
    .line 285
    new-instance p2, Ldh1;

    .line 286
    .line 287
    const/16 p4, 0x17

    .line 288
    .line 289
    const/4 p5, 0x0

    .line 290
    invoke-direct {p2, p4, p5}, Ldh1;-><init>(IZ)V

    .line 291
    .line 292
    .line 293
    iput-object p2, p0, Lpb0;->t:Ldh1;

    .line 294
    .line 295
    if-eqz p1, :cond_11

    .line 296
    .line 297
    iget-object p1, p1, Lpb0;->u:Ly20;

    .line 298
    .line 299
    if-nez p1, :cond_12

    .line 300
    .line 301
    :cond_11
    new-instance p1, Ly20;

    .line 302
    .line 303
    invoke-direct {p1}, Ly20;-><init>()V

    .line 304
    .line 305
    .line 306
    :cond_12
    iput-object p1, p0, Lpb0;->u:Ly20;

    .line 307
    .line 308
    new-instance p1, Lje;

    .line 309
    .line 310
    invoke-direct {p1, p3, p0}, Lje;-><init>(ILjava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    iput-object p1, p0, Lpb0;->w:Lje;

    .line 314
    .line 315
    new-instance p1, Lob0;

    .line 316
    .line 317
    invoke-direct {p1, p0}, Lob0;-><init>(Lpb0;)V

    .line 318
    .line 319
    .line 320
    iput-object p1, p0, Lpb0;->x:Lob0;

    .line 321
    .line 322
    return-void
.end method


# virtual methods
.method public final a(Lq9;Ldf1;Lag1;I)V
    .locals 26

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
    move/from16 v4, p4

    .line 10
    .line 11
    const v5, 0x761ec9f

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v5}, Lag1;->X(I)Lag1;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v1}, Lag1;->h(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    const/4 v6, 0x2

    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    const/4 v5, 0x4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v5, v6

    .line 27
    :goto_0
    or-int/2addr v5, v4

    .line 28
    invoke-virtual {v3, v2}, Lag1;->h(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    if-eqz v7, :cond_1

    .line 33
    .line 34
    const/16 v7, 0x20

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v7, 0x10

    .line 38
    .line 39
    :goto_1
    or-int/2addr v5, v7

    .line 40
    invoke-virtual {v3, v0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-eqz v7, :cond_2

    .line 45
    .line 46
    const/16 v7, 0x100

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v7, 0x80

    .line 50
    .line 51
    :goto_2
    or-int/2addr v5, v7

    .line 52
    and-int/lit16 v7, v5, 0x93

    .line 53
    .line 54
    const/16 v8, 0x92

    .line 55
    .line 56
    const/4 v10, 0x1

    .line 57
    if-eq v7, v8, :cond_3

    .line 58
    .line 59
    move v7, v10

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    const/4 v7, 0x0

    .line 62
    :goto_3
    and-int/2addr v5, v10

    .line 63
    invoke-virtual {v3, v5, v7}, Lag1;->N(IZ)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_17

    .line 68
    .line 69
    const v5, 0x7f090079

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    instance-of v8, v7, Ljava/util/Set;

    .line 77
    .line 78
    const/4 v11, 0x0

    .line 79
    if-eqz v8, :cond_5

    .line 80
    .line 81
    instance-of v8, v7, Lfx1;

    .line 82
    .line 83
    if-eqz v8, :cond_4

    .line 84
    .line 85
    instance-of v8, v7, Lix1;

    .line 86
    .line 87
    if-eqz v8, :cond_5

    .line 88
    .line 89
    :cond_4
    check-cast v7, Ljava/util/Set;

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_5
    move-object v7, v11

    .line 93
    :goto_4
    if-nez v7, :cond_a

    .line 94
    .line 95
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    instance-of v8, v7, Landroid/view/View;

    .line 100
    .line 101
    if-eqz v8, :cond_6

    .line 102
    .line 103
    check-cast v7, Landroid/view/View;

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_6
    move-object v7, v11

    .line 107
    :goto_5
    if-eqz v7, :cond_7

    .line 108
    .line 109
    invoke-virtual {v7, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    goto :goto_6

    .line 114
    :cond_7
    move-object v5, v11

    .line 115
    :goto_6
    instance-of v7, v5, Ljava/util/Set;

    .line 116
    .line 117
    if-eqz v7, :cond_9

    .line 118
    .line 119
    instance-of v7, v5, Lfx1;

    .line 120
    .line 121
    if-eqz v7, :cond_8

    .line 122
    .line 123
    instance-of v7, v5, Lix1;

    .line 124
    .line 125
    if-eqz v7, :cond_9

    .line 126
    .line 127
    :cond_8
    move-object v7, v5

    .line 128
    check-cast v7, Ljava/util/Set;

    .line 129
    .line 130
    goto :goto_7

    .line 131
    :cond_9
    move-object v7, v11

    .line 132
    :cond_a
    :goto_7
    if-eqz v7, :cond_b

    .line 133
    .line 134
    invoke-virtual {v3}, Lag1;->v()Lbc0;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    iput-boolean v10, v3, Lag1;->q:Z

    .line 142
    .line 143
    iput-boolean v10, v3, Lag1;->C:Z

    .line 144
    .line 145
    iget-object v5, v3, Lag1;->c:Lun3;

    .line 146
    .line 147
    invoke-virtual {v5}, Lun3;->d()V

    .line 148
    .line 149
    .line 150
    iget-object v5, v3, Lag1;->H:Lun3;

    .line 151
    .line 152
    invoke-virtual {v5}, Lun3;->d()V

    .line 153
    .line 154
    .line 155
    iget-object v5, v3, Lag1;->I:Lxn3;

    .line 156
    .line 157
    iget-object v8, v5, Lxn3;->a:Lun3;

    .line 158
    .line 159
    iget-object v12, v8, Lun3;->w:Ljava/util/HashMap;

    .line 160
    .line 161
    iput-object v12, v5, Lxn3;->e:Ljava/util/HashMap;

    .line 162
    .line 163
    iget-object v8, v8, Lun3;->x:Ltf2;

    .line 164
    .line 165
    iput-object v8, v5, Lxn3;->f:Ltf2;

    .line 166
    .line 167
    :cond_b
    invoke-virtual {v3}, Lag1;->K()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    sget-object v8, Lrb0;->a:Lbx3;

    .line 172
    .line 173
    if-ne v5, v8, :cond_10

    .line 174
    .line 175
    invoke-virtual {v0}, Lpb0;->f()V

    .line 176
    .line 177
    .line 178
    iget-object v5, v0, Lpb0;->e:Lyc3;

    .line 179
    .line 180
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 184
    .line 185
    .line 186
    move-result-object v12

    .line 187
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    check-cast v12, Landroid/view/View;

    .line 191
    .line 192
    const v13, 0x7f090055

    .line 193
    .line 194
    .line 195
    invoke-virtual {v12, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v13

    .line 199
    instance-of v14, v13, Ljava/lang/String;

    .line 200
    .line 201
    if-eqz v14, :cond_c

    .line 202
    .line 203
    check-cast v13, Ljava/lang/String;

    .line 204
    .line 205
    goto :goto_8

    .line 206
    :cond_c
    move-object v13, v11

    .line 207
    :goto_8
    if-nez v13, :cond_d

    .line 208
    .line 209
    invoke-virtual {v12}, Landroid/view/View;->getId()I

    .line 210
    .line 211
    .line 212
    move-result v12

    .line 213
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v13

    .line 217
    :cond_d
    const-string v12, "SaveableStateRegistry:"

    .line 218
    .line 219
    invoke-static {v12, v13}, Ldi0;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v12

    .line 223
    invoke-interface {v5}, Lyc3;->getSavedStateRegistry()Luc3;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    invoke-virtual {v5, v12}, Luc3;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 228
    .line 229
    .line 230
    move-result-object v13

    .line 231
    if-eqz v13, :cond_e

    .line 232
    .line 233
    new-instance v11, Ljava/util/LinkedHashMap;

    .line 234
    .line 235
    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v13}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 239
    .line 240
    .line 241
    move-result-object v14

    .line 242
    check-cast v14, Ljava/lang/Iterable;

    .line 243
    .line 244
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 245
    .line 246
    .line 247
    move-result-object v14

    .line 248
    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 249
    .line 250
    .line 251
    move-result v15

    .line 252
    if-eqz v15, :cond_e

    .line 253
    .line 254
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v15

    .line 258
    check-cast v15, Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {v13, v15}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 261
    .line 262
    .line 263
    move-result-object v9

    .line 264
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    invoke-interface {v11, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    goto :goto_9

    .line 271
    :cond_e
    sget-object v9, Ll9;->G:Ll9;

    .line 272
    .line 273
    sget-object v13, Lkc3;->a:Lis3;

    .line 274
    .line 275
    new-instance v13, Ljc3;

    .line 276
    .line 277
    invoke-direct {v13, v11, v9}, Ljc3;-><init>(Ljava/util/Map;Lpe1;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v5, v12}, Luc3;->b(Ljava/lang/String;)Ltc3;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    if-eqz v9, :cond_f

    .line 285
    .line 286
    :catch_0
    const/4 v9, 0x0

    .line 287
    goto :goto_a

    .line 288
    :cond_f
    :try_start_0
    new-instance v9, Lmc1;

    .line 289
    .line 290
    invoke-direct {v9, v6, v13}, Lmc1;-><init>(ILjava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v5, v12, v9}, Luc3;->c(Ljava/lang/String;Ltc3;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .line 295
    .line 296
    move v9, v10

    .line 297
    :goto_a
    new-instance v6, Lkv0;

    .line 298
    .line 299
    new-instance v10, Llv0;

    .line 300
    .line 301
    invoke-direct {v10, v9, v5, v12}, Llv0;-><init>(ZLuc3;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-direct {v6, v13, v10}, Lkv0;-><init>(Ljc3;Llv0;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v3, v6}, Lag1;->g0(Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    move-object v5, v6

    .line 311
    :cond_10
    check-cast v5, Lkv0;

    .line 312
    .line 313
    invoke-virtual {v3, v5}, Lag1;->h(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v6

    .line 317
    invoke-virtual {v3}, Lag1;->K()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v9

    .line 321
    if-nez v6, :cond_11

    .line 322
    .line 323
    if-ne v9, v8, :cond_12

    .line 324
    .line 325
    :cond_11
    new-instance v9, Lc8;

    .line 326
    .line 327
    const/16 v6, 0xa

    .line 328
    .line 329
    invoke-direct {v9, v6, v5}, Lc8;-><init>(ILjava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v3, v9}, Lag1;->g0(Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    :cond_12
    check-cast v9, Lpe1;

    .line 336
    .line 337
    sget-object v6, Lt64;->a:Lt64;

    .line 338
    .line 339
    invoke-static {v6, v9, v3}, Lzf5;->a(Ljava/lang/Object;Lpe1;Lag1;)V

    .line 340
    .line 341
    .line 342
    sget-object v6, Lkc0;->x:Llc0;

    .line 343
    .line 344
    invoke-virtual {v3, v6}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v9

    .line 348
    check-cast v9, Ljava/lang/Boolean;

    .line 349
    .line 350
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 351
    .line 352
    .line 353
    move-result v9

    .line 354
    invoke-virtual {v1}, Lq9;->getScrollCaptureInProgress$ui()Z

    .line 355
    .line 356
    .line 357
    move-result v10

    .line 358
    or-int/2addr v9, v10

    .line 359
    invoke-virtual {v1}, Lq9;->getView()Landroid/view/View;

    .line 360
    .line 361
    .line 362
    move-result-object v10

    .line 363
    invoke-virtual {v3, v10}, Lag1;->f(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v10

    .line 367
    invoke-virtual {v3}, Lag1;->K()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v11

    .line 371
    if-nez v10, :cond_13

    .line 372
    .line 373
    if-ne v11, v8, :cond_14

    .line 374
    .line 375
    :cond_13
    new-instance v11, Lec4;

    .line 376
    .line 377
    invoke-virtual {v1}, Lq9;->getView()Landroid/view/View;

    .line 378
    .line 379
    .line 380
    move-result-object v10

    .line 381
    invoke-direct {v11, v10}, Lec4;-><init>(Landroid/view/View;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v3, v11}, Lag1;->g0(Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    :cond_14
    check-cast v11, Lec4;

    .line 388
    .line 389
    invoke-virtual {v1}, Lq9;->getView()Landroid/view/View;

    .line 390
    .line 391
    .line 392
    move-result-object v10

    .line 393
    invoke-virtual {v3, v10}, Lag1;->f(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v10

    .line 397
    invoke-virtual {v3}, Lag1;->K()Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v12

    .line 401
    if-nez v10, :cond_15

    .line 402
    .line 403
    if-ne v12, v8, :cond_16

    .line 404
    .line 405
    :cond_15
    new-instance v12, Lfc;

    .line 406
    .line 407
    invoke-virtual {v1}, Lq9;->getView()Landroid/view/View;

    .line 408
    .line 409
    .line 410
    move-result-object v8

    .line 411
    invoke-direct {v12, v8}, Lfc;-><init>(Landroid/view/View;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v3, v12}, Lag1;->g0(Ljava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    :cond_16
    check-cast v12, Lxp3;

    .line 418
    .line 419
    sget-object v8, Lw62;->a:Lh03;

    .line 420
    .line 421
    invoke-virtual {v0}, Lpb0;->c()Lp22;

    .line 422
    .line 423
    .line 424
    move-result-object v10

    .line 425
    invoke-virtual {v8, v10}, Lh03;->a(Ljava/lang/Object;)Lj03;

    .line 426
    .line 427
    .line 428
    move-result-object v13

    .line 429
    sget-object v8, Lb72;->a:Lh03;

    .line 430
    .line 431
    invoke-virtual {v0}, Lpb0;->f()V

    .line 432
    .line 433
    .line 434
    iget-object v10, v0, Lpb0;->e:Lyc3;

    .line 435
    .line 436
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v8, v10}, Lh03;->a(Ljava/lang/Object;)Lj03;

    .line 440
    .line 441
    .line 442
    move-result-object v14

    .line 443
    sget-object v8, Lea;->d:Lis3;

    .line 444
    .line 445
    iget-object v10, v0, Lpb0;->g:Lvo1;

    .line 446
    .line 447
    invoke-virtual {v8, v10}, Lis3;->a(Ljava/lang/Object;)Lj03;

    .line 448
    .line 449
    .line 450
    move-result-object v15

    .line 451
    sget-object v8, Lea;->e:Lis3;

    .line 452
    .line 453
    iget-object v10, v0, Lpb0;->h:Lm73;

    .line 454
    .line 455
    invoke-virtual {v8, v10}, Lis3;->a(Ljava/lang/Object;)Lj03;

    .line 456
    .line 457
    .line 458
    move-result-object v16

    .line 459
    sget-object v8, Lkc0;->v:Lis3;

    .line 460
    .line 461
    invoke-virtual {v8, v12}, Lis3;->a(Ljava/lang/Object;)Lj03;

    .line 462
    .line 463
    .line 464
    move-result-object v17

    .line 465
    sget-object v8, Lea;->b:Lis3;

    .line 466
    .line 467
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 468
    .line 469
    .line 470
    move-result-object v10

    .line 471
    invoke-virtual {v8, v10}, Lis3;->a(Ljava/lang/Object;)Lj03;

    .line 472
    .line 473
    .line 474
    move-result-object v18

    .line 475
    sget-object v8, Lwr1;->a:Lis3;

    .line 476
    .line 477
    invoke-virtual {v8, v7}, Lis3;->a(Ljava/lang/Object;)Lj03;

    .line 478
    .line 479
    .line 480
    move-result-object v19

    .line 481
    sget-object v7, Lea;->a:Llc0;

    .line 482
    .line 483
    invoke-virtual {v1}, Lq9;->getConfiguration()Landroid/content/res/Configuration;

    .line 484
    .line 485
    .line 486
    move-result-object v8

    .line 487
    invoke-virtual {v7, v8}, Llc0;->a(Ljava/lang/Object;)Lj03;

    .line 488
    .line 489
    .line 490
    move-result-object v20

    .line 491
    sget-object v7, Lkc3;->a:Lis3;

    .line 492
    .line 493
    invoke-virtual {v7, v5}, Lis3;->a(Ljava/lang/Object;)Lj03;

    .line 494
    .line 495
    .line 496
    move-result-object v21

    .line 497
    sget-object v5, Lea;->f:Lis3;

    .line 498
    .line 499
    invoke-virtual {v1}, Lq9;->getView()Landroid/view/View;

    .line 500
    .line 501
    .line 502
    move-result-object v7

    .line 503
    invoke-virtual {v5, v7}, Lis3;->a(Ljava/lang/Object;)Lj03;

    .line 504
    .line 505
    .line 506
    move-result-object v22

    .line 507
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 508
    .line 509
    .line 510
    move-result-object v5

    .line 511
    invoke-virtual {v6, v5}, Llc0;->a(Ljava/lang/Object;)Lj03;

    .line 512
    .line 513
    .line 514
    move-result-object v23

    .line 515
    sget-object v5, Lkc0;->t:Lis3;

    .line 516
    .line 517
    invoke-virtual {v1}, Lq9;->getViewConfiguration()Lnb4;

    .line 518
    .line 519
    .line 520
    move-result-object v6

    .line 521
    invoke-virtual {v5, v6}, Lis3;->a(Ljava/lang/Object;)Lj03;

    .line 522
    .line 523
    .line 524
    move-result-object v24

    .line 525
    sget-object v5, Lgk1;->a:Llc0;

    .line 526
    .line 527
    invoke-virtual {v5, v11}, Llc0;->a(Ljava/lang/Object;)Lj03;

    .line 528
    .line 529
    .line 530
    move-result-object v25

    .line 531
    filled-new-array/range {v13 .. v25}, [Lj03;

    .line 532
    .line 533
    .line 534
    move-result-object v5

    .line 535
    new-instance v6, Lnb0;

    .line 536
    .line 537
    invoke-direct {v6, v1, v0, v2}, Lnb0;-><init>(Lq9;Lpb0;Ldf1;)V

    .line 538
    .line 539
    .line 540
    const v7, 0x4e86c15f

    .line 541
    .line 542
    .line 543
    invoke-static {v7, v6, v3}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 544
    .line 545
    .line 546
    move-result-object v6

    .line 547
    const/16 v7, 0x38

    .line 548
    .line 549
    invoke-static {v5, v6, v3, v7}, Lgg4;->b([Lj03;Ldf1;Lag1;I)V

    .line 550
    .line 551
    .line 552
    goto :goto_b

    .line 553
    :cond_17
    invoke-virtual {v3}, Lag1;->Q()V

    .line 554
    .line 555
    .line 556
    :goto_b
    invoke-virtual {v3}, Lag1;->r()Lc33;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    if-eqz v3, :cond_18

    .line 561
    .line 562
    new-instance v5, Lnb0;

    .line 563
    .line 564
    invoke-direct {v5, v0, v1, v2, v4}, Lnb0;-><init>(Lpb0;Lq9;Ldf1;I)V

    .line 565
    .line 566
    .line 567
    iput-object v5, v3, Lc33;->d:Ldf1;

    .line 568
    .line 569
    :cond_18
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget v0, p0, Lpb0;->v:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lpb0;->v:I

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "ComposeViewContext"

    .line 10
    .line 11
    const-string v1, "View count has dropped below 0"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lpb0;->v:I

    .line 18
    .line 19
    :cond_0
    iget v0, p0, Lpb0;->v:I

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lpb0;->a:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lpb0;->x:Lob0;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lpb0;->t:Ldh1;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0, v2}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public final c()Lp22;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lpb0;->f()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lpb0;->d:Lp22;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public final d()V
    .locals 3

    .line 1
    iget v0, p0, Lpb0;->v:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lpb0;->v:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lpb0;->a:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lpb0;->x:Lob0;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0, v1}, Lpb0;->e(Landroid/content/res/Configuration;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget-object p0, p0, Lpb0;->t:Ldh1;

    .line 36
    .line 37
    iget-object p0, p0, Ldh1;->n:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Lws2;

    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p0, v1}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0, v2}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method public final e(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lpb0;->i:Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v1, p0, Lpb0;->g:Lvo1;

    .line 10
    .line 11
    iget-object v1, v1, Lvo1;->a:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lto1;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    iget v2, v2, Lto1;->b:I

    .line 48
    .line 49
    invoke-static {v0, v2}, Landroid/content/res/Configuration;->needNewResources(II)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object v1, p0, Lpb0;->j:Lpg2;

    .line 60
    .line 61
    new-instance v2, Landroid/content/res/Configuration;

    .line 62
    .line 63
    invoke-direct {v2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v1, v2}, Lpg2;->setValue(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lpb0;->h:Lm73;

    .line 70
    .line 71
    monitor-enter p1

    .line 72
    :try_start_0
    iget-object v1, p1, Lm73;->a:Ltf2;

    .line 73
    .line 74
    invoke-virtual {v1}, Ltf2;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    monitor-exit p1

    .line 78
    const/high16 p1, 0x10000000

    .line 79
    .line 80
    and-int/2addr p1, v0

    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    iget-object p1, p0, Lpb0;->p:Lpg2;

    .line 84
    .line 85
    iget-object v1, p0, Lpb0;->a:Landroid/view/View;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v1}, Lbi4;->o(Landroid/content/Context;)Lsa1;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-interface {p1, v1}, Lpg2;->setValue(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    const p1, 0x2fff1d80

    .line 99
    .line 100
    .line 101
    and-int/2addr p1, v0

    .line 102
    if-eqz p1, :cond_4

    .line 103
    .line 104
    iget-object p0, p0, Lpb0;->t:Ldh1;

    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    monitor-exit p1

    .line 112
    throw p0

    .line 113
    :cond_4
    :goto_1
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lpb0;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lpb0;->b:Z

    .line 7
    .line 8
    iget-object v0, p0, Lpb0;->c:Lzb0;

    .line 9
    .line 10
    iget-object v1, p0, Lpb0;->a:Landroid/view/View;

    .line 11
    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    invoke-static {v1}, Ljf4;->a(Landroid/view/View;)Lzb0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :goto_0
    if-nez v0, :cond_1

    .line 26
    .line 27
    instance-of v3, v2, Landroid/view/View;

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    check-cast v2, Landroid/view/View;

    .line 32
    .line 33
    invoke-static {v2}, Ljf4;->a(Landroid/view/View;)Lzb0;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v2}, Lfl4;->q(Landroid/view/View;)Landroid/view/ViewParent;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 43
    .line 44
    invoke-static {v1}, Ljf4;->b(Landroid/view/View;)Lh33;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_2
    iput-object v0, p0, Lpb0;->c:Lzb0;

    .line 49
    .line 50
    :cond_3
    iget-object v0, p0, Lpb0;->d:Lp22;

    .line 51
    .line 52
    if-nez v0, :cond_5

    .line 53
    .line 54
    invoke-static {v1}, Lon4;->u(Landroid/view/View;)Lp22;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    iput-object v0, p0, Lpb0;->d:Lp22;

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    const-string p0, "Composed into a View which doesn\'t propagate ViewTreeLifecycleOwner!"

    .line 64
    .line 65
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_5
    :goto_2
    iget-object v0, p0, Lpb0;->e:Lyc3;

    .line 70
    .line 71
    if-nez v0, :cond_7

    .line 72
    .line 73
    invoke-static {v1}, Lht4;->r(Landroid/view/View;)Lyc3;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    iput-object v0, p0, Lpb0;->e:Lyc3;

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_6
    const-string p0, "Composed into a View which doesn\'t propagate ViewTreeSavedStateRegistryOwner!"

    .line 83
    .line 84
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_7
    :goto_3
    iget-object v0, p0, Lpb0;->f:Lcc4;

    .line 89
    .line 90
    if-nez v0, :cond_8

    .line 91
    .line 92
    invoke-static {v1}, Lkt4;->y(Landroid/view/View;)Lcc4;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Lpb0;->f:Lcc4;

    .line 97
    .line 98
    :cond_8
    return-void
.end method

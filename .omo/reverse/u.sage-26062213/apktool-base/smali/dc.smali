.class public final Ldc;
.super Lmd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lfc0;
.implements Ljx0;
.implements Ley1;


# instance fields
.field public final B:Lxs1;

.field public final C:Z

.field public final D:F

.field public final E:Lur0;

.field public final F:Ltr0;

.field public G:F

.field public H:J

.field public I:Z

.field public final J:Ldg2;

.field public final K:Lpd;

.field public final L:Ljava/util/ArrayList;

.field public M:Lws1;

.field public final N:Lpd;

.field public final O:Lws2;

.field public P:Lb21;

.field public Q:Ly83;

.field public R:Lz83;


# direct methods
.method public constructor <init>(Lxs1;ZFLur0;Ltr0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmd2;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldc;->B:Lxs1;

    .line 5
    .line 6
    iput-boolean p2, p0, Ldc;->C:Z

    .line 7
    .line 8
    iput p3, p0, Ldc;->D:F

    .line 9
    .line 10
    iput-object p4, p0, Ldc;->E:Lur0;

    .line 11
    .line 12
    iput-object p5, p0, Ldc;->F:Ltr0;

    .line 13
    .line 14
    const-wide/16 p1, 0x0

    .line 15
    .line 16
    iput-wide p1, p0, Ldc;->H:J

    .line 17
    .line 18
    new-instance p1, Ldg2;

    .line 19
    .line 20
    invoke-direct {p1}, Ldg2;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Ldc;->J:Ldg2;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-static {p1}, Ldm0;->a(F)Lpd;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iput-object p2, p0, Ldc;->K:Lpd;

    .line 31
    .line 32
    new-instance p2, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Ldc;->L:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-static {p1}, Ldm0;->a(F)Lpd;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Ldc;->N:Lpd;

    .line 44
    .line 45
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-static {p1}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Ldc;->O:Lws2;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final G0(Ljy2;)V
    .locals 12

    .line 1
    instance-of v0, p1, Lhy2;

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    move-object v2, p1

    .line 6
    check-cast v2, Lhy2;

    .line 7
    .line 8
    iget-wide v4, p0, Ldc;->H:J

    .line 9
    .line 10
    iget p1, p0, Ldc;->G:F

    .line 11
    .line 12
    iget-object v0, p0, Ldc;->Q:Ly83;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_0
    sget-object v0, Lea;->f:Lis3;

    .line 19
    .line 20
    invoke-static {p0, v0}, Ln44;->g0(Lfc0;Lh03;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/view/View;

    .line 25
    .line 26
    :goto_0
    instance-of v3, v0, Landroid/view/ViewGroup;

    .line 27
    .line 28
    if-nez v3, :cond_2

    .line 29
    .line 30
    move-object v3, v0

    .line 31
    check-cast v3, Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    instance-of v6, v3, Landroid/view/View;

    .line 38
    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    move-object v0, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string p0, "Couldn\'t find a valid parent for "

    .line 44
    .line 45
    const-string p1, ". Are you overriding LocalView and providing a View that is not attached to the view hierarchy?"

    .line 46
    .line 47
    invoke-static {v0, p1, p0}, Lp61;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    check-cast v0, Landroid/view/ViewGroup;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    move v6, v1

    .line 58
    :goto_1
    if-ge v6, v3, :cond_4

    .line 59
    .line 60
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    instance-of v8, v7, Ly83;

    .line 65
    .line 66
    if-eqz v8, :cond_3

    .line 67
    .line 68
    check-cast v7, Ly83;

    .line 69
    .line 70
    move-object v0, v7

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    new-instance v3, Ly83;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-direct {v3, v6}, Ly83;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    move-object v0, v3

    .line 88
    :goto_2
    iput-object v0, p0, Ldc;->Q:Ly83;

    .line 89
    .line 90
    :goto_3
    iget-object v3, v0, Ly83;->o:Ljava/util/ArrayList;

    .line 91
    .line 92
    iget-object v6, v0, Ly83;->q:Lxh1;

    .line 93
    .line 94
    iget-object v7, v6, Lxh1;->n:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v7, Ljava/util/LinkedHashMap;

    .line 97
    .line 98
    iget-object v8, v6, Lxh1;->n:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v8, Ljava/util/LinkedHashMap;

    .line 101
    .line 102
    iget-object v6, v6, Lxh1;->o:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v6, Ljava/util/LinkedHashMap;

    .line 105
    .line 106
    invoke-virtual {v7, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    check-cast v7, Lz83;

    .line 111
    .line 112
    if-eqz v7, :cond_5

    .line 113
    .line 114
    goto :goto_7

    .line 115
    :cond_5
    iget-object v7, v0, Ly83;->p:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    const/4 v10, 0x0

    .line 125
    if-eqz v9, :cond_6

    .line 126
    .line 127
    move-object v7, v10

    .line 128
    goto :goto_4

    .line 129
    :cond_6
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    :goto_4
    check-cast v7, Lz83;

    .line 134
    .line 135
    if-nez v7, :cond_b

    .line 136
    .line 137
    iget v7, v0, Ly83;->r:I

    .line 138
    .line 139
    invoke-static {v3}, Ltv4;->v(Ljava/util/List;)I

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-le v7, v9, :cond_7

    .line 144
    .line 145
    new-instance v7, Lz83;

    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    invoke-direct {v7, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_7
    iget v7, v0, Ly83;->r:I

    .line 162
    .line 163
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    move-object v7, v3

    .line 168
    check-cast v7, Lz83;

    .line 169
    .line 170
    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    check-cast v3, Ldc;

    .line 175
    .line 176
    if-eqz v3, :cond_9

    .line 177
    .line 178
    iput-object v10, v3, Ldc;->R:Lz83;

    .line 179
    .line 180
    invoke-static {v3}, Lkt4;->Q(Ljx0;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    check-cast v9, Lz83;

    .line 188
    .line 189
    if-eqz v9, :cond_8

    .line 190
    .line 191
    invoke-interface {v6, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    check-cast v9, Ldc;

    .line 196
    .line 197
    :cond_8
    invoke-interface {v8, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v7}, Lz83;->c()V

    .line 201
    .line 202
    .line 203
    :cond_9
    :goto_5
    iget v3, v0, Ly83;->r:I

    .line 204
    .line 205
    iget v9, v0, Ly83;->n:I

    .line 206
    .line 207
    add-int/lit8 v9, v9, -0x1

    .line 208
    .line 209
    if-ge v3, v9, :cond_a

    .line 210
    .line 211
    add-int/lit8 v3, v3, 0x1

    .line 212
    .line 213
    iput v3, v0, Ly83;->r:I

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_a
    iput v1, v0, Ly83;->r:I

    .line 217
    .line 218
    :cond_b
    :goto_6
    invoke-interface {v8, p0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    invoke-interface {v6, v7, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    :goto_7
    iget-object v0, p0, Ldc;->F:Ltr0;

    .line 225
    .line 226
    invoke-virtual {v0}, Ltr0;->a()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    check-cast v0, Lm93;

    .line 231
    .line 232
    iget-object v0, v0, Lm93;->a:Lkt4;

    .line 233
    .line 234
    instance-of v0, v0, Ll93;

    .line 235
    .line 236
    if-eqz v0, :cond_c

    .line 237
    .line 238
    const v0, 0x3dcccccd    # 0.1f

    .line 239
    .line 240
    .line 241
    :goto_8
    move v9, v0

    .line 242
    goto :goto_9

    .line 243
    :cond_c
    const/4 v0, 0x0

    .line 244
    goto :goto_8

    .line 245
    :goto_9
    invoke-static {p1}, Lis0;->V(F)I

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    iget-object p1, p0, Ldc;->E:Lur0;

    .line 250
    .line 251
    invoke-virtual {p1}, Lur0;->a()J

    .line 252
    .line 253
    .line 254
    move-result-wide v10

    .line 255
    move p1, v1

    .line 256
    move-object v1, v7

    .line 257
    move-wide v7, v10

    .line 258
    new-instance v10, Lcc;

    .line 259
    .line 260
    invoke-direct {v10, p1, p0}, Lcc;-><init>(ILjava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    iget-boolean v3, p0, Ldc;->C:Z

    .line 264
    .line 265
    invoke-virtual/range {v1 .. v10}, Lz83;->b(Lhy2;ZJIJFLcc;)V

    .line 266
    .line 267
    .line 268
    iput-object v1, p0, Ldc;->R:Lz83;

    .line 269
    .line 270
    invoke-static {p0}, Lkt4;->Q(Ljx0;)V

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :cond_d
    instance-of v0, p1, Liy2;

    .line 275
    .line 276
    if-eqz v0, :cond_e

    .line 277
    .line 278
    iget-object p0, p0, Ldc;->R:Lz83;

    .line 279
    .line 280
    if-eqz p0, :cond_f

    .line 281
    .line 282
    invoke-virtual {p0}, Lz83;->d()V

    .line 283
    .line 284
    .line 285
    return-void

    .line 286
    :cond_e
    instance-of p1, p1, Lgy2;

    .line 287
    .line 288
    if-eqz p1, :cond_f

    .line 289
    .line 290
    iget-object p0, p0, Ldc;->R:Lz83;

    .line 291
    .line 292
    if-eqz p0, :cond_f

    .line 293
    .line 294
    invoke-virtual {p0}, Lz83;->d()V

    .line 295
    .line 296
    .line 297
    :cond_f
    return-void
.end method

.method public final K(Lzy1;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Lzy1;->a()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v1, Lzy1;->n:Lx20;

    .line 9
    .line 10
    iget-object v3, v2, Lx20;->o:Leh;

    .line 11
    .line 12
    invoke-virtual {v3}, Leh;->u()Lv20;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget-object v4, v0, Ldc;->R:Lz83;

    .line 17
    .line 18
    const/4 v11, 0x0

    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    iget-object v5, v0, Ldc;->F:Ltr0;

    .line 22
    .line 23
    invoke-virtual {v5}, Ltr0;->a()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Lm93;

    .line 28
    .line 29
    iget-object v5, v5, Lm93;->a:Lkt4;

    .line 30
    .line 31
    instance-of v5, v5, Ll93;

    .line 32
    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    const v5, 0x3dcccccd    # 0.1f

    .line 36
    .line 37
    .line 38
    move v10, v5

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v10, v11

    .line 41
    :goto_0
    iget-wide v5, v0, Ldc;->H:J

    .line 42
    .line 43
    iget v7, v0, Ldc;->G:F

    .line 44
    .line 45
    invoke-static {v7}, Lis0;->V(F)I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    iget-object v8, v0, Ldc;->E:Lur0;

    .line 50
    .line 51
    invoke-virtual {v8}, Lur0;->a()J

    .line 52
    .line 53
    .line 54
    move-result-wide v8

    .line 55
    invoke-virtual/range {v4 .. v10}, Lz83;->e(JIJF)V

    .line 56
    .line 57
    .line 58
    invoke-static {v3}, Lz8;->a(Lv20;)Landroid/graphics/Canvas;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v4, v3}, Lz83;->draw(Landroid/graphics/Canvas;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v3, v0, Ldc;->K:Lpd;

    .line 66
    .line 67
    invoke-virtual {v3}, Lpd;->d()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Ljava/lang/Number;

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    cmpl-float v4, v3, v11

    .line 78
    .line 79
    if-lez v4, :cond_3

    .line 80
    .line 81
    iget-object v4, v0, Ldc;->E:Lur0;

    .line 82
    .line 83
    invoke-virtual {v4}, Lur0;->a()J

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    invoke-static {v3, v4, v5}, Lt70;->b(FJ)J

    .line 88
    .line 89
    .line 90
    move-result-wide v3

    .line 91
    iget-boolean v5, v0, Ldc;->C:Z

    .line 92
    .line 93
    if-eqz v5, :cond_2

    .line 94
    .line 95
    invoke-interface {v2}, Lkx0;->d()J

    .line 96
    .line 97
    .line 98
    move-result-wide v5

    .line 99
    const/16 v7, 0x20

    .line 100
    .line 101
    shr-long/2addr v5, v7

    .line 102
    long-to-int v5, v5

    .line 103
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 104
    .line 105
    .line 106
    move-result v15

    .line 107
    invoke-interface {v2}, Lkx0;->d()J

    .line 108
    .line 109
    .line 110
    move-result-wide v5

    .line 111
    const-wide v7, 0xffffffffL

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    and-long/2addr v5, v7

    .line 117
    long-to-int v5, v5

    .line 118
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 119
    .line 120
    .line 121
    move-result v16

    .line 122
    iget-object v2, v2, Lx20;->o:Leh;

    .line 123
    .line 124
    invoke-virtual {v2}, Leh;->z()J

    .line 125
    .line 126
    .line 127
    move-result-wide v5

    .line 128
    invoke-virtual {v2}, Leh;->u()Lv20;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-interface {v7}, Lv20;->j()V

    .line 133
    .line 134
    .line 135
    :try_start_0
    iget-object v7, v2, Leh;->o:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v7, Ldh1;

    .line 138
    .line 139
    iget-object v7, v7, Ldh1;->n:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v7, Leh;

    .line 142
    .line 143
    invoke-virtual {v7}, Leh;->u()Lv20;

    .line 144
    .line 145
    .line 146
    move-result-object v12

    .line 147
    const/4 v13, 0x0

    .line 148
    const/4 v14, 0x0

    .line 149
    const/16 v17, 0x1

    .line 150
    .line 151
    invoke-interface/range {v12 .. v17}, Lv20;->e(FFFFI)V

    .line 152
    .line 153
    .line 154
    iget v7, v0, Ldc;->G:F

    .line 155
    .line 156
    invoke-static {v1, v3, v4, v7}, Lkx0;->f0(Lzy1;JF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Leh;->u()Lv20;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-interface {v1}, Lv20;->h()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v5, v6}, Leh;->K(J)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    invoke-virtual {v2}, Leh;->u()Lv20;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-interface {v1}, Lv20;->h()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v5, v6}, Leh;->K(J)V

    .line 179
    .line 180
    .line 181
    throw v0

    .line 182
    :cond_2
    iget v2, v0, Ldc;->G:F

    .line 183
    .line 184
    invoke-static {v1, v3, v4, v2}, Lkx0;->f0(Lzy1;JF)V

    .line 185
    .line 186
    .line 187
    :cond_3
    :goto_1
    iget-object v1, v0, Ldc;->N:Lpd;

    .line 188
    .line 189
    invoke-virtual {v1}, Lpd;->d()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    check-cast v1, Ljava/lang/Number;

    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    cmpl-float v1, v1, v11

    .line 200
    .line 201
    if-lez v1, :cond_5

    .line 202
    .line 203
    iget-object v1, v0, Ldc;->P:Lb21;

    .line 204
    .line 205
    if-nez v1, :cond_4

    .line 206
    .line 207
    new-instance v1, Lb21;

    .line 208
    .line 209
    const/16 v2, 0x19

    .line 210
    .line 211
    invoke-direct {v1, v2}, Lb21;-><init>(I)V

    .line 212
    .line 213
    .line 214
    :cond_4
    iput-object v1, v0, Ldc;->P:Lb21;

    .line 215
    .line 216
    iget-object v0, v0, Ldc;->F:Ltr0;

    .line 217
    .line 218
    invoke-virtual {v0}, Ltr0;->a()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    :cond_5
    return-void
.end method

.method public final c(J)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ldc;->I:Z

    .line 3
    .line 4
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lxy1;->L:Las0;

    .line 9
    .line 10
    invoke-static {p1, p2}, Lse0;->H(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    iput-wide p1, p0, Ldc;->H:J

    .line 15
    .line 16
    iget p1, p0, Ldc;->D:F

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    iget-wide p1, p0, Ldc;->H:J

    .line 25
    .line 26
    const/16 v1, 0x20

    .line 27
    .line 28
    shr-long v2, p1, v1

    .line 29
    .line 30
    long-to-int v2, v2

    .line 31
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const-wide v3, 0xffffffffL

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    and-long/2addr p1, v3

    .line 41
    long-to-int p1, p1

    .line 42
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    int-to-long v5, p2

    .line 51
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    int-to-long p1, p1

    .line 56
    shl-long v1, v5, v1

    .line 57
    .line 58
    and-long/2addr p1, v3

    .line 59
    or-long/2addr p1, v1

    .line 60
    invoke-static {p1, p2}, Lgo2;->c(J)F

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    const/high16 p2, 0x40000000    # 2.0f

    .line 65
    .line 66
    div-float/2addr p1, p2

    .line 67
    iget-boolean p2, p0, Ldc;->C:Z

    .line 68
    .line 69
    if-eqz p2, :cond_1

    .line 70
    .line 71
    const/high16 p2, 0x41200000    # 10.0f

    .line 72
    .line 73
    invoke-interface {v0, p2}, Las0;->v(F)F

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    add-float/2addr p1, p2

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {v0, p1}, Las0;->v(F)F

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    :cond_1
    :goto_0
    iput p1, p0, Ldc;->G:F

    .line 84
    .line 85
    iget-object p1, p0, Ldc;->J:Ldg2;

    .line 86
    .line 87
    iget-object p2, p1, Ldg2;->a:[Ljava/lang/Object;

    .line 88
    .line 89
    iget v0, p1, Ldg2;->b:I

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    :goto_1
    if-ge v1, v0, :cond_2

    .line 93
    .line 94
    aget-object v2, p2, v1

    .line 95
    .line 96
    check-cast v2, Ljy2;

    .line 97
    .line 98
    invoke-virtual {p0, v2}, Ldc;->G0(Ljy2;)V

    .line 99
    .line 100
    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {p1}, Ldg2;->d()V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final v0()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final y0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lmd2;->u0()Lqi0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ld93;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v2}, Ld93;-><init>(Ldc;Ldh0;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x3

    .line 12
    invoke-static {v0, v2, v2, v1, p0}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final z0()V
    .locals 5

    .line 1
    iget-object v0, p0, Ldc;->Q:Ly83;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Ldc;->R:Lz83;

    .line 7
    .line 8
    invoke-static {p0}, Lkt4;->Q(Ljx0;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Ly83;->q:Lxh1;

    .line 12
    .line 13
    iget-object v2, v1, Lxh1;->n:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lz83;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v2}, Lz83;->c()V

    .line 26
    .line 27
    .line 28
    iget-object v3, v1, Lxh1;->n:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lz83;

    .line 37
    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    iget-object v1, v1, Lxh1;->o:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ldc;

    .line 49
    .line 50
    :cond_0
    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object p0, v0, Ly83;->p:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

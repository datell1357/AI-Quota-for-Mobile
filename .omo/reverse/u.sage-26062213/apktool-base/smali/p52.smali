.class public final synthetic Lp52;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:Lpd;

.field public final synthetic o:Lpd;

.field public final synthetic p:Lss2;

.field public final synthetic q:Ljava/util/List;

.field public final synthetic r:Lsb;

.field public final synthetic s:F

.field public final synthetic t:[F

.field public final synthetic u:J

.field public final synthetic v:Lts2;


# direct methods
.method public synthetic constructor <init>(Lpd;Lpd;Lss2;Ljava/util/List;Lsb;F[FJLts2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp52;->n:Lpd;

    .line 5
    .line 6
    iput-object p2, p0, Lp52;->o:Lpd;

    .line 7
    .line 8
    iput-object p3, p0, Lp52;->p:Lss2;

    .line 9
    .line 10
    iput-object p4, p0, Lp52;->q:Ljava/util/List;

    .line 11
    .line 12
    iput-object p5, p0, Lp52;->r:Lsb;

    .line 13
    .line 14
    iput p6, p0, Lp52;->s:F

    .line 15
    .line 16
    iput-object p7, p0, Lp52;->t:[F

    .line 17
    .line 18
    iput-wide p8, p0, Lp52;->u:J

    .line 19
    .line 20
    iput-object p10, p0, Lp52;->v:Lts2;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lp52;->q:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, v0, Lp52;->r:Lsb;

    .line 6
    .line 7
    iget v3, v0, Lp52;->s:F

    .line 8
    .line 9
    iget-object v4, v0, Lp52;->t:[F

    .line 10
    .line 11
    iget-wide v5, v0, Lp52;->u:J

    .line 12
    .line 13
    iget-object v7, v0, Lp52;->v:Lts2;

    .line 14
    .line 15
    move-object/from16 v8, p1

    .line 16
    .line 17
    check-cast v8, Lzy1;

    .line 18
    .line 19
    iget-object v9, v0, Lp52;->n:Lpd;

    .line 20
    .line 21
    invoke-virtual {v9}, Lpd;->d()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    check-cast v9, Ljava/lang/Number;

    .line 26
    .line 27
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    .line 28
    .line 29
    .line 30
    move-result v9

    .line 31
    const/high16 v10, 0x42b40000    # 90.0f

    .line 32
    .line 33
    mul-float/2addr v10, v9

    .line 34
    iget-object v11, v0, Lp52;->p:Lss2;

    .line 35
    .line 36
    invoke-virtual {v11}, Lss2;->g()F

    .line 37
    .line 38
    .line 39
    move-result v11

    .line 40
    add-float/2addr v11, v10

    .line 41
    iget-object v0, v0, Lp52;->o:Lpd;

    .line 42
    .line 43
    invoke-virtual {v0}, Lpd;->d()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/lang/Number;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    add-float/2addr v0, v11

    .line 54
    iget-object v10, v8, Lzy1;->n:Lx20;

    .line 55
    .line 56
    invoke-interface {v10}, Lkx0;->U()J

    .line 57
    .line 58
    .line 59
    move-result-wide v10

    .line 60
    iget-object v12, v8, Lzy1;->n:Lx20;

    .line 61
    .line 62
    iget-object v13, v12, Lx20;->o:Leh;

    .line 63
    .line 64
    invoke-virtual {v13}, Leh;->z()J

    .line 65
    .line 66
    .line 67
    move-result-wide v14

    .line 68
    invoke-virtual {v13}, Leh;->u()Lv20;

    .line 69
    .line 70
    .line 71
    move-result-object v16

    .line 72
    invoke-interface/range {v16 .. v16}, Lv20;->j()V

    .line 73
    .line 74
    .line 75
    move/from16 v16, v3

    .line 76
    .line 77
    :try_start_0
    iget-object v3, v13, Leh;->o:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v3, Ldh1;

    .line 80
    .line 81
    invoke-virtual {v3, v0, v10, v11}, Ldh1;->r(FJ)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7}, Lts2;->g()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lxd2;

    .line 93
    .line 94
    invoke-static {v0, v9, v2}, Lfl4;->z(Lxd2;FLsb;)Lsb;

    .line 95
    .line 96
    .line 97
    invoke-interface {v12}, Lkx0;->d()J

    .line 98
    .line 99
    .line 100
    move-result-wide v0

    .line 101
    invoke-static {v4}, Lxa2;->d([F)V

    .line 102
    .line 103
    .line 104
    const/16 v3, 0x20

    .line 105
    .line 106
    shr-long v9, v0, v3

    .line 107
    .line 108
    long-to-int v7, v9

    .line 109
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    mul-float v7, v7, v16

    .line 114
    .line 115
    const-wide v9, 0xffffffffL

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    and-long v11, v0, v9

    .line 121
    .line 122
    long-to-int v11, v11

    .line 123
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    mul-float v11, v11, v16

    .line 128
    .line 129
    invoke-static {v4, v7, v11}, Lxa2;->f([FFF)V

    .line 130
    .line 131
    .line 132
    iget-object v7, v2, Lsb;->d:Landroid/graphics/Matrix;

    .line 133
    .line 134
    if-nez v7, :cond_0

    .line 135
    .line 136
    new-instance v7, Landroid/graphics/Matrix;

    .line 137
    .line 138
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 139
    .line 140
    .line 141
    iput-object v7, v2, Lsb;->d:Landroid/graphics/Matrix;

    .line 142
    .line 143
    :cond_0
    iget-object v7, v2, Lsb;->d:Landroid/graphics/Matrix;

    .line 144
    .line 145
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    invoke-static {v7, v4}, Lfl4;->v(Landroid/graphics/Matrix;[F)V

    .line 149
    .line 150
    .line 151
    iget-object v4, v2, Lsb;->a:Landroid/graphics/Path;

    .line 152
    .line 153
    iget-object v7, v2, Lsb;->d:Landroid/graphics/Matrix;

    .line 154
    .line 155
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 159
    .line 160
    .line 161
    invoke-static {v0, v1}, Lkt4;->C(J)J

    .line 162
    .line 163
    .line 164
    move-result-wide v0

    .line 165
    invoke-virtual {v2}, Lsb;->c()Ll33;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v4}, Ll33;->a()J

    .line 170
    .line 171
    .line 172
    move-result-wide v11

    .line 173
    invoke-static {v0, v1, v11, v12}, Lgo2;->d(JJ)J

    .line 174
    .line 175
    .line 176
    move-result-wide v0

    .line 177
    iget-object v4, v2, Lsb;->d:Landroid/graphics/Matrix;

    .line 178
    .line 179
    if-nez v4, :cond_1

    .line 180
    .line 181
    new-instance v4, Landroid/graphics/Matrix;

    .line 182
    .line 183
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 184
    .line 185
    .line 186
    iput-object v4, v2, Lsb;->d:Landroid/graphics/Matrix;

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 190
    .line 191
    .line 192
    :goto_0
    iget-object v4, v2, Lsb;->d:Landroid/graphics/Matrix;

    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    shr-long v11, v0, v3

    .line 198
    .line 199
    long-to-int v3, v11

    .line 200
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    and-long/2addr v0, v9

    .line 205
    long-to-int v0, v0

    .line 206
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    invoke-virtual {v4, v3, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 211
    .line 212
    .line 213
    iget-object v0, v2, Lsb;->a:Landroid/graphics/Path;

    .line 214
    .line 215
    iget-object v1, v2, Lsb;->d:Landroid/graphics/Matrix;

    .line 216
    .line 217
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 221
    .line 222
    .line 223
    sget-object v0, Lt51;->f:Lt51;

    .line 224
    .line 225
    invoke-virtual {v8, v2, v5, v6, v0}, Lzy1;->f(Lsb;JLtv4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .line 227
    .line 228
    invoke-virtual {v13}, Leh;->u()Lv20;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-interface {v0}, Lv20;->h()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v13, v14, v15}, Leh;->K(J)V

    .line 236
    .line 237
    .line 238
    sget-object v0, Lt64;->a:Lt64;

    .line 239
    .line 240
    return-object v0

    .line 241
    :catchall_0
    move-exception v0

    .line 242
    invoke-virtual {v13}, Leh;->u()Lv20;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-interface {v1}, Lv20;->h()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v13, v14, v15}, Leh;->K(J)V

    .line 250
    .line 251
    .line 252
    throw v0
.end method

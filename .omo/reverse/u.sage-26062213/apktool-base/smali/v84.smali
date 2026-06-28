.class public final synthetic Lv84;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:J

.field public final synthetic o:Z

.field public final synthetic p:J

.field public final synthetic q:J

.field public final synthetic r:Ltr3;

.field public final synthetic s:Ltr3;


# direct methods
.method public synthetic constructor <init>(JZJJLtr3;Ltr3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lv84;->n:J

    .line 5
    .line 6
    iput-boolean p3, p0, Lv84;->o:Z

    .line 7
    .line 8
    iput-wide p4, p0, Lv84;->p:J

    .line 9
    .line 10
    iput-wide p6, p0, Lv84;->q:J

    .line 11
    .line 12
    iput-object p8, p0, Lv84;->r:Ltr3;

    .line 13
    .line 14
    iput-object p9, p0, Lv84;->s:Ltr3;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Lkx0;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lub;->a()Lsb;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {p1}, Lkx0;->d()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    const/16 v3, 0x20

    .line 15
    .line 16
    shr-long/2addr v1, v3

    .line 17
    long-to-int v1, v1

    .line 18
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-interface {p1}, Lkx0;->d()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    const-wide v6, 0xffffffffL

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    and-long/2addr v4, v6

    .line 32
    long-to-int v2, v4

    .line 33
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const-string v8, "Invalid rectangle, make sure no value is NaN"

    .line 43
    .line 44
    if-nez v5, :cond_0

    .line 45
    .line 46
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_0

    .line 51
    .line 52
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-nez v5, :cond_0

    .line 57
    .line 58
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_1

    .line 63
    .line 64
    :cond_0
    invoke-static {v8}, Lub;->b(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v5, v0, Lsb;->b:Landroid/graphics/RectF;

    .line 68
    .line 69
    if-nez v5, :cond_2

    .line 70
    .line 71
    new-instance v5, Landroid/graphics/RectF;

    .line 72
    .line 73
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v5, v0, Lsb;->b:Landroid/graphics/RectF;

    .line 77
    .line 78
    :cond_2
    iget-object v5, v0, Lsb;->b:Landroid/graphics/RectF;

    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v4, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Lsb;->a:Landroid/graphics/Path;

    .line 87
    .line 88
    iget-object v2, v0, Lsb;->b:Landroid/graphics/RectF;

    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 94
    .line 95
    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 96
    .line 97
    .line 98
    iget-wide v1, p0, Lv84;->n:J

    .line 99
    .line 100
    sget-object v5, Lt51;->f:Lt51;

    .line 101
    .line 102
    invoke-interface {p1, v0, v1, v2, v5}, Lkx0;->f(Lsb;JLtv4;)V

    .line 103
    .line 104
    .line 105
    iget-boolean v0, p0, Lv84;->o:Z

    .line 106
    .line 107
    if-eqz v0, :cond_6

    .line 108
    .line 109
    invoke-static {}, Lub;->a()Lsb;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-interface {p1}, Lkx0;->d()J

    .line 114
    .line 115
    .line 116
    move-result-wide v1

    .line 117
    shr-long/2addr v1, v3

    .line 118
    long-to-int v1, v1

    .line 119
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    iget-object v2, p0, Lv84;->r:Ltr3;

    .line 124
    .line 125
    invoke-interface {v2}, Ltr3;->getValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Ljava/lang/Number;

    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    mul-float/2addr v2, v1

    .line 136
    invoke-interface {p1}, Lkx0;->d()J

    .line 137
    .line 138
    .line 139
    move-result-wide v9

    .line 140
    and-long/2addr v9, v6

    .line 141
    long-to-int v1, v9

    .line 142
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    if-nez v9, :cond_3

    .line 151
    .line 152
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-nez v9, :cond_3

    .line 157
    .line 158
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    if-nez v9, :cond_3

    .line 163
    .line 164
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    if-eqz v9, :cond_4

    .line 169
    .line 170
    :cond_3
    invoke-static {v8}, Lub;->b(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_4
    iget-object v9, v0, Lsb;->b:Landroid/graphics/RectF;

    .line 174
    .line 175
    if-nez v9, :cond_5

    .line 176
    .line 177
    new-instance v9, Landroid/graphics/RectF;

    .line 178
    .line 179
    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 180
    .line 181
    .line 182
    iput-object v9, v0, Lsb;->b:Landroid/graphics/RectF;

    .line 183
    .line 184
    :cond_5
    iget-object v9, v0, Lsb;->b:Landroid/graphics/RectF;

    .line 185
    .line 186
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v9, v4, v4, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 190
    .line 191
    .line 192
    iget-object v1, v0, Lsb;->a:Landroid/graphics/Path;

    .line 193
    .line 194
    iget-object v2, v0, Lsb;->b:Landroid/graphics/RectF;

    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 200
    .line 201
    invoke-virtual {v1, v2, v9}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 202
    .line 203
    .line 204
    iget-wide v1, p0, Lv84;->p:J

    .line 205
    .line 206
    invoke-interface {p1, v0, v1, v2, v5}, Lkx0;->f(Lsb;JLtv4;)V

    .line 207
    .line 208
    .line 209
    :cond_6
    invoke-static {}, Lub;->a()Lsb;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-interface {p1}, Lkx0;->d()J

    .line 214
    .line 215
    .line 216
    move-result-wide v1

    .line 217
    shr-long/2addr v1, v3

    .line 218
    long-to-int v1, v1

    .line 219
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    iget-object v2, p0, Lv84;->s:Ltr3;

    .line 224
    .line 225
    invoke-interface {v2}, Ltr3;->getValue()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    check-cast v2, Ljava/lang/Number;

    .line 230
    .line 231
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    mul-float/2addr v2, v1

    .line 236
    invoke-interface {p1}, Lkx0;->d()J

    .line 237
    .line 238
    .line 239
    move-result-wide v9

    .line 240
    and-long/2addr v6, v9

    .line 241
    long-to-int v1, v6

    .line 242
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-nez v3, :cond_7

    .line 251
    .line 252
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    if-nez v3, :cond_7

    .line 257
    .line 258
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    if-nez v3, :cond_7

    .line 263
    .line 264
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    if-eqz v3, :cond_8

    .line 269
    .line 270
    :cond_7
    invoke-static {v8}, Lub;->b(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    :cond_8
    iget-object v3, v0, Lsb;->b:Landroid/graphics/RectF;

    .line 274
    .line 275
    if-nez v3, :cond_9

    .line 276
    .line 277
    new-instance v3, Landroid/graphics/RectF;

    .line 278
    .line 279
    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 280
    .line 281
    .line 282
    iput-object v3, v0, Lsb;->b:Landroid/graphics/RectF;

    .line 283
    .line 284
    :cond_9
    iget-object v3, v0, Lsb;->b:Landroid/graphics/RectF;

    .line 285
    .line 286
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3, v4, v4, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 290
    .line 291
    .line 292
    iget-object v1, v0, Lsb;->a:Landroid/graphics/Path;

    .line 293
    .line 294
    iget-object v2, v0, Lsb;->b:Landroid/graphics/RectF;

    .line 295
    .line 296
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 300
    .line 301
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 302
    .line 303
    .line 304
    iget-wide v1, p0, Lv84;->q:J

    .line 305
    .line 306
    invoke-interface {p1, v0, v1, v2, v5}, Lkx0;->f(Lsb;JLtv4;)V

    .line 307
    .line 308
    .line 309
    sget-object p0, Lt64;->a:Lt64;

    .line 310
    .line 311
    return-object p0
.end method

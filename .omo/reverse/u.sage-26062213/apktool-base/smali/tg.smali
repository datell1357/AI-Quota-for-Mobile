.class public final Ltg;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Lme0;

.field public c:Lme0;

.field public d:Lme0;

.field public e:Lme0;

.field public f:Lme0;

.field public g:Lme0;

.field public h:Lme0;

.field public final i:Lch;

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Typeface;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ltg;->j:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Ltg;->k:I

    .line 9
    .line 10
    iput-object p1, p0, Ltg;->a:Landroid/widget/TextView;

    .line 11
    .line 12
    new-instance v0, Lch;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lch;-><init>(Landroid/widget/TextView;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Ltg;->i:Lch;

    .line 18
    .line 19
    return-void
.end method

.method public static c(Landroid/content/Context;Lig;I)Lme0;
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lig;->a:Lo73;

    .line 3
    .line 4
    invoke-virtual {v0, p0, p2}, Lo73;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p1

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    new-instance p1, Lme0;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p1, Lme0;->b:Z

    .line 18
    .line 19
    iput-object p0, p1, Lme0;->c:Ljava/lang/Object;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Lme0;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Ltg;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p1, p2, p0}, Lig;->c(Landroid/graphics/drawable/Drawable;Lme0;[I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Ltg;->b:Lme0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Ltg;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ltg;->c:Lme0;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Ltg;->d:Lme0;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Ltg;->e:Lme0;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    aget-object v4, v0, v2

    .line 26
    .line 27
    iget-object v5, p0, Ltg;->b:Lme0;

    .line 28
    .line 29
    invoke-virtual {p0, v4, v5}, Ltg;->a(Landroid/graphics/drawable/Drawable;Lme0;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    aget-object v4, v0, v4

    .line 34
    .line 35
    iget-object v5, p0, Ltg;->c:Lme0;

    .line 36
    .line 37
    invoke-virtual {p0, v4, v5}, Ltg;->a(Landroid/graphics/drawable/Drawable;Lme0;)V

    .line 38
    .line 39
    .line 40
    aget-object v4, v0, v1

    .line 41
    .line 42
    iget-object v5, p0, Ltg;->d:Lme0;

    .line 43
    .line 44
    invoke-virtual {p0, v4, v5}, Ltg;->a(Landroid/graphics/drawable/Drawable;Lme0;)V

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x3

    .line 48
    aget-object v0, v0, v4

    .line 49
    .line 50
    iget-object v4, p0, Ltg;->e:Lme0;

    .line 51
    .line 52
    invoke-virtual {p0, v0, v4}, Ltg;->a(Landroid/graphics/drawable/Drawable;Lme0;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Ltg;->f:Lme0;

    .line 56
    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Ltg;->g:Lme0;

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    return-void

    .line 65
    :cond_3
    :goto_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    aget-object v2, v0, v2

    .line 70
    .line 71
    iget-object v3, p0, Ltg;->f:Lme0;

    .line 72
    .line 73
    invoke-virtual {p0, v2, v3}, Ltg;->a(Landroid/graphics/drawable/Drawable;Lme0;)V

    .line 74
    .line 75
    .line 76
    aget-object v0, v0, v1

    .line 77
    .line 78
    iget-object v1, p0, Ltg;->g:Lme0;

    .line 79
    .line 80
    invoke-virtual {p0, v0, v1}, Ltg;->a(Landroid/graphics/drawable/Drawable;Lme0;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final d(Landroid/util/AttributeSet;I)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    sget-object v7, Li13;->g:[I

    .line 8
    .line 9
    sget-object v8, Li13;->q:[I

    .line 10
    .line 11
    iget-object v9, v0, Ltg;->i:Lch;

    .line 12
    .line 13
    iget-object v10, v0, Ltg;->a:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v11

    .line 19
    sget-object v1, Lig;->b:Landroid/graphics/PorterDuff$Mode;

    .line 20
    .line 21
    const-class v1, Lig;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v2, Lig;->c:Lig;

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    invoke-static {}, Lig;->b()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto/16 :goto_26

    .line 34
    .line 35
    :cond_0
    :goto_0
    sget-object v12, Lig;->c:Lig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    monitor-exit v1

    .line 38
    sget-object v1, Li13;->f:[I

    .line 39
    .line 40
    invoke-static {v11, v3, v1, v5}, Lui3;->h(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lui3;

    .line 41
    .line 42
    .line 43
    move-result-object v13

    .line 44
    move-object v3, v1

    .line 45
    iget-object v1, v0, Ltg;->a:Landroid/widget/TextView;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-object v4, v13, Lui3;->p:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v4, Landroid/content/res/TypedArray;

    .line 54
    .line 55
    move v6, v5

    .line 56
    move-object v5, v4

    .line 57
    move-object/from16 v4, p1

    .line 58
    .line 59
    invoke-static/range {v1 .. v6}, Llb4;->d(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 60
    .line 61
    .line 62
    move-object v3, v4

    .line 63
    move v5, v6

    .line 64
    iget-object v1, v13, Lui3;->p:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v1, Landroid/content/res/TypedArray;

    .line 67
    .line 68
    const/4 v6, 0x0

    .line 69
    const/4 v14, -0x1

    .line 70
    invoke-virtual {v1, v6, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    const/4 v15, 0x3

    .line 75
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_1

    .line 80
    .line 81
    invoke-virtual {v1, v15, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    invoke-static {v11, v12, v4}, Ltg;->c(Landroid/content/Context;Lig;I)Lme0;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    iput-object v4, v0, Ltg;->b:Lme0;

    .line 90
    .line 91
    :cond_1
    const/4 v4, 0x1

    .line 92
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 93
    .line 94
    .line 95
    move-result v16

    .line 96
    if-eqz v16, :cond_2

    .line 97
    .line 98
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    invoke-static {v11, v12, v15}, Ltg;->c(Landroid/content/Context;Lig;I)Lme0;

    .line 103
    .line 104
    .line 105
    move-result-object v15

    .line 106
    iput-object v15, v0, Ltg;->c:Lme0;

    .line 107
    .line 108
    :cond_2
    const/4 v15, 0x4

    .line 109
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 110
    .line 111
    .line 112
    move-result v17

    .line 113
    if-eqz v17, :cond_3

    .line 114
    .line 115
    invoke-virtual {v1, v15, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    invoke-static {v11, v12, v4}, Ltg;->c(Landroid/content/Context;Lig;I)Lme0;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    iput-object v4, v0, Ltg;->d:Lme0;

    .line 124
    .line 125
    :cond_3
    const/4 v4, 0x2

    .line 126
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 127
    .line 128
    .line 129
    move-result v18

    .line 130
    if-eqz v18, :cond_4

    .line 131
    .line 132
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    invoke-static {v11, v12, v15}, Ltg;->c(Landroid/content/Context;Lig;I)Lme0;

    .line 137
    .line 138
    .line 139
    move-result-object v15

    .line 140
    iput-object v15, v0, Ltg;->e:Lme0;

    .line 141
    .line 142
    :cond_4
    const/4 v15, 0x5

    .line 143
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 144
    .line 145
    .line 146
    move-result v19

    .line 147
    if-eqz v19, :cond_5

    .line 148
    .line 149
    invoke-virtual {v1, v15, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    invoke-static {v11, v12, v4}, Ltg;->c(Landroid/content/Context;Lig;I)Lme0;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    iput-object v4, v0, Ltg;->f:Lme0;

    .line 158
    .line 159
    :cond_5
    const/4 v4, 0x6

    .line 160
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 161
    .line 162
    .line 163
    move-result v20

    .line 164
    if-eqz v20, :cond_6

    .line 165
    .line 166
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-static {v11, v12, v1}, Ltg;->c(Landroid/content/Context;Lig;I)Lme0;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    iput-object v1, v0, Ltg;->g:Lme0;

    .line 175
    .line 176
    :cond_6
    invoke-virtual {v13}, Lui3;->j()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v10}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    .line 184
    .line 185
    const/16 v4, 0xe

    .line 186
    .line 187
    const/16 v15, 0xf

    .line 188
    .line 189
    if-eq v2, v14, :cond_a

    .line 190
    .line 191
    new-instance v13, Lui3;

    .line 192
    .line 193
    invoke-virtual {v11, v2, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-direct {v13, v11, v2}, Lui3;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 198
    .line 199
    .line 200
    if-nez v1, :cond_7

    .line 201
    .line 202
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 203
    .line 204
    .line 205
    move-result v23

    .line 206
    if-eqz v23, :cond_7

    .line 207
    .line 208
    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 209
    .line 210
    .line 211
    move-result v23

    .line 212
    const/16 v24, 0x1

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_7
    move/from16 v23, v6

    .line 216
    .line 217
    move/from16 v24, v23

    .line 218
    .line 219
    :goto_1
    invoke-virtual {v0, v11, v13}, Ltg;->f(Landroid/content/Context;Lui3;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 223
    .line 224
    .line 225
    move-result v25

    .line 226
    if-eqz v25, :cond_8

    .line 227
    .line 228
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v25

    .line 232
    goto :goto_2

    .line 233
    :cond_8
    const/16 v25, 0x0

    .line 234
    .line 235
    :goto_2
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 236
    .line 237
    const/16 v15, 0x1a

    .line 238
    .line 239
    if-lt v14, v15, :cond_9

    .line 240
    .line 241
    const/16 v14, 0xd

    .line 242
    .line 243
    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 244
    .line 245
    .line 246
    move-result v15

    .line 247
    if-eqz v15, :cond_9

    .line 248
    .line 249
    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    goto :goto_3

    .line 254
    :cond_9
    const/4 v2, 0x0

    .line 255
    :goto_3
    invoke-virtual {v13}, Lui3;->j()V

    .line 256
    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_a
    move/from16 v23, v6

    .line 260
    .line 261
    move/from16 v24, v23

    .line 262
    .line 263
    const/4 v2, 0x0

    .line 264
    const/16 v25, 0x0

    .line 265
    .line 266
    :goto_4
    new-instance v13, Lui3;

    .line 267
    .line 268
    invoke-virtual {v11, v3, v8, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    invoke-direct {v13, v11, v8}, Lui3;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 273
    .line 274
    .line 275
    if-nez v1, :cond_b

    .line 276
    .line 277
    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 278
    .line 279
    .line 280
    move-result v14

    .line 281
    if-eqz v14, :cond_b

    .line 282
    .line 283
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 284
    .line 285
    .line 286
    move-result v23

    .line 287
    const/16 v24, 0x1

    .line 288
    .line 289
    :cond_b
    move/from16 v4, v23

    .line 290
    .line 291
    const/16 v14, 0xf

    .line 292
    .line 293
    invoke-virtual {v8, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 294
    .line 295
    .line 296
    move-result v15

    .line 297
    if-eqz v15, :cond_c

    .line 298
    .line 299
    invoke-virtual {v8, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v25

    .line 303
    :cond_c
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 304
    .line 305
    const/16 v15, 0x1a

    .line 306
    .line 307
    if-lt v14, v15, :cond_d

    .line 308
    .line 309
    const/16 v15, 0xd

    .line 310
    .line 311
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 312
    .line 313
    .line 314
    move-result v21

    .line 315
    if-eqz v21, :cond_d

    .line 316
    .line 317
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    :cond_d
    const/16 v15, 0x1c

    .line 322
    .line 323
    if-lt v14, v15, :cond_e

    .line 324
    .line 325
    invoke-virtual {v8, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 326
    .line 327
    .line 328
    move-result v14

    .line 329
    if-eqz v14, :cond_e

    .line 330
    .line 331
    const/4 v14, -0x1

    .line 332
    invoke-virtual {v8, v6, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 333
    .line 334
    .line 335
    move-result v8

    .line 336
    if-nez v8, :cond_e

    .line 337
    .line 338
    const/4 v8, 0x0

    .line 339
    invoke-virtual {v10, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 340
    .line 341
    .line 342
    :cond_e
    invoke-virtual {v0, v11, v13}, Ltg;->f(Landroid/content/Context;Lui3;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v13}, Lui3;->j()V

    .line 346
    .line 347
    .line 348
    if-nez v1, :cond_f

    .line 349
    .line 350
    if-eqz v24, :cond_f

    .line 351
    .line 352
    iget-object v1, v0, Ltg;->a:Landroid/widget/TextView;

    .line 353
    .line 354
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 355
    .line 356
    .line 357
    :cond_f
    iget-object v1, v0, Ltg;->l:Landroid/graphics/Typeface;

    .line 358
    .line 359
    if-eqz v1, :cond_11

    .line 360
    .line 361
    iget v4, v0, Ltg;->k:I

    .line 362
    .line 363
    const/4 v14, -0x1

    .line 364
    if-ne v4, v14, :cond_10

    .line 365
    .line 366
    iget v0, v0, Ltg;->j:I

    .line 367
    .line 368
    invoke-virtual {v10, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 369
    .line 370
    .line 371
    goto :goto_5

    .line 372
    :cond_10
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 373
    .line 374
    .line 375
    :cond_11
    :goto_5
    if-eqz v2, :cond_12

    .line 376
    .line 377
    invoke-static {v10, v2}, Lrg;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 378
    .line 379
    .line 380
    :cond_12
    if-eqz v25, :cond_13

    .line 381
    .line 382
    invoke-static/range {v25 .. v25}, Lqg;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-static {v10, v0}, Lqg;->b(Landroid/widget/TextView;Landroid/os/LocaleList;)V

    .line 387
    .line 388
    .line 389
    :cond_13
    iget-object v8, v9, Lch;->j:Landroid/content/Context;

    .line 390
    .line 391
    invoke-virtual {v8, v3, v7, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    iget-object v0, v9, Lch;->i:Landroid/widget/TextView;

    .line 396
    .line 397
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    move-object v2, v7

    .line 402
    const/4 v7, 0x6

    .line 403
    const/4 v13, 0x2

    .line 404
    const/4 v14, 0x1

    .line 405
    invoke-static/range {v0 .. v5}, Llb4;->d(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 406
    .line 407
    .line 408
    const/4 v0, 0x5

    .line 409
    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    if-eqz v1, :cond_14

    .line 414
    .line 415
    invoke-virtual {v4, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    iput v1, v9, Lch;->a:I

    .line 420
    .line 421
    :cond_14
    const/4 v0, 0x4

    .line 422
    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    const/high16 v5, -0x40800000    # -1.0f

    .line 427
    .line 428
    if-eqz v1, :cond_15

    .line 429
    .line 430
    invoke-virtual {v4, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    goto :goto_6

    .line 435
    :cond_15
    move v0, v5

    .line 436
    :goto_6
    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 437
    .line 438
    .line 439
    move-result v1

    .line 440
    if-eqz v1, :cond_16

    .line 441
    .line 442
    invoke-virtual {v4, v13, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    goto :goto_7

    .line 447
    :cond_16
    move v1, v5

    .line 448
    :goto_7
    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 449
    .line 450
    .line 451
    move-result v15

    .line 452
    if-eqz v15, :cond_17

    .line 453
    .line 454
    invoke-virtual {v4, v14, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 455
    .line 456
    .line 457
    move-result v15

    .line 458
    move/from16 p0, v5

    .line 459
    .line 460
    :goto_8
    const/4 v5, 0x3

    .line 461
    goto :goto_9

    .line 462
    :cond_17
    move/from16 p0, v5

    .line 463
    .line 464
    move/from16 v15, p0

    .line 465
    .line 466
    goto :goto_8

    .line 467
    :goto_9
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 468
    .line 469
    .line 470
    move-result v16

    .line 471
    if-eqz v16, :cond_1a

    .line 472
    .line 473
    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 474
    .line 475
    .line 476
    move-result v7

    .line 477
    if-lez v7, :cond_1a

    .line 478
    .line 479
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 480
    .line 481
    .line 482
    move-result-object v5

    .line 483
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 484
    .line 485
    .line 486
    move-result-object v5

    .line 487
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    .line 488
    .line 489
    .line 490
    move-result v7

    .line 491
    new-array v6, v7, [I

    .line 492
    .line 493
    if-lez v7, :cond_19

    .line 494
    .line 495
    const/4 v13, 0x0

    .line 496
    :goto_a
    if-ge v13, v7, :cond_18

    .line 497
    .line 498
    const/4 v14, -0x1

    .line 499
    invoke-virtual {v5, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 500
    .line 501
    .line 502
    move-result v22

    .line 503
    aput v22, v6, v13

    .line 504
    .line 505
    add-int/lit8 v13, v13, 0x1

    .line 506
    .line 507
    const/4 v14, 0x1

    .line 508
    goto :goto_a

    .line 509
    :cond_18
    invoke-static {v6}, Lch;->b([I)[I

    .line 510
    .line 511
    .line 512
    move-result-object v6

    .line 513
    iput-object v6, v9, Lch;->f:[I

    .line 514
    .line 515
    invoke-virtual {v9}, Lch;->h()Z

    .line 516
    .line 517
    .line 518
    :cond_19
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 519
    .line 520
    .line 521
    :cond_1a
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 522
    .line 523
    .line 524
    iget v4, v9, Lch;->a:I

    .line 525
    .line 526
    const/4 v14, 0x1

    .line 527
    if-ne v4, v14, :cond_1f

    .line 528
    .line 529
    iget-boolean v4, v9, Lch;->g:Z

    .line 530
    .line 531
    if-nez v4, :cond_1e

    .line 532
    .line 533
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 534
    .line 535
    .line 536
    move-result-object v4

    .line 537
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 538
    .line 539
    .line 540
    move-result-object v4

    .line 541
    cmpl-float v5, v1, p0

    .line 542
    .line 543
    if-nez v5, :cond_1b

    .line 544
    .line 545
    const/high16 v1, 0x41400000    # 12.0f

    .line 546
    .line 547
    const/4 v13, 0x2

    .line 548
    invoke-static {v13, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 549
    .line 550
    .line 551
    move-result v1

    .line 552
    goto :goto_b

    .line 553
    :cond_1b
    const/4 v13, 0x2

    .line 554
    :goto_b
    cmpl-float v5, v15, p0

    .line 555
    .line 556
    if-nez v5, :cond_1c

    .line 557
    .line 558
    const/high16 v5, 0x42e00000    # 112.0f

    .line 559
    .line 560
    invoke-static {v13, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 561
    .line 562
    .line 563
    move-result v15

    .line 564
    :cond_1c
    cmpl-float v4, v0, p0

    .line 565
    .line 566
    if-nez v4, :cond_1d

    .line 567
    .line 568
    const/high16 v0, 0x3f800000    # 1.0f

    .line 569
    .line 570
    :cond_1d
    invoke-virtual {v9, v1, v15, v0}, Lch;->i(FFF)V

    .line 571
    .line 572
    .line 573
    :cond_1e
    invoke-virtual {v9}, Lch;->g()Z

    .line 574
    .line 575
    .line 576
    :cond_1f
    sget-boolean v0, Lfc4;->a:Z

    .line 577
    .line 578
    if-eqz v0, :cond_21

    .line 579
    .line 580
    iget v0, v9, Lch;->a:I

    .line 581
    .line 582
    if-eqz v0, :cond_21

    .line 583
    .line 584
    iget-object v0, v9, Lch;->f:[I

    .line 585
    .line 586
    array-length v1, v0

    .line 587
    if-lez v1, :cond_21

    .line 588
    .line 589
    invoke-static {v10}, Lrg;->a(Landroid/widget/TextView;)I

    .line 590
    .line 591
    .line 592
    move-result v1

    .line 593
    int-to-float v1, v1

    .line 594
    cmpl-float v1, v1, p0

    .line 595
    .line 596
    if-eqz v1, :cond_20

    .line 597
    .line 598
    iget v0, v9, Lch;->d:F

    .line 599
    .line 600
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 601
    .line 602
    .line 603
    move-result v0

    .line 604
    iget v1, v9, Lch;->e:F

    .line 605
    .line 606
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 607
    .line 608
    .line 609
    move-result v1

    .line 610
    iget v4, v9, Lch;->c:F

    .line 611
    .line 612
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 613
    .line 614
    .line 615
    move-result v4

    .line 616
    const/4 v5, 0x0

    .line 617
    invoke-static {v10, v0, v1, v4, v5}, Lrg;->b(Landroid/widget/TextView;IIII)V

    .line 618
    .line 619
    .line 620
    goto :goto_c

    .line 621
    :cond_20
    const/4 v5, 0x0

    .line 622
    invoke-static {v10, v0, v5}, Lrg;->c(Landroid/widget/TextView;[II)V

    .line 623
    .line 624
    .line 625
    :cond_21
    :goto_c
    invoke-virtual {v11, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    const/16 v1, 0x8

    .line 630
    .line 631
    const/4 v14, -0x1

    .line 632
    invoke-virtual {v0, v1, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 633
    .line 634
    .line 635
    move-result v1

    .line 636
    if-eq v1, v14, :cond_22

    .line 637
    .line 638
    invoke-virtual {v12, v11, v1}, Lig;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    :goto_d
    const/16 v15, 0xd

    .line 643
    .line 644
    goto :goto_e

    .line 645
    :cond_22
    const/4 v1, 0x0

    .line 646
    goto :goto_d

    .line 647
    :goto_e
    invoke-virtual {v0, v15, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 648
    .line 649
    .line 650
    move-result v2

    .line 651
    if-eq v2, v14, :cond_23

    .line 652
    .line 653
    invoke-virtual {v12, v11, v2}, Lig;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 654
    .line 655
    .line 656
    move-result-object v2

    .line 657
    goto :goto_f

    .line 658
    :cond_23
    const/4 v2, 0x0

    .line 659
    :goto_f
    const/16 v3, 0x9

    .line 660
    .line 661
    invoke-virtual {v0, v3, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 662
    .line 663
    .line 664
    move-result v3

    .line 665
    if-eq v3, v14, :cond_24

    .line 666
    .line 667
    invoke-virtual {v12, v11, v3}, Lig;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 668
    .line 669
    .line 670
    move-result-object v3

    .line 671
    :goto_10
    const/4 v7, 0x6

    .line 672
    goto :goto_11

    .line 673
    :cond_24
    const/4 v3, 0x0

    .line 674
    goto :goto_10

    .line 675
    :goto_11
    invoke-virtual {v0, v7, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 676
    .line 677
    .line 678
    move-result v4

    .line 679
    if-eq v4, v14, :cond_25

    .line 680
    .line 681
    invoke-virtual {v12, v11, v4}, Lig;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 682
    .line 683
    .line 684
    move-result-object v4

    .line 685
    goto :goto_12

    .line 686
    :cond_25
    const/4 v4, 0x0

    .line 687
    :goto_12
    const/16 v5, 0xa

    .line 688
    .line 689
    invoke-virtual {v0, v5, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 690
    .line 691
    .line 692
    move-result v5

    .line 693
    if-eq v5, v14, :cond_26

    .line 694
    .line 695
    invoke-virtual {v12, v11, v5}, Lig;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 696
    .line 697
    .line 698
    move-result-object v5

    .line 699
    goto :goto_13

    .line 700
    :cond_26
    const/4 v5, 0x0

    .line 701
    :goto_13
    const/4 v6, 0x7

    .line 702
    invoke-virtual {v0, v6, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 703
    .line 704
    .line 705
    move-result v6

    .line 706
    if-eq v6, v14, :cond_27

    .line 707
    .line 708
    invoke-virtual {v12, v11, v6}, Lig;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 709
    .line 710
    .line 711
    move-result-object v6

    .line 712
    goto :goto_14

    .line 713
    :cond_27
    const/4 v6, 0x0

    .line 714
    :goto_14
    if-nez v5, :cond_32

    .line 715
    .line 716
    if-eqz v6, :cond_28

    .line 717
    .line 718
    goto :goto_1d

    .line 719
    :cond_28
    if-nez v1, :cond_29

    .line 720
    .line 721
    if-nez v2, :cond_29

    .line 722
    .line 723
    if-nez v3, :cond_29

    .line 724
    .line 725
    if-eqz v4, :cond_37

    .line 726
    .line 727
    :cond_29
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 728
    .line 729
    .line 730
    move-result-object v5

    .line 731
    const/16 v17, 0x0

    .line 732
    .line 733
    aget-object v6, v5, v17

    .line 734
    .line 735
    if-nez v6, :cond_2a

    .line 736
    .line 737
    const/16 v19, 0x2

    .line 738
    .line 739
    aget-object v7, v5, v19

    .line 740
    .line 741
    if-eqz v7, :cond_2b

    .line 742
    .line 743
    :cond_2a
    const/16 v16, 0x3

    .line 744
    .line 745
    goto :goto_19

    .line 746
    :cond_2b
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 747
    .line 748
    .line 749
    move-result-object v5

    .line 750
    if-eqz v1, :cond_2c

    .line 751
    .line 752
    goto :goto_15

    .line 753
    :cond_2c
    aget-object v1, v5, v17

    .line 754
    .line 755
    :goto_15
    if-eqz v2, :cond_2d

    .line 756
    .line 757
    goto :goto_16

    .line 758
    :cond_2d
    const/16 v18, 0x1

    .line 759
    .line 760
    aget-object v2, v5, v18

    .line 761
    .line 762
    :goto_16
    if-eqz v3, :cond_2e

    .line 763
    .line 764
    goto :goto_17

    .line 765
    :cond_2e
    const/16 v19, 0x2

    .line 766
    .line 767
    aget-object v3, v5, v19

    .line 768
    .line 769
    :goto_17
    if-eqz v4, :cond_2f

    .line 770
    .line 771
    goto :goto_18

    .line 772
    :cond_2f
    const/16 v16, 0x3

    .line 773
    .line 774
    aget-object v4, v5, v16

    .line 775
    .line 776
    :goto_18
    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 777
    .line 778
    .line 779
    goto :goto_22

    .line 780
    :goto_19
    if-eqz v2, :cond_30

    .line 781
    .line 782
    goto :goto_1a

    .line 783
    :cond_30
    const/16 v18, 0x1

    .line 784
    .line 785
    aget-object v2, v5, v18

    .line 786
    .line 787
    :goto_1a
    if-eqz v4, :cond_31

    .line 788
    .line 789
    :goto_1b
    const/16 v19, 0x2

    .line 790
    .line 791
    goto :goto_1c

    .line 792
    :cond_31
    aget-object v4, v5, v16

    .line 793
    .line 794
    goto :goto_1b

    .line 795
    :goto_1c
    aget-object v1, v5, v19

    .line 796
    .line 797
    invoke-virtual {v10, v6, v2, v1, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 798
    .line 799
    .line 800
    goto :goto_22

    .line 801
    :cond_32
    :goto_1d
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 802
    .line 803
    .line 804
    move-result-object v1

    .line 805
    if-eqz v5, :cond_33

    .line 806
    .line 807
    goto :goto_1e

    .line 808
    :cond_33
    const/16 v17, 0x0

    .line 809
    .line 810
    aget-object v5, v1, v17

    .line 811
    .line 812
    :goto_1e
    if-eqz v2, :cond_34

    .line 813
    .line 814
    goto :goto_1f

    .line 815
    :cond_34
    const/16 v18, 0x1

    .line 816
    .line 817
    aget-object v2, v1, v18

    .line 818
    .line 819
    :goto_1f
    if-eqz v6, :cond_35

    .line 820
    .line 821
    goto :goto_20

    .line 822
    :cond_35
    const/16 v19, 0x2

    .line 823
    .line 824
    aget-object v6, v1, v19

    .line 825
    .line 826
    :goto_20
    if-eqz v4, :cond_36

    .line 827
    .line 828
    goto :goto_21

    .line 829
    :cond_36
    const/16 v16, 0x3

    .line 830
    .line 831
    aget-object v4, v1, v16

    .line 832
    .line 833
    :goto_21
    invoke-virtual {v10, v5, v2, v6, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 834
    .line 835
    .line 836
    :cond_37
    :goto_22
    const/16 v1, 0xb

    .line 837
    .line 838
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 839
    .line 840
    .line 841
    move-result v2

    .line 842
    if-eqz v2, :cond_39

    .line 843
    .line 844
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 845
    .line 846
    .line 847
    move-result v2

    .line 848
    if-eqz v2, :cond_38

    .line 849
    .line 850
    const/4 v5, 0x0

    .line 851
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 852
    .line 853
    .line 854
    move-result v2

    .line 855
    if-eqz v2, :cond_38

    .line 856
    .line 857
    invoke-static {v11, v2}, Lzf5;->E(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 858
    .line 859
    .line 860
    move-result-object v2

    .line 861
    if-eqz v2, :cond_38

    .line 862
    .line 863
    goto :goto_23

    .line 864
    :cond_38
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 865
    .line 866
    .line 867
    move-result-object v2

    .line 868
    :goto_23
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 869
    .line 870
    .line 871
    :cond_39
    const/16 v1, 0xc

    .line 872
    .line 873
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 874
    .line 875
    .line 876
    move-result v2

    .line 877
    const/4 v14, -0x1

    .line 878
    if-eqz v2, :cond_3a

    .line 879
    .line 880
    invoke-virtual {v0, v1, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 881
    .line 882
    .line 883
    move-result v1

    .line 884
    const/4 v2, 0x0

    .line 885
    invoke-static {v1, v2}, Lsx0;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 886
    .line 887
    .line 888
    move-result-object v1

    .line 889
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 890
    .line 891
    .line 892
    :cond_3a
    const/16 v1, 0xf

    .line 893
    .line 894
    invoke-virtual {v0, v1, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 895
    .line 896
    .line 897
    move-result v1

    .line 898
    const/16 v2, 0x12

    .line 899
    .line 900
    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 901
    .line 902
    .line 903
    move-result v2

    .line 904
    const/16 v3, 0x13

    .line 905
    .line 906
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 907
    .line 908
    .line 909
    move-result v4

    .line 910
    if-eqz v4, :cond_3c

    .line 911
    .line 912
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 913
    .line 914
    .line 915
    move-result-object v4

    .line 916
    if-eqz v4, :cond_3b

    .line 917
    .line 918
    iget v5, v4, Landroid/util/TypedValue;->type:I

    .line 919
    .line 920
    const/4 v6, 0x5

    .line 921
    if-ne v5, v6, :cond_3b

    .line 922
    .line 923
    iget v3, v4, Landroid/util/TypedValue;->data:I

    .line 924
    .line 925
    and-int/lit8 v14, v3, 0xf

    .line 926
    .line 927
    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    .line 928
    .line 929
    .line 930
    move-result v3

    .line 931
    move v4, v14

    .line 932
    const/4 v14, -0x1

    .line 933
    goto :goto_25

    .line 934
    :cond_3b
    const/4 v14, -0x1

    .line 935
    invoke-virtual {v0, v3, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 936
    .line 937
    .line 938
    move-result v3

    .line 939
    int-to-float v3, v3

    .line 940
    :goto_24
    move v4, v14

    .line 941
    goto :goto_25

    .line 942
    :cond_3c
    const/4 v14, -0x1

    .line 943
    move/from16 v3, p0

    .line 944
    .line 945
    goto :goto_24

    .line 946
    :goto_25
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 947
    .line 948
    .line 949
    if-eq v1, v14, :cond_3d

    .line 950
    .line 951
    invoke-static {v10, v1}, Lkt4;->c0(Landroid/widget/TextView;I)V

    .line 952
    .line 953
    .line 954
    :cond_3d
    if-eq v2, v14, :cond_3e

    .line 955
    .line 956
    invoke-static {v10, v2}, Lkt4;->d0(Landroid/widget/TextView;I)V

    .line 957
    .line 958
    .line 959
    :cond_3e
    cmpl-float v0, v3, p0

    .line 960
    .line 961
    if-eqz v0, :cond_41

    .line 962
    .line 963
    if-ne v4, v14, :cond_3f

    .line 964
    .line 965
    float-to-int v0, v3

    .line 966
    invoke-static {v10, v0}, Lkt4;->e0(Landroid/widget/TextView;I)V

    .line 967
    .line 968
    .line 969
    return-void

    .line 970
    :cond_3f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 971
    .line 972
    const/16 v1, 0x22

    .line 973
    .line 974
    if-lt v0, v1, :cond_40

    .line 975
    .line 976
    invoke-static {v10, v4, v3}, Ls2;->k(Landroid/widget/TextView;IF)V

    .line 977
    .line 978
    .line 979
    return-void

    .line 980
    :cond_40
    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 981
    .line 982
    .line 983
    move-result-object v0

    .line 984
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 985
    .line 986
    .line 987
    move-result-object v0

    .line 988
    invoke-static {v4, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 989
    .line 990
    .line 991
    move-result v0

    .line 992
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 993
    .line 994
    .line 995
    move-result v0

    .line 996
    invoke-static {v10, v0}, Lkt4;->e0(Landroid/widget/TextView;I)V

    .line 997
    .line 998
    .line 999
    :cond_41
    return-void

    .line 1000
    :goto_26
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1001
    throw v0
.end method

.method public final e(Landroid/content/Context;I)V
    .locals 5

    .line 1
    new-instance v0, Lui3;

    .line 2
    .line 3
    sget-object v1, Li13;->q:[I

    .line 4
    .line 5
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {v0, p1, p2}, Lui3;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 10
    .line 11
    .line 12
    const/16 v1, 0xe

    .line 13
    .line 14
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Ltg;->a:Landroid/widget/TextView;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const/4 v1, -0x1

    .line 37
    invoke-virtual {p2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p0, p1, v0}, Ltg;->f(Landroid/content/Context;Lui3;)V

    .line 48
    .line 49
    .line 50
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    .line 52
    const/16 v1, 0x1a

    .line 53
    .line 54
    if-lt p1, v1, :cond_2

    .line 55
    .line 56
    const/16 p1, 0xd

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    invoke-static {v3, p1}, Lrg;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-virtual {v0}, Lui3;->j()V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Ltg;->l:Landroid/graphics/Typeface;

    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    iget p0, p0, Ltg;->j:I

    .line 81
    .line 82
    invoke-virtual {v3, p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 83
    .line 84
    .line 85
    :cond_3
    return-void
.end method

.method public final f(Landroid/content/Context;Lui3;)V
    .locals 11

    .line 1
    iget v0, p0, Ltg;->j:I

    .line 2
    .line 3
    iget-object v1, p2, Lui3;->p:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/content/res/TypedArray;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Ltg;->j:I

    .line 13
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/4 v3, -0x1

    .line 17
    const/16 v4, 0x1c

    .line 18
    .line 19
    if-lt v0, v4, :cond_0

    .line 20
    .line 21
    const/16 v5, 0xb

    .line 22
    .line 23
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    iput v5, p0, Ltg;->k:I

    .line 28
    .line 29
    if-eq v5, v3, :cond_0

    .line 30
    .line 31
    iget v5, p0, Ltg;->j:I

    .line 32
    .line 33
    and-int/2addr v5, v2

    .line 34
    iput v5, p0, Ltg;->j:I

    .line 35
    .line 36
    :cond_0
    const/16 v5, 0xa

    .line 37
    .line 38
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/16 v7, 0xc

    .line 43
    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v9, 0x1

    .line 46
    if-nez v6, :cond_5

    .line 47
    .line 48
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_e

    .line 60
    .line 61
    iput-boolean v8, p0, Ltg;->m:Z

    .line 62
    .line 63
    invoke-virtual {v1, v9, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eq p1, v9, :cond_4

    .line 68
    .line 69
    if-eq p1, v2, :cond_3

    .line 70
    .line 71
    const/4 p2, 0x3

    .line 72
    if-eq p1, p2, :cond_2

    .line 73
    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 77
    .line 78
    iput-object p1, p0, Ltg;->l:Landroid/graphics/Typeface;

    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 82
    .line 83
    iput-object p1, p0, Ltg;->l:Landroid/graphics/Typeface;

    .line 84
    .line 85
    return-void

    .line 86
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 87
    .line 88
    iput-object p1, p0, Ltg;->l:Landroid/graphics/Typeface;

    .line 89
    .line 90
    return-void

    .line 91
    :cond_5
    :goto_0
    const/4 v6, 0x0

    .line 92
    iput-object v6, p0, Ltg;->l:Landroid/graphics/Typeface;

    .line 93
    .line 94
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_6

    .line 99
    .line 100
    move v5, v7

    .line 101
    :cond_6
    iget v6, p0, Ltg;->k:I

    .line 102
    .line 103
    iget v7, p0, Ltg;->j:I

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_b

    .line 110
    .line 111
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 112
    .line 113
    iget-object v10, p0, Ltg;->a:Landroid/widget/TextView;

    .line 114
    .line 115
    invoke-direct {p1, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    new-instance v10, Log;

    .line 119
    .line 120
    invoke-direct {v10, p0, v6, v7, p1}, Log;-><init>(Ltg;IILjava/lang/ref/WeakReference;)V

    .line 121
    .line 122
    .line 123
    :try_start_0
    iget p1, p0, Ltg;->j:I

    .line 124
    .line 125
    invoke-virtual {p2, v5, p1, v10}, Lui3;->f(IILog;)Landroid/graphics/Typeface;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-eqz p1, :cond_9

    .line 130
    .line 131
    if-lt v0, v4, :cond_8

    .line 132
    .line 133
    iget p2, p0, Ltg;->k:I

    .line 134
    .line 135
    if-eq p2, v3, :cond_8

    .line 136
    .line 137
    invoke-static {p1, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iget p2, p0, Ltg;->k:I

    .line 142
    .line 143
    iget v0, p0, Ltg;->j:I

    .line 144
    .line 145
    and-int/2addr v0, v2

    .line 146
    if-eqz v0, :cond_7

    .line 147
    .line 148
    move v0, v9

    .line 149
    goto :goto_1

    .line 150
    :cond_7
    move v0, v8

    .line 151
    :goto_1
    invoke-static {p1, p2, v0}, Lsg;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iput-object p1, p0, Ltg;->l:Landroid/graphics/Typeface;

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_8
    iput-object p1, p0, Ltg;->l:Landroid/graphics/Typeface;

    .line 159
    .line 160
    :cond_9
    :goto_2
    iget-object p1, p0, Ltg;->l:Landroid/graphics/Typeface;

    .line 161
    .line 162
    if-nez p1, :cond_a

    .line 163
    .line 164
    move p1, v9

    .line 165
    goto :goto_3

    .line 166
    :cond_a
    move p1, v8

    .line 167
    :goto_3
    iput-boolean p1, p0, Ltg;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .line 169
    :catch_0
    :cond_b
    iget-object p1, p0, Ltg;->l:Landroid/graphics/Typeface;

    .line 170
    .line 171
    if-nez p1, :cond_e

    .line 172
    .line 173
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    if-eqz p1, :cond_e

    .line 178
    .line 179
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 180
    .line 181
    if-lt p2, v4, :cond_d

    .line 182
    .line 183
    iget p2, p0, Ltg;->k:I

    .line 184
    .line 185
    if-eq p2, v3, :cond_d

    .line 186
    .line 187
    invoke-static {p1, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iget p2, p0, Ltg;->k:I

    .line 192
    .line 193
    iget v0, p0, Ltg;->j:I

    .line 194
    .line 195
    and-int/2addr v0, v2

    .line 196
    if-eqz v0, :cond_c

    .line 197
    .line 198
    move v8, v9

    .line 199
    :cond_c
    invoke-static {p1, p2, v8}, Lsg;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    iput-object p1, p0, Ltg;->l:Landroid/graphics/Typeface;

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_d
    iget p2, p0, Ltg;->j:I

    .line 207
    .line 208
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    iput-object p1, p0, Ltg;->l:Landroid/graphics/Typeface;

    .line 213
    .line 214
    :cond_e
    :goto_4
    return-void
.end method

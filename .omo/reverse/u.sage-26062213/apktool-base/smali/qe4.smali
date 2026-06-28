.class public final Lqe4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final v:Ljava/util/WeakHashMap;


# instance fields
.field public final a:Ljd;

.field public final b:Ljd;

.field public final c:Ljd;

.field public final d:Ljd;

.field public final e:Ljd;

.field public final f:Ljd;

.field public final g:Ljd;

.field public final h:Ljd;

.field public final i:Ljd;

.field public final j:Ly94;

.field public final k:Lws2;

.field public final l:Ly94;

.field public final m:Ly94;

.field public final n:Ly94;

.field public final o:Ly94;

.field public final p:Ly94;

.field public final q:Ly94;

.field public final r:Ly94;

.field public final s:Z

.field public t:I

.field public final u:Lqr1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lqe4;->v:Ljava/util/WeakHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "captionBar"

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    invoke-static {v2, v1}, Lls3;->a(ILjava/lang/String;)Ljd;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v0, Lqe4;->a:Ljd;

    .line 14
    .line 15
    const-string v3, "displayCutout"

    .line 16
    .line 17
    const/16 v4, 0x80

    .line 18
    .line 19
    invoke-static {v4, v3}, Lls3;->a(ILjava/lang/String;)Ljd;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iput-object v3, v0, Lqe4;->b:Ljd;

    .line 24
    .line 25
    const-string v5, "ime"

    .line 26
    .line 27
    const/16 v6, 0x8

    .line 28
    .line 29
    invoke-static {v6, v5}, Lls3;->a(ILjava/lang/String;)Ljd;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iput-object v5, v0, Lqe4;->c:Ljd;

    .line 34
    .line 35
    const-string v7, "mandatorySystemGestures"

    .line 36
    .line 37
    const/16 v8, 0x20

    .line 38
    .line 39
    invoke-static {v8, v7}, Lls3;->a(ILjava/lang/String;)Ljd;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    iput-object v7, v0, Lqe4;->d:Ljd;

    .line 44
    .line 45
    const-string v9, "navigationBars"

    .line 46
    .line 47
    const/4 v10, 0x2

    .line 48
    invoke-static {v10, v9}, Lls3;->a(ILjava/lang/String;)Ljd;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    iput-object v9, v0, Lqe4;->e:Ljd;

    .line 53
    .line 54
    const-string v11, "statusBars"

    .line 55
    .line 56
    const/4 v12, 0x1

    .line 57
    invoke-static {v12, v11}, Lls3;->a(ILjava/lang/String;)Ljd;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    iput-object v11, v0, Lqe4;->f:Ljd;

    .line 62
    .line 63
    const-string v13, "systemBars"

    .line 64
    .line 65
    const/16 v14, 0x207

    .line 66
    .line 67
    invoke-static {v14, v13}, Lls3;->a(ILjava/lang/String;)Ljd;

    .line 68
    .line 69
    .line 70
    move-result-object v13

    .line 71
    iput-object v13, v0, Lqe4;->g:Ljd;

    .line 72
    .line 73
    const-string v15, "systemGestures"

    .line 74
    .line 75
    const/16 v8, 0x10

    .line 76
    .line 77
    invoke-static {v8, v15}, Lls3;->a(ILjava/lang/String;)Ljd;

    .line 78
    .line 79
    .line 80
    move-result-object v15

    .line 81
    iput-object v15, v0, Lqe4;->h:Ljd;

    .line 82
    .line 83
    const-string v8, "tappableElement"

    .line 84
    .line 85
    const/16 v6, 0x40

    .line 86
    .line 87
    invoke-static {v6, v8}, Lls3;->a(ILjava/lang/String;)Ljd;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    iput-object v8, v0, Lqe4;->i:Ljd;

    .line 92
    .line 93
    new-instance v4, Ly94;

    .line 94
    .line 95
    new-instance v6, Lur1;

    .line 96
    .line 97
    const/4 v14, 0x0

    .line 98
    invoke-direct {v6, v14, v14, v14, v14}, Lur1;-><init>(IIII)V

    .line 99
    .line 100
    .line 101
    const-string v14, "waterfall"

    .line 102
    .line 103
    invoke-direct {v4, v6, v14}, Ly94;-><init>(Lur1;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iput-object v4, v0, Lqe4;->j:Ly94;

    .line 107
    .line 108
    const/4 v6, 0x0

    .line 109
    invoke-static {v6}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 110
    .line 111
    .line 112
    move-result-object v14

    .line 113
    iput-object v14, v0, Lqe4;->k:Lws2;

    .line 114
    .line 115
    new-instance v14, Ls64;

    .line 116
    .line 117
    invoke-direct {v14, v13, v5}, Ls64;-><init>(Lhd4;Lhd4;)V

    .line 118
    .line 119
    .line 120
    new-instance v6, Ls64;

    .line 121
    .line 122
    invoke-direct {v6, v14, v3}, Ls64;-><init>(Lhd4;Lhd4;)V

    .line 123
    .line 124
    .line 125
    new-instance v6, Ls64;

    .line 126
    .line 127
    invoke-direct {v6, v8, v7}, Ls64;-><init>(Lhd4;Lhd4;)V

    .line 128
    .line 129
    .line 130
    new-instance v14, Ls64;

    .line 131
    .line 132
    invoke-direct {v14, v6, v15}, Ls64;-><init>(Lhd4;Lhd4;)V

    .line 133
    .line 134
    .line 135
    new-instance v6, Ls64;

    .line 136
    .line 137
    invoke-direct {v6, v14, v4}, Ls64;-><init>(Lhd4;Lhd4;)V

    .line 138
    .line 139
    .line 140
    const-string v4, "captionBarIgnoringVisibility"

    .line 141
    .line 142
    invoke-static {v2, v4}, Lls3;->c(ILjava/lang/String;)Ly94;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    iput-object v4, v0, Lqe4;->l:Ly94;

    .line 147
    .line 148
    const-string v4, "navigationBarsIgnoringVisibility"

    .line 149
    .line 150
    invoke-static {v10, v4}, Lls3;->c(ILjava/lang/String;)Ly94;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    iput-object v4, v0, Lqe4;->m:Ly94;

    .line 155
    .line 156
    const-string v4, "statusBarsIgnoringVisibility"

    .line 157
    .line 158
    invoke-static {v12, v4}, Lls3;->c(ILjava/lang/String;)Ly94;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    iput-object v4, v0, Lqe4;->n:Ly94;

    .line 163
    .line 164
    const-string v4, "systemBarsIgnoringVisibility"

    .line 165
    .line 166
    const/16 v6, 0x207

    .line 167
    .line 168
    invoke-static {v6, v4}, Lls3;->c(ILjava/lang/String;)Ly94;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    iput-object v4, v0, Lqe4;->o:Ly94;

    .line 173
    .line 174
    const-string v4, "tappableElementIgnoringVisibility"

    .line 175
    .line 176
    const/16 v6, 0x40

    .line 177
    .line 178
    invoke-static {v6, v4}, Lls3;->c(ILjava/lang/String;)Ly94;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    iput-object v4, v0, Lqe4;->p:Ly94;

    .line 183
    .line 184
    new-instance v4, Ly94;

    .line 185
    .line 186
    new-instance v6, Lur1;

    .line 187
    .line 188
    const/4 v14, 0x0

    .line 189
    invoke-direct {v6, v14, v14, v14, v14}, Lur1;-><init>(IIII)V

    .line 190
    .line 191
    .line 192
    const-string v12, "imeAnimationTarget"

    .line 193
    .line 194
    invoke-direct {v4, v6, v12}, Ly94;-><init>(Lur1;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iput-object v4, v0, Lqe4;->q:Ly94;

    .line 198
    .line 199
    new-instance v4, Ly94;

    .line 200
    .line 201
    new-instance v6, Lur1;

    .line 202
    .line 203
    invoke-direct {v6, v14, v14, v14, v14}, Lur1;-><init>(IIII)V

    .line 204
    .line 205
    .line 206
    const-string v12, "imeAnimationSource"

    .line 207
    .line 208
    invoke-direct {v4, v6, v12}, Ly94;-><init>(Lur1;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iput-object v4, v0, Lqe4;->r:Ly94;

    .line 212
    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    instance-of v6, v4, Landroid/view/View;

    .line 218
    .line 219
    if-eqz v6, :cond_0

    .line 220
    .line 221
    check-cast v4, Landroid/view/View;

    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_0
    const/4 v4, 0x0

    .line 225
    :goto_0
    if-eqz v4, :cond_1

    .line 226
    .line 227
    const v6, 0x7f090056

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    goto :goto_1

    .line 235
    :cond_1
    const/4 v4, 0x0

    .line 236
    :goto_1
    instance-of v6, v4, Ljava/lang/Boolean;

    .line 237
    .line 238
    if-eqz v6, :cond_2

    .line 239
    .line 240
    move-object v6, v4

    .line 241
    check-cast v6, Ljava/lang/Boolean;

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_2
    const/4 v6, 0x0

    .line 245
    :goto_2
    if-eqz v6, :cond_3

    .line 246
    .line 247
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 248
    .line 249
    .line 250
    move-result v14

    .line 251
    :cond_3
    iput-boolean v14, v0, Lqe4;->s:Z

    .line 252
    .line 253
    new-instance v4, Lqr1;

    .line 254
    .line 255
    invoke-direct {v4, v0}, Lqr1;-><init>(Lqe4;)V

    .line 256
    .line 257
    .line 258
    iput-object v4, v0, Lqe4;->u:Lqr1;

    .line 259
    .line 260
    sget-object v0, Llb4;->a:Ljava/lang/reflect/Field;

    .line 261
    .line 262
    invoke-static/range {p1 .. p1}, Lgb4;->a(Landroid/view/View;)Lke4;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    if-eqz v0, :cond_4

    .line 267
    .line 268
    iget-object v0, v0, Lke4;->a:Lhe4;

    .line 269
    .line 270
    invoke-virtual {v0, v2}, Lhe4;->u(I)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    invoke-virtual {v1, v2}, Ljd;->f(Z)V

    .line 275
    .line 276
    .line 277
    const/16 v1, 0x80

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Lhe4;->u(I)Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    invoke-virtual {v3, v1}, Ljd;->f(Z)V

    .line 284
    .line 285
    .line 286
    const/16 v1, 0x8

    .line 287
    .line 288
    invoke-virtual {v0, v1}, Lhe4;->u(I)Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    invoke-virtual {v5, v1}, Ljd;->f(Z)V

    .line 293
    .line 294
    .line 295
    const/16 v1, 0x20

    .line 296
    .line 297
    invoke-virtual {v0, v1}, Lhe4;->u(I)Z

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    invoke-virtual {v7, v1}, Ljd;->f(Z)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, v10}, Lhe4;->u(I)Z

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    invoke-virtual {v9, v1}, Ljd;->f(Z)V

    .line 309
    .line 310
    .line 311
    const/4 v1, 0x1

    .line 312
    invoke-virtual {v0, v1}, Lhe4;->u(I)Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    invoke-virtual {v11, v1}, Ljd;->f(Z)V

    .line 317
    .line 318
    .line 319
    const/16 v6, 0x207

    .line 320
    .line 321
    invoke-virtual {v0, v6}, Lhe4;->u(I)Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    invoke-virtual {v13, v1}, Ljd;->f(Z)V

    .line 326
    .line 327
    .line 328
    const/16 v1, 0x10

    .line 329
    .line 330
    invoke-virtual {v0, v1}, Lhe4;->u(I)Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    invoke-virtual {v15, v1}, Ljd;->f(Z)V

    .line 335
    .line 336
    .line 337
    const/16 v6, 0x40

    .line 338
    .line 339
    invoke-virtual {v0, v6}, Lhe4;->u(I)Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    invoke-virtual {v8, v0}, Ljd;->f(Z)V

    .line 344
    .line 345
    .line 346
    :cond_4
    return-void
.end method

.method public static a(Lqe4;Lke4;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lqe4;->a:Ljd;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Ljd;->g(Lke4;I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lqe4;->c:Ljd;

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Ljd;->g(Lke4;I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lqe4;->b:Ljd;

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Ljd;->g(Lke4;I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lqe4;->e:Ljd;

    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Ljd;->g(Lke4;I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lqe4;->f:Ljd;

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Ljd;->g(Lke4;I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lqe4;->g:Ljd;

    .line 28
    .line 29
    invoke-virtual {v0, p1, v1}, Ljd;->g(Lke4;I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lqe4;->h:Ljd;

    .line 33
    .line 34
    invoke-virtual {v0, p1, v1}, Ljd;->g(Lke4;I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lqe4;->i:Ljd;

    .line 38
    .line 39
    invoke-virtual {v0, p1, v1}, Ljd;->g(Lke4;I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lqe4;->d:Ljd;

    .line 43
    .line 44
    invoke-virtual {v0, p1, v1}, Ljd;->g(Lke4;I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lqe4;->l:Ly94;

    .line 48
    .line 49
    const/4 v2, 0x4

    .line 50
    iget-object v3, p1, Lke4;->a:Lhe4;

    .line 51
    .line 52
    invoke-virtual {v3, v2}, Lhe4;->j(I)Lnr1;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v2}, Lye4;->a(Lnr1;)Lur1;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Ly94;->f(Lur1;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lqe4;->m:Ly94;

    .line 64
    .line 65
    iget-object v2, p1, Lke4;->a:Lhe4;

    .line 66
    .line 67
    const/4 v3, 0x2

    .line 68
    invoke-virtual {v2, v3}, Lhe4;->j(I)Lnr1;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v2}, Lye4;->a(Lnr1;)Lur1;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v0, v2}, Ly94;->f(Lur1;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lqe4;->n:Ly94;

    .line 80
    .line 81
    iget-object v2, p1, Lke4;->a:Lhe4;

    .line 82
    .line 83
    const/4 v3, 0x1

    .line 84
    invoke-virtual {v2, v3}, Lhe4;->j(I)Lnr1;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v2}, Lye4;->a(Lnr1;)Lur1;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v0, v2}, Ly94;->f(Lur1;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lqe4;->o:Ly94;

    .line 96
    .line 97
    const/16 v2, 0x207

    .line 98
    .line 99
    iget-object v4, p1, Lke4;->a:Lhe4;

    .line 100
    .line 101
    invoke-virtual {v4, v2}, Lhe4;->j(I)Lnr1;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v2}, Lye4;->a(Lnr1;)Lur1;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v0, v2}, Ly94;->f(Lur1;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lqe4;->p:Ly94;

    .line 113
    .line 114
    const/16 v2, 0x40

    .line 115
    .line 116
    iget-object v4, p1, Lke4;->a:Lhe4;

    .line 117
    .line 118
    invoke-virtual {v4, v2}, Lhe4;->j(I)Lnr1;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-static {v2}, Lye4;->a(Lnr1;)Lur1;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v0, v2}, Ly94;->f(Lur1;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p1, Lke4;->a:Lhe4;

    .line 130
    .line 131
    invoke-virtual {p1}, Lhe4;->h()Lav0;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget-object v0, p0, Lqe4;->j:Ly94;

    .line 136
    .line 137
    if-eqz p1, :cond_0

    .line 138
    .line 139
    invoke-virtual {p1}, Lav0;->a()Lnr1;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    goto :goto_0

    .line 144
    :cond_0
    sget-object v2, Lnr1;->e:Lnr1;

    .line 145
    .line 146
    :goto_0
    invoke-static {v2}, Lye4;->a(Lnr1;)Lur1;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v0, v2}, Ly94;->f(Lur1;)V

    .line 151
    .line 152
    .line 153
    const/4 v0, 0x0

    .line 154
    if-eqz p1, :cond_2

    .line 155
    .line 156
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 157
    .line 158
    const/16 v4, 0x1f

    .line 159
    .line 160
    if-lt v2, v4, :cond_1

    .line 161
    .line 162
    iget-object p1, p1, Lav0;->a:Landroid/view/DisplayCutout;

    .line 163
    .line 164
    invoke-static {p1}, Lzf;->b(Landroid/view/DisplayCutout;)Landroid/graphics/Path;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    goto :goto_1

    .line 169
    :cond_1
    move-object p1, v0

    .line 170
    :goto_1
    if-eqz p1, :cond_2

    .line 171
    .line 172
    new-instance v0, Lsb;

    .line 173
    .line 174
    invoke-direct {v0, p1}, Lsb;-><init>(Landroid/graphics/Path;)V

    .line 175
    .line 176
    .line 177
    :cond_2
    iget-object p0, p0, Lqe4;->k:Lws2;

    .line 178
    .line 179
    invoke-virtual {p0, v0}, Lws2;->setValue(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    sget-object p0, Lwo3;->c:Ljava/lang/Object;

    .line 183
    .line 184
    monitor-enter p0

    .line 185
    :try_start_0
    sget-object p1, Lwo3;->j:Ljh1;

    .line 186
    .line 187
    iget-object p1, p1, Log2;->h:Llg2;

    .line 188
    .line 189
    if-eqz p1, :cond_3

    .line 190
    .line 191
    invoke-virtual {p1}, Llg2;->h()Z

    .line 192
    .line 193
    .line 194
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    if-ne p1, v3, :cond_3

    .line 196
    .line 197
    move v1, v3

    .line 198
    :cond_3
    monitor-exit p0

    .line 199
    if-eqz v1, :cond_4

    .line 200
    .line 201
    invoke-static {}, Lwo3;->a()V

    .line 202
    .line 203
    .line 204
    :cond_4
    return-void

    .line 205
    :catchall_0
    move-exception p1

    .line 206
    monitor-exit p0

    .line 207
    throw p1
.end method

.class public final Lgd5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lgd5;->a:Ljava/util/HashMap;

    .line 12
    .line 13
    new-instance v1, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lgd5;->b:Ljava/util/HashMap;

    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lgd5;->c:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lwd5;

    .line 43
    .line 44
    invoke-interface {v1}, Lwd5;->zzc()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_0

    .line 53
    .line 54
    const-string v1, "MobStore.FileStorage"

    .line 55
    .line 56
    const-string v2, "Cannot register backend, name empty"

    .line 57
    .line 58
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v3, p0, Lgd5;->a:Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-interface {v1}, Lwd5;->zzc()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Lwd5;

    .line 73
    .line 74
    if-nez v3, :cond_1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    add-int/lit8 v0, v0, 0x1e

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    add-int/2addr v0, v1

    .line 114
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 115
    .line 116
    .line 117
    const-string v0, "Cannot override Backend "

    .line 118
    .line 119
    const-string v1, " with "

    .line 120
    .line 121
    invoke-static {v3, v0, p0, v1, p1}, Lxw1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v2

    .line 129
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_3

    .line 138
    .line 139
    iget-object p0, p0, Lgd5;->c:Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-static {}, Lmk0;->b()V

    .line 153
    .line 154
    .line 155
    throw v2
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Lfd5;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lgd5;->b(Landroid/net/Uri;)Led5;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p2, p0}, Lfd5;->a(Led5;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final b(Landroid/net/Uri;)Led5;
    .locals 12

    .line 1
    sget-object v0, Llp1;->o:Lhp1;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    const-string v1, "initialCapacity"

    .line 5
    .line 6
    invoke-static {v0, v1}, Lht4;->i(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-array v2, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lht4;->i(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x1

    .line 25
    const/4 v5, 0x0

    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    const-string v3, "transform="

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/16 v3, 0xa

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v3, "+"

    .line 44
    .line 45
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-static {v3}, Llq1;->a(C)Llq1;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    new-instance v6, Llq1;

    .line 54
    .line 55
    iget-object v3, v3, Llq1;->d:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v3, Lr6;

    .line 58
    .line 59
    sget-object v7, Lh40;->G:Lh40;

    .line 60
    .line 61
    const v8, 0x7fffffff

    .line 62
    .line 63
    .line 64
    invoke-direct {v6, v3, v4, v7, v8}, Llq1;-><init>(Lr6;ZLse0;I)V

    .line 65
    .line 66
    .line 67
    new-instance v3, Lwq3;

    .line 68
    .line 69
    invoke-direct {v3, v6, v1}, Lwq3;-><init>(Llq1;Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v3}, Llp1;->k(Ljava/lang/Iterable;)Llp1;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    :goto_0
    sget-object v1, Lz43;->r:Lz43;

    .line 78
    .line 79
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    move v6, v5

    .line 84
    move v7, v6

    .line 85
    :goto_2
    const/4 v8, 0x0

    .line 86
    if-ge v6, v3, :cond_4

    .line 87
    .line 88
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    check-cast v9, Ljava/lang/String;

    .line 93
    .line 94
    sget-object v10, Ltd5;->a:Ljava/util/regex/Pattern;

    .line 95
    .line 96
    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    if-eqz v11, :cond_3

    .line 105
    .line 106
    invoke-virtual {v10, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    array-length v9, v0

    .line 114
    add-int/lit8 v10, v7, 0x1

    .line 115
    .line 116
    invoke-static {v9, v10}, Lcp1;->b(II)I

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    array-length v10, v0

    .line 121
    if-gt v9, v10, :cond_2

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_2
    invoke-static {v0, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    :goto_3
    add-int/lit8 v9, v7, 0x1

    .line 129
    .line 130
    aput-object v8, v0, v7

    .line 131
    .line 132
    add-int/lit8 v6, v6, 0x1

    .line 133
    .line 134
    move v7, v9

    .line 135
    goto :goto_2

    .line 136
    :cond_3
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    const-string p1, "Invalid fragment spec: "

    .line 141
    .line 142
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-object v8

    .line 150
    :cond_4
    invoke-static {v7, v0}, Llp1;->i(I[Ljava/lang/Object;)Lz43;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget v1, v0, Lz43;->q:I

    .line 155
    .line 156
    if-gtz v1, :cond_9

    .line 157
    .line 158
    invoke-static {v5, v2}, Llp1;->i(I[Ljava/lang/Object;)Lz43;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Llp1;->n()Llp1;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    new-instance v1, Led5;

    .line 167
    .line 168
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    iget-object v3, p0, Lgd5;->a:Ljava/util/HashMap;

    .line 176
    .line 177
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    check-cast v3, Lwd5;

    .line 182
    .line 183
    if-eqz v3, :cond_8

    .line 184
    .line 185
    iput-object v3, v1, Led5;->a:Lwd5;

    .line 186
    .line 187
    iget-object p0, p0, Lgd5;->c:Ljava/util/ArrayList;

    .line 188
    .line 189
    iput-object p0, v1, Led5;->c:Ljava/util/ArrayList;

    .line 190
    .line 191
    iput-object v0, v1, Led5;->b:Llp1;

    .line 192
    .line 193
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result p0

    .line 197
    if-nez p0, :cond_7

    .line 198
    .line 199
    new-instance p0, Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-nez v2, :cond_7

    .line 213
    .line 214
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    const-string v3, "/"

    .line 219
    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-nez v2, :cond_7

    .line 225
    .line 226
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    add-int/lit8 v2, v2, -0x1

    .line 231
    .line 232
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    check-cast v2, Ljava/lang/String;

    .line 237
    .line 238
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    invoke-interface {v0, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    :goto_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    if-eqz v4, :cond_6

    .line 251
    .line 252
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    if-nez v4, :cond_5

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_5
    invoke-static {}, Lmk0;->b()V

    .line 260
    .line 261
    .line 262
    return-object v8

    .line 263
    :cond_6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    add-int/lit8 v0, v0, -0x1

    .line 268
    .line 269
    invoke-virtual {p0, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-static {v3, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    invoke-virtual {p1, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    invoke-virtual {p0, v8}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 285
    .line 286
    .line 287
    move-result-object p0

    .line 288
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    :cond_7
    iput-object p1, v1, Led5;->d:Landroid/net/Uri;

    .line 293
    .line 294
    new-instance p0, Led5;

    .line 295
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    .line 298
    .line 299
    iget-object p1, v1, Led5;->a:Lwd5;

    .line 300
    .line 301
    iput-object p1, p0, Led5;->a:Lwd5;

    .line 302
    .line 303
    iget-object p1, v1, Led5;->b:Llp1;

    .line 304
    .line 305
    iput-object p1, p0, Led5;->b:Llp1;

    .line 306
    .line 307
    iget-object p1, v1, Led5;->c:Ljava/util/ArrayList;

    .line 308
    .line 309
    iput-object p1, p0, Led5;->c:Ljava/util/ArrayList;

    .line 310
    .line 311
    iget-object p1, v1, Led5;->d:Landroid/net/Uri;

    .line 312
    .line 313
    iput-object p1, p0, Led5;->d:Landroid/net/Uri;

    .line 314
    .line 315
    return-object p0

    .line 316
    :cond_8
    new-instance p0, Lc70;

    .line 317
    .line 318
    const-string p1, "Requested backend isn\'t registered: "

    .line 319
    .line 320
    invoke-static {p1, v2}, Ldi0;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw p0

    .line 328
    :cond_9
    invoke-virtual {v0, v5}, Lz43;->get(I)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    check-cast v0, Ljava/lang/String;

    .line 333
    .line 334
    iget-object p0, p0, Lgd5;->b:Ljava/util/HashMap;

    .line 335
    .line 336
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object p0

    .line 340
    if-eqz p0, :cond_a

    .line 341
    .line 342
    invoke-static {}, Lmk0;->b()V

    .line 343
    .line 344
    .line 345
    return-object v8

    .line 346
    :cond_a
    new-instance p0, Lc70;

    .line 347
    .line 348
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    add-int/lit8 v1, v1, 0x28

    .line 357
    .line 358
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    add-int/2addr v1, v2

    .line 365
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 366
    .line 367
    .line 368
    const-string v1, "Requested transform isn\'t registered: "

    .line 369
    .line 370
    const-string v2, ": "

    .line 371
    .line 372
    invoke-static {v3, v1, v0, v2, p1}, Lxw1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    throw p0
.end method

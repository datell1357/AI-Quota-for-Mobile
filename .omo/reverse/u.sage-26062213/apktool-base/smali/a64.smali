.class public abstract La64;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Ljava/util/BitSet;

.field public static final b:Ljava/util/BitSet;

.field public static final c:Ljava/util/BitSet;

.field public static final d:Ljava/util/BitSet;

.field public static final e:Ljava/util/BitSet;

.field public static final f:Ljava/util/BitSet;

.field public static final g:Ljava/util/BitSet;

.field public static final h:Ljava/util/BitSet;

.field public static final i:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/BitSet;

    .line 2
    .line 3
    const/16 v1, 0x100

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, La64;->a:Ljava/util/BitSet;

    .line 9
    .line 10
    const/16 v2, 0x2f

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/util/BitSet;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 18
    .line 19
    .line 20
    sput-object v0, La64;->b:Ljava/util/BitSet;

    .line 21
    .line 22
    new-instance v0, Ljava/util/BitSet;

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 25
    .line 26
    .line 27
    sput-object v0, La64;->c:Ljava/util/BitSet;

    .line 28
    .line 29
    new-instance v0, Ljava/util/BitSet;

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 32
    .line 33
    .line 34
    sput-object v0, La64;->d:Ljava/util/BitSet;

    .line 35
    .line 36
    new-instance v0, Ljava/util/BitSet;

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 39
    .line 40
    .line 41
    sput-object v0, La64;->e:Ljava/util/BitSet;

    .line 42
    .line 43
    new-instance v0, Ljava/util/BitSet;

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 46
    .line 47
    .line 48
    sput-object v0, La64;->f:Ljava/util/BitSet;

    .line 49
    .line 50
    new-instance v0, Ljava/util/BitSet;

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 53
    .line 54
    .line 55
    sput-object v0, La64;->g:Ljava/util/BitSet;

    .line 56
    .line 57
    new-instance v0, Ljava/util/BitSet;

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 60
    .line 61
    .line 62
    sput-object v0, La64;->h:Ljava/util/BitSet;

    .line 63
    .line 64
    new-instance v0, Ljava/util/BitSet;

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, La64;->i:Ljava/util/BitSet;

    .line 70
    .line 71
    const/16 v0, 0x61

    .line 72
    .line 73
    :goto_0
    const/16 v1, 0x7a

    .line 74
    .line 75
    if-gt v0, v1, :cond_0

    .line 76
    .line 77
    sget-object v1, La64;->b:Ljava/util/BitSet;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const/16 v0, 0x41

    .line 86
    .line 87
    :goto_1
    const/16 v1, 0x5a

    .line 88
    .line 89
    if-gt v0, v1, :cond_1

    .line 90
    .line 91
    sget-object v1, La64;->b:Ljava/util/BitSet;

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v0, v0, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    const/16 v0, 0x30

    .line 100
    .line 101
    :goto_2
    const/16 v1, 0x39

    .line 102
    .line 103
    if-gt v0, v1, :cond_2

    .line 104
    .line 105
    sget-object v1, La64;->b:Ljava/util/BitSet;

    .line 106
    .line 107
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 108
    .line 109
    .line 110
    add-int/lit8 v0, v0, 0x1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    sget-object v0, La64;->b:Ljava/util/BitSet;

    .line 114
    .line 115
    const/16 v1, 0x5f

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 118
    .line 119
    .line 120
    const/16 v1, 0x2d

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 123
    .line 124
    .line 125
    const/16 v1, 0x2e

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 128
    .line 129
    .line 130
    const/16 v1, 0x2a

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 133
    .line 134
    .line 135
    sget-object v1, La64;->h:Ljava/util/BitSet;

    .line 136
    .line 137
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 138
    .line 139
    .line 140
    const/16 v1, 0x21

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 143
    .line 144
    .line 145
    const/16 v1, 0x7e

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 148
    .line 149
    .line 150
    const/16 v1, 0x27

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 153
    .line 154
    .line 155
    const/16 v1, 0x28

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 158
    .line 159
    .line 160
    const/16 v1, 0x29

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 163
    .line 164
    .line 165
    sget-object v1, La64;->c:Ljava/util/BitSet;

    .line 166
    .line 167
    const/16 v3, 0x2c

    .line 168
    .line 169
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 170
    .line 171
    .line 172
    const/16 v4, 0x3b

    .line 173
    .line 174
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 175
    .line 176
    .line 177
    const/16 v5, 0x3a

    .line 178
    .line 179
    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 180
    .line 181
    .line 182
    const/16 v6, 0x24

    .line 183
    .line 184
    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 185
    .line 186
    .line 187
    const/16 v7, 0x26

    .line 188
    .line 189
    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 190
    .line 191
    .line 192
    const/16 v8, 0x2b

    .line 193
    .line 194
    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 195
    .line 196
    .line 197
    const/16 v9, 0x3d

    .line 198
    .line 199
    invoke-virtual {v1, v9}, Ljava/util/BitSet;->set(I)V

    .line 200
    .line 201
    .line 202
    sget-object v10, La64;->d:Ljava/util/BitSet;

    .line 203
    .line 204
    invoke-virtual {v10, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v10, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 208
    .line 209
    .line 210
    sget-object v1, La64;->e:Ljava/util/BitSet;

    .line 211
    .line 212
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 219
    .line 220
    .line 221
    const/16 v10, 0x40

    .line 222
    .line 223
    invoke-virtual {v1, v10}, Ljava/util/BitSet;->set(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v9}, Ljava/util/BitSet;->set(I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 239
    .line 240
    .line 241
    sget-object v11, La64;->i:Ljava/util/BitSet;

    .line 242
    .line 243
    invoke-virtual {v11, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v11, v2}, Ljava/util/BitSet;->set(I)V

    .line 247
    .line 248
    .line 249
    sget-object v1, La64;->g:Ljava/util/BitSet;

    .line 250
    .line 251
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 255
    .line 256
    .line 257
    const/16 v2, 0x3f

    .line 258
    .line 259
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v10}, Ljava/util/BitSet;->set(I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, v9}, Ljava/util/BitSet;->set(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 281
    .line 282
    .line 283
    const/16 v2, 0x5b

    .line 284
    .line 285
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 286
    .line 287
    .line 288
    const/16 v2, 0x5d

    .line 289
    .line 290
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 291
    .line 292
    .line 293
    sget-object v2, La64;->f:Ljava/util/BitSet;

    .line 294
    .line 295
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 299
    .line 300
    .line 301
    return-void
.end method

.method public static a(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "Parameters"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_6

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lsh2;

    .line 26
    .line 27
    invoke-interface {v1}, Lsh2;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x1

    .line 32
    sget-object v4, La64;->h:Ljava/util/BitSet;

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    move-object v2, v5

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    if-eqz p1, :cond_2

    .line 40
    .line 41
    move-object v6, p1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    sget-object v6, Luf0;->a:Ljava/nio/charset/Charset;

    .line 44
    .line 45
    :goto_1
    invoke-static {v2, v6, v4, v3}, La64;->f(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :goto_2
    invoke-interface {v1}, Lsh2;->getValue()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-nez v1, :cond_3

    .line 54
    .line 55
    goto :goto_4

    .line 56
    :cond_3
    if-eqz p1, :cond_4

    .line 57
    .line 58
    move-object v5, p1

    .line 59
    goto :goto_3

    .line 60
    :cond_4
    sget-object v5, Luf0;->a:Ljava/nio/charset/Charset;

    .line 61
    .line 62
    :goto_3
    invoke-static {v1, v5, v4, v3}, La64;->f(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-lez v1, :cond_5

    .line 71
    .line 72
    const/16 v1, 0x26

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    if-eqz v5, :cond_0

    .line 81
    .line 82
    const-string v1, "="

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0
.end method

.method public static varargs b(Lb40;Ljava/nio/charset/Charset;[C)Ljava/util/ArrayList;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/BitSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p2

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_0

    .line 10
    .line 11
    aget-char v4, p2, v3

    .line 12
    .line 13
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v3, v3, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p2, Lky0;

    .line 20
    .line 21
    iget v1, p0, Lb40;->o:I

    .line 22
    .line 23
    invoke-direct {p2, v2, v1}, Lky0;-><init>(II)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_1
    invoke-virtual {p2}, Lky0;->a()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_7

    .line 36
    .line 37
    const/16 v2, 0x3d

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0, p2, v0}, Lqv3;->s(Lb40;Lky0;Ljava/util/BitSet;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {p2}, Lky0;->a()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x1

    .line 52
    if-nez v4, :cond_2

    .line 53
    .line 54
    iget v4, p2, Lky0;->d:I

    .line 55
    .line 56
    iget-object v7, p0, Lb40;->n:[C

    .line 57
    .line 58
    aget-char v7, v7, v4

    .line 59
    .line 60
    add-int/2addr v4, v6

    .line 61
    invoke-virtual {p2, v4}, Lky0;->b(I)V

    .line 62
    .line 63
    .line 64
    if-ne v7, v2, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->clear(I)V

    .line 67
    .line 68
    .line 69
    invoke-static {p0, p2, v0}, Lqv3;->s(Lb40;Lky0;Ljava/util/BitSet;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {p2}, Lky0;->a()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-nez v4, :cond_3

    .line 78
    .line 79
    iget v4, p2, Lky0;->d:I

    .line 80
    .line 81
    add-int/2addr v4, v6

    .line 82
    invoke-virtual {p2, v4}, Lky0;->b(I)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    move-object v2, v5

    .line 87
    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-nez v4, :cond_1

    .line 92
    .line 93
    new-instance v4, Lev;

    .line 94
    .line 95
    if-eqz p1, :cond_4

    .line 96
    .line 97
    move-object v7, p1

    .line 98
    goto :goto_3

    .line 99
    :cond_4
    sget-object v7, Luf0;->a:Ljava/nio/charset/Charset;

    .line 100
    .line 101
    :goto_3
    invoke-static {v3, v7, v6}, La64;->e(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-nez v2, :cond_5

    .line 106
    .line 107
    goto :goto_5

    .line 108
    :cond_5
    if-eqz p1, :cond_6

    .line 109
    .line 110
    move-object v5, p1

    .line 111
    goto :goto_4

    .line 112
    :cond_6
    sget-object v5, Luf0;->a:Ljava/nio/charset/Charset;

    .line 113
    .line 114
    :goto_4
    invoke-static {v2, v5, v6}, La64;->e(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    :goto_5
    invoke-direct {v4, v3, v5}, Lev;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_7
    return-object v1
.end method

.method public static c(Lxl1;)Ljava/util/ArrayList;
    .locals 8

    .line 1
    const-string v0, "HTTP entity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lpg0;->b(Lxl1;)Lpg0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    iget-object v2, v0, Lpg0;->n:Ljava/lang/String;

    .line 14
    .line 15
    const-string v3, "application/x-www-form-urlencoded"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    goto/16 :goto_5

    .line 24
    .line 25
    :cond_0
    invoke-interface {p0}, Lxl1;->getContentLength()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    const-wide/32 v4, 0x7fffffff

    .line 30
    .line 31
    .line 32
    cmp-long v4, v2, v4

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    if-gtz v4, :cond_1

    .line 36
    .line 37
    move v4, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v4, v1

    .line 40
    :goto_0
    const-string v6, "HTTP entity is too large"

    .line 41
    .line 42
    invoke-static {v6, v4}, Lw80;->l(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    iget-object v0, v0, Lpg0;->o:Ljava/nio/charset/Charset;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    sget-object v0, Lvi1;->a:Ljava/nio/charset/Charset;

    .line 51
    .line 52
    :goto_1
    invoke-interface {p0}, Lxl1;->getContent()Ljava/io/InputStream;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    if-nez p0, :cond_3

    .line 57
    .line 58
    new-instance p0, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_3
    :try_start_0
    new-instance v4, Lb40;

    .line 65
    .line 66
    const-wide/16 v6, 0x0

    .line 67
    .line 68
    cmp-long v6, v2, v6

    .line 69
    .line 70
    const/16 v7, 0x400

    .line 71
    .line 72
    if-lez v6, :cond_4

    .line 73
    .line 74
    long-to-int v2, v2

    .line 75
    goto :goto_2

    .line 76
    :cond_4
    move v2, v7

    .line 77
    :goto_2
    invoke-direct {v4, v2}, Lb40;-><init>(I)V

    .line 78
    .line 79
    .line 80
    new-instance v2, Ljava/io/InputStreamReader;

    .line 81
    .line 82
    invoke-direct {v2, p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 83
    .line 84
    .line 85
    new-array v3, v7, [C

    .line 86
    .line 87
    :goto_3
    invoke-virtual {v2, v3}, Ljava/io/Reader;->read([C)I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    const/4 v7, -0x1

    .line 92
    if-eq v6, v7, :cond_5

    .line 93
    .line 94
    invoke-virtual {v4, v3, v1, v6}, Lb40;->d([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    goto :goto_4

    .line 100
    :cond_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Lb40;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-eqz p0, :cond_6

    .line 108
    .line 109
    new-instance p0, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .line 113
    .line 114
    return-object p0

    .line 115
    :cond_6
    new-array p0, v5, [C

    .line 116
    .line 117
    const/16 v2, 0x26

    .line 118
    .line 119
    aput-char v2, p0, v1

    .line 120
    .line 121
    invoke-static {v4, v0, p0}, La64;->b(Lb40;Ljava/nio/charset/Charset;[C)Ljava/util/ArrayList;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    return-object p0

    .line 126
    :goto_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 127
    .line 128
    .line 129
    throw v0

    .line 130
    :cond_7
    :goto_5
    new-instance p0, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .line 134
    .line 135
    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    .line 1
    new-instance v0, Lky0;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v2, v1}, Lky0;-><init>(II)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lky0;->a()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    iget v1, v0, Lky0;->d:I

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    sget-object v3, La64;->a:Ljava/util/BitSet;

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/util/BitSet;->get(I)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget v1, v0, Lky0;->d:I

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lky0;->b(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {v0}, Lky0;->a()Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_2
    iget v5, v0, Lky0;->d:I

    .line 66
    .line 67
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_3

    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :goto_1
    iget v5, v0, Lky0;->d:I

    .line 92
    .line 93
    add-int/lit8 v5, v5, 0x1

    .line 94
    .line 95
    invoke-virtual {v0, v5}, Lky0;->b(I)V

    .line 96
    .line 97
    .line 98
    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/16 v2, 0x25

    .line 28
    .line 29
    if-ne v1, v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x2

    .line 36
    if-lt v3, v4, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/16 v4, 0x10

    .line 47
    .line 48
    invoke-static {v1, v4}, Ljava/lang/Character;->digit(CI)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    const/4 v6, -0x1

    .line 57
    if-eq v5, v6, :cond_1

    .line 58
    .line 59
    if-eq v4, v6, :cond_1

    .line 60
    .line 61
    shl-int/lit8 v1, v5, 0x4

    .line 62
    .line 63
    add-int/2addr v1, v4

    .line 64
    int-to-byte v1, v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    .line 72
    int-to-byte v1, v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    .line 76
    int-to-byte v1, v3

    .line 77
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    if-eqz p2, :cond_3

    .line 82
    .line 83
    const/16 v2, 0x2b

    .line 84
    .line 85
    if-ne v1, v2, :cond_3

    .line 86
    .line 87
    const/16 v1, 0x20

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    int-to-byte v1, v1

    .line 94
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0
.end method

.method public static f(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/BitSet;Z)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    and-int/lit16 v1, p1, 0xff

    .line 25
    .line 26
    invoke-virtual {p2, v1}, Ljava/util/BitSet;->get(I)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    int-to-char p1, v1

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    if-eqz p3, :cond_2

    .line 38
    .line 39
    const/16 v2, 0x20

    .line 40
    .line 41
    if-ne v1, v2, :cond_2

    .line 42
    .line 43
    const/16 p1, 0x2b

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string v2, "%"

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    shr-int/lit8 v1, v1, 0x4

    .line 55
    .line 56
    and-int/lit8 v1, v1, 0xf

    .line 57
    .line 58
    const/16 v2, 0x10

    .line 59
    .line 60
    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    and-int/lit8 p1, p1, 0xf

    .line 69
    .line 70
    invoke-static {p1, v2}, Ljava/lang/Character;->forDigit(II)C

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method

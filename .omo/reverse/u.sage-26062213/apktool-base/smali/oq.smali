.class public final Loq;
.super Lnr;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final i:[B

.field public static final j:[B


# instance fields
.field public final e:[B

.field public final f:[B

.field public final g:[B

.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Loq;->i:[B

    .line 9
    .line 10
    const/16 v0, 0x7b

    .line 11
    .line 12
    new-array v0, v0, [B

    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v0, Loq;->j:[B

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 22
    .line 23
    .line 24
    .line 25
    :array_1
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 90
    sget-object v1, Lnr;->d:[B

    .line 91
    invoke-direct {p0, v0, v1}, Loq;-><init>(I[B)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 6

    .line 1
    array-length v0, p2

    .line 2
    invoke-direct {p0, p1, v0}, Lnr;-><init>(II)V

    .line 3
    .line 4
    .line 5
    sget-object v0, Loq;->i:[B

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/16 v2, 0x40

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-ne v1, v2, :cond_4

    .line 12
    .line 13
    sget-object v1, Loq;->j:[B

    .line 14
    .line 15
    iput-object v1, p0, Loq;->f:[B

    .line 16
    .line 17
    iput-object v0, p0, Loq;->e:[B

    .line 18
    .line 19
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, [B

    .line 24
    .line 25
    array-length v0, p2

    .line 26
    const/4 v1, 0x0

    .line 27
    :goto_0
    if-ge v1, v0, :cond_2

    .line 28
    .line 29
    aget-byte v2, p2, v1

    .line 30
    .line 31
    const/16 v4, 0x3d

    .line 32
    .line 33
    if-eq v4, v2, :cond_1

    .line 34
    .line 35
    if-ltz v2, :cond_0

    .line 36
    .line 37
    iget-object v4, p0, Loq;->f:[B

    .line 38
    .line 39
    array-length v5, v4

    .line 40
    if-ge v2, v5, :cond_0

    .line 41
    .line 42
    aget-byte v2, v4, v2

    .line 43
    .line 44
    const/4 v4, -0x1

    .line 45
    if-ne v2, v4, :cond_1

    .line 46
    .line 47
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 51
    .line 52
    new-instance p1, Ljava/lang/String;

    .line 53
    .line 54
    invoke-direct {p1, p2, p0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 55
    .line 56
    .line 57
    const-string p0, "lineSeparator must not contain base64 characters: ["

    .line 58
    .line 59
    const-string p2, "]"

    .line 60
    .line 61
    invoke-static {p0, p1, p2}, Ldi0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v3

    .line 69
    :cond_2
    const/4 v0, 0x4

    .line 70
    if-lez p1, :cond_3

    .line 71
    .line 72
    array-length p1, p2

    .line 73
    add-int/2addr p1, v0

    .line 74
    iput p1, p0, Loq;->h:I

    .line 75
    .line 76
    iput-object p2, p0, Loq;->g:[B

    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    iput v0, p0, Loq;->h:I

    .line 80
    .line 81
    iput-object v3, p0, Loq;->g:[B

    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    const-string p0, "encodeTable must have exactly 64 entries."

    .line 85
    .line 86
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v3
.end method

.method public static f([B)[B
    .locals 3

    .line 1
    new-instance v0, Loq;

    .line 2
    .line 3
    invoke-direct {v0}, Loq;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    array-length v1, p0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Lmr;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    array-length v2, p0

    .line 18
    invoke-virtual {v0, p0, v2, v1}, Loq;->e([BILmr;)V

    .line 19
    .line 20
    .line 21
    const/4 v2, -0x1

    .line 22
    invoke-virtual {v0, p0, v2, v1}, Loq;->e([BILmr;)V

    .line 23
    .line 24
    .line 25
    iget p0, v1, Lmr;->c:I

    .line 26
    .line 27
    new-array v0, p0, [B

    .line 28
    .line 29
    invoke-static {v0, p0, v1}, Lnr;->d([BILmr;)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a([BILmr;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-boolean v3, v2, Lmr;->e:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    const/4 v3, 0x0

    .line 14
    iget v4, v0, Loq;->h:I

    .line 15
    .line 16
    iget-object v5, v0, Loq;->e:[B

    .line 17
    .line 18
    iget v6, v0, Lnr;->a:I

    .line 19
    .line 20
    iget-object v0, v0, Loq;->g:[B

    .line 21
    .line 22
    const/4 v7, 0x1

    .line 23
    if-gez v1, :cond_5

    .line 24
    .line 25
    iput-boolean v7, v2, Lmr;->e:Z

    .line 26
    .line 27
    iget v1, v2, Lmr;->g:I

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    if-nez v6, :cond_1

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_1
    invoke-static {v4, v2}, Lnr;->c(ILmr;)[B

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget v4, v2, Lmr;->c:I

    .line 40
    .line 41
    iget v8, v2, Lmr;->g:I

    .line 42
    .line 43
    if-eqz v8, :cond_4

    .line 44
    .line 45
    const/16 v9, 0x3d

    .line 46
    .line 47
    sget-object v10, Loq;->i:[B

    .line 48
    .line 49
    if-eq v8, v7, :cond_3

    .line 50
    .line 51
    const/4 v7, 0x2

    .line 52
    if-ne v8, v7, :cond_2

    .line 53
    .line 54
    add-int/lit8 v8, v4, 0x1

    .line 55
    .line 56
    iput v8, v2, Lmr;->c:I

    .line 57
    .line 58
    iget v11, v2, Lmr;->a:I

    .line 59
    .line 60
    shr-int/lit8 v12, v11, 0xa

    .line 61
    .line 62
    and-int/lit8 v12, v12, 0x3f

    .line 63
    .line 64
    aget-byte v12, v5, v12

    .line 65
    .line 66
    aput-byte v12, v1, v4

    .line 67
    .line 68
    add-int/lit8 v12, v4, 0x2

    .line 69
    .line 70
    iput v12, v2, Lmr;->c:I

    .line 71
    .line 72
    shr-int/lit8 v13, v11, 0x4

    .line 73
    .line 74
    and-int/lit8 v13, v13, 0x3f

    .line 75
    .line 76
    aget-byte v13, v5, v13

    .line 77
    .line 78
    aput-byte v13, v1, v8

    .line 79
    .line 80
    add-int/lit8 v8, v4, 0x3

    .line 81
    .line 82
    iput v8, v2, Lmr;->c:I

    .line 83
    .line 84
    shl-int/lit8 v7, v11, 0x2

    .line 85
    .line 86
    and-int/lit8 v7, v7, 0x3f

    .line 87
    .line 88
    aget-byte v7, v5, v7

    .line 89
    .line 90
    aput-byte v7, v1, v12

    .line 91
    .line 92
    if-ne v5, v10, :cond_4

    .line 93
    .line 94
    add-int/lit8 v5, v4, 0x4

    .line 95
    .line 96
    iput v5, v2, Lmr;->c:I

    .line 97
    .line 98
    aput-byte v9, v1, v8

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    const-string v0, "Impossible modulus "

    .line 102
    .line 103
    iget v1, v2, Lmr;->g:I

    .line 104
    .line 105
    invoke-static {v1, v0}, Lp61;->d(ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_3
    add-int/lit8 v7, v4, 0x1

    .line 110
    .line 111
    iput v7, v2, Lmr;->c:I

    .line 112
    .line 113
    iget v8, v2, Lmr;->a:I

    .line 114
    .line 115
    shr-int/lit8 v11, v8, 0x2

    .line 116
    .line 117
    and-int/lit8 v11, v11, 0x3f

    .line 118
    .line 119
    aget-byte v11, v5, v11

    .line 120
    .line 121
    aput-byte v11, v1, v4

    .line 122
    .line 123
    add-int/lit8 v11, v4, 0x2

    .line 124
    .line 125
    iput v11, v2, Lmr;->c:I

    .line 126
    .line 127
    shl-int/lit8 v8, v8, 0x4

    .line 128
    .line 129
    and-int/lit8 v8, v8, 0x3f

    .line 130
    .line 131
    aget-byte v8, v5, v8

    .line 132
    .line 133
    aput-byte v8, v1, v7

    .line 134
    .line 135
    if-ne v5, v10, :cond_4

    .line 136
    .line 137
    add-int/lit8 v5, v4, 0x3

    .line 138
    .line 139
    iput v5, v2, Lmr;->c:I

    .line 140
    .line 141
    aput-byte v9, v1, v11

    .line 142
    .line 143
    add-int/lit8 v7, v4, 0x4

    .line 144
    .line 145
    iput v7, v2, Lmr;->c:I

    .line 146
    .line 147
    aput-byte v9, v1, v5

    .line 148
    .line 149
    :cond_4
    :goto_0
    iget v5, v2, Lmr;->f:I

    .line 150
    .line 151
    iget v7, v2, Lmr;->c:I

    .line 152
    .line 153
    sub-int v4, v7, v4

    .line 154
    .line 155
    add-int/2addr v4, v5

    .line 156
    iput v4, v2, Lmr;->f:I

    .line 157
    .line 158
    if-lez v6, :cond_8

    .line 159
    .line 160
    if-lez v4, :cond_8

    .line 161
    .line 162
    array-length v4, v0

    .line 163
    invoke-static {v0, v3, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    .line 165
    .line 166
    iget v1, v2, Lmr;->c:I

    .line 167
    .line 168
    array-length v0, v0

    .line 169
    add-int/2addr v1, v0

    .line 170
    iput v1, v2, Lmr;->c:I

    .line 171
    .line 172
    return-void

    .line 173
    :cond_5
    move v8, v3

    .line 174
    move v9, v8

    .line 175
    :goto_1
    if-ge v8, v1, :cond_8

    .line 176
    .line 177
    invoke-static {v4, v2}, Lnr;->c(ILmr;)[B

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    iget v11, v2, Lmr;->g:I

    .line 182
    .line 183
    add-int/2addr v11, v7

    .line 184
    rem-int/lit8 v11, v11, 0x3

    .line 185
    .line 186
    iput v11, v2, Lmr;->g:I

    .line 187
    .line 188
    add-int/lit8 v12, v9, 0x1

    .line 189
    .line 190
    aget-byte v9, p1, v9

    .line 191
    .line 192
    if-gez v9, :cond_6

    .line 193
    .line 194
    add-int/lit16 v9, v9, 0x100

    .line 195
    .line 196
    :cond_6
    iget v13, v2, Lmr;->a:I

    .line 197
    .line 198
    shl-int/lit8 v13, v13, 0x8

    .line 199
    .line 200
    add-int/2addr v13, v9

    .line 201
    iput v13, v2, Lmr;->a:I

    .line 202
    .line 203
    if-nez v11, :cond_7

    .line 204
    .line 205
    iget v9, v2, Lmr;->c:I

    .line 206
    .line 207
    add-int/lit8 v11, v9, 0x1

    .line 208
    .line 209
    iput v11, v2, Lmr;->c:I

    .line 210
    .line 211
    shr-int/lit8 v14, v13, 0x12

    .line 212
    .line 213
    and-int/lit8 v14, v14, 0x3f

    .line 214
    .line 215
    aget-byte v14, v5, v14

    .line 216
    .line 217
    aput-byte v14, v10, v9

    .line 218
    .line 219
    add-int/lit8 v14, v9, 0x2

    .line 220
    .line 221
    iput v14, v2, Lmr;->c:I

    .line 222
    .line 223
    shr-int/lit8 v15, v13, 0xc

    .line 224
    .line 225
    and-int/lit8 v15, v15, 0x3f

    .line 226
    .line 227
    aget-byte v15, v5, v15

    .line 228
    .line 229
    aput-byte v15, v10, v11

    .line 230
    .line 231
    add-int/lit8 v11, v9, 0x3

    .line 232
    .line 233
    iput v11, v2, Lmr;->c:I

    .line 234
    .line 235
    shr-int/lit8 v15, v13, 0x6

    .line 236
    .line 237
    and-int/lit8 v15, v15, 0x3f

    .line 238
    .line 239
    aget-byte v15, v5, v15

    .line 240
    .line 241
    aput-byte v15, v10, v14

    .line 242
    .line 243
    add-int/lit8 v9, v9, 0x4

    .line 244
    .line 245
    iput v9, v2, Lmr;->c:I

    .line 246
    .line 247
    and-int/lit8 v13, v13, 0x3f

    .line 248
    .line 249
    aget-byte v13, v5, v13

    .line 250
    .line 251
    aput-byte v13, v10, v11

    .line 252
    .line 253
    iget v11, v2, Lmr;->f:I

    .line 254
    .line 255
    add-int/lit8 v11, v11, 0x4

    .line 256
    .line 257
    iput v11, v2, Lmr;->f:I

    .line 258
    .line 259
    if-lez v6, :cond_7

    .line 260
    .line 261
    if-gt v6, v11, :cond_7

    .line 262
    .line 263
    array-length v11, v0

    .line 264
    invoke-static {v0, v3, v10, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    .line 266
    .line 267
    iget v9, v2, Lmr;->c:I

    .line 268
    .line 269
    array-length v10, v0

    .line 270
    add-int/2addr v9, v10

    .line 271
    iput v9, v2, Lmr;->c:I

    .line 272
    .line 273
    iput v3, v2, Lmr;->f:I

    .line 274
    .line 275
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 276
    .line 277
    move v9, v12

    .line 278
    goto :goto_1

    .line 279
    :cond_8
    :goto_2
    return-void
.end method

.method public final e([BILmr;)V
    .locals 11

    .line 1
    iget-boolean v0, p3, Lmr;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    if-gez p2, :cond_1

    .line 9
    .line 10
    iput-boolean v0, p3, Lmr;->e:Z

    .line 11
    .line 12
    :cond_1
    iget v1, p0, Loq;->h:I

    .line 13
    .line 14
    sub-int/2addr v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    const/4 v4, 0x3

    .line 18
    if-ge v2, p2, :cond_4

    .line 19
    .line 20
    invoke-static {v1, p3}, Lnr;->c(ILmr;)[B

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    add-int/lit8 v6, v3, 0x1

    .line 25
    .line 26
    aget-byte v3, p1, v3

    .line 27
    .line 28
    const/16 v7, 0x3d

    .line 29
    .line 30
    if-ne v3, v7, :cond_2

    .line 31
    .line 32
    iput-boolean v0, p3, Lmr;->e:Z

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    if-ltz v3, :cond_3

    .line 36
    .line 37
    iget-object v7, p0, Loq;->f:[B

    .line 38
    .line 39
    array-length v8, v7

    .line 40
    if-ge v3, v8, :cond_3

    .line 41
    .line 42
    aget-byte v3, v7, v3

    .line 43
    .line 44
    if-ltz v3, :cond_3

    .line 45
    .line 46
    iget v7, p3, Lmr;->g:I

    .line 47
    .line 48
    add-int/2addr v7, v0

    .line 49
    rem-int/lit8 v7, v7, 0x4

    .line 50
    .line 51
    iput v7, p3, Lmr;->g:I

    .line 52
    .line 53
    iget v8, p3, Lmr;->a:I

    .line 54
    .line 55
    shl-int/lit8 v8, v8, 0x6

    .line 56
    .line 57
    add-int/2addr v8, v3

    .line 58
    iput v8, p3, Lmr;->a:I

    .line 59
    .line 60
    if-nez v7, :cond_3

    .line 61
    .line 62
    iget v3, p3, Lmr;->c:I

    .line 63
    .line 64
    add-int/lit8 v7, v3, 0x1

    .line 65
    .line 66
    iput v7, p3, Lmr;->c:I

    .line 67
    .line 68
    shr-int/lit8 v9, v8, 0x10

    .line 69
    .line 70
    and-int/lit16 v9, v9, 0xff

    .line 71
    .line 72
    int-to-byte v9, v9

    .line 73
    aput-byte v9, v5, v3

    .line 74
    .line 75
    add-int/lit8 v9, v3, 0x2

    .line 76
    .line 77
    iput v9, p3, Lmr;->c:I

    .line 78
    .line 79
    shr-int/lit8 v10, v8, 0x8

    .line 80
    .line 81
    and-int/lit16 v10, v10, 0xff

    .line 82
    .line 83
    int-to-byte v10, v10

    .line 84
    aput-byte v10, v5, v7

    .line 85
    .line 86
    add-int/2addr v3, v4

    .line 87
    iput v3, p3, Lmr;->c:I

    .line 88
    .line 89
    and-int/lit16 v3, v8, 0xff

    .line 90
    .line 91
    int-to-byte v3, v3

    .line 92
    aput-byte v3, v5, v9

    .line 93
    .line 94
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 95
    .line 96
    move v3, v6

    .line 97
    goto :goto_0

    .line 98
    :cond_4
    :goto_1
    iget-boolean p1, p3, Lmr;->e:Z

    .line 99
    .line 100
    if-eqz p1, :cond_d

    .line 101
    .line 102
    iget p1, p3, Lmr;->g:I

    .line 103
    .line 104
    if-eqz p1, :cond_d

    .line 105
    .line 106
    invoke-static {v1, p3}, Lnr;->c(ILmr;)[B

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget p2, p3, Lmr;->g:I

    .line 111
    .line 112
    iget p0, p0, Lnr;->c:I

    .line 113
    .line 114
    if-eq p2, v0, :cond_b

    .line 115
    .line 116
    const-string v1, "Strict decoding: Last encoded character (before the paddings if any) is a valid base 64 alphabet but not a possible encoding. Expected the discarded bits from the character to be zero."

    .line 117
    .line 118
    const/4 v2, 0x2

    .line 119
    if-eq p2, v2, :cond_8

    .line 120
    .line 121
    if-ne p2, v4, :cond_7

    .line 122
    .line 123
    if-ne p0, v0, :cond_6

    .line 124
    .line 125
    iget p0, p3, Lmr;->a:I

    .line 126
    .line 127
    and-int/2addr p0, v4

    .line 128
    if-nez p0, :cond_5

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    invoke-static {v1}, Lk21;->f(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_6
    :goto_2
    iget p0, p3, Lmr;->a:I

    .line 136
    .line 137
    shr-int/lit8 p2, p0, 0x2

    .line 138
    .line 139
    iput p2, p3, Lmr;->a:I

    .line 140
    .line 141
    iget v0, p3, Lmr;->c:I

    .line 142
    .line 143
    add-int/lit8 v1, v0, 0x1

    .line 144
    .line 145
    iput v1, p3, Lmr;->c:I

    .line 146
    .line 147
    shr-int/lit8 p0, p0, 0xa

    .line 148
    .line 149
    and-int/lit16 p0, p0, 0xff

    .line 150
    .line 151
    int-to-byte p0, p0

    .line 152
    aput-byte p0, p1, v0

    .line 153
    .line 154
    add-int/2addr v0, v2

    .line 155
    iput v0, p3, Lmr;->c:I

    .line 156
    .line 157
    and-int/lit16 p0, p2, 0xff

    .line 158
    .line 159
    int-to-byte p0, p0

    .line 160
    aput-byte p0, p1, v1

    .line 161
    .line 162
    return-void

    .line 163
    :cond_7
    const-string p0, "Impossible modulus "

    .line 164
    .line 165
    iget p1, p3, Lmr;->g:I

    .line 166
    .line 167
    invoke-static {p1, p0}, Lp61;->d(ILjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_8
    if-ne p0, v0, :cond_a

    .line 172
    .line 173
    iget p0, p3, Lmr;->a:I

    .line 174
    .line 175
    and-int/lit8 p0, p0, 0xf

    .line 176
    .line 177
    if-nez p0, :cond_9

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_9
    invoke-static {v1}, Lk21;->f(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_a
    :goto_3
    iget p0, p3, Lmr;->a:I

    .line 185
    .line 186
    shr-int/lit8 p0, p0, 0x4

    .line 187
    .line 188
    iput p0, p3, Lmr;->a:I

    .line 189
    .line 190
    iget p2, p3, Lmr;->c:I

    .line 191
    .line 192
    add-int/lit8 v0, p2, 0x1

    .line 193
    .line 194
    iput v0, p3, Lmr;->c:I

    .line 195
    .line 196
    and-int/lit16 p0, p0, 0xff

    .line 197
    .line 198
    int-to-byte p0, p0

    .line 199
    aput-byte p0, p1, p2

    .line 200
    .line 201
    return-void

    .line 202
    :cond_b
    if-eq p0, v0, :cond_c

    .line 203
    .line 204
    return-void

    .line 205
    :cond_c
    const-string p0, "Strict decoding: Last encoded character (before the paddings if any) is a valid base 64 alphabet but not a possible encoding. Decoding requires at least two trailing 6-bit characters to create bytes."

    .line 206
    .line 207
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :cond_d
    :goto_4
    return-void
.end method

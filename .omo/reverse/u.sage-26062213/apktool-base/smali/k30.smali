.class public final Lk30;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static volatile b:Lpx4;

.field public static final c:[Ljava/lang/Object;

.field public static final d:Lz70;

.field public static final e:F

.field public static final f:[B

.field public static final g:[B

.field public static final h:[B

.field public static final i:[B

.field public static final j:[B

.field public static final k:[B

.field public static final l:[B

.field public static final m:Le34;

.field public static final n:Le34;

.field public static final o:Le34;

.field public static final p:Le34;

.field public static final q:Le34;

.field public static final r:Le34;

.field public static final s:Le34;

.field public static final t:Le34;

.field public static final u:Le34;

.field public static v:Lso1;

.field public static w:Ljava/lang/reflect/Method;

.field public static x:Ljava/lang/reflect/Method;

.field public static y:Z

.field public static z:Ljava/lang/Thread;


# instance fields
.field public final a:Lbr2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sput-object v1, Lk30;->c:[Ljava/lang/Object;

    .line 5
    .line 6
    sget-object v1, Lz70;->w:Lz70;

    .line 7
    .line 8
    sput-object v1, Lk30;->d:Lz70;

    .line 9
    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    sput v1, Lk30;->e:F

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    new-array v2, v1, [B

    .line 16
    .line 17
    fill-array-data v2, :array_0

    .line 18
    .line 19
    .line 20
    sput-object v2, Lk30;->f:[B

    .line 21
    .line 22
    new-array v2, v1, [B

    .line 23
    .line 24
    fill-array-data v2, :array_1

    .line 25
    .line 26
    .line 27
    sput-object v2, Lk30;->g:[B

    .line 28
    .line 29
    new-array v2, v1, [B

    .line 30
    .line 31
    fill-array-data v2, :array_2

    .line 32
    .line 33
    .line 34
    sput-object v2, Lk30;->h:[B

    .line 35
    .line 36
    new-array v2, v1, [B

    .line 37
    .line 38
    fill-array-data v2, :array_3

    .line 39
    .line 40
    .line 41
    sput-object v2, Lk30;->i:[B

    .line 42
    .line 43
    new-array v2, v1, [B

    .line 44
    .line 45
    fill-array-data v2, :array_4

    .line 46
    .line 47
    .line 48
    sput-object v2, Lk30;->j:[B

    .line 49
    .line 50
    new-array v2, v1, [B

    .line 51
    .line 52
    fill-array-data v2, :array_5

    .line 53
    .line 54
    .line 55
    sput-object v2, Lk30;->k:[B

    .line 56
    .line 57
    new-array v2, v1, [B

    .line 58
    .line 59
    fill-array-data v2, :array_6

    .line 60
    .line 61
    .line 62
    sput-object v2, Lk30;->l:[B

    .line 63
    .line 64
    new-instance v2, Ljd3;

    .line 65
    .line 66
    const/16 v3, 0x16

    .line 67
    .line 68
    invoke-direct {v2, v3}, Ljd3;-><init>(I)V

    .line 69
    .line 70
    .line 71
    new-instance v3, Lba4;

    .line 72
    .line 73
    const/16 v4, 0x9

    .line 74
    .line 75
    invoke-direct {v3, v4}, Lba4;-><init>(I)V

    .line 76
    .line 77
    .line 78
    new-instance v4, Le34;

    .line 79
    .line 80
    invoke-direct {v4, v2, v3}, Le34;-><init>(Lpe1;Lpe1;)V

    .line 81
    .line 82
    .line 83
    sput-object v4, Lk30;->m:Le34;

    .line 84
    .line 85
    new-instance v2, Ljd3;

    .line 86
    .line 87
    const/16 v3, 0x17

    .line 88
    .line 89
    invoke-direct {v2, v3}, Ljd3;-><init>(I)V

    .line 90
    .line 91
    .line 92
    new-instance v3, Ljd3;

    .line 93
    .line 94
    const/16 v4, 0x18

    .line 95
    .line 96
    invoke-direct {v3, v4}, Ljd3;-><init>(I)V

    .line 97
    .line 98
    .line 99
    new-instance v4, Le34;

    .line 100
    .line 101
    invoke-direct {v4, v2, v3}, Le34;-><init>(Lpe1;Lpe1;)V

    .line 102
    .line 103
    .line 104
    sput-object v4, Lk30;->n:Le34;

    .line 105
    .line 106
    new-instance v2, Ljd3;

    .line 107
    .line 108
    const/16 v3, 0x19

    .line 109
    .line 110
    invoke-direct {v2, v3}, Ljd3;-><init>(I)V

    .line 111
    .line 112
    .line 113
    new-instance v3, Ljd3;

    .line 114
    .line 115
    const/16 v4, 0x1a

    .line 116
    .line 117
    invoke-direct {v3, v4}, Ljd3;-><init>(I)V

    .line 118
    .line 119
    .line 120
    new-instance v4, Le34;

    .line 121
    .line 122
    invoke-direct {v4, v2, v3}, Le34;-><init>(Lpe1;Lpe1;)V

    .line 123
    .line 124
    .line 125
    sput-object v4, Lk30;->o:Le34;

    .line 126
    .line 127
    new-instance v2, Ljd3;

    .line 128
    .line 129
    const/16 v3, 0x1b

    .line 130
    .line 131
    invoke-direct {v2, v3}, Ljd3;-><init>(I)V

    .line 132
    .line 133
    .line 134
    new-instance v3, Ljd3;

    .line 135
    .line 136
    const/16 v4, 0x1c

    .line 137
    .line 138
    invoke-direct {v3, v4}, Ljd3;-><init>(I)V

    .line 139
    .line 140
    .line 141
    new-instance v4, Le34;

    .line 142
    .line 143
    invoke-direct {v4, v2, v3}, Le34;-><init>(Lpe1;Lpe1;)V

    .line 144
    .line 145
    .line 146
    sput-object v4, Lk30;->p:Le34;

    .line 147
    .line 148
    new-instance v2, Ljd3;

    .line 149
    .line 150
    const/16 v3, 0x1d

    .line 151
    .line 152
    invoke-direct {v2, v3}, Ljd3;-><init>(I)V

    .line 153
    .line 154
    .line 155
    new-instance v3, Lba4;

    .line 156
    .line 157
    invoke-direct {v3, v0}, Lba4;-><init>(I)V

    .line 158
    .line 159
    .line 160
    new-instance v0, Le34;

    .line 161
    .line 162
    invoke-direct {v0, v2, v3}, Le34;-><init>(Lpe1;Lpe1;)V

    .line 163
    .line 164
    .line 165
    sput-object v0, Lk30;->q:Le34;

    .line 166
    .line 167
    new-instance v0, Lba4;

    .line 168
    .line 169
    const/4 v2, 0x1

    .line 170
    invoke-direct {v0, v2}, Lba4;-><init>(I)V

    .line 171
    .line 172
    .line 173
    new-instance v2, Lba4;

    .line 174
    .line 175
    const/4 v3, 0x2

    .line 176
    invoke-direct {v2, v3}, Lba4;-><init>(I)V

    .line 177
    .line 178
    .line 179
    new-instance v3, Le34;

    .line 180
    .line 181
    invoke-direct {v3, v0, v2}, Le34;-><init>(Lpe1;Lpe1;)V

    .line 182
    .line 183
    .line 184
    sput-object v3, Lk30;->r:Le34;

    .line 185
    .line 186
    new-instance v0, Lba4;

    .line 187
    .line 188
    const/4 v2, 0x3

    .line 189
    invoke-direct {v0, v2}, Lba4;-><init>(I)V

    .line 190
    .line 191
    .line 192
    new-instance v2, Lba4;

    .line 193
    .line 194
    invoke-direct {v2, v1}, Lba4;-><init>(I)V

    .line 195
    .line 196
    .line 197
    new-instance v1, Le34;

    .line 198
    .line 199
    invoke-direct {v1, v0, v2}, Le34;-><init>(Lpe1;Lpe1;)V

    .line 200
    .line 201
    .line 202
    sput-object v1, Lk30;->s:Le34;

    .line 203
    .line 204
    new-instance v0, Lba4;

    .line 205
    .line 206
    const/4 v1, 0x5

    .line 207
    invoke-direct {v0, v1}, Lba4;-><init>(I)V

    .line 208
    .line 209
    .line 210
    new-instance v1, Lba4;

    .line 211
    .line 212
    const/4 v2, 0x6

    .line 213
    invoke-direct {v1, v2}, Lba4;-><init>(I)V

    .line 214
    .line 215
    .line 216
    new-instance v2, Le34;

    .line 217
    .line 218
    invoke-direct {v2, v0, v1}, Le34;-><init>(Lpe1;Lpe1;)V

    .line 219
    .line 220
    .line 221
    sput-object v2, Lk30;->t:Le34;

    .line 222
    .line 223
    new-instance v0, Lba4;

    .line 224
    .line 225
    const/4 v1, 0x7

    .line 226
    invoke-direct {v0, v1}, Lba4;-><init>(I)V

    .line 227
    .line 228
    .line 229
    new-instance v1, Lba4;

    .line 230
    .line 231
    const/16 v2, 0x8

    .line 232
    .line 233
    invoke-direct {v1, v2}, Lba4;-><init>(I)V

    .line 234
    .line 235
    .line 236
    new-instance v2, Le34;

    .line 237
    .line 238
    invoke-direct {v2, v0, v1}, Le34;-><init>(Lpe1;Lpe1;)V

    .line 239
    .line 240
    .line 241
    sput-object v2, Lk30;->u:Le34;

    .line 242
    .line 243
    return-void

    .line 244
    nop

    .line 245
    :array_0
    .array-data 1
        0x30t
        0x31t
        0x35t
        0x0t
    .end array-data

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    :array_1
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x0t
    .end array-data

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    :array_2
    .array-data 1
        0x30t
        0x30t
        0x39t
        0x0t
    .end array-data

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :array_3
    .array-data 1
        0x30t
        0x30t
        0x35t
        0x0t
    .end array-data

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    :array_4
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x0t
    .end array-data

    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    :array_5
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x0t
    .end array-data

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :array_6
    .array-data 1
        0x30t
        0x30t
        0x32t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lbr2;

    .line 5
    .line 6
    invoke-direct {v0}, Lbr2;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lk30;->a:Lbr2;

    .line 10
    .line 11
    return-void
.end method

.method public static final A(Lnd2;Ldh;)Lnd2;
    .locals 1

    .line 1
    new-instance v0, Ldv0;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ldv0;-><init>(Ldh;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Lnd2;->c(Lnd2;)Lnd2;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final B(Lbq1;Lhr2;Laq1;Z)J
    .locals 8

    .line 1
    iget-wide v0, p0, Lbq1;->g:J

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iget v2, p2, Laq1;->a:I

    .line 7
    .line 8
    const-wide v3, 0xffffffffL

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const/16 v5, 0x20

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    if-ne v2, v6, :cond_1

    .line 17
    .line 18
    shr-long/2addr v0, v5

    .line 19
    long-to-int v0, v0

    .line 20
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v6, 0x2

    .line 26
    if-ne v2, v6, :cond_3

    .line 27
    .line 28
    and-long/2addr v0, v3

    .line 29
    long-to-int v0, v0

    .line 30
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    :goto_0
    sget-object v1, Lhr2;->o:Lhr2;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    if-ne p1, v1, :cond_2

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    int-to-long v0, v0

    .line 44
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    int-to-long v6, v2

    .line 49
    shl-long/2addr v0, v5

    .line 50
    :goto_1
    and-long v2, v6, v3

    .line 51
    .line 52
    or-long/2addr v0, v2

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    int-to-long v1, v1

    .line 59
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    int-to-long v6, v0

    .line 64
    shl-long v0, v1, v5

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    :goto_2
    invoke-static {p0, p1, p2}, Lk30;->C(Lbq1;Lhr2;Laq1;)J

    .line 68
    .line 69
    .line 70
    move-result-wide p1

    .line 71
    invoke-static {p1, p2, v0, v1}, Lgo2;->d(JJ)J

    .line 72
    .line 73
    .line 74
    move-result-wide p1

    .line 75
    if-nez p3, :cond_4

    .line 76
    .line 77
    iget-boolean p0, p0, Lbq1;->i:Z

    .line 78
    .line 79
    if-eqz p0, :cond_4

    .line 80
    .line 81
    const-wide/16 p0, 0x0

    .line 82
    .line 83
    return-wide p0

    .line 84
    :cond_4
    return-wide p1
.end method

.method public static final C(Lbq1;Lhr2;Laq1;)J
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-wide p0, p0, Lbq1;->c:J

    .line 4
    .line 5
    return-wide p0

    .line 6
    :cond_0
    iget p2, p2, Laq1;->a:I

    .line 7
    .line 8
    const-wide v0, 0xffffffffL

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const/16 v2, 0x20

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne p2, v3, :cond_1

    .line 17
    .line 18
    iget-wide v3, p0, Lbq1;->c:J

    .line 19
    .line 20
    shr-long/2addr v3, v2

    .line 21
    long-to-int p0, v3

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v3, 0x2

    .line 28
    if-ne p2, v3, :cond_3

    .line 29
    .line 30
    iget-wide v3, p0, Lbq1;->c:J

    .line 31
    .line 32
    and-long/2addr v3, v0

    .line 33
    long-to-int p0, v3

    .line 34
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    :goto_0
    sget-object p2, Lhr2;->o:Lhr2;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    if-ne p1, p2, :cond_2

    .line 42
    .line 43
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    int-to-long p0, p0

    .line 48
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    int-to-long v3, p2

    .line 53
    shl-long/2addr p0, v2

    .line 54
    :goto_1
    and-long/2addr v0, v3

    .line 55
    or-long/2addr p0, v0

    .line 56
    return-wide p0

    .line 57
    :cond_2
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    int-to-long p1, p1

    .line 62
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    int-to-long v3, p0

    .line 67
    shl-long p0, p1, v2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    iget-wide p0, p0, Lbq1;->c:J

    .line 71
    .line 72
    return-wide p0
.end method

.method public static final D(Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sget-object v1, Lk30;->c:[Ljava/lang/Object;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    aput-object v3, v0, v1

    .line 34
    .line 35
    array-length v1, v0

    .line 36
    if-lt v2, v1, :cond_6

    .line 37
    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_2
    mul-int/lit8 v1, v2, 0x3

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    ushr-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    if-gt v1, v2, :cond_4

    .line 52
    .line 53
    const v1, 0x7ffffffd

    .line 54
    .line 55
    .line 56
    if-ge v2, v1, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    new-instance p0, Ljava/lang/OutOfMemoryError;

    .line 60
    .line 61
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_4
    :goto_1
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :cond_5
    move v1, v2

    .line 70
    goto :goto_0

    .line 71
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_5

    .line 76
    .line 77
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method

.method public static final E(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    array-length p0, p1

    .line 16
    if-lez p0, :cond_1

    .line 17
    .line 18
    aput-object v1, p1, v2

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_2

    .line 30
    .line 31
    array-length p0, p1

    .line 32
    if-lez p0, :cond_1

    .line 33
    .line 34
    aput-object v1, p1, v2

    .line 35
    .line 36
    :cond_1
    return-object p1

    .line 37
    :cond_2
    array-length v3, p1

    .line 38
    if-gt v0, v3, :cond_3

    .line 39
    .line 40
    move-object v0, p1

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    check-cast v0, [Ljava/lang/Object;

    .line 58
    .line 59
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 60
    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    aput-object v4, v0, v2

    .line 66
    .line 67
    array-length v2, v0

    .line 68
    if-lt v3, v2, :cond_8

    .line 69
    .line 70
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_4

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_4
    mul-int/lit8 v2, v3, 0x3

    .line 78
    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    ushr-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    if-gt v2, v3, :cond_6

    .line 84
    .line 85
    const v2, 0x7ffffffd

    .line 86
    .line 87
    .line 88
    if-ge v3, v2, :cond_5

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    new-instance p0, Ljava/lang/OutOfMemoryError;

    .line 92
    .line 93
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_6
    :goto_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    :cond_7
    move v2, v3

    .line 102
    goto :goto_0

    .line 103
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-nez v2, :cond_7

    .line 108
    .line 109
    if-ne v0, p1, :cond_9

    .line 110
    .line 111
    aput-object v1, p1, v3

    .line 112
    .line 113
    return-object p1

    .line 114
    :cond_9
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0
.end method

.method public static final F(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-static {p0}, Lo70;->h0(Ljava/util/List;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    sget-object p0, Lg01;->n:Lg01;

    .line 30
    .line 31
    return-object p0
.end method

.method public static final G(Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/lang/Iterable;

    .line 25
    .line 26
    invoke-static {p0}, Lo70;->g0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_1
    sget-object p0, Lh01;->n:Lh01;

    .line 46
    .line 47
    return-object p0
.end method

.method public static final H(Ljava/util/List;Lsb;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lsb;->a:Landroid/graphics/Path;

    .line 6
    .line 7
    iget-object v3, v1, Lsb;->a:Landroid/graphics/Path;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    const/4 v6, 0x0

    .line 17
    if-ne v2, v4, :cond_0

    .line 18
    .line 19
    move v2, v5

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, v6

    .line 22
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 23
    .line 24
    .line 25
    if-ne v2, v5, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    sget-object v4, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 29
    .line 30
    :goto_1
    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    sget-object v2, Lft2;->c:Lft2;

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lxt2;

    .line 47
    .line 48
    :goto_2
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    const/4 v11, 0x0

    .line 53
    move v12, v6

    .line 54
    move v4, v11

    .line 55
    move v5, v4

    .line 56
    move v13, v5

    .line 57
    move v14, v13

    .line 58
    move/from16 v18, v14

    .line 59
    .line 60
    move/from16 v19, v18

    .line 61
    .line 62
    :goto_3
    if-ge v12, v10, :cond_1a

    .line 63
    .line 64
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    move-object v15, v6

    .line 69
    check-cast v15, Lxt2;

    .line 70
    .line 71
    instance-of v6, v15, Lft2;

    .line 72
    .line 73
    if-eqz v6, :cond_3

    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 76
    .line 77
    .line 78
    move-object/from16 v22, v3

    .line 79
    .line 80
    move/from16 v20, v10

    .line 81
    .line 82
    move/from16 v25, v11

    .line 83
    .line 84
    move/from16 v21, v12

    .line 85
    .line 86
    move-object/from16 v23, v15

    .line 87
    .line 88
    move/from16 v4, v18

    .line 89
    .line 90
    move v13, v4

    .line 91
    move/from16 v5, v19

    .line 92
    .line 93
    move v14, v5

    .line 94
    goto/16 :goto_c

    .line 95
    .line 96
    :cond_3
    instance-of v6, v15, Lrt2;

    .line 97
    .line 98
    if-eqz v6, :cond_4

    .line 99
    .line 100
    move-object v2, v15

    .line 101
    check-cast v2, Lrt2;

    .line 102
    .line 103
    iget v6, v2, Lrt2;->c:F

    .line 104
    .line 105
    add-float/2addr v13, v6

    .line 106
    iget v2, v2, Lrt2;->d:F

    .line 107
    .line 108
    add-float/2addr v14, v2

    .line 109
    invoke-virtual {v3, v6, v2}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 110
    .line 111
    .line 112
    move-object/from16 v22, v3

    .line 113
    .line 114
    move/from16 v20, v10

    .line 115
    .line 116
    move/from16 v25, v11

    .line 117
    .line 118
    move/from16 v21, v12

    .line 119
    .line 120
    move/from16 v18, v13

    .line 121
    .line 122
    move/from16 v19, v14

    .line 123
    .line 124
    :goto_4
    move-object/from16 v23, v15

    .line 125
    .line 126
    goto/16 :goto_c

    .line 127
    .line 128
    :cond_4
    instance-of v6, v15, Ljt2;

    .line 129
    .line 130
    if-eqz v6, :cond_5

    .line 131
    .line 132
    move-object v2, v15

    .line 133
    check-cast v2, Ljt2;

    .line 134
    .line 135
    iget v6, v2, Ljt2;->c:F

    .line 136
    .line 137
    iget v2, v2, Ljt2;->d:F

    .line 138
    .line 139
    invoke-virtual {v3, v6, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 140
    .line 141
    .line 142
    move v14, v2

    .line 143
    move/from16 v19, v14

    .line 144
    .line 145
    move-object/from16 v22, v3

    .line 146
    .line 147
    move v13, v6

    .line 148
    move/from16 v18, v13

    .line 149
    .line 150
    :goto_5
    move/from16 v20, v10

    .line 151
    .line 152
    move/from16 v25, v11

    .line 153
    .line 154
    move/from16 v21, v12

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_5
    instance-of v6, v15, Lqt2;

    .line 158
    .line 159
    if-eqz v6, :cond_6

    .line 160
    .line 161
    move-object v2, v15

    .line 162
    check-cast v2, Lqt2;

    .line 163
    .line 164
    iget v6, v2, Lqt2;->d:F

    .line 165
    .line 166
    iget v2, v2, Lqt2;->c:F

    .line 167
    .line 168
    invoke-virtual {v3, v2, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 169
    .line 170
    .line 171
    add-float/2addr v13, v2

    .line 172
    add-float/2addr v14, v6

    .line 173
    :goto_6
    move-object/from16 v22, v3

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_6
    instance-of v6, v15, Lit2;

    .line 177
    .line 178
    if-eqz v6, :cond_7

    .line 179
    .line 180
    move-object v2, v15

    .line 181
    check-cast v2, Lit2;

    .line 182
    .line 183
    iget v6, v2, Lit2;->d:F

    .line 184
    .line 185
    iget v2, v2, Lit2;->c:F

    .line 186
    .line 187
    invoke-virtual {v3, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 188
    .line 189
    .line 190
    move v13, v2

    .line 191
    move-object/from16 v22, v3

    .line 192
    .line 193
    move v14, v6

    .line 194
    goto :goto_5

    .line 195
    :cond_7
    instance-of v6, v15, Lpt2;

    .line 196
    .line 197
    if-eqz v6, :cond_8

    .line 198
    .line 199
    move-object v2, v15

    .line 200
    check-cast v2, Lpt2;

    .line 201
    .line 202
    iget v2, v2, Lpt2;->c:F

    .line 203
    .line 204
    invoke-virtual {v3, v2, v11}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 205
    .line 206
    .line 207
    add-float/2addr v13, v2

    .line 208
    goto :goto_6

    .line 209
    :cond_8
    instance-of v6, v15, Lht2;

    .line 210
    .line 211
    if-eqz v6, :cond_9

    .line 212
    .line 213
    move-object v2, v15

    .line 214
    check-cast v2, Lht2;

    .line 215
    .line 216
    iget v2, v2, Lht2;->c:F

    .line 217
    .line 218
    invoke-virtual {v3, v2, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 219
    .line 220
    .line 221
    move v13, v2

    .line 222
    goto :goto_6

    .line 223
    :cond_9
    instance-of v6, v15, Lvt2;

    .line 224
    .line 225
    if-eqz v6, :cond_a

    .line 226
    .line 227
    move-object v2, v15

    .line 228
    check-cast v2, Lvt2;

    .line 229
    .line 230
    iget v2, v2, Lvt2;->c:F

    .line 231
    .line 232
    invoke-virtual {v3, v11, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 233
    .line 234
    .line 235
    :goto_7
    add-float/2addr v14, v2

    .line 236
    goto :goto_6

    .line 237
    :cond_a
    instance-of v6, v15, Lwt2;

    .line 238
    .line 239
    if-eqz v6, :cond_b

    .line 240
    .line 241
    move-object v2, v15

    .line 242
    check-cast v2, Lwt2;

    .line 243
    .line 244
    iget v2, v2, Lwt2;->c:F

    .line 245
    .line 246
    invoke-virtual {v3, v13, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 247
    .line 248
    .line 249
    move v14, v2

    .line 250
    goto :goto_6

    .line 251
    :cond_b
    instance-of v6, v15, Lot2;

    .line 252
    .line 253
    if-eqz v6, :cond_c

    .line 254
    .line 255
    move-object v2, v15

    .line 256
    check-cast v2, Lot2;

    .line 257
    .line 258
    iget v4, v2, Lot2;->c:F

    .line 259
    .line 260
    iget v5, v2, Lot2;->d:F

    .line 261
    .line 262
    iget v6, v2, Lot2;->e:F

    .line 263
    .line 264
    iget v7, v2, Lot2;->f:F

    .line 265
    .line 266
    iget v8, v2, Lot2;->g:F

    .line 267
    .line 268
    iget v9, v2, Lot2;->h:F

    .line 269
    .line 270
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 271
    .line 272
    .line 273
    iget v4, v2, Lot2;->e:F

    .line 274
    .line 275
    add-float/2addr v4, v13

    .line 276
    iget v5, v2, Lot2;->f:F

    .line 277
    .line 278
    add-float/2addr v5, v14

    .line 279
    iget v6, v2, Lot2;->g:F

    .line 280
    .line 281
    add-float/2addr v13, v6

    .line 282
    iget v2, v2, Lot2;->h:F

    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_c
    instance-of v6, v15, Lgt2;

    .line 286
    .line 287
    if-eqz v6, :cond_d

    .line 288
    .line 289
    move-object v2, v15

    .line 290
    check-cast v2, Lgt2;

    .line 291
    .line 292
    iget v4, v2, Lgt2;->c:F

    .line 293
    .line 294
    iget v5, v2, Lgt2;->d:F

    .line 295
    .line 296
    iget v6, v2, Lgt2;->e:F

    .line 297
    .line 298
    iget v7, v2, Lgt2;->f:F

    .line 299
    .line 300
    iget v8, v2, Lgt2;->g:F

    .line 301
    .line 302
    iget v9, v2, Lgt2;->h:F

    .line 303
    .line 304
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 305
    .line 306
    .line 307
    iget v4, v2, Lgt2;->e:F

    .line 308
    .line 309
    iget v5, v2, Lgt2;->f:F

    .line 310
    .line 311
    iget v6, v2, Lgt2;->g:F

    .line 312
    .line 313
    iget v2, v2, Lgt2;->h:F

    .line 314
    .line 315
    :goto_8
    move v14, v2

    .line 316
    move-object/from16 v22, v3

    .line 317
    .line 318
    move v13, v6

    .line 319
    goto/16 :goto_5

    .line 320
    .line 321
    :cond_d
    instance-of v6, v15, Ltt2;

    .line 322
    .line 323
    if-eqz v6, :cond_f

    .line 324
    .line 325
    iget-boolean v2, v2, Lxt2;->a:Z

    .line 326
    .line 327
    if-eqz v2, :cond_e

    .line 328
    .line 329
    sub-float v2, v13, v4

    .line 330
    .line 331
    sub-float v4, v14, v5

    .line 332
    .line 333
    move v5, v4

    .line 334
    move v4, v2

    .line 335
    goto :goto_9

    .line 336
    :cond_e
    move v4, v11

    .line 337
    move v5, v4

    .line 338
    :goto_9
    move-object v2, v15

    .line 339
    check-cast v2, Ltt2;

    .line 340
    .line 341
    iget v6, v2, Ltt2;->c:F

    .line 342
    .line 343
    iget v7, v2, Ltt2;->d:F

    .line 344
    .line 345
    iget v8, v2, Ltt2;->e:F

    .line 346
    .line 347
    iget v9, v2, Ltt2;->f:F

    .line 348
    .line 349
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 350
    .line 351
    .line 352
    iget v4, v2, Ltt2;->c:F

    .line 353
    .line 354
    add-float/2addr v4, v13

    .line 355
    iget v5, v2, Ltt2;->d:F

    .line 356
    .line 357
    add-float/2addr v5, v14

    .line 358
    iget v6, v2, Ltt2;->e:F

    .line 359
    .line 360
    add-float/2addr v13, v6

    .line 361
    iget v2, v2, Ltt2;->f:F

    .line 362
    .line 363
    goto/16 :goto_7

    .line 364
    .line 365
    :cond_f
    instance-of v6, v15, Llt2;

    .line 366
    .line 367
    const/high16 v7, 0x40000000    # 2.0f

    .line 368
    .line 369
    if-eqz v6, :cond_11

    .line 370
    .line 371
    iget-boolean v2, v2, Lxt2;->a:Z

    .line 372
    .line 373
    if-eqz v2, :cond_10

    .line 374
    .line 375
    mul-float/2addr v13, v7

    .line 376
    sub-float/2addr v13, v4

    .line 377
    mul-float/2addr v7, v14

    .line 378
    sub-float v14, v7, v5

    .line 379
    .line 380
    :cond_10
    move v4, v13

    .line 381
    move v5, v14

    .line 382
    move-object v2, v15

    .line 383
    check-cast v2, Llt2;

    .line 384
    .line 385
    iget v6, v2, Llt2;->c:F

    .line 386
    .line 387
    iget v7, v2, Llt2;->d:F

    .line 388
    .line 389
    iget v8, v2, Llt2;->e:F

    .line 390
    .line 391
    iget v9, v2, Llt2;->f:F

    .line 392
    .line 393
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 394
    .line 395
    .line 396
    iget v4, v2, Llt2;->c:F

    .line 397
    .line 398
    iget v5, v2, Llt2;->d:F

    .line 399
    .line 400
    iget v6, v2, Llt2;->e:F

    .line 401
    .line 402
    iget v2, v2, Llt2;->f:F

    .line 403
    .line 404
    goto :goto_8

    .line 405
    :cond_11
    instance-of v6, v15, Lst2;

    .line 406
    .line 407
    if-eqz v6, :cond_12

    .line 408
    .line 409
    move-object v2, v15

    .line 410
    check-cast v2, Lst2;

    .line 411
    .line 412
    iget v4, v2, Lst2;->f:F

    .line 413
    .line 414
    iget v5, v2, Lst2;->e:F

    .line 415
    .line 416
    iget v6, v2, Lst2;->d:F

    .line 417
    .line 418
    iget v2, v2, Lst2;->c:F

    .line 419
    .line 420
    invoke-virtual {v3, v2, v6, v5, v4}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 421
    .line 422
    .line 423
    add-float/2addr v2, v13

    .line 424
    add-float/2addr v6, v14

    .line 425
    add-float/2addr v13, v5

    .line 426
    add-float/2addr v14, v4

    .line 427
    move v4, v2

    .line 428
    move-object/from16 v22, v3

    .line 429
    .line 430
    move v5, v6

    .line 431
    goto/16 :goto_5

    .line 432
    .line 433
    :cond_12
    instance-of v6, v15, Lkt2;

    .line 434
    .line 435
    if-eqz v6, :cond_13

    .line 436
    .line 437
    move-object v2, v15

    .line 438
    check-cast v2, Lkt2;

    .line 439
    .line 440
    iget v4, v2, Lkt2;->f:F

    .line 441
    .line 442
    iget v5, v2, Lkt2;->e:F

    .line 443
    .line 444
    iget v6, v2, Lkt2;->d:F

    .line 445
    .line 446
    iget v2, v2, Lkt2;->c:F

    .line 447
    .line 448
    invoke-virtual {v3, v2, v6, v5, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 449
    .line 450
    .line 451
    move-object/from16 v22, v3

    .line 452
    .line 453
    move v14, v4

    .line 454
    move v13, v5

    .line 455
    move v5, v6

    .line 456
    :goto_a
    move/from16 v20, v10

    .line 457
    .line 458
    move/from16 v25, v11

    .line 459
    .line 460
    move/from16 v21, v12

    .line 461
    .line 462
    move-object/from16 v23, v15

    .line 463
    .line 464
    move v4, v2

    .line 465
    goto/16 :goto_c

    .line 466
    .line 467
    :cond_13
    instance-of v6, v15, Lut2;

    .line 468
    .line 469
    if-eqz v6, :cond_15

    .line 470
    .line 471
    iget-boolean v2, v2, Lxt2;->b:Z

    .line 472
    .line 473
    if-eqz v2, :cond_14

    .line 474
    .line 475
    sub-float v2, v13, v4

    .line 476
    .line 477
    sub-float v4, v14, v5

    .line 478
    .line 479
    goto :goto_b

    .line 480
    :cond_14
    move v2, v11

    .line 481
    move v4, v2

    .line 482
    :goto_b
    move-object v5, v15

    .line 483
    check-cast v5, Lut2;

    .line 484
    .line 485
    iget v6, v5, Lut2;->d:F

    .line 486
    .line 487
    iget v5, v5, Lut2;->c:F

    .line 488
    .line 489
    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 490
    .line 491
    .line 492
    add-float/2addr v2, v13

    .line 493
    add-float/2addr v4, v14

    .line 494
    add-float/2addr v13, v5

    .line 495
    add-float/2addr v14, v6

    .line 496
    move-object/from16 v22, v3

    .line 497
    .line 498
    move v5, v4

    .line 499
    goto :goto_a

    .line 500
    :cond_15
    instance-of v6, v15, Lmt2;

    .line 501
    .line 502
    if-eqz v6, :cond_17

    .line 503
    .line 504
    iget-boolean v2, v2, Lxt2;->b:Z

    .line 505
    .line 506
    if-eqz v2, :cond_16

    .line 507
    .line 508
    mul-float/2addr v13, v7

    .line 509
    sub-float/2addr v13, v4

    .line 510
    mul-float/2addr v7, v14

    .line 511
    sub-float v14, v7, v5

    .line 512
    .line 513
    :cond_16
    move-object v2, v15

    .line 514
    check-cast v2, Lmt2;

    .line 515
    .line 516
    iget v4, v2, Lmt2;->d:F

    .line 517
    .line 518
    iget v2, v2, Lmt2;->c:F

    .line 519
    .line 520
    invoke-virtual {v3, v13, v14, v2, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 521
    .line 522
    .line 523
    move-object/from16 v22, v3

    .line 524
    .line 525
    move/from16 v20, v10

    .line 526
    .line 527
    move/from16 v25, v11

    .line 528
    .line 529
    move/from16 v21, v12

    .line 530
    .line 531
    move v5, v14

    .line 532
    move-object/from16 v23, v15

    .line 533
    .line 534
    move v14, v4

    .line 535
    move v4, v13

    .line 536
    move v13, v2

    .line 537
    goto/16 :goto_c

    .line 538
    .line 539
    :cond_17
    instance-of v2, v15, Lnt2;

    .line 540
    .line 541
    if-eqz v2, :cond_18

    .line 542
    .line 543
    move-object v2, v15

    .line 544
    check-cast v2, Lnt2;

    .line 545
    .line 546
    iget v4, v2, Lnt2;->h:F

    .line 547
    .line 548
    add-float/2addr v4, v13

    .line 549
    iget v5, v2, Lnt2;->i:F

    .line 550
    .line 551
    add-float/2addr v5, v14

    .line 552
    float-to-double v6, v13

    .line 553
    float-to-double v8, v14

    .line 554
    move-wide v13, v6

    .line 555
    float-to-double v6, v4

    .line 556
    move-wide/from16 v16, v8

    .line 557
    .line 558
    float-to-double v8, v5

    .line 559
    iget v11, v2, Lnt2;->c:F

    .line 560
    .line 561
    float-to-double v0, v11

    .line 562
    iget v11, v2, Lnt2;->d:F

    .line 563
    .line 564
    move-wide/from16 v21, v0

    .line 565
    .line 566
    float-to-double v0, v11

    .line 567
    iget v11, v2, Lnt2;->e:F

    .line 568
    .line 569
    move-wide/from16 v23, v0

    .line 570
    .line 571
    float-to-double v0, v11

    .line 572
    iget-boolean v11, v2, Lnt2;->f:Z

    .line 573
    .line 574
    iget-boolean v2, v2, Lnt2;->g:Z

    .line 575
    .line 576
    move/from16 v20, v10

    .line 577
    .line 578
    const/16 v25, 0x0

    .line 579
    .line 580
    move-wide/from16 v28, v0

    .line 581
    .line 582
    move-object/from16 v1, p1

    .line 583
    .line 584
    move-object v0, v15

    .line 585
    move-wide/from16 v30, v16

    .line 586
    .line 587
    move/from16 v17, v2

    .line 588
    .line 589
    move/from16 v16, v11

    .line 590
    .line 591
    move-wide/from16 v10, v21

    .line 592
    .line 593
    move-object/from16 v22, v3

    .line 594
    .line 595
    move/from16 v21, v12

    .line 596
    .line 597
    move-wide v2, v13

    .line 598
    move-wide/from16 v12, v23

    .line 599
    .line 600
    move-wide/from16 v14, v28

    .line 601
    .line 602
    move/from16 v23, v4

    .line 603
    .line 604
    move/from16 v24, v5

    .line 605
    .line 606
    move-wide/from16 v4, v30

    .line 607
    .line 608
    invoke-static/range {v1 .. v17}, Lk30;->n(Lsb;DDDDDDDZZ)V

    .line 609
    .line 610
    .line 611
    move/from16 v4, v23

    .line 612
    .line 613
    move v13, v4

    .line 614
    move/from16 v5, v24

    .line 615
    .line 616
    move v14, v5

    .line 617
    move-object/from16 v23, v0

    .line 618
    .line 619
    goto :goto_c

    .line 620
    :cond_18
    move-object/from16 v22, v3

    .line 621
    .line 622
    move/from16 v20, v10

    .line 623
    .line 624
    move/from16 v25, v11

    .line 625
    .line 626
    move/from16 v21, v12

    .line 627
    .line 628
    move-object v0, v15

    .line 629
    instance-of v1, v0, Let2;

    .line 630
    .line 631
    if-eqz v1, :cond_19

    .line 632
    .line 633
    float-to-double v2, v13

    .line 634
    float-to-double v4, v14

    .line 635
    move-object v15, v0

    .line 636
    check-cast v15, Let2;

    .line 637
    .line 638
    iget v1, v15, Let2;->i:F

    .line 639
    .line 640
    iget v6, v15, Let2;->h:F

    .line 641
    .line 642
    move v8, v6

    .line 643
    float-to-double v6, v8

    .line 644
    move v10, v8

    .line 645
    float-to-double v8, v1

    .line 646
    iget v11, v15, Let2;->c:F

    .line 647
    .line 648
    float-to-double v11, v11

    .line 649
    iget v13, v15, Let2;->d:F

    .line 650
    .line 651
    float-to-double v13, v13

    .line 652
    move-object/from16 v23, v0

    .line 653
    .line 654
    iget v0, v15, Let2;->e:F

    .line 655
    .line 656
    move/from16 v16, v1

    .line 657
    .line 658
    float-to-double v0, v0

    .line 659
    move-wide/from16 v26, v0

    .line 660
    .line 661
    iget-boolean v0, v15, Let2;->f:Z

    .line 662
    .line 663
    iget-boolean v1, v15, Let2;->g:Z

    .line 664
    .line 665
    move/from16 v15, v16

    .line 666
    .line 667
    move/from16 v16, v0

    .line 668
    .line 669
    move v0, v15

    .line 670
    move/from16 v17, v1

    .line 671
    .line 672
    move/from16 v24, v10

    .line 673
    .line 674
    move-wide v10, v11

    .line 675
    move-wide v12, v13

    .line 676
    move-wide/from16 v14, v26

    .line 677
    .line 678
    move-object/from16 v1, p1

    .line 679
    .line 680
    invoke-static/range {v1 .. v17}, Lk30;->n(Lsb;DDDDDDDZZ)V

    .line 681
    .line 682
    .line 683
    move v5, v0

    .line 684
    move v14, v5

    .line 685
    move/from16 v4, v24

    .line 686
    .line 687
    move v13, v4

    .line 688
    :goto_c
    add-int/lit8 v12, v21, 0x1

    .line 689
    .line 690
    move-object/from16 v0, p0

    .line 691
    .line 692
    move-object/from16 v1, p1

    .line 693
    .line 694
    move/from16 v10, v20

    .line 695
    .line 696
    move-object/from16 v3, v22

    .line 697
    .line 698
    move-object/from16 v2, v23

    .line 699
    .line 700
    move/from16 v11, v25

    .line 701
    .line 702
    goto/16 :goto_3

    .line 703
    .line 704
    :cond_19
    invoke-static {}, Lp61;->x()V

    .line 705
    .line 706
    .line 707
    :cond_1a
    return-void
.end method

.method public static I(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "Clear"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_1

    .line 8
    .line 9
    const-string p0, "Src"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_2

    .line 14
    .line 15
    const-string p0, "Dst"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const/4 v0, 0x3

    .line 19
    if-ne p0, v0, :cond_3

    .line 20
    .line 21
    const-string p0, "SrcOver"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_3
    const/4 v0, 0x4

    .line 25
    if-ne p0, v0, :cond_4

    .line 26
    .line 27
    const-string p0, "DstOver"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_4
    const/4 v0, 0x5

    .line 31
    if-ne p0, v0, :cond_5

    .line 32
    .line 33
    const-string p0, "SrcIn"

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_5
    const/4 v0, 0x6

    .line 37
    if-ne p0, v0, :cond_6

    .line 38
    .line 39
    const-string p0, "DstIn"

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_6
    const/4 v0, 0x7

    .line 43
    if-ne p0, v0, :cond_7

    .line 44
    .line 45
    const-string p0, "SrcOut"

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_7
    const/16 v0, 0x8

    .line 49
    .line 50
    if-ne p0, v0, :cond_8

    .line 51
    .line 52
    const-string p0, "DstOut"

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_8
    const/16 v0, 0x9

    .line 56
    .line 57
    if-ne p0, v0, :cond_9

    .line 58
    .line 59
    const-string p0, "SrcAtop"

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_9
    const/16 v0, 0xa

    .line 63
    .line 64
    if-ne p0, v0, :cond_a

    .line 65
    .line 66
    const-string p0, "DstAtop"

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_a
    const/16 v0, 0xb

    .line 70
    .line 71
    if-ne p0, v0, :cond_b

    .line 72
    .line 73
    const-string p0, "Xor"

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_b
    const/16 v0, 0xc

    .line 77
    .line 78
    if-ne p0, v0, :cond_c

    .line 79
    .line 80
    const-string p0, "Plus"

    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_c
    const/16 v0, 0xd

    .line 84
    .line 85
    if-ne p0, v0, :cond_d

    .line 86
    .line 87
    const-string p0, "Modulate"

    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_d
    const/16 v0, 0xe

    .line 91
    .line 92
    if-ne p0, v0, :cond_e

    .line 93
    .line 94
    const-string p0, "Screen"

    .line 95
    .line 96
    return-object p0

    .line 97
    :cond_e
    const/16 v0, 0xf

    .line 98
    .line 99
    if-ne p0, v0, :cond_f

    .line 100
    .line 101
    const-string p0, "Overlay"

    .line 102
    .line 103
    return-object p0

    .line 104
    :cond_f
    const/16 v0, 0x10

    .line 105
    .line 106
    if-ne p0, v0, :cond_10

    .line 107
    .line 108
    const-string p0, "Darken"

    .line 109
    .line 110
    return-object p0

    .line 111
    :cond_10
    const/16 v0, 0x11

    .line 112
    .line 113
    if-ne p0, v0, :cond_11

    .line 114
    .line 115
    const-string p0, "Lighten"

    .line 116
    .line 117
    return-object p0

    .line 118
    :cond_11
    const/16 v0, 0x12

    .line 119
    .line 120
    if-ne p0, v0, :cond_12

    .line 121
    .line 122
    const-string p0, "ColorDodge"

    .line 123
    .line 124
    return-object p0

    .line 125
    :cond_12
    const/16 v0, 0x13

    .line 126
    .line 127
    if-ne p0, v0, :cond_13

    .line 128
    .line 129
    const-string p0, "ColorBurn"

    .line 130
    .line 131
    return-object p0

    .line 132
    :cond_13
    const/16 v0, 0x14

    .line 133
    .line 134
    if-ne p0, v0, :cond_14

    .line 135
    .line 136
    const-string p0, "HardLight"

    .line 137
    .line 138
    return-object p0

    .line 139
    :cond_14
    const/16 v0, 0x15

    .line 140
    .line 141
    if-ne p0, v0, :cond_15

    .line 142
    .line 143
    const-string p0, "Softlight"

    .line 144
    .line 145
    return-object p0

    .line 146
    :cond_15
    const/16 v0, 0x16

    .line 147
    .line 148
    if-ne p0, v0, :cond_16

    .line 149
    .line 150
    const-string p0, "Difference"

    .line 151
    .line 152
    return-object p0

    .line 153
    :cond_16
    const/16 v0, 0x17

    .line 154
    .line 155
    if-ne p0, v0, :cond_17

    .line 156
    .line 157
    const-string p0, "Exclusion"

    .line 158
    .line 159
    return-object p0

    .line 160
    :cond_17
    const/16 v0, 0x18

    .line 161
    .line 162
    if-ne p0, v0, :cond_18

    .line 163
    .line 164
    const-string p0, "Multiply"

    .line 165
    .line 166
    return-object p0

    .line 167
    :cond_18
    const/16 v0, 0x19

    .line 168
    .line 169
    if-ne p0, v0, :cond_19

    .line 170
    .line 171
    const-string p0, "Hue"

    .line 172
    .line 173
    return-object p0

    .line 174
    :cond_19
    const/16 v0, 0x1a

    .line 175
    .line 176
    if-ne p0, v0, :cond_1a

    .line 177
    .line 178
    const-string p0, "Saturation"

    .line 179
    .line 180
    return-object p0

    .line 181
    :cond_1a
    const/16 v0, 0x1b

    .line 182
    .line 183
    if-ne p0, v0, :cond_1b

    .line 184
    .line 185
    const-string p0, "Color"

    .line 186
    .line 187
    return-object p0

    .line 188
    :cond_1b
    const/16 v0, 0x1c

    .line 189
    .line 190
    if-ne p0, v0, :cond_1c

    .line 191
    .line 192
    const-string p0, "Luminosity"

    .line 193
    .line 194
    return-object p0

    .line 195
    :cond_1c
    const-string p0, "Unknown"

    .line 196
    .line 197
    return-object p0
.end method

.method public static a(IF)Lwe;
    .locals 10

    .line 1
    and-int/lit8 p0, p0, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    move p1, v0

    .line 7
    :cond_0
    new-instance v1, Lwe;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    new-instance v4, Lxe;

    .line 14
    .line 15
    invoke-direct {v4, p1}, Lxe;-><init>(F)V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lk30;->m:Le34;

    .line 19
    .line 20
    const-wide/high16 v5, -0x8000000000000000L

    .line 21
    .line 22
    const-wide/high16 v7, -0x8000000000000000L

    .line 23
    .line 24
    const/4 v9, 0x0

    .line 25
    invoke-direct/range {v1 .. v9}, Lwe;-><init>(Le34;Ljava/lang/Object;Lbf;JJZ)V

    .line 26
    .line 27
    .line 28
    return-object v1
.end method

.method public static final b(Lfo3;Lnd2;Lag1;I)V
    .locals 16

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move-object/from16 v7, p2

    .line 6
    .line 7
    move/from16 v8, p3

    .line 8
    .line 9
    sget-object v0, Lqj0;->a:Lka0;

    .line 10
    .line 11
    const v1, -0x3a448173    # -5999.819f

    .line 12
    .line 13
    .line 14
    invoke-virtual {v7, v1}, Lag1;->X(I)Lag1;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v1, v8, 0x6

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v7, v2}, Lag1;->f(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x2

    .line 30
    :goto_0
    or-int/2addr v1, v8

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v1, v8

    .line 33
    :goto_1
    and-int/lit8 v3, v8, 0x30

    .line 34
    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    invoke-virtual {v7, v6}, Lag1;->f(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    const/16 v3, 0x20

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/16 v3, 0x10

    .line 47
    .line 48
    :goto_2
    or-int/2addr v1, v3

    .line 49
    :cond_3
    and-int/lit16 v3, v8, 0x180

    .line 50
    .line 51
    if-nez v3, :cond_5

    .line 52
    .line 53
    invoke-virtual {v7, v0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    const/16 v0, 0x100

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_4
    const/16 v0, 0x80

    .line 63
    .line 64
    :goto_3
    or-int/2addr v1, v0

    .line 65
    :cond_5
    and-int/lit16 v0, v1, 0x93

    .line 66
    .line 67
    const/16 v3, 0x92

    .line 68
    .line 69
    const/4 v9, 0x1

    .line 70
    const/4 v10, 0x0

    .line 71
    if-eq v0, v3, :cond_6

    .line 72
    .line 73
    move v0, v9

    .line 74
    goto :goto_4

    .line 75
    :cond_6
    move v0, v10

    .line 76
    :goto_4
    and-int/2addr v1, v9

    .line 77
    invoke-virtual {v7, v1, v0}, Lag1;->N(IZ)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_11

    .line 82
    .line 83
    const v0, 0x7f10027b

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v7}, Ltv4;->y(ILag1;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v7}, Lag1;->K()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sget-object v1, Lrb0;->a:Lbx3;

    .line 95
    .line 96
    if-ne v0, v1, :cond_7

    .line 97
    .line 98
    new-instance v0, Lm41;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 101
    .line 102
    .line 103
    new-instance v1, Ljava/lang/Object;

    .line 104
    .line 105
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object v1, v0, Lm41;->a:Ljava/lang/Object;

    .line 109
    .line 110
    new-instance v1, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-object v1, v0, Lm41;->b:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v7, v0}, Lag1;->g0(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :cond_7
    move-object v3, v0

    .line 121
    check-cast v3, Lm41;

    .line 122
    .line 123
    iget-object v0, v3, Lm41;->a:Ljava/lang/Object;

    .line 124
    .line 125
    iget-object v11, v3, Lm41;->b:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-static {v2, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_d

    .line 132
    .line 133
    const v0, 0x55f170b1

    .line 134
    .line 135
    .line 136
    invoke-virtual {v7, v0}, Lag1;->W(I)V

    .line 137
    .line 138
    .line 139
    iput-object v2, v3, Lm41;->a:Ljava/lang/Object;

    .line 140
    .line 141
    new-instance v0, Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    move v5, v10

    .line 155
    :goto_5
    if-ge v5, v1, :cond_8

    .line 156
    .line 157
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v12

    .line 161
    check-cast v12, Ll41;

    .line 162
    .line 163
    iget-object v12, v12, Ll41;->a:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v12, Lfo3;

    .line 166
    .line 167
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    add-int/lit8 v5, v5, 0x1

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-nez v0, :cond_9

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    :cond_9
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 188
    .line 189
    .line 190
    new-instance v12, Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    move v5, v10

    .line 204
    :goto_6
    if-ge v5, v0, :cond_b

    .line 205
    .line 206
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v13

    .line 210
    if-eqz v13, :cond_a

    .line 211
    .line 212
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 216
    .line 217
    goto :goto_6

    .line 218
    :cond_b
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 219
    .line 220
    .line 221
    move-result v13

    .line 222
    move v14, v10

    .line 223
    :goto_7
    if-ge v14, v13, :cond_c

    .line 224
    .line 225
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    move-object v1, v0

    .line 230
    check-cast v1, Lfo3;

    .line 231
    .line 232
    new-instance v15, Ll41;

    .line 233
    .line 234
    new-instance v0, Le02;

    .line 235
    .line 236
    const/4 v5, 0x1

    .line 237
    invoke-direct/range {v0 .. v5}, Le02;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 238
    .line 239
    .line 240
    const v5, -0x745f45a5

    .line 241
    .line 242
    .line 243
    invoke-static {v5, v0, v7}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-direct {v15, v1, v0}, Ll41;-><init>(Lfo3;Lka0;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    add-int/lit8 v14, v14, 0x1

    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_c
    invoke-virtual {v7, v10}, Lag1;->p(Z)V

    .line 257
    .line 258
    .line 259
    goto :goto_8

    .line 260
    :cond_d
    const v0, 0x560fffd5

    .line 261
    .line 262
    .line 263
    invoke-virtual {v7, v0}, Lag1;->W(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v7, v10}, Lag1;->p(Z)V

    .line 267
    .line 268
    .line 269
    :goto_8
    sget-object v0, Lmj1;->o:Lcw;

    .line 270
    .line 271
    invoke-static {v0, v10}, Lqx;->d(Lcw;Z)Ldb2;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    iget-wide v4, v7, Lag1;->T:J

    .line 276
    .line 277
    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    invoke-virtual {v7}, Lag1;->l()Lhu2;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    invoke-static {v7, v6}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    sget-object v12, Llb0;->c:Lkb0;

    .line 290
    .line 291
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    sget-object v12, Lkb0;->b:Lic0;

    .line 295
    .line 296
    invoke-virtual {v7}, Lag1;->Z()V

    .line 297
    .line 298
    .line 299
    iget-boolean v13, v7, Lag1;->S:Z

    .line 300
    .line 301
    if-eqz v13, :cond_e

    .line 302
    .line 303
    invoke-virtual {v7, v12}, Lag1;->k(Lne1;)V

    .line 304
    .line 305
    .line 306
    goto :goto_9

    .line 307
    :cond_e
    invoke-virtual {v7}, Lag1;->j0()V

    .line 308
    .line 309
    .line 310
    :goto_9
    sget-object v12, Lkb0;->f:Lfd;

    .line 311
    .line 312
    invoke-static {v12, v7, v0}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    sget-object v0, Lkb0;->e:Lfd;

    .line 316
    .line 317
    invoke-static {v0, v7, v4}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    sget-object v1, Lkb0;->g:Lfd;

    .line 325
    .line 326
    invoke-static {v1, v7, v0}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    sget-object v0, Lkb0;->h:Ll9;

    .line 330
    .line 331
    invoke-static {v7, v0}, Lht4;->y(Lag1;Lpe1;)V

    .line 332
    .line 333
    .line 334
    sget-object v0, Lkb0;->d:Lfd;

    .line 335
    .line 336
    invoke-static {v0, v7, v5}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v7}, Lag1;->w()Lc33;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    if-eqz v0, :cond_10

    .line 344
    .line 345
    iget v1, v0, Lc33;->b:I

    .line 346
    .line 347
    or-int/2addr v1, v9

    .line 348
    iput v1, v0, Lc33;->b:I

    .line 349
    .line 350
    iput-object v0, v3, Lm41;->c:Lc33;

    .line 351
    .line 352
    const v0, -0x708b5fa1

    .line 353
    .line 354
    .line 355
    invoke-virtual {v7, v0}, Lag1;->W(I)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    move v1, v10

    .line 363
    :goto_a
    if-ge v1, v0, :cond_f

    .line 364
    .line 365
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    check-cast v3, Ll41;

    .line 370
    .line 371
    iget-object v4, v3, Ll41;->a:Ljava/lang/Object;

    .line 372
    .line 373
    check-cast v4, Lfo3;

    .line 374
    .line 375
    iget-object v3, v3, Ll41;->b:Lka0;

    .line 376
    .line 377
    const v5, 0x4efa0ca5

    .line 378
    .line 379
    .line 380
    invoke-virtual {v7, v5, v4}, Lag1;->U(ILjava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    new-instance v5, Leo3;

    .line 384
    .line 385
    invoke-direct {v5, v4, v10}, Leo3;-><init>(Lfo3;I)V

    .line 386
    .line 387
    .line 388
    const v4, -0x70e0f892

    .line 389
    .line 390
    .line 391
    invoke-static {v4, v5, v7}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    const/4 v5, 0x6

    .line 396
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 397
    .line 398
    .line 399
    move-result-object v5

    .line 400
    invoke-virtual {v3, v4, v7, v5}, Lka0;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v7, v10}, Lag1;->p(Z)V

    .line 404
    .line 405
    .line 406
    add-int/lit8 v1, v1, 0x1

    .line 407
    .line 408
    goto :goto_a

    .line 409
    :cond_f
    invoke-virtual {v7, v10}, Lag1;->p(Z)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v7, v9}, Lag1;->p(Z)V

    .line 413
    .line 414
    .line 415
    goto :goto_b

    .line 416
    :cond_10
    const-string v0, "no recompose scope found"

    .line 417
    .line 418
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    return-void

    .line 422
    :cond_11
    invoke-virtual {v7}, Lag1;->Q()V

    .line 423
    .line 424
    .line 425
    :goto_b
    invoke-virtual {v7}, Lag1;->r()Lc33;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    if-eqz v0, :cond_12

    .line 430
    .line 431
    new-instance v1, Lia0;

    .line 432
    .line 433
    const/4 v3, 0x3

    .line 434
    invoke-direct {v1, v8, v3, v2, v6}, Lia0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    iput-object v1, v0, Lc33;->d:Ldf1;

    .line 438
    .line 439
    :cond_12
    return-void
.end method

.method public static final c(I)J
    .locals 2

    .line 1
    int-to-long v0, p0

    .line 2
    const/16 p0, 0x20

    .line 3
    .line 4
    shl-long/2addr v0, p0

    .line 5
    sget p0, Lnx1;->p:I

    .line 6
    .line 7
    return-wide v0
.end method

.method public static final d(FFFFJ)Lka3;
    .locals 17

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long v1, p4, v0

    .line 4
    .line 5
    long-to-int v1, v1

    .line 6
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-wide v2, 0xffffffffL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    and-long v4, p4, v2

    .line 16
    .line 17
    long-to-int v4, v4

    .line 18
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    int-to-long v5, v1

    .line 27
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    int-to-long v7, v1

    .line 32
    shl-long v0, v5, v0

    .line 33
    .line 34
    and-long/2addr v2, v7

    .line 35
    or-long v9, v0, v2

    .line 36
    .line 37
    new-instance v4, Lka3;

    .line 38
    .line 39
    move-wide v11, v9

    .line 40
    move-wide v13, v9

    .line 41
    move-wide v15, v9

    .line 42
    move/from16 v5, p0

    .line 43
    .line 44
    move/from16 v6, p1

    .line 45
    .line 46
    move/from16 v7, p2

    .line 47
    .line 48
    move/from16 v8, p3

    .line 49
    .line 50
    invoke-direct/range {v4 .. v16}, Lka3;-><init>(FFFFJJJJ)V

    .line 51
    .line 52
    .line 53
    return-object v4
.end method

.method public static final e(Lio3;Lnd2;Lff1;Lag1;I)V
    .locals 8

    .line 1
    const v0, -0x4032f612

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3, v0}, Lag1;->X(I)Lag1;

    .line 5
    .line 6
    .line 7
    or-int/lit16 v0, p4, 0x1b0

    .line 8
    .line 9
    and-int/lit16 v1, v0, 0x93

    .line 10
    .line 11
    const/16 v2, 0x92

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    move v1, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    and-int/2addr v0, v3

    .line 20
    invoke-virtual {p3, v0, v1}, Lag1;->N(IZ)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    sget-object p2, Lqj0;->a:Lka0;

    .line 27
    .line 28
    iget-object p1, p0, Lio3;->b:Lws2;

    .line 29
    .line 30
    invoke-virtual {p1}, Lws2;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lfo3;

    .line 35
    .line 36
    sget-object v0, Lkc0;->a:Lis3;

    .line 37
    .line 38
    invoke-virtual {p3, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lw2;

    .line 43
    .line 44
    invoke-virtual {p3, p1}, Lag1;->f(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {p3, v0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    or-int/2addr v1, v2

    .line 53
    invoke-virtual {p3}, Lag1;->K()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    sget-object v1, Lrb0;->a:Lbx3;

    .line 60
    .line 61
    if-ne v2, v1, :cond_2

    .line 62
    .line 63
    :cond_1
    new-instance v2, Ld93;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    const/4 v3, 0x6

    .line 67
    invoke-direct {v2, p1, v0, v1, v3}, Ld93;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, v2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    check-cast v2, Ldf1;

    .line 74
    .line 75
    invoke-static {v2, p3, p1}, Lzf5;->c(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lio3;->b:Lws2;

    .line 79
    .line 80
    invoke-virtual {p1}, Lws2;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lfo3;

    .line 85
    .line 86
    sget-object v0, Lkd2;->b:Lkd2;

    .line 87
    .line 88
    const/16 v1, 0x1b0

    .line 89
    .line 90
    invoke-static {p1, v0, p3, v1}, Lk30;->b(Lfo3;Lnd2;Lag1;I)V

    .line 91
    .line 92
    .line 93
    move-object v4, v0

    .line 94
    :goto_1
    move-object v5, p2

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    invoke-virtual {p3}, Lag1;->Q()V

    .line 97
    .line 98
    .line 99
    move-object v4, p1

    .line 100
    goto :goto_1

    .line 101
    :goto_2
    invoke-virtual {p3}, Lag1;->r()Lc33;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_4

    .line 106
    .line 107
    new-instance v2, Lbt0;

    .line 108
    .line 109
    const/4 v7, 0x7

    .line 110
    move-object v3, p0

    .line 111
    move v6, p4

    .line 112
    invoke-direct/range {v2 .. v7}, Lbt0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 113
    .line 114
    .line 115
    iput-object v2, p1, Lc33;->d:Ldf1;

    .line 116
    .line 117
    :cond_4
    return-void
.end method

.method public static f()Lbu3;
    .locals 2

    .line 1
    new-instance v0, Lbu3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lvu1;-><init>(Ltu1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static final g(Lbq1;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbq1;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lbq1;->d:Z

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static final h(Landroid/webkit/WebView;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-string v3, "; wv"

    .line 23
    .line 24
    const-string v4, ""

    .line 25
    .line 26
    invoke-static {v2, v3, v4}, Lgt3;->w0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "Version/4.0 "

    .line 31
    .line 32
    invoke-static {v2, v3, v4}, Lgt3;->w0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static final i(Lvf1;)Lvf1;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    move-object p0, v0

    .line 6
    :goto_0
    if-eqz p0, :cond_1

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_1
    const-string p0, "Inconsistent composition"

    .line 10
    .line 11
    invoke-static {p0}, Lwb0;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lp61;->q()V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static final j(Lh22;Lfh0;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Lx22;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lx22;

    .line 7
    .line 8
    iget v1, v0, Lx22;->t:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lx22;->t:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lx22;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lfh0;-><init>(Ldh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lx22;->s:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lx22;->t:I

    .line 28
    .line 29
    sget-object v2, Lt64;->a:Lt64;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    if-ne v1, v3, :cond_1

    .line 35
    .line 36
    iget-object p0, v0, Lx22;->r:Lw33;

    .line 37
    .line 38
    iget-object v0, v0, Lx22;->q:Lh22;

    .line 39
    .line 40
    :try_start_0
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    return-object p0

    .line 53
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    move-object p1, p0

    .line 57
    check-cast p1, Lr22;

    .line 58
    .line 59
    iget-object p1, p1, Lr22;->d:Lg22;

    .line 60
    .line 61
    sget-object v1, Lg22;->q:Lg22;

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-ltz p1, :cond_3

    .line 68
    .line 69
    return-object v2

    .line 70
    :cond_3
    new-instance p1, Lw33;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 73
    .line 74
    .line 75
    :try_start_1
    iput-object p0, v0, Lx22;->q:Lh22;

    .line 76
    .line 77
    iput-object p1, v0, Lx22;->r:Lw33;

    .line 78
    .line 79
    iput v3, v0, Lx22;->t:I

    .line 80
    .line 81
    new-instance v1, Lo20;

    .line 82
    .line 83
    invoke-static {v0}, Ldm0;->A(Ldh0;)Ldh0;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {v1, v3, v0}, Lo20;-><init>(ILdh0;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lo20;->x()V

    .line 91
    .line 92
    .line 93
    new-instance v0, Ly22;

    .line 94
    .line 95
    invoke-direct {v0, v1}, Ly22;-><init>(Lo20;)V

    .line 96
    .line 97
    .line 98
    iput-object v0, p1, Lw33;->n:Ljava/lang/Object;

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lh22;->a(Lo22;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Lo20;->v()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    sget-object v1, Lri0;->n:Lri0;

    .line 108
    .line 109
    if-ne v0, v1, :cond_4

    .line 110
    .line 111
    return-object v1

    .line 112
    :cond_4
    move-object v0, p0

    .line 113
    move-object p0, p1

    .line 114
    :goto_1
    iget-object p0, p0, Lw33;->n:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p0, Lo22;

    .line 117
    .line 118
    if-eqz p0, :cond_5

    .line 119
    .line 120
    invoke-virtual {v0, p0}, Lh22;->b(Lo22;)V

    .line 121
    .line 122
    .line 123
    :cond_5
    return-object v2

    .line 124
    :catchall_1
    move-exception v0

    .line 125
    move-object v4, v0

    .line 126
    move-object v0, p0

    .line 127
    move-object p0, p1

    .line 128
    move-object p1, v4

    .line 129
    :goto_2
    iget-object p0, p0, Lw33;->n:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast p0, Lo22;

    .line 132
    .line 133
    if-eqz p0, :cond_6

    .line 134
    .line 135
    invoke-virtual {v0, p0}, Lh22;->b(Lo22;)V

    .line 136
    .line 137
    .line 138
    :cond_6
    throw p1
.end method

.method public static final k(Lbq1;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbq1;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lbq1;->d:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static l(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lln3;Lrd3;Lln3;Z)Landroid/graphics/Bitmap;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v5, p4

    .line 8
    .line 9
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 10
    .line 11
    const-wide v8, 0xffffffffL

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const/16 v10, 0x20

    .line 17
    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    move-object v2, v0

    .line 21
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 24
    .line 25
    .line 26
    move-result-object v11

    .line 27
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-static/range {p1 .. p1}, Ltv4;->D(Landroid/graphics/Bitmap$Config;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object/from16 v3, p1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 44
    .line 45
    :goto_1
    if-ne v2, v3, :cond_3

    .line 46
    .line 47
    if-eqz p5, :cond_2

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-static {v2, v3, v1, v4, v5}, Lc75;->r(IILln3;Lrd3;Lln3;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    shr-long v6, v2, v10

    .line 63
    .line 64
    long-to-int v6, v6

    .line 65
    and-long/2addr v2, v8

    .line 66
    long-to-int v2, v2

    .line 67
    move v5, v2

    .line 68
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    move v7, v6

    .line 77
    move-object v6, v4

    .line 78
    move v4, v7

    .line 79
    move-object/from16 v7, p4

    .line 80
    .line 81
    invoke-static/range {v2 .. v7}, Lc75;->s(IIIILrd3;Lln3;)D

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    move-object v4, v6

    .line 86
    move-object v5, v7

    .line 87
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 88
    .line 89
    cmpg-double v2, v2, v6

    .line 90
    .line 91
    if-nez v2, :cond_3

    .line 92
    .line 93
    :goto_2
    return-object v11

    .line 94
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-static {v6}, Lo94;->b(Landroid/graphics/drawable/Drawable;)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    const/16 v2, 0x200

    .line 103
    .line 104
    if-lez v0, :cond_4

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_4
    move v0, v2

    .line 108
    :goto_3
    invoke-static {v6}, Lo94;->a(Landroid/graphics/drawable/Drawable;)I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-lez v3, :cond_5

    .line 113
    .line 114
    move v2, v3

    .line 115
    :cond_5
    invoke-static {v0, v2, v1, v4, v5}, Lc75;->r(IILln3;Lrd3;Lln3;)J

    .line 116
    .line 117
    .line 118
    move-result-wide v11

    .line 119
    shr-long v13, v11, v10

    .line 120
    .line 121
    long-to-int v1, v13

    .line 122
    and-long v7, v11, v8

    .line 123
    .line 124
    long-to-int v3, v7

    .line 125
    move v15, v2

    .line 126
    move v2, v1

    .line 127
    move v1, v15

    .line 128
    invoke-static/range {v0 .. v5}, Lc75;->s(IIIILrd3;Lln3;)D

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    int-to-double v4, v0

    .line 133
    mul-double/2addr v4, v2

    .line 134
    invoke-static {v4, v5}, Lis0;->U(D)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    int-to-double v4, v1

    .line 139
    mul-double/2addr v2, v4

    .line 140
    invoke-static {v2, v3}, Lis0;->U(D)I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz p1, :cond_7

    .line 145
    .line 146
    invoke-static/range {p1 .. p1}, Ltv4;->D(Landroid/graphics/Bitmap$Config;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_6

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_6
    move-object/from16 v2, p1

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_7
    :goto_4
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 157
    .line 158
    :goto_5
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 167
    .line 168
    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 169
    .line 170
    iget v7, v3, Landroid/graphics/Rect;->right:I

    .line 171
    .line 172
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 173
    .line 174
    const/4 v8, 0x0

    .line 175
    invoke-virtual {v6, v8, v8, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 176
    .line 177
    .line 178
    new-instance v0, Landroid/graphics/Canvas;

    .line 179
    .line 180
    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v6, v4, v5, v7, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 187
    .line 188
    .line 189
    return-object v2
.end method

.method public static m(Lwe;F)Lwe;
    .locals 10

    .line 1
    iget-object v0, p0, Lwe;->p:Lbf;

    .line 2
    .line 3
    check-cast v0, Lxe;

    .line 4
    .line 5
    iget v0, v0, Lxe;->a:F

    .line 6
    .line 7
    iget-wide v5, p0, Lwe;->q:J

    .line 8
    .line 9
    iget-wide v7, p0, Lwe;->r:J

    .line 10
    .line 11
    iget-boolean v9, p0, Lwe;->s:Z

    .line 12
    .line 13
    new-instance v1, Lwe;

    .line 14
    .line 15
    iget-object v2, p0, Lwe;->n:Le34;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    new-instance v4, Lxe;

    .line 22
    .line 23
    invoke-direct {v4, v0}, Lxe;-><init>(F)V

    .line 24
    .line 25
    .line 26
    invoke-direct/range {v1 .. v9}, Lwe;-><init>(Le34;Ljava/lang/Object;Lbf;JJZ)V

    .line 27
    .line 28
    .line 29
    return-object v1
.end method

.method public static final n(Lsb;DDDDDDDZZ)V
    .locals 50

    .line 1
    move-wide/from16 v1, p1

    .line 2
    .line 3
    move-wide/from16 v5, p5

    .line 4
    .line 5
    move-wide/from16 v3, p9

    .line 6
    .line 7
    const-wide v7, 0x4066800000000000L    # 180.0

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    div-double v7, p13, v7

    .line 13
    .line 14
    const-wide v9, 0x400921fb54442d18L    # Math.PI

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    mul-double/2addr v7, v9

    .line 20
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 21
    .line 22
    .line 23
    move-result-wide v11

    .line 24
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide v13

    .line 28
    mul-double v15, v1, v11

    .line 29
    .line 30
    mul-double v17, p3, v13

    .line 31
    .line 32
    add-double v17, v17, v15

    .line 33
    .line 34
    div-double v17, v17, v3

    .line 35
    .line 36
    move-wide v15, v9

    .line 37
    neg-double v9, v1

    .line 38
    mul-double/2addr v9, v13

    .line 39
    mul-double v19, p3, v11

    .line 40
    .line 41
    add-double v19, v19, v9

    .line 42
    .line 43
    div-double v19, v19, p11

    .line 44
    .line 45
    mul-double v9, v5, v11

    .line 46
    .line 47
    mul-double v21, p7, v13

    .line 48
    .line 49
    add-double v21, v21, v9

    .line 50
    .line 51
    div-double v21, v21, v3

    .line 52
    .line 53
    neg-double v9, v5

    .line 54
    mul-double/2addr v9, v13

    .line 55
    mul-double v23, p7, v11

    .line 56
    .line 57
    add-double v23, v23, v9

    .line 58
    .line 59
    div-double v23, v23, p11

    .line 60
    .line 61
    sub-double v9, v17, v21

    .line 62
    .line 63
    sub-double v25, v19, v23

    .line 64
    .line 65
    add-double v27, v17, v21

    .line 66
    .line 67
    const-wide/high16 v29, 0x4000000000000000L    # 2.0

    .line 68
    .line 69
    div-double v27, v27, v29

    .line 70
    .line 71
    add-double v31, v19, v23

    .line 72
    .line 73
    div-double v31, v31, v29

    .line 74
    .line 75
    mul-double v33, v9, v9

    .line 76
    .line 77
    mul-double v35, v25, v25

    .line 78
    .line 79
    add-double v35, v35, v33

    .line 80
    .line 81
    const-wide/16 v33, 0x0

    .line 82
    .line 83
    cmpg-double v0, v35, v33

    .line 84
    .line 85
    if-nez v0, :cond_0

    .line 86
    .line 87
    goto/16 :goto_4

    .line 88
    .line 89
    :cond_0
    const-wide/high16 v37, 0x3ff0000000000000L    # 1.0

    .line 90
    .line 91
    div-double v39, v37, v35

    .line 92
    .line 93
    const-wide/high16 v41, 0x3fd0000000000000L    # 0.25

    .line 94
    .line 95
    sub-double v39, v39, v41

    .line 96
    .line 97
    cmpg-double v0, v39, v33

    .line 98
    .line 99
    if-gez v0, :cond_1

    .line 100
    .line 101
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sqrt(D)D

    .line 102
    .line 103
    .line 104
    move-result-wide v7

    .line 105
    const-wide v9, 0x3ffffff583a53b8eL    # 1.99999

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    div-double/2addr v7, v9

    .line 111
    double-to-float v0, v7

    .line 112
    float-to-double v7, v0

    .line 113
    mul-double v9, v3, v7

    .line 114
    .line 115
    mul-double v11, p11, v7

    .line 116
    .line 117
    move-object/from16 v0, p0

    .line 118
    .line 119
    move-wide/from16 v3, p3

    .line 120
    .line 121
    move-wide/from16 v7, p7

    .line 122
    .line 123
    move-wide/from16 v13, p13

    .line 124
    .line 125
    move/from16 v15, p15

    .line 126
    .line 127
    move/from16 v16, p16

    .line 128
    .line 129
    invoke-static/range {v0 .. v16}, Lk30;->n(Lsb;DDDDDDDZZ)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_1
    move/from16 v0, p16

    .line 134
    .line 135
    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->sqrt(D)D

    .line 136
    .line 137
    .line 138
    move-result-wide v1

    .line 139
    mul-double/2addr v9, v1

    .line 140
    mul-double v1, v1, v25

    .line 141
    .line 142
    move/from16 v5, p15

    .line 143
    .line 144
    if-ne v5, v0, :cond_2

    .line 145
    .line 146
    sub-double v27, v27, v1

    .line 147
    .line 148
    add-double v31, v31, v9

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_2
    add-double v27, v27, v1

    .line 152
    .line 153
    sub-double v31, v31, v9

    .line 154
    .line 155
    :goto_0
    sub-double v1, v19, v31

    .line 156
    .line 157
    sub-double v5, v17, v27

    .line 158
    .line 159
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    .line 160
    .line 161
    .line 162
    move-result-wide v1

    .line 163
    sub-double v5, v23, v31

    .line 164
    .line 165
    sub-double v9, v21, v27

    .line 166
    .line 167
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    .line 168
    .line 169
    .line 170
    move-result-wide v5

    .line 171
    sub-double/2addr v5, v1

    .line 172
    cmpl-double v9, v5, v33

    .line 173
    .line 174
    if-ltz v9, :cond_3

    .line 175
    .line 176
    const/16 v17, 0x1

    .line 177
    .line 178
    move/from16 v10, v17

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_3
    const/4 v10, 0x0

    .line 182
    :goto_1
    if-eq v0, v10, :cond_5

    .line 183
    .line 184
    const-wide v17, 0x401921fb54442d18L    # 6.283185307179586

    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    if-lez v9, :cond_4

    .line 190
    .line 191
    sub-double v5, v5, v17

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_4
    add-double v5, v5, v17

    .line 195
    .line 196
    :cond_5
    :goto_2
    mul-double v27, v27, v3

    .line 197
    .line 198
    mul-double v31, v31, p11

    .line 199
    .line 200
    mul-double v9, v27, v11

    .line 201
    .line 202
    mul-double v17, v31, v13

    .line 203
    .line 204
    sub-double v9, v9, v17

    .line 205
    .line 206
    mul-double v27, v27, v13

    .line 207
    .line 208
    mul-double v31, v31, v11

    .line 209
    .line 210
    add-double v31, v31, v27

    .line 211
    .line 212
    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    .line 213
    .line 214
    mul-double v13, v5, v11

    .line 215
    .line 216
    div-double/2addr v13, v15

    .line 217
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    .line 218
    .line 219
    .line 220
    move-result-wide v13

    .line 221
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    .line 222
    .line 223
    .line 224
    move-result-wide v13

    .line 225
    double-to-int v0, v13

    .line 226
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 227
    .line 228
    .line 229
    move-result-wide v13

    .line 230
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 231
    .line 232
    .line 233
    move-result-wide v7

    .line 234
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 235
    .line 236
    .line 237
    move-result-wide v15

    .line 238
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 239
    .line 240
    .line 241
    move-result-wide v17

    .line 242
    move-wide/from16 p6, v11

    .line 243
    .line 244
    neg-double v11, v3

    .line 245
    mul-double v19, v11, v13

    .line 246
    .line 247
    mul-double v21, v19, v17

    .line 248
    .line 249
    mul-double v23, p11, v7

    .line 250
    .line 251
    mul-double v25, v23, v15

    .line 252
    .line 253
    sub-double v21, v21, v25

    .line 254
    .line 255
    mul-double/2addr v11, v7

    .line 256
    mul-double v17, v17, v11

    .line 257
    .line 258
    mul-double v25, p11, v13

    .line 259
    .line 260
    mul-double v15, v15, v25

    .line 261
    .line 262
    add-double v15, v15, v17

    .line 263
    .line 264
    move-wide/from16 p13, v1

    .line 265
    .line 266
    int-to-double v1, v0

    .line 267
    div-double/2addr v5, v1

    .line 268
    move-wide/from16 v17, p13

    .line 269
    .line 270
    move-wide/from16 v27, v21

    .line 271
    .line 272
    const/4 v1, 0x0

    .line 273
    move-wide/from16 v21, v15

    .line 274
    .line 275
    move-wide/from16 v15, p3

    .line 276
    .line 277
    :goto_3
    if-ge v1, v0, :cond_6

    .line 278
    .line 279
    add-double v33, v17, v5

    .line 280
    .line 281
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sin(D)D

    .line 282
    .line 283
    .line 284
    move-result-wide v35

    .line 285
    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->cos(D)D

    .line 286
    .line 287
    .line 288
    move-result-wide v39

    .line 289
    mul-double v41, v3, v13

    .line 290
    .line 291
    mul-double v41, v41, v39

    .line 292
    .line 293
    add-double v41, v41, v9

    .line 294
    .line 295
    mul-double v43, v23, v35

    .line 296
    .line 297
    move v2, v0

    .line 298
    move/from16 p3, v1

    .line 299
    .line 300
    sub-double v0, v41, v43

    .line 301
    .line 302
    mul-double v41, v3, v7

    .line 303
    .line 304
    mul-double v41, v41, v39

    .line 305
    .line 306
    add-double v41, v41, v31

    .line 307
    .line 308
    mul-double v43, v25, v35

    .line 309
    .line 310
    move/from16 p4, v2

    .line 311
    .line 312
    add-double v2, v43, v41

    .line 313
    .line 314
    mul-double v41, v19, v35

    .line 315
    .line 316
    mul-double v43, v23, v39

    .line 317
    .line 318
    sub-double v41, v41, v43

    .line 319
    .line 320
    mul-double v35, v35, v11

    .line 321
    .line 322
    mul-double v39, v39, v25

    .line 323
    .line 324
    add-double v35, v39, v35

    .line 325
    .line 326
    sub-double v17, v33, v17

    .line 327
    .line 328
    div-double v39, v17, v29

    .line 329
    .line 330
    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->tan(D)D

    .line 331
    .line 332
    .line 333
    move-result-wide v39

    .line 334
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    .line 335
    .line 336
    .line 337
    move-result-wide v17

    .line 338
    const-wide/high16 v43, 0x4008000000000000L    # 3.0

    .line 339
    .line 340
    mul-double v45, v39, v43

    .line 341
    .line 342
    mul-double v45, v45, v39

    .line 343
    .line 344
    add-double v45, v45, p6

    .line 345
    .line 346
    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->sqrt(D)D

    .line 347
    .line 348
    .line 349
    move-result-wide v39

    .line 350
    sub-double v39, v39, v37

    .line 351
    .line 352
    mul-double v39, v39, v17

    .line 353
    .line 354
    div-double v39, v39, v43

    .line 355
    .line 356
    mul-double v27, v27, v39

    .line 357
    .line 358
    move-wide/from16 p11, v5

    .line 359
    .line 360
    add-double v4, v27, p1

    .line 361
    .line 362
    mul-double v21, v21, v39

    .line 363
    .line 364
    move-wide/from16 p13, v7

    .line 365
    .line 366
    add-double v6, v21, v15

    .line 367
    .line 368
    mul-double v15, v39, v41

    .line 369
    .line 370
    move-wide/from16 p15, v9

    .line 371
    .line 372
    sub-double v8, v0, v15

    .line 373
    .line 374
    mul-double v39, v39, v35

    .line 375
    .line 376
    move-wide v15, v11

    .line 377
    sub-double v10, v2, v39

    .line 378
    .line 379
    double-to-float v4, v4

    .line 380
    double-to-float v5, v6

    .line 381
    double-to-float v6, v8

    .line 382
    double-to-float v7, v10

    .line 383
    double-to-float v8, v0

    .line 384
    double-to-float v9, v2

    .line 385
    move-object/from16 v10, p0

    .line 386
    .line 387
    iget-object v11, v10, Lsb;->a:Landroid/graphics/Path;

    .line 388
    .line 389
    move/from16 v44, v4

    .line 390
    .line 391
    move/from16 v45, v5

    .line 392
    .line 393
    move/from16 v46, v6

    .line 394
    .line 395
    move/from16 v47, v7

    .line 396
    .line 397
    move/from16 v48, v8

    .line 398
    .line 399
    move/from16 v49, v9

    .line 400
    .line 401
    move-object/from16 v43, v11

    .line 402
    .line 403
    invoke-virtual/range {v43 .. v49}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 404
    .line 405
    .line 406
    add-int/lit8 v4, p3, 0x1

    .line 407
    .line 408
    move-wide/from16 v5, p11

    .line 409
    .line 410
    move-wide/from16 v7, p13

    .line 411
    .line 412
    move-wide/from16 v9, p15

    .line 413
    .line 414
    move-wide/from16 p1, v0

    .line 415
    .line 416
    move v1, v4

    .line 417
    move-wide v11, v15

    .line 418
    move-wide/from16 v17, v33

    .line 419
    .line 420
    move-wide/from16 v21, v35

    .line 421
    .line 422
    move-wide/from16 v27, v41

    .line 423
    .line 424
    move/from16 v0, p4

    .line 425
    .line 426
    move-wide v15, v2

    .line 427
    move-wide/from16 v3, p9

    .line 428
    .line 429
    goto/16 :goto_3

    .line 430
    .line 431
    :cond_6
    :goto_4
    return-void
.end method

.method public static o(Landroid/graphics/Canvas;Z)V
    .locals 11

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lx8;->x(Landroid/graphics/Canvas;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {p0}, Lx8;->z(Landroid/graphics/Canvas;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    sget-boolean v1, Lk30;->y:Z

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_5

    .line 21
    .line 22
    const/16 v1, 0x1c

    .line 23
    .line 24
    const-string v3, "insertInorderBarrier"

    .line 25
    .line 26
    const-string v4, "insertReorderBarrier"

    .line 27
    .line 28
    const-class v5, Landroid/graphics/Canvas;

    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    :try_start_0
    const-class v0, Ljava/lang/Class;

    .line 34
    .line 35
    const-string v1, "getDeclaredMethod"

    .line 36
    .line 37
    const/4 v7, 0x2

    .line 38
    new-array v8, v7, [Ljava/lang/Class;

    .line 39
    .line 40
    const-class v9, Ljava/lang/String;

    .line 41
    .line 42
    const/4 v10, 0x0

    .line 43
    aput-object v9, v8, v10

    .line 44
    .line 45
    new-array v9, v10, [Ljava/lang/Class;

    .line 46
    .line 47
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    aput-object v9, v8, v6

    .line 52
    .line 53
    invoke-virtual {v0, v1, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-array v1, v7, [Ljava/lang/Object;

    .line 58
    .line 59
    aput-object v4, v1, v10

    .line 60
    .line 61
    new-array v4, v10, [Ljava/lang/Class;

    .line 62
    .line 63
    aput-object v4, v1, v6

    .line 64
    .line 65
    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Ljava/lang/reflect/Method;

    .line 70
    .line 71
    sput-object v1, Lk30;->w:Ljava/lang/reflect/Method;

    .line 72
    .line 73
    new-array v1, v7, [Ljava/lang/Object;

    .line 74
    .line 75
    aput-object v3, v1, v10

    .line 76
    .line 77
    new-array v3, v10, [Ljava/lang/Class;

    .line 78
    .line 79
    aput-object v3, v1, v6

    .line 80
    .line 81
    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Ljava/lang/reflect/Method;

    .line 86
    .line 87
    sput-object v0, Lk30;->x:Ljava/lang/reflect/Method;

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {v5, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sput-object v0, Lk30;->w:Ljava/lang/reflect/Method;

    .line 95
    .line 96
    invoke-virtual {v5, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    sput-object v0, Lk30;->x:Ljava/lang/reflect/Method;

    .line 101
    .line 102
    :goto_0
    sget-object v0, Lk30;->w:Ljava/lang/reflect/Method;

    .line 103
    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    invoke-virtual {v0, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 107
    .line 108
    .line 109
    :cond_3
    sget-object v0, Lk30;->x:Ljava/lang/reflect/Method;

    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    invoke-virtual {v0, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    :catch_0
    :cond_4
    sput-boolean v6, Lk30;->y:Z

    .line 117
    .line 118
    :cond_5
    if-eqz p1, :cond_6

    .line 119
    .line 120
    :try_start_1
    sget-object v0, Lk30;->w:Ljava/lang/reflect/Method;

    .line 121
    .line 122
    if-eqz v0, :cond_6

    .line 123
    .line 124
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    :cond_6
    if-nez p1, :cond_7

    .line 128
    .line 129
    sget-object p1, Lk30;->x:Ljava/lang/reflect/Method;

    .line 130
    .line 131
    if-eqz p1, :cond_7

    .line 132
    .line 133
    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    .line 135
    .line 136
    :catch_1
    :cond_7
    return-void
.end method

.method public static q(Lag1;)Lto0;
    .locals 4

    .line 1
    sget v0, Luq3;->a:F

    .line 2
    .line 3
    sget-object v0, Lkc0;->h:Lis3;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Las0;

    .line 10
    .line 11
    invoke-interface {v0}, Las0;->b()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0, v1}, Lag1;->c(F)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0}, Lag1;->K()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sget-object v3, Lrb0;->a:Lbx3;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    if-ne v2, v3, :cond_1

    .line 28
    .line 29
    :cond_0
    new-instance v1, Ldd1;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Ldd1;-><init>(Las0;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lsn0;

    .line 35
    .line 36
    invoke-direct {v2, v1}, Lsn0;-><init>(Ldd1;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    check-cast v2, Lsn0;

    .line 43
    .line 44
    invoke-virtual {p0, v2}, Lag1;->f(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p0}, Lag1;->K()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    if-ne v1, v3, :cond_3

    .line 55
    .line 56
    :cond_2
    new-instance v1, Lto0;

    .line 57
    .line 58
    invoke-direct {v1, v2}, Lto0;-><init>(Lsn0;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Lag1;->g0(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    check-cast v1, Lto0;

    .line 65
    .line 66
    return-object v1
.end method

.method public static r(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Ljava/net/InetSocketAddress;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 v0, 0x3a

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static s(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "activity"

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    instance-of v2, p0, Landroid/app/ActivityManager;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    check-cast p0, Landroid/app/ActivityManager;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_2

    .line 37
    .line 38
    :cond_1
    sget-object p0, Lg01;->n:Lg01;

    .line 39
    .line 40
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_4

    .line 54
    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    const/4 v4, 0x0

    .line 75
    move v5, v4

    .line 76
    :cond_5
    :goto_2
    if-ge v5, v3, :cond_6

    .line 77
    .line 78
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    add-int/lit8 v5, v5, 0x1

    .line 83
    .line 84
    move-object v7, v6

    .line 85
    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 86
    .line 87
    iget v7, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 88
    .line 89
    if-ne v7, v0, :cond_5

    .line 90
    .line 91
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 96
    .line 97
    const/16 v2, 0xa

    .line 98
    .line 99
    invoke-static {p0, v2}, Lp70;->a0(Ljava/lang/Iterable;I)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    :goto_3
    if-ge v4, v2, :cond_7

    .line 111
    .line 112
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    add-int/lit8 v4, v4, 0x1

    .line 117
    .line 118
    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 119
    .line 120
    new-instance v5, Lzy2;

    .line 121
    .line 122
    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    iget v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 128
    .line 129
    iget v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 130
    .line 131
    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {v3, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    invoke-direct {v5, v7, v8, v6, v3}, Lzy2;-><init>(IILjava/lang/String;Z)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_7
    return-object v0
.end method

.method public static t(Landroid/content/Context;)Landroid/app/Application;
    .locals 2

    .line 1
    instance-of v0, p0, Landroid/app/Application;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroid/app/Application;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    move-object v0, p0

    .line 9
    :cond_1
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    check-cast v0, Landroid/content/ContextWrapper;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v1, v0, Landroid/app/Application;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast v0, Landroid/app/Application;

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_2
    const-string v0, "Could not find an Application in the given context: "

    .line 27
    .line 28
    invoke-static {p0, v0}, Lq73;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public static final u(Ly84;Lag1;)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p0, :cond_4

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq p0, v1, :cond_3

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq p0, v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-eq p0, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    if-ne p0, v1, :cond_0

    .line 22
    .line 23
    const p0, -0x2c09039f

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p0}, Lag1;->W(I)V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lgy3;->c:Lis3;

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Ln50;

    .line 36
    .line 37
    iget-wide v1, p0, Ln50;->M:J

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lag1;->p(Z)V

    .line 40
    .line 41
    .line 42
    return-wide v1

    .line 43
    :cond_0
    const p0, -0x2c091380

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p0}, Lag1;->W(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lag1;->p(Z)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lp61;->x()V

    .line 53
    .line 54
    .line 55
    const-wide/16 p0, 0x0

    .line 56
    .line 57
    return-wide p0

    .line 58
    :cond_1
    const p0, -0x2c08e9bf

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p0}, Lag1;->W(I)V

    .line 62
    .line 63
    .line 64
    sget-object p0, Lgy3;->c:Lis3;

    .line 65
    .line 66
    invoke-virtual {p1, p0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Ln50;

    .line 71
    .line 72
    iget-wide v1, p0, Ln50;->M:J

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lag1;->p(Z)V

    .line 75
    .line 76
    .line 77
    return-wide v1

    .line 78
    :cond_2
    const p0, -0x2c08f19d

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p0}, Lag1;->W(I)V

    .line 82
    .line 83
    .line 84
    sget-object p0, Lwa2;->a:Lis3;

    .line 85
    .line 86
    invoke-virtual {p1, p0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    check-cast p0, Lua2;

    .line 91
    .line 92
    iget-object p0, p0, Lua2;->a:Ly70;

    .line 93
    .line 94
    iget-wide v1, p0, Ly70;->f:J

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lag1;->p(Z)V

    .line 97
    .line 98
    .line 99
    return-wide v1

    .line 100
    :cond_3
    const p0, -0x2c08fafe

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p0}, Lag1;->W(I)V

    .line 104
    .line 105
    .line 106
    sget-object p0, Lwa2;->a:Lis3;

    .line 107
    .line 108
    invoke-virtual {p1, p0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    check-cast p0, Lua2;

    .line 113
    .line 114
    iget-object p0, p0, Lua2;->a:Ly70;

    .line 115
    .line 116
    iget-wide v1, p0, Ly70;->j:J

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Lag1;->p(Z)V

    .line 119
    .line 120
    .line 121
    return-wide v1

    .line 122
    :cond_4
    const p0, -0x2c090b7f

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p0}, Lag1;->W(I)V

    .line 126
    .line 127
    .line 128
    sget-object p0, Lwa2;->a:Lis3;

    .line 129
    .line 130
    invoke-virtual {p1, p0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    check-cast p0, Lua2;

    .line 135
    .line 136
    iget-object p0, p0, Lua2;->a:Ly70;

    .line 137
    .line 138
    iget-wide v1, p0, Ly70;->a:J

    .line 139
    .line 140
    invoke-virtual {p1, v0}, Lag1;->p(Z)V

    .line 141
    .line 142
    .line 143
    return-wide v1
.end method

.method public static final v(Ly84;)Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p0, v0, :cond_3

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq p0, v0, :cond_2

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    if-eq p0, v0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const p0, 0x7f080126

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1
    const p0, 0x7f080110

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_2
    const p0, 0x7f0800cb

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_3
    const p0, 0x7f080137

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public static final w(Ljo1;Li3;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ljo1;->r:Lh41;

    .line 2
    .line 3
    iget-object v0, v0, Lh41;->a:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Ljo1;->t:Lho1;

    .line 12
    .line 13
    iget-object p0, p0, Lho1;->n:Lh41;

    .line 14
    .line 15
    iget-object p0, p0, Lh41;->a:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    iget-object p0, p1, Li3;->a:Ljava/lang/Object;

    .line 24
    .line 25
    :cond_0
    return-object p0

    .line 26
    :cond_1
    return-object v0
.end method

.method public static final x(Ler2;Li3;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Ler2;->j:Lh41;

    .line 2
    .line 3
    iget-object p0, p0, Lh41;->a:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    iget-object p0, p1, Li3;->a:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    return-object p0
.end method

.method public static y(Landroid/content/Context;)Lzy2;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p0}, Lk30;->s(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :cond_0
    if-ge v3, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    move-object v5, v4

    .line 27
    check-cast v5, Lzy2;

    .line 28
    .line 29
    iget v5, v5, Lzy2;->b:I

    .line 30
    .line 31
    if-ne v5, v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v4, 0x0

    .line 35
    :goto_0
    check-cast v4, Lzy2;

    .line 36
    .line 37
    if-nez v4, :cond_5

    .line 38
    .line 39
    new-instance p0, Lzy2;

    .line 40
    .line 41
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    .line 43
    const/16 v3, 0x21

    .line 44
    .line 45
    if-le v1, v3, :cond_2

    .line 46
    .line 47
    invoke-static {}, Lc3;->i()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/16 v3, 0x1c

    .line 56
    .line 57
    if-lt v1, v3, :cond_3

    .line 58
    .line 59
    invoke-static {}, Lfx2;->l()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-static {}, Lcom/google/android/gms/common/util/ProcessUtils;->getMyProcessName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    const-string v1, ""

    .line 74
    .line 75
    :goto_1
    invoke-direct {p0, v0, v2, v1, v2}, Lzy2;-><init>(IILjava/lang/String;Z)V

    .line 76
    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_5
    return-object v4
.end method

.method public static final z(Lka3;)Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lka3;->e:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    ushr-long v2, v0, v2

    .line 6
    .line 7
    const-wide v4, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    and-long/2addr v4, v0

    .line 13
    cmp-long v2, v2, v4

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    iget-wide v2, p0, Lka3;->f:J

    .line 18
    .line 19
    cmp-long v2, v0, v2

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    iget-wide v2, p0, Lka3;->g:J

    .line 24
    .line 25
    cmp-long v2, v0, v2

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    iget-wide v2, p0, Lka3;->h:J

    .line 30
    .line 31
    cmp-long p0, v0, v2

    .line 32
    .line 33
    if-nez p0, :cond_0

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    return p0
.end method


# virtual methods
.method public final p(Lkh;Lxn3;Ll53;Lar2;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lk30;->a:Lbr2;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lbr2;->Q0(Lkh;Lxn3;Ll53;Lar2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

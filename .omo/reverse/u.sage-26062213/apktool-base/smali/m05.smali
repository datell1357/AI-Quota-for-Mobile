.class public final Lm05;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[C

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:[B

.field public final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 9

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :goto_0
    array-length v5, p2

    .line 12
    const/4 v6, 0x1

    .line 13
    if-ge v4, v5, :cond_4

    .line 14
    .line 15
    aget-char v5, p2, v4

    .line 16
    .line 17
    if-ge v5, v0, :cond_0

    .line 18
    .line 19
    move v7, v6

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    move v7, v3

    .line 22
    :goto_1
    const/4 v8, 0x0

    .line 23
    if-eqz v7, :cond_3

    .line 24
    .line 25
    aget-byte v7, v1, v5

    .line 26
    .line 27
    if-ne v7, v2, :cond_1

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    move v6, v3

    .line 31
    :goto_2
    if-eqz v6, :cond_2

    .line 32
    .line 33
    int-to-byte v6, v4

    .line 34
    aput-byte v6, v1, v5

    .line 35
    .line 36
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string p1, "Duplicate character: %s"

    .line 48
    .line 49
    invoke-static {p1, p0}, Llu4;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v8

    .line 57
    :cond_3
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string p1, "Non-ASCII character: %s"

    .line 66
    .line 67
    invoke-static {p1, p0}, Llu4;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v8

    .line 75
    :cond_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lm05;->a:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    iput-object p2, p0, Lm05;->b:[C

    .line 84
    .line 85
    :try_start_0
    array-length p1, p2

    .line 86
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 87
    .line 88
    if-lez p1, :cond_7

    .line 89
    .line 90
    sget-object v4, La15;->a:[I

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    aget v0, v4, v0

    .line 97
    .line 98
    packed-switch v0, :pswitch_data_0

    .line 99
    .line 100
    .line 101
    new-instance p0, Ljava/lang/AssertionError;

    .line 102
    .line 103
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :pswitch_0
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    const v4, -0x4afb0ccd

    .line 112
    .line 113
    .line 114
    ushr-int/2addr v4, v0

    .line 115
    rsub-int/lit8 v0, v0, 0x1f

    .line 116
    .line 117
    sub-int/2addr v4, p1

    .line 118
    ushr-int/lit8 v4, v4, 0x1f

    .line 119
    .line 120
    add-int/2addr v0, v4

    .line 121
    goto :goto_3

    .line 122
    :pswitch_1
    add-int/lit8 v0, p1, -0x1

    .line 123
    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    rsub-int/lit8 v0, v0, 0x20

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :pswitch_2
    add-int/lit8 v0, p1, -0x1

    .line 132
    .line 133
    and-int/2addr v0, p1

    .line 134
    if-nez v0, :cond_6

    .line 135
    .line 136
    :pswitch_3
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    rsub-int/lit8 v0, v0, 0x1f

    .line 141
    .line 142
    :goto_3
    iput v0, p0, Lm05;->d:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    rsub-int/lit8 v4, p2, 0x3

    .line 149
    .line 150
    shl-int v4, v6, v4

    .line 151
    .line 152
    iput v4, p0, Lm05;->e:I

    .line 153
    .line 154
    shr-int p2, v0, p2

    .line 155
    .line 156
    iput p2, p0, Lm05;->f:I

    .line 157
    .line 158
    add-int/2addr p1, v2

    .line 159
    iput p1, p0, Lm05;->c:I

    .line 160
    .line 161
    iput-object v1, p0, Lm05;->g:[B

    .line 162
    .line 163
    new-array p1, v4, [Z

    .line 164
    .line 165
    move p2, v3

    .line 166
    :goto_4
    iget v0, p0, Lm05;->f:I

    .line 167
    .line 168
    if-ge p2, v0, :cond_5

    .line 169
    .line 170
    mul-int/lit8 v0, p2, 0x8

    .line 171
    .line 172
    iget v1, p0, Lm05;->d:I

    .line 173
    .line 174
    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 175
    .line 176
    invoke-static {v0, v1}, Lrg4;->b(II)I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    aput-boolean v6, p1, v0

    .line 181
    .line 182
    add-int/lit8 p2, p2, 0x1

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_5
    iput-boolean v3, p0, Lm05;->h:Z

    .line 186
    .line 187
    return-void

    .line 188
    :catch_0
    move-exception p0

    .line 189
    goto :goto_5

    .line 190
    :cond_6
    :try_start_1
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 191
    .line 192
    const-string p1, "mode was UNNECESSARY, but rounding was necessary"

    .line 193
    .line 194
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw p0

    .line 198
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 199
    .line 200
    const-string p1, "x (0) must be > 0"

    .line 201
    .line 202
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw p0
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    .line 206
    :goto_5
    array-length p1, p2

    .line 207
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 208
    .line 209
    const-string v0, "Illegal alphabet length "

    .line 210
    .line 211
    invoke-static {p1, v0}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-direct {p2, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    .line 217
    .line 218
    throw p2

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lm05;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lm05;

    .line 6
    .line 7
    iget-boolean v0, p0, Lm05;->h:Z

    .line 8
    .line 9
    iget-boolean v1, p1, Lm05;->h:Z

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lm05;->b:[C

    .line 14
    .line 15
    iget-object p1, p1, Lm05;->b:[C

    .line 16
    .line 17
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lm05;->b:[C

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([C)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    iget-boolean p0, p0, Lm05;->h:Z

    .line 9
    .line 10
    if-eq v1, p0, :cond_0

    .line 11
    .line 12
    const/16 p0, 0x4d5

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 p0, 0x4cf

    .line 16
    .line 17
    :goto_0
    add-int/2addr v0, p0

    .line 18
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lm05;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.class public final Ltz0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:I

.field public d:I

.field public final e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lel4;[Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Ltz0;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Ltz0;->b:I

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    iput v1, p0, Ltz0;->c:I

    .line 12
    .line 13
    const-string v1, "context"

    .line 14
    .line 15
    invoke-static {p1, v1}, Lhm4;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Ltz0;->e:Ljava/lang/Object;

    .line 19
    .line 20
    iput v0, p0, Ltz0;->d:I

    .line 21
    .line 22
    iput-object p2, p0, Ltz0;->f:Ljava/lang/Object;

    .line 23
    .line 24
    iput-object p3, p0, Ltz0;->g:Ljava/lang/Object;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Lzc2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ltz0;->a:I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput v0, p0, Ltz0;->b:I

    .line 30
    iput-object p1, p0, Ltz0;->e:Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Ltz0;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ltz0;->a:I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltz0;->e:Ljava/lang/Object;

    new-instance p1, Lpf5;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Lpf5;-><init>(II)V

    iput-object p1, p0, Ltz0;->f:Ljava/lang/Object;

    iput-object p1, p0, Ltz0;->g:Ljava/lang/Object;

    return-void
.end method

.method public static h(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "[INVALID: format="

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, ", type="

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p2, ", value="

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lbh5;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, "]"

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Ltz0;->b:I

    .line 3
    .line 4
    iget-object v0, p0, Ltz0;->e:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lzc2;

    .line 7
    .line 8
    iput-object v0, p0, Ltz0;->f:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Ltz0;->d:I

    .line 12
    .line 13
    return-void
.end method

.method public b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Ltz0;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lzc2;

    .line 4
    .line 5
    iget-object v0, v0, Lzc2;->b:Lz44;

    .line 6
    .line 7
    invoke-virtual {v0}, Lz44;->b()Lxc2;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x6

    .line 12
    invoke-virtual {v0, v1}, Lba2;->b(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v3, v0, Lba2;->q:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    iget v0, v0, Lba2;->n:I

    .line 24
    .line 25
    add-int/2addr v1, v0

    .line 26
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    return v2

    .line 33
    :cond_0
    iget p0, p0, Ltz0;->c:I

    .line 34
    .line 35
    const v0, 0xfe0f

    .line 36
    .line 37
    .line 38
    if-ne p0, v0, :cond_1

    .line 39
    .line 40
    return v2

    .line 41
    :cond_1
    const/4 p0, 0x0

    .line 42
    return p0
.end method

.method public c()V
    .locals 5

    .line 1
    iget v0, p0, Ltz0;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Ltz0;->g:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lpf5;

    .line 9
    .line 10
    iget-object v0, v0, Lpf5;->d:Ljava/util/HashMap;

    .line 11
    .line 12
    iget-object v1, p0, Ltz0;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, [I

    .line 15
    .line 16
    iget v2, p0, Ltz0;->b:I

    .line 17
    .line 18
    aget v2, v1, v2

    .line 19
    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lpf5;

    .line 29
    .line 30
    :cond_1
    :goto_0
    iget v2, v0, Lpf5;->b:I

    .line 31
    .line 32
    iget v3, v0, Lpf5;->a:I

    .line 33
    .line 34
    sub-int/2addr v2, v3

    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    iget v3, p0, Ltz0;->c:I

    .line 38
    .line 39
    if-gt v2, v3, :cond_2

    .line 40
    .line 41
    iget v4, p0, Ltz0;->b:I

    .line 42
    .line 43
    add-int/2addr v4, v2

    .line 44
    iput v4, p0, Ltz0;->b:I

    .line 45
    .line 46
    iput-object v0, p0, Ltz0;->g:Ljava/lang/Object;

    .line 47
    .line 48
    sub-int/2addr v3, v2

    .line 49
    iput v3, p0, Ltz0;->c:I

    .line 50
    .line 51
    if-lez v3, :cond_1

    .line 52
    .line 53
    iget-object v0, v0, Lpf5;->d:Ljava/util/HashMap;

    .line 54
    .line 55
    aget v2, v1, v4

    .line 56
    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lpf5;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    :goto_1
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Ltz0;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lpf5;

    .line 4
    .line 5
    iget-object v0, v0, Lpf5;->c:Lpf5;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object v0, p0, Ltz0;->g:Ljava/lang/Object;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Ltz0;->f:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lpf5;

    .line 15
    .line 16
    iput-object v0, p0, Ltz0;->g:Ljava/lang/Object;

    .line 17
    .line 18
    iget v0, p0, Ltz0;->c:I

    .line 19
    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    iput v0, p0, Ltz0;->c:I

    .line 25
    .line 26
    :cond_1
    iget v0, p0, Ltz0;->d:I

    .line 27
    .line 28
    if-lez v0, :cond_2

    .line 29
    .line 30
    iget v0, p0, Ltz0;->b:I

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    iput v0, p0, Ltz0;->b:I

    .line 35
    .line 36
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ltz0;->c()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public e(Ljava/lang/Object;Lyg5;Lzg5;)V
    .locals 7

    .line 1
    iget-object p0, p0, Ltz0;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    iget v0, p2, Lyg5;->o:I

    .line 6
    .line 7
    iget-object v1, p2, Lyg5;->q:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Ldi0;->F(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x4

    .line 14
    const/4 v3, 0x3

    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x1

    .line 18
    if-eqz v0, :cond_9

    .line 19
    .line 20
    if-eq v0, v6, :cond_7

    .line 21
    .line 22
    if-eq v0, v4, :cond_4

    .line 23
    .line 24
    if-eq v0, v3, :cond_3

    .line 25
    .line 26
    if-ne v0, v2, :cond_2

    .line 27
    .line 28
    instance-of v0, p1, Ljava/lang/Double;

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    instance-of v0, p1, Ljava/lang/Float;

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    instance-of v0, p1, Ljava/math/BigDecimal;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    :cond_0
    :goto_0
    move v0, v6

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v0, v5

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 p0, 0x0

    .line 45
    throw p0

    .line 46
    :cond_3
    instance-of v0, p1, Ljava/lang/Integer;

    .line 47
    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    instance-of v0, p1, Ljava/lang/Long;

    .line 51
    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    instance-of v0, p1, Ljava/lang/Byte;

    .line 55
    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    instance-of v0, p1, Ljava/lang/Short;

    .line 59
    .line 60
    if-nez v0, :cond_0

    .line 61
    .line 62
    instance-of v0, p1, Ljava/math/BigInteger;

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    instance-of v0, p1, Ljava/lang/Character;

    .line 68
    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_5
    instance-of v0, p1, Ljava/lang/Integer;

    .line 73
    .line 74
    if-nez v0, :cond_6

    .line 75
    .line 76
    instance-of v0, p1, Ljava/lang/Byte;

    .line 77
    .line 78
    if-nez v0, :cond_6

    .line 79
    .line 80
    instance-of v0, p1, Ljava/lang/Short;

    .line 81
    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    :cond_6
    move-object v0, p1

    .line 85
    check-cast v0, Ljava/lang/Number;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-static {v0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    goto :goto_1

    .line 96
    :cond_7
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 97
    .line 98
    :goto_1
    if-eqz v0, :cond_8

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_8
    invoke-static {p0, p1, v1}, Ltz0;->h(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_9
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_19

    .line 110
    .line 111
    if-eq v0, v6, :cond_18

    .line 112
    .line 113
    if-eq v0, v4, :cond_15

    .line 114
    .line 115
    if-eq v0, v3, :cond_18

    .line 116
    .line 117
    const/4 v2, 0x5

    .line 118
    if-eq v0, v2, :cond_a

    .line 119
    .line 120
    goto/16 :goto_6

    .line 121
    .line 122
    :cond_a
    invoke-virtual {p3}, Lzg5;->a()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_b

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_b
    iget v0, p3, Lzg5;->a:I

    .line 130
    .line 131
    and-int/lit16 v2, v0, 0x80

    .line 132
    .line 133
    if-eqz v2, :cond_e

    .line 134
    .line 135
    const/4 v3, -0x1

    .line 136
    if-ne v2, v0, :cond_d

    .line 137
    .line 138
    iget v0, p3, Lzg5;->b:I

    .line 139
    .line 140
    if-ne v0, v3, :cond_d

    .line 141
    .line 142
    iget v0, p3, Lzg5;->c:I

    .line 143
    .line 144
    if-eq v0, v3, :cond_c

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_c
    :goto_3
    move-object v0, p3

    .line 148
    goto :goto_5

    .line 149
    :cond_d
    :goto_4
    new-instance v0, Lzg5;

    .line 150
    .line 151
    invoke-direct {v0, v2, v3, v3}, Lzg5;-><init>(III)V

    .line 152
    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_e
    sget-object v0, Lzg5;->e:Lzg5;

    .line 156
    .line 157
    :goto_5
    invoke-virtual {v0, p3}, Lzg5;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_1a

    .line 162
    .line 163
    check-cast p1, Ljava/lang/Number;

    .line 164
    .line 165
    sget-object p2, Lbh5;->a:Ljava/util/Locale;

    .line 166
    .line 167
    invoke-virtual {p3}, Lzg5;->c()Z

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 172
    .line 173
    .line 174
    move-result-wide v0

    .line 175
    instance-of p3, p1, Ljava/lang/Long;

    .line 176
    .line 177
    if-eqz p3, :cond_f

    .line 178
    .line 179
    invoke-static {p0, v0, v1, p2}, Lbh5;->b(Ljava/lang/StringBuilder;JZ)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_f
    instance-of p3, p1, Ljava/lang/Integer;

    .line 184
    .line 185
    if-eqz p3, :cond_10

    .line 186
    .line 187
    const-wide v2, 0xffffffffL

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    and-long/2addr v0, v2

    .line 193
    invoke-static {p0, v0, v1, p2}, Lbh5;->b(Ljava/lang/StringBuilder;JZ)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :cond_10
    instance-of p3, p1, Ljava/lang/Byte;

    .line 198
    .line 199
    if-eqz p3, :cond_11

    .line 200
    .line 201
    const-wide/16 v2, 0xff

    .line 202
    .line 203
    and-long/2addr v0, v2

    .line 204
    invoke-static {p0, v0, v1, p2}, Lbh5;->b(Ljava/lang/StringBuilder;JZ)V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_11
    instance-of p3, p1, Ljava/lang/Short;

    .line 209
    .line 210
    if-eqz p3, :cond_12

    .line 211
    .line 212
    const-wide/32 v2, 0xffff

    .line 213
    .line 214
    .line 215
    and-long/2addr v0, v2

    .line 216
    invoke-static {p0, v0, v1, p2}, Lbh5;->b(Ljava/lang/StringBuilder;JZ)V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :cond_12
    instance-of p3, p1, Ljava/math/BigInteger;

    .line 221
    .line 222
    if-eqz p3, :cond_14

    .line 223
    .line 224
    check-cast p1, Ljava/math/BigInteger;

    .line 225
    .line 226
    const/16 p3, 0x10

    .line 227
    .line 228
    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    if-eqz p2, :cond_13

    .line 233
    .line 234
    sget-object p2, Lbh5;->a:Ljava/util/Locale;

    .line 235
    .line 236
    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    :cond_13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    const-string p1, "unsupported number type: "

    .line 253
    .line 254
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :cond_15
    invoke-virtual {p3}, Lzg5;->a()Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_1a

    .line 267
    .line 268
    instance-of p2, p1, Ljava/lang/Character;

    .line 269
    .line 270
    if-eqz p2, :cond_16

    .line 271
    .line 272
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :cond_16
    check-cast p1, Ljava/lang/Number;

    .line 277
    .line 278
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    ushr-int/lit8 p2, p1, 0x10

    .line 283
    .line 284
    if-nez p2, :cond_17

    .line 285
    .line 286
    int-to-char p1, p1

    .line 287
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :cond_17
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :cond_18
    invoke-virtual {p3}, Lzg5;->a()Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-eqz v0, :cond_1a

    .line 304
    .line 305
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    return-void

    .line 309
    :cond_19
    instance-of v0, p1, Ljava/util/Formattable;

    .line 310
    .line 311
    if-nez v0, :cond_1d

    .line 312
    .line 313
    invoke-virtual {p3}, Lzg5;->a()Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-eqz v0, :cond_1a

    .line 318
    .line 319
    invoke-static {p1}, Lbh5;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    return-void

    .line 327
    :cond_1a
    :goto_6
    invoke-virtual {p3}, Lzg5;->a()Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-nez v0, :cond_1c

    .line 332
    .line 333
    iget-char p2, p2, Lyg5;->n:C

    .line 334
    .line 335
    invoke-virtual {p3}, Lzg5;->c()Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    if-eqz v0, :cond_1b

    .line 340
    .line 341
    const v0, 0xffdf

    .line 342
    .line 343
    .line 344
    and-int/2addr p2, v0

    .line 345
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string v1, "%"

    .line 348
    .line 349
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p3, v0}, Lzg5;->d(Ljava/lang/StringBuilder;)V

    .line 353
    .line 354
    .line 355
    int-to-char p2, p2

    .line 356
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    :cond_1c
    sget-object p2, Lbh5;->a:Ljava/util/Locale;

    .line 364
    .line 365
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    invoke-static {p2, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    return-void

    .line 377
    :cond_1d
    check-cast p1, Ljava/util/Formattable;

    .line 378
    .line 379
    sget-object p2, Lbh5;->a:Ljava/util/Locale;

    .line 380
    .line 381
    iget p2, p3, Lzg5;->a:I

    .line 382
    .line 383
    and-int/lit16 v0, p2, 0xa2

    .line 384
    .line 385
    if-eqz v0, :cond_21

    .line 386
    .line 387
    and-int/lit8 v0, p2, 0x20

    .line 388
    .line 389
    if-eqz v0, :cond_1e

    .line 390
    .line 391
    goto :goto_7

    .line 392
    :cond_1e
    move v6, v5

    .line 393
    :goto_7
    and-int/lit16 v0, p2, 0x80

    .line 394
    .line 395
    if-eqz v0, :cond_1f

    .line 396
    .line 397
    move v0, v4

    .line 398
    goto :goto_8

    .line 399
    :cond_1f
    move v0, v5

    .line 400
    :goto_8
    and-int/2addr p2, v4

    .line 401
    if-eqz p2, :cond_20

    .line 402
    .line 403
    goto :goto_9

    .line 404
    :cond_20
    move v2, v5

    .line 405
    :goto_9
    or-int p2, v6, v0

    .line 406
    .line 407
    or-int v0, p2, v2

    .line 408
    .line 409
    :cond_21
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 410
    .line 411
    .line 412
    move-result p2

    .line 413
    new-instance v1, Ljava/util/Formatter;

    .line 414
    .line 415
    sget-object v2, Lbh5;->a:Ljava/util/Locale;

    .line 416
    .line 417
    invoke-direct {v1, p0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 418
    .line 419
    .line 420
    :try_start_0
    iget v2, p3, Lzg5;->b:I

    .line 421
    .line 422
    iget p3, p3, Lzg5;->c:I

    .line 423
    .line 424
    invoke-interface {p1, v1, v0, v2, p3}, Ljava/util/Formattable;->formatTo(Ljava/util/Formatter;III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .line 426
    .line 427
    return-void

    .line 428
    :catch_0
    move-exception p3

    .line 429
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 430
    .line 431
    .line 432
    :try_start_1
    invoke-virtual {v1}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    .line 433
    .line 434
    .line 435
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 436
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object p2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 440
    goto :goto_a

    .line 441
    :catch_1
    move-exception p2

    .line 442
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 443
    .line 444
    .line 445
    move-result-object p2

    .line 446
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p2

    .line 450
    :goto_a
    invoke-static {p1, p2}, Lbh5;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 455
    .line 456
    .line 457
    :catch_2
    return-void
.end method

.method public f(Lpf5;Ljava/lang/StringBuilder;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lpf5;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lpf5;

    .line 22
    .line 23
    const-string v2, "  "

    .line 24
    .line 25
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, " -> "

    .line 32
    .line 33
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, " [label=\""

    .line 40
    .line 41
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Ltz0;->e:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, [I

    .line 47
    .line 48
    iget v3, v1, Lpf5;->a:I

    .line 49
    .line 50
    iget v4, v1, Lpf5;->b:I

    .line 51
    .line 52
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    array-length v5, v2

    .line 55
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([III)[I

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, "\"]\n"

    .line 71
    .line 72
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v1, p2}, Ltz0;->f(Lpf5;Ljava/lang/StringBuilder;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method public g(IIII)Z
    .locals 2

    .line 1
    if-ltz p1, :cond_3

    .line 2
    .line 3
    if-gez p3, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object p0, p0, Ltz0;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, [I

    .line 9
    .line 10
    array-length v0, p0

    .line 11
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    sub-int v0, p2, p1

    .line 20
    .line 21
    sub-int/2addr p4, p3

    .line 22
    if-ne v0, p4, :cond_3

    .line 23
    .line 24
    move p4, p1

    .line 25
    :goto_0
    if-gt p4, p2, :cond_2

    .line 26
    .line 27
    aget v0, p0, p4

    .line 28
    .line 29
    add-int v1, p3, p4

    .line 30
    .line 31
    sub-int/2addr v1, p1

    .line 32
    aget v1, p0, v1

    .line 33
    .line 34
    if-eq v0, v1, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    add-int/lit8 p4, p4, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 43
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Ltz0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "digraph {\n"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ltz0;->f:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lpf5;

    .line 21
    .line 22
    invoke-virtual {p0, v1, v0}, Ltz0;->f(Lpf5;Ljava/lang/StringBuilder;)V

    .line 23
    .line 24
    .line 25
    const-string p0, "}"

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.class public final Lna3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljl3;


# instance fields
.field public final a:Lci0;

.field public final b:Lci0;

.field public final c:Lci0;

.field public final d:Lci0;


# direct methods
.method public constructor <init>(Lci0;Lci0;Lci0;Lci0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lna3;->a:Lci0;

    .line 5
    .line 6
    iput-object p2, p0, Lna3;->b:Lci0;

    .line 7
    .line 8
    iput-object p3, p0, Lna3;->c:Lci0;

    .line 9
    .line 10
    iput-object p4, p0, Lna3;->d:Lci0;

    .line 11
    .line 12
    return-void
.end method

.method public static b(Lna3;Lci0;Lci0;Lci0;Lci0;I)Lna3;
    .locals 1

    .line 1
    and-int/lit8 v0, p5, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lna3;->a:Lci0;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 v0, p5, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lna3;->b:Lci0;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 v0, p5, 0x4

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lna3;->c:Lci0;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lna3;->d:Lci0;

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance p0, Lna3;

    .line 29
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lna3;-><init>(Lci0;Lci0;Lci0;Lci0;)V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method


# virtual methods
.method public final a(JLhy1;Las0;)Lfl4;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    iget-object v5, v0, Lna3;->a:Lci0;

    .line 10
    .line 11
    invoke-interface {v5, v1, v2, v4}, Lci0;->a(JLas0;)F

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    iget-object v6, v0, Lna3;->b:Lci0;

    .line 16
    .line 17
    invoke-interface {v6, v1, v2, v4}, Lci0;->a(JLas0;)F

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    iget-object v7, v0, Lna3;->c:Lci0;

    .line 22
    .line 23
    invoke-interface {v7, v1, v2, v4}, Lci0;->a(JLas0;)F

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    iget-object v0, v0, Lna3;->d:Lci0;

    .line 28
    .line 29
    invoke-interface {v0, v1, v2, v4}, Lci0;->a(JLas0;)F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {v1, v2}, Lmn3;->b(J)F

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    add-float v8, v5, v0

    .line 38
    .line 39
    cmpl-float v9, v8, v4

    .line 40
    .line 41
    if-lez v9, :cond_0

    .line 42
    .line 43
    div-float v8, v4, v8

    .line 44
    .line 45
    mul-float/2addr v5, v8

    .line 46
    mul-float/2addr v0, v8

    .line 47
    :cond_0
    add-float v8, v6, v7

    .line 48
    .line 49
    cmpl-float v9, v8, v4

    .line 50
    .line 51
    if-lez v9, :cond_1

    .line 52
    .line 53
    div-float/2addr v4, v8

    .line 54
    mul-float/2addr v6, v4

    .line 55
    mul-float/2addr v7, v4

    .line 56
    :cond_1
    const/4 v4, 0x0

    .line 57
    cmpl-float v8, v5, v4

    .line 58
    .line 59
    if-ltz v8, :cond_2

    .line 60
    .line 61
    cmpl-float v8, v6, v4

    .line 62
    .line 63
    if-ltz v8, :cond_2

    .line 64
    .line 65
    cmpl-float v8, v7, v4

    .line 66
    .line 67
    if-ltz v8, :cond_2

    .line 68
    .line 69
    cmpl-float v8, v0, v4

    .line 70
    .line 71
    if-ltz v8, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const-string v8, ", topEnd = "

    .line 75
    .line 76
    const-string v9, ", bottomEnd = "

    .line 77
    .line 78
    const-string v10, "Corner size in Px can\'t be negative(topStart = "

    .line 79
    .line 80
    invoke-static {v10, v5, v8, v6, v9}, Ldi0;->z(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v9, ", bottomStart = "

    .line 88
    .line 89
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v9, ")!"

    .line 96
    .line 97
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    invoke-static {v8}, Ldr1;->a(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :goto_0
    add-float v8, v5, v6

    .line 108
    .line 109
    add-float/2addr v8, v7

    .line 110
    add-float/2addr v8, v0

    .line 111
    cmpg-float v4, v8, v4

    .line 112
    .line 113
    const-wide/16 v8, 0x0

    .line 114
    .line 115
    if-nez v4, :cond_3

    .line 116
    .line 117
    new-instance v0, Llr2;

    .line 118
    .line 119
    invoke-static {v8, v9, v1, v2}, Lqn0;->d(JJ)Ll33;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-direct {v0, v1}, Llr2;-><init>(Ll33;)V

    .line 124
    .line 125
    .line 126
    return-object v0

    .line 127
    :cond_3
    new-instance v4, Lmr2;

    .line 128
    .line 129
    invoke-static {v8, v9, v1, v2}, Lqn0;->d(JJ)Ll33;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    sget-object v2, Lhy1;->n:Lhy1;

    .line 134
    .line 135
    if-ne v3, v2, :cond_4

    .line 136
    .line 137
    move v8, v5

    .line 138
    goto :goto_1

    .line 139
    :cond_4
    move v8, v6

    .line 140
    :goto_1
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    int-to-long v9, v9

    .line 145
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    int-to-long v11, v8

    .line 150
    const/16 v8, 0x20

    .line 151
    .line 152
    shl-long/2addr v9, v8

    .line 153
    const-wide v13, 0xffffffffL

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    and-long/2addr v11, v13

    .line 159
    or-long v20, v9, v11

    .line 160
    .line 161
    if-ne v3, v2, :cond_5

    .line 162
    .line 163
    move v5, v6

    .line 164
    :cond_5
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    int-to-long v9, v6

    .line 169
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    int-to-long v5, v5

    .line 174
    shl-long/2addr v9, v8

    .line 175
    and-long/2addr v5, v13

    .line 176
    or-long v22, v9, v5

    .line 177
    .line 178
    if-ne v3, v2, :cond_6

    .line 179
    .line 180
    move v5, v7

    .line 181
    goto :goto_2

    .line 182
    :cond_6
    move v5, v0

    .line 183
    :goto_2
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    int-to-long v9, v6

    .line 188
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    int-to-long v5, v5

    .line 193
    shl-long/2addr v9, v8

    .line 194
    and-long/2addr v5, v13

    .line 195
    or-long v24, v9, v5

    .line 196
    .line 197
    if-ne v3, v2, :cond_7

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_7
    move v0, v7

    .line 201
    :goto_3
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    int-to-long v2, v2

    .line 206
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    int-to-long v5, v0

    .line 211
    shl-long/2addr v2, v8

    .line 212
    and-long/2addr v5, v13

    .line 213
    or-long v26, v2, v5

    .line 214
    .line 215
    new-instance v15, Lka3;

    .line 216
    .line 217
    iget v0, v1, Ll33;->a:F

    .line 218
    .line 219
    iget v2, v1, Ll33;->b:F

    .line 220
    .line 221
    iget v3, v1, Ll33;->c:F

    .line 222
    .line 223
    iget v1, v1, Ll33;->d:F

    .line 224
    .line 225
    move/from16 v16, v0

    .line 226
    .line 227
    move/from16 v19, v1

    .line 228
    .line 229
    move/from16 v17, v2

    .line 230
    .line 231
    move/from16 v18, v3

    .line 232
    .line 233
    invoke-direct/range {v15 .. v27}, Lka3;-><init>(FFFFJJJJ)V

    .line 234
    .line 235
    .line 236
    invoke-direct {v4, v15}, Lmr2;-><init>(Lka3;)V

    .line 237
    .line 238
    .line 239
    return-object v4
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lna3;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lna3;

    .line 12
    .line 13
    iget-object v1, p1, Lna3;->a:Lci0;

    .line 14
    .line 15
    iget-object v3, p0, Lna3;->a:Lci0;

    .line 16
    .line 17
    invoke-static {v3, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lna3;->b:Lci0;

    .line 25
    .line 26
    iget-object v3, p1, Lna3;->b:Lci0;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lna3;->c:Lci0;

    .line 36
    .line 37
    iget-object v3, p1, Lna3;->c:Lci0;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object p0, p0, Lna3;->d:Lci0;

    .line 47
    .line 48
    iget-object p1, p1, Lna3;->d:Lci0;

    .line 49
    .line 50
    invoke-static {p0, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lna3;->a:Lci0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lna3;->b:Lci0;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, Lna3;->c:Lci0;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object p0, p0, Lna3;->d:Lci0;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    add-int/2addr p0, v0

    .line 34
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RoundedCornerShape(topStart = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lna3;->a:Lci0;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", topEnd = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lna3;->b:Lci0;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", bottomEnd = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lna3;->c:Lci0;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", bottomStart = "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lna3;->d:Lci0;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, ")"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

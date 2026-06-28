.class public final Lov;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final n:Ljj1;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:I


# direct methods
.method public constructor <init>(Ljj1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Header iterator"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lov;->n:Ljj1;

    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    invoke-virtual {p0, p1}, Lov;->b(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lov;->q:I

    .line 17
    .line 18
    return-void
.end method

.method public static c(C)Z
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->isISOControl(C)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const-string v0, " ,;=()<>@:\\\"/[]?{}\t"

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-ltz p0, :cond_2

    .line 22
    .line 23
    :goto_0
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 26
    return p0
.end method


# virtual methods
.method public final b(I)I
    .locals 12

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    const/16 v1, 0x2c

    .line 4
    .line 5
    const-string v2, "): "

    .line 6
    .line 7
    const-string v3, "Search position"

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, -0x1

    .line 12
    iget-object v7, p0, Lov;->n:Ljj1;

    .line 13
    .line 14
    if-gez p1, :cond_1

    .line 15
    .line 16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    return v6

    .line 23
    :cond_0
    invoke-interface {v7}, Ljj1;->a()Lgj1;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Lsh2;->getValue()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lov;->o:Ljava/lang/String;

    .line 32
    .line 33
    move p1, v5

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    invoke-static {p1, v3}, Lw80;->J(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v8, p0, Lov;->o:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    move v9, v5

    .line 45
    :goto_0
    if-nez v9, :cond_6

    .line 46
    .line 47
    if-ge p1, v8, :cond_6

    .line 48
    .line 49
    iget-object v10, p0, Lov;->o:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v10, p1}, Ljava/lang/String;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    if-ne v10, v1, :cond_2

    .line 56
    .line 57
    move v9, v4

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    if-eq v10, v0, :cond_5

    .line 60
    .line 61
    invoke-static {v10}, Ljava/lang/Character;->isSpaceChar(C)Z

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    if-eqz v11, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-static {v10}, Lov;->c(C)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    new-instance v0, Lzs2;

    .line 75
    .line 76
    const-string v1, "Tokens without separator (pos "

    .line 77
    .line 78
    invoke-static {v1, p1, v2}, Lxw1;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object p0, p0, Lov;->o:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_4
    new-instance v0, Lzs2;

    .line 96
    .line 97
    const-string v1, "Invalid character after token (pos "

    .line 98
    .line 99
    invoke-static {v1, p1, v2}, Lxw1;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iget-object p0, p0, Lov;->o:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :cond_5
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_6
    :goto_2
    invoke-static {p1, v3}, Lw80;->J(ILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    move v8, v5

    .line 123
    :cond_7
    :goto_3
    const/4 v9, 0x0

    .line 124
    if-nez v8, :cond_e

    .line 125
    .line 126
    iget-object v10, p0, Lov;->o:Ljava/lang/String;

    .line 127
    .line 128
    if-eqz v10, :cond_e

    .line 129
    .line 130
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    :goto_4
    if-nez v8, :cond_c

    .line 135
    .line 136
    if-ge p1, v10, :cond_c

    .line 137
    .line 138
    iget-object v11, p0, Lov;->o:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v11, p1}, Ljava/lang/String;->charAt(I)C

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    if-ne v11, v1, :cond_8

    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_8
    if-eq v11, v0, :cond_b

    .line 148
    .line 149
    invoke-static {v11}, Ljava/lang/Character;->isSpaceChar(C)Z

    .line 150
    .line 151
    .line 152
    move-result v11

    .line 153
    if-eqz v11, :cond_9

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_9
    iget-object v8, p0, Lov;->o:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v8, p1}, Ljava/lang/String;->charAt(I)C

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    invoke-static {v8}, Lov;->c(C)Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-eqz v8, :cond_a

    .line 167
    .line 168
    move v8, v4

    .line 169
    goto :goto_4

    .line 170
    :cond_a
    new-instance v0, Lzs2;

    .line 171
    .line 172
    const-string v1, "Invalid character before token (pos "

    .line 173
    .line 174
    invoke-static {v1, p1, v2}, Lxw1;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    iget-object p0, p0, Lov;->o:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw v0

    .line 191
    :cond_b
    :goto_5
    add-int/lit8 p1, p1, 0x1

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_c
    if-nez v8, :cond_7

    .line 195
    .line 196
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v10

    .line 200
    if-eqz v10, :cond_d

    .line 201
    .line 202
    invoke-interface {v7}, Ljj1;->a()Lgj1;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-interface {p1}, Lsh2;->getValue()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    iput-object p1, p0, Lov;->o:Ljava/lang/String;

    .line 211
    .line 212
    move p1, v5

    .line 213
    goto :goto_3

    .line 214
    :cond_d
    iput-object v9, p0, Lov;->o:Ljava/lang/String;

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_e
    if-eqz v8, :cond_f

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_f
    move p1, v6

    .line 221
    :goto_6
    if-gez p1, :cond_10

    .line 222
    .line 223
    iput-object v9, p0, Lov;->p:Ljava/lang/String;

    .line 224
    .line 225
    return v6

    .line 226
    :cond_10
    invoke-static {p1, v3}, Lw80;->J(ILjava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lov;->o:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    add-int/lit8 v1, p1, 0x1

    .line 236
    .line 237
    :goto_7
    if-ge v1, v0, :cond_11

    .line 238
    .line 239
    iget-object v2, p0, Lov;->o:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    invoke-static {v2}, Lov;->c(C)Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-eqz v2, :cond_11

    .line 250
    .line 251
    add-int/lit8 v1, v1, 0x1

    .line 252
    .line 253
    goto :goto_7

    .line 254
    :cond_11
    iget-object v0, p0, Lov;->o:Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    iput-object p1, p0, Lov;->p:Ljava/lang/String;

    .line 261
    .line 262
    return v1
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lov;->p:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lov;->q:I

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lov;->b(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iput v1, p0, Lov;->q:I

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const-string p0, "Iteration already finished."

    .line 15
    .line 16
    invoke-static {p0}, Lq73;->l(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public final hasNext()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lov;->p:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lov;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Removing tokens is not supported."

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

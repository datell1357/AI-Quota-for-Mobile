.class public final Lbv;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final b:Lbv;


# instance fields
.field public final a:Lg03;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lbv;

    .line 2
    .line 3
    invoke-direct {v0}, Lbv;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lbv;

    .line 7
    .line 8
    invoke-direct {v0}, Lbv;-><init>()V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lbv;->b:Lbv;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ldn1;->s:Ldn1;

    .line 5
    .line 6
    iput-object v0, p0, Lbv;->a:Lg03;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lb40;Lky0;)Ldn1;
    .locals 12

    .line 1
    const-string v0, "Char array buffer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lbv;->a:Lg03;

    .line 7
    .line 8
    iget-object v0, p0, Lg03;->n:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget v2, p2, Lky0;->d:I

    .line 15
    .line 16
    iget v3, p2, Lky0;->c:I

    .line 17
    .line 18
    move v4, v2

    .line 19
    :goto_0
    if-ge v4, v3, :cond_0

    .line 20
    .line 21
    iget-object v5, p1, Lb40;->n:[C

    .line 22
    .line 23
    aget-char v5, v5, v4

    .line 24
    .line 25
    invoke-static {v5}, Lvi1;->a(C)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p2, v4}, Lky0;->b(I)V

    .line 35
    .line 36
    .line 37
    iget v4, p2, Lky0;->d:I

    .line 38
    .line 39
    add-int v5, v4, v1

    .line 40
    .line 41
    add-int/lit8 v6, v5, 0x4

    .line 42
    .line 43
    const-string v7, "Not a valid protocol version: "

    .line 44
    .line 45
    if-gt v6, v3, :cond_c

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v8, 0x1

    .line 49
    move v10, v6

    .line 50
    move v9, v8

    .line 51
    :goto_1
    if-eqz v9, :cond_2

    .line 52
    .line 53
    if-ge v10, v1, :cond_2

    .line 54
    .line 55
    add-int v9, v4, v10

    .line 56
    .line 57
    iget-object v11, p1, Lb40;->n:[C

    .line 58
    .line 59
    aget-char v9, v11, v9

    .line 60
    .line 61
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 62
    .line 63
    .line 64
    move-result v11

    .line 65
    if-ne v9, v11, :cond_1

    .line 66
    .line 67
    move v9, v8

    .line 68
    goto :goto_2

    .line 69
    :cond_1
    move v9, v6

    .line 70
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    if-eqz v9, :cond_4

    .line 74
    .line 75
    iget-object v0, p1, Lb40;->n:[C

    .line 76
    .line 77
    aget-char v0, v0, v5

    .line 78
    .line 79
    const/16 v5, 0x2f

    .line 80
    .line 81
    if-ne v0, v5, :cond_3

    .line 82
    .line 83
    move v6, v8

    .line 84
    :cond_3
    move v9, v6

    .line 85
    :cond_4
    if-eqz v9, :cond_b

    .line 86
    .line 87
    add-int/2addr v1, v8

    .line 88
    add-int/2addr v1, v4

    .line 89
    const/16 v0, 0x2e

    .line 90
    .line 91
    invoke-virtual {p1, v0, v1, v3}, Lb40;->g(III)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    const/4 v4, -0x1

    .line 96
    if-eq v0, v4, :cond_a

    .line 97
    .line 98
    :try_start_0
    invoke-virtual {p1, v1, v0}, Lb40;->i(II)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    add-int/2addr v0, v8

    .line 107
    const/16 v5, 0x20

    .line 108
    .line 109
    invoke-virtual {p1, v5, v0, v3}, Lb40;->g(III)I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-ne v5, v4, :cond_5

    .line 114
    .line 115
    move v5, v3

    .line 116
    :cond_5
    :try_start_1
    invoke-virtual {p1, v0, v5}, Lb40;->i(II)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    invoke-virtual {p2, v5}, Lky0;->b(I)V

    .line 125
    .line 126
    .line 127
    check-cast p0, Ldn1;

    .line 128
    .line 129
    iget p2, p0, Lg03;->o:I

    .line 130
    .line 131
    if-ne v1, p2, :cond_6

    .line 132
    .line 133
    iget p2, p0, Lg03;->p:I

    .line 134
    .line 135
    if-ne p1, p2, :cond_6

    .line 136
    .line 137
    return-object p0

    .line 138
    :cond_6
    if-ne v1, v8, :cond_8

    .line 139
    .line 140
    if-nez p1, :cond_7

    .line 141
    .line 142
    sget-object p0, Ldn1;->r:Ldn1;

    .line 143
    .line 144
    return-object p0

    .line 145
    :cond_7
    if-ne p1, v8, :cond_8

    .line 146
    .line 147
    sget-object p0, Ldn1;->s:Ldn1;

    .line 148
    .line 149
    return-object p0

    .line 150
    :cond_8
    if-nez v1, :cond_9

    .line 151
    .line 152
    const/16 p0, 0x9

    .line 153
    .line 154
    if-ne p1, p0, :cond_9

    .line 155
    .line 156
    sget-object p0, Ldn1;->q:Ldn1;

    .line 157
    .line 158
    return-object p0

    .line 159
    :cond_9
    new-instance p0, Ldn1;

    .line 160
    .line 161
    invoke-direct {p0, v1, p1}, Lg03;-><init>(II)V

    .line 162
    .line 163
    .line 164
    return-object p0

    .line 165
    :catch_0
    new-instance p0, Lzs2;

    .line 166
    .line 167
    invoke-virtual {p1, v2, v3}, Lb40;->h(II)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    const-string p2, "Invalid protocol minor version number: "

    .line 172
    .line 173
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p0

    .line 181
    :catch_1
    new-instance p0, Lzs2;

    .line 182
    .line 183
    invoke-virtual {p1, v2, v3}, Lb40;->h(II)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    const-string p2, "Invalid protocol major version number: "

    .line 188
    .line 189
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw p0

    .line 197
    :cond_a
    new-instance p0, Lzs2;

    .line 198
    .line 199
    invoke-virtual {p1, v2, v3}, Lb40;->h(II)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    const-string p2, "Invalid protocol version number: "

    .line 204
    .line 205
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p0

    .line 213
    :cond_b
    new-instance p0, Lzs2;

    .line 214
    .line 215
    invoke-virtual {p1, v2, v3}, Lb40;->h(II)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {v7, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw p0

    .line 227
    :cond_c
    new-instance p0, Lzs2;

    .line 228
    .line 229
    invoke-virtual {p1, v2, v3}, Lb40;->h(II)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {v7, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw p0
.end method

.method public final b(Lb40;Lky0;)Lkv;
    .locals 6

    .line 1
    const-string v0, "Char array buffer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p2, Lky0;->d:I

    .line 7
    .line 8
    iget v1, p2, Lky0;->c:I

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lbv;->a(Lb40;Lky0;)Ldn1;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget v2, p2, Lky0;->d:I

    .line 15
    .line 16
    :goto_0
    if-ge v2, v1, :cond_0

    .line 17
    .line 18
    iget-object v3, p1, Lb40;->n:[C

    .line 19
    .line 20
    aget-char v3, v3, v2

    .line 21
    .line 22
    invoke-static {v3}, Lvi1;->a(C)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p2, v2}, Lky0;->b(I)V

    .line 32
    .line 33
    .line 34
    iget p2, p2, Lky0;->d:I

    .line 35
    .line 36
    const/16 v2, 0x20

    .line 37
    .line 38
    invoke-virtual {p1, v2, p2, v1}, Lb40;->g(III)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-gez v2, :cond_1

    .line 43
    .line 44
    move v2, v1

    .line 45
    :cond_1
    invoke-virtual {p1, p2, v2}, Lb40;->i(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const/4 v3, 0x0

    .line 50
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    const-string v5, "Status line contains invalid status code: "

    .line 55
    .line 56
    if-ge v3, v4, :cond_3

    .line 57
    .line 58
    :try_start_1
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    new-instance p0, Lzs2;

    .line 72
    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0, v1}, Lb40;->h(II)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    :cond_3
    :try_start_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result p2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 100
    if-ge v2, v1, :cond_4

    .line 101
    .line 102
    :try_start_3
    invoke-virtual {p1, v2, v1}, Lb40;->i(II)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    goto :goto_2

    .line 107
    :cond_4
    const-string v2, ""

    .line 108
    .line 109
    :goto_2
    new-instance v3, Lkv;

    .line 110
    .line 111
    invoke-direct {v3, p0, p2, v2}, Lkv;-><init>(Lg03;ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-object v3

    .line 115
    :catch_0
    new-instance p0, Lzs2;

    .line 116
    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0, v1}, Lb40;->h(II)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 140
    :catch_1
    new-instance p0, Lzs2;

    .line 141
    .line 142
    invoke-virtual {p1, v0, v1}, Lb40;->h(II)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    const-string p2, "Invalid status line: "

    .line 147
    .line 148
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p0
.end method

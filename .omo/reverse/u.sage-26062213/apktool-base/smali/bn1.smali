.class public final Lbn1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public final f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lbn1;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lbn1;->c:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lbn1;->e:I

    .line 12
    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Ltv4;->H([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lbn1;->f:Ljava/util/ArrayList;

    .line 22
    .line 23
    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-gt v1, v2, :cond_3

    .line 12
    .line 13
    const/16 v2, 0x26

    .line 14
    .line 15
    const/4 v3, 0x4

    .line 16
    invoke-static {p0, v2, v1, v3}, Lzs3;->F0(Ljava/lang/CharSequence;CII)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v4, -0x1

    .line 21
    if-ne v2, v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    :cond_0
    const/16 v5, 0x3d

    .line 28
    .line 29
    invoke-static {p0, v5, v1, v3}, Lzs3;->F0(Ljava/lang/CharSequence;CII)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eq v3, v4, :cond_2

    .line 34
    .line 35
    if-le v3, v2, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    :goto_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :goto_2
    add-int/lit8 v1, v2, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a()Lcn1;
    .locals 14

    .line 1
    iget-object v1, p0, Lbn1;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz v1, :cond_6

    .line 5
    .line 6
    iget-object v2, p0, Lbn1;->b:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x7

    .line 10
    invoke-static {v3, v3, v4, v2}, Lzf5;->T(IIILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-object v5, p0, Lbn1;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v3, v3, v4, v5}, Lzf5;->T(IIILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    move v6, v4

    .line 21
    iget-object v4, p0, Lbn1;->d:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v4, :cond_5

    .line 24
    .line 25
    move v7, v3

    .line 26
    move-object v3, v5

    .line 27
    invoke-virtual {p0}, Lbn1;->b()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    new-instance v8, Ljava/util/ArrayList;

    .line 32
    .line 33
    iget-object v9, p0, Lbn1;->f:Ljava/util/ArrayList;

    .line 34
    .line 35
    const/16 v10, 0xa

    .line 36
    .line 37
    invoke-static {v9, v10}, Lp70;->a0(Ljava/lang/Iterable;I)I

    .line 38
    .line 39
    .line 40
    move-result v11

    .line 41
    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    move v12, v7

    .line 49
    :goto_0
    if-ge v12, v11, :cond_0

    .line 50
    .line 51
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v13

    .line 55
    add-int/lit8 v12, v12, 0x1

    .line 56
    .line 57
    check-cast v13, Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v7, v7, v6, v13}, Lzf5;->T(IIILjava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v13

    .line 63
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iget-object v8, p0, Lbn1;->g:Ljava/util/ArrayList;

    .line 68
    .line 69
    if-eqz v8, :cond_2

    .line 70
    .line 71
    new-instance v9, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-static {v8, v10}, Lp70;->a0(Ljava/lang/Iterable;I)I

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    move v11, v7

    .line 85
    :goto_1
    if-ge v11, v10, :cond_3

    .line 86
    .line 87
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    add-int/lit8 v11, v11, 0x1

    .line 92
    .line 93
    check-cast v12, Ljava/lang/String;

    .line 94
    .line 95
    if-eqz v12, :cond_1

    .line 96
    .line 97
    const/4 v13, 0x3

    .line 98
    invoke-static {v7, v7, v13, v12}, Lzf5;->T(IIILjava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    goto :goto_2

    .line 103
    :cond_1
    move-object v12, v0

    .line 104
    :goto_2
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    move-object v9, v0

    .line 109
    :cond_3
    iget-object v8, p0, Lbn1;->h:Ljava/lang/String;

    .line 110
    .line 111
    if-eqz v8, :cond_4

    .line 112
    .line 113
    invoke-static {v7, v7, v6, v8}, Lzf5;->T(IIILjava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :cond_4
    move-object v7, v0

    .line 118
    invoke-virtual {p0}, Lbn1;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    new-instance v0, Lcn1;

    .line 123
    .line 124
    move-object v6, v9

    .line 125
    invoke-direct/range {v0 .. v8}, Lcn1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-object v0

    .line 129
    :cond_5
    const-string p0, "host == null"

    .line 130
    .line 131
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-object v0

    .line 135
    :cond_6
    const-string p0, "scheme == null"

    .line 136
    .line 137
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-object v0
.end method

.method public final b()I
    .locals 2

    .line 1
    iget v0, p0, Lbn1;->e:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object p0, p0, Lbn1;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v0, "http"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/16 v1, 0x50

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-string v0, "https"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    const/16 v1, 0x1bb

    .line 32
    .line 33
    :cond_2
    :goto_0
    return v1
.end method

.method public final c(Lcn1;Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    sget-object v3, Lfi4;->a:[B

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-static {v4, v2, v3}, Lfi4;->f(ILjava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    invoke-static {v3, v2, v5}, Lfi4;->g(ILjava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    sub-int v6, v5, v3

    .line 27
    .line 28
    const/16 v7, 0x30

    .line 29
    .line 30
    const/16 v8, 0x5b

    .line 31
    .line 32
    const/16 v9, 0x3a

    .line 33
    .line 34
    const/4 v10, -0x1

    .line 35
    const/4 v11, 0x2

    .line 36
    if-ge v6, v11, :cond_1

    .line 37
    .line 38
    :cond_0
    :goto_0
    move v6, v10

    .line 39
    goto :goto_3

    .line 40
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    const/16 v12, 0x61

    .line 45
    .line 46
    invoke-static {v6, v12}, Lnt1;->l(II)I

    .line 47
    .line 48
    .line 49
    move-result v13

    .line 50
    const/16 v14, 0x41

    .line 51
    .line 52
    if-ltz v13, :cond_2

    .line 53
    .line 54
    const/16 v13, 0x7a

    .line 55
    .line 56
    invoke-static {v6, v13}, Lnt1;->l(II)I

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    if-lez v13, :cond_3

    .line 61
    .line 62
    :cond_2
    invoke-static {v6, v14}, Lnt1;->l(II)I

    .line 63
    .line 64
    .line 65
    move-result v13

    .line 66
    if-ltz v13, :cond_0

    .line 67
    .line 68
    const/16 v13, 0x5a

    .line 69
    .line 70
    invoke-static {v6, v13}, Lnt1;->l(II)I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-lez v6, :cond_3

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    add-int/lit8 v6, v3, 0x1

    .line 78
    .line 79
    :goto_1
    if-ge v6, v5, :cond_0

    .line 80
    .line 81
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    .line 82
    .line 83
    .line 84
    move-result v13

    .line 85
    if-gt v12, v13, :cond_4

    .line 86
    .line 87
    const/16 v15, 0x7b

    .line 88
    .line 89
    if-ge v13, v15, :cond_4

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    if-gt v14, v13, :cond_5

    .line 93
    .line 94
    if-ge v13, v8, :cond_5

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    if-gt v7, v13, :cond_6

    .line 98
    .line 99
    if-ge v13, v9, :cond_6

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_6
    const/16 v15, 0x2b

    .line 103
    .line 104
    if-eq v13, v15, :cond_8

    .line 105
    .line 106
    const/16 v15, 0x2d

    .line 107
    .line 108
    if-eq v13, v15, :cond_8

    .line 109
    .line 110
    const/16 v15, 0x2e

    .line 111
    .line 112
    if-ne v13, v15, :cond_7

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_7
    if-ne v13, v9, :cond_0

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_8
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :goto_3
    const-string v12, "http"

    .line 122
    .line 123
    const-string v13, "https"

    .line 124
    .line 125
    const/4 v14, 0x1

    .line 126
    if-eq v6, v10, :cond_b

    .line 127
    .line 128
    const-string v15, "https:"

    .line 129
    .line 130
    invoke-static {v2, v15, v3, v14}, Lgt3;->x0(Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 131
    .line 132
    .line 133
    move-result v15

    .line 134
    if-eqz v15, :cond_9

    .line 135
    .line 136
    iput-object v13, v0, Lbn1;->a:Ljava/lang/String;

    .line 137
    .line 138
    add-int/lit8 v3, v3, 0x6

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_9
    const-string v15, "http:"

    .line 142
    .line 143
    invoke-static {v2, v15, v3, v14}, Lgt3;->x0(Ljava/lang/String;Ljava/lang/String;IZ)Z

    .line 144
    .line 145
    .line 146
    move-result v15

    .line 147
    if-eqz v15, :cond_a

    .line 148
    .line 149
    iput-object v12, v0, Lbn1;->a:Ljava/lang/String;

    .line 150
    .line 151
    add-int/lit8 v3, v3, 0x5

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 155
    .line 156
    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v3, "Expected URL scheme \'http\' or \'https\' but was \'"

    .line 163
    .line 164
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const/16 v1, 0x27

    .line 171
    .line 172
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v0

    .line 183
    :cond_b
    if-eqz v1, :cond_30

    .line 184
    .line 185
    iget-object v6, v1, Lcn1;->a:Ljava/lang/String;

    .line 186
    .line 187
    iput-object v6, v0, Lbn1;->a:Ljava/lang/String;

    .line 188
    .line 189
    :goto_4
    move v6, v3

    .line 190
    move v15, v4

    .line 191
    :goto_5
    const/16 v7, 0x5c

    .line 192
    .line 193
    move/from16 v16, v14

    .line 194
    .line 195
    const/16 v14, 0x2f

    .line 196
    .line 197
    if-ge v6, v5, :cond_d

    .line 198
    .line 199
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    if-eq v8, v14, :cond_c

    .line 204
    .line 205
    if-eq v8, v7, :cond_c

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_c
    add-int/lit8 v15, v15, 0x1

    .line 209
    .line 210
    add-int/lit8 v6, v6, 0x1

    .line 211
    .line 212
    move/from16 v14, v16

    .line 213
    .line 214
    const/16 v8, 0x5b

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_d
    :goto_6
    const-string v8, " \"\'<>#"

    .line 218
    .line 219
    const-string v6, ""

    .line 220
    .line 221
    iget-object v9, v0, Lbn1;->f:Ljava/util/ArrayList;

    .line 222
    .line 223
    const/16 v7, 0x23

    .line 224
    .line 225
    if-ge v15, v11, :cond_11

    .line 226
    .line 227
    if-eqz v1, :cond_11

    .line 228
    .line 229
    iget-object v11, v1, Lcn1;->a:Ljava/lang/String;

    .line 230
    .line 231
    iget-object v14, v0, Lbn1;->a:Ljava/lang/String;

    .line 232
    .line 233
    invoke-static {v11, v14}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v11

    .line 237
    if-nez v11, :cond_e

    .line 238
    .line 239
    goto :goto_8

    .line 240
    :cond_e
    invoke-virtual {v1}, Lcn1;->e()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v10

    .line 244
    iput-object v10, v0, Lbn1;->b:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {v1}, Lcn1;->a()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v10

    .line 250
    iput-object v10, v0, Lbn1;->c:Ljava/lang/String;

    .line 251
    .line 252
    iget-object v10, v1, Lcn1;->d:Ljava/lang/String;

    .line 253
    .line 254
    iput-object v10, v0, Lbn1;->d:Ljava/lang/String;

    .line 255
    .line 256
    iget v10, v1, Lcn1;->e:I

    .line 257
    .line 258
    iput v10, v0, Lbn1;->e:I

    .line 259
    .line 260
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1}, Lcn1;->c()Ljava/util/ArrayList;

    .line 264
    .line 265
    .line 266
    move-result-object v10

    .line 267
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 268
    .line 269
    .line 270
    if-eq v3, v5, :cond_f

    .line 271
    .line 272
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 273
    .line 274
    .line 275
    move-result v10

    .line 276
    if-ne v10, v7, :cond_21

    .line 277
    .line 278
    :cond_f
    invoke-virtual {v1}, Lcn1;->d()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    if-eqz v1, :cond_10

    .line 283
    .line 284
    const/16 v10, 0x53

    .line 285
    .line 286
    invoke-static {v1, v4, v4, v8, v10}, Lzf5;->m(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-static {v1}, Lbn1;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    goto :goto_7

    .line 295
    :cond_10
    const/4 v1, 0x0

    .line 296
    :goto_7
    iput-object v1, v0, Lbn1;->g:Ljava/util/ArrayList;

    .line 297
    .line 298
    goto/16 :goto_12

    .line 299
    .line 300
    :cond_11
    :goto_8
    add-int/2addr v3, v15

    .line 301
    move v1, v4

    .line 302
    move v11, v1

    .line 303
    :goto_9
    const-string v14, "@/\\?#"

    .line 304
    .line 305
    invoke-static {v3, v5, v2, v14}, Lfi4;->b(IILjava/lang/String;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    move-result v14

    .line 309
    if-eq v14, v5, :cond_12

    .line 310
    .line 311
    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    .line 312
    .line 313
    .line 314
    move-result v15

    .line 315
    goto :goto_a

    .line 316
    :cond_12
    move v15, v10

    .line 317
    :goto_a
    if-eq v15, v10, :cond_17

    .line 318
    .line 319
    if-eq v15, v7, :cond_17

    .line 320
    .line 321
    const/16 v4, 0x2f

    .line 322
    .line 323
    if-eq v15, v4, :cond_17

    .line 324
    .line 325
    const/16 v4, 0x5c

    .line 326
    .line 327
    if-eq v15, v4, :cond_17

    .line 328
    .line 329
    const/16 v4, 0x3f

    .line 330
    .line 331
    if-eq v15, v4, :cond_17

    .line 332
    .line 333
    const/16 v4, 0x40

    .line 334
    .line 335
    if-eq v15, v4, :cond_13

    .line 336
    .line 337
    const/4 v4, 0x0

    .line 338
    goto :goto_9

    .line 339
    :cond_13
    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    .line 340
    .line 341
    const-string v15, "%40"

    .line 342
    .line 343
    if-nez v1, :cond_16

    .line 344
    .line 345
    const/16 v7, 0x3a

    .line 346
    .line 347
    invoke-static {v2, v7, v3, v14}, Lfi4;->c(Ljava/lang/String;CII)I

    .line 348
    .line 349
    .line 350
    move-result v10

    .line 351
    const/16 v7, 0x70

    .line 352
    .line 353
    invoke-static {v2, v3, v10, v4, v7}, Lzf5;->m(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    if-eqz v11, :cond_14

    .line 358
    .line 359
    new-instance v7, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    iget-object v11, v0, Lbn1;->b:Ljava/lang/String;

    .line 365
    .line 366
    invoke-static {v7, v11, v15, v3}, Ldi0;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    :cond_14
    iput-object v3, v0, Lbn1;->b:Ljava/lang/String;

    .line 371
    .line 372
    if-eq v10, v14, :cond_15

    .line 373
    .line 374
    add-int/lit8 v10, v10, 0x1

    .line 375
    .line 376
    const/16 v7, 0x70

    .line 377
    .line 378
    invoke-static {v2, v10, v14, v4, v7}, Lzf5;->m(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    iput-object v1, v0, Lbn1;->c:Ljava/lang/String;

    .line 383
    .line 384
    move/from16 v1, v16

    .line 385
    .line 386
    goto :goto_b

    .line 387
    :cond_15
    const/16 v7, 0x70

    .line 388
    .line 389
    :goto_b
    move/from16 v11, v16

    .line 390
    .line 391
    goto :goto_c

    .line 392
    :cond_16
    const/16 v7, 0x70

    .line 393
    .line 394
    new-instance v10, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .line 398
    .line 399
    iget-object v7, v0, Lbn1;->c:Ljava/lang/String;

    .line 400
    .line 401
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    const/16 v7, 0x70

    .line 408
    .line 409
    invoke-static {v2, v3, v14, v4, v7}, Lzf5;->m(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    iput-object v3, v0, Lbn1;->c:Ljava/lang/String;

    .line 421
    .line 422
    :goto_c
    add-int/lit8 v3, v14, 0x1

    .line 423
    .line 424
    const/4 v4, 0x0

    .line 425
    const/16 v7, 0x23

    .line 426
    .line 427
    const/4 v10, -0x1

    .line 428
    goto :goto_9

    .line 429
    :cond_17
    move v1, v3

    .line 430
    :goto_d
    if-ge v1, v14, :cond_1a

    .line 431
    .line 432
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    const/16 v7, 0x3a

    .line 437
    .line 438
    if-eq v4, v7, :cond_1b

    .line 439
    .line 440
    const/16 v10, 0x5b

    .line 441
    .line 442
    if-eq v4, v10, :cond_18

    .line 443
    .line 444
    goto :goto_e

    .line 445
    :cond_18
    add-int/lit8 v1, v1, 0x1

    .line 446
    .line 447
    if-ge v1, v14, :cond_19

    .line 448
    .line 449
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 450
    .line 451
    .line 452
    move-result v4

    .line 453
    const/16 v11, 0x5d

    .line 454
    .line 455
    if-ne v4, v11, :cond_18

    .line 456
    .line 457
    :cond_19
    :goto_e
    add-int/lit8 v1, v1, 0x1

    .line 458
    .line 459
    goto :goto_d

    .line 460
    :cond_1a
    move v1, v14

    .line 461
    :cond_1b
    add-int/lit8 v4, v1, 0x1

    .line 462
    .line 463
    const/4 v7, 0x4

    .line 464
    const/16 v10, 0x22

    .line 465
    .line 466
    if-ge v4, v14, :cond_1e

    .line 467
    .line 468
    invoke-static {v3, v1, v7, v2}, Lzf5;->T(IIILjava/lang/String;)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v7

    .line 472
    invoke-static {v7}, Ldi4;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v7

    .line 476
    iput-object v7, v0, Lbn1;->d:Ljava/lang/String;

    .line 477
    .line 478
    const/16 v7, 0x78

    .line 479
    .line 480
    :try_start_0
    invoke-static {v2, v4, v14, v6, v7}, Lzf5;->m(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v7

    .line 484
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 485
    .line 486
    .line 487
    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    move/from16 v11, v16

    .line 489
    .line 490
    if-gt v11, v7, :cond_1c

    .line 491
    .line 492
    const/high16 v11, 0x10000

    .line 493
    .line 494
    if-ge v7, v11, :cond_1c

    .line 495
    .line 496
    goto :goto_f

    .line 497
    :catch_0
    :cond_1c
    const/4 v7, -0x1

    .line 498
    :goto_f
    iput v7, v0, Lbn1;->e:I

    .line 499
    .line 500
    const/4 v11, -0x1

    .line 501
    if-eq v7, v11, :cond_1d

    .line 502
    .line 503
    goto :goto_11

    .line 504
    :cond_1d
    const-string v0, "Invalid URL port: \""

    .line 505
    .line 506
    invoke-virtual {v2, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    invoke-static {v0, v1, v10}, Lp61;->l(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 511
    .line 512
    .line 513
    return-void

    .line 514
    :cond_1e
    const/4 v11, -0x1

    .line 515
    invoke-static {v3, v1, v7, v2}, Lzf5;->T(IIILjava/lang/String;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v4

    .line 519
    invoke-static {v4}, Ldi4;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v4

    .line 523
    iput-object v4, v0, Lbn1;->d:Ljava/lang/String;

    .line 524
    .line 525
    iget-object v4, v0, Lbn1;->a:Ljava/lang/String;

    .line 526
    .line 527
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v4, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result v7

    .line 534
    if-eqz v7, :cond_1f

    .line 535
    .line 536
    const/16 v4, 0x50

    .line 537
    .line 538
    goto :goto_10

    .line 539
    :cond_1f
    invoke-virtual {v4, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v4

    .line 543
    if-eqz v4, :cond_20

    .line 544
    .line 545
    const/16 v4, 0x1bb

    .line 546
    .line 547
    goto :goto_10

    .line 548
    :cond_20
    move v4, v11

    .line 549
    :goto_10
    iput v4, v0, Lbn1;->e:I

    .line 550
    .line 551
    :goto_11
    iget-object v4, v0, Lbn1;->d:Ljava/lang/String;

    .line 552
    .line 553
    if-eqz v4, :cond_2f

    .line 554
    .line 555
    move v3, v14

    .line 556
    :cond_21
    :goto_12
    const-string v1, "?#"

    .line 557
    .line 558
    invoke-static {v3, v5, v2, v1}, Lfi4;->b(IILjava/lang/String;Ljava/lang/String;)I

    .line 559
    .line 560
    .line 561
    move-result v1

    .line 562
    if-ne v3, v1, :cond_22

    .line 563
    .line 564
    goto/16 :goto_18

    .line 565
    .line 566
    :cond_22
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 567
    .line 568
    .line 569
    move-result v4

    .line 570
    const/16 v7, 0x2f

    .line 571
    .line 572
    if-eq v4, v7, :cond_23

    .line 573
    .line 574
    const/16 v7, 0x5c

    .line 575
    .line 576
    if-eq v4, v7, :cond_23

    .line 577
    .line 578
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 579
    .line 580
    .line 581
    move-result v4

    .line 582
    const/16 v16, 0x1

    .line 583
    .line 584
    add-int/lit8 v4, v4, -0x1

    .line 585
    .line 586
    invoke-virtual {v9, v4, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    goto :goto_13

    .line 590
    :cond_23
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    add-int/lit8 v3, v3, 0x1

    .line 597
    .line 598
    :goto_13
    if-ge v3, v1, :cond_2c

    .line 599
    .line 600
    const-string v4, "/\\"

    .line 601
    .line 602
    invoke-static {v3, v1, v2, v4}, Lfi4;->b(IILjava/lang/String;Ljava/lang/String;)I

    .line 603
    .line 604
    .line 605
    move-result v4

    .line 606
    if-ge v4, v1, :cond_24

    .line 607
    .line 608
    const/4 v11, 0x1

    .line 609
    goto :goto_14

    .line 610
    :cond_24
    const/4 v11, 0x0

    .line 611
    :goto_14
    const-string v7, " \"<>^`{}|/\\?#"

    .line 612
    .line 613
    const/16 v10, 0x70

    .line 614
    .line 615
    invoke-static {v2, v3, v4, v7, v10}, Lzf5;->m(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v3

    .line 619
    const-string v7, "."

    .line 620
    .line 621
    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    move-result v7

    .line 625
    if-nez v7, :cond_2a

    .line 626
    .line 627
    const-string v7, "%2e"

    .line 628
    .line 629
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 630
    .line 631
    .line 632
    move-result v7

    .line 633
    if-eqz v7, :cond_25

    .line 634
    .line 635
    goto/16 :goto_17

    .line 636
    .line 637
    :cond_25
    const-string v7, ".."

    .line 638
    .line 639
    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    move-result v7

    .line 643
    if-nez v7, :cond_28

    .line 644
    .line 645
    const-string v7, "%2e."

    .line 646
    .line 647
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 648
    .line 649
    .line 650
    move-result v7

    .line 651
    if-nez v7, :cond_28

    .line 652
    .line 653
    const-string v7, ".%2e"

    .line 654
    .line 655
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 656
    .line 657
    .line 658
    move-result v7

    .line 659
    if-nez v7, :cond_28

    .line 660
    .line 661
    const-string v7, "%2e%2e"

    .line 662
    .line 663
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 664
    .line 665
    .line 666
    move-result v7

    .line 667
    if-eqz v7, :cond_26

    .line 668
    .line 669
    goto :goto_16

    .line 670
    :cond_26
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 671
    .line 672
    .line 673
    move-result v7

    .line 674
    const/16 v16, 0x1

    .line 675
    .line 676
    add-int/lit8 v7, v7, -0x1

    .line 677
    .line 678
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    move-result-object v7

    .line 682
    check-cast v7, Ljava/lang/CharSequence;

    .line 683
    .line 684
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 685
    .line 686
    .line 687
    move-result v7

    .line 688
    if-nez v7, :cond_27

    .line 689
    .line 690
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 691
    .line 692
    .line 693
    move-result v7

    .line 694
    add-int/lit8 v7, v7, -0x1

    .line 695
    .line 696
    invoke-virtual {v9, v7, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    goto :goto_15

    .line 700
    :cond_27
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    :goto_15
    if-eqz v11, :cond_2a

    .line 704
    .line 705
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    .line 707
    .line 708
    goto :goto_17

    .line 709
    :cond_28
    :goto_16
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 710
    .line 711
    .line 712
    move-result v3

    .line 713
    const/16 v16, 0x1

    .line 714
    .line 715
    add-int/lit8 v3, v3, -0x1

    .line 716
    .line 717
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v3

    .line 721
    check-cast v3, Ljava/lang/String;

    .line 722
    .line 723
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 724
    .line 725
    .line 726
    move-result v3

    .line 727
    if-nez v3, :cond_29

    .line 728
    .line 729
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 730
    .line 731
    .line 732
    move-result v3

    .line 733
    if-nez v3, :cond_29

    .line 734
    .line 735
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 736
    .line 737
    .line 738
    move-result v3

    .line 739
    add-int/lit8 v3, v3, -0x1

    .line 740
    .line 741
    invoke-virtual {v9, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    goto :goto_17

    .line 745
    :cond_29
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    .line 747
    .line 748
    :cond_2a
    :goto_17
    if-eqz v11, :cond_2b

    .line 749
    .line 750
    add-int/lit8 v3, v4, 0x1

    .line 751
    .line 752
    goto/16 :goto_13

    .line 753
    .line 754
    :cond_2b
    move v3, v4

    .line 755
    goto/16 :goto_13

    .line 756
    .line 757
    :cond_2c
    :goto_18
    if-ge v1, v5, :cond_2d

    .line 758
    .line 759
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 760
    .line 761
    .line 762
    move-result v3

    .line 763
    const/16 v4, 0x3f

    .line 764
    .line 765
    if-ne v3, v4, :cond_2d

    .line 766
    .line 767
    const/16 v3, 0x23

    .line 768
    .line 769
    invoke-static {v2, v3, v1, v5}, Lfi4;->c(Ljava/lang/String;CII)I

    .line 770
    .line 771
    .line 772
    move-result v4

    .line 773
    add-int/lit8 v1, v1, 0x1

    .line 774
    .line 775
    const/16 v3, 0x50

    .line 776
    .line 777
    invoke-static {v2, v1, v4, v8, v3}, Lzf5;->m(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    invoke-static {v1}, Lbn1;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 782
    .line 783
    .line 784
    move-result-object v1

    .line 785
    iput-object v1, v0, Lbn1;->g:Ljava/util/ArrayList;

    .line 786
    .line 787
    move v1, v4

    .line 788
    :cond_2d
    if-ge v1, v5, :cond_2e

    .line 789
    .line 790
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 791
    .line 792
    .line 793
    move-result v3

    .line 794
    const/16 v4, 0x23

    .line 795
    .line 796
    if-ne v3, v4, :cond_2e

    .line 797
    .line 798
    const/16 v16, 0x1

    .line 799
    .line 800
    add-int/lit8 v1, v1, 0x1

    .line 801
    .line 802
    const/16 v3, 0x30

    .line 803
    .line 804
    invoke-static {v2, v1, v5, v6, v3}, Lzf5;->m(Ljava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v1

    .line 808
    iput-object v1, v0, Lbn1;->h:Ljava/lang/String;

    .line 809
    .line 810
    :cond_2e
    return-void

    .line 811
    :cond_2f
    const-string v0, "Invalid URL host: \""

    .line 812
    .line 813
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v1

    .line 817
    invoke-static {v0, v1, v10}, Lp61;->l(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 818
    .line 819
    .line 820
    return-void

    .line 821
    :cond_30
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 822
    .line 823
    .line 824
    move-result v0

    .line 825
    const/4 v1, 0x6

    .line 826
    if-le v0, v1, :cond_31

    .line 827
    .line 828
    invoke-static {v1, v2}, Lzs3;->X0(ILjava/lang/String;)Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    const-string v1, "..."

    .line 833
    .line 834
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v0

    .line 838
    goto :goto_19

    .line 839
    :cond_31
    move-object v0, v2

    .line 840
    :goto_19
    const-string v1, "Expected URL scheme \'http\' or \'https\' but no scheme was found for "

    .line 841
    .line 842
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v0

    .line 846
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 847
    .line 848
    .line 849
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lbn1;->a:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "://"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v1, "//"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v1, p0, Lbn1;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/16 v2, 0x3a

    .line 31
    .line 32
    if-lez v1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v1, p0, Lbn1;->c:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lez v1, :cond_3

    .line 42
    .line 43
    :goto_1
    iget-object v1, p0, Lbn1;->b:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lbn1;->c:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-lez v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lbn1;->c:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :cond_2
    const/16 v1, 0x40

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object v1, p0, Lbn1;->d:Ljava/lang/String;

    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    invoke-static {v1, v2}, Lzs3;->C0(Ljava/lang/CharSequence;C)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    const/16 v1, 0x5b

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lbn1;->d:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const/16 v1, 0x5d

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    iget-object v1, p0, Lbn1;->d:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    :cond_5
    :goto_2
    iget v1, p0, Lbn1;->e:I

    .line 101
    .line 102
    const/4 v3, -0x1

    .line 103
    if-ne v1, v3, :cond_6

    .line 104
    .line 105
    iget-object v1, p0, Lbn1;->a:Ljava/lang/String;

    .line 106
    .line 107
    if-eqz v1, :cond_a

    .line 108
    .line 109
    :cond_6
    invoke-virtual {p0}, Lbn1;->b()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    iget-object v4, p0, Lbn1;->a:Ljava/lang/String;

    .line 114
    .line 115
    if-eqz v4, :cond_9

    .line 116
    .line 117
    const-string v5, "http"

    .line 118
    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_7

    .line 124
    .line 125
    const/16 v3, 0x50

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_7
    const-string v5, "https"

    .line 129
    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_8

    .line 135
    .line 136
    const/16 v3, 0x1bb

    .line 137
    .line 138
    :cond_8
    :goto_3
    if-eq v1, v3, :cond_a

    .line 139
    .line 140
    :cond_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    :cond_a
    iget-object v1, p0, Lbn1;->f:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    const/4 v3, 0x0

    .line 153
    move v4, v3

    .line 154
    :goto_4
    if-ge v4, v2, :cond_b

    .line 155
    .line 156
    const/16 v5, 0x2f

    .line 157
    .line 158
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    check-cast v5, Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    add-int/lit8 v4, v4, 0x1

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_b
    iget-object v1, p0, Lbn1;->g:Ljava/util/ArrayList;

    .line 174
    .line 175
    if-eqz v1, :cond_10

    .line 176
    .line 177
    const/16 v1, 0x3f

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget-object v1, p0, Lbn1;->g:Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    invoke-static {v3, v2}, Lix;->a0(II)Lms1;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    const/4 v3, 0x2

    .line 196
    invoke-static {v2, v3}, Lix;->T(Lms1;I)Lks1;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    iget v3, v2, Lks1;->n:I

    .line 201
    .line 202
    iget v4, v2, Lks1;->o:I

    .line 203
    .line 204
    iget v2, v2, Lks1;->p:I

    .line 205
    .line 206
    if-lez v2, :cond_c

    .line 207
    .line 208
    if-le v3, v4, :cond_d

    .line 209
    .line 210
    :cond_c
    if-gez v2, :cond_10

    .line 211
    .line 212
    if-gt v4, v3, :cond_10

    .line 213
    .line 214
    :cond_d
    :goto_5
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    check-cast v5, Ljava/lang/String;

    .line 219
    .line 220
    add-int/lit8 v6, v3, 0x1

    .line 221
    .line 222
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    check-cast v6, Ljava/lang/String;

    .line 227
    .line 228
    if-lez v3, :cond_e

    .line 229
    .line 230
    const/16 v7, 0x26

    .line 231
    .line 232
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    :cond_e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    if-eqz v6, :cond_f

    .line 239
    .line 240
    const/16 v5, 0x3d

    .line 241
    .line 242
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    :cond_f
    if-eq v3, v4, :cond_10

    .line 249
    .line 250
    add-int/2addr v3, v2

    .line 251
    goto :goto_5

    .line 252
    :cond_10
    iget-object v1, p0, Lbn1;->h:Ljava/lang/String;

    .line 253
    .line 254
    if-eqz v1, :cond_11

    .line 255
    .line 256
    const/16 v1, 0x23

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    iget-object p0, p0, Lbn1;->h:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    return-object p0
.end method

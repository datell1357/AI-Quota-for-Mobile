.class public final Lt2;
.super Lnq0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static e:Lt2;

.field public static f:Lt2;

.field public static g:Lt2;

.field public static final h:Lk73;

.field public static final i:Lk73;


# instance fields
.field public final synthetic c:I

.field public d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lk73;->o:Lk73;

    .line 2
    .line 3
    sput-object v0, Lt2;->h:Lk73;

    .line 4
    .line 5
    sget-object v0, Lk73;->n:Lk73;

    .line 6
    .line 7
    sput-object v0, Lt2;->i:Lk73;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lt2;->c:I

    .line 2
    .line 3
    invoke-direct {p0}, Lnq0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(I)[I
    .locals 5

    .line 1
    iget v0, p0, Lt2;->c:I

    .line 2
    .line 3
    const-string v1, "impl"

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lnq0;->d()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-gtz v0, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p0}, Lnq0;->d()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-lt p1, v0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object v0, p0, Lt2;->d:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lox3;

    .line 36
    .line 37
    sget-object v1, Lt2;->h:Lk73;

    .line 38
    .line 39
    const-string v2, "layoutResult"

    .line 40
    .line 41
    if-gez p1, :cond_3

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Lox3;->a(I)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-static {v2}, Lnt1;->X(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v4

    .line 54
    :cond_3
    if-eqz v0, :cond_7

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lox3;->a(I)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {p0, v0, v1}, Lt2;->l(ILk73;)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-ne v3, p1, :cond_4

    .line 65
    .line 66
    move p1, v0

    .line 67
    goto :goto_0

    .line 68
    :cond_4
    add-int/lit8 p1, v0, 0x1

    .line 69
    .line 70
    :goto_0
    iget-object v0, p0, Lt2;->d:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Lox3;

    .line 73
    .line 74
    if-eqz v0, :cond_6

    .line 75
    .line 76
    iget-object v0, v0, Lox3;->b:Lse2;

    .line 77
    .line 78
    iget v0, v0, Lse2;->b:I

    .line 79
    .line 80
    if-lt p1, v0, :cond_5

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_5
    invoke-virtual {p0, p1, v1}, Lt2;->l(ILk73;)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    sget-object v1, Lt2;->i:Lk73;

    .line 88
    .line 89
    invoke-virtual {p0, p1, v1}, Lt2;->l(ILk73;)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    add-int/lit8 p1, p1, 0x1

    .line 94
    .line 95
    invoke-virtual {p0, v0, p1}, Lnq0;->c(II)[I

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    :goto_1
    return-object v4

    .line 100
    :cond_6
    invoke-static {v2}, Lnt1;->X(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v4

    .line 104
    :cond_7
    invoke-static {v2}, Lnt1;->X(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v4

    .line 108
    :pswitch_0
    invoke-virtual {p0}, Lnq0;->d()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-gtz v0, :cond_8

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_8
    invoke-virtual {p0}, Lnq0;->d()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-lt p1, v0, :cond_9

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_9
    if-gez p1, :cond_a

    .line 131
    .line 132
    move p1, v3

    .line 133
    :cond_a
    invoke-virtual {p0, p1}, Lt2;->o(I)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_d

    .line 138
    .line 139
    invoke-virtual {p0, p1}, Lt2;->o(I)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_b

    .line 144
    .line 145
    if-eqz p1, :cond_d

    .line 146
    .line 147
    add-int/lit8 v0, p1, -0x1

    .line 148
    .line 149
    invoke-virtual {p0, v0}, Lt2;->o(I)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_b

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_b
    iget-object v0, p0, Lt2;->d:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v0, Ljava/text/BreakIterator;

    .line 159
    .line 160
    if-eqz v0, :cond_c

    .line 161
    .line 162
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-ne p1, v2, :cond_a

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_c
    invoke-static {v1}, Lnt1;->X(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw v4

    .line 173
    :cond_d
    :goto_2
    iget-object v0, p0, Lt2;->d:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v0, Ljava/text/BreakIterator;

    .line 176
    .line 177
    if-eqz v0, :cond_10

    .line 178
    .line 179
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eq v0, v2, :cond_f

    .line 184
    .line 185
    invoke-virtual {p0, v0}, Lt2;->n(I)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_e

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_e
    invoke-virtual {p0, p1, v0}, Lnq0;->c(II)[I

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    :cond_f
    :goto_3
    return-object v4

    .line 197
    :cond_10
    invoke-static {v1}, Lnt1;->X(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw v4

    .line 201
    :pswitch_1
    invoke-virtual {p0}, Lnq0;->d()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-gtz v0, :cond_11

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_11
    if-lt p1, v0, :cond_12

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_12
    if-gez p1, :cond_13

    .line 216
    .line 217
    move p1, v3

    .line 218
    :cond_13
    iget-object v0, p0, Lt2;->d:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v0, Ljava/text/BreakIterator;

    .line 221
    .line 222
    if-eqz v0, :cond_18

    .line 223
    .line 224
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    iget-object v3, p0, Lt2;->d:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v3, Ljava/text/BreakIterator;

    .line 231
    .line 232
    if-nez v0, :cond_15

    .line 233
    .line 234
    if-eqz v3, :cond_14

    .line 235
    .line 236
    invoke-virtual {v3, p1}, Ljava/text/BreakIterator;->following(I)I

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    if-ne p1, v2, :cond_13

    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_14
    invoke-static {v1}, Lnt1;->X(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw v4

    .line 247
    :cond_15
    if-eqz v3, :cond_17

    .line 248
    .line 249
    invoke-virtual {v3, p1}, Ljava/text/BreakIterator;->following(I)I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-ne v0, v2, :cond_16

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_16
    invoke-virtual {p0, p1, v0}, Lnq0;->c(II)[I

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    :goto_4
    return-object v4

    .line 261
    :cond_17
    invoke-static {v1}, Lnt1;->X(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw v4

    .line 265
    :cond_18
    invoke-static {v1}, Lnt1;->X(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw v4

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(I)[I
    .locals 5

    .line 1
    iget v0, p0, Lt2;->c:I

    .line 2
    .line 3
    const-string v1, "impl"

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lnq0;->d()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-gtz v0, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    if-gtz p1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p0}, Lnq0;->d()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v1, p0, Lt2;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Lox3;

    .line 35
    .line 36
    sget-object v2, Lt2;->i:Lk73;

    .line 37
    .line 38
    const-string v4, "layoutResult"

    .line 39
    .line 40
    if-le p1, v0, :cond_3

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Lnq0;->d()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {v1, p1}, Lox3;->a(I)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-static {v4}, Lnt1;->X(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v3

    .line 61
    :cond_3
    if-eqz v1, :cond_6

    .line 62
    .line 63
    invoke-virtual {v1, p1}, Lox3;->a(I)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p0, v0, v2}, Lt2;->l(ILk73;)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    if-ne v1, p1, :cond_4

    .line 74
    .line 75
    move p1, v0

    .line 76
    goto :goto_0

    .line 77
    :cond_4
    add-int/lit8 p1, v0, -0x1

    .line 78
    .line 79
    :goto_0
    if-gez p1, :cond_5

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_5
    sget-object v0, Lt2;->h:Lk73;

    .line 83
    .line 84
    invoke-virtual {p0, p1, v0}, Lt2;->l(ILk73;)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-virtual {p0, p1, v2}, Lt2;->l(ILk73;)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    add-int/lit8 p1, p1, 0x1

    .line 93
    .line 94
    invoke-virtual {p0, v0, p1}, Lnq0;->c(II)[I

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    :goto_1
    return-object v3

    .line 99
    :cond_6
    invoke-static {v4}, Lnt1;->X(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v3

    .line 103
    :pswitch_0
    invoke-virtual {p0}, Lnq0;->d()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-gtz v0, :cond_7

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_7
    if-gtz p1, :cond_8

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_8
    if-le p1, v0, :cond_9

    .line 118
    .line 119
    move p1, v0

    .line 120
    :cond_9
    if-lez p1, :cond_b

    .line 121
    .line 122
    add-int/lit8 v0, p1, -0x1

    .line 123
    .line 124
    invoke-virtual {p0, v0}, Lt2;->o(I)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_b

    .line 129
    .line 130
    invoke-virtual {p0, p1}, Lt2;->n(I)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_b

    .line 135
    .line 136
    iget-object v0, p0, Lt2;->d:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v0, Ljava/text/BreakIterator;

    .line 139
    .line 140
    if-eqz v0, :cond_a

    .line 141
    .line 142
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-ne p1, v2, :cond_9

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_a
    invoke-static {v1}, Lnt1;->X(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw v3

    .line 153
    :cond_b
    iget-object v0, p0, Lt2;->d:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v0, Ljava/text/BreakIterator;

    .line 156
    .line 157
    if-eqz v0, :cond_e

    .line 158
    .line 159
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eq v0, v2, :cond_d

    .line 164
    .line 165
    invoke-virtual {p0, v0}, Lt2;->o(I)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_d

    .line 170
    .line 171
    if-eqz v0, :cond_c

    .line 172
    .line 173
    add-int/lit8 v1, v0, -0x1

    .line 174
    .line 175
    invoke-virtual {p0, v1}, Lt2;->o(I)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-nez v1, :cond_d

    .line 180
    .line 181
    :cond_c
    invoke-virtual {p0, v0, p1}, Lnq0;->c(II)[I

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    :cond_d
    :goto_2
    return-object v3

    .line 186
    :cond_e
    invoke-static {v1}, Lnt1;->X(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw v3

    .line 190
    :pswitch_1
    invoke-virtual {p0}, Lnq0;->d()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-gtz v0, :cond_f

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_f
    if-gtz p1, :cond_10

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_10
    if-le p1, v0, :cond_11

    .line 205
    .line 206
    move p1, v0

    .line 207
    :cond_11
    iget-object v0, p0, Lt2;->d:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v0, Ljava/text/BreakIterator;

    .line 210
    .line 211
    if-eqz v0, :cond_16

    .line 212
    .line 213
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    iget-object v4, p0, Lt2;->d:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v4, Ljava/text/BreakIterator;

    .line 220
    .line 221
    if-nez v0, :cond_13

    .line 222
    .line 223
    if-eqz v4, :cond_12

    .line 224
    .line 225
    invoke-virtual {v4, p1}, Ljava/text/BreakIterator;->preceding(I)I

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    if-ne p1, v2, :cond_11

    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_12
    invoke-static {v1}, Lnt1;->X(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v3

    .line 236
    :cond_13
    if-eqz v4, :cond_15

    .line 237
    .line 238
    invoke-virtual {v4, p1}, Ljava/text/BreakIterator;->preceding(I)I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-ne v0, v2, :cond_14

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_14
    invoke-virtual {p0, v0, p1}, Lnq0;->c(II)[I

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    :goto_3
    return-object v3

    .line 250
    :cond_15
    invoke-static {v1}, Lnt1;->X(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw v3

    .line 254
    :cond_16
    invoke-static {v1}, Lnt1;->X(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw v3

    .line 258
    nop

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public l(ILk73;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lt2;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lox3;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "layoutResult"

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lox3;->c(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v3, p0, Lt2;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v3, Lox3;

    .line 17
    .line 18
    if-eqz v3, :cond_3

    .line 19
    .line 20
    invoke-virtual {v3, v0}, Lox3;->e(I)Lk73;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object p0, p0, Lt2;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lox3;

    .line 27
    .line 28
    if-eq p2, v0, :cond_1

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lox3;->c(I)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_0
    invoke-static {v2}, Lnt1;->X(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v1

    .line 41
    :cond_1
    if-eqz p0, :cond_2

    .line 42
    .line 43
    iget-object p0, p0, Lox3;->b:Lse2;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lse2;->b(I)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lse2;->e:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-static {p1, p0}, Lca;->q(ILjava/util/List;)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lms2;

    .line 61
    .line 62
    iget-object p2, p0, Lms2;->a:Lnb;

    .line 63
    .line 64
    iget v0, p0, Lms2;->d:I

    .line 65
    .line 66
    sub-int/2addr p1, v0

    .line 67
    iget-object p2, p2, Lnb;->d:Lmx3;

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Lmx3;->e(I)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iget p0, p0, Lms2;->b:I

    .line 74
    .line 75
    add-int/2addr p1, p0

    .line 76
    add-int/lit8 p1, p1, -0x1

    .line 77
    .line 78
    return p1

    .line 79
    :cond_2
    invoke-static {v2}, Lnt1;->X(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v1

    .line 83
    :cond_3
    invoke-static {v2}, Lnt1;->X(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v1

    .line 87
    :cond_4
    invoke-static {v2}, Lnt1;->X(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v1
.end method

.method public m(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lt2;->c:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "impl"

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lnq0;->a:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p0, p0, Lt2;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/text/BreakIterator;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {v2}, Lnt1;->X(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v1

    .line 25
    :pswitch_0
    iput-object p1, p0, Lnq0;->a:Ljava/lang/Object;

    .line 26
    .line 27
    iget-object p0, p0, Lt2;->d:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Ljava/text/BreakIterator;

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-static {v2}, Lnt1;->X(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v1

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public n(I)Z
    .locals 1

    .line 1
    if-lez p1, :cond_1

    .line 2
    .line 3
    add-int/lit8 v0, p1, -0x1

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lt2;->o(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lnq0;->d()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lt2;->o(I)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    :cond_0
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public o(I)Z
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lnq0;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ge p1, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lnq0;->d()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/String;->codePointAt(I)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

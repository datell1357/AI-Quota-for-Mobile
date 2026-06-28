.class public final Lt81;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lff1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public synthetic t:Lb81;

.field public synthetic u:Ljava/lang/Object;

.field public final synthetic v:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ldh0;Lgf1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lt81;->r:I

    .line 3
    .line 4
    iput-object p2, p0, Lt81;->v:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 p2, 0x3

    .line 7
    invoke-direct {p0, p2, p1}, Lbv3;-><init>(ILdh0;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ldh0;I)V
    .locals 0

    .line 11
    iput p3, p0, Lt81;->r:I

    iput-object p1, p0, Lt81;->v:Ljava/lang/Object;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lt81;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object p0, p0, Lt81;->v:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lb81;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p2, Ljava/lang/Throwable;

    .line 13
    .line 14
    check-cast p3, Ldh0;

    .line 15
    .line 16
    new-instance v0, Lt81;

    .line 17
    .line 18
    check-cast p0, Lkm3;

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    invoke-direct {v0, p0, p3, v2}, Lt81;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 22
    .line 23
    .line 24
    iput-object p1, v0, Lt81;->t:Lb81;

    .line 25
    .line 26
    iput-object p2, v0, Lt81;->u:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lt81;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_0
    check-cast p2, [Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p3, Ldh0;

    .line 36
    .line 37
    new-instance v0, Lt81;

    .line 38
    .line 39
    check-cast p0, Lff1;

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    invoke-direct {v0, p0, p3, v2}, Lt81;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 43
    .line 44
    .line 45
    iput-object p1, v0, Lt81;->t:Lb81;

    .line 46
    .line 47
    iput-object p2, v0, Lt81;->u:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lt81;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :pswitch_1
    check-cast p2, [Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p3, Ldh0;

    .line 57
    .line 58
    new-instance v0, Lt81;

    .line 59
    .line 60
    check-cast p0, Lgf1;

    .line 61
    .line 62
    invoke-direct {v0, p3, p0}, Lt81;-><init>(Ldh0;Lgf1;)V

    .line 63
    .line 64
    .line 65
    iput-object p1, v0, Lt81;->t:Lb81;

    .line 66
    .line 67
    iput-object p2, v0, Lt81;->u:Ljava/lang/Object;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lt81;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :pswitch_2
    check-cast p3, Ldh0;

    .line 75
    .line 76
    new-instance v0, Lt81;

    .line 77
    .line 78
    check-cast p0, Ldf1;

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-direct {v0, p0, p3, v2}, Lt81;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 82
    .line 83
    .line 84
    iput-object p1, v0, Lt81;->t:Lb81;

    .line 85
    .line 86
    iput-object p2, v0, Lt81;->u:Ljava/lang/Object;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lt81;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lt81;->r:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    sget-object v3, Lt64;->a:Lt64;

    .line 6
    .line 7
    iget-object v4, p0, Lt81;->v:Ljava/lang/Object;

    .line 8
    .line 9
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    sget-object v6, Lri0;->n:Lri0;

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    const/4 v8, 0x0

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lt81;->s:I

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    if-ne v0, v7, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    move-object v3, v8

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lt81;->t:Lb81;

    .line 37
    .line 38
    iget-object v0, p0, Lt81;->u:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Ljava/lang/Throwable;

    .line 41
    .line 42
    new-instance v1, Lgj3;

    .line 43
    .line 44
    check-cast v4, Lkm3;

    .line 45
    .line 46
    iget-object v2, v4, Lkm3;->b:Luj3;

    .line 47
    .line 48
    invoke-virtual {v2, v8}, Luj3;->a(Llj3;)Llj3;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-direct {v1, v2, v8, v8}, Lgj3;-><init>(Llj3;Lhz3;Ljava/util/Map;)V

    .line 53
    .line 54
    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v5, "Init session datastore failed with exception message: "

    .line 58
    .line 59
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v0, ". Emit fallback session "

    .line 70
    .line 71
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v0, v2, Llj3;->a:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v2, "FirebaseSessions"

    .line 84
    .line 85
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iput-object v8, p0, Lt81;->t:Lb81;

    .line 89
    .line 90
    iput v7, p0, Lt81;->s:I

    .line 91
    .line 92
    invoke-interface {p1, v1, p0}, Lb81;->m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    if-ne p0, v6, :cond_2

    .line 97
    .line 98
    move-object v3, v6

    .line 99
    :cond_2
    :goto_0
    return-object v3

    .line 100
    :pswitch_0
    iget v0, p0, Lt81;->s:I

    .line 101
    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    if-eq v0, v7, :cond_4

    .line 105
    .line 106
    if-ne v0, v2, :cond_3

    .line 107
    .line 108
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_3
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    move-object v3, v8

    .line 116
    goto :goto_3

    .line 117
    :cond_4
    iget-object v0, p0, Lt81;->t:Lb81;

    .line 118
    .line 119
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_5
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lt81;->t:Lb81;

    .line 127
    .line 128
    iget-object p1, p0, Lt81;->u:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p1, [Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v4, Lff1;

    .line 133
    .line 134
    aget-object v1, p1, v1

    .line 135
    .line 136
    aget-object p1, p1, v7

    .line 137
    .line 138
    iput-object v0, p0, Lt81;->t:Lb81;

    .line 139
    .line 140
    iput v7, p0, Lt81;->s:I

    .line 141
    .line 142
    invoke-interface {v4, v1, p1, p0}, Lff1;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-ne p1, v6, :cond_6

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_6
    :goto_1
    iput-object v8, p0, Lt81;->t:Lb81;

    .line 150
    .line 151
    iput v2, p0, Lt81;->s:I

    .line 152
    .line 153
    invoke-interface {v0, p1, p0}, Lb81;->m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    if-ne p0, v6, :cond_7

    .line 158
    .line 159
    :goto_2
    move-object v3, v6

    .line 160
    :cond_7
    :goto_3
    return-object v3

    .line 161
    :pswitch_1
    iget v0, p0, Lt81;->s:I

    .line 162
    .line 163
    if-eqz v0, :cond_a

    .line 164
    .line 165
    if-eq v0, v7, :cond_9

    .line 166
    .line 167
    if-ne v0, v2, :cond_8

    .line 168
    .line 169
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    goto :goto_6

    .line 173
    :cond_8
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    move-object v3, v8

    .line 177
    goto :goto_6

    .line 178
    :cond_9
    iget-object v0, p0, Lt81;->t:Lb81;

    .line 179
    .line 180
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_a
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lt81;->t:Lb81;

    .line 188
    .line 189
    iget-object p1, p0, Lt81;->u:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast p1, [Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v4, Lgf1;

    .line 194
    .line 195
    aget-object v1, p1, v1

    .line 196
    .line 197
    aget-object v5, p1, v7

    .line 198
    .line 199
    aget-object p1, p1, v2

    .line 200
    .line 201
    iput-object v0, p0, Lt81;->t:Lb81;

    .line 202
    .line 203
    iput v7, p0, Lt81;->s:I

    .line 204
    .line 205
    invoke-interface {v4, v1, v5, p1, p0}, Lgf1;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    if-ne p1, v6, :cond_b

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_b
    :goto_4
    iput-object v8, p0, Lt81;->t:Lb81;

    .line 213
    .line 214
    iput v2, p0, Lt81;->s:I

    .line 215
    .line 216
    invoke-interface {v0, p1, p0}, Lb81;->m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    if-ne p0, v6, :cond_c

    .line 221
    .line 222
    :goto_5
    move-object v3, v6

    .line 223
    :cond_c
    :goto_6
    return-object v3

    .line 224
    :pswitch_2
    iget v0, p0, Lt81;->s:I

    .line 225
    .line 226
    if-eqz v0, :cond_f

    .line 227
    .line 228
    if-eq v0, v7, :cond_e

    .line 229
    .line 230
    if-ne v0, v2, :cond_d

    .line 231
    .line 232
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    goto :goto_9

    .line 236
    :cond_d
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    move-object v3, v8

    .line 240
    goto :goto_9

    .line 241
    :cond_e
    iget-object v0, p0, Lt81;->t:Lb81;

    .line 242
    .line 243
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    goto :goto_7

    .line 247
    :cond_f
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    iget-object v0, p0, Lt81;->t:Lb81;

    .line 251
    .line 252
    iget-object p1, p0, Lt81;->u:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v4, Ldf1;

    .line 255
    .line 256
    iput-object v0, p0, Lt81;->t:Lb81;

    .line 257
    .line 258
    iput v7, p0, Lt81;->s:I

    .line 259
    .line 260
    invoke-interface {v4, p1, p0}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    if-ne p1, v6, :cond_10

    .line 265
    .line 266
    goto :goto_8

    .line 267
    :cond_10
    :goto_7
    iput-object v8, p0, Lt81;->t:Lb81;

    .line 268
    .line 269
    iput v2, p0, Lt81;->s:I

    .line 270
    .line 271
    invoke-interface {v0, p1, p0}, Lb81;->m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    if-ne p0, v6, :cond_11

    .line 276
    .line 277
    :goto_8
    move-object v3, v6

    .line 278
    :cond_11
    :goto_9
    return-object v3

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

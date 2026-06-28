.class public final Lza0;
.super Le83;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public synthetic t:Ljava/lang/Object;

.field public final synthetic u:Lab0;


# direct methods
.method public constructor <init>(Lab0;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lza0;->u:Lab0;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Le83;-><init>(ILdh0;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lbi3;

    .line 2
    .line 3
    check-cast p2, Ldh0;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p1}, Lza0;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lza0;

    .line 10
    .line 11
    sget-object p1, Lt64;->a:Lt64;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lza0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 1

    .line 1
    new-instance v0, Lza0;

    .line 2
    .line 3
    iget-object p0, p0, Lza0;->u:Lab0;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lza0;-><init>(Lab0;Ldh0;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, v0, Lza0;->t:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lza0;->u:Lab0;

    .line 2
    .line 3
    iget-object v1, v0, Lab0;->n:Ldg2;

    .line 4
    .line 5
    iget-object v2, v0, Lab0;->p:Lsf2;

    .line 6
    .line 7
    iget v3, p0, Lza0;->s:I

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v3, :cond_1

    .line 11
    .line 12
    if-ne v3, v4, :cond_0

    .line 13
    .line 14
    iget v3, p0, Lza0;->r:I

    .line 15
    .line 16
    iget v5, p0, Lza0;->q:I

    .line 17
    .line 18
    iget v6, p0, Lza0;->p:I

    .line 19
    .line 20
    iget-object v7, p0, Lza0;->t:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v7, Lbi3;

    .line 23
    .line 24
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0

    .line 35
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lza0;->t:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v7, p1

    .line 41
    check-cast v7, Lbi3;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    move v5, v3

    .line 45
    move v6, v5

    .line 46
    :goto_0
    iget p1, v0, Lab0;->q:I

    .line 47
    .line 48
    add-int/lit8 p1, p1, 0xa

    .line 49
    .line 50
    iget v8, v2, Lsf2;->b:I

    .line 51
    .line 52
    invoke-static {p1, v8}, Ljava/lang/Math;->min(II)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-ge v6, p1, :cond_2

    .line 57
    .line 58
    add-int/lit8 p1, v6, 0x1

    .line 59
    .line 60
    invoke-virtual {v2, v6}, Lsf2;->c(I)I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    const-string v9, " "

    .line 65
    .line 66
    packed-switch v8, :pswitch_data_0

    .line 67
    .line 68
    .line 69
    const-string v0, "unknown op: "

    .line 70
    .line 71
    invoke-static {v8, v0}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :pswitch_0
    const-string v0, "recompose pending"

    .line 78
    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :pswitch_1
    iget-object v0, v0, Lab0;->o:Ldg2;

    .line 82
    .line 83
    add-int/lit8 v1, v3, 0x1

    .line 84
    .line 85
    invoke-virtual {v0, v3}, Ldg2;->f(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v3, "reuse "

    .line 92
    .line 93
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    move v3, v1

    .line 104
    goto/16 :goto_2

    .line 105
    .line 106
    :pswitch_2
    invoke-virtual {v1, v5}, Ldg2;->f(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    const/4 v1, 0x2

    .line 114
    invoke-static {v1, v0}, Ln44;->R(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    check-cast v0, Ldf1;

    .line 118
    .line 119
    add-int/lit8 v5, v5, 0x2

    .line 120
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v2, "apply "

    .line 124
    .line 125
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    goto/16 :goto_2

    .line 136
    .line 137
    :pswitch_3
    add-int/lit8 v0, v6, 0x2

    .line 138
    .line 139
    invoke-virtual {v2, p1}, Lsf2;->c(I)I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    add-int/lit8 v2, v5, 0x1

    .line 144
    .line 145
    invoke-virtual {v1, v5}, Ldg2;->f(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v8, "insertTopDown "

    .line 152
    .line 153
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    :goto_1
    move v5, v0

    .line 170
    move-object v0, p1

    .line 171
    move p1, v5

    .line 172
    move v5, v2

    .line 173
    goto/16 :goto_2

    .line 174
    .line 175
    :pswitch_4
    add-int/lit8 v0, v6, 0x2

    .line 176
    .line 177
    invoke-virtual {v2, p1}, Lsf2;->c(I)I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    add-int/lit8 v2, v5, 0x1

    .line 182
    .line 183
    invoke-virtual {v1, v5}, Ldg2;->f(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    new-instance v5, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v8, "insertBottomUp "

    .line 190
    .line 191
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    goto :goto_1

    .line 208
    :pswitch_5
    const-string v0, "clear"

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :pswitch_6
    add-int/lit8 v0, v6, 0x2

    .line 212
    .line 213
    invoke-virtual {v2, p1}, Lsf2;->c(I)I

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    add-int/lit8 v1, v6, 0x3

    .line 218
    .line 219
    invoke-virtual {v2, v0}, Lsf2;->c(I)I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    add-int/lit8 v8, v6, 0x4

    .line 224
    .line 225
    invoke-virtual {v2, v1}, Lsf2;->c(I)I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    const-string v2, "move "

    .line 230
    .line 231
    invoke-static {v2, p1, v9, v0, v9}, Lxw1;->v(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    move p1, v8

    .line 243
    goto :goto_2

    .line 244
    :pswitch_7
    add-int/lit8 v0, v6, 0x2

    .line 245
    .line 246
    invoke-virtual {v2, p1}, Lsf2;->c(I)I

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    add-int/lit8 v1, v6, 0x3

    .line 251
    .line 252
    invoke-virtual {v2, v0}, Lsf2;->c(I)I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    const-string v2, "remove "

    .line 257
    .line 258
    invoke-static {p1, v0, v2, v9}, Ldi0;->p(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    move p1, v1

    .line 263
    goto :goto_2

    .line 264
    :pswitch_8
    add-int/lit8 v0, v5, 0x1

    .line 265
    .line 266
    invoke-virtual {v1, v5}, Ldg2;->f(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    const-string v5, "down "

    .line 273
    .line 274
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    move v5, v0

    .line 285
    move-object v0, v1

    .line 286
    goto :goto_2

    .line 287
    :pswitch_9
    const-string v0, "up"

    .line 288
    .line 289
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    const-string v2, ": "

    .line 298
    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    iput-object v7, p0, Lza0;->t:Ljava/lang/Object;

    .line 310
    .line 311
    iput p1, p0, Lza0;->p:I

    .line 312
    .line 313
    iput v5, p0, Lza0;->q:I

    .line 314
    .line 315
    iput v3, p0, Lza0;->r:I

    .line 316
    .line 317
    iput v4, p0, Lza0;->s:I

    .line 318
    .line 319
    invoke-virtual {v7, v0, p0}, Lbi3;->d(Ljava/lang/Object;Le83;)V

    .line 320
    .line 321
    .line 322
    sget-object p0, Lri0;->n:Lri0;

    .line 323
    .line 324
    return-object p0

    .line 325
    :cond_2
    sget-object p0, Lt64;->a:Lt64;

    .line 326
    .line 327
    return-object p0

    .line 328
    nop

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Lq4;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;

.field public final synthetic u:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ldh0;I)V
    .locals 0

    .line 15
    iput p5, p0, Lq4;->r:I

    iput-object p1, p0, Lq4;->t:Ljava/lang/Object;

    iput-object p2, p0, Lq4;->s:Ljava/lang/Object;

    iput-object p3, p0, Lq4;->u:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lxi2;Ldh0;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lq4;->r:I

    .line 3
    .line 4
    iput-object p1, p0, Lq4;->s:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lq4;->t:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lq4;->u:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1, p4}, Lbv3;-><init>(ILdh0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lpg2;Lut0;Lgp3;Ldh0;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lq4;->r:I

    .line 16
    iput-object p1, p0, Lq4;->u:Ljava/lang/Object;

    iput-object p2, p0, Lq4;->t:Ljava/lang/Object;

    iput-object p3, p0, Lq4;->s:Ljava/lang/Object;

    invoke-direct {p0, v0, p4}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lq4;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    check-cast p1, Lqi0;

    .line 6
    .line 7
    check-cast p2, Ldh0;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Lq4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lq4;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lq4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Lq4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lq4;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lq4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :pswitch_1
    invoke-virtual {p0, p2, p1}, Lq4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lq4;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lq4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :pswitch_2
    invoke-virtual {p0, p2, p1}, Lq4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lq4;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lq4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    return-object v1

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 9

    .line 1
    iget p2, p0, Lq4;->r:I

    .line 2
    .line 3
    iget-object v0, p0, Lq4;->u:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lq4;->t:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lq4;->s:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p2, Lq4;

    .line 13
    .line 14
    check-cast p0, Ljava/lang/String;

    .line 15
    .line 16
    check-cast v1, Ljava/util/List;

    .line 17
    .line 18
    check-cast v0, Lxi2;

    .line 19
    .line 20
    invoke-direct {p2, p0, v1, v0, p1}, Lq4;-><init>(Ljava/lang/String;Ljava/util/List;Lxi2;Ldh0;)V

    .line 21
    .line 22
    .line 23
    return-object p2

    .line 24
    :pswitch_0
    new-instance p2, Lq4;

    .line 25
    .line 26
    check-cast v0, Lpg2;

    .line 27
    .line 28
    check-cast v1, Lut0;

    .line 29
    .line 30
    check-cast p0, Lgp3;

    .line 31
    .line 32
    invoke-direct {p2, v0, v1, p0, p1}, Lq4;-><init>(Lpg2;Lut0;Lgp3;Ldh0;)V

    .line 33
    .line 34
    .line 35
    return-object p2

    .line 36
    :pswitch_1
    new-instance v2, Lq4;

    .line 37
    .line 38
    move-object v3, v1

    .line 39
    check-cast v3, Le4;

    .line 40
    .line 41
    move-object v4, p0

    .line 42
    check-cast v4, Ljava/lang/String;

    .line 43
    .line 44
    move-object v5, v0

    .line 45
    check-cast v5, Ljava/lang/String;

    .line 46
    .line 47
    const/4 v7, 0x1

    .line 48
    move-object v6, p1

    .line 49
    invoke-direct/range {v2 .. v7}, Lq4;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ldh0;I)V

    .line 50
    .line 51
    .line 52
    return-object v2

    .line 53
    :pswitch_2
    move-object v6, p1

    .line 54
    new-instance v3, Lq4;

    .line 55
    .line 56
    move-object v4, v1

    .line 57
    check-cast v4, Ly3;

    .line 58
    .line 59
    move-object v5, p0

    .line 60
    check-cast v5, Ljava/lang/String;

    .line 61
    .line 62
    check-cast v0, Lpg2;

    .line 63
    .line 64
    const/4 v8, 0x0

    .line 65
    move-object v7, v6

    .line 66
    move-object v6, v0

    .line 67
    invoke-direct/range {v3 .. v8}, Lq4;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ldh0;I)V

    .line 68
    .line 69
    .line 70
    return-object v3

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lq4;->r:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lq4;->s:Ljava/lang/Object;

    .line 5
    .line 6
    sget-object v3, Lt64;->a:Lt64;

    .line 7
    .line 8
    iget-object v4, p0, Lq4;->t:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p0, p0, Lq4;->u:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Lxi2;

    .line 16
    .line 17
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    check-cast v2, Ljava/lang/String;

    .line 21
    .line 22
    check-cast v4, Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v0, 0x1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    :cond_0
    move p1, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ly84;

    .line 48
    .line 49
    invoke-static {v4}, Lmt1;->i(Ly84;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    move p1, v0

    .line 60
    :goto_0
    iget-object v4, p0, Lxi2;->b:Lii2;

    .line 61
    .line 62
    iget-object v4, v4, Lii2;->h:Lb23;

    .line 63
    .line 64
    iget-object v4, v4, Lb23;->n:Lwr3;

    .line 65
    .line 66
    invoke-virtual {v4}, Lwr3;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Ljava/lang/Iterable;

    .line 71
    .line 72
    new-instance v5, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_4

    .line 86
    .line 87
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    move-object v7, v6

    .line 92
    check-cast v7, Lyh2;

    .line 93
    .line 94
    iget-object v7, v7, Lyh2;->o:Lqi2;

    .line 95
    .line 96
    iget-object v7, v7, Lqi2;->o:Lgg;

    .line 97
    .line 98
    iget-object v7, v7, Lgg;->e:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v7, Ljava/lang/String;

    .line 101
    .line 102
    if-eqz v7, :cond_3

    .line 103
    .line 104
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_6

    .line 113
    .line 114
    :cond_5
    move v4, v1

    .line 115
    goto :goto_2

    .line 116
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    move v6, v1

    .line 121
    :cond_7
    if-ge v6, v4, :cond_5

    .line 122
    .line 123
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    add-int/lit8 v6, v6, 0x1

    .line 128
    .line 129
    check-cast v7, Lyh2;

    .line 130
    .line 131
    iget-object v7, v7, Lyh2;->o:Lqi2;

    .line 132
    .line 133
    iget-object v7, v7, Lqi2;->o:Lgg;

    .line 134
    .line 135
    iget-object v7, v7, Lgg;->e:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v7, Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v7, v2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    if-eqz v7, :cond_7

    .line 144
    .line 145
    move v4, v0

    .line 146
    :goto_2
    if-eqz p1, :cond_11

    .line 147
    .line 148
    if-nez v4, :cond_11

    .line 149
    .line 150
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-nez p1, :cond_11

    .line 155
    .line 156
    new-instance p1, Ljava/util/ArrayList;

    .line 157
    .line 158
    const/16 v4, 0xa

    .line 159
    .line 160
    invoke-static {v5, v4}, Lp70;->a0(Ljava/lang/Iterable;I)I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    move v6, v1

    .line 172
    :goto_3
    if-ge v6, v4, :cond_e

    .line 173
    .line 174
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    add-int/lit8 v6, v6, 0x1

    .line 179
    .line 180
    check-cast v7, Lyh2;

    .line 181
    .line 182
    iget-object v8, v7, Lyh2;->o:Lqi2;

    .line 183
    .line 184
    iget-object v8, v8, Lqi2;->o:Lgg;

    .line 185
    .line 186
    iget-object v8, v8, Lgg;->e:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v8, Ljava/lang/String;

    .line 189
    .line 190
    if-nez v8, :cond_8

    .line 191
    .line 192
    const-string v7, ""

    .line 193
    .line 194
    goto/16 :goto_5

    .line 195
    .line 196
    :cond_8
    const-string v9, "\\{([^}]+)\\}"

    .line 197
    .line 198
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    invoke-static {v9, v1, v8}, Lis0;->h(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lqd1;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    if-nez v9, :cond_9

    .line 217
    .line 218
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    goto :goto_5

    .line 223
    :cond_9
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 224
    .line 225
    .line 226
    move-result v10

    .line 227
    new-instance v11, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 230
    .line 231
    .line 232
    move v12, v1

    .line 233
    :cond_a
    invoke-virtual {v9}, Lqd1;->z()Lms1;

    .line 234
    .line 235
    .line 236
    move-result-object v13

    .line 237
    iget v13, v13, Lks1;->n:I

    .line 238
    .line 239
    invoke-virtual {v11, v8, v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget-object v12, v7, Lyh2;->u:Lai2;

    .line 243
    .line 244
    invoke-virtual {v12}, Lai2;->a()Landroid/os/Bundle;

    .line 245
    .line 246
    .line 247
    move-result-object v12

    .line 248
    if-eqz v12, :cond_b

    .line 249
    .line 250
    invoke-virtual {v9}, Lqd1;->y()Ljava/util/List;

    .line 251
    .line 252
    .line 253
    move-result-object v13

    .line 254
    check-cast v13, Lqa2;

    .line 255
    .line 256
    invoke-virtual {v13, v0}, Lqa2;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v13

    .line 260
    check-cast v13, Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v12, v13}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v12

    .line 266
    if-eqz v12, :cond_b

    .line 267
    .line 268
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v12

    .line 272
    if-eqz v12, :cond_b

    .line 273
    .line 274
    goto :goto_4

    .line 275
    :cond_b
    iget-object v12, v9, Lqd1;->o:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v12, Ljava/util/regex/Matcher;

    .line 278
    .line 279
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v12

    .line 283
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    :goto_4
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v9}, Lqd1;->z()Lms1;

    .line 290
    .line 291
    .line 292
    move-result-object v12

    .line 293
    iget v12, v12, Lks1;->o:I

    .line 294
    .line 295
    add-int/2addr v12, v0

    .line 296
    invoke-virtual {v9}, Lqd1;->E()Lqd1;

    .line 297
    .line 298
    .line 299
    move-result-object v9

    .line 300
    if-ge v12, v10, :cond_c

    .line 301
    .line 302
    if-nez v9, :cond_a

    .line 303
    .line 304
    :cond_c
    if-ge v12, v10, :cond_d

    .line 305
    .line 306
    invoke-virtual {v11, v8, v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    :cond_d
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    :goto_5
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    goto/16 :goto_3

    .line 317
    .line 318
    :cond_e
    new-instance v4, Ljava/util/ArrayList;

    .line 319
    .line 320
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    move v6, v1

    .line 328
    :cond_f
    :goto_6
    if-ge v6, v5, :cond_10

    .line 329
    .line 330
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v7

    .line 334
    add-int/lit8 v6, v6, 0x1

    .line 335
    .line 336
    move-object v8, v7

    .line 337
    check-cast v8, Ljava/lang/String;

    .line 338
    .line 339
    invoke-static {v8, v2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v8

    .line 343
    if-nez v8, :cond_f

    .line 344
    .line 345
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    goto :goto_6

    .line 349
    :cond_10
    new-instance p1, Lg92;

    .line 350
    .line 351
    invoke-direct {p1, p0, v0}, Lg92;-><init>(Lxi2;I)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0, v2, p1}, Lxi2;->a(Ljava/lang/String;Lpe1;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 358
    .line 359
    .line 360
    move-result p1

    .line 361
    :goto_7
    if-ge v1, p1, :cond_11

    .line 362
    .line 363
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    add-int/lit8 v1, v1, 0x1

    .line 368
    .line 369
    check-cast v0, Ljava/lang/String;

    .line 370
    .line 371
    invoke-static {p0, v0}, Lxi2;->b(Lxi2;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    goto :goto_7

    .line 375
    :cond_11
    return-object v3

    .line 376
    :pswitch_0
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    check-cast p0, Lpg2;

    .line 380
    .line 381
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object p0

    .line 385
    check-cast p0, Ljava/util/Set;

    .line 386
    .line 387
    check-cast p0, Ljava/lang/Iterable;

    .line 388
    .line 389
    check-cast v4, Lut0;

    .line 390
    .line 391
    check-cast v2, Lgp3;

    .line 392
    .line 393
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    :cond_12
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 398
    .line 399
    .line 400
    move-result p1

    .line 401
    if-eqz p1, :cond_13

    .line 402
    .line 403
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    check-cast p1, Lyh2;

    .line 408
    .line 409
    invoke-virtual {v4}, Llk2;->b()Lei2;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    iget-object v0, v0, Lei2;->e:Lb23;

    .line 414
    .line 415
    iget-object v0, v0, Lb23;->n:Lwr3;

    .line 416
    .line 417
    invoke-virtual {v0}, Lwr3;->getValue()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    check-cast v0, Ljava/util/List;

    .line 422
    .line 423
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    if-nez v0, :cond_12

    .line 428
    .line 429
    invoke-virtual {v2, p1}, Lgp3;->contains(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    if-nez v0, :cond_12

    .line 434
    .line 435
    invoke-virtual {v4}, Llk2;->b()Lei2;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-virtual {v0, p1}, Lei2;->c(Lyh2;)V

    .line 440
    .line 441
    .line 442
    goto :goto_8

    .line 443
    :cond_13
    return-object v3

    .line 444
    :pswitch_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    check-cast v4, Le4;

    .line 448
    .line 449
    new-instance p1, Lx72;

    .line 450
    .line 451
    check-cast v2, Ljava/lang/String;

    .line 452
    .line 453
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    check-cast p0, Ljava/lang/String;

    .line 457
    .line 458
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 459
    .line 460
    .line 461
    invoke-direct {p1, v2, p0}, Lx72;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v4, p1}, Le4;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    return-object v3

    .line 468
    :pswitch_2
    check-cast p0, Lpg2;

    .line 469
    .line 470
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 471
    .line 472
    .line 473
    check-cast v4, Ly3;

    .line 474
    .line 475
    iget-object p1, v4, Ly3;->a:Ly84;

    .line 476
    .line 477
    sget-object v0, Ly84;->t:Ly84;

    .line 478
    .line 479
    if-eq p1, v0, :cond_14

    .line 480
    .line 481
    sget-object v0, Ly84;->s:Ly84;

    .line 482
    .line 483
    if-ne p1, v0, :cond_15

    .line 484
    .line 485
    :cond_14
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object p1

    .line 489
    check-cast p1, Lw3;

    .line 490
    .line 491
    invoke-virtual {p1}, Lw3;->l()Z

    .line 492
    .line 493
    .line 494
    move-result p1

    .line 495
    :cond_15
    sget-object p1, Lez3;->a:Lra3;

    .line 496
    .line 497
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    check-cast v0, Lw3;

    .line 502
    .line 503
    invoke-virtual {v0}, Lw3;->l()Z

    .line 504
    .line 505
    .line 506
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    check-cast v0, Lw3;

    .line 511
    .line 512
    invoke-virtual {v0}, Lw3;->c()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object p0

    .line 519
    check-cast p0, Lw3;

    .line 520
    .line 521
    invoke-virtual {p0}, Lw3;->f()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    new-array p0, v1, [Ljava/lang/Object;

    .line 525
    .line 526
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 527
    .line 528
    .line 529
    invoke-static {p0}, Lra3;->c([Ljava/lang/Object;)V

    .line 530
    .line 531
    .line 532
    return-object v3

    .line 533
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

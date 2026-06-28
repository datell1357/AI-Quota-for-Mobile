.class public final synthetic Ly82;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lgf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lxi2;

.field public final synthetic p:Lu/sage/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lu/sage/MainActivity;Lxi2;I)V
    .locals 0

    .line 12
    iput p3, p0, Ly82;->n:I

    iput-object p1, p0, Ly82;->p:Lu/sage/MainActivity;

    iput-object p2, p0, Ly82;->o:Lxi2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lxi2;Lu/sage/MainActivity;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Ly82;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ly82;->o:Lxi2;

    .line 8
    .line 9
    iput-object p2, p0, Ly82;->p:Lu/sage/MainActivity;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ly82;->n:I

    .line 4
    .line 5
    sget-object v2, Ly84;->r:Ly84;

    .line 6
    .line 7
    const-string v3, "CLAUDE"

    .line 8
    .line 9
    const-string v4, "serviceType"

    .line 10
    .line 11
    sget-object v5, Lt64;->a:Lt64;

    .line 12
    .line 13
    sget-object v6, Lrb0;->a:Lbx3;

    .line 14
    .line 15
    iget-object v7, v0, Ly82;->o:Lxi2;

    .line 16
    .line 17
    iget-object v0, v0, Ly82;->p:Lu/sage/MainActivity;

    .line 18
    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    move-object/from16 v1, p1

    .line 23
    .line 24
    check-cast v1, Lae;

    .line 25
    .line 26
    move-object/from16 v2, p2

    .line 27
    .line 28
    check-cast v2, Lyh2;

    .line 29
    .line 30
    move-object/from16 v3, p3

    .line 31
    .line 32
    check-cast v3, Lag1;

    .line 33
    .line 34
    move-object/from16 v4, p4

    .line 35
    .line 36
    check-cast v4, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    sget v4, Lu/sage/MainActivity;->C:I

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lu/sage/MainActivity;->i()Ln8;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v3, v7}, Lag1;->h(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {v3, v2}, Lag1;->h(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    or-int/2addr v1, v4

    .line 62
    invoke-virtual {v3}, Lag1;->K()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    if-nez v1, :cond_0

    .line 67
    .line 68
    if-ne v4, v6, :cond_1

    .line 69
    .line 70
    :cond_0
    new-instance v4, Le92;

    .line 71
    .line 72
    const/4 v1, 0x3

    .line 73
    invoke-direct {v4, v7, v2, v1}, Le92;-><init>(Lxi2;Lyh2;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v4}, Lag1;->g0(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    check-cast v4, Lne1;

    .line 80
    .line 81
    const/16 v1, 0x8

    .line 82
    .line 83
    invoke-static {v0, v4, v3, v1}, Ltv4;->d(Ln8;Lne1;Lag1;I)V

    .line 84
    .line 85
    .line 86
    return-object v5

    .line 87
    :pswitch_0
    move-object/from16 v1, p1

    .line 88
    .line 89
    check-cast v1, Lae;

    .line 90
    .line 91
    move-object/from16 v8, p2

    .line 92
    .line 93
    check-cast v8, Lyh2;

    .line 94
    .line 95
    move-object/from16 v13, p3

    .line 96
    .line 97
    check-cast v13, Lag1;

    .line 98
    .line 99
    move-object/from16 v9, p4

    .line 100
    .line 101
    check-cast v9, Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    sget v9, Lu/sage/MainActivity;->C:I

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    iget-object v1, v8, Lyh2;->u:Lai2;

    .line 115
    .line 116
    invoke-virtual {v1}, Lai2;->a()Landroid/os/Bundle;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-eqz v1, :cond_3

    .line 121
    .line 122
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-nez v1, :cond_2

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    move-object v3, v1

    .line 130
    :cond_3
    :goto_0
    :try_start_0
    invoke-static {v3}, Ly84;->valueOf(Ljava/lang/String;)Ly84;

    .line 131
    .line 132
    .line 133
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :catch_0
    move-object v11, v2

    .line 135
    invoke-virtual {v13, v7}, Lag1;->h(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-virtual {v13, v8}, Lag1;->h(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    or-int/2addr v1, v2

    .line 144
    invoke-virtual {v13}, Lag1;->K()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    const/4 v3, 0x1

    .line 149
    if-nez v1, :cond_4

    .line 150
    .line 151
    if-ne v2, v6, :cond_5

    .line 152
    .line 153
    :cond_4
    new-instance v2, Le92;

    .line 154
    .line 155
    invoke-direct {v2, v7, v8, v3}, Le92;-><init>(Lxi2;Lyh2;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v13, v2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_5
    move-object v9, v2

    .line 162
    check-cast v9, Lne1;

    .line 163
    .line 164
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    invoke-virtual {v13, v1}, Lag1;->d(I)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    invoke-virtual {v13, v0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    or-int/2addr v1, v2

    .line 177
    invoke-virtual {v13, v7}, Lag1;->h(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    or-int/2addr v1, v2

    .line 182
    invoke-virtual {v13}, Lag1;->K()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    if-nez v1, :cond_6

    .line 187
    .line 188
    if-ne v2, v6, :cond_7

    .line 189
    .line 190
    :cond_6
    new-instance v2, Ld92;

    .line 191
    .line 192
    invoke-direct {v2, v11, v0, v7, v3}, Ld92;-><init>(Ly84;Lu/sage/MainActivity;Lxi2;I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v13, v2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :cond_7
    move-object v10, v2

    .line 199
    check-cast v10, Lne1;

    .line 200
    .line 201
    const/4 v12, 0x1

    .line 202
    const/16 v14, 0xc00

    .line 203
    .line 204
    invoke-static/range {v9 .. v14}, Lix;->a(Lne1;Lne1;Ly84;ZLag1;I)V

    .line 205
    .line 206
    .line 207
    return-object v5

    .line 208
    :pswitch_1
    move-object/from16 v1, p1

    .line 209
    .line 210
    check-cast v1, Lae;

    .line 211
    .line 212
    move-object/from16 v8, p2

    .line 213
    .line 214
    check-cast v8, Lyh2;

    .line 215
    .line 216
    move-object/from16 v14, p3

    .line 217
    .line 218
    check-cast v14, Lag1;

    .line 219
    .line 220
    move-object/from16 v9, p4

    .line 221
    .line 222
    check-cast v9, Ljava/lang/Integer;

    .line 223
    .line 224
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    sget v9, Lu/sage/MainActivity;->C:I

    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    iget-object v1, v8, Lyh2;->u:Lai2;

    .line 236
    .line 237
    invoke-virtual {v1}, Lai2;->a()Landroid/os/Bundle;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    if-eqz v1, :cond_9

    .line 242
    .line 243
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    if-nez v1, :cond_8

    .line 248
    .line 249
    goto :goto_1

    .line 250
    :cond_8
    move-object v3, v1

    .line 251
    :cond_9
    :goto_1
    :try_start_1
    invoke-static {v3}, Ly84;->valueOf(Ljava/lang/String;)Ly84;

    .line 252
    .line 253
    .line 254
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    :catch_1
    move-object v9, v2

    .line 256
    invoke-virtual {v0}, Lu/sage/MainActivity;->i()Ln8;

    .line 257
    .line 258
    .line 259
    move-result-object v10

    .line 260
    invoke-virtual {v14, v7}, Lag1;->h(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    invoke-virtual {v14, v8}, Lag1;->h(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    or-int/2addr v1, v2

    .line 269
    invoke-virtual {v14}, Lag1;->K()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    if-nez v1, :cond_a

    .line 274
    .line 275
    if-ne v2, v6, :cond_b

    .line 276
    .line 277
    :cond_a
    new-instance v2, Le92;

    .line 278
    .line 279
    const/4 v1, 0x2

    .line 280
    invoke-direct {v2, v7, v8, v1}, Le92;-><init>(Lxi2;Lyh2;I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v14, v2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    :cond_b
    move-object v11, v2

    .line 287
    check-cast v11, Lne1;

    .line 288
    .line 289
    invoke-virtual {v14, v7}, Lag1;->h(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    invoke-virtual {v14}, Lag1;->K()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    if-nez v1, :cond_c

    .line 298
    .line 299
    if-ne v2, v6, :cond_d

    .line 300
    .line 301
    :cond_c
    new-instance v2, Lg92;

    .line 302
    .line 303
    const/4 v1, 0x0

    .line 304
    invoke-direct {v2, v7, v1}, Lg92;-><init>(Lxi2;I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v14, v2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    :cond_d
    move-object v12, v2

    .line 311
    check-cast v12, Lpe1;

    .line 312
    .line 313
    invoke-virtual {v14, v0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    invoke-virtual {v14, v7}, Lag1;->h(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    or-int/2addr v1, v2

    .line 322
    invoke-virtual {v14}, Lag1;->K()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    if-nez v1, :cond_e

    .line 327
    .line 328
    if-ne v2, v6, :cond_f

    .line 329
    .line 330
    :cond_e
    new-instance v2, Lh4;

    .line 331
    .line 332
    const/16 v1, 0x14

    .line 333
    .line 334
    invoke-direct {v2, v1, v0, v7}, Lh4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v14, v2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    :cond_f
    move-object v13, v2

    .line 341
    check-cast v13, Lne1;

    .line 342
    .line 343
    const/16 v15, 0x40

    .line 344
    .line 345
    invoke-static/range {v9 .. v15}, Lqj0;->o(Ly84;Ln8;Lne1;Lpe1;Lne1;Lag1;I)V

    .line 346
    .line 347
    .line 348
    return-object v5

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

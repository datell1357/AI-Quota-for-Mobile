.class public final Ld6;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ld6;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static a(Lbu4;Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lbu4;->n:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    iget-object v2, p0, Lbu4;->o:Lzt4;

    .line 14
    .line 15
    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x4

    .line 19
    iget-object v0, p0, Lbu4;->p:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1, p2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const/4 p2, 0x5

    .line 25
    iget-wide v2, p0, Lbu4;->q:J

    .line 26
    .line 27
    invoke-static {p1, p2, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 28
    .line 29
    .line 30
    const/4 p2, 0x6

    .line 31
    iget-wide v2, p0, Lbu4;->r:J

    .line 32
    .line 33
    invoke-static {p1, p2, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v0, v0, Ld6;->a:I

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x3

    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x2

    .line 13
    const/4 v8, 0x0

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    move-wide v13, v2

    .line 22
    move-wide v15, v13

    .line 23
    move-object v10, v8

    .line 24
    move-object v11, v10

    .line 25
    move-object v12, v11

    .line 26
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ge v2, v0, :cond_5

    .line 31
    .line 32
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eq v3, v7, :cond_4

    .line 41
    .line 42
    if-eq v3, v5, :cond_3

    .line 43
    .line 44
    const/4 v4, 0x4

    .line 45
    if-eq v3, v4, :cond_2

    .line 46
    .line 47
    const/4 v4, 0x5

    .line 48
    if-eq v3, v4, :cond_1

    .line 49
    .line 50
    const/4 v4, 0x6

    .line 51
    if-eq v3, v4, :cond_0

    .line 52
    .line 53
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    move-wide v15, v2

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    move-wide v13, v2

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    move-object v12, v2

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    sget-object v3, Lzt4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 76
    .line 77
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Lzt4;

    .line 82
    .line 83
    move-object v11, v2

    .line 84
    goto :goto_0

    .line 85
    :cond_4
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    move-object v10, v2

    .line 90
    goto :goto_0

    .line 91
    :cond_5
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 92
    .line 93
    .line 94
    new-instance v9, Lbu4;

    .line 95
    .line 96
    invoke-direct/range {v9 .. v16}, Lbu4;-><init>(Ljava/lang/String;Lzt4;Ljava/lang/String;JJ)V

    .line 97
    .line 98
    .line 99
    return-object v9

    .line 100
    :pswitch_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-ge v2, v0, :cond_7

    .line 109
    .line 110
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eq v3, v7, :cond_6

    .line 119
    .line 120
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_6
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createBundle(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    goto :goto_1

    .line 129
    :cond_7
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 130
    .line 131
    .line 132
    new-instance v0, Lzt4;

    .line 133
    .line 134
    invoke-direct {v0, v8}, Lzt4;-><init>(Landroid/os/Bundle;)V

    .line 135
    .line 136
    .line 137
    return-object v0

    .line 138
    :pswitch_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    move v2, v4

    .line 143
    move v3, v2

    .line 144
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    if-ge v8, v0, :cond_b

    .line 149
    .line 150
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    invoke-static {v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    if-eq v9, v6, :cond_a

    .line 159
    .line 160
    if-eq v9, v7, :cond_9

    .line 161
    .line 162
    if-eq v9, v5, :cond_8

    .line 163
    .line 164
    invoke-static {v1, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_8
    invoke-static {v1, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readShort(Landroid/os/Parcel;I)S

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    goto :goto_2

    .line 173
    :cond_9
    invoke-static {v1, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readShort(Landroid/os/Parcel;I)S

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    goto :goto_2

    .line 178
    :cond_a
    invoke-static {v1, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    goto :goto_2

    .line 183
    :cond_b
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 184
    .line 185
    .line 186
    new-instance v0, Lt94;

    .line 187
    .line 188
    invoke-direct {v0, v4, v2, v3}, Lt94;-><init>(ISS)V

    .line 189
    .line 190
    .line 191
    return-object v0

    .line 192
    :pswitch_2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-ge v2, v0, :cond_d

    .line 201
    .line 202
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-eq v3, v6, :cond_c

    .line 211
    .line 212
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_c
    sget-object v3, Lt94;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 217
    .line 218
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    goto :goto_3

    .line 223
    :cond_d
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 224
    .line 225
    .line 226
    new-instance v0, Ls94;

    .line 227
    .line 228
    invoke-direct {v0, v8}, Ls94;-><init>(Ljava/util/ArrayList;)V

    .line 229
    .line 230
    .line 231
    return-object v0

    .line 232
    :pswitch_3
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    move-object v2, v8

    .line 237
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-ge v3, v0, :cond_11

    .line 242
    .line 243
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    invoke-static {v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    if-eq v4, v6, :cond_10

    .line 252
    .line 253
    if-eq v4, v7, :cond_f

    .line 254
    .line 255
    if-eq v4, v5, :cond_e

    .line 256
    .line 257
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 258
    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_e
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 262
    .line 263
    invoke-static {v1, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    check-cast v2, Landroid/app/PendingIntent;

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_f
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    goto :goto_4

    .line 275
    :cond_10
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 276
    .line 277
    .line 278
    goto :goto_4

    .line 279
    :cond_11
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 280
    .line 281
    .line 282
    new-instance v0, Ltt4;

    .line 283
    .line 284
    invoke-direct {v0, v8, v2}, Ltt4;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 285
    .line 286
    .line 287
    return-object v0

    .line 288
    :pswitch_4
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    move-object v2, v8

    .line 293
    :goto_5
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    if-ge v3, v0, :cond_15

    .line 298
    .line 299
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    invoke-static {v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    if-eq v4, v6, :cond_14

    .line 308
    .line 309
    if-eq v4, v7, :cond_13

    .line 310
    .line 311
    if-eq v4, v5, :cond_12

    .line 312
    .line 313
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 314
    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_12
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArray(Landroid/os/Parcel;I)[B

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    goto :goto_5

    .line 322
    :cond_13
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v8

    .line 326
    goto :goto_5

    .line 327
    :cond_14
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 328
    .line 329
    .line 330
    goto :goto_5

    .line 331
    :cond_15
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 332
    .line 333
    .line 334
    new-instance v0, Lft4;

    .line 335
    .line 336
    invoke-direct {v0, v8, v2}, Lft4;-><init>(Ljava/lang/String;[B)V

    .line 337
    .line 338
    .line 339
    return-object v0

    .line 340
    :pswitch_5
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    :goto_6
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-ge v2, v0, :cond_18

    .line 349
    .line 350
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    if-eq v3, v6, :cond_17

    .line 359
    .line 360
    if-eq v3, v7, :cond_16

    .line 361
    .line 362
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 363
    .line 364
    .line 365
    goto :goto_6

    .line 366
    :cond_16
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v8

    .line 370
    goto :goto_6

    .line 371
    :cond_17
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 372
    .line 373
    .line 374
    goto :goto_6

    .line 375
    :cond_18
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 376
    .line 377
    .line 378
    new-instance v0, Lct4;

    .line 379
    .line 380
    invoke-direct {v0, v8}, Lct4;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    return-object v0

    .line 384
    :pswitch_6
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    :goto_7
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    if-ge v2, v0, :cond_1c

    .line 393
    .line 394
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 399
    .line 400
    .line 401
    move-result v3

    .line 402
    if-eq v3, v6, :cond_1b

    .line 403
    .line 404
    if-eq v3, v7, :cond_1a

    .line 405
    .line 406
    if-eq v3, v5, :cond_19

    .line 407
    .line 408
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 409
    .line 410
    .line 411
    goto :goto_7

    .line 412
    :cond_19
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 413
    .line 414
    .line 415
    move-result v4

    .line 416
    goto :goto_7

    .line 417
    :cond_1a
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v8

    .line 421
    goto :goto_7

    .line 422
    :cond_1b
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 423
    .line 424
    .line 425
    goto :goto_7

    .line 426
    :cond_1c
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 427
    .line 428
    .line 429
    new-instance v0, Lzs4;

    .line 430
    .line 431
    invoke-direct {v0, v8, v4}, Lzs4;-><init>(Ljava/lang/String;I)V

    .line 432
    .line 433
    .line 434
    return-object v0

    .line 435
    :pswitch_7
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    :goto_8
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 440
    .line 441
    .line 442
    move-result v2

    .line 443
    if-ge v2, v0, :cond_1f

    .line 444
    .line 445
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 446
    .line 447
    .line 448
    move-result v2

    .line 449
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    if-eq v3, v6, :cond_1e

    .line 454
    .line 455
    if-eq v3, v7, :cond_1d

    .line 456
    .line 457
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 458
    .line 459
    .line 460
    goto :goto_8

    .line 461
    :cond_1d
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v8

    .line 465
    goto :goto_8

    .line 466
    :cond_1e
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 467
    .line 468
    .line 469
    goto :goto_8

    .line 470
    :cond_1f
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 471
    .line 472
    .line 473
    new-instance v0, Lqs4;

    .line 474
    .line 475
    invoke-direct {v0, v8}, Lqs4;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    return-object v0

    .line 479
    :pswitch_8
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    :goto_9
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 484
    .line 485
    .line 486
    move-result v2

    .line 487
    if-ge v2, v0, :cond_21

    .line 488
    .line 489
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 494
    .line 495
    .line 496
    move-result v3

    .line 497
    if-eq v3, v6, :cond_20

    .line 498
    .line 499
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 500
    .line 501
    .line 502
    goto :goto_9

    .line 503
    :cond_20
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createBundle(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 504
    .line 505
    .line 506
    move-result-object v8

    .line 507
    goto :goto_9

    .line 508
    :cond_21
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 509
    .line 510
    .line 511
    new-instance v0, Lms4;

    .line 512
    .line 513
    invoke-direct {v0, v8}, Lms4;-><init>(Landroid/os/Bundle;)V

    .line 514
    .line 515
    .line 516
    return-object v0

    .line 517
    :pswitch_9
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    move-object v10, v8

    .line 522
    move-object v11, v10

    .line 523
    move-object v12, v11

    .line 524
    move-object v13, v12

    .line 525
    move-object v14, v13

    .line 526
    move-object v15, v14

    .line 527
    move-object/from16 v16, v15

    .line 528
    .line 529
    move-object/from16 v17, v16

    .line 530
    .line 531
    :goto_a
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 532
    .line 533
    .line 534
    move-result v2

    .line 535
    if-ge v2, v0, :cond_22

    .line 536
    .line 537
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 538
    .line 539
    .line 540
    move-result v2

    .line 541
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 542
    .line 543
    .line 544
    move-result v3

    .line 545
    packed-switch v3, :pswitch_data_1

    .line 546
    .line 547
    .line 548
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 549
    .line 550
    .line 551
    goto :goto_a

    .line 552
    :pswitch_a
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    goto :goto_a

    .line 556
    :pswitch_b
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v17

    .line 560
    goto :goto_a

    .line 561
    :pswitch_c
    sget-object v3, Lvj;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 562
    .line 563
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 564
    .line 565
    .line 566
    move-result-object v2

    .line 567
    move-object/from16 v16, v2

    .line 568
    .line 569
    check-cast v16, Lvj;

    .line 570
    .line 571
    goto :goto_a

    .line 572
    :pswitch_d
    sget-object v3, Ldk;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 573
    .line 574
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    move-object v15, v2

    .line 579
    check-cast v15, Ldk;

    .line 580
    .line 581
    goto :goto_a

    .line 582
    :pswitch_e
    sget-object v3, Lbk;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 583
    .line 584
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    move-object v14, v2

    .line 589
    check-cast v14, Lbk;

    .line 590
    .line 591
    goto :goto_a

    .line 592
    :pswitch_f
    sget-object v3, Lck;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 593
    .line 594
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    move-object v13, v2

    .line 599
    check-cast v13, Lck;

    .line 600
    .line 601
    goto :goto_a

    .line 602
    :pswitch_10
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArray(Landroid/os/Parcel;I)[B

    .line 603
    .line 604
    .line 605
    move-result-object v12

    .line 606
    goto :goto_a

    .line 607
    :pswitch_11
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v11

    .line 611
    goto :goto_a

    .line 612
    :pswitch_12
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v10

    .line 616
    goto :goto_a

    .line 617
    :cond_22
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 618
    .line 619
    .line 620
    new-instance v9, Lq03;

    .line 621
    .line 622
    invoke-direct/range {v9 .. v17}, Lq03;-><init>(Ljava/lang/String;Ljava/lang/String;[BLck;Lbk;Ldk;Lvj;Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    return-object v9

    .line 626
    :pswitch_13
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 627
    .line 628
    .line 629
    move-result v0

    .line 630
    move-wide v13, v2

    .line 631
    move-wide/from16 v18, v13

    .line 632
    .line 633
    move-wide/from16 v21, v18

    .line 634
    .line 635
    move v15, v4

    .line 636
    move-object v10, v8

    .line 637
    move-object v11, v10

    .line 638
    move-object v12, v11

    .line 639
    move-object/from16 v16, v12

    .line 640
    .line 641
    move-object/from16 v17, v16

    .line 642
    .line 643
    move-object/from16 v20, v17

    .line 644
    .line 645
    move-object/from16 v23, v20

    .line 646
    .line 647
    :goto_b
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 648
    .line 649
    .line 650
    move-result v2

    .line 651
    if-ge v2, v0, :cond_23

    .line 652
    .line 653
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 654
    .line 655
    .line 656
    move-result v2

    .line 657
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 658
    .line 659
    .line 660
    move-result v3

    .line 661
    packed-switch v3, :pswitch_data_2

    .line 662
    .line 663
    .line 664
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 665
    .line 666
    .line 667
    goto :goto_b

    .line 668
    :pswitch_14
    sget-object v3, Lbu4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 669
    .line 670
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 671
    .line 672
    .line 673
    move-result-object v2

    .line 674
    check-cast v2, Lbu4;

    .line 675
    .line 676
    move-object/from16 v23, v2

    .line 677
    .line 678
    goto :goto_b

    .line 679
    :pswitch_15
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 680
    .line 681
    .line 682
    move-result-wide v2

    .line 683
    move-wide/from16 v21, v2

    .line 684
    .line 685
    goto :goto_b

    .line 686
    :pswitch_16
    sget-object v3, Lbu4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 687
    .line 688
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 689
    .line 690
    .line 691
    move-result-object v2

    .line 692
    check-cast v2, Lbu4;

    .line 693
    .line 694
    move-object/from16 v20, v2

    .line 695
    .line 696
    goto :goto_b

    .line 697
    :pswitch_17
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 698
    .line 699
    .line 700
    move-result-wide v2

    .line 701
    move-wide/from16 v18, v2

    .line 702
    .line 703
    goto :goto_b

    .line 704
    :pswitch_18
    sget-object v3, Lbu4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 705
    .line 706
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    check-cast v2, Lbu4;

    .line 711
    .line 712
    move-object/from16 v17, v2

    .line 713
    .line 714
    goto :goto_b

    .line 715
    :pswitch_19
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v2

    .line 719
    move-object/from16 v16, v2

    .line 720
    .line 721
    goto :goto_b

    .line 722
    :pswitch_1a
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 723
    .line 724
    .line 725
    move-result v2

    .line 726
    move v15, v2

    .line 727
    goto :goto_b

    .line 728
    :pswitch_1b
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 729
    .line 730
    .line 731
    move-result-wide v2

    .line 732
    move-wide v13, v2

    .line 733
    goto :goto_b

    .line 734
    :pswitch_1c
    sget-object v3, Lvb5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 735
    .line 736
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 737
    .line 738
    .line 739
    move-result-object v2

    .line 740
    check-cast v2, Lvb5;

    .line 741
    .line 742
    move-object v12, v2

    .line 743
    goto :goto_b

    .line 744
    :pswitch_1d
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v2

    .line 748
    move-object v11, v2

    .line 749
    goto :goto_b

    .line 750
    :pswitch_1e
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    move-object v10, v2

    .line 755
    goto :goto_b

    .line 756
    :cond_23
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 757
    .line 758
    .line 759
    new-instance v9, Lfq4;

    .line 760
    .line 761
    invoke-direct/range {v9 .. v23}, Lfq4;-><init>(Ljava/lang/String;Ljava/lang/String;Lvb5;JZLjava/lang/String;Lbu4;JLbu4;JLbu4;)V

    .line 762
    .line 763
    .line 764
    return-object v9

    .line 765
    :pswitch_1f
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 766
    .line 767
    .line 768
    move-result v0

    .line 769
    move-wide v10, v2

    .line 770
    move-wide v12, v10

    .line 771
    move v9, v4

    .line 772
    :goto_c
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 773
    .line 774
    .line 775
    move-result v2

    .line 776
    if-ge v2, v0, :cond_27

    .line 777
    .line 778
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 779
    .line 780
    .line 781
    move-result v2

    .line 782
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 783
    .line 784
    .line 785
    move-result v3

    .line 786
    if-eq v3, v6, :cond_26

    .line 787
    .line 788
    if-eq v3, v7, :cond_25

    .line 789
    .line 790
    if-eq v3, v5, :cond_24

    .line 791
    .line 792
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 793
    .line 794
    .line 795
    goto :goto_c

    .line 796
    :cond_24
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 797
    .line 798
    .line 799
    move-result-wide v2

    .line 800
    move-wide v12, v2

    .line 801
    goto :goto_c

    .line 802
    :cond_25
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 803
    .line 804
    .line 805
    move-result v2

    .line 806
    move v9, v2

    .line 807
    goto :goto_c

    .line 808
    :cond_26
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 809
    .line 810
    .line 811
    move-result-wide v2

    .line 812
    move-wide v10, v2

    .line 813
    goto :goto_c

    .line 814
    :cond_27
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 815
    .line 816
    .line 817
    new-instance v8, Lpo4;

    .line 818
    .line 819
    invoke-direct/range {v8 .. v13}, Lpo4;-><init>(IJJ)V

    .line 820
    .line 821
    .line 822
    return-object v8

    .line 823
    :pswitch_20
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 824
    .line 825
    .line 826
    move-result v0

    .line 827
    move-object v2, v8

    .line 828
    :goto_d
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 829
    .line 830
    .line 831
    move-result v3

    .line 832
    if-ge v3, v0, :cond_2b

    .line 833
    .line 834
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 835
    .line 836
    .line 837
    move-result v3

    .line 838
    invoke-static {v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 839
    .line 840
    .line 841
    move-result v9

    .line 842
    if-eq v9, v6, :cond_2a

    .line 843
    .line 844
    if-eq v9, v7, :cond_29

    .line 845
    .line 846
    if-eq v9, v5, :cond_28

    .line 847
    .line 848
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 849
    .line 850
    .line 851
    goto :goto_d

    .line 852
    :cond_28
    sget-object v2, Lcom/google/android/gms/common/internal/zav;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 853
    .line 854
    invoke-static {v1, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 855
    .line 856
    .line 857
    move-result-object v2

    .line 858
    check-cast v2, Lcom/google/android/gms/common/internal/zav;

    .line 859
    .line 860
    goto :goto_d

    .line 861
    :cond_29
    sget-object v8, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 862
    .line 863
    invoke-static {v1, v3, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 864
    .line 865
    .line 866
    move-result-object v3

    .line 867
    move-object v8, v3

    .line 868
    check-cast v8, Lcom/google/android/gms/common/ConnectionResult;

    .line 869
    .line 870
    goto :goto_d

    .line 871
    :cond_2a
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 872
    .line 873
    .line 874
    move-result v4

    .line 875
    goto :goto_d

    .line 876
    :cond_2b
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 877
    .line 878
    .line 879
    new-instance v0, Lbj4;

    .line 880
    .line 881
    invoke-direct {v0, v4, v8, v2}, Lbj4;-><init>(ILcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/internal/zav;)V

    .line 882
    .line 883
    .line 884
    return-object v0

    .line 885
    :pswitch_21
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 886
    .line 887
    .line 888
    move-result v0

    .line 889
    :goto_e
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 890
    .line 891
    .line 892
    move-result v2

    .line 893
    if-ge v2, v0, :cond_2e

    .line 894
    .line 895
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 896
    .line 897
    .line 898
    move-result v2

    .line 899
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 900
    .line 901
    .line 902
    move-result v3

    .line 903
    if-eq v3, v6, :cond_2d

    .line 904
    .line 905
    if-eq v3, v7, :cond_2c

    .line 906
    .line 907
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 908
    .line 909
    .line 910
    goto :goto_e

    .line 911
    :cond_2c
    sget-object v3, Lcom/google/android/gms/common/internal/zat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 912
    .line 913
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 914
    .line 915
    .line 916
    move-result-object v2

    .line 917
    move-object v8, v2

    .line 918
    check-cast v8, Lcom/google/android/gms/common/internal/zat;

    .line 919
    .line 920
    goto :goto_e

    .line 921
    :cond_2d
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 922
    .line 923
    .line 924
    move-result v4

    .line 925
    goto :goto_e

    .line 926
    :cond_2e
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 927
    .line 928
    .line 929
    new-instance v0, Lyi4;

    .line 930
    .line 931
    invoke-direct {v0, v4, v8}, Lyi4;-><init>(ILcom/google/android/gms/common/internal/zat;)V

    .line 932
    .line 933
    .line 934
    return-object v0

    .line 935
    :pswitch_22
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 936
    .line 937
    .line 938
    move-result v0

    .line 939
    move-object v2, v8

    .line 940
    :goto_f
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 941
    .line 942
    .line 943
    move-result v3

    .line 944
    if-ge v3, v0, :cond_31

    .line 945
    .line 946
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 947
    .line 948
    .line 949
    move-result v3

    .line 950
    invoke-static {v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 951
    .line 952
    .line 953
    move-result v4

    .line 954
    if-eq v4, v6, :cond_30

    .line 955
    .line 956
    if-eq v4, v7, :cond_2f

    .line 957
    .line 958
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 959
    .line 960
    .line 961
    goto :goto_f

    .line 962
    :cond_2f
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v2

    .line 966
    goto :goto_f

    .line 967
    :cond_30
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    .line 968
    .line 969
    .line 970
    move-result-object v8

    .line 971
    goto :goto_f

    .line 972
    :cond_31
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 973
    .line 974
    .line 975
    new-instance v0, Lwi4;

    .line 976
    .line 977
    invoke-direct {v0, v2, v8}, Lwi4;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 978
    .line 979
    .line 980
    return-object v0

    .line 981
    :pswitch_23
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 982
    .line 983
    .line 984
    move-result v0

    .line 985
    move v2, v4

    .line 986
    :goto_10
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 987
    .line 988
    .line 989
    move-result v3

    .line 990
    if-ge v3, v0, :cond_35

    .line 991
    .line 992
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 993
    .line 994
    .line 995
    move-result v3

    .line 996
    invoke-static {v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 997
    .line 998
    .line 999
    move-result v9

    .line 1000
    if-eq v9, v6, :cond_34

    .line 1001
    .line 1002
    if-eq v9, v7, :cond_33

    .line 1003
    .line 1004
    if-eq v9, v5, :cond_32

    .line 1005
    .line 1006
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 1007
    .line 1008
    .line 1009
    goto :goto_10

    .line 1010
    :cond_32
    sget-object v8, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1011
    .line 1012
    invoke-static {v1, v3, v8}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v3

    .line 1016
    move-object v8, v3

    .line 1017
    check-cast v8, Landroid/content/Intent;

    .line 1018
    .line 1019
    goto :goto_10

    .line 1020
    :cond_33
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 1021
    .line 1022
    .line 1023
    move-result v2

    .line 1024
    goto :goto_10

    .line 1025
    :cond_34
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 1026
    .line 1027
    .line 1028
    move-result v4

    .line 1029
    goto :goto_10

    .line 1030
    :cond_35
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 1031
    .line 1032
    .line 1033
    new-instance v0, Lji4;

    .line 1034
    .line 1035
    invoke-direct {v0, v4, v2, v8}, Lji4;-><init>(IILandroid/content/Intent;)V

    .line 1036
    .line 1037
    .line 1038
    return-object v0

    .line 1039
    :pswitch_24
    new-instance v0, Lus2;

    .line 1040
    .line 1041
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    .line 1042
    .line 1043
    .line 1044
    move-result-wide v1

    .line 1045
    invoke-direct {v0, v1, v2}, Lus2;-><init>(J)V

    .line 1046
    .line 1047
    .line 1048
    return-object v0

    .line 1049
    :pswitch_25
    new-instance v0, Lts2;

    .line 1050
    .line 1051
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1052
    .line 1053
    .line 1054
    move-result v1

    .line 1055
    invoke-direct {v0, v1}, Lts2;-><init>(I)V

    .line 1056
    .line 1057
    .line 1058
    return-object v0

    .line 1059
    :pswitch_26
    new-instance v0, Lss2;

    .line 1060
    .line 1061
    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    .line 1062
    .line 1063
    .line 1064
    move-result v1

    .line 1065
    invoke-direct {v0, v1}, Lss2;-><init>(F)V

    .line 1066
    .line 1067
    .line 1068
    return-object v0

    .line 1069
    :pswitch_27
    new-instance v0, Landroidx/versionedparcelable/ParcelImpl;

    .line 1070
    .line 1071
    invoke-direct {v0, v1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    .line 1072
    .line 1073
    .line 1074
    return-object v0

    .line 1075
    :pswitch_28
    new-instance v0, Lbl2;

    .line 1076
    .line 1077
    invoke-direct {v0, v1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1081
    .line 1082
    .line 1083
    move-result v1

    .line 1084
    iput v1, v0, Lbl2;->n:I

    .line 1085
    .line 1086
    return-object v0

    .line 1087
    :pswitch_29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1088
    .line 1089
    .line 1090
    new-instance v0, Lus1;

    .line 1091
    .line 1092
    const-class v2, Landroid/content/IntentSender;

    .line 1093
    .line 1094
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v2

    .line 1098
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v2

    .line 1102
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1103
    .line 1104
    .line 1105
    check-cast v2, Landroid/content/IntentSender;

    .line 1106
    .line 1107
    const-class v3, Landroid/content/Intent;

    .line 1108
    .line 1109
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v3

    .line 1113
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v3

    .line 1117
    check-cast v3, Landroid/content/Intent;

    .line 1118
    .line 1119
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1120
    .line 1121
    .line 1122
    move-result v4

    .line 1123
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1124
    .line 1125
    .line 1126
    move-result v1

    .line 1127
    invoke-direct {v0, v2, v3, v4, v1}, Lus1;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    .line 1128
    .line 1129
    .line 1130
    return-object v0

    .line 1131
    :pswitch_2a
    new-instance v0, Lod1;

    .line 1132
    .line 1133
    invoke-direct {v0, v1}, Lod1;-><init>(Landroid/os/Parcel;)V

    .line 1134
    .line 1135
    .line 1136
    return-object v0

    .line 1137
    :pswitch_2b
    new-instance v0, Ljd1;

    .line 1138
    .line 1139
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1140
    .line 1141
    .line 1142
    iput-object v8, v0, Ljd1;->r:Ljava/lang/String;

    .line 1143
    .line 1144
    new-instance v2, Ljava/util/ArrayList;

    .line 1145
    .line 1146
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    .line 1148
    .line 1149
    iput-object v2, v0, Ljd1;->s:Ljava/util/ArrayList;

    .line 1150
    .line 1151
    new-instance v2, Ljava/util/ArrayList;

    .line 1152
    .line 1153
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1154
    .line 1155
    .line 1156
    iput-object v2, v0, Ljd1;->t:Ljava/util/ArrayList;

    .line 1157
    .line 1158
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v2

    .line 1162
    iput-object v2, v0, Ljd1;->n:Ljava/util/ArrayList;

    .line 1163
    .line 1164
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v2

    .line 1168
    iput-object v2, v0, Ljd1;->o:Ljava/util/ArrayList;

    .line 1169
    .line 1170
    sget-object v2, Ldq;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1171
    .line 1172
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v2

    .line 1176
    check-cast v2, [Ldq;

    .line 1177
    .line 1178
    iput-object v2, v0, Ljd1;->p:[Ldq;

    .line 1179
    .line 1180
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1181
    .line 1182
    .line 1183
    move-result v2

    .line 1184
    iput v2, v0, Ljd1;->q:I

    .line 1185
    .line 1186
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v2

    .line 1190
    iput-object v2, v0, Ljd1;->r:Ljava/lang/String;

    .line 1191
    .line 1192
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v2

    .line 1196
    iput-object v2, v0, Ljd1;->s:Ljava/util/ArrayList;

    .line 1197
    .line 1198
    sget-object v2, Leq;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1199
    .line 1200
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v2

    .line 1204
    iput-object v2, v0, Ljd1;->t:Ljava/util/ArrayList;

    .line 1205
    .line 1206
    sget-object v2, Led1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1207
    .line 1208
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v1

    .line 1212
    iput-object v1, v0, Ljd1;->u:Ljava/util/ArrayList;

    .line 1213
    .line 1214
    return-object v0

    .line 1215
    :pswitch_2c
    new-instance v0, Led1;

    .line 1216
    .line 1217
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1218
    .line 1219
    .line 1220
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v2

    .line 1224
    iput-object v2, v0, Led1;->n:Ljava/lang/String;

    .line 1225
    .line 1226
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1227
    .line 1228
    .line 1229
    move-result v1

    .line 1230
    iput v1, v0, Led1;->o:I

    .line 1231
    .line 1232
    return-object v0

    .line 1233
    :pswitch_2d
    new-instance v0, Lmp0;

    .line 1234
    .line 1235
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1236
    .line 1237
    .line 1238
    move-result v1

    .line 1239
    invoke-direct {v0, v1}, Lmp0;-><init>(I)V

    .line 1240
    .line 1241
    .line 1242
    return-object v0

    .line 1243
    :pswitch_2e
    new-instance v0, Leq;

    .line 1244
    .line 1245
    invoke-direct {v0, v1}, Leq;-><init>(Landroid/os/Parcel;)V

    .line 1246
    .line 1247
    .line 1248
    return-object v0

    .line 1249
    :pswitch_2f
    new-instance v0, Ldq;

    .line 1250
    .line 1251
    invoke-direct {v0, v1}, Ldq;-><init>(Landroid/os/Parcel;)V

    .line 1252
    .line 1253
    .line 1254
    return-object v0

    .line 1255
    :pswitch_30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1256
    .line 1257
    .line 1258
    new-instance v0, Le6;

    .line 1259
    .line 1260
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1261
    .line 1262
    .line 1263
    move-result v2

    .line 1264
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 1265
    .line 1266
    .line 1267
    move-result v3

    .line 1268
    if-nez v3, :cond_36

    .line 1269
    .line 1270
    goto :goto_11

    .line 1271
    :cond_36
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1272
    .line 1273
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v1

    .line 1277
    move-object v8, v1

    .line 1278
    check-cast v8, Landroid/content/Intent;

    .line 1279
    .line 1280
    :goto_11
    invoke-direct {v0, v8, v2}, Le6;-><init>(Landroid/content/Intent;I)V

    .line 1281
    .line 1282
    .line 1283
    return-object v0

    .line 1284
    nop

    .line 1285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_13
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

    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Ld6;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p0, p1, [Lbu4;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Lzt4;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    new-array p0, p1, [Lt94;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    new-array p0, p1, [Ls94;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    new-array p0, p1, [Ltt4;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    new-array p0, p1, [Lft4;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    new-array p0, p1, [Lct4;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    new-array p0, p1, [Lzs4;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    new-array p0, p1, [Lqs4;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    new-array p0, p1, [Lms4;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    new-array p0, p1, [Lq03;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    new-array p0, p1, [Lfq4;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_b
    new-array p0, p1, [Lpo4;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_c
    new-array p0, p1, [Lbj4;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_d
    new-array p0, p1, [Lyi4;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_e
    new-array p0, p1, [Lwi4;

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_f
    new-array p0, p1, [Lji4;

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_10
    new-array p0, p1, [Lus2;

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_11
    new-array p0, p1, [Lts2;

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_12
    new-array p0, p1, [Lss2;

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_13
    new-array p0, p1, [Landroidx/versionedparcelable/ParcelImpl;

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_14
    new-array p0, p1, [Lbl2;

    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_15
    new-array p0, p1, [Lus1;

    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_16
    new-array p0, p1, [Lod1;

    .line 76
    .line 77
    return-object p0

    .line 78
    :pswitch_17
    new-array p0, p1, [Ljd1;

    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_18
    new-array p0, p1, [Led1;

    .line 82
    .line 83
    return-object p0

    .line 84
    :pswitch_19
    new-array p0, p1, [Lmp0;

    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_1a
    new-array p0, p1, [Leq;

    .line 88
    .line 89
    return-object p0

    .line 90
    :pswitch_1b
    new-array p0, p1, [Ldq;

    .line 91
    .line 92
    return-object p0

    .line 93
    :pswitch_1c
    new-array p0, p1, [Le6;

    .line 94
    .line 95
    return-object p0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

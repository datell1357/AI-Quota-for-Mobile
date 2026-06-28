.class public final Lav4;
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
    iput p1, p0, Lav4;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static a(Lvb5;Landroid/os/Parcel;)V
    .locals 6

    .line 1
    iget v0, p0, Lvb5;->n:I

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lvb5;->o:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    iget-wide v4, p0, Lvb5;->p:J

    .line 20
    .line 21
    invoke-static {p1, v0, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    iget-object v2, p0, Lvb5;->q:Ljava/lang/Long;

    .line 26
    .line 27
    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLongObject(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x5

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloatObject(Landroid/os/Parcel;ILjava/lang/Float;Z)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x6

    .line 36
    iget-object v2, p0, Lvb5;->r:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x7

    .line 42
    iget-object v2, p0, Lvb5;->s:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    const/16 v0, 0x8

    .line 48
    .line 49
    iget-object p0, p0, Lvb5;->t:Ljava/lang/Double;

    .line 50
    .line 51
    invoke-static {p1, v0, p0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDoubleObject(Landroid/os/Parcel;ILjava/lang/Double;Z)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 55

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v0, v0, Lav4;->a:I

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    const/4 v3, 0x4

    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    const/4 v6, 0x3

    .line 12
    const/4 v7, 0x1

    .line 13
    const/4 v8, 0x2

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v10, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    :try_start_0
    invoke-static {v0}, Le21;->a(I)Le21;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_0
    .catch Lc21; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw v1

    .line 35
    :pswitch_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const-string v2, ""

    .line 40
    .line 41
    const/16 v3, 0x64

    .line 42
    .line 43
    const-wide/32 v11, -0x80000000

    .line 44
    .line 45
    .line 46
    move-object/from16 v37, v2

    .line 47
    .line 48
    move-object/from16 v38, v37

    .line 49
    .line 50
    move-object/from16 v44, v38

    .line 51
    .line 52
    move-object/from16 v49, v44

    .line 53
    .line 54
    move/from16 v43, v3

    .line 55
    .line 56
    move-wide/from16 v18, v4

    .line 57
    .line 58
    move-wide/from16 v20, v18

    .line 59
    .line 60
    move-wide/from16 v28, v20

    .line 61
    .line 62
    move-wide/from16 v34, v28

    .line 63
    .line 64
    move-wide/from16 v41, v34

    .line 65
    .line 66
    move-wide/from16 v46, v41

    .line 67
    .line 68
    move-wide/from16 v50, v46

    .line 69
    .line 70
    move-wide/from16 v53, v50

    .line 71
    .line 72
    move/from16 v23, v7

    .line 73
    .line 74
    move/from16 v31, v23

    .line 75
    .line 76
    move/from16 v24, v9

    .line 77
    .line 78
    move/from16 v30, v24

    .line 79
    .line 80
    move/from16 v32, v30

    .line 81
    .line 82
    move/from16 v40, v32

    .line 83
    .line 84
    move/from16 v45, v40

    .line 85
    .line 86
    move/from16 v52, v45

    .line 87
    .line 88
    move-object v14, v10

    .line 89
    move-object v15, v14

    .line 90
    move-object/from16 v16, v15

    .line 91
    .line 92
    move-object/from16 v17, v16

    .line 93
    .line 94
    move-object/from16 v22, v17

    .line 95
    .line 96
    move-object/from16 v27, v22

    .line 97
    .line 98
    move-object/from16 v33, v27

    .line 99
    .line 100
    move-object/from16 v36, v33

    .line 101
    .line 102
    move-object/from16 v39, v36

    .line 103
    .line 104
    move-object/from16 v48, v39

    .line 105
    .line 106
    move-wide/from16 v25, v11

    .line 107
    .line 108
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-ge v2, v0, :cond_0

    .line 113
    .line 114
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    packed-switch v3, :pswitch_data_1

    .line 123
    .line 124
    .line 125
    :pswitch_1
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :pswitch_2
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 130
    .line 131
    .line 132
    move-result-wide v2

    .line 133
    move-wide/from16 v53, v2

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :pswitch_3
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    move/from16 v52, v2

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :pswitch_4
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 144
    .line 145
    .line 146
    move-result-wide v2

    .line 147
    move-wide/from16 v50, v2

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :pswitch_5
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    move-object/from16 v49, v2

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :pswitch_6
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    move-object/from16 v48, v2

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :pswitch_7
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 165
    .line 166
    .line 167
    move-result-wide v2

    .line 168
    move-wide/from16 v46, v2

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :pswitch_8
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    move/from16 v45, v2

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :pswitch_9
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    move-object/from16 v44, v2

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :pswitch_a
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    move/from16 v43, v2

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :pswitch_b
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 193
    .line 194
    .line 195
    move-result-wide v2

    .line 196
    move-wide/from16 v41, v2

    .line 197
    .line 198
    goto :goto_0

    .line 199
    :pswitch_c
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    move/from16 v40, v2

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :pswitch_d
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    move-object/from16 v39, v2

    .line 211
    .line 212
    goto :goto_0

    .line 213
    :pswitch_e
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    move-object/from16 v38, v2

    .line 218
    .line 219
    goto :goto_0

    .line 220
    :pswitch_f
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    move-object/from16 v37, v2

    .line 225
    .line 226
    goto :goto_0

    .line 227
    :pswitch_10
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    move-object/from16 v36, v2

    .line 232
    .line 233
    goto :goto_0

    .line 234
    :pswitch_11
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 235
    .line 236
    .line 237
    move-result-wide v2

    .line 238
    move-wide/from16 v34, v2

    .line 239
    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :pswitch_12
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBooleanObject(Landroid/os/Parcel;I)Ljava/lang/Boolean;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    move-object/from16 v33, v2

    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :pswitch_13
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    move/from16 v32, v2

    .line 255
    .line 256
    goto/16 :goto_0

    .line 257
    .line 258
    :pswitch_14
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    move/from16 v31, v2

    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :pswitch_15
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    move/from16 v30, v2

    .line 271
    .line 272
    goto/16 :goto_0

    .line 273
    .line 274
    :pswitch_16
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 275
    .line 276
    .line 277
    move-result-wide v2

    .line 278
    move-wide/from16 v28, v2

    .line 279
    .line 280
    goto/16 :goto_0

    .line 281
    .line 282
    :pswitch_17
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    move-object/from16 v27, v2

    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :pswitch_18
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 291
    .line 292
    .line 293
    move-result-wide v2

    .line 294
    move-wide/from16 v25, v2

    .line 295
    .line 296
    goto/16 :goto_0

    .line 297
    .line 298
    :pswitch_19
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    move/from16 v24, v2

    .line 303
    .line 304
    goto/16 :goto_0

    .line 305
    .line 306
    :pswitch_1a
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    move/from16 v23, v2

    .line 311
    .line 312
    goto/16 :goto_0

    .line 313
    .line 314
    :pswitch_1b
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    move-object/from16 v22, v2

    .line 319
    .line 320
    goto/16 :goto_0

    .line 321
    .line 322
    :pswitch_1c
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 323
    .line 324
    .line 325
    move-result-wide v2

    .line 326
    move-wide/from16 v20, v2

    .line 327
    .line 328
    goto/16 :goto_0

    .line 329
    .line 330
    :pswitch_1d
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 331
    .line 332
    .line 333
    move-result-wide v2

    .line 334
    move-wide/from16 v18, v2

    .line 335
    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :pswitch_1e
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    move-object/from16 v17, v2

    .line 343
    .line 344
    goto/16 :goto_0

    .line 345
    .line 346
    :pswitch_1f
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    move-object/from16 v16, v2

    .line 351
    .line 352
    goto/16 :goto_0

    .line 353
    .line 354
    :pswitch_20
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    move-object v15, v2

    .line 359
    goto/16 :goto_0

    .line 360
    .line 361
    :pswitch_21
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    move-object v14, v2

    .line 366
    goto/16 :goto_0

    .line 367
    .line 368
    :cond_0
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 369
    .line 370
    .line 371
    new-instance v13, Lvc5;

    .line 372
    .line 373
    invoke-direct/range {v13 .. v54}, Lvc5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JIZZLjava/lang/Boolean;JLjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JIJ)V

    .line 374
    .line 375
    .line 376
    return-object v13

    .line 377
    :pswitch_22
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    move-wide v14, v4

    .line 382
    move v12, v9

    .line 383
    move-object v13, v10

    .line 384
    move-object/from16 v16, v13

    .line 385
    .line 386
    move-object/from16 v17, v16

    .line 387
    .line 388
    move-object/from16 v18, v17

    .line 389
    .line 390
    move-object/from16 v19, v18

    .line 391
    .line 392
    move-object/from16 v20, v19

    .line 393
    .line 394
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    if-ge v2, v0, :cond_1

    .line 399
    .line 400
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    packed-switch v3, :pswitch_data_2

    .line 409
    .line 410
    .line 411
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 412
    .line 413
    .line 414
    goto :goto_1

    .line 415
    :pswitch_23
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readDoubleObject(Landroid/os/Parcel;I)Ljava/lang/Double;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    move-object/from16 v20, v2

    .line 420
    .line 421
    goto :goto_1

    .line 422
    :pswitch_24
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    move-object/from16 v19, v2

    .line 427
    .line 428
    goto :goto_1

    .line 429
    :pswitch_25
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    move-object/from16 v18, v2

    .line 434
    .line 435
    goto :goto_1

    .line 436
    :pswitch_26
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readFloatObject(Landroid/os/Parcel;I)Ljava/lang/Float;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    move-object/from16 v17, v2

    .line 441
    .line 442
    goto :goto_1

    .line 443
    :pswitch_27
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLongObject(Landroid/os/Parcel;I)Ljava/lang/Long;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    move-object/from16 v16, v2

    .line 448
    .line 449
    goto :goto_1

    .line 450
    :pswitch_28
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 451
    .line 452
    .line 453
    move-result-wide v2

    .line 454
    move-wide v14, v2

    .line 455
    goto :goto_1

    .line 456
    :pswitch_29
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    move-object v13, v2

    .line 461
    goto :goto_1

    .line 462
    :pswitch_2a
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    move v12, v2

    .line 467
    goto :goto_1

    .line 468
    :cond_1
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 469
    .line 470
    .line 471
    new-instance v11, Lvb5;

    .line 472
    .line 473
    invoke-direct/range {v11 .. v20}, Lvb5;-><init>(ILjava/lang/String;JLjava/lang/Long;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V

    .line 474
    .line 475
    .line 476
    return-object v11

    .line 477
    :pswitch_2b
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 482
    .line 483
    .line 484
    move-result v2

    .line 485
    if-ge v2, v0, :cond_3

    .line 486
    .line 487
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 488
    .line 489
    .line 490
    move-result v2

    .line 491
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 492
    .line 493
    .line 494
    move-result v3

    .line 495
    if-eq v3, v7, :cond_2

    .line 496
    .line 497
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 498
    .line 499
    .line 500
    goto :goto_2

    .line 501
    :cond_2
    sget-object v3, Lua5;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 502
    .line 503
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 504
    .line 505
    .line 506
    move-result-object v10

    .line 507
    goto :goto_2

    .line 508
    :cond_3
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 509
    .line 510
    .line 511
    new-instance v0, Lza5;

    .line 512
    .line 513
    invoke-direct {v0, v10}, Lza5;-><init>(Ljava/util/ArrayList;)V

    .line 514
    .line 515
    .line 516
    return-object v0

    .line 517
    :pswitch_2c
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    if-ge v2, v0, :cond_5

    .line 526
    .line 527
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 528
    .line 529
    .line 530
    move-result v2

    .line 531
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 532
    .line 533
    .line 534
    move-result v3

    .line 535
    if-eq v3, v7, :cond_4

    .line 536
    .line 537
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 538
    .line 539
    .line 540
    goto :goto_3

    .line 541
    :cond_4
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createIntegerList(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    .line 542
    .line 543
    .line 544
    move-result-object v10

    .line 545
    goto :goto_3

    .line 546
    :cond_5
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 547
    .line 548
    .line 549
    new-instance v0, Lwa5;

    .line 550
    .line 551
    invoke-direct {v0, v10}, Lwa5;-><init>(Ljava/util/ArrayList;)V

    .line 552
    .line 553
    .line 554
    return-object v0

    .line 555
    :pswitch_2d
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    move-wide v12, v4

    .line 560
    move-wide/from16 v18, v12

    .line 561
    .line 562
    move/from16 v17, v9

    .line 563
    .line 564
    move-object v14, v10

    .line 565
    move-object v15, v14

    .line 566
    move-object/from16 v16, v15

    .line 567
    .line 568
    move-object/from16 v20, v16

    .line 569
    .line 570
    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 571
    .line 572
    .line 573
    move-result v2

    .line 574
    if-ge v2, v0, :cond_6

    .line 575
    .line 576
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 577
    .line 578
    .line 579
    move-result v2

    .line 580
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 581
    .line 582
    .line 583
    move-result v3

    .line 584
    packed-switch v3, :pswitch_data_3

    .line 585
    .line 586
    .line 587
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 588
    .line 589
    .line 590
    goto :goto_4

    .line 591
    :pswitch_2e
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v2

    .line 595
    move-object/from16 v20, v2

    .line 596
    .line 597
    goto :goto_4

    .line 598
    :pswitch_2f
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 599
    .line 600
    .line 601
    move-result-wide v2

    .line 602
    move-wide/from16 v18, v2

    .line 603
    .line 604
    goto :goto_4

    .line 605
    :pswitch_30
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 606
    .line 607
    .line 608
    move-result v2

    .line 609
    move/from16 v17, v2

    .line 610
    .line 611
    goto :goto_4

    .line 612
    :pswitch_31
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createBundle(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 613
    .line 614
    .line 615
    move-result-object v2

    .line 616
    move-object/from16 v16, v2

    .line 617
    .line 618
    goto :goto_4

    .line 619
    :pswitch_32
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v2

    .line 623
    move-object v15, v2

    .line 624
    goto :goto_4

    .line 625
    :pswitch_33
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArray(Landroid/os/Parcel;I)[B

    .line 626
    .line 627
    .line 628
    move-result-object v2

    .line 629
    move-object v14, v2

    .line 630
    goto :goto_4

    .line 631
    :pswitch_34
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 632
    .line 633
    .line 634
    move-result-wide v2

    .line 635
    move-wide v12, v2

    .line 636
    goto :goto_4

    .line 637
    :cond_6
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 638
    .line 639
    .line 640
    new-instance v11, Lua5;

    .line 641
    .line 642
    invoke-direct/range {v11 .. v20}, Lua5;-><init>(J[BLjava/lang/String;Landroid/os/Bundle;IJLjava/lang/String;)V

    .line 643
    .line 644
    .line 645
    return-object v11

    .line 646
    :pswitch_35
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 647
    .line 648
    .line 649
    move-result v0

    .line 650
    :goto_5
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 651
    .line 652
    .line 653
    move-result v2

    .line 654
    if-ge v2, v0, :cond_a

    .line 655
    .line 656
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 657
    .line 658
    .line 659
    move-result v2

    .line 660
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 661
    .line 662
    .line 663
    move-result v3

    .line 664
    if-eq v3, v7, :cond_9

    .line 665
    .line 666
    if-eq v3, v8, :cond_8

    .line 667
    .line 668
    if-eq v3, v6, :cond_7

    .line 669
    .line 670
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 671
    .line 672
    .line 673
    goto :goto_5

    .line 674
    :cond_7
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 675
    .line 676
    .line 677
    move-result v2

    .line 678
    move v9, v2

    .line 679
    goto :goto_5

    .line 680
    :cond_8
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 681
    .line 682
    .line 683
    move-result-wide v2

    .line 684
    move-wide v4, v2

    .line 685
    goto :goto_5

    .line 686
    :cond_9
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v2

    .line 690
    move-object v10, v2

    .line 691
    goto :goto_5

    .line 692
    :cond_a
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 693
    .line 694
    .line 695
    new-instance v0, Loa5;

    .line 696
    .line 697
    invoke-direct {v0, v10, v9, v4, v5}, Loa5;-><init>(Ljava/lang/String;IJ)V

    .line 698
    .line 699
    .line 700
    return-object v0

    .line 701
    :pswitch_36
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 702
    .line 703
    .line 704
    move-result v0

    .line 705
    move v2, v9

    .line 706
    :goto_6
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 707
    .line 708
    .line 709
    move-result v4

    .line 710
    if-ge v4, v0, :cond_e

    .line 711
    .line 712
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 713
    .line 714
    .line 715
    move-result v4

    .line 716
    invoke-static {v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 717
    .line 718
    .line 719
    move-result v5

    .line 720
    if-eq v5, v8, :cond_d

    .line 721
    .line 722
    if-eq v5, v6, :cond_c

    .line 723
    .line 724
    if-eq v5, v3, :cond_b

    .line 725
    .line 726
    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 727
    .line 728
    .line 729
    goto :goto_6

    .line 730
    :cond_b
    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 731
    .line 732
    .line 733
    move-result v2

    .line 734
    goto :goto_6

    .line 735
    :cond_c
    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v10

    .line 739
    goto :goto_6

    .line 740
    :cond_d
    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 741
    .line 742
    .line 743
    move-result v9

    .line 744
    goto :goto_6

    .line 745
    :cond_e
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 746
    .line 747
    .line 748
    new-instance v0, Ldk;

    .line 749
    .line 750
    invoke-direct {v0, v9, v10, v2}, Ldk;-><init>(ILjava/lang/String;I)V

    .line 751
    .line 752
    .line 753
    return-object v0

    .line 754
    :pswitch_37
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 755
    .line 756
    .line 757
    move-result v0

    .line 758
    move-object v4, v10

    .line 759
    move-object v5, v4

    .line 760
    move-object v7, v5

    .line 761
    :goto_7
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 762
    .line 763
    .line 764
    move-result v9

    .line 765
    if-ge v9, v0, :cond_13

    .line 766
    .line 767
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 768
    .line 769
    .line 770
    move-result v9

    .line 771
    invoke-static {v9}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 772
    .line 773
    .line 774
    move-result v11

    .line 775
    if-eq v11, v8, :cond_12

    .line 776
    .line 777
    if-eq v11, v6, :cond_11

    .line 778
    .line 779
    if-eq v11, v3, :cond_10

    .line 780
    .line 781
    if-eq v11, v2, :cond_f

    .line 782
    .line 783
    invoke-static {v1, v9}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 784
    .line 785
    .line 786
    goto :goto_7

    .line 787
    :cond_f
    invoke-static {v1, v9}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createStringArray(Landroid/os/Parcel;I)[Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v7

    .line 791
    goto :goto_7

    .line 792
    :cond_10
    invoke-static {v1, v9}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArray(Landroid/os/Parcel;I)[B

    .line 793
    .line 794
    .line 795
    move-result-object v5

    .line 796
    goto :goto_7

    .line 797
    :cond_11
    invoke-static {v1, v9}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArray(Landroid/os/Parcel;I)[B

    .line 798
    .line 799
    .line 800
    move-result-object v4

    .line 801
    goto :goto_7

    .line 802
    :cond_12
    invoke-static {v1, v9}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArray(Landroid/os/Parcel;I)[B

    .line 803
    .line 804
    .line 805
    move-result-object v10

    .line 806
    goto :goto_7

    .line 807
    :cond_13
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 808
    .line 809
    .line 810
    new-instance v0, Lck;

    .line 811
    .line 812
    invoke-direct {v0, v10, v4, v5, v7}, Lck;-><init>([B[B[B[Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    return-object v0

    .line 816
    :pswitch_38
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 817
    .line 818
    .line 819
    move-result v0

    .line 820
    move v2, v9

    .line 821
    :goto_8
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 822
    .line 823
    .line 824
    move-result v3

    .line 825
    if-ge v3, v0, :cond_16

    .line 826
    .line 827
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 828
    .line 829
    .line 830
    move-result v3

    .line 831
    invoke-static {v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 832
    .line 833
    .line 834
    move-result v4

    .line 835
    if-eq v4, v7, :cond_15

    .line 836
    .line 837
    if-eq v4, v8, :cond_14

    .line 838
    .line 839
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 840
    .line 841
    .line 842
    goto :goto_8

    .line 843
    :cond_14
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 844
    .line 845
    .line 846
    move-result v2

    .line 847
    goto :goto_8

    .line 848
    :cond_15
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 849
    .line 850
    .line 851
    move-result v9

    .line 852
    goto :goto_8

    .line 853
    :cond_16
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 854
    .line 855
    .line 856
    new-instance v0, Lj65;

    .line 857
    .line 858
    invoke-direct {v0, v9, v2}, Lj65;-><init>(II)V

    .line 859
    .line 860
    .line 861
    return-object v0

    .line 862
    :pswitch_39
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 863
    .line 864
    .line 865
    move-result v0

    .line 866
    :goto_9
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 867
    .line 868
    .line 869
    move-result v2

    .line 870
    if-ge v2, v0, :cond_18

    .line 871
    .line 872
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 873
    .line 874
    .line 875
    move-result v2

    .line 876
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 877
    .line 878
    .line 879
    move-result v3

    .line 880
    if-eq v3, v8, :cond_17

    .line 881
    .line 882
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 883
    .line 884
    .line 885
    goto :goto_9

    .line 886
    :cond_17
    sget-object v3, Ld65;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 887
    .line 888
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 889
    .line 890
    .line 891
    move-result-object v10

    .line 892
    goto :goto_9

    .line 893
    :cond_18
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 894
    .line 895
    .line 896
    new-instance v0, Lg65;

    .line 897
    .line 898
    invoke-direct {v0, v10}, Lg65;-><init>(Ljava/util/ArrayList;)V

    .line 899
    .line 900
    .line 901
    return-object v0

    .line 902
    :pswitch_3a
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 903
    .line 904
    .line 905
    move-result v0

    .line 906
    move-object v4, v10

    .line 907
    move-object v5, v4

    .line 908
    :goto_a
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 909
    .line 910
    .line 911
    move-result v7

    .line 912
    if-ge v7, v0, :cond_1d

    .line 913
    .line 914
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 915
    .line 916
    .line 917
    move-result v7

    .line 918
    invoke-static {v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 919
    .line 920
    .line 921
    move-result v11

    .line 922
    if-eq v11, v8, :cond_1c

    .line 923
    .line 924
    if-eq v11, v6, :cond_1b

    .line 925
    .line 926
    if-eq v11, v3, :cond_1a

    .line 927
    .line 928
    if-eq v11, v2, :cond_19

    .line 929
    .line 930
    invoke-static {v1, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 931
    .line 932
    .line 933
    goto :goto_a

    .line 934
    :cond_19
    invoke-static {v1, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 935
    .line 936
    .line 937
    move-result v9

    .line 938
    goto :goto_a

    .line 939
    :cond_1a
    sget-object v5, Lb65;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 940
    .line 941
    invoke-static {v1, v7, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 942
    .line 943
    .line 944
    move-result-object v5

    .line 945
    check-cast v5, Lb65;

    .line 946
    .line 947
    goto :goto_a

    .line 948
    :cond_1b
    invoke-static {v1, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v4

    .line 952
    goto :goto_a

    .line 953
    :cond_1c
    invoke-static {v1, v7}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v10

    .line 957
    goto :goto_a

    .line 958
    :cond_1d
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 959
    .line 960
    .line 961
    new-instance v0, Ld65;

    .line 962
    .line 963
    invoke-direct {v0, v10, v4, v5, v9}, Ld65;-><init>(Ljava/lang/String;Ljava/lang/String;Lb65;Z)V

    .line 964
    .line 965
    .line 966
    return-object v0

    .line 967
    :pswitch_3b
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 968
    .line 969
    .line 970
    move-result v0

    .line 971
    const-wide/16 v2, 0x0

    .line 972
    .line 973
    move-wide/from16 v16, v2

    .line 974
    .line 975
    move-wide v13, v4

    .line 976
    move v15, v9

    .line 977
    move/from16 v20, v15

    .line 978
    .line 979
    move/from16 v21, v20

    .line 980
    .line 981
    move/from16 v22, v21

    .line 982
    .line 983
    move-object v12, v10

    .line 984
    move-object/from16 v18, v12

    .line 985
    .line 986
    move-object/from16 v19, v18

    .line 987
    .line 988
    :goto_b
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 989
    .line 990
    .line 991
    move-result v2

    .line 992
    if-ge v2, v0, :cond_1e

    .line 993
    .line 994
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 995
    .line 996
    .line 997
    move-result v2

    .line 998
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 999
    .line 1000
    .line 1001
    move-result v3

    .line 1002
    packed-switch v3, :pswitch_data_4

    .line 1003
    .line 1004
    .line 1005
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 1006
    .line 1007
    .line 1008
    goto :goto_b

    .line 1009
    :pswitch_3c
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 1010
    .line 1011
    .line 1012
    move-result v2

    .line 1013
    move/from16 v22, v2

    .line 1014
    .line 1015
    goto :goto_b

    .line 1016
    :pswitch_3d
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 1017
    .line 1018
    .line 1019
    move-result v2

    .line 1020
    move/from16 v21, v2

    .line 1021
    .line 1022
    goto :goto_b

    .line 1023
    :pswitch_3e
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 1024
    .line 1025
    .line 1026
    move-result v2

    .line 1027
    move/from16 v20, v2

    .line 1028
    .line 1029
    goto :goto_b

    .line 1030
    :pswitch_3f
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArray(Landroid/os/Parcel;I)[B

    .line 1031
    .line 1032
    .line 1033
    move-result-object v2

    .line 1034
    move-object/from16 v19, v2

    .line 1035
    .line 1036
    goto :goto_b

    .line 1037
    :pswitch_40
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v2

    .line 1041
    move-object/from16 v18, v2

    .line 1042
    .line 1043
    goto :goto_b

    .line 1044
    :pswitch_41
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readDouble(Landroid/os/Parcel;I)D

    .line 1045
    .line 1046
    .line 1047
    move-result-wide v2

    .line 1048
    move-wide/from16 v16, v2

    .line 1049
    .line 1050
    goto :goto_b

    .line 1051
    :pswitch_42
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v2

    .line 1055
    move v15, v2

    .line 1056
    goto :goto_b

    .line 1057
    :pswitch_43
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 1058
    .line 1059
    .line 1060
    move-result-wide v2

    .line 1061
    move-wide v13, v2

    .line 1062
    goto :goto_b

    .line 1063
    :pswitch_44
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v2

    .line 1067
    move-object v12, v2

    .line 1068
    goto :goto_b

    .line 1069
    :cond_1e
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 1070
    .line 1071
    .line 1072
    new-instance v11, Lb65;

    .line 1073
    .line 1074
    invoke-direct/range {v11 .. v22}, Lb65;-><init>(Ljava/lang/String;JZDLjava/lang/String;[BIII)V

    .line 1075
    .line 1076
    .line 1077
    return-object v11

    .line 1078
    :pswitch_45
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 1079
    .line 1080
    .line 1081
    move-result v0

    .line 1082
    move-object v12, v10

    .line 1083
    move-object v13, v12

    .line 1084
    move-object v14, v13

    .line 1085
    move-object v15, v14

    .line 1086
    move-object/from16 v16, v15

    .line 1087
    .line 1088
    move-object/from16 v17, v16

    .line 1089
    .line 1090
    move-object/from16 v18, v17

    .line 1091
    .line 1092
    move-object/from16 v19, v18

    .line 1093
    .line 1094
    move-object/from16 v20, v19

    .line 1095
    .line 1096
    move-object/from16 v21, v20

    .line 1097
    .line 1098
    :goto_c
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 1099
    .line 1100
    .line 1101
    move-result v2

    .line 1102
    if-ge v2, v0, :cond_1f

    .line 1103
    .line 1104
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 1105
    .line 1106
    .line 1107
    move-result v2

    .line 1108
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 1109
    .line 1110
    .line 1111
    move-result v3

    .line 1112
    packed-switch v3, :pswitch_data_5

    .line 1113
    .line 1114
    .line 1115
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 1116
    .line 1117
    .line 1118
    goto :goto_c

    .line 1119
    :pswitch_46
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArrayArray(Landroid/os/Parcel;I)[[B

    .line 1120
    .line 1121
    .line 1122
    move-result-object v21

    .line 1123
    goto :goto_c

    .line 1124
    :pswitch_47
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createIntArray(Landroid/os/Parcel;I)[I

    .line 1125
    .line 1126
    .line 1127
    move-result-object v20

    .line 1128
    goto :goto_c

    .line 1129
    :pswitch_48
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArrayArray(Landroid/os/Parcel;I)[[B

    .line 1130
    .line 1131
    .line 1132
    move-result-object v19

    .line 1133
    goto :goto_c

    .line 1134
    :pswitch_49
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createIntArray(Landroid/os/Parcel;I)[I

    .line 1135
    .line 1136
    .line 1137
    move-result-object v18

    .line 1138
    goto :goto_c

    .line 1139
    :pswitch_4a
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArrayArray(Landroid/os/Parcel;I)[[B

    .line 1140
    .line 1141
    .line 1142
    move-result-object v17

    .line 1143
    goto :goto_c

    .line 1144
    :pswitch_4b
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArrayArray(Landroid/os/Parcel;I)[[B

    .line 1145
    .line 1146
    .line 1147
    move-result-object v16

    .line 1148
    goto :goto_c

    .line 1149
    :pswitch_4c
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArrayArray(Landroid/os/Parcel;I)[[B

    .line 1150
    .line 1151
    .line 1152
    move-result-object v15

    .line 1153
    goto :goto_c

    .line 1154
    :pswitch_4d
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArrayArray(Landroid/os/Parcel;I)[[B

    .line 1155
    .line 1156
    .line 1157
    move-result-object v14

    .line 1158
    goto :goto_c

    .line 1159
    :pswitch_4e
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArray(Landroid/os/Parcel;I)[B

    .line 1160
    .line 1161
    .line 1162
    move-result-object v13

    .line 1163
    goto :goto_c

    .line 1164
    :pswitch_4f
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v12

    .line 1168
    goto :goto_c

    .line 1169
    :cond_1f
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 1170
    .line 1171
    .line 1172
    new-instance v11, Lz55;

    .line 1173
    .line 1174
    invoke-direct/range {v11 .. v21}, Lz55;-><init>(Ljava/lang/String;[B[[B[[B[[B[[B[I[[B[I[[B)V

    .line 1175
    .line 1176
    .line 1177
    return-object v11

    .line 1178
    :pswitch_50
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 1179
    .line 1180
    .line 1181
    move-result v0

    .line 1182
    :goto_d
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 1183
    .line 1184
    .line 1185
    move-result v2

    .line 1186
    if-ge v2, v0, :cond_21

    .line 1187
    .line 1188
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 1189
    .line 1190
    .line 1191
    move-result v2

    .line 1192
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 1193
    .line 1194
    .line 1195
    move-result v3

    .line 1196
    if-eq v3, v8, :cond_20

    .line 1197
    .line 1198
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 1199
    .line 1200
    .line 1201
    goto :goto_d

    .line 1202
    :cond_20
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArray(Landroid/os/Parcel;I)[B

    .line 1203
    .line 1204
    .line 1205
    move-result-object v10

    .line 1206
    goto :goto_d

    .line 1207
    :cond_21
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 1208
    .line 1209
    .line 1210
    new-instance v0, Lw55;

    .line 1211
    .line 1212
    invoke-direct {v0, v10}, Lw55;-><init>([B)V

    .line 1213
    .line 1214
    .line 1215
    return-object v0

    .line 1216
    :pswitch_51
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 1217
    .line 1218
    .line 1219
    move-result v0

    .line 1220
    move-wide/from16 v17, v4

    .line 1221
    .line 1222
    move v15, v9

    .line 1223
    move-object v12, v10

    .line 1224
    move-object v13, v12

    .line 1225
    move-object v14, v13

    .line 1226
    move-object/from16 v16, v14

    .line 1227
    .line 1228
    :goto_e
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 1229
    .line 1230
    .line 1231
    move-result v2

    .line 1232
    if-ge v2, v0, :cond_22

    .line 1233
    .line 1234
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 1235
    .line 1236
    .line 1237
    move-result v2

    .line 1238
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 1239
    .line 1240
    .line 1241
    move-result v3

    .line 1242
    packed-switch v3, :pswitch_data_6

    .line 1243
    .line 1244
    .line 1245
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 1246
    .line 1247
    .line 1248
    goto :goto_e

    .line 1249
    :pswitch_52
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 1250
    .line 1251
    .line 1252
    move-result-wide v2

    .line 1253
    move-wide/from16 v17, v2

    .line 1254
    .line 1255
    goto :goto_e

    .line 1256
    :pswitch_53
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArray(Landroid/os/Parcel;I)[B

    .line 1257
    .line 1258
    .line 1259
    move-result-object v2

    .line 1260
    move-object/from16 v16, v2

    .line 1261
    .line 1262
    goto :goto_e

    .line 1263
    :pswitch_54
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 1264
    .line 1265
    .line 1266
    move-result v2

    .line 1267
    move v15, v2

    .line 1268
    goto :goto_e

    .line 1269
    :pswitch_55
    sget-object v3, Lr55;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1270
    .line 1271
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v2

    .line 1275
    check-cast v2, [Lr55;

    .line 1276
    .line 1277
    move-object v14, v2

    .line 1278
    goto :goto_e

    .line 1279
    :pswitch_56
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v2

    .line 1283
    move-object v13, v2

    .line 1284
    goto :goto_e

    .line 1285
    :pswitch_57
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v2

    .line 1289
    move-object v12, v2

    .line 1290
    goto :goto_e

    .line 1291
    :cond_22
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 1292
    .line 1293
    .line 1294
    new-instance v11, Lt55;

    .line 1295
    .line 1296
    invoke-direct/range {v11 .. v18}, Lt55;-><init>(Ljava/lang/String;Ljava/lang/String;[Lr55;Z[BJ)V

    .line 1297
    .line 1298
    .line 1299
    return-object v11

    .line 1300
    :pswitch_58
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 1301
    .line 1302
    .line 1303
    move-result v0

    .line 1304
    move-object v2, v10

    .line 1305
    :goto_f
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 1306
    .line 1307
    .line 1308
    move-result v4

    .line 1309
    if-ge v4, v0, :cond_26

    .line 1310
    .line 1311
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 1312
    .line 1313
    .line 1314
    move-result v4

    .line 1315
    invoke-static {v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 1316
    .line 1317
    .line 1318
    move-result v5

    .line 1319
    if-eq v5, v8, :cond_25

    .line 1320
    .line 1321
    if-eq v5, v6, :cond_24

    .line 1322
    .line 1323
    if-eq v5, v3, :cond_23

    .line 1324
    .line 1325
    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 1326
    .line 1327
    .line 1328
    goto :goto_f

    .line 1329
    :cond_23
    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createStringArray(Landroid/os/Parcel;I)[Ljava/lang/String;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v2

    .line 1333
    goto :goto_f

    .line 1334
    :cond_24
    sget-object v5, Lb65;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1335
    .line 1336
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v4

    .line 1340
    move-object v10, v4

    .line 1341
    check-cast v10, [Lb65;

    .line 1342
    .line 1343
    goto :goto_f

    .line 1344
    :cond_25
    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 1345
    .line 1346
    .line 1347
    move-result v9

    .line 1348
    goto :goto_f

    .line 1349
    :cond_26
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 1350
    .line 1351
    .line 1352
    new-instance v0, Lr55;

    .line 1353
    .line 1354
    invoke-direct {v0, v9, v10, v2}, Lr55;-><init>(I[Lb65;[Ljava/lang/String;)V

    .line 1355
    .line 1356
    .line 1357
    return-object v0

    .line 1358
    :pswitch_59
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 1359
    .line 1360
    .line 1361
    move-result v0

    .line 1362
    move-object v12, v10

    .line 1363
    move-object v13, v12

    .line 1364
    move-object v14, v13

    .line 1365
    move-object v15, v14

    .line 1366
    move-object/from16 v16, v15

    .line 1367
    .line 1368
    :goto_10
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 1369
    .line 1370
    .line 1371
    move-result v4

    .line 1372
    if-ge v4, v0, :cond_2c

    .line 1373
    .line 1374
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 1375
    .line 1376
    .line 1377
    move-result v4

    .line 1378
    invoke-static {v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 1379
    .line 1380
    .line 1381
    move-result v5

    .line 1382
    if-eq v5, v8, :cond_2b

    .line 1383
    .line 1384
    if-eq v5, v6, :cond_2a

    .line 1385
    .line 1386
    if-eq v5, v3, :cond_29

    .line 1387
    .line 1388
    if-eq v5, v2, :cond_28

    .line 1389
    .line 1390
    const/4 v7, 0x6

    .line 1391
    if-eq v5, v7, :cond_27

    .line 1392
    .line 1393
    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 1394
    .line 1395
    .line 1396
    goto :goto_10

    .line 1397
    :cond_27
    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArray(Landroid/os/Parcel;I)[B

    .line 1398
    .line 1399
    .line 1400
    move-result-object v16

    .line 1401
    goto :goto_10

    .line 1402
    :cond_28
    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArray(Landroid/os/Parcel;I)[B

    .line 1403
    .line 1404
    .line 1405
    move-result-object v15

    .line 1406
    goto :goto_10

    .line 1407
    :cond_29
    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArray(Landroid/os/Parcel;I)[B

    .line 1408
    .line 1409
    .line 1410
    move-result-object v14

    .line 1411
    goto :goto_10

    .line 1412
    :cond_2a
    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArray(Landroid/os/Parcel;I)[B

    .line 1413
    .line 1414
    .line 1415
    move-result-object v13

    .line 1416
    goto :goto_10

    .line 1417
    :cond_2b
    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArray(Landroid/os/Parcel;I)[B

    .line 1418
    .line 1419
    .line 1420
    move-result-object v12

    .line 1421
    goto :goto_10

    .line 1422
    :cond_2c
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 1423
    .line 1424
    .line 1425
    new-instance v11, Lbk;

    .line 1426
    .line 1427
    invoke-direct/range {v11 .. v16}, Lbk;-><init>([B[B[B[B[B)V

    .line 1428
    .line 1429
    .line 1430
    return-object v11

    .line 1431
    :pswitch_5a
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 1432
    .line 1433
    .line 1434
    move-result v0

    .line 1435
    move-object v2, v10

    .line 1436
    :goto_11
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 1437
    .line 1438
    .line 1439
    move-result v3

    .line 1440
    if-ge v3, v0, :cond_2f

    .line 1441
    .line 1442
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 1443
    .line 1444
    .line 1445
    move-result v3

    .line 1446
    invoke-static {v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 1447
    .line 1448
    .line 1449
    move-result v4

    .line 1450
    if-eq v4, v7, :cond_2e

    .line 1451
    .line 1452
    if-eq v4, v8, :cond_2d

    .line 1453
    .line 1454
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 1455
    .line 1456
    .line 1457
    goto :goto_11

    .line 1458
    :cond_2d
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArray(Landroid/os/Parcel;I)[B

    .line 1459
    .line 1460
    .line 1461
    move-result-object v2

    .line 1462
    goto :goto_11

    .line 1463
    :cond_2e
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 1464
    .line 1465
    .line 1466
    move-result v9

    .line 1467
    goto :goto_11

    .line 1468
    :cond_2f
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 1469
    .line 1470
    .line 1471
    new-instance v0, Lk25;

    .line 1472
    .line 1473
    if-nez v2, :cond_30

    .line 1474
    .line 1475
    goto :goto_12

    .line 1476
    :cond_30
    array-length v1, v2

    .line 1477
    invoke-static {v1, v2}, Lb25;->h(I[B)Lb25;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v10

    .line 1481
    :goto_12
    invoke-direct {v0, v9, v10}, Lk25;-><init>(ZLb25;)V

    .line 1482
    .line 1483
    .line 1484
    return-object v0

    .line 1485
    :pswitch_5b
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 1486
    .line 1487
    .line 1488
    move-result v0

    .line 1489
    move-object v2, v10

    .line 1490
    move-object v3, v2

    .line 1491
    :goto_13
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 1492
    .line 1493
    .line 1494
    move-result v4

    .line 1495
    if-ge v4, v0, :cond_33

    .line 1496
    .line 1497
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 1498
    .line 1499
    .line 1500
    move-result v4

    .line 1501
    invoke-static {v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 1502
    .line 1503
    .line 1504
    move-result v5

    .line 1505
    if-eq v5, v7, :cond_32

    .line 1506
    .line 1507
    if-eq v5, v8, :cond_31

    .line 1508
    .line 1509
    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 1510
    .line 1511
    .line 1512
    goto :goto_13

    .line 1513
    :cond_31
    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArray(Landroid/os/Parcel;I)[B

    .line 1514
    .line 1515
    .line 1516
    move-result-object v3

    .line 1517
    goto :goto_13

    .line 1518
    :cond_32
    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArray(Landroid/os/Parcel;I)[B

    .line 1519
    .line 1520
    .line 1521
    move-result-object v2

    .line 1522
    goto :goto_13

    .line 1523
    :cond_33
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 1524
    .line 1525
    .line 1526
    new-instance v0, Lwy4;

    .line 1527
    .line 1528
    if-nez v2, :cond_34

    .line 1529
    .line 1530
    move-object v1, v10

    .line 1531
    goto :goto_14

    .line 1532
    :cond_34
    array-length v1, v2

    .line 1533
    invoke-static {v1, v2}, Lb25;->h(I[B)Lb25;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v1

    .line 1537
    :goto_14
    if-nez v3, :cond_35

    .line 1538
    .line 1539
    goto :goto_15

    .line 1540
    :cond_35
    array-length v2, v3

    .line 1541
    invoke-static {v2, v3}, Lb25;->h(I[B)Lb25;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v10

    .line 1545
    :goto_15
    invoke-direct {v0, v1, v10}, Lwy4;-><init>(Lb25;Lb25;)V

    .line 1546
    .line 1547
    .line 1548
    return-object v0

    .line 1549
    :pswitch_5c
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 1550
    .line 1551
    .line 1552
    move-result v0

    .line 1553
    :goto_16
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 1554
    .line 1555
    .line 1556
    move-result v2

    .line 1557
    if-ge v2, v0, :cond_37

    .line 1558
    .line 1559
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 1560
    .line 1561
    .line 1562
    move-result v2

    .line 1563
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 1564
    .line 1565
    .line 1566
    move-result v3

    .line 1567
    if-eq v3, v7, :cond_36

    .line 1568
    .line 1569
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 1570
    .line 1571
    .line 1572
    goto :goto_16

    .line 1573
    :cond_36
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 1574
    .line 1575
    .line 1576
    move-result v9

    .line 1577
    goto :goto_16

    .line 1578
    :cond_37
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 1579
    .line 1580
    .line 1581
    new-instance v0, Lwj;

    .line 1582
    .line 1583
    invoke-direct {v0, v9}, Lwj;-><init>(Z)V

    .line 1584
    .line 1585
    .line 1586
    return-object v0

    .line 1587
    :pswitch_5d
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 1588
    .line 1589
    .line 1590
    move-result v0

    .line 1591
    move-object v2, v10

    .line 1592
    :goto_17
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 1593
    .line 1594
    .line 1595
    move-result v3

    .line 1596
    if-ge v3, v0, :cond_3b

    .line 1597
    .line 1598
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 1599
    .line 1600
    .line 1601
    move-result v3

    .line 1602
    invoke-static {v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 1603
    .line 1604
    .line 1605
    move-result v4

    .line 1606
    if-eq v4, v7, :cond_3a

    .line 1607
    .line 1608
    if-eq v4, v8, :cond_39

    .line 1609
    .line 1610
    if-eq v4, v6, :cond_38

    .line 1611
    .line 1612
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 1613
    .line 1614
    .line 1615
    goto :goto_17

    .line 1616
    :cond_38
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1617
    .line 1618
    invoke-static {v1, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v2

    .line 1622
    check-cast v2, Landroid/content/Intent;

    .line 1623
    .line 1624
    goto :goto_17

    .line 1625
    :cond_39
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v10

    .line 1629
    goto :goto_17

    .line 1630
    :cond_3a
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 1631
    .line 1632
    .line 1633
    move-result v9

    .line 1634
    goto :goto_17

    .line 1635
    :cond_3b
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 1636
    .line 1637
    .line 1638
    new-instance v0, Ljx4;

    .line 1639
    .line 1640
    invoke-direct {v0, v9, v10, v2}, Ljx4;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    .line 1641
    .line 1642
    .line 1643
    return-object v0

    .line 1644
    :pswitch_5e
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 1645
    .line 1646
    .line 1647
    move-result v0

    .line 1648
    move-wide v12, v4

    .line 1649
    move-wide v14, v12

    .line 1650
    move/from16 v16, v9

    .line 1651
    .line 1652
    move-object/from16 v17, v10

    .line 1653
    .line 1654
    move-object/from16 v18, v17

    .line 1655
    .line 1656
    :goto_18
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 1657
    .line 1658
    .line 1659
    move-result v2

    .line 1660
    if-ge v2, v0, :cond_41

    .line 1661
    .line 1662
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 1663
    .line 1664
    .line 1665
    move-result v2

    .line 1666
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 1667
    .line 1668
    .line 1669
    move-result v3

    .line 1670
    if-eq v3, v7, :cond_40

    .line 1671
    .line 1672
    if-eq v3, v8, :cond_3f

    .line 1673
    .line 1674
    if-eq v3, v6, :cond_3e

    .line 1675
    .line 1676
    const/4 v4, 0x7

    .line 1677
    if-eq v3, v4, :cond_3d

    .line 1678
    .line 1679
    const/16 v4, 0x8

    .line 1680
    .line 1681
    if-eq v3, v4, :cond_3c

    .line 1682
    .line 1683
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 1684
    .line 1685
    .line 1686
    goto :goto_18

    .line 1687
    :cond_3c
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1688
    .line 1689
    .line 1690
    move-result-object v2

    .line 1691
    move-object/from16 v18, v2

    .line 1692
    .line 1693
    goto :goto_18

    .line 1694
    :cond_3d
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createBundle(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v2

    .line 1698
    move-object/from16 v17, v2

    .line 1699
    .line 1700
    goto :goto_18

    .line 1701
    :cond_3e
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Landroid/os/Parcel;I)Z

    .line 1702
    .line 1703
    .line 1704
    move-result v2

    .line 1705
    move/from16 v16, v2

    .line 1706
    .line 1707
    goto :goto_18

    .line 1708
    :cond_3f
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 1709
    .line 1710
    .line 1711
    move-result-wide v2

    .line 1712
    move-wide v14, v2

    .line 1713
    goto :goto_18

    .line 1714
    :cond_40
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    .line 1715
    .line 1716
    .line 1717
    move-result-wide v2

    .line 1718
    move-wide v12, v2

    .line 1719
    goto :goto_18

    .line 1720
    :cond_41
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 1721
    .line 1722
    .line 1723
    new-instance v11, Lix4;

    .line 1724
    .line 1725
    invoke-direct/range {v11 .. v18}, Lix4;-><init>(JJZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 1726
    .line 1727
    .line 1728
    return-object v11

    .line 1729
    :pswitch_5f
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 1730
    .line 1731
    .line 1732
    move-result v0

    .line 1733
    move-object v12, v10

    .line 1734
    move-object v13, v12

    .line 1735
    move-object v14, v13

    .line 1736
    move-object v15, v14

    .line 1737
    move-object/from16 v16, v15

    .line 1738
    .line 1739
    :goto_19
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 1740
    .line 1741
    .line 1742
    move-result v4

    .line 1743
    if-ge v4, v0, :cond_47

    .line 1744
    .line 1745
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 1746
    .line 1747
    .line 1748
    move-result v4

    .line 1749
    invoke-static {v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 1750
    .line 1751
    .line 1752
    move-result v5

    .line 1753
    if-eq v5, v7, :cond_46

    .line 1754
    .line 1755
    if-eq v5, v8, :cond_45

    .line 1756
    .line 1757
    if-eq v5, v6, :cond_44

    .line 1758
    .line 1759
    if-eq v5, v3, :cond_43

    .line 1760
    .line 1761
    if-eq v5, v2, :cond_42

    .line 1762
    .line 1763
    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 1764
    .line 1765
    .line 1766
    goto :goto_19

    .line 1767
    :cond_42
    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1768
    .line 1769
    .line 1770
    move-result-object v16

    .line 1771
    goto :goto_19

    .line 1772
    :cond_43
    sget-object v5, Lk25;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1773
    .line 1774
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v4

    .line 1778
    move-object v15, v4

    .line 1779
    check-cast v15, Lk25;

    .line 1780
    .line 1781
    goto :goto_19

    .line 1782
    :cond_44
    sget-object v5, Lwj;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1783
    .line 1784
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1785
    .line 1786
    .line 1787
    move-result-object v4

    .line 1788
    move-object v14, v4

    .line 1789
    check-cast v14, Lwj;

    .line 1790
    .line 1791
    goto :goto_19

    .line 1792
    :cond_45
    sget-object v5, Lwy4;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1793
    .line 1794
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1795
    .line 1796
    .line 1797
    move-result-object v4

    .line 1798
    move-object v13, v4

    .line 1799
    check-cast v13, Lwy4;

    .line 1800
    .line 1801
    goto :goto_19

    .line 1802
    :cond_46
    sget-object v5, Ls94;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1803
    .line 1804
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1805
    .line 1806
    .line 1807
    move-result-object v4

    .line 1808
    move-object v12, v4

    .line 1809
    check-cast v12, Ls94;

    .line 1810
    .line 1811
    goto :goto_19

    .line 1812
    :cond_47
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 1813
    .line 1814
    .line 1815
    new-instance v11, Lvj;

    .line 1816
    .line 1817
    invoke-direct/range {v11 .. v16}, Lvj;-><init>(Ls94;Lwy4;Lwj;Lk25;Ljava/lang/String;)V

    .line 1818
    .line 1819
    .line 1820
    return-object v11

    .line 1821
    :pswitch_60
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    .line 1822
    .line 1823
    .line 1824
    move-result v0

    .line 1825
    :goto_1a
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    .line 1826
    .line 1827
    .line 1828
    move-result v2

    .line 1829
    if-ge v2, v0, :cond_4a

    .line 1830
    .line 1831
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    .line 1832
    .line 1833
    .line 1834
    move-result v2

    .line 1835
    invoke-static {v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    .line 1836
    .line 1837
    .line 1838
    move-result v3

    .line 1839
    if-eq v3, v7, :cond_49

    .line 1840
    .line 1841
    if-eq v3, v8, :cond_48

    .line 1842
    .line 1843
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    .line 1844
    .line 1845
    .line 1846
    goto :goto_1a

    .line 1847
    :cond_48
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1848
    .line 1849
    .line 1850
    move-result-object v10

    .line 1851
    goto :goto_1a

    .line 1852
    :cond_49
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    .line 1853
    .line 1854
    .line 1855
    move-result v9

    .line 1856
    goto :goto_1a

    .line 1857
    :cond_4a
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 1858
    .line 1859
    .line 1860
    new-instance v0, Lzu4;

    .line 1861
    .line 1862
    invoke-direct {v0, v9, v10}, Lzu4;-><init>(ILjava/lang/String;)V

    .line 1863
    .line 1864
    .line 1865
    return-object v0

    .line 1866
    nop

    .line 1867
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_51
        :pswitch_50
        :pswitch_45
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_22
        :pswitch_0
    .end packed-switch

    .line 1868
    .line 1869
    .line 1870
    .line 1871
    .line 1872
    .line 1873
    .line 1874
    .line 1875
    .line 1876
    .line 1877
    .line 1878
    .line 1879
    .line 1880
    .line 1881
    .line 1882
    .line 1883
    .line 1884
    .line 1885
    .line 1886
    .line 1887
    .line 1888
    .line 1889
    .line 1890
    .line 1891
    .line 1892
    .line 1893
    .line 1894
    .line 1895
    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    .line 1904
    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    .line 1919
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_1
        :pswitch_13
        :pswitch_1
        :pswitch_1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 1920
    .line 1921
    .line 1922
    .line 1923
    .line 1924
    .line 1925
    .line 1926
    .line 1927
    .line 1928
    .line 1929
    .line 1930
    .line 1931
    .line 1932
    .line 1933
    .line 1934
    .line 1935
    .line 1936
    .line 1937
    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    .line 1943
    .line 1944
    .line 1945
    .line 1946
    .line 1947
    .line 1948
    .line 1949
    .line 1950
    .line 1951
    .line 1952
    .line 1953
    .line 1954
    .line 1955
    .line 1956
    .line 1957
    .line 1958
    .line 1959
    .line 1960
    .line 1961
    .line 1962
    .line 1963
    .line 1964
    .line 1965
    .line 1966
    .line 1967
    .line 1968
    .line 1969
    .line 1970
    .line 1971
    .line 1972
    .line 1973
    .line 1974
    .line 1975
    .line 1976
    .line 1977
    .line 1978
    .line 1979
    .line 1980
    .line 1981
    .line 1982
    .line 1983
    .line 1984
    .line 1985
    .line 1986
    .line 1987
    .line 1988
    .line 1989
    .line 1990
    .line 1991
    .line 1992
    .line 1993
    .line 1994
    .line 1995
    .line 1996
    .line 1997
    .line 1998
    .line 1999
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
    .end packed-switch

    .line 2000
    .line 2001
    .line 2002
    .line 2003
    .line 2004
    .line 2005
    .line 2006
    .line 2007
    .line 2008
    .line 2009
    .line 2010
    .line 2011
    .line 2012
    .line 2013
    .line 2014
    .line 2015
    .line 2016
    .line 2017
    .line 2018
    .line 2019
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch

    .line 2020
    .line 2021
    .line 2022
    .line 2023
    .line 2024
    .line 2025
    .line 2026
    .line 2027
    .line 2028
    .line 2029
    .line 2030
    .line 2031
    .line 2032
    .line 2033
    .line 2034
    .line 2035
    .line 2036
    .line 2037
    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
    .end packed-switch

    .line 2038
    .line 2039
    .line 2040
    .line 2041
    .line 2042
    .line 2043
    .line 2044
    .line 2045
    .line 2046
    .line 2047
    .line 2048
    .line 2049
    .line 2050
    .line 2051
    .line 2052
    .line 2053
    .line 2054
    .line 2055
    .line 2056
    .line 2057
    .line 2058
    .line 2059
    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
    .end packed-switch

    .line 2060
    .line 2061
    .line 2062
    .line 2063
    .line 2064
    .line 2065
    .line 2066
    .line 2067
    .line 2068
    .line 2069
    .line 2070
    .line 2071
    .line 2072
    .line 2073
    .line 2074
    .line 2075
    .line 2076
    .line 2077
    .line 2078
    .line 2079
    .line 2080
    .line 2081
    .line 2082
    .line 2083
    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lav4;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p0, p1, [Le21;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    new-array p0, p1, [Lvc5;

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    new-array p0, p1, [Lvb5;

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    new-array p0, p1, [Lza5;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_3
    new-array p0, p1, [Lwa5;

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_4
    new-array p0, p1, [Lua5;

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_5
    new-array p0, p1, [Loa5;

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_6
    new-array p0, p1, [Ldk;

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_7
    new-array p0, p1, [Lck;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_8
    new-array p0, p1, [Lj65;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_9
    new-array p0, p1, [Lg65;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_a
    new-array p0, p1, [Ld65;

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_b
    new-array p0, p1, [Lb65;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_c
    new-array p0, p1, [Lz55;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_d
    new-array p0, p1, [Lw55;

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_e
    new-array p0, p1, [Lt55;

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_f
    new-array p0, p1, [Lr55;

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_10
    new-array p0, p1, [Lbk;

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_11
    new-array p0, p1, [Lk25;

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_12
    new-array p0, p1, [Lwy4;

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_13
    new-array p0, p1, [Lwj;

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_14
    new-array p0, p1, [Ljx4;

    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_15
    new-array p0, p1, [Lix4;

    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_16
    new-array p0, p1, [Lvj;

    .line 76
    .line 77
    return-object p0

    .line 78
    :pswitch_17
    new-array p0, p1, [Lzu4;

    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
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

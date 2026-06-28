.class public abstract Lnh3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final synthetic a:[Lkx1;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    .line 1
    new-instance v0, Lig2;

    .line 2
    .line 3
    const-string v1, "stateDescription"

    .line 4
    .line 5
    const-string v2, "getStateDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lig2;

    .line 11
    .line 12
    const-string v2, "progressBarRangeInfo"

    .line 13
    .line 14
    const-string v3, "getProgressBarRangeInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ProgressBarRangeInfo;"

    .line 15
    .line 16
    invoke-direct {v1, v2, v3}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lig2;

    .line 20
    .line 21
    const-string v3, "paneTitle"

    .line 22
    .line 23
    const-string v4, "getPaneTitle(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;"

    .line 24
    .line 25
    invoke-direct {v2, v3, v4}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lig2;

    .line 29
    .line 30
    const-string v4, "liveRegion"

    .line 31
    .line 32
    const-string v5, "getLiveRegion(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I"

    .line 33
    .line 34
    invoke-direct {v3, v4, v5}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lig2;

    .line 38
    .line 39
    const-string v5, "focused"

    .line 40
    .line 41
    const-string v6, "getFocused(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z"

    .line 42
    .line 43
    invoke-direct {v4, v5, v6}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v5, Lig2;

    .line 47
    .line 48
    const-string v6, "isContainer"

    .line 49
    .line 50
    const-string v7, "isContainer(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z"

    .line 51
    .line 52
    invoke-direct {v5, v6, v7}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v6, Lig2;

    .line 56
    .line 57
    const-string v7, "isTraversalGroup"

    .line 58
    .line 59
    const-string v8, "isTraversalGroup(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z"

    .line 60
    .line 61
    invoke-direct {v6, v7, v8}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v7, Lig2;

    .line 65
    .line 66
    const-string v8, "isSensitiveData"

    .line 67
    .line 68
    const-string v9, "isSensitiveData(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z"

    .line 69
    .line 70
    invoke-direct {v7, v8, v9}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v8, Lig2;

    .line 74
    .line 75
    const-string v9, "contentType"

    .line 76
    .line 77
    const-string v10, "getContentType(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/autofill/ContentType;"

    .line 78
    .line 79
    invoke-direct {v8, v9, v10}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v9, Lig2;

    .line 83
    .line 84
    const-string v10, "contentDataType"

    .line 85
    .line 86
    const-string v11, "getContentDataType(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/autofill/ContentDataType;"

    .line 87
    .line 88
    invoke-direct {v9, v10, v11}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v10, Lig2;

    .line 92
    .line 93
    const-string v11, "fillableData"

    .line 94
    .line 95
    const-string v12, "getFillableData(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/autofill/FillableData;"

    .line 96
    .line 97
    invoke-direct {v10, v11, v12}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    new-instance v11, Lig2;

    .line 101
    .line 102
    const-string v12, "traversalIndex"

    .line 103
    .line 104
    const-string v13, "getTraversalIndex(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)F"

    .line 105
    .line 106
    invoke-direct {v11, v12, v13}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance v12, Lig2;

    .line 110
    .line 111
    const-string v13, "horizontalScrollAxisRange"

    .line 112
    .line 113
    const-string v14, "getHorizontalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ScrollAxisRange;"

    .line 114
    .line 115
    invoke-direct {v12, v13, v14}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance v13, Lig2;

    .line 119
    .line 120
    const-string v14, "verticalScrollAxisRange"

    .line 121
    .line 122
    const-string v15, "getVerticalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ScrollAxisRange;"

    .line 123
    .line 124
    invoke-direct {v13, v14, v15}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    new-instance v14, Lig2;

    .line 128
    .line 129
    const-string v15, "role"

    .line 130
    .line 131
    move-object/from16 v16, v0

    .line 132
    .line 133
    const-string v0, "getRole(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I"

    .line 134
    .line 135
    invoke-direct {v14, v15, v0}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance v0, Lig2;

    .line 139
    .line 140
    const-string v15, "testTag"

    .line 141
    .line 142
    move-object/from16 v17, v1

    .line 143
    .line 144
    const-string v1, "getTestTag(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;"

    .line 145
    .line 146
    invoke-direct {v0, v15, v1}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance v1, Lig2;

    .line 150
    .line 151
    const-string v15, "textSubstitution"

    .line 152
    .line 153
    move-object/from16 v18, v0

    .line 154
    .line 155
    const-string v0, "getTextSubstitution(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/AnnotatedString;"

    .line 156
    .line 157
    invoke-direct {v1, v15, v0}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    new-instance v0, Lig2;

    .line 161
    .line 162
    const-string v15, "isShowingTextSubstitution"

    .line 163
    .line 164
    move-object/from16 v19, v1

    .line 165
    .line 166
    const-string v1, "isShowingTextSubstitution(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z"

    .line 167
    .line 168
    invoke-direct {v0, v15, v1}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    new-instance v1, Lig2;

    .line 172
    .line 173
    const-string v15, "inputText"

    .line 174
    .line 175
    move-object/from16 v20, v0

    .line 176
    .line 177
    const-string v0, "getInputText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/AnnotatedString;"

    .line 178
    .line 179
    invoke-direct {v1, v15, v0}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    new-instance v0, Lig2;

    .line 183
    .line 184
    const-string v15, "editableText"

    .line 185
    .line 186
    move-object/from16 v21, v1

    .line 187
    .line 188
    const-string v1, "getEditableText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/AnnotatedString;"

    .line 189
    .line 190
    invoke-direct {v0, v15, v1}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    new-instance v1, Lig2;

    .line 194
    .line 195
    const-string v15, "textSelectionRange"

    .line 196
    .line 197
    move-object/from16 v22, v0

    .line 198
    .line 199
    const-string v0, "getTextSelectionRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)J"

    .line 200
    .line 201
    invoke-direct {v1, v15, v0}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    new-instance v0, Lig2;

    .line 205
    .line 206
    const-string v15, "textCompositionRange"

    .line 207
    .line 208
    move-object/from16 v23, v1

    .line 209
    .line 210
    const-string v1, "getTextCompositionRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/TextRange;"

    .line 211
    .line 212
    invoke-direct {v0, v15, v1}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    new-instance v1, Lig2;

    .line 216
    .line 217
    const-string v15, "imeAction"

    .line 218
    .line 219
    move-object/from16 v24, v0

    .line 220
    .line 221
    const-string v0, "getImeAction(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I"

    .line 222
    .line 223
    invoke-direct {v1, v15, v0}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    new-instance v0, Lig2;

    .line 227
    .line 228
    const-string v15, "selected"

    .line 229
    .line 230
    move-object/from16 v25, v1

    .line 231
    .line 232
    const-string v1, "getSelected(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z"

    .line 233
    .line 234
    invoke-direct {v0, v15, v1}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    new-instance v1, Lig2;

    .line 238
    .line 239
    const-string v15, "collectionInfo"

    .line 240
    .line 241
    move-object/from16 v26, v0

    .line 242
    .line 243
    const-string v0, "getCollectionInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionInfo;"

    .line 244
    .line 245
    invoke-direct {v1, v15, v0}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    new-instance v0, Lig2;

    .line 249
    .line 250
    const-string v15, "collectionItemInfo"

    .line 251
    .line 252
    move-object/from16 v27, v1

    .line 253
    .line 254
    const-string v1, "getCollectionItemInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionItemInfo;"

    .line 255
    .line 256
    invoke-direct {v0, v15, v1}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    new-instance v1, Lig2;

    .line 260
    .line 261
    const-string v15, "toggleableState"

    .line 262
    .line 263
    move-object/from16 v28, v0

    .line 264
    .line 265
    const-string v0, "getToggleableState(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/state/ToggleableState;"

    .line 266
    .line 267
    invoke-direct {v1, v15, v0}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    new-instance v0, Lig2;

    .line 271
    .line 272
    const-string v15, "inputTextSuggestionState"

    .line 273
    .line 274
    move-object/from16 v29, v1

    .line 275
    .line 276
    const-string v1, "getInputTextSuggestionState(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/InputTextSuggestionState;"

    .line 277
    .line 278
    invoke-direct {v0, v15, v1}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    new-instance v1, Lig2;

    .line 282
    .line 283
    const-string v15, "isEditable"

    .line 284
    .line 285
    move-object/from16 v30, v0

    .line 286
    .line 287
    const-string v0, "isEditable(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z"

    .line 288
    .line 289
    invoke-direct {v1, v15, v0}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    new-instance v0, Lig2;

    .line 293
    .line 294
    const-string v15, "maxTextLength"

    .line 295
    .line 296
    move-object/from16 v31, v1

    .line 297
    .line 298
    const-string v1, "getMaxTextLength(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I"

    .line 299
    .line 300
    invoke-direct {v0, v15, v1}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    new-instance v1, Lig2;

    .line 304
    .line 305
    const-string v15, "shape"

    .line 306
    .line 307
    move-object/from16 v32, v0

    .line 308
    .line 309
    const-string v0, "getShape(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/graphics/Shape;"

    .line 310
    .line 311
    invoke-direct {v1, v15, v0}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    new-instance v0, Lig2;

    .line 315
    .line 316
    const-string v15, "customActions"

    .line 317
    .line 318
    move-object/from16 v33, v1

    .line 319
    .line 320
    const-string v1, "getCustomActions(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/util/List;"

    .line 321
    .line 322
    invoke-direct {v0, v15, v1}, Lig2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    const/16 v1, 0x20

    .line 326
    .line 327
    new-array v1, v1, [Lkx1;

    .line 328
    .line 329
    const/4 v15, 0x0

    .line 330
    aput-object v16, v1, v15

    .line 331
    .line 332
    const/4 v15, 0x1

    .line 333
    aput-object v17, v1, v15

    .line 334
    .line 335
    const/4 v15, 0x2

    .line 336
    aput-object v2, v1, v15

    .line 337
    .line 338
    const/4 v2, 0x3

    .line 339
    aput-object v3, v1, v2

    .line 340
    .line 341
    const/4 v2, 0x4

    .line 342
    aput-object v4, v1, v2

    .line 343
    .line 344
    const/4 v2, 0x5

    .line 345
    aput-object v5, v1, v2

    .line 346
    .line 347
    const/4 v2, 0x6

    .line 348
    aput-object v6, v1, v2

    .line 349
    .line 350
    const/4 v2, 0x7

    .line 351
    aput-object v7, v1, v2

    .line 352
    .line 353
    const/16 v2, 0x8

    .line 354
    .line 355
    aput-object v8, v1, v2

    .line 356
    .line 357
    const/16 v2, 0x9

    .line 358
    .line 359
    aput-object v9, v1, v2

    .line 360
    .line 361
    const/16 v2, 0xa

    .line 362
    .line 363
    aput-object v10, v1, v2

    .line 364
    .line 365
    const/16 v2, 0xb

    .line 366
    .line 367
    aput-object v11, v1, v2

    .line 368
    .line 369
    const/16 v2, 0xc

    .line 370
    .line 371
    aput-object v12, v1, v2

    .line 372
    .line 373
    const/16 v2, 0xd

    .line 374
    .line 375
    aput-object v13, v1, v2

    .line 376
    .line 377
    const/16 v2, 0xe

    .line 378
    .line 379
    aput-object v14, v1, v2

    .line 380
    .line 381
    const/16 v2, 0xf

    .line 382
    .line 383
    aput-object v18, v1, v2

    .line 384
    .line 385
    const/16 v2, 0x10

    .line 386
    .line 387
    aput-object v19, v1, v2

    .line 388
    .line 389
    const/16 v2, 0x11

    .line 390
    .line 391
    aput-object v20, v1, v2

    .line 392
    .line 393
    const/16 v2, 0x12

    .line 394
    .line 395
    aput-object v21, v1, v2

    .line 396
    .line 397
    const/16 v2, 0x13

    .line 398
    .line 399
    aput-object v22, v1, v2

    .line 400
    .line 401
    const/16 v2, 0x14

    .line 402
    .line 403
    aput-object v23, v1, v2

    .line 404
    .line 405
    const/16 v2, 0x15

    .line 406
    .line 407
    aput-object v24, v1, v2

    .line 408
    .line 409
    const/16 v2, 0x16

    .line 410
    .line 411
    aput-object v25, v1, v2

    .line 412
    .line 413
    const/16 v2, 0x17

    .line 414
    .line 415
    aput-object v26, v1, v2

    .line 416
    .line 417
    const/16 v2, 0x18

    .line 418
    .line 419
    aput-object v27, v1, v2

    .line 420
    .line 421
    const/16 v2, 0x19

    .line 422
    .line 423
    aput-object v28, v1, v2

    .line 424
    .line 425
    const/16 v2, 0x1a

    .line 426
    .line 427
    aput-object v29, v1, v2

    .line 428
    .line 429
    const/16 v2, 0x1b

    .line 430
    .line 431
    aput-object v30, v1, v2

    .line 432
    .line 433
    const/16 v2, 0x1c

    .line 434
    .line 435
    aput-object v31, v1, v2

    .line 436
    .line 437
    const/16 v2, 0x1d

    .line 438
    .line 439
    aput-object v32, v1, v2

    .line 440
    .line 441
    const/16 v2, 0x1e

    .line 442
    .line 443
    aput-object v33, v1, v2

    .line 444
    .line 445
    const/16 v2, 0x1f

    .line 446
    .line 447
    aput-object v0, v1, v2

    .line 448
    .line 449
    sput-object v1, Lnh3;->a:[Lkx1;

    .line 450
    .line 451
    sget-object v0, Llh3;->a:Loh3;

    .line 452
    .line 453
    sget-object v0, Lah3;->a:Loh3;

    .line 454
    .line 455
    return-void
.end method

.method public static final a(Lph3;I)V
    .locals 3

    .line 1
    sget-object v0, Llh3;->k:Loh3;

    .line 2
    .line 3
    sget-object v1, Lnh3;->a:[Lkx1;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    new-instance v1, Ld52;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Ld52;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0, v1}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final b(Lph3;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Llh3;->a:Loh3;

    .line 2
    .line 3
    sget-object v0, Llh3;->d:Loh3;

    .line 4
    .line 5
    sget-object v1, Lnh3;->a:[Lkx1;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    aget-object v1, v1, v2

    .line 9
    .line 10
    invoke-interface {p0, v0, p1}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final c(Lph3;I)V
    .locals 3

    .line 1
    sget-object v0, Llh3;->y:Loh3;

    .line 2
    .line 3
    sget-object v1, Lnh3;->a:[Lkx1;

    .line 4
    .line 5
    const/16 v2, 0xe

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    new-instance v1, Lq93;

    .line 10
    .line 11
    invoke-direct {v1, p1}, Lq93;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v0, v1}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final d(Lph3;Ljl3;)V
    .locals 3

    .line 1
    sget-object v0, Llh3;->a:Loh3;

    .line 2
    .line 3
    sget-object v0, Llh3;->O:Loh3;

    .line 4
    .line 5
    sget-object v1, Lnh3;->a:[Lkx1;

    .line 6
    .line 7
    const/16 v2, 0x1e

    .line 8
    .line 9
    aget-object v1, v1, v2

    .line 10
    .line 11
    invoke-interface {p0, v0, p1}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final e(Lph3;)V
    .locals 3

    .line 1
    sget-object v0, Llh3;->n:Loh3;

    .line 2
    .line 3
    sget-object v1, Lnh3;->a:[Lkx1;

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-interface {p0, v0, v1}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

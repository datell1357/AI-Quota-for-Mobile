.class public final Lq2;
.super Landroid/view/View$AccessibilityDelegate;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lr2;


# direct methods
.method public constructor <init>(Lr2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq2;->a:Lr2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lq2;->a:Lr2;

    .line 2
    .line 3
    iget-object p0, p0, Lr2;->n:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lq2;->a:Lr2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lr2;->a(Landroid/view/View;)Lwu4;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lwu4;->o:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lq2;->a:Lr2;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lr2;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 13

    .line 1
    new-instance v0, Lj3;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Lj3;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Llb4;->a:Ljava/lang/reflect/Field;

    .line 7
    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const-class v3, Ljava/lang/Boolean;

    .line 12
    .line 13
    const/16 v4, 0x1c

    .line 14
    .line 15
    if-lt v1, v4, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Lhb4;->c(Landroid/view/View;)Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const v5, 0x7f0900c0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v5, v2

    .line 41
    :goto_0
    check-cast v5, Ljava/lang/Boolean;

    .line 42
    .line 43
    const/4 v6, 0x1

    .line 44
    const/4 v7, 0x0

    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_2

    .line 52
    .line 53
    move v5, v6

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v5, v7

    .line 56
    :goto_1
    if-lt v1, v4, :cond_3

    .line 57
    .line 58
    invoke-static {p2, v5}, Lx2;->p(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    invoke-virtual {v0, v6, v5}, Lj3;->f(IZ)V

    .line 63
    .line 64
    .line 65
    :goto_2
    if-lt v1, v4, :cond_4

    .line 66
    .line 67
    invoke-static {p1}, Lhb4;->b(Landroid/view/View;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    goto :goto_3

    .line 76
    :cond_4
    const v5, 0x7f0900ba

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_5

    .line 88
    .line 89
    move-object v3, v5

    .line 90
    goto :goto_3

    .line 91
    :cond_5
    move-object v3, v2

    .line 92
    :goto_3
    check-cast v3, Ljava/lang/Boolean;

    .line 93
    .line 94
    if-eqz v3, :cond_6

    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_6

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_6
    move v6, v7

    .line 104
    :goto_4
    if-lt v1, v4, :cond_7

    .line 105
    .line 106
    invoke-static {p2, v6}, Lx2;->y(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 107
    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_7
    const/4 v3, 0x2

    .line 111
    invoke-virtual {v0, v3, v6}, Lj3;->f(IZ)V

    .line 112
    .line 113
    .line 114
    :goto_5
    const-class v3, Ljava/lang/CharSequence;

    .line 115
    .line 116
    if-lt v1, v4, :cond_8

    .line 117
    .line 118
    invoke-static {p1}, Lhb4;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    goto :goto_6

    .line 123
    :cond_8
    const v5, 0x7f0900bb

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_9

    .line 135
    .line 136
    goto :goto_6

    .line 137
    :cond_9
    move-object v5, v2

    .line 138
    :goto_6
    check-cast v5, Ljava/lang/CharSequence;

    .line 139
    .line 140
    if-lt v1, v4, :cond_a

    .line 141
    .line 142
    invoke-static {p2, v5}, Lx2;->o(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    goto :goto_7

    .line 146
    :cond_a
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    const-string v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY"

    .line 151
    .line 152
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    :goto_7
    const/16 v4, 0x1e

    .line 156
    .line 157
    if-lt v1, v4, :cond_b

    .line 158
    .line 159
    invoke-static {p1}, Ljb4;->b(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    goto :goto_8

    .line 164
    :cond_b
    const v5, 0x7f0900c1

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-eqz v3, :cond_c

    .line 176
    .line 177
    move-object v3, v5

    .line 178
    goto :goto_8

    .line 179
    :cond_c
    move-object v3, v2

    .line 180
    :goto_8
    check-cast v3, Ljava/lang/CharSequence;

    .line 181
    .line 182
    if-lt v1, v4, :cond_d

    .line 183
    .line 184
    invoke-static {p2, v3}, Le3;->i(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    goto :goto_9

    .line 188
    :cond_d
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    const-string v5, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"

    .line 193
    .line 194
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    :goto_9
    iget-object p0, p0, Lq2;->a:Lr2;

    .line 198
    .line 199
    invoke-virtual {p0, p1, v0}, Lr2;->c(Landroid/view/View;Lj3;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    const/16 v3, 0x1a

    .line 207
    .line 208
    if-ge v1, v3, :cond_15

    .line 209
    .line 210
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    const-string v3, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    .line 215
    .line 216
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    const-string v4, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    .line 224
    .line 225
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    const-string v5, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    .line 233
    .line 234
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    const-string v6, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    .line 242
    .line 243
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    const v1, 0x7f0900b9

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    check-cast v8, Landroid/util/SparseArray;

    .line 254
    .line 255
    if-eqz v8, :cond_10

    .line 256
    .line 257
    new-instance v9, Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .line 261
    .line 262
    move v10, v7

    .line 263
    :goto_a
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 264
    .line 265
    .line 266
    move-result v11

    .line 267
    if-ge v10, v11, :cond_f

    .line 268
    .line 269
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v11

    .line 273
    check-cast v11, Ljava/lang/ref/WeakReference;

    .line 274
    .line 275
    invoke-virtual {v11}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v11

    .line 279
    if-nez v11, :cond_e

    .line 280
    .line 281
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 282
    .line 283
    .line 284
    move-result-object v11

    .line 285
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    :cond_e
    add-int/lit8 v10, v10, 0x1

    .line 289
    .line 290
    goto :goto_a

    .line 291
    :cond_f
    move v10, v7

    .line 292
    :goto_b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 293
    .line 294
    .line 295
    move-result v11

    .line 296
    if-ge v10, v11, :cond_10

    .line 297
    .line 298
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v11

    .line 302
    check-cast v11, Ljava/lang/Integer;

    .line 303
    .line 304
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 305
    .line 306
    .line 307
    move-result v11

    .line 308
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->remove(I)V

    .line 309
    .line 310
    .line 311
    add-int/lit8 v10, v10, 0x1

    .line 312
    .line 313
    goto :goto_b

    .line 314
    :cond_10
    instance-of v8, p0, Landroid/text/Spanned;

    .line 315
    .line 316
    if-eqz v8, :cond_11

    .line 317
    .line 318
    move-object v2, p0

    .line 319
    check-cast v2, Landroid/text/Spanned;

    .line 320
    .line 321
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 322
    .line 323
    .line 324
    move-result v8

    .line 325
    const-class v9, Landroid/text/style/ClickableSpan;

    .line 326
    .line 327
    invoke-interface {v2, v7, v8, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    check-cast v2, [Landroid/text/style/ClickableSpan;

    .line 332
    .line 333
    :cond_11
    if-eqz v2, :cond_15

    .line 334
    .line 335
    array-length v8, v2

    .line 336
    if-lez v8, :cond_15

    .line 337
    .line 338
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    .line 339
    .line 340
    .line 341
    move-result-object p2

    .line 342
    const-string v8, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY"

    .line 343
    .line 344
    const v9, 0x7f090006

    .line 345
    .line 346
    .line 347
    invoke-virtual {p2, v8, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object p2

    .line 354
    check-cast p2, Landroid/util/SparseArray;

    .line 355
    .line 356
    if-nez p2, :cond_12

    .line 357
    .line 358
    new-instance p2, Landroid/util/SparseArray;

    .line 359
    .line 360
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p1, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    :cond_12
    move v1, v7

    .line 367
    :goto_c
    array-length v8, v2

    .line 368
    if-ge v1, v8, :cond_15

    .line 369
    .line 370
    aget-object v8, v2, v1

    .line 371
    .line 372
    move v9, v7

    .line 373
    :goto_d
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 374
    .line 375
    .line 376
    move-result v10

    .line 377
    if-ge v9, v10, :cond_14

    .line 378
    .line 379
    invoke-virtual {p2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v10

    .line 383
    check-cast v10, Ljava/lang/ref/WeakReference;

    .line 384
    .line 385
    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v10

    .line 389
    check-cast v10, Landroid/text/style/ClickableSpan;

    .line 390
    .line 391
    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v10

    .line 395
    if-eqz v10, :cond_13

    .line 396
    .line 397
    invoke-virtual {p2, v9}, Landroid/util/SparseArray;->keyAt(I)I

    .line 398
    .line 399
    .line 400
    move-result v8

    .line 401
    goto :goto_e

    .line 402
    :cond_13
    add-int/lit8 v9, v9, 0x1

    .line 403
    .line 404
    goto :goto_d

    .line 405
    :cond_14
    sget v8, Lj3;->d:I

    .line 406
    .line 407
    add-int/lit8 v9, v8, 0x1

    .line 408
    .line 409
    sput v9, Lj3;->d:I

    .line 410
    .line 411
    :goto_e
    new-instance v9, Ljava/lang/ref/WeakReference;

    .line 412
    .line 413
    aget-object v10, v2, v1

    .line 414
    .line 415
    invoke-direct {v9, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    aget-object v9, v2, v1

    .line 422
    .line 423
    move-object v10, p0

    .line 424
    check-cast v10, Landroid/text/Spanned;

    .line 425
    .line 426
    invoke-virtual {v0, v3}, Lj3;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 427
    .line 428
    .line 429
    move-result-object v11

    .line 430
    invoke-interface {v10, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 431
    .line 432
    .line 433
    move-result v12

    .line 434
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 435
    .line 436
    .line 437
    move-result-object v12

    .line 438
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0, v4}, Lj3;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 442
    .line 443
    .line 444
    move-result-object v11

    .line 445
    invoke-interface {v10, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 446
    .line 447
    .line 448
    move-result v12

    .line 449
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 450
    .line 451
    .line 452
    move-result-object v12

    .line 453
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0, v5}, Lj3;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 457
    .line 458
    .line 459
    move-result-object v11

    .line 460
    invoke-interface {v10, v9}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 461
    .line 462
    .line 463
    move-result v9

    .line 464
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 465
    .line 466
    .line 467
    move-result-object v9

    .line 468
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    invoke-virtual {v0, v6}, Lj3;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 472
    .line 473
    .line 474
    move-result-object v9

    .line 475
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 476
    .line 477
    .line 478
    move-result-object v8

    .line 479
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    add-int/lit8 v1, v1, 0x1

    .line 483
    .line 484
    goto :goto_c

    .line 485
    :cond_15
    const p0, 0x7f0900b8

    .line 486
    .line 487
    .line 488
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object p0

    .line 492
    check-cast p0, Ljava/util/List;

    .line 493
    .line 494
    if-nez p0, :cond_16

    .line 495
    .line 496
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 497
    .line 498
    :cond_16
    :goto_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 499
    .line 500
    .line 501
    move-result p1

    .line 502
    if-ge v7, p1, :cond_17

    .line 503
    .line 504
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object p1

    .line 508
    check-cast p1, Ld3;

    .line 509
    .line 510
    invoke-virtual {v0, p1}, Lj3;->a(Ld3;)V

    .line 511
    .line 512
    .line 513
    add-int/lit8 v7, v7, 0x1

    .line 514
    .line 515
    goto :goto_f

    .line 516
    :cond_17
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lq2;->a:Lr2;

    .line 2
    .line 3
    iget-object p0, p0, Lr2;->n:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lq2;->a:Lr2;

    .line 2
    .line 3
    iget-object p0, p0, Lr2;->n:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lq2;->a:Lr2;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lr2;->d(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lq2;->a:Lr2;

    .line 2
    .line 3
    iget-object p0, p0, Lr2;->n:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lq2;->a:Lr2;

    .line 2
    .line 3
    iget-object p0, p0, Lr2;->n:Landroid/view/View$AccessibilityDelegate;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

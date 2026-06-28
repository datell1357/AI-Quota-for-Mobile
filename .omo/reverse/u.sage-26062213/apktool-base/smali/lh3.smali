.class public abstract Llh3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final A:Loh3;

.field public static final B:Loh3;

.field public static final C:Loh3;

.field public static final D:Loh3;

.field public static final E:Loh3;

.field public static final F:Loh3;

.field public static final G:Loh3;

.field public static final H:Loh3;

.field public static final I:Loh3;

.field public static final J:Loh3;

.field public static final K:Loh3;

.field public static final L:Loh3;

.field public static final M:Loh3;

.field public static final N:Loh3;

.field public static final O:Loh3;

.field public static final a:Loh3;

.field public static final b:Loh3;

.field public static final c:Loh3;

.field public static final d:Loh3;

.field public static final e:Loh3;

.field public static final f:Loh3;

.field public static final g:Loh3;

.field public static final h:Loh3;

.field public static final i:Loh3;

.field public static final j:Loh3;

.field public static final k:Loh3;

.field public static final l:Loh3;

.field public static final m:Loh3;

.field public static final n:Loh3;

.field public static final o:Loh3;

.field public static final p:Loh3;

.field public static final q:Loh3;

.field public static final r:Loh3;

.field public static final s:Loh3;

.field public static final t:Loh3;

.field public static final u:Loh3;

.field public static final v:Loh3;

.field public static final w:Loh3;

.field public static final x:Loh3;

.field public static final y:Loh3;

.field public static final z:Loh3;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lfd;->I:Lfd;

    .line 2
    .line 3
    new-instance v1, Loh3;

    .line 4
    .line 5
    const-string v2, "ContentDescription"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v1, v2, v3, v0}, Loh3;-><init>(Ljava/lang/String;ZLdf1;)V

    .line 9
    .line 10
    .line 11
    sput-object v1, Llh3;->a:Loh3;

    .line 12
    .line 13
    new-instance v0, Loh3;

    .line 14
    .line 15
    const-string v1, "StateDescription"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v0, v1, v2}, Loh3;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Llh3;->b:Loh3;

    .line 22
    .line 23
    new-instance v0, Loh3;

    .line 24
    .line 25
    const-string v1, "ProgressBarRangeInfo"

    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Loh3;-><init>(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Llh3;->c:Loh3;

    .line 31
    .line 32
    sget-object v0, Lfd;->Q:Lfd;

    .line 33
    .line 34
    new-instance v1, Loh3;

    .line 35
    .line 36
    const-string v4, "PaneTitle"

    .line 37
    .line 38
    invoke-direct {v1, v4, v3, v0}, Loh3;-><init>(Ljava/lang/String;ZLdf1;)V

    .line 39
    .line 40
    .line 41
    sput-object v1, Llh3;->d:Loh3;

    .line 42
    .line 43
    new-instance v0, Loh3;

    .line 44
    .line 45
    const-string v1, "SelectableGroup"

    .line 46
    .line 47
    invoke-direct {v0, v1, v2}, Loh3;-><init>(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Llh3;->e:Loh3;

    .line 51
    .line 52
    new-instance v0, Loh3;

    .line 53
    .line 54
    const-string v1, "CollectionInfo"

    .line 55
    .line 56
    invoke-direct {v0, v1, v2}, Loh3;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Llh3;->f:Loh3;

    .line 60
    .line 61
    new-instance v0, Loh3;

    .line 62
    .line 63
    const-string v1, "CollectionItemInfo"

    .line 64
    .line 65
    invoke-direct {v0, v1, v2}, Loh3;-><init>(Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    sput-object v0, Llh3;->g:Loh3;

    .line 69
    .line 70
    new-instance v0, Loh3;

    .line 71
    .line 72
    const-string v1, "Heading"

    .line 73
    .line 74
    invoke-direct {v0, v1, v2}, Loh3;-><init>(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    sput-object v0, Llh3;->h:Loh3;

    .line 78
    .line 79
    new-instance v0, Loh3;

    .line 80
    .line 81
    const-string v1, "TextEntryKey"

    .line 82
    .line 83
    invoke-direct {v0, v1, v2}, Loh3;-><init>(Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    sput-object v0, Llh3;->i:Loh3;

    .line 87
    .line 88
    new-instance v0, Loh3;

    .line 89
    .line 90
    const-string v1, "Disabled"

    .line 91
    .line 92
    invoke-direct {v0, v1, v2}, Loh3;-><init>(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Llh3;->j:Loh3;

    .line 96
    .line 97
    new-instance v0, Loh3;

    .line 98
    .line 99
    const-string v1, "LiveRegion"

    .line 100
    .line 101
    invoke-direct {v0, v1, v2}, Loh3;-><init>(Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    sput-object v0, Llh3;->k:Loh3;

    .line 105
    .line 106
    new-instance v0, Loh3;

    .line 107
    .line 108
    const-string v1, "Focused"

    .line 109
    .line 110
    invoke-direct {v0, v1, v2}, Loh3;-><init>(Ljava/lang/String;I)V

    .line 111
    .line 112
    .line 113
    sput-object v0, Llh3;->l:Loh3;

    .line 114
    .line 115
    new-instance v0, Loh3;

    .line 116
    .line 117
    const-string v1, "IsContainer"

    .line 118
    .line 119
    invoke-direct {v0, v1, v2}, Loh3;-><init>(Ljava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    sput-object v0, Llh3;->m:Loh3;

    .line 123
    .line 124
    new-instance v0, Loh3;

    .line 125
    .line 126
    const-string v1, "IsTraversalGroup"

    .line 127
    .line 128
    invoke-direct {v0, v1}, Loh3;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    sput-object v0, Llh3;->n:Loh3;

    .line 132
    .line 133
    new-instance v0, Loh3;

    .line 134
    .line 135
    const-string v1, "IsSensitiveData"

    .line 136
    .line 137
    invoke-direct {v0, v1}, Loh3;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    sput-object v0, Llh3;->o:Loh3;

    .line 141
    .line 142
    new-instance v0, Loh3;

    .line 143
    .line 144
    const-string v1, "InvisibleToUser"

    .line 145
    .line 146
    sget-object v4, Lfd;->M:Lfd;

    .line 147
    .line 148
    invoke-direct {v0, v1, v4}, Loh3;-><init>(Ljava/lang/String;Ldf1;)V

    .line 149
    .line 150
    .line 151
    sput-object v0, Llh3;->p:Loh3;

    .line 152
    .line 153
    new-instance v0, Loh3;

    .line 154
    .line 155
    const-string v1, "HideFromAccessibility"

    .line 156
    .line 157
    sget-object v4, Lfd;->L:Lfd;

    .line 158
    .line 159
    invoke-direct {v0, v1, v4}, Loh3;-><init>(Ljava/lang/String;Ldf1;)V

    .line 160
    .line 161
    .line 162
    sput-object v0, Llh3;->q:Loh3;

    .line 163
    .line 164
    new-instance v0, Loh3;

    .line 165
    .line 166
    const-string v1, "ContentType"

    .line 167
    .line 168
    sget-object v4, Lfd;->J:Lfd;

    .line 169
    .line 170
    invoke-direct {v0, v1, v4}, Loh3;-><init>(Ljava/lang/String;Ldf1;)V

    .line 171
    .line 172
    .line 173
    sput-object v0, Llh3;->r:Loh3;

    .line 174
    .line 175
    new-instance v0, Loh3;

    .line 176
    .line 177
    const-string v1, "ContentDataType"

    .line 178
    .line 179
    sget-object v4, Lfd;->H:Lfd;

    .line 180
    .line 181
    invoke-direct {v0, v1, v4}, Loh3;-><init>(Ljava/lang/String;Ldf1;)V

    .line 182
    .line 183
    .line 184
    sput-object v0, Llh3;->s:Loh3;

    .line 185
    .line 186
    new-instance v0, Loh3;

    .line 187
    .line 188
    const-string v1, "FillableData"

    .line 189
    .line 190
    sget-object v4, Lfd;->K:Lfd;

    .line 191
    .line 192
    invoke-direct {v0, v1, v4}, Loh3;-><init>(Ljava/lang/String;Ldf1;)V

    .line 193
    .line 194
    .line 195
    sput-object v0, Llh3;->t:Loh3;

    .line 196
    .line 197
    new-instance v0, Loh3;

    .line 198
    .line 199
    const-string v1, "TraversalIndex"

    .line 200
    .line 201
    sget-object v4, Lkh3;->r:Lkh3;

    .line 202
    .line 203
    invoke-direct {v0, v1, v4}, Loh3;-><init>(Ljava/lang/String;Ldf1;)V

    .line 204
    .line 205
    .line 206
    sput-object v0, Llh3;->u:Loh3;

    .line 207
    .line 208
    new-instance v0, Loh3;

    .line 209
    .line 210
    const-string v1, "HorizontalScrollAxisRange"

    .line 211
    .line 212
    invoke-direct {v0, v1, v2}, Loh3;-><init>(Ljava/lang/String;I)V

    .line 213
    .line 214
    .line 215
    sput-object v0, Llh3;->v:Loh3;

    .line 216
    .line 217
    new-instance v0, Loh3;

    .line 218
    .line 219
    const-string v1, "VerticalScrollAxisRange"

    .line 220
    .line 221
    invoke-direct {v0, v1, v2}, Loh3;-><init>(Ljava/lang/String;I)V

    .line 222
    .line 223
    .line 224
    sput-object v0, Llh3;->w:Loh3;

    .line 225
    .line 226
    sget-object v0, Lfd;->O:Lfd;

    .line 227
    .line 228
    new-instance v1, Loh3;

    .line 229
    .line 230
    const-string v4, "IsPopup"

    .line 231
    .line 232
    invoke-direct {v1, v4, v3, v0}, Loh3;-><init>(Ljava/lang/String;ZLdf1;)V

    .line 233
    .line 234
    .line 235
    sget-object v0, Lfd;->N:Lfd;

    .line 236
    .line 237
    new-instance v1, Loh3;

    .line 238
    .line 239
    const-string v4, "IsDialog"

    .line 240
    .line 241
    invoke-direct {v1, v4, v3, v0}, Loh3;-><init>(Ljava/lang/String;ZLdf1;)V

    .line 242
    .line 243
    .line 244
    sput-object v1, Llh3;->x:Loh3;

    .line 245
    .line 246
    sget-object v0, Lfd;->R:Lfd;

    .line 247
    .line 248
    new-instance v1, Loh3;

    .line 249
    .line 250
    const-string v4, "Role"

    .line 251
    .line 252
    invoke-direct {v1, v4, v3, v0}, Loh3;-><init>(Ljava/lang/String;ZLdf1;)V

    .line 253
    .line 254
    .line 255
    sput-object v1, Llh3;->y:Loh3;

    .line 256
    .line 257
    new-instance v0, Loh3;

    .line 258
    .line 259
    const-string v1, "TestTag"

    .line 260
    .line 261
    sget-object v4, Lkh3;->p:Lkh3;

    .line 262
    .line 263
    invoke-direct {v0, v1, v2, v4}, Loh3;-><init>(Ljava/lang/String;ZLdf1;)V

    .line 264
    .line 265
    .line 266
    sput-object v0, Llh3;->z:Loh3;

    .line 267
    .line 268
    new-instance v0, Loh3;

    .line 269
    .line 270
    const-string v1, "LinkTestMarker"

    .line 271
    .line 272
    sget-object v4, Lfd;->P:Lfd;

    .line 273
    .line 274
    invoke-direct {v0, v1, v2, v4}, Loh3;-><init>(Ljava/lang/String;ZLdf1;)V

    .line 275
    .line 276
    .line 277
    sput-object v0, Llh3;->A:Loh3;

    .line 278
    .line 279
    sget-object v0, Lkh3;->q:Lkh3;

    .line 280
    .line 281
    new-instance v1, Loh3;

    .line 282
    .line 283
    const-string v4, "Text"

    .line 284
    .line 285
    invoke-direct {v1, v4, v3, v0}, Loh3;-><init>(Ljava/lang/String;ZLdf1;)V

    .line 286
    .line 287
    .line 288
    sput-object v1, Llh3;->B:Loh3;

    .line 289
    .line 290
    new-instance v0, Loh3;

    .line 291
    .line 292
    const-string v1, "TextSubstitution"

    .line 293
    .line 294
    invoke-direct {v0, v1}, Loh3;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    sput-object v0, Llh3;->C:Loh3;

    .line 298
    .line 299
    new-instance v0, Loh3;

    .line 300
    .line 301
    const-string v1, "IsShowingTextSubstitution"

    .line 302
    .line 303
    invoke-direct {v0, v1}, Loh3;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    sput-object v0, Llh3;->D:Loh3;

    .line 307
    .line 308
    new-instance v0, Loh3;

    .line 309
    .line 310
    const-string v1, "InputText"

    .line 311
    .line 312
    invoke-direct {v0, v1, v2}, Loh3;-><init>(Ljava/lang/String;I)V

    .line 313
    .line 314
    .line 315
    sput-object v0, Llh3;->E:Loh3;

    .line 316
    .line 317
    new-instance v0, Loh3;

    .line 318
    .line 319
    const-string v1, "EditableText"

    .line 320
    .line 321
    invoke-direct {v0, v1, v2}, Loh3;-><init>(Ljava/lang/String;I)V

    .line 322
    .line 323
    .line 324
    sput-object v0, Llh3;->F:Loh3;

    .line 325
    .line 326
    new-instance v0, Loh3;

    .line 327
    .line 328
    const-string v1, "TextSelectionRange"

    .line 329
    .line 330
    invoke-direct {v0, v1, v2}, Loh3;-><init>(Ljava/lang/String;I)V

    .line 331
    .line 332
    .line 333
    sput-object v0, Llh3;->G:Loh3;

    .line 334
    .line 335
    new-instance v0, Loh3;

    .line 336
    .line 337
    const-string v1, "Selected"

    .line 338
    .line 339
    invoke-direct {v0, v1, v2}, Loh3;-><init>(Ljava/lang/String;I)V

    .line 340
    .line 341
    .line 342
    sput-object v0, Llh3;->H:Loh3;

    .line 343
    .line 344
    new-instance v0, Loh3;

    .line 345
    .line 346
    const-string v1, "ToggleableState"

    .line 347
    .line 348
    invoke-direct {v0, v1, v2}, Loh3;-><init>(Ljava/lang/String;I)V

    .line 349
    .line 350
    .line 351
    sput-object v0, Llh3;->I:Loh3;

    .line 352
    .line 353
    new-instance v0, Loh3;

    .line 354
    .line 355
    const-string v1, "Password"

    .line 356
    .line 357
    invoke-direct {v0, v1, v2}, Loh3;-><init>(Ljava/lang/String;I)V

    .line 358
    .line 359
    .line 360
    sput-object v0, Llh3;->J:Loh3;

    .line 361
    .line 362
    new-instance v0, Loh3;

    .line 363
    .line 364
    const-string v1, "Error"

    .line 365
    .line 366
    invoke-direct {v0, v1, v2}, Loh3;-><init>(Ljava/lang/String;I)V

    .line 367
    .line 368
    .line 369
    sput-object v0, Llh3;->K:Loh3;

    .line 370
    .line 371
    new-instance v0, Loh3;

    .line 372
    .line 373
    const-string v1, "IndexForKey"

    .line 374
    .line 375
    invoke-direct {v0, v1}, Loh3;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    sput-object v0, Llh3;->L:Loh3;

    .line 379
    .line 380
    new-instance v0, Loh3;

    .line 381
    .line 382
    const-string v1, "IsEditable"

    .line 383
    .line 384
    invoke-direct {v0, v1}, Loh3;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    sput-object v0, Llh3;->M:Loh3;

    .line 388
    .line 389
    new-instance v0, Loh3;

    .line 390
    .line 391
    const-string v1, "MaxTextLength"

    .line 392
    .line 393
    invoke-direct {v0, v1}, Loh3;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    sput-object v0, Llh3;->N:Loh3;

    .line 397
    .line 398
    new-instance v0, Loh3;

    .line 399
    .line 400
    const-string v1, "Shape"

    .line 401
    .line 402
    sget-object v3, Lfd;->S:Lfd;

    .line 403
    .line 404
    invoke-direct {v0, v1, v2, v3}, Loh3;-><init>(Ljava/lang/String;ZLdf1;)V

    .line 405
    .line 406
    .line 407
    sput-object v0, Llh3;->O:Loh3;

    .line 408
    .line 409
    return-void
.end method

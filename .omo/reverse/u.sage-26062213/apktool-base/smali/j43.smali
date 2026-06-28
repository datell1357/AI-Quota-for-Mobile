.class public final Lj43;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lh34;


# instance fields
.field public final n:Lgw4;

.field public final o:I

.field public final p:Lc31;

.field public final q:Liv1;

.field public final r:Ljava/util/List;


# direct methods
.method public constructor <init>(Lgw4;ILc31;Liv1;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj43;->n:Lgw4;

    .line 5
    .line 6
    iput p2, p0, Lj43;->o:I

    .line 7
    .line 8
    iput-object p3, p0, Lj43;->p:Lc31;

    .line 9
    .line 10
    iput-object p4, p0, Lj43;->q:Liv1;

    .line 11
    .line 12
    iput-object p5, p0, Lj43;->r:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Class "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, " declares multiple JSON fields named \'"

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p0, "\'; conflict is caused by fields "

    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Lc43;->c(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, " and "

    .line 38
    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {p3}, Lc43;->c(Ljava/lang/reflect/Field;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p0, "\nSee "

    .line 50
    .line 51
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p0, "duplicate-fields"

    .line 55
    .line 56
    const-string p1, "https://github.com/google/gson/blob/main/Troubleshooting.md#"

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0
.end method


# virtual methods
.method public final a(Lpi1;Lq44;)Lg34;
    .locals 4

    .line 1
    iget-object v0, p2, Lq44;->a:Ljava/lang/Class;

    .line 2
    .line 3
    const-class v1, Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    sget-object v1, Lc43;->a:Lnt1;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->isLocalClass()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    :cond_1
    new-instance p0, Ld43;

    .line 38
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_2
    iget-object v1, p0, Lj43;->r:Ljava/util/List;

    .line 44
    .line 45
    invoke-static {v1}, Lmt1;->y(Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    sget-object v1, Lc43;->a:Lnt1;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lnt1;->H(Ljava/lang/Class;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/4 v2, 0x1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    new-instance v1, Li43;

    .line 58
    .line 59
    invoke-virtual {p0, p1, p2, v0, v2}, Lj43;->c(Lpi1;Lq44;Ljava/lang/Class;Z)Lh43;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v1, v0, p0}, Li43;-><init>(Ljava/lang/Class;Lh43;)V

    .line 64
    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_3
    iget-object v1, p0, Lj43;->n:Lgw4;

    .line 68
    .line 69
    invoke-virtual {v1, p2, v2}, Lgw4;->y(Lq44;Z)Lon2;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-instance v2, Lg43;

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0, p1, p2, v0, v3}, Lj43;->c(Lpi1;Lq44;Ljava/lang/Class;Z)Lh43;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-direct {v2, v1, p0}, Lg43;-><init>(Lon2;Lh43;)V

    .line 81
    .line 82
    .line 83
    return-object v2
.end method

.method public final c(Lpi1;Lq44;Ljava/lang/Class;Z)Lh43;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p3

    .line 4
    .line 5
    invoke-virtual {v7}, Ljava/lang/Class;->isInterface()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lh43;->c:Lh43;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    move-object/from16 v1, p2

    .line 25
    .line 26
    move-object v10, v7

    .line 27
    :goto_0
    iget-object v11, v1, Lq44;->b:Ljava/lang/reflect/Type;

    .line 28
    .line 29
    const-class v1, Ljava/lang/Object;

    .line 30
    .line 31
    if-eq v10, v1, :cond_16

    .line 32
    .line 33
    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 34
    .line 35
    .line 36
    move-result-object v12

    .line 37
    if-eq v10, v7, :cond_1

    .line 38
    .line 39
    array-length v1, v12

    .line 40
    if-lez v1, :cond_1

    .line 41
    .line 42
    iget-object v1, v0, Lj43;->r:Ljava/util/List;

    .line 43
    .line 44
    invoke-static {v1}, Lmt1;->y(Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    array-length v13, v12

    .line 48
    const/4 v14, 0x0

    .line 49
    move v15, v14

    .line 50
    :goto_1
    if-ge v15, v13, :cond_15

    .line 51
    .line 52
    aget-object v1, v12, v15

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    invoke-virtual {v0, v1, v2}, Lj43;->d(Ljava/lang/reflect/Field;Z)Z

    .line 56
    .line 57
    .line 58
    move-result v24

    .line 59
    invoke-virtual {v0, v1, v14}, Lj43;->d(Ljava/lang/reflect/Field;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v24, :cond_2

    .line 64
    .line 65
    if-nez v3, :cond_2

    .line 66
    .line 67
    move-object/from16 v3, p1

    .line 68
    .line 69
    goto/16 :goto_e

    .line 70
    .line 71
    :cond_2
    const-class v4, Lni3;

    .line 72
    .line 73
    const/16 v25, 0x0

    .line 74
    .line 75
    if-eqz p4, :cond_6

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_3

    .line 86
    .line 87
    move/from16 v26, v14

    .line 88
    .line 89
    :goto_2
    move-object/from16 v19, v25

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_3
    sget-object v5, Lc43;->a:Lnt1;

    .line 93
    .line 94
    invoke-virtual {v5, v10, v1}, Lnt1;->x(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-static {v5}, Lc43;->f(Ljava/lang/reflect/AccessibleObject;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    if-eqz v6, :cond_5

    .line 106
    .line 107
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    if-eqz v6, :cond_4

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    invoke-static {v5, v14}, Lc43;->d(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    new-instance v1, Lfw1;

    .line 119
    .line 120
    const-string v2, "@SerializedName on "

    .line 121
    .line 122
    const-string v3, " is not supported"

    .line 123
    .line 124
    invoke-static {v2, v0, v3}, Ldi0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const/4 v2, 0x5

    .line 129
    invoke-direct {v1, v0, v2}, Lv00;-><init>(Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    throw v1

    .line 133
    :cond_5
    :goto_3
    move/from16 v26, v3

    .line 134
    .line 135
    move-object/from16 v19, v5

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_6
    move/from16 v26, v3

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :goto_4
    if-nez v19, :cond_7

    .line 142
    .line 143
    invoke-static {v1}, Lc43;->f(Ljava/lang/reflect/AccessibleObject;)V

    .line 144
    .line 145
    .line 146
    :cond_7
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    new-instance v5, Ljava/util/HashMap;

    .line 151
    .line 152
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-static {v11, v10, v3, v5}, Lgg4;->R(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    check-cast v4, Lni3;

    .line 164
    .line 165
    if-nez v4, :cond_8

    .line 166
    .line 167
    iget v4, v0, Lj43;->o:I

    .line 168
    .line 169
    invoke-static {v4, v1}, Ldi0;->b(ILjava/lang/reflect/Field;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_8
    invoke-interface {v4}, Lni3;->value()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-interface {v4}, Lni3;->alternate()[Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    move-object/from16 v28, v5

    .line 189
    .line 190
    move-object v5, v4

    .line 191
    move-object/from16 v4, v28

    .line 192
    .line 193
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-eqz v6, :cond_9

    .line 198
    .line 199
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    move/from16 p2, v2

    .line 204
    .line 205
    move-object v2, v4

    .line 206
    goto :goto_6

    .line 207
    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 210
    .line 211
    .line 212
    move-result v16

    .line 213
    move/from16 p2, v2

    .line 214
    .line 215
    add-int/lit8 v2, v16, 0x1

    .line 216
    .line 217
    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 224
    .line 225
    .line 226
    move-object v2, v6

    .line 227
    :goto_6
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    move-object/from16 v17, v4

    .line 232
    .line 233
    check-cast v17, Ljava/lang/String;

    .line 234
    .line 235
    new-instance v4, Lq44;

    .line 236
    .line 237
    invoke-direct {v4, v3}, Lq44;-><init>(Ljava/lang/reflect/Type;)V

    .line 238
    .line 239
    .line 240
    iget-object v3, v4, Lq44;->a:Ljava/lang/Class;

    .line 241
    .line 242
    if-eqz v3, :cond_a

    .line 243
    .line 244
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-eqz v3, :cond_a

    .line 249
    .line 250
    move/from16 v22, p2

    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_a
    move/from16 v22, v14

    .line 254
    .line 255
    :goto_7
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    if-eqz v5, :cond_b

    .line 264
    .line 265
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_b

    .line 270
    .line 271
    move/from16 v23, p2

    .line 272
    .line 273
    goto :goto_8

    .line 274
    :cond_b
    move/from16 v23, v14

    .line 275
    .line 276
    :goto_8
    const-class v3, Lgv1;

    .line 277
    .line 278
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    move-object v5, v3

    .line 283
    check-cast v5, Lgv1;

    .line 284
    .line 285
    if-eqz v5, :cond_c

    .line 286
    .line 287
    move-object v6, v2

    .line 288
    iget-object v2, v0, Lj43;->n:Lgw4;

    .line 289
    .line 290
    move-object v3, v6

    .line 291
    const/4 v6, 0x0

    .line 292
    move-object/from16 v18, v1

    .line 293
    .line 294
    iget-object v1, v0, Lj43;->q:Liv1;

    .line 295
    .line 296
    move/from16 v16, p2

    .line 297
    .line 298
    move-object/from16 v27, v3

    .line 299
    .line 300
    move-object/from16 v3, p1

    .line 301
    .line 302
    invoke-virtual/range {v1 .. v6}, Liv1;->b(Lgw4;Lpi1;Lq44;Lgv1;Z)Lg34;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    goto :goto_9

    .line 307
    :cond_c
    move-object/from16 v3, p1

    .line 308
    .line 309
    move/from16 v16, p2

    .line 310
    .line 311
    move-object/from16 v18, v1

    .line 312
    .line 313
    move-object/from16 v27, v2

    .line 314
    .line 315
    move-object/from16 v1, v25

    .line 316
    .line 317
    :goto_9
    if-eqz v1, :cond_d

    .line 318
    .line 319
    move/from16 v2, v16

    .line 320
    .line 321
    goto :goto_a

    .line 322
    :cond_d
    move v2, v14

    .line 323
    :goto_a
    if-nez v1, :cond_e

    .line 324
    .line 325
    invoke-virtual {v3, v4}, Lpi1;->b(Lq44;)Lg34;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    :cond_e
    if-eqz v24, :cond_10

    .line 330
    .line 331
    if-eqz v2, :cond_f

    .line 332
    .line 333
    move-object v2, v1

    .line 334
    goto :goto_b

    .line 335
    :cond_f
    new-instance v2, Lou1;

    .line 336
    .line 337
    iget-object v4, v4, Lq44;->b:Ljava/lang/reflect/Type;

    .line 338
    .line 339
    const/4 v5, 0x2

    .line 340
    invoke-direct {v2, v3, v1, v4, v5}, Lou1;-><init>(Ljava/lang/Object;Lg34;Ljava/lang/Object;I)V

    .line 341
    .line 342
    .line 343
    :goto_b
    move-object/from16 v20, v2

    .line 344
    .line 345
    goto :goto_c

    .line 346
    :cond_10
    move-object/from16 v20, v1

    .line 347
    .line 348
    :goto_c
    new-instance v16, Le43;

    .line 349
    .line 350
    move-object/from16 v21, v1

    .line 351
    .line 352
    invoke-direct/range {v16 .. v23}, Le43;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lg34;Lg34;ZZ)V

    .line 353
    .line 354
    .line 355
    move-object/from16 v2, v16

    .line 356
    .line 357
    move-object/from16 v4, v17

    .line 358
    .line 359
    move-object/from16 v1, v18

    .line 360
    .line 361
    if-eqz v26, :cond_12

    .line 362
    .line 363
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 368
    .line 369
    .line 370
    move-result v6

    .line 371
    if-eqz v6, :cond_12

    .line 372
    .line 373
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v6

    .line 377
    check-cast v6, Ljava/lang/String;

    .line 378
    .line 379
    invoke-interface {v8, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v16

    .line 383
    move-object/from16 v14, v16

    .line 384
    .line 385
    check-cast v14, Le43;

    .line 386
    .line 387
    if-nez v14, :cond_11

    .line 388
    .line 389
    const/4 v14, 0x0

    .line 390
    goto :goto_d

    .line 391
    :cond_11
    iget-object v0, v14, Le43;->b:Ljava/lang/reflect/Field;

    .line 392
    .line 393
    invoke-static {v7, v6, v0, v1}, Lj43;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    .line 394
    .line 395
    .line 396
    throw v25

    .line 397
    :cond_12
    if-eqz v24, :cond_14

    .line 398
    .line 399
    invoke-interface {v9, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    check-cast v2, Le43;

    .line 404
    .line 405
    if-nez v2, :cond_13

    .line 406
    .line 407
    goto :goto_e

    .line 408
    :cond_13
    iget-object v0, v2, Le43;->b:Ljava/lang/reflect/Field;

    .line 409
    .line 410
    invoke-static {v7, v4, v0, v1}, Lj43;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    .line 411
    .line 412
    .line 413
    throw v25

    .line 414
    :cond_14
    :goto_e
    add-int/lit8 v15, v15, 0x1

    .line 415
    .line 416
    const/4 v14, 0x0

    .line 417
    goto/16 :goto_1

    .line 418
    .line 419
    :cond_15
    move-object/from16 v3, p1

    .line 420
    .line 421
    invoke-virtual {v10}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    new-instance v2, Ljava/util/HashMap;

    .line 426
    .line 427
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 428
    .line 429
    .line 430
    invoke-static {v11, v10, v1, v2}, Lgg4;->R(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    new-instance v2, Lq44;

    .line 435
    .line 436
    invoke-direct {v2, v1}, Lq44;-><init>(Ljava/lang/reflect/Type;)V

    .line 437
    .line 438
    .line 439
    iget-object v10, v2, Lq44;->a:Ljava/lang/Class;

    .line 440
    .line 441
    move-object v1, v2

    .line 442
    goto/16 :goto_0

    .line 443
    .line 444
    :cond_16
    new-instance v0, Lh43;

    .line 445
    .line 446
    new-instance v1, Ljava/util/ArrayList;

    .line 447
    .line 448
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 453
    .line 454
    .line 455
    invoke-direct {v0, v8, v1}, Lh43;-><init>(Ljava/util/Map;Ljava/util/List;)V

    .line 456
    .line 457
    .line 458
    return-object v0
.end method

.method public final d(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lj43;->p:Lc31;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x88

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    and-int/2addr v0, v1

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    :goto_0
    move p2, v1

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1, p2}, Lc31;->b(Ljava/lang/Class;Z)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    if-eqz p2, :cond_3

    .line 37
    .line 38
    iget-object p0, p0, Lc31;->n:Ljava/util/List;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    iget-object p0, p0, Lc31;->o:Ljava/util/List;

    .line 42
    .line 43
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/4 p2, 0x0

    .line 48
    if-nez p1, :cond_5

    .line 49
    .line 50
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_4

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lmk0;->b()V

    .line 69
    .line 70
    .line 71
    return p2

    .line 72
    :cond_5
    :goto_2
    xor-int/lit8 p0, p2, 0x1

    .line 73
    .line 74
    return p0
.end method

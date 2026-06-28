.class public abstract Lcom/google/api/client/json/JsonGenerator;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private serialize(ZLjava/lang/Object;)V
    .locals 8

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {p2}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonGenerator;->writeNull()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    instance-of v1, p2, Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    check-cast p2, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p0, p2}, Lcom/google/api/client/json/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    instance-of v1, p2, Ljava/lang/Number;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v1, :cond_c

    .line 33
    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Lcom/google/api/client/json/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    instance-of p1, p2, Ljava/math/BigDecimal;

    .line 45
    .line 46
    if-eqz p1, :cond_4

    .line 47
    .line 48
    check-cast p2, Ljava/math/BigDecimal;

    .line 49
    .line 50
    invoke-virtual {p0, p2}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_4
    instance-of p1, p2, Ljava/math/BigInteger;

    .line 55
    .line 56
    if-eqz p1, :cond_5

    .line 57
    .line 58
    check-cast p2, Ljava/math/BigInteger;

    .line 59
    .line 60
    invoke-virtual {p0, p2}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_5
    instance-of p1, p2, Ljava/lang/Long;

    .line 65
    .line 66
    if-eqz p1, :cond_6

    .line 67
    .line 68
    check-cast p2, Ljava/lang/Long;

    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 71
    .line 72
    .line 73
    move-result-wide p1

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(J)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_6
    instance-of p1, p2, Ljava/lang/Float;

    .line 79
    .line 80
    if-eqz p1, :cond_8

    .line 81
    .line 82
    check-cast p2, Ljava/lang/Number;

    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-nez p2, :cond_7

    .line 93
    .line 94
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-nez p2, :cond_7

    .line 99
    .line 100
    move v2, v3

    .line 101
    :cond_7
    invoke-static {v2}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(F)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_8
    instance-of p1, p2, Ljava/lang/Integer;

    .line 109
    .line 110
    if-nez p1, :cond_b

    .line 111
    .line 112
    instance-of p1, p2, Ljava/lang/Short;

    .line 113
    .line 114
    if-nez p1, :cond_b

    .line 115
    .line 116
    instance-of p1, p2, Ljava/lang/Byte;

    .line 117
    .line 118
    if-eqz p1, :cond_9

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_9
    check-cast p2, Ljava/lang/Number;

    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    .line 124
    .line 125
    .line 126
    move-result-wide p1

    .line 127
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_a

    .line 132
    .line 133
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_a

    .line 138
    .line 139
    move v2, v3

    .line 140
    :cond_a
    invoke-static {v2}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(D)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_b
    :goto_0
    check-cast p2, Ljava/lang/Number;

    .line 148
    .line 149
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    invoke-virtual {p0, p1}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(I)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_c
    instance-of v1, p2, Ljava/lang/Boolean;

    .line 158
    .line 159
    if-eqz v1, :cond_d

    .line 160
    .line 161
    check-cast p2, Ljava/lang/Boolean;

    .line 162
    .line 163
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    invoke-virtual {p0, p1}, Lcom/google/api/client/json/JsonGenerator;->writeBoolean(Z)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_d
    instance-of v1, p2, Lcom/google/api/client/util/DateTime;

    .line 172
    .line 173
    if-eqz v1, :cond_e

    .line 174
    .line 175
    check-cast p2, Lcom/google/api/client/util/DateTime;

    .line 176
    .line 177
    invoke-virtual {p2}, Lcom/google/api/client/util/DateTime;->toStringRfc3339()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p0, p1}, Lcom/google/api/client/json/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_e
    instance-of v1, p2, Ljava/lang/Iterable;

    .line 186
    .line 187
    if-nez v1, :cond_f

    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_11

    .line 194
    .line 195
    :cond_f
    instance-of v1, p2, Ljava/util/Map;

    .line 196
    .line 197
    if-nez v1, :cond_11

    .line 198
    .line 199
    instance-of v1, p2, Lcom/google/api/client/util/GenericData;

    .line 200
    .line 201
    if-nez v1, :cond_11

    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonGenerator;->writeStartArray()V

    .line 204
    .line 205
    .line 206
    invoke-static {p2}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_10

    .line 219
    .line 220
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-direct {p0, p1, v0}, Lcom/google/api/client/json/JsonGenerator;->serialize(ZLjava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_10
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonGenerator;->writeEndArray()V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_13

    .line 237
    .line 238
    check-cast p2, Ljava/lang/Enum;

    .line 239
    .line 240
    invoke-static {p2}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/Enum;)Lcom/google/api/client/util/FieldInfo;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-virtual {p1}, Lcom/google/api/client/util/FieldInfo;->getName()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    if-nez p1, :cond_12

    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonGenerator;->writeNull()V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :cond_12
    invoke-virtual {p0, p1}, Lcom/google/api/client/json/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :cond_13
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonGenerator;->writeStartObject()V

    .line 259
    .line 260
    .line 261
    instance-of v1, p2, Ljava/util/Map;

    .line 262
    .line 263
    if-eqz v1, :cond_14

    .line 264
    .line 265
    instance-of v1, p2, Lcom/google/api/client/util/GenericData;

    .line 266
    .line 267
    if-nez v1, :cond_14

    .line 268
    .line 269
    move v1, v3

    .line 270
    goto :goto_2

    .line 271
    :cond_14
    move v1, v2

    .line 272
    :goto_2
    if-eqz v1, :cond_15

    .line 273
    .line 274
    const/4 v0, 0x0

    .line 275
    goto :goto_3

    .line 276
    :cond_15
    invoke-static {v0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    :goto_3
    invoke-static {p2}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    .line 281
    .line 282
    .line 283
    move-result-object p2

    .line 284
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    :cond_16
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    if-eqz v4, :cond_19

    .line 297
    .line 298
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    check-cast v4, Ljava/util/Map$Entry;

    .line 303
    .line 304
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    if-eqz v5, :cond_16

    .line 309
    .line 310
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    check-cast v4, Ljava/lang/String;

    .line 315
    .line 316
    if-eqz v1, :cond_17

    .line 317
    .line 318
    move v6, p1

    .line 319
    goto :goto_5

    .line 320
    :cond_17
    invoke-virtual {v0, v4}, Lcom/google/api/client/util/ClassInfo;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 321
    .line 322
    .line 323
    move-result-object v6

    .line 324
    if-eqz v6, :cond_18

    .line 325
    .line 326
    const-class v7, Lcom/google/api/client/json/JsonString;

    .line 327
    .line 328
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    if-eqz v6, :cond_18

    .line 333
    .line 334
    move v6, v3

    .line 335
    goto :goto_5

    .line 336
    :cond_18
    move v6, v2

    .line 337
    :goto_5
    invoke-virtual {p0, v4}, Lcom/google/api/client/json/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-direct {p0, v6, v5}, Lcom/google/api/client/json/JsonGenerator;->serialize(ZLjava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_19
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonGenerator;->writeEndObject()V

    .line 345
    .line 346
    .line 347
    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public enablePrettyPrint()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract flush()V
.end method

.method public abstract getFactory()Lcom/google/api/client/json/JsonFactory;
.end method

.method public final serialize(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 348
    invoke-direct {p0, v0, p1}, Lcom/google/api/client/json/JsonGenerator;->serialize(ZLjava/lang/Object;)V

    return-void
.end method

.method public abstract writeBoolean(Z)V
.end method

.method public abstract writeEndArray()V
.end method

.method public abstract writeEndObject()V
.end method

.method public abstract writeFieldName(Ljava/lang/String;)V
.end method

.method public abstract writeNull()V
.end method

.method public abstract writeNumber(D)V
.end method

.method public abstract writeNumber(F)V
.end method

.method public abstract writeNumber(I)V
.end method

.method public abstract writeNumber(J)V
.end method

.method public abstract writeNumber(Ljava/lang/String;)V
.end method

.method public abstract writeNumber(Ljava/math/BigDecimal;)V
.end method

.method public abstract writeNumber(Ljava/math/BigInteger;)V
.end method

.method public abstract writeStartArray()V
.end method

.method public abstract writeStartObject()V
.end method

.method public abstract writeString(Ljava/lang/String;)V
.end method

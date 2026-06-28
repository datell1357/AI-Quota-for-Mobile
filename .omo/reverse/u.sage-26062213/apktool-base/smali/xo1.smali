.class public final Lxo1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:Le72;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lxo1;

    .line 2
    .line 3
    invoke-direct {v0}, Lxo1;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Le72;->p:Le72;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lxo1;->a:Z

    .line 8
    .line 9
    iput v1, p0, Lxo1;->b:I

    .line 10
    .line 11
    iput v1, p0, Lxo1;->c:I

    .line 12
    .line 13
    iput-object v0, p0, Lxo1;->d:Le72;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lxo1;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Lxo1;

    .line 10
    .line 11
    iget-boolean v0, p0, Lxo1;->a:Z

    .line 12
    .line 13
    iget-boolean v1, p1, Lxo1;->a:Z

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_2
    iget v0, p0, Lxo1;->b:I

    .line 19
    .line 20
    iget v1, p1, Lxo1;->b:I

    .line 21
    .line 22
    if-ne v0, v1, :cond_4

    .line 23
    .line 24
    iget v0, p0, Lxo1;->c:I

    .line 25
    .line 26
    iget v1, p1, Lxo1;->c:I

    .line 27
    .line 28
    if-ne v0, v1, :cond_4

    .line 29
    .line 30
    iget-object p0, p0, Lxo1;->d:Le72;

    .line 31
    .line 32
    iget-object p1, p1, Lxo1;->d:Le72;

    .line 33
    .line 34
    invoke-static {p0, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-nez p0, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_4
    :goto_1
    const/4 p0, 0x0

    .line 44
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/16 v2, 0x1f

    .line 7
    .line 8
    mul-int/2addr v1, v2

    .line 9
    invoke-static {v0, v1, v2}, Lxw1;->j(III)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-boolean v1, p0, Lxo1;->a:Z

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Lxw1;->n(IZI)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget v1, p0, Lxo1;->b:I

    .line 20
    .line 21
    invoke-static {v1, v0, v2}, Lxw1;->j(III)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget v1, p0, Lxo1;->c:I

    .line 26
    .line 27
    const/16 v2, 0x3c1

    .line 28
    .line 29
    invoke-static {v1, v0, v2}, Lxw1;->j(III)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object p0, p0, Lxo1;->d:Le72;

    .line 34
    .line 35
    iget-object p0, p0, Le72;->n:Ljava/util/List;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    add-int/2addr p0, v0

    .line 42
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x6

    .line 3
    const/4 v2, 0x5

    .line 4
    const/4 v3, 0x4

    .line 5
    const-string v4, "Invalid"

    .line 6
    .line 7
    const/4 v5, 0x3

    .line 8
    const/4 v6, 0x2

    .line 9
    const/4 v7, 0x1

    .line 10
    const-string v8, "Unspecified"

    .line 11
    .line 12
    iget v9, p0, Lxo1;->b:I

    .line 13
    .line 14
    if-nez v9, :cond_0

    .line 15
    .line 16
    move-object v9, v8

    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    if-ne v9, v7, :cond_1

    .line 20
    .line 21
    const-string v9, "Text"

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_1
    if-ne v9, v6, :cond_2

    .line 26
    .line 27
    const-string v9, "Ascii"

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_2
    if-ne v9, v5, :cond_3

    .line 32
    .line 33
    const-string v9, "Number"

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_3
    if-ne v9, v3, :cond_4

    .line 38
    .line 39
    const-string v9, "Phone"

    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_4
    if-ne v9, v2, :cond_5

    .line 44
    .line 45
    const-string v9, "Uri"

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_5
    if-ne v9, v1, :cond_6

    .line 50
    .line 51
    const-string v9, "Email"

    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :cond_6
    if-ne v9, v0, :cond_7

    .line 56
    .line 57
    const-string v9, "Password"

    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_7
    const/16 v10, 0x8

    .line 62
    .line 63
    if-ne v9, v10, :cond_8

    .line 64
    .line 65
    const-string v9, "NumberPassword"

    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :cond_8
    const/16 v10, 0x9

    .line 70
    .line 71
    if-ne v9, v10, :cond_9

    .line 72
    .line 73
    const-string v9, "Decimal"

    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :cond_9
    const/16 v10, 0xa

    .line 78
    .line 79
    if-ne v9, v10, :cond_a

    .line 80
    .line 81
    const-string v9, "PasswordVisible"

    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :cond_a
    const/16 v10, 0xb

    .line 86
    .line 87
    if-ne v9, v10, :cond_b

    .line 88
    .line 89
    const-string v9, "PostalAddress"

    .line 90
    .line 91
    goto/16 :goto_0

    .line 92
    .line 93
    :cond_b
    const/16 v10, 0xc

    .line 94
    .line 95
    if-ne v9, v10, :cond_c

    .line 96
    .line 97
    const-string v9, "PersonName"

    .line 98
    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :cond_c
    const/16 v10, 0xd

    .line 102
    .line 103
    if-ne v9, v10, :cond_d

    .line 104
    .line 105
    const-string v9, "EmailSubject"

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_d
    const/16 v10, 0xe

    .line 109
    .line 110
    if-ne v9, v10, :cond_e

    .line 111
    .line 112
    const-string v9, "ShortMessage"

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_e
    const/16 v10, 0xf

    .line 116
    .line 117
    if-ne v9, v10, :cond_f

    .line 118
    .line 119
    const-string v9, "LongMessage"

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_f
    const/16 v10, 0x10

    .line 123
    .line 124
    if-ne v9, v10, :cond_10

    .line 125
    .line 126
    const-string v9, "Filter"

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_10
    const/16 v10, 0x11

    .line 130
    .line 131
    if-ne v9, v10, :cond_11

    .line 132
    .line 133
    const-string v9, "Phonetic"

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_11
    const/16 v10, 0x12

    .line 137
    .line 138
    if-ne v9, v10, :cond_12

    .line 139
    .line 140
    const-string v9, "DateTime"

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_12
    const/16 v10, 0x13

    .line 144
    .line 145
    if-ne v9, v10, :cond_13

    .line 146
    .line 147
    const-string v9, "Date"

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_13
    const/16 v10, 0x14

    .line 151
    .line 152
    if-ne v9, v10, :cond_14

    .line 153
    .line 154
    const-string v9, "Time"

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_14
    const/16 v10, 0x15

    .line 158
    .line 159
    if-ne v9, v10, :cond_15

    .line 160
    .line 161
    const-string v9, "NumberSigned"

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_15
    const/16 v10, 0x16

    .line 165
    .line 166
    if-ne v9, v10, :cond_16

    .line 167
    .line 168
    const-string v9, "DecimalSigned"

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_16
    const/16 v10, 0x17

    .line 172
    .line 173
    if-ne v9, v10, :cond_17

    .line 174
    .line 175
    const-string v9, "DecimalPassword"

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_17
    const/16 v10, 0x18

    .line 179
    .line 180
    if-ne v9, v10, :cond_18

    .line 181
    .line 182
    const-string v9, "NumberPasswordSigned"

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_18
    const/16 v10, 0x19

    .line 186
    .line 187
    if-ne v9, v10, :cond_19

    .line 188
    .line 189
    const-string v9, "DecimalPasswordSigned"

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_19
    move-object v9, v4

    .line 193
    :goto_0
    const/4 v10, -0x1

    .line 194
    const-string v11, "None"

    .line 195
    .line 196
    iget v12, p0, Lxo1;->c:I

    .line 197
    .line 198
    if-ne v12, v10, :cond_1a

    .line 199
    .line 200
    move-object v4, v8

    .line 201
    goto :goto_1

    .line 202
    :cond_1a
    if-nez v12, :cond_1b

    .line 203
    .line 204
    move-object v4, v11

    .line 205
    goto :goto_1

    .line 206
    :cond_1b
    if-ne v12, v7, :cond_1c

    .line 207
    .line 208
    const-string v4, "Default"

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_1c
    if-ne v12, v6, :cond_1d

    .line 212
    .line 213
    const-string v4, "Go"

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_1d
    if-ne v12, v5, :cond_1e

    .line 217
    .line 218
    const-string v4, "Search"

    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_1e
    if-ne v12, v3, :cond_1f

    .line 222
    .line 223
    const-string v4, "Send"

    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_1f
    if-ne v12, v2, :cond_20

    .line 227
    .line 228
    const-string v4, "Previous"

    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_20
    if-ne v12, v1, :cond_21

    .line 232
    .line 233
    const-string v4, "Next"

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_21
    if-ne v12, v0, :cond_22

    .line 237
    .line 238
    const-string v4, "Done"

    .line 239
    .line 240
    :cond_22
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    const-string v1, "ImeOptions(singleLine=false, capitalization="

    .line 243
    .line 244
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v1, ", autoCorrect="

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    iget-boolean v1, p0, Lxo1;->a:Z

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v1, ", keyboardType="

    .line 261
    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v1, ", imeAction="

    .line 266
    .line 267
    const-string v2, ", platformImeOptions=null, hintLocales="

    .line 268
    .line 269
    invoke-static {v0, v9, v1, v4, v2}, Ldi0;->E(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iget-object p0, p0, Lxo1;->d:Le72;

    .line 273
    .line 274
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string p0, ")"

    .line 278
    .line 279
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    return-object p0
.end method

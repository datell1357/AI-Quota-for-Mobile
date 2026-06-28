.class public Lcom/google/api/client/util/escape/PercentEscaper;
.super Lcom/google/api/client/util/escape/UnicodeEscaper;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final SAFECHARS_URLENCODER:Ljava/lang/String; = "-_.*"

.field public static final SAFEPATHCHARS_URLENCODER:Ljava/lang/String; = "-_.!~*\'()@:$&,;="

.field public static final SAFEQUERYSTRINGCHARS_URLENCODER:Ljava/lang/String; = "-_.!~*\'()@:$,;/?:"

.field public static final SAFEUSERINFOCHARS_URLENCODER:Ljava/lang/String; = "-_.!~*\'():$&,;="

.field public static final SAFE_PLUS_RESERVED_CHARS_URLENCODER:Ljava/lang/String; = "-_.!~*\'()@:$&,;=+/?#[]"

.field private static final UPPER_HEX_DIGITS:[C

.field private static final URI_ESCAPED_SPACE:[C


# instance fields
.field private final plusForSpace:Z

.field private final safeOctets:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    const/16 v1, 0x2b

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-char v1, v0, v2

    .line 8
    .line 9
    sput-object v0, Lcom/google/api/client/util/escape/PercentEscaper;->URI_ESCAPED_SPACE:[C

    .line 10
    .line 11
    const/16 v0, 0x10

    .line 12
    .line 13
    new-array v0, v0, [C

    .line 14
    .line 15
    fill-array-data v0, :array_0

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/util/escape/UnicodeEscaper;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ".*[0-9A-Za-z].*"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    const-string v0, " "

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string p0, "plusForSpace cannot be specified when space is a \'safe\' character"

    .line 25
    .line 26
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v1

    .line 30
    :cond_1
    :goto_0
    const-string v0, "%"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    iput-boolean p2, p0, Lcom/google/api/client/util/escape/PercentEscaper;->plusForSpace:Z

    .line 39
    .line 40
    invoke-static {p1}, Lcom/google/api/client/util/escape/PercentEscaper;->createSafeOctets(Ljava/lang/String;)[Z

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/google/api/client/util/escape/PercentEscaper;->safeOctets:[Z

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    const-string p0, "The \'%\' character cannot be specified as \'safe\'"

    .line 48
    .line 49
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v1

    .line 53
    :cond_3
    const-string p0, "Alphanumeric ASCII characters are always \'safe\' and should not be escaped."

    .line 54
    .line 55
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v1
.end method

.method private static createSafeOctets(Ljava/lang/String;)[Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/16 v1, 0x7a

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    move v4, v1

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v3, v0, :cond_0

    .line 12
    .line 13
    aget-char v5, p0, v3

    .line 14
    .line 15
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    add-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    add-int/2addr v4, v0

    .line 24
    new-array v3, v4, [Z

    .line 25
    .line 26
    const/16 v4, 0x30

    .line 27
    .line 28
    :goto_1
    const/16 v5, 0x39

    .line 29
    .line 30
    if-gt v4, v5, :cond_1

    .line 31
    .line 32
    aput-boolean v0, v3, v4

    .line 33
    .line 34
    add-int/lit8 v4, v4, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v4, 0x41

    .line 38
    .line 39
    :goto_2
    const/16 v5, 0x5a

    .line 40
    .line 41
    if-gt v4, v5, :cond_2

    .line 42
    .line 43
    aput-boolean v0, v3, v4

    .line 44
    .line 45
    add-int/lit8 v4, v4, 0x1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v4, 0x61

    .line 49
    .line 50
    :goto_3
    if-gt v4, v1, :cond_3

    .line 51
    .line 52
    aput-boolean v0, v3, v4

    .line 53
    .line 54
    add-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_3
    array-length v1, p0

    .line 58
    :goto_4
    if-ge v2, v1, :cond_4

    .line 59
    .line 60
    aget-char v4, p0, v2

    .line 61
    .line 62
    aput-boolean v0, v3, v4

    .line 63
    .line 64
    add-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_4
    return-object v3
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 247
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 248
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 249
    iget-object v3, p0, Lcom/google/api/client/util/escape/PercentEscaper;->safeOctets:[Z

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-boolean v2, v3, v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/google/api/client/util/escape/UnicodeEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method

.method public escape(I)[C
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/api/client/util/escape/PercentEscaper;->safeOctets:[Z

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge p1, v1, :cond_0

    .line 5
    .line 6
    aget-boolean v0, v0, p1

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/16 v0, 0x20

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    iget-boolean p0, p0, Lcom/google/api/client/util/escape/PercentEscaper;->plusForSpace:Z

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    sget-object p0, Lcom/google/api/client/util/escape/PercentEscaper;->URI_ESCAPED_SPACE:[C

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    const/16 p0, 0x7f

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    const/4 v1, 0x2

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x4

    .line 29
    const/16 v4, 0x25

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    if-gt p1, p0, :cond_2

    .line 33
    .line 34
    new-array p0, v5, [C

    .line 35
    .line 36
    aput-char v4, p0, v2

    .line 37
    .line 38
    sget-object v2, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    .line 39
    .line 40
    and-int/lit8 v4, p1, 0xf

    .line 41
    .line 42
    aget-char v4, v2, v4

    .line 43
    .line 44
    aput-char v4, p0, v1

    .line 45
    .line 46
    ushr-int/2addr p1, v3

    .line 47
    aget-char p1, v2, p1

    .line 48
    .line 49
    aput-char p1, p0, v0

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_2
    const/16 p0, 0x7ff

    .line 53
    .line 54
    const/4 v6, 0x5

    .line 55
    const/16 v7, 0xc

    .line 56
    .line 57
    const/16 v8, 0xa

    .line 58
    .line 59
    const/4 v9, 0x6

    .line 60
    const/16 v10, 0x8

    .line 61
    .line 62
    if-gt p1, p0, :cond_3

    .line 63
    .line 64
    new-array p0, v9, [C

    .line 65
    .line 66
    aput-char v4, p0, v2

    .line 67
    .line 68
    aput-char v4, p0, v5

    .line 69
    .line 70
    sget-object v2, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    .line 71
    .line 72
    and-int/lit8 v4, p1, 0xf

    .line 73
    .line 74
    aget-char v4, v2, v4

    .line 75
    .line 76
    aput-char v4, p0, v6

    .line 77
    .line 78
    ushr-int/lit8 v4, p1, 0x4

    .line 79
    .line 80
    and-int/2addr v4, v5

    .line 81
    or-int/2addr v4, v10

    .line 82
    aget-char v4, v2, v4

    .line 83
    .line 84
    aput-char v4, p0, v3

    .line 85
    .line 86
    ushr-int/lit8 v3, p1, 0x6

    .line 87
    .line 88
    and-int/lit8 v3, v3, 0xf

    .line 89
    .line 90
    aget-char v3, v2, v3

    .line 91
    .line 92
    aput-char v3, p0, v1

    .line 93
    .line 94
    ushr-int/2addr p1, v8

    .line 95
    or-int/2addr p1, v7

    .line 96
    aget-char p1, v2, p1

    .line 97
    .line 98
    aput-char p1, p0, v0

    .line 99
    .line 100
    return-object p0

    .line 101
    :cond_3
    const p0, 0xffff

    .line 102
    .line 103
    .line 104
    const/16 v11, 0x9

    .line 105
    .line 106
    const/4 v12, 0x7

    .line 107
    if-gt p1, p0, :cond_4

    .line 108
    .line 109
    new-array p0, v11, [C

    .line 110
    .line 111
    aput-char v4, p0, v2

    .line 112
    .line 113
    const/16 v2, 0x45

    .line 114
    .line 115
    aput-char v2, p0, v0

    .line 116
    .line 117
    aput-char v4, p0, v5

    .line 118
    .line 119
    aput-char v4, p0, v9

    .line 120
    .line 121
    sget-object v0, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    .line 122
    .line 123
    and-int/lit8 v2, p1, 0xf

    .line 124
    .line 125
    aget-char v2, v0, v2

    .line 126
    .line 127
    aput-char v2, p0, v10

    .line 128
    .line 129
    ushr-int/lit8 v2, p1, 0x4

    .line 130
    .line 131
    and-int/2addr v2, v5

    .line 132
    or-int/2addr v2, v10

    .line 133
    aget-char v2, v0, v2

    .line 134
    .line 135
    aput-char v2, p0, v12

    .line 136
    .line 137
    ushr-int/lit8 v2, p1, 0x6

    .line 138
    .line 139
    and-int/lit8 v2, v2, 0xf

    .line 140
    .line 141
    aget-char v2, v0, v2

    .line 142
    .line 143
    aput-char v2, p0, v6

    .line 144
    .line 145
    ushr-int/lit8 v2, p1, 0xa

    .line 146
    .line 147
    and-int/2addr v2, v5

    .line 148
    or-int/2addr v2, v10

    .line 149
    aget-char v2, v0, v2

    .line 150
    .line 151
    aput-char v2, p0, v3

    .line 152
    .line 153
    ushr-int/2addr p1, v7

    .line 154
    aget-char p1, v0, p1

    .line 155
    .line 156
    aput-char p1, p0, v1

    .line 157
    .line 158
    return-object p0

    .line 159
    :cond_4
    const p0, 0x10ffff

    .line 160
    .line 161
    .line 162
    if-gt p1, p0, :cond_5

    .line 163
    .line 164
    new-array p0, v7, [C

    .line 165
    .line 166
    aput-char v4, p0, v2

    .line 167
    .line 168
    const/16 v2, 0x46

    .line 169
    .line 170
    aput-char v2, p0, v0

    .line 171
    .line 172
    aput-char v4, p0, v5

    .line 173
    .line 174
    aput-char v4, p0, v9

    .line 175
    .line 176
    aput-char v4, p0, v11

    .line 177
    .line 178
    sget-object v0, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    .line 179
    .line 180
    and-int/lit8 v2, p1, 0xf

    .line 181
    .line 182
    aget-char v2, v0, v2

    .line 183
    .line 184
    const/16 v4, 0xb

    .line 185
    .line 186
    aput-char v2, p0, v4

    .line 187
    .line 188
    ushr-int/lit8 v2, p1, 0x4

    .line 189
    .line 190
    and-int/2addr v2, v5

    .line 191
    or-int/2addr v2, v10

    .line 192
    aget-char v2, v0, v2

    .line 193
    .line 194
    aput-char v2, p0, v8

    .line 195
    .line 196
    ushr-int/lit8 v2, p1, 0x6

    .line 197
    .line 198
    and-int/lit8 v2, v2, 0xf

    .line 199
    .line 200
    aget-char v2, v0, v2

    .line 201
    .line 202
    aput-char v2, p0, v10

    .line 203
    .line 204
    ushr-int/lit8 v2, p1, 0xa

    .line 205
    .line 206
    and-int/2addr v2, v5

    .line 207
    or-int/2addr v2, v10

    .line 208
    aget-char v2, v0, v2

    .line 209
    .line 210
    aput-char v2, p0, v12

    .line 211
    .line 212
    ushr-int/lit8 v2, p1, 0xc

    .line 213
    .line 214
    and-int/lit8 v2, v2, 0xf

    .line 215
    .line 216
    aget-char v2, v0, v2

    .line 217
    .line 218
    aput-char v2, p0, v6

    .line 219
    .line 220
    ushr-int/lit8 v2, p1, 0x10

    .line 221
    .line 222
    and-int/2addr v2, v5

    .line 223
    or-int/2addr v2, v10

    .line 224
    aget-char v2, v0, v2

    .line 225
    .line 226
    aput-char v2, p0, v3

    .line 227
    .line 228
    ushr-int/lit8 p1, p1, 0x12

    .line 229
    .line 230
    and-int/2addr p1, v12

    .line 231
    aget-char p1, v0, p1

    .line 232
    .line 233
    aput-char p1, p0, v1

    .line 234
    .line 235
    return-object p0

    .line 236
    :cond_5
    const-string p0, "Invalid unicode character value "

    .line 237
    .line 238
    invoke-static {p1, p0}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    const/4 p0, 0x0

    .line 246
    return-object p0
.end method

.method public nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 3

    .line 1
    :goto_0
    if-ge p2, p3, :cond_1

    .line 2
    .line 3
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/google/api/client/util/escape/PercentEscaper;->safeOctets:[Z

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    if-ge v0, v2, :cond_1

    .line 11
    .line 12
    aget-boolean v0, v1, v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    :goto_1
    return p2
.end method

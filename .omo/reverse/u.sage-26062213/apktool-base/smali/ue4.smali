.class public final Lue4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final b:[Lhr1;

.field public static final c:Ltf2;

.field public static final d:Ltf2;

.field public static final e:Ltf2;


# instance fields
.field public final a:Lxe4;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [Lhr1;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    .line 7
    new-instance v3, Lhr1;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v3, v4}, Lhr1;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    aput-object v3, v1, v2

    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sput-object v1, Lue4;->b:[Lhr1;

    .line 19
    .line 20
    new-instance v1, Ltf2;

    .line 21
    .line 22
    const/16 v2, 0x8

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ltf2;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lhr1;

    .line 28
    .line 29
    const-string v4, "status bars source"

    .line 30
    .line 31
    invoke-direct {v3, v4}, Lhr1;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    invoke-virtual {v1, v4, v3}, Ltf2;->h(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    new-instance v3, Lhr1;

    .line 39
    .line 40
    const-string v5, "navigation bars source"

    .line 41
    .line 42
    invoke-direct {v3, v5}, Lhr1;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v5, 0x2

    .line 46
    invoke-virtual {v1, v5, v3}, Ltf2;->h(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    new-instance v3, Lhr1;

    .line 50
    .line 51
    const-string v6, "caption bar source"

    .line 52
    .line 53
    invoke-direct {v3, v6}, Lhr1;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0, v3}, Ltf2;->h(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance v3, Lhr1;

    .line 60
    .line 61
    const-string v6, "IME source"

    .line 62
    .line 63
    invoke-direct {v3, v6}, Lhr1;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2, v3}, Ltf2;->h(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    new-instance v3, Lhr1;

    .line 70
    .line 71
    const-string v6, "system gestures source"

    .line 72
    .line 73
    invoke-direct {v3, v6}, Lhr1;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const/16 v6, 0x10

    .line 77
    .line 78
    invoke-virtual {v1, v6, v3}, Ltf2;->h(ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    new-instance v3, Lhr1;

    .line 82
    .line 83
    const-string v7, "mandatory system gestures source"

    .line 84
    .line 85
    invoke-direct {v3, v7}, Lhr1;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const/16 v7, 0x20

    .line 89
    .line 90
    invoke-virtual {v1, v7, v3}, Ltf2;->h(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    new-instance v3, Lhr1;

    .line 94
    .line 95
    const-string v8, "tappable element source"

    .line 96
    .line 97
    invoke-direct {v3, v8}, Lhr1;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const/16 v8, 0x40

    .line 101
    .line 102
    invoke-virtual {v1, v8, v3}, Ltf2;->h(ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    new-instance v3, Lhr1;

    .line 106
    .line 107
    const-string v9, "display cutout source"

    .line 108
    .line 109
    invoke-direct {v3, v9}, Lhr1;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const/16 v9, 0x80

    .line 113
    .line 114
    invoke-virtual {v1, v9, v3}, Ltf2;->h(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    sput-object v1, Lue4;->c:Ltf2;

    .line 118
    .line 119
    new-instance v1, Ltf2;

    .line 120
    .line 121
    invoke-direct {v1, v2}, Ltf2;-><init>(I)V

    .line 122
    .line 123
    .line 124
    new-instance v3, Lhr1;

    .line 125
    .line 126
    const-string v10, "status bars target"

    .line 127
    .line 128
    invoke-direct {v3, v10}, Lhr1;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v4, v3}, Ltf2;->h(ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    new-instance v3, Lhr1;

    .line 135
    .line 136
    const-string v10, "navigation bars target"

    .line 137
    .line 138
    invoke-direct {v3, v10}, Lhr1;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v5, v3}, Ltf2;->h(ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    new-instance v3, Lhr1;

    .line 145
    .line 146
    const-string v10, "caption bar target"

    .line 147
    .line 148
    invoke-direct {v3, v10}, Lhr1;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v0, v3}, Ltf2;->h(ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    new-instance v3, Lhr1;

    .line 155
    .line 156
    const-string v10, "IME target"

    .line 157
    .line 158
    invoke-direct {v3, v10}, Lhr1;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v2, v3}, Ltf2;->h(ILjava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    new-instance v3, Lhr1;

    .line 165
    .line 166
    const-string v10, "system gestures target"

    .line 167
    .line 168
    invoke-direct {v3, v10}, Lhr1;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v6, v3}, Ltf2;->h(ILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    new-instance v3, Lhr1;

    .line 175
    .line 176
    const-string v10, "mandatory system gestures target"

    .line 177
    .line 178
    invoke-direct {v3, v10}, Lhr1;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v7, v3}, Ltf2;->h(ILjava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    new-instance v3, Lhr1;

    .line 185
    .line 186
    const-string v10, "tappable element target"

    .line 187
    .line 188
    invoke-direct {v3, v10}, Lhr1;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v8, v3}, Ltf2;->h(ILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    new-instance v3, Lhr1;

    .line 195
    .line 196
    const-string v10, "display cutout target"

    .line 197
    .line 198
    invoke-direct {v3, v10}, Lhr1;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v9, v3}, Ltf2;->h(ILjava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    sput-object v1, Lue4;->d:Ltf2;

    .line 205
    .line 206
    new-instance v1, Ltf2;

    .line 207
    .line 208
    invoke-direct {v1, v2}, Ltf2;-><init>(I)V

    .line 209
    .line 210
    .line 211
    sget-object v3, Lse4;->a:Lre4;

    .line 212
    .line 213
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    sget-object v3, Lre4;->g:Lte4;

    .line 217
    .line 218
    invoke-virtual {v1, v4, v3}, Ltf2;->h(ILjava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    sget-object v3, Lre4;->f:Lte4;

    .line 222
    .line 223
    invoke-virtual {v1, v5, v3}, Ltf2;->h(ILjava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    sget-object v3, Lre4;->b:Lte4;

    .line 227
    .line 228
    invoke-virtual {v1, v0, v3}, Ltf2;->h(ILjava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    sget-object v0, Lre4;->d:Lte4;

    .line 232
    .line 233
    invoke-virtual {v1, v2, v0}, Ltf2;->h(ILjava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    sget-object v0, Lre4;->h:Lte4;

    .line 237
    .line 238
    invoke-virtual {v1, v6, v0}, Ltf2;->h(ILjava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    sget-object v0, Lre4;->e:Lte4;

    .line 242
    .line 243
    invoke-virtual {v1, v7, v0}, Ltf2;->h(ILjava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    sget-object v0, Lre4;->i:Lte4;

    .line 247
    .line 248
    invoke-virtual {v1, v8, v0}, Ltf2;->h(ILjava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    sget-object v0, Lre4;->c:Lte4;

    .line 252
    .line 253
    invoke-virtual {v1, v9, v0}, Ltf2;->h(ILjava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    sput-object v1, Lue4;->e:Ltf2;

    .line 257
    .line 258
    return-void
.end method

.method public constructor <init>(Lxe4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lue4;->a:Lxe4;

    .line 5
    .line 6
    invoke-static {}, Lis1;->a()Ltf2;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static a(Lek1;Lhr1;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lhr1;->b()Lek1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lhr1;->d()Lek1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lhr1;->c()Lek1;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eq p0, v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lhr1;->a()Lek1;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-ne p0, p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    return p0
.end method

.method public static b(Lf82;Lhr1;Lnr1;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lf82;->a()Lgy1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lgy1;->I()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p1}, Lhr1;->b()Lek1;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget v3, p2, Lnr1;->a:I

    .line 14
    .line 15
    int-to-float v3, v3

    .line 16
    invoke-virtual {p0, v2, v3}, Lf82;->c(Lek1;F)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lhr1;->d()Lek1;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget v3, p2, Lnr1;->b:I

    .line 24
    .line 25
    int-to-float v3, v3

    .line 26
    invoke-virtual {p0, v2, v3}, Lf82;->c(Lek1;F)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lhr1;->c()Lek1;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/16 v3, 0x20

    .line 34
    .line 35
    shr-long v3, v0, v3

    .line 36
    .line 37
    long-to-int v3, v3

    .line 38
    iget v4, p2, Lnr1;->c:I

    .line 39
    .line 40
    sub-int/2addr v3, v4

    .line 41
    int-to-float v3, v3

    .line 42
    invoke-virtual {p0, v2, v3}, Lf82;->c(Lek1;F)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lhr1;->a()Lek1;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-wide v2, 0xffffffffL

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    and-long/2addr v0, v2

    .line 55
    long-to-int v0, v0

    .line 56
    iget p2, p2, Lnr1;->d:I

    .line 57
    .line 58
    sub-int/2addr v0, p2

    .line 59
    int-to-float p2, v0

    .line 60
    invoke-virtual {p0, p1, p2}, Lf82;->c(Lek1;F)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

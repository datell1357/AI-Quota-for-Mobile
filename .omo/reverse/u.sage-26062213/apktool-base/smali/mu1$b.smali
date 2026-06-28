.class public Lmu1$b;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lh34;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmu1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


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


# virtual methods
.method public final a(Lpi1;Lq44;)Lg34;
    .locals 2

    .line 1
    iget-object p0, p2, Lq44;->a:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const-string v0, "java.time."

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    invoke-static {}, Lnu1;->e()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-ne p0, p2, :cond_1

    .line 22
    .line 23
    sget-object p0, Lmu1;->a:Llu1;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    invoke-static {}, Lnu1;->x()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-ne p0, p2, :cond_2

    .line 31
    .line 32
    sget-object p0, Lmu1;->b:Llu1;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_2
    invoke-static {}, Lku1;->f()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    if-ne p0, p2, :cond_3

    .line 40
    .line 41
    sget-object p0, Lmu1;->c:Llu1;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_3
    invoke-static {}, Lku1;->y()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    if-ne p0, p2, :cond_4

    .line 49
    .line 50
    sget-object p0, Lmu1;->d:Llu1;

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_4
    invoke-static {}, Lnu1;->y()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    if-ne p0, p2, :cond_5

    .line 58
    .line 59
    invoke-static {p1}, Lmu1;->b(Lpi1;)Lf34;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_5
    invoke-static {}, Lnu1;->z()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    if-ne p0, p2, :cond_6

    .line 69
    .line 70
    sget-object p0, Lmu1;->e:Llu1;

    .line 71
    .line 72
    return-object p0

    .line 73
    :cond_6
    invoke-static {}, Lnu1;->A()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    const/4 v0, 0x1

    .line 78
    if-ne p0, p2, :cond_7

    .line 79
    .line 80
    invoke-static {p1}, Lmu1;->b(Lpi1;)Lf34;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {}, Lku1;->C()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    new-instance v1, Lq44;

    .line 89
    .line 90
    invoke-direct {v1, p2}, Lq44;-><init>(Ljava/lang/reflect/Type;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1}, Lpi1;->b(Lq44;)Lg34;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    new-instance p2, Lm70;

    .line 98
    .line 99
    invoke-direct {p2, p0, p1, v0}, Lm70;-><init>(Lg34;Ljava/lang/Object;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Lg34;->a()Lf34;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0

    .line 107
    :cond_7
    invoke-static {}, Lnu1;->B()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    if-ne p0, p2, :cond_8

    .line 112
    .line 113
    sget-object p0, Lmu1;->a:Llu1;

    .line 114
    .line 115
    invoke-static {}, Lku1;->y()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    new-instance p2, Lq44;

    .line 123
    .line 124
    invoke-direct {p2, p0}, Lq44;-><init>(Ljava/lang/reflect/Type;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Lpi1;->b(Lq44;)Lg34;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {}, Lku1;->C()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    new-instance v1, Lq44;

    .line 136
    .line 137
    invoke-direct {v1, p2}, Lq44;-><init>(Ljava/lang/reflect/Type;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v1}, Lpi1;->b(Lq44;)Lg34;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    new-instance p2, Lqu1;

    .line 145
    .line 146
    invoke-direct {p2, p0, p1, v0}, Lqu1;-><init>(Lg34;Lg34;I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Lg34;->a()Lf34;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    return-object p0

    .line 154
    :cond_8
    invoke-static {}, Lnu1;->C()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    if-ne p0, p2, :cond_9

    .line 159
    .line 160
    sget-object p0, Lmu1;->f:Llu1;

    .line 161
    .line 162
    return-object p0

    .line 163
    :cond_9
    invoke-static {}, Lnu1;->D()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    if-ne p0, p2, :cond_a

    .line 168
    .line 169
    sget-object p0, Lmu1;->g:Llu1;

    .line 170
    .line 171
    return-object p0

    .line 172
    :cond_a
    invoke-static {}, Lnu1;->q()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    if-ne p0, p2, :cond_b

    .line 177
    .line 178
    sget-object p0, Lmu1;->h:Llu1;

    .line 179
    .line 180
    return-object p0

    .line 181
    :cond_b
    invoke-static {}, Lku1;->D()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    if-eq p0, p2, :cond_e

    .line 186
    .line 187
    invoke-static {}, Lku1;->C()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    if-ne p0, p2, :cond_c

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_c
    invoke-static {}, Lnu1;->v()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    if-ne p0, p2, :cond_d

    .line 199
    .line 200
    invoke-static {p1}, Lmu1;->b(Lpi1;)Lf34;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-static {}, Lku1;->C()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    new-instance v0, Lq44;

    .line 209
    .line 210
    invoke-direct {v0, p2}, Lq44;-><init>(Ljava/lang/reflect/Type;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v0}, Lpi1;->b(Lq44;)Lg34;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    invoke-static {}, Lku1;->D()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    new-instance v1, Lq44;

    .line 222
    .line 223
    invoke-direct {v1, v0}, Lq44;-><init>(Ljava/lang/reflect/Type;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, v1}, Lpi1;->b(Lq44;)Lg34;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    new-instance v0, Lou1;

    .line 231
    .line 232
    const/4 v1, 0x0

    .line 233
    invoke-direct {v0, p0, p2, p1, v1}, Lou1;-><init>(Ljava/lang/Object;Lg34;Ljava/lang/Object;I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Lg34;->a()Lf34;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    return-object p0

    .line 241
    :cond_d
    :goto_0
    const/4 p0, 0x0

    .line 242
    return-object p0

    .line 243
    :cond_e
    :goto_1
    sget-object p0, Lmu1;->i:Lf34;

    .line 244
    .line 245
    return-object p0
.end method

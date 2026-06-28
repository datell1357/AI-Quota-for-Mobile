.class public final Lnh2;
.super Lb70;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final p:[B

.field public final q:Ljava/lang/String;

.field public final r:[B

.field public final s:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lph2;->b:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Loq;->f([B)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lb70;->n:I

    .line 16
    .line 17
    iput-object p1, p0, Lb70;->o:Ljava/lang/Object;

    .line 18
    .line 19
    array-length p1, p1

    .line 20
    sget-object v1, Lph2;->d:[B

    .line 21
    .line 22
    array-length v1, v1

    .line 23
    if-lt p1, v1, :cond_8

    .line 24
    .line 25
    move p1, v0

    .line 26
    :goto_0
    sget-object v1, Lph2;->d:[B

    .line 27
    .line 28
    array-length v2, v1

    .line 29
    iget-object v3, p0, Lb70;->o:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, [B

    .line 32
    .line 33
    if-ge p1, v2, :cond_1

    .line 34
    .line 35
    aget-byte v2, v3, p1

    .line 36
    .line 37
    aget-byte v1, v1, p1

    .line 38
    .line 39
    if-ne v2, v1, :cond_0

    .line 40
    .line 41
    add-int/lit8 p1, p1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance p0, Lkh2;

    .line 45
    .line 46
    const-string p1, "NTLM message expected - instead got unrecognized bytes"

    .line 47
    .line 48
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_1
    array-length p1, v1

    .line 57
    invoke-static {p1, v3}, Lph2;->h(I[B)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    const/4 v1, 0x2

    .line 62
    if-ne p1, v1, :cond_7

    .line 63
    .line 64
    iget-object p1, p0, Lb70;->o:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, [B

    .line 67
    .line 68
    array-length v1, p1

    .line 69
    iput v1, p0, Lb70;->n:I

    .line 70
    .line 71
    const/16 v1, 0x8

    .line 72
    .line 73
    new-array v2, v1, [B

    .line 74
    .line 75
    iput-object v2, p0, Lnh2;->p:[B

    .line 76
    .line 77
    array-length v3, p1

    .line 78
    const/16 v4, 0x20

    .line 79
    .line 80
    if-lt v3, v4, :cond_6

    .line 81
    .line 82
    const/16 v3, 0x18

    .line 83
    .line 84
    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lb70;->o:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p1, [B

    .line 90
    .line 91
    const/16 v0, 0x14

    .line 92
    .line 93
    invoke-static {v0, p1}, Lph2;->h(I[B)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    iput p1, p0, Lnh2;->s:I

    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    iput-object v1, p0, Lnh2;->q:Ljava/lang/String;

    .line 101
    .line 102
    iget v2, p0, Lb70;->n:I

    .line 103
    .line 104
    if-lt v2, v0, :cond_4

    .line 105
    .line 106
    const/16 v0, 0xc

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lb70;->D(I)[B

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    array-length v2, v0

    .line 113
    if-eqz v2, :cond_4

    .line 114
    .line 115
    new-instance v2, Ljava/lang/String;

    .line 116
    .line 117
    and-int/lit8 p1, p1, 0x1

    .line 118
    .line 119
    if-nez p1, :cond_2

    .line 120
    .line 121
    sget-object p1, Lph2;->b:Ljava/nio/charset/Charset;

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    sget-object p1, Lph2;->a:Ljava/nio/charset/Charset;

    .line 125
    .line 126
    if-eqz p1, :cond_3

    .line 127
    .line 128
    :goto_1
    invoke-direct {v2, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 129
    .line 130
    .line 131
    iput-object v2, p0, Lnh2;->q:Ljava/lang/String;

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_3
    new-instance p0, Lkh2;

    .line 135
    .line 136
    const-string p1, "Unicode not supported"

    .line 137
    .line 138
    invoke-direct {p0, p1}, Lcm1;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p0

    .line 142
    :cond_4
    :goto_2
    iput-object v1, p0, Lnh2;->r:[B

    .line 143
    .line 144
    iget p1, p0, Lb70;->n:I

    .line 145
    .line 146
    const/16 v0, 0x30

    .line 147
    .line 148
    if-lt p1, v0, :cond_5

    .line 149
    .line 150
    const/16 p1, 0x28

    .line 151
    .line 152
    invoke-virtual {p0, p1}, Lb70;->D(I)[B

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    array-length v0, p1

    .line 157
    if-eqz v0, :cond_5

    .line 158
    .line 159
    iput-object p1, p0, Lnh2;->r:[B

    .line 160
    .line 161
    :cond_5
    return-void

    .line 162
    :cond_6
    new-instance p0, Lkh2;

    .line 163
    .line 164
    const-string p1, "NTLM: Message too short"

    .line 165
    .line 166
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p0

    .line 174
    :cond_7
    new-instance p0, Lkh2;

    .line 175
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string v2, "NTLM type "

    .line 179
    .line 180
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v1, " message expected - instead got type "

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p0

    .line 214
    :cond_8
    new-instance p0, Lkh2;

    .line 215
    .line 216
    const-string p1, "NTLM message decoding error - packet too short"

    .line 217
    .line 218
    invoke-static {p1}, Lcm1;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw p0
.end method

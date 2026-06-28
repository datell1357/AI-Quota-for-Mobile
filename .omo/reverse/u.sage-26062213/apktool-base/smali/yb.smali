.class public final synthetic Lyb;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lyb;->n:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget p0, p0, Lyb;->n:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Lnj0;

    .line 8
    .line 9
    check-cast p2, Lnj0;

    .line 10
    .line 11
    check-cast p1, Ltm;

    .line 12
    .line 13
    iget-object p0, p1, Ltm;->a:Ljava/lang/String;

    .line 14
    .line 15
    check-cast p2, Ltm;

    .line 16
    .line 17
    iget-object p1, p2, Ltm;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :pswitch_0
    check-cast p1, Lg12;

    .line 25
    .line 26
    check-cast p2, Lg12;

    .line 27
    .line 28
    iget p0, p1, Lg12;->a:I

    .line 29
    .line 30
    iget p1, p2, Lg12;->a:I

    .line 31
    .line 32
    invoke-static {p0, p1}, Lnt1;->l(II)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :pswitch_1
    check-cast p1, Lxy1;

    .line 38
    .line 39
    check-cast p2, Lxy1;

    .line 40
    .line 41
    iget-object p0, p1, Lxy1;->T:Lbz1;

    .line 42
    .line 43
    iget-object p0, p0, Lbz1;->p:Lcb2;

    .line 44
    .line 45
    iget p0, p0, Lcb2;->R:F

    .line 46
    .line 47
    iget-object v0, p2, Lxy1;->T:Lbz1;

    .line 48
    .line 49
    iget-object v0, v0, Lbz1;->p:Lcb2;

    .line 50
    .line 51
    iget v0, v0, Lcb2;->R:F

    .line 52
    .line 53
    cmpg-float v1, p0, v0

    .line 54
    .line 55
    if-nez v1, :cond_0

    .line 56
    .line 57
    invoke-virtual {p1}, Lxy1;->v()I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    invoke-virtual {p2}, Lxy1;->v()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-static {p0, p1}, Lnt1;->l(II)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    :goto_0
    return p0

    .line 75
    :pswitch_2
    check-cast p1, Lms1;

    .line 76
    .line 77
    check-cast p2, Lms1;

    .line 78
    .line 79
    iget p0, p1, Lks1;->o:I

    .line 80
    .line 81
    iget p1, p1, Lks1;->n:I

    .line 82
    .line 83
    sub-int/2addr p0, p1

    .line 84
    iget p1, p2, Lks1;->o:I

    .line 85
    .line 86
    iget p2, p2, Lks1;->n:I

    .line 87
    .line 88
    sub-int/2addr p1, p2

    .line 89
    sub-int/2addr p0, p1

    .line 90
    return p0

    .line 91
    :pswitch_3
    check-cast p1, Lzt1;

    .line 92
    .line 93
    check-cast p2, Lzt1;

    .line 94
    .line 95
    iget p0, p1, Lzt1;->b:I

    .line 96
    .line 97
    iget p1, p2, Lzt1;->b:I

    .line 98
    .line 99
    invoke-static {p0, p1}, Lnt1;->l(II)I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    return p0

    .line 104
    :pswitch_4
    check-cast p1, [B

    .line 105
    .line 106
    check-cast p2, [B

    .line 107
    .line 108
    array-length p0, p1

    .line 109
    array-length v1, p2

    .line 110
    if-eq p0, v1, :cond_1

    .line 111
    .line 112
    array-length p0, p1

    .line 113
    array-length p1, p2

    .line 114
    sub-int v0, p0, p1

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_1
    move p0, v0

    .line 118
    :goto_1
    array-length v1, p1

    .line 119
    if-ge p0, v1, :cond_3

    .line 120
    .line 121
    aget-byte v1, p1, p0

    .line 122
    .line 123
    aget-byte v2, p2, p0

    .line 124
    .line 125
    if-eq v1, v2, :cond_2

    .line 126
    .line 127
    sub-int v0, v1, v2

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_2
    add-int/lit8 p0, p0, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    :goto_2
    return v0

    .line 134
    :pswitch_5
    check-cast p1, Ljava/io/File;

    .line 135
    .line 136
    check-cast p2, Ljava/io/File;

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    sget p1, Lok0;->f:I

    .line 143
    .line 144
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    return p0

    .line 161
    :pswitch_6
    check-cast p1, Ljava/io/File;

    .line 162
    .line 163
    check-cast p2, Ljava/io/File;

    .line 164
    .line 165
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    return p0

    .line 178
    :pswitch_7
    check-cast p1, Ljava/io/File;

    .line 179
    .line 180
    check-cast p2, Ljava/io/File;

    .line 181
    .line 182
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    .line 183
    .line 184
    .line 185
    move-result-wide v0

    .line 186
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 187
    .line 188
    .line 189
    move-result-wide p0

    .line 190
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    return p0

    .line 195
    :pswitch_8
    check-cast p1, Lty2;

    .line 196
    .line 197
    check-cast p2, Lty2;

    .line 198
    .line 199
    iget p0, p2, Lty2;->a:I

    .line 200
    .line 201
    iget p1, p1, Lty2;->a:I

    .line 202
    .line 203
    invoke-static {p0, p1}, Lnt1;->l(II)I

    .line 204
    .line 205
    .line 206
    move-result p0

    .line 207
    return p0

    .line 208
    nop

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

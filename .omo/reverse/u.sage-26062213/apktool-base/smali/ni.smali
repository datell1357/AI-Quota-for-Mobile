.class public final Lni;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ly41;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lni;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ler2;Lo23;)Lz41;
    .locals 5

    .line 1
    iget p0, p0, Lni;->a:I

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x2

    .line 6
    const-string v2, "android_asset"

    .line 7
    .line 8
    const-string v3, "file"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    packed-switch p0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p1, La84;

    .line 15
    .line 16
    iget-object p0, p1, La84;->c:Ljava/lang/String;

    .line 17
    .line 18
    const-string p3, "android.resource"

    .line 19
    .line 20
    invoke-static {p0, p3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v4, Loi;

    .line 28
    .line 29
    const/4 p0, 0x5

    .line 30
    invoke-direct {v4, p1, p2, p0}, Loi;-><init>(La84;Ler2;I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-object v4

    .line 34
    :pswitch_0
    check-cast p1, La84;

    .line 35
    .line 36
    iget-object p0, p1, La84;->c:Ljava/lang/String;

    .line 37
    .line 38
    const-string p3, "jar:file"

    .line 39
    .line 40
    invoke-static {p0, p3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance v4, Loi;

    .line 48
    .line 49
    const/4 p0, 0x4

    .line 50
    invoke-direct {v4, p1, p2, p0}, Loi;-><init>(La84;Ler2;I)V

    .line 51
    .line 52
    .line 53
    :goto_1
    return-object v4

    .line 54
    :pswitch_1
    check-cast p1, La84;

    .line 55
    .line 56
    iget-object p0, p1, La84;->c:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz p0, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_4

    .line 65
    .line 66
    :cond_2
    iget-object p0, p1, La84;->e:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz p0, :cond_4

    .line 69
    .line 70
    sget-object p0, Lo94;->a:[Landroid/graphics/Bitmap$Config;

    .line 71
    .line 72
    iget-object p0, p1, La84;->c:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {p0, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_3

    .line 79
    .line 80
    invoke-static {p1}, Lkt4;->M(La84;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {p0, v2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_3

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    new-instance v4, Loi;

    .line 96
    .line 97
    const/4 p0, 0x3

    .line 98
    invoke-direct {v4, p1, p2, p0}, Loi;-><init>(La84;Ler2;I)V

    .line 99
    .line 100
    .line 101
    :cond_4
    :goto_2
    return-object v4

    .line 102
    :pswitch_2
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 103
    .line 104
    new-instance p0, Lwz;

    .line 105
    .line 106
    invoke-direct {p0, p1, p2, v1}, Lwz;-><init>(Ljava/lang/Object;Ler2;I)V

    .line 107
    .line 108
    .line 109
    return-object p0

    .line 110
    :pswitch_3
    check-cast p1, La84;

    .line 111
    .line 112
    iget-object p0, p1, La84;->c:Ljava/lang/String;

    .line 113
    .line 114
    const-string p3, "data"

    .line 115
    .line 116
    invoke-static {p0, p3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    if-nez p0, :cond_5

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_5
    new-instance v4, Loi;

    .line 124
    .line 125
    invoke-direct {v4, p1, p2, v1}, Loi;-><init>(La84;Ler2;I)V

    .line 126
    .line 127
    .line 128
    :goto_3
    return-object v4

    .line 129
    :pswitch_4
    check-cast p1, La84;

    .line 130
    .line 131
    iget-object p0, p1, La84;->c:Ljava/lang/String;

    .line 132
    .line 133
    const-string p3, "content"

    .line 134
    .line 135
    invoke-static {p0, p3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    if-nez p0, :cond_6

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_6
    new-instance v4, Loi;

    .line 143
    .line 144
    invoke-direct {v4, p1, p2, v0}, Loi;-><init>(La84;Ler2;I)V

    .line 145
    .line 146
    .line 147
    :goto_4
    return-object v4

    .line 148
    :pswitch_5
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 149
    .line 150
    new-instance p0, Lwz;

    .line 151
    .line 152
    invoke-direct {p0, p1, p2, v0}, Lwz;-><init>(Ljava/lang/Object;Ler2;I)V

    .line 153
    .line 154
    .line 155
    return-object p0

    .line 156
    :pswitch_6
    check-cast p1, [B

    .line 157
    .line 158
    new-instance p0, Lwz;

    .line 159
    .line 160
    invoke-direct {p0, p1, p2, p3}, Lwz;-><init>(Ljava/lang/Object;Ler2;I)V

    .line 161
    .line 162
    .line 163
    return-object p0

    .line 164
    :pswitch_7
    check-cast p1, Landroid/graphics/Bitmap;

    .line 165
    .line 166
    new-instance p0, Ljw;

    .line 167
    .line 168
    invoke-direct {p0, p1}, Ljw;-><init>(Landroid/graphics/Bitmap;)V

    .line 169
    .line 170
    .line 171
    return-object p0

    .line 172
    :pswitch_8
    check-cast p1, La84;

    .line 173
    .line 174
    sget-object p0, Lo94;->a:[Landroid/graphics/Bitmap$Config;

    .line 175
    .line 176
    iget-object p0, p1, La84;->c:Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {p0, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    if-eqz p0, :cond_7

    .line 183
    .line 184
    invoke-static {p1}, Lkt4;->M(La84;)Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-static {p0}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-static {p0, v2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    if-eqz p0, :cond_7

    .line 197
    .line 198
    new-instance v4, Loi;

    .line 199
    .line 200
    invoke-direct {v4, p1, p2, p3}, Loi;-><init>(La84;Ler2;I)V

    .line 201
    .line 202
    .line 203
    :cond_7
    return-object v4

    .line 204
    nop

    .line 205
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

.class public final Lhs3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final synthetic a:Liw;

.field public final synthetic b:Ls33;


# direct methods
.method public constructor <init>(Liw;Ls33;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhs3;->a:Liw;

    .line 5
    .line 6
    iput-object p2, p0, Lhs3;->b:Ls33;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 7

    .line 1
    invoke-static {p2}, Lfx2;->i(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/util/Size;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object p2, p0, Lhs3;->a:Liw;

    .line 14
    .line 15
    iget-object p3, p2, Liw;->b:Ler2;

    .line 16
    .line 17
    iget-object v2, p3, Ler2;->b:Lln3;

    .line 18
    .line 19
    iget-object v3, p3, Ler2;->c:Lrd3;

    .line 20
    .line 21
    sget-object v4, Llo1;->b:Li3;

    .line 22
    .line 23
    invoke-static {p3, v4}, Lk30;->x(Ler2;Li3;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    check-cast p3, Lln3;

    .line 28
    .line 29
    invoke-static {v0, v1, v2, v3, p3}, Lc75;->r(IILln3;Lrd3;Lln3;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    const/16 p3, 0x20

    .line 34
    .line 35
    shr-long v5, v2, p3

    .line 36
    .line 37
    long-to-int p3, v5

    .line 38
    const-wide v5, 0xffffffffL

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    and-long/2addr v2, v5

    .line 44
    long-to-int v3, v2

    .line 45
    const/4 v6, 0x1

    .line 46
    if-lez v0, :cond_3

    .line 47
    .line 48
    if-lez v1, :cond_3

    .line 49
    .line 50
    if-ne v0, p3, :cond_0

    .line 51
    .line 52
    if-eq v1, v3, :cond_3

    .line 53
    .line 54
    :cond_0
    iget-object v2, p2, Liw;->b:Ler2;

    .line 55
    .line 56
    move-object v5, v4

    .line 57
    iget-object v4, v2, Ler2;->c:Lrd3;

    .line 58
    .line 59
    invoke-static {v2, v5}, Lk30;->x(Ler2;Li3;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    move-object v5, v2

    .line 64
    check-cast v5, Lln3;

    .line 65
    .line 66
    move v2, p3

    .line 67
    invoke-static/range {v0 .. v5}, Lc75;->s(IIIILrd3;Lln3;)D

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 72
    .line 73
    cmpg-double p3, v2, v4

    .line 74
    .line 75
    if-gez p3, :cond_1

    .line 76
    .line 77
    move p3, v6

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    const/4 p3, 0x0

    .line 80
    :goto_0
    iget-object p0, p0, Lhs3;->b:Ls33;

    .line 81
    .line 82
    iput-boolean p3, p0, Ls33;->n:Z

    .line 83
    .line 84
    if-nez p3, :cond_2

    .line 85
    .line 86
    iget-object p0, p2, Liw;->b:Ler2;

    .line 87
    .line 88
    iget-object p0, p0, Ler2;->d:Lcx2;

    .line 89
    .line 90
    sget-object p3, Lcx2;->n:Lcx2;

    .line 91
    .line 92
    if-ne p0, p3, :cond_3

    .line 93
    .line 94
    :cond_2
    int-to-double v4, v0

    .line 95
    mul-double/2addr v4, v2

    .line 96
    invoke-static {v4, v5}, Lis0;->U(D)I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    int-to-double v0, v1

    .line 101
    mul-double/2addr v2, v0

    .line 102
    invoke-static {v2, v3}, Lis0;->U(D)I

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    invoke-static {p1, p0, p3}, Lfx2;->p(Landroid/graphics/ImageDecoder;II)V

    .line 107
    .line 108
    .line 109
    :cond_3
    new-instance p0, Les3;

    .line 110
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-static {p1, p0}, Lfx2;->q(Landroid/graphics/ImageDecoder;Les3;)V

    .line 115
    .line 116
    .line 117
    iget-object p0, p2, Liw;->b:Ler2;

    .line 118
    .line 119
    invoke-static {p0}, Lno1;->a(Ler2;)Landroid/graphics/Bitmap$Config;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-static {p2}, Ltv4;->D(Landroid/graphics/Bitmap$Config;)Z

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    if-eqz p2, :cond_4

    .line 128
    .line 129
    const/4 p2, 0x3

    .line 130
    goto :goto_1

    .line 131
    :cond_4
    move p2, v6

    .line 132
    :goto_1
    invoke-static {p1, p2}, Lfx2;->o(Landroid/graphics/ImageDecoder;I)V

    .line 133
    .line 134
    .line 135
    sget-object p2, Lno1;->g:Li3;

    .line 136
    .line 137
    invoke-static {p0, p2}, Lk30;->x(Ler2;Li3;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    check-cast p2, Ljava/lang/Boolean;

    .line 142
    .line 143
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    xor-int/2addr p2, v6

    .line 148
    invoke-static {p1, p2}, Lfx2;->z(Landroid/graphics/ImageDecoder;I)V

    .line 149
    .line 150
    .line 151
    sget-object p2, Lno1;->c:Li3;

    .line 152
    .line 153
    invoke-static {p0, p2}, Lk30;->x(Ler2;Li3;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    invoke-static {p3}, Ld51;->d(Ljava/lang/Object;)Landroid/graphics/ColorSpace;

    .line 158
    .line 159
    .line 160
    move-result-object p3

    .line 161
    if-eqz p3, :cond_5

    .line 162
    .line 163
    invoke-static {p0, p2}, Lk30;->x(Ler2;Li3;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-static {p2}, Ld51;->d(Ljava/lang/Object;)Landroid/graphics/ColorSpace;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-static {p1, p2}, Lfx2;->r(Landroid/graphics/ImageDecoder;Landroid/graphics/ColorSpace;)V

    .line 172
    .line 173
    .line 174
    :cond_5
    sget-object p2, Lno1;->d:Li3;

    .line 175
    .line 176
    invoke-static {p0, p2}, Lk30;->x(Ler2;Li3;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    check-cast p0, Ljava/lang/Boolean;

    .line 181
    .line 182
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    xor-int/2addr p0, v6

    .line 187
    invoke-static {p1, p0}, Lfx2;->s(Landroid/graphics/ImageDecoder;Z)V

    .line 188
    .line 189
    .line 190
    return-void
.end method

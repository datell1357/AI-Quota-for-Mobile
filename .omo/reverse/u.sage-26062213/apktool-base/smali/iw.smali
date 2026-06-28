.class public final Liw;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic a:I

.field public final b:Ler2;

.field public final c:Lvh3;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/graphics/ImageDecoder$Source;Ljava/lang/AutoCloseable;Ler2;Lvh3;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Liw;->a:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Liw;->d:Ljava/lang/Object;

    .line 18
    iput-object p2, p0, Liw;->e:Ljava/lang/Object;

    .line 19
    iput-object p3, p0, Liw;->b:Ler2;

    .line 20
    iput-object p4, p0, Liw;->c:Lvh3;

    return-void
.end method

.method public constructor <init>(Lpo1;Ler2;Lvh3;Lv31;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Liw;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Liw;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Liw;->b:Ler2;

    .line 10
    .line 11
    iput-object p3, p0, Liw;->c:Lvh3;

    .line 12
    .line 13
    iput-object p4, p0, Liw;->e:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lfh0;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Liw;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Liw;->c:Lvh3;

    .line 4
    .line 5
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    sget-object v3, Lri0;->n:Lri0;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/high16 v5, -0x80000000

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    instance-of v0, p1, Lgs3;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    move-object v0, p1

    .line 21
    check-cast v0, Lgs3;

    .line 22
    .line 23
    iget v7, v0, Lgs3;->t:I

    .line 24
    .line 25
    and-int v8, v7, v5

    .line 26
    .line 27
    if-eqz v8, :cond_0

    .line 28
    .line 29
    sub-int/2addr v7, v5

    .line 30
    iput v7, v0, Lgs3;->t:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Lgs3;

    .line 34
    .line 35
    invoke-direct {v0, p0, p1}, Lgs3;-><init>(Liw;Lfh0;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object p1, v0, Lgs3;->r:Ljava/lang/Object;

    .line 39
    .line 40
    iget v5, v0, Lgs3;->t:I

    .line 41
    .line 42
    if-eqz v5, :cond_2

    .line 43
    .line 44
    if-ne v5, v4, :cond_1

    .line 45
    .line 46
    iget-object v1, v0, Lgs3;->q:Lvh3;

    .line 47
    .line 48
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-static {v2}, Lk21;->n(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    move-object v3, v6

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iput-object v1, v0, Lgs3;->q:Lvh3;

    .line 61
    .line 62
    iput v4, v0, Lgs3;->t:I

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Luh3;->a(Lfh0;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-ne p1, v3, :cond_3

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    :goto_1
    :try_start_0
    iget-object p1, p0, Liw;->e:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Ljava/lang/AutoCloseable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    :try_start_1
    new-instance v0, Ls33;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    iget-object v2, p0, Liw;->d:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v2, Landroid/graphics/ImageDecoder$Source;

    .line 83
    .line 84
    new-instance v3, Lhs3;

    .line 85
    .line 86
    invoke-direct {v3, p0, v0}, Lhs3;-><init>(Liw;Ls33;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v2, v3}, Lfx2;->a(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    new-instance v3, Ltn0;

    .line 94
    .line 95
    new-instance v2, Lkw;

    .line 96
    .line 97
    invoke-direct {v2, p0}, Lkw;-><init>(Landroid/graphics/Bitmap;)V

    .line 98
    .line 99
    .line 100
    iget-boolean p0, v0, Ls33;->n:Z

    .line 101
    .line 102
    invoke-direct {v3, v2, p0}, Ltn0;-><init>(Lao1;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    .line 104
    .line 105
    :try_start_2
    invoke-static {p1, v6}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Luh3;->d()V

    .line 109
    .line 110
    .line 111
    :goto_2
    return-object v3

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    goto :goto_3

    .line 114
    :catchall_1
    move-exception p0

    .line 115
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 116
    :catchall_2
    move-exception v0

    .line 117
    :try_start_4
    invoke-static {p1, p0}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    :goto_3
    invoke-virtual {v1}, Luh3;->d()V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :pswitch_0
    instance-of v0, p1, Lhw;

    .line 126
    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    move-object v0, p1

    .line 130
    check-cast v0, Lhw;

    .line 131
    .line 132
    iget v7, v0, Lhw;->t:I

    .line 133
    .line 134
    and-int v8, v7, v5

    .line 135
    .line 136
    if-eqz v8, :cond_4

    .line 137
    .line 138
    sub-int/2addr v7, v5

    .line 139
    iput v7, v0, Lhw;->t:I

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_4
    new-instance v0, Lhw;

    .line 143
    .line 144
    invoke-direct {v0, p0, p1}, Lhw;-><init>(Liw;Lfh0;)V

    .line 145
    .line 146
    .line 147
    :goto_4
    iget-object p1, v0, Lhw;->r:Ljava/lang/Object;

    .line 148
    .line 149
    iget v5, v0, Lhw;->t:I

    .line 150
    .line 151
    const/4 v7, 0x2

    .line 152
    if-eqz v5, :cond_7

    .line 153
    .line 154
    if-eq v5, v4, :cond_6

    .line 155
    .line 156
    if-ne v5, v7, :cond_5

    .line 157
    .line 158
    iget-object p0, v0, Lhw;->q:Lvh3;

    .line 159
    .line 160
    :try_start_5
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 161
    .line 162
    .line 163
    goto :goto_6

    .line 164
    :catchall_3
    move-exception p1

    .line 165
    goto :goto_a

    .line 166
    :cond_5
    invoke-static {v2}, Lk21;->n(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    move-object v3, v6

    .line 170
    goto :goto_7

    .line 171
    :cond_6
    iget-object v1, v0, Lhw;->q:Lvh3;

    .line 172
    .line 173
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_7
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    iput-object v1, v0, Lhw;->q:Lvh3;

    .line 181
    .line 182
    iput v4, v0, Lhw;->t:I

    .line 183
    .line 184
    invoke-virtual {v1, v0}, Luh3;->a(Lfh0;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    if-ne p1, v3, :cond_8

    .line 189
    .line 190
    goto :goto_7

    .line 191
    :cond_8
    :goto_5
    :try_start_6
    new-instance p1, Lcc;

    .line 192
    .line 193
    const/4 v2, 0x4

    .line 194
    invoke-direct {p1, v2, p0}, Lcc;-><init>(ILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    iput-object v1, v0, Lhw;->q:Lvh3;

    .line 198
    .line 199
    iput v7, v0, Lhw;->t:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 200
    .line 201
    :try_start_7
    sget-object p0, Ld01;->n:Ld01;

    .line 202
    .line 203
    new-instance v4, Lp4;

    .line 204
    .line 205
    invoke-direct {v4, p1, v6, v2}, Lp4;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 206
    .line 207
    .line 208
    invoke-static {p0, v4, v0}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 212
    if-ne p1, v3, :cond_9

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_9
    move-object p0, v1

    .line 216
    :goto_6
    :try_start_8
    move-object v3, p1

    .line 217
    check-cast v3, Ltn0;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 218
    .line 219
    invoke-virtual {p0}, Luh3;->d()V

    .line 220
    .line 221
    .line 222
    :goto_7
    return-object v3

    .line 223
    :goto_8
    move-object p1, p0

    .line 224
    goto :goto_9

    .line 225
    :catchall_4
    move-exception p0

    .line 226
    goto :goto_8

    .line 227
    :goto_9
    move-object p0, v1

    .line 228
    goto :goto_a

    .line 229
    :catchall_5
    move-exception p1

    .line 230
    goto :goto_9

    .line 231
    :goto_a
    invoke-virtual {p0}, Luh3;->d()V

    .line 232
    .line 233
    .line 234
    throw p1

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

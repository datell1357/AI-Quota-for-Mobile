.class public final Lzm0;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public t:Ljava/lang/Object;

.field public final synthetic u:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ldh0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lzm0;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Lzm0;->u:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lzm0;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object p0, p0, Lzm0;->u:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Ldh0;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Lzm0;

    .line 13
    .line 14
    check-cast p0, Lj51;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v0, p0, p1, v2}, Lzm0;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lzm0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_0
    new-instance v0, Lzm0;

    .line 26
    .line 27
    check-cast p0, Lfn0;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {v0, p0, p1, v2}, Lzm0;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lzm0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lzm0;->r:I

    .line 2
    .line 3
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 4
    .line 5
    sget-object v2, Lri0;->n:Lri0;

    .line 6
    .line 7
    iget-object v3, p0, Lzm0;->u:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast v3, Lj51;

    .line 16
    .line 17
    iget v0, p0, Lzm0;->s:I

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    if-eq v0, v4, :cond_1

    .line 22
    .line 23
    if-ne v0, v5, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Lzm0;->t:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Ljava/io/FileInputStream;

    .line 28
    .line 29
    :try_start_0
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_3

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_0
    invoke-static {v1}, Lk21;->n(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    move-object v2, v6

    .line 40
    goto/16 :goto_6

    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lzm0;->t:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Ljava/io/FileInputStream;

    .line 45
    .line 46
    :try_start_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_1
    move-exception p1

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :try_start_2
    new-instance v0, Ljava/io/FileInputStream;

    .line 56
    .line 57
    iget-object p1, v3, Lj51;->a:Ljava/io/File;

    .line 58
    .line 59
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 60
    .line 61
    .line 62
    :try_start_3
    iget-object p1, v3, Lj51;->b:Loi3;

    .line 63
    .line 64
    iput-object v0, p0, Lzm0;->t:Ljava/lang/Object;

    .line 65
    .line 66
    iput v4, p0, Lzm0;->s:I

    .line 67
    .line 68
    invoke-interface {p1, v0}, Loi3;->k(Ljava/io/FileInputStream;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    if-ne p1, v2, :cond_3

    .line 73
    .line 74
    goto :goto_6

    .line 75
    :cond_3
    :goto_0
    :try_start_4
    invoke-static {v0, v6}, Lfl4;->j(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 76
    .line 77
    .line 78
    :goto_1
    move-object v2, p1

    .line 79
    goto :goto_6

    .line 80
    :goto_2
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 81
    :catchall_2
    move-exception v1

    .line 82
    :try_start_6
    invoke-static {v0, p1}, Lfl4;->j(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw v1
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    .line 86
    :catch_0
    iget-object p1, v3, Lj51;->a:Ljava/io/File;

    .line 87
    .line 88
    iget-object v0, v3, Lj51;->b:Loi3;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_6

    .line 95
    .line 96
    :try_start_7
    new-instance p1, Ljava/io/FileInputStream;

    .line 97
    .line 98
    iget-object v1, v3, Lj51;->a:Ljava/io/File;

    .line 99
    .line 100
    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 101
    .line 102
    .line 103
    :try_start_8
    iput-object p1, p0, Lzm0;->t:Ljava/lang/Object;

    .line 104
    .line 105
    iput v5, p0, Lzm0;->s:I

    .line 106
    .line 107
    invoke-interface {v0, p1}, Loi3;->k(Ljava/io/FileInputStream;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 111
    if-ne p0, v2, :cond_4

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_4
    move-object v7, p1

    .line 115
    move-object p1, p0

    .line 116
    move-object p0, v7

    .line 117
    :goto_3
    :try_start_9
    invoke-static {p0, v6}, Lfl4;->j(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :catch_1
    move-exception p0

    .line 122
    goto :goto_5

    .line 123
    :catchall_3
    move-exception p0

    .line 124
    move-object v7, p1

    .line 125
    move-object p1, p0

    .line 126
    move-object p0, v7

    .line 127
    :goto_4
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 128
    :catchall_4
    move-exception v0

    .line 129
    :try_start_b
    invoke-static {p0, p1}, Lfl4;->j(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 133
    :goto_5
    instance-of p1, p0, Ljava/io/FileNotFoundException;

    .line 134
    .line 135
    if-eqz p1, :cond_5

    .line 136
    .line 137
    iget-object p1, v3, Lj51;->a:Ljava/io/File;

    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p0, Ljava/io/FileNotFoundException;

    .line 144
    .line 145
    invoke-static {p1, p0}, Lmt1;->a0(Ljava/lang/String;Ljava/io/FileNotFoundException;)Ljava/lang/Exception;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    :cond_5
    throw p0

    .line 150
    :cond_6
    invoke-interface {v0}, Loi3;->c()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    move-object v2, p0

    .line 155
    :goto_6
    return-object v2

    .line 156
    :pswitch_0
    check-cast v3, Lfn0;

    .line 157
    .line 158
    iget v0, p0, Lzm0;->s:I

    .line 159
    .line 160
    if-eqz v0, :cond_9

    .line 161
    .line 162
    if-eq v0, v4, :cond_8

    .line 163
    .line 164
    if-ne v0, v5, :cond_7

    .line 165
    .line 166
    iget-object p0, p0, Lzm0;->t:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast p0, Ljava/lang/Throwable;

    .line 169
    .line 170
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    goto :goto_9

    .line 174
    :cond_7
    invoke-static {v1}, Lk21;->n(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    move-object v2, v6

    .line 178
    goto :goto_b

    .line 179
    :cond_8
    :try_start_c
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 180
    .line 181
    .line 182
    goto :goto_7

    .line 183
    :catchall_5
    move-exception p1

    .line 184
    goto :goto_8

    .line 185
    :cond_9
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    :try_start_d
    iput v4, p0, Lzm0;->s:I

    .line 189
    .line 190
    invoke-static {v3, v4, p0}, Lfn0;->h(Lfn0;ZLfh0;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    if-ne p1, v2, :cond_a

    .line 195
    .line 196
    goto :goto_b

    .line 197
    :cond_a
    :goto_7
    check-cast p1, Lsr3;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 198
    .line 199
    goto :goto_a

    .line 200
    :goto_8
    invoke-virtual {v3}, Lfn0;->i()Lvs1;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iput-object p1, p0, Lzm0;->t:Ljava/lang/Object;

    .line 205
    .line 206
    iput v5, p0, Lzm0;->s:I

    .line 207
    .line 208
    invoke-interface {v0, p0}, Lvs1;->b(Lfh0;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    if-ne p0, v2, :cond_b

    .line 213
    .line 214
    goto :goto_b

    .line 215
    :cond_b
    move-object v7, p1

    .line 216
    move-object p1, p0

    .line 217
    move-object p0, v7

    .line 218
    :goto_9
    check-cast p1, Ljava/lang/Number;

    .line 219
    .line 220
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    new-instance v0, Lx13;

    .line 225
    .line 226
    invoke-direct {v0, p0, p1}, Lx13;-><init>(Ljava/lang/Throwable;I)V

    .line 227
    .line 228
    .line 229
    move-object p1, v0

    .line 230
    :goto_a
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 231
    .line 232
    new-instance v2, Ljs2;

    .line 233
    .line 234
    invoke-direct {v2, p1, p0}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    :goto_b
    return-object v2

    .line 238
    nop

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

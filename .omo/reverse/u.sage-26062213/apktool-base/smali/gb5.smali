.class public final synthetic Lgb5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lze1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lgb5;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Lgb5;->o:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lgb5;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lgb5;->o:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lyc5;

    .line 10
    .line 11
    check-cast p1, Lt95;

    .line 12
    .line 13
    new-instance v0, Lpc4;

    .line 14
    .line 15
    const/16 v2, 0x19

    .line 16
    .line 17
    invoke-direct {v0, v2}, Lpc4;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 38
    .line 39
    .line 40
    :try_start_0
    sget-object v3, Lyc5;->j:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    iget-object v4, p0, Lyc5;->d:Lcu3;

    .line 44
    .line 45
    invoke-interface {v4}, Lcu3;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lgd5;

    .line 50
    .line 51
    iget-object v5, p0, Lyc5;->g:Landroid/net/Uri;

    .line 52
    .line 53
    invoke-virtual {p1}, Lt95;->t()Lm95;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    new-instance v7, Lpc4;

    .line 58
    .line 59
    invoke-direct {v7, v6}, Lpc4;-><init>(Lsm4;)V

    .line 60
    .line 61
    .line 62
    filled-new-array {v0}, [Lpc4;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    iput-object v6, v7, Lpc4;->p:Ljava/lang/Object;

    .line 67
    .line 68
    invoke-virtual {v4, v5, v7}, Lgd5;->a(Landroid/net/Uri;Lfd5;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lt95;->t()Lm95;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    iput-object v4, p0, Lyc5;->h:Lm95;

    .line 76
    .line 77
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 78
    :try_start_2
    sget-object v3, Lyc5;->k:Ljava/lang/Object;

    .line 79
    .line 80
    monitor-enter v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    :try_start_3
    iget-object v4, p0, Lyc5;->d:Lcu3;

    .line 82
    .line 83
    invoke-interface {v4}, Lcu3;->get()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Lgd5;

    .line 88
    .line 89
    iget-object p0, p0, Lyc5;->i:Landroid/net/Uri;

    .line 90
    .line 91
    invoke-virtual {p1}, Lt95;->u()Ln95;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    new-instance v6, Lpc4;

    .line 96
    .line 97
    invoke-direct {v6, v5}, Lpc4;-><init>(Lsm4;)V

    .line 98
    .line 99
    .line 100
    filled-new-array {v0}, [Lpc4;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, v6, Lpc4;->p:Ljava/lang/Object;

    .line 105
    .line 106
    invoke-virtual {v4, p0, v6}, Lgd5;->a(Landroid/net/Uri;Lfd5;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lt95;->u()Ln95;

    .line 110
    .line 111
    .line 112
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 114
    .line 115
    .line 116
    return-object v1

    .line 117
    :catchall_0
    move-exception p0

    .line 118
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    :try_start_5
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 120
    :catchall_1
    move-exception p0

    .line 121
    goto :goto_1

    .line 122
    :catch_0
    move-exception p0

    .line 123
    goto :goto_0

    .line 124
    :catchall_2
    move-exception p0

    .line 125
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 126
    :try_start_7
    throw p0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 127
    :goto_0
    :try_start_8
    new-instance p1, Ljava/lang/RuntimeException;

    .line 128
    .line 129
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 133
    :goto_1
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 134
    .line 135
    .line 136
    throw p0

    .line 137
    :pswitch_0
    check-cast p1, Laa5;

    .line 138
    .line 139
    sget-object v0, Ldc5;->a:Loe5;

    .line 140
    .line 141
    iget-object p0, p0, Lgb5;->o:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast p0, Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {}, Lw95;->u()Lw95;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p1, p0, v0}, Laa5;->t(Ljava/lang/String;Lw95;)Lw95;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lrn4;->k()Lpn4;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Lv95;

    .line 158
    .line 159
    iget-object v1, v0, Lpn4;->o:Lrn4;

    .line 160
    .line 161
    check-cast v1, Lw95;

    .line 162
    .line 163
    invoke-virtual {v1}, Lw95;->t()Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    const-string v2, ""

    .line 172
    .line 173
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-nez v1, :cond_0

    .line 178
    .line 179
    invoke-virtual {v0}, Lpn4;->b()V

    .line 180
    .line 181
    .line 182
    iget-object v1, v0, Lpn4;->o:Lrn4;

    .line 183
    .line 184
    check-cast v1, Lw95;

    .line 185
    .line 186
    invoke-virtual {v1, v2}, Lw95;->v(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    :cond_0
    invoke-virtual {p1}, Lrn4;->k()Lpn4;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Ly95;

    .line 194
    .line 195
    invoke-virtual {v0}, Lpn4;->b()V

    .line 196
    .line 197
    .line 198
    iget-object v1, v0, Lpn4;->o:Lrn4;

    .line 199
    .line 200
    check-cast v1, Lw95;

    .line 201
    .line 202
    invoke-virtual {v1, v2}, Lw95;->w(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Lpn4;->d()Lrn4;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    check-cast v0, Lw95;

    .line 210
    .line 211
    invoke-virtual {p1}, Lpn4;->b()V

    .line 212
    .line 213
    .line 214
    iget-object v1, p1, Lpn4;->o:Lrn4;

    .line 215
    .line 216
    check-cast v1, Laa5;

    .line 217
    .line 218
    invoke-virtual {v1}, Laa5;->v()Llo4;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v1, p0, v0}, Llo4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1}, Lpn4;->d()Lrn4;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    check-cast p0, Laa5;

    .line 230
    .line 231
    return-object p0

    .line 232
    :pswitch_1
    iget-object p0, p0, Lgb5;->o:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast p0, Lqb5;

    .line 235
    .line 236
    check-cast p1, Ljava/lang/Throwable;

    .line 237
    .line 238
    iget-object p0, p0, Lqb5;->c:Ljava/lang/String;

    .line 239
    .line 240
    const-string v0, "Failed to commit to updated flags for "

    .line 241
    .line 242
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    const-string v2, "FlagStore"

    .line 247
    .line 248
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    invoke-static {v2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    .line 254
    .line 255
    return-object v1

    .line 256
    nop

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Lu65;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic p:Lm75;


# direct methods
.method public constructor <init>(Lm75;Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0

    .line 1
    iput p3, p0, Lu65;->n:I

    .line 2
    .line 3
    packed-switch p3, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lu65;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lu65;->p:Lm75;

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lu65;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    .line 22
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lu65;->p:Lm75;

    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Lu65;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 32
    .line 33
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lu65;->p:Lm75;

    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p2, p0, Lu65;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 43
    .line 44
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lu65;->p:Lm75;

    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p2, p0, Lu65;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 54
    .line 55
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lu65;->p:Lm75;

    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Lm75;Ljava/util/concurrent/atomic/AtomicReference;IZ)V
    .locals 0

    .line 61
    iput p3, p0, Lu65;->n:I

    iput-object p1, p0, Lu65;->p:Lm75;

    iput-object p2, p0, Lu65;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lu65;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lu65;->p:Lm75;

    .line 5
    .line 6
    iget-object v1, v1, Lib0;->a:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lr45;

    .line 9
    .line 10
    iget-object v2, v1, Lr45;->d:Lds4;

    .line 11
    .line 12
    invoke-virtual {v1}, Lr45;->q()Lg15;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lg15;->B()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sget-object v3, Le05;->e0:Ld05;

    .line 21
    .line 22
    invoke-virtual {v2, v1, v3}, Lds4;->F(Ljava/lang/String;Ld05;)D

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_1
    iget-object p0, p0, Lu65;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :catchall_1
    move-exception v1

    .line 43
    iget-object p0, p0, Lu65;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lu65;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lu65;->p:Lm75;

    .line 8
    .line 9
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lr45;

    .line 12
    .line 13
    invoke-virtual {v0}, Lr45;->o()Lo95;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    sget-object v0, Lv75;->r:Lv75;

    .line 18
    .line 19
    filled-new-array {v0}, [Lv75;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lwa5;->Y([Lv75;)Lwa5;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    iget-object v4, p0, Lu65;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 28
    .line 29
    invoke-virtual {v3}, Laz4;->v()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Lj05;->w()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v1}, Lo95;->L(Z)Lvc5;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    new-instance v2, Le30;

    .line 40
    .line 41
    const/16 v7, 0xb

    .line 42
    .line 43
    const/4 v8, 0x0

    .line 44
    invoke-direct/range {v2 .. v8}, Le30;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v2}, Lo95;->J(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lu65;->p:Lm75;

    .line 52
    .line 53
    iget-object v2, v0, Lib0;->a:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v2, Lr45;

    .line 56
    .line 57
    iget-object v2, v2, Lr45;->e:Lf35;

    .line 58
    .line 59
    invoke-static {v2}, Lr45;->j(Lib0;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, v2, Lf35;->n:Lqd1;

    .line 63
    .line 64
    invoke-virtual {v2}, Lqd1;->J()Landroid/os/Bundle;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Lr45;

    .line 71
    .line 72
    invoke-virtual {v0}, Lr45;->o()Lo95;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    iget-object v5, p0, Lu65;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 77
    .line 78
    invoke-virtual {v4}, Laz4;->v()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Lj05;->w()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v1}, Lo95;->L(Z)Lvc5;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    new-instance v3, Le30;

    .line 89
    .line 90
    const/16 v8, 0xa

    .line 91
    .line 92
    const/4 v9, 0x0

    .line 93
    invoke-direct/range {v3 .. v9}, Le30;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v3}, Lo95;->J(Ljava/lang/Runnable;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :pswitch_1
    invoke-direct {p0}, Lu65;->a()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :pswitch_2
    iget-object v1, p0, Lu65;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 105
    .line 106
    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Lu65;->p:Lm75;

    .line 108
    .line 109
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v0, Lr45;

    .line 112
    .line 113
    iget-object v2, v0, Lr45;->d:Lds4;

    .line 114
    .line 115
    invoke-virtual {v0}, Lr45;->q()Lg15;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lg15;->B()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    sget-object v3, Le05;->d0:Ld05;

    .line 124
    .line 125
    invoke-virtual {v2, v0, v3}, Lds4;->E(Ljava/lang/String;Ld05;)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    .line 135
    .line 136
    :try_start_1
    iget-object p0, p0, Lu65;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 137
    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 139
    .line 140
    .line 141
    monitor-exit v1

    .line 142
    return-void

    .line 143
    :catchall_0
    move-exception v0

    .line 144
    move-object p0, v0

    .line 145
    goto :goto_0

    .line 146
    :catchall_1
    move-exception v0

    .line 147
    iget-object p0, p0, Lu65;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 148
    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 150
    .line 151
    .line 152
    throw v0

    .line 153
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    throw p0

    .line 155
    :pswitch_3
    iget-object v1, p0, Lu65;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 156
    .line 157
    monitor-enter v1

    .line 158
    :try_start_2
    iget-object v0, p0, Lu65;->p:Lm75;

    .line 159
    .line 160
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v0, Lr45;

    .line 163
    .line 164
    iget-object v2, v0, Lr45;->d:Lds4;

    .line 165
    .line 166
    invoke-virtual {v0}, Lr45;->q()Lg15;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lg15;->B()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    sget-object v3, Le05;->c0:Ld05;

    .line 175
    .line 176
    invoke-virtual {v2, v0, v3}, Lds4;->D(Ljava/lang/String;Ld05;)J

    .line 177
    .line 178
    .line 179
    move-result-wide v2

    .line 180
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 185
    .line 186
    .line 187
    :try_start_3
    iget-object p0, p0, Lu65;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 188
    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 190
    .line 191
    .line 192
    monitor-exit v1

    .line 193
    return-void

    .line 194
    :catchall_2
    move-exception v0

    .line 195
    move-object p0, v0

    .line 196
    goto :goto_1

    .line 197
    :catchall_3
    move-exception v0

    .line 198
    iget-object p0, p0, Lu65;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 199
    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 201
    .line 202
    .line 203
    throw v0

    .line 204
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 205
    throw p0

    .line 206
    :pswitch_4
    iget-object v1, p0, Lu65;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 207
    .line 208
    monitor-enter v1

    .line 209
    :try_start_4
    iget-object v0, p0, Lu65;->p:Lm75;

    .line 210
    .line 211
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v0, Lr45;

    .line 214
    .line 215
    iget-object v2, v0, Lr45;->d:Lds4;

    .line 216
    .line 217
    invoke-virtual {v0}, Lr45;->q()Lg15;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lg15;->B()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    sget-object v3, Le05;->b0:Ld05;

    .line 226
    .line 227
    invoke-virtual {v2, v0, v3}, Lds4;->C(Ljava/lang/String;Ld05;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 232
    .line 233
    .line 234
    :try_start_5
    iget-object p0, p0, Lu65;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 235
    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 237
    .line 238
    .line 239
    monitor-exit v1

    .line 240
    return-void

    .line 241
    :catchall_4
    move-exception v0

    .line 242
    move-object p0, v0

    .line 243
    goto :goto_2

    .line 244
    :catchall_5
    move-exception v0

    .line 245
    iget-object p0, p0, Lu65;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 246
    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 248
    .line 249
    .line 250
    throw v0

    .line 251
    :goto_2
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 252
    throw p0

    .line 253
    :pswitch_5
    iget-object v1, p0, Lu65;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 254
    .line 255
    monitor-enter v1

    .line 256
    :try_start_6
    iget-object v0, p0, Lu65;->p:Lm75;

    .line 257
    .line 258
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v0, Lr45;

    .line 261
    .line 262
    iget-object v2, v0, Lr45;->d:Lds4;

    .line 263
    .line 264
    invoke-virtual {v0}, Lr45;->q()Lg15;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lg15;->B()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    sget-object v3, Le05;->a0:Ld05;

    .line 273
    .line 274
    invoke-virtual {v2, v0, v3}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 283
    .line 284
    .line 285
    :try_start_7
    iget-object p0, p0, Lu65;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 286
    .line 287
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 288
    .line 289
    .line 290
    monitor-exit v1

    .line 291
    return-void

    .line 292
    :catchall_6
    move-exception v0

    .line 293
    move-object p0, v0

    .line 294
    goto :goto_3

    .line 295
    :catchall_7
    move-exception v0

    .line 296
    iget-object p0, p0, Lu65;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 297
    .line 298
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 299
    .line 300
    .line 301
    throw v0

    .line 302
    :goto_3
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 303
    throw p0

    .line 304
    nop

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

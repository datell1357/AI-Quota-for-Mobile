.class public final synthetic Lk55;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Lvc5;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lo55;Lvc5;Landroid/os/Bundle;Lv05;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk55;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lk55;->q:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lk55;->p:Lvc5;

    .line 10
    .line 11
    iput-object p3, p0, Lk55;->r:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Lk55;->s:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p5, p0, Lk55;->o:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lo95;Ljava/lang/String;Ljava/lang/String;Lvc5;Lmw4;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lk55;->n:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lk55;->o:Ljava/lang/String;

    iput-object p3, p0, Lk55;->q:Ljava/lang/Object;

    iput-object p4, p0, Lk55;->p:Lvc5;

    iput-object p5, p0, Lk55;->r:Ljava/lang/Object;

    iput-object p1, p0, Lk55;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo95;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Lvc5;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lk55;->n:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lk55;->q:Ljava/lang/Object;

    iput-object p3, p0, Lk55;->o:Ljava/lang/String;

    iput-object p4, p0, Lk55;->r:Ljava/lang/Object;

    iput-object p5, p0, Lk55;->p:Lvc5;

    iput-object p1, p0, Lk55;->s:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lk55;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lk55;->r:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lmw4;

    .line 9
    .line 10
    iget-object v1, p0, Lk55;->q:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/lang/String;

    .line 13
    .line 14
    iget-object v2, p0, Lk55;->o:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v3, p0, Lk55;->s:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, Lo95;

    .line 19
    .line 20
    new-instance v4, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    :try_start_0
    iget-object v5, v3, Lo95;->d:Ln05;

    .line 26
    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    iget-object p0, v3, Lib0;->a:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p0, Lr45;

    .line 32
    .line 33
    iget-object v5, p0, Lr45;->f:La25;

    .line 34
    .line 35
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 36
    .line 37
    .line 38
    iget-object v5, v5, La25;->f:Lx15;

    .line 39
    .line 40
    const-string v6, "Failed to get conditional properties; not connected to service"

    .line 41
    .line 42
    invoke-virtual {v5, v2, v1, v6}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lr45;->i:Lac5;

    .line 46
    .line 47
    :goto_0
    invoke-static {p0}, Lr45;->j(Lib0;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0, v4}, Lac5;->n0(Lmw4;Ljava/util/ArrayList;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_0
    :try_start_1
    iget-object p0, p0, Lk55;->p:Lvc5;

    .line 55
    .line 56
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    invoke-interface {v5, v2, v1, p0}, Ln05;->g(Ljava/lang/String;Ljava/lang/String;Lvc5;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Lac5;->o0(Ljava/util/List;)Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v3}, Lo95;->I()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_3

    .line 73
    :catch_0
    move-exception p0

    .line 74
    :try_start_2
    iget-object v5, v3, Lib0;->a:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v5, Lr45;

    .line 77
    .line 78
    iget-object v5, v5, Lr45;->f:La25;

    .line 79
    .line 80
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 81
    .line 82
    .line 83
    iget-object v5, v5, La25;->f:Lx15;

    .line 84
    .line 85
    const-string v6, "Failed to get conditional properties; remote exception"

    .line 86
    .line 87
    invoke-virtual {v5, v6, v2, v1, p0}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    .line 89
    .line 90
    :goto_1
    iget-object p0, v3, Lib0;->a:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p0, Lr45;

    .line 93
    .line 94
    iget-object p0, p0, Lr45;->i:Lac5;

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :goto_2
    return-void

    .line 98
    :goto_3
    iget-object v1, v3, Lib0;->a:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v1, Lr45;

    .line 101
    .line 102
    iget-object v1, v1, Lr45;->i:Lac5;

    .line 103
    .line 104
    invoke-static {v1}, Lr45;->j(Lib0;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v0, v4}, Lac5;->n0(Lmw4;Ljava/util/ArrayList;)V

    .line 108
    .line 109
    .line 110
    throw p0

    .line 111
    :pswitch_0
    iget-object v0, p0, Lk55;->q:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 114
    .line 115
    monitor-enter v0

    .line 116
    const/4 v1, 0x0

    .line 117
    :try_start_3
    iget-object v2, p0, Lk55;->s:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v2, Lo95;

    .line 120
    .line 121
    iget-object v3, v2, Lo95;->d:Ln05;

    .line 122
    .line 123
    if-nez v3, :cond_1

    .line 124
    .line 125
    iget-object v2, v2, Lib0;->a:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v2, Lr45;

    .line 128
    .line 129
    iget-object v2, v2, Lr45;->f:La25;

    .line 130
    .line 131
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 132
    .line 133
    .line 134
    iget-object v2, v2, La25;->f:Lx15;

    .line 135
    .line 136
    const-string v3, "(legacy) Failed to get conditional properties; not connected to service"

    .line 137
    .line 138
    iget-object v4, p0, Lk55;->o:Ljava/lang/String;

    .line 139
    .line 140
    iget-object v5, p0, Lk55;->r:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v5, Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v2, v3, v1, v4, v5}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 148
    .line 149
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 150
    .line 151
    .line 152
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 153
    .line 154
    .line 155
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 156
    goto :goto_8

    .line 157
    :catchall_1
    move-exception p0

    .line 158
    goto :goto_a

    .line 159
    :catchall_2
    move-exception v1

    .line 160
    goto :goto_9

    .line 161
    :catch_1
    move-exception v2

    .line 162
    goto :goto_6

    .line 163
    :cond_1
    :try_start_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-eqz v4, :cond_2

    .line 168
    .line 169
    iget-object v4, p0, Lk55;->p:Lvc5;

    .line 170
    .line 171
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    iget-object v5, p0, Lk55;->o:Ljava/lang/String;

    .line 175
    .line 176
    iget-object v6, p0, Lk55;->r:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v6, Ljava/lang/String;

    .line 179
    .line 180
    invoke-interface {v3, v5, v6, v4}, Ln05;->g(Ljava/lang/String;Ljava/lang/String;Lvc5;)Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_2
    iget-object v4, p0, Lk55;->o:Ljava/lang/String;

    .line 189
    .line 190
    iget-object v5, p0, Lk55;->r:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v5, Ljava/lang/String;

    .line 193
    .line 194
    invoke-interface {v3, v1, v4, v5}, Ln05;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    :goto_4
    invoke-virtual {v2}, Lo95;->I()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 202
    .line 203
    .line 204
    :try_start_6
    iget-object p0, p0, Lk55;->q:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 207
    .line 208
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 209
    .line 210
    .line 211
    goto :goto_7

    .line 212
    :goto_6
    :try_start_7
    iget-object v3, p0, Lk55;->s:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v3, Lo95;

    .line 215
    .line 216
    iget-object v3, v3, Lib0;->a:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v3, Lr45;

    .line 219
    .line 220
    iget-object v3, v3, Lr45;->f:La25;

    .line 221
    .line 222
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 223
    .line 224
    .line 225
    iget-object v3, v3, La25;->f:Lx15;

    .line 226
    .line 227
    const-string v4, "(legacy) Failed to get conditional properties; remote exception"

    .line 228
    .line 229
    iget-object v5, p0, Lk55;->o:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v3, v4, v1, v5, v2}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    iget-object v1, p0, Lk55;->q:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 237
    .line 238
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 239
    .line 240
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 241
    .line 242
    .line 243
    :try_start_8
    iget-object p0, p0, Lk55;->q:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :goto_7
    monitor-exit v0

    .line 249
    :goto_8
    return-void

    .line 250
    :goto_9
    iget-object p0, p0, Lk55;->q:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 253
    .line 254
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 255
    .line 256
    .line 257
    throw v1

    .line 258
    :goto_a
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 259
    throw p0

    .line 260
    :pswitch_1
    iget-object v0, p0, Lk55;->q:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v0, Lo55;

    .line 263
    .line 264
    iget-object v1, p0, Lk55;->p:Lvc5;

    .line 265
    .line 266
    iget-object v2, p0, Lk55;->r:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v2, Landroid/os/Bundle;

    .line 269
    .line 270
    iget-object v3, p0, Lk55;->s:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v3, Lv05;

    .line 273
    .line 274
    iget-object p0, p0, Lk55;->o:Ljava/lang/String;

    .line 275
    .line 276
    iget-object v0, v0, Lo55;->c:Lpb5;

    .line 277
    .line 278
    invoke-virtual {v0}, Lpb5;->V()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v2, v1}, Lpb5;->d0(Landroid/os/Bundle;Lvc5;)Ljava/util/List;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    :try_start_9
    invoke-interface {v3, v1}, Lv05;->z(Ljava/util/List;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    .line 286
    .line 287
    .line 288
    goto :goto_b

    .line 289
    :catch_2
    move-exception v1

    .line 290
    invoke-virtual {v0}, Lpb5;->c()La25;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    iget-object v0, v0, La25;->f:Lx15;

    .line 295
    .line 296
    const-string v2, "Failed to return trigger URIs for app"

    .line 297
    .line 298
    invoke-virtual {v0, p0, v1, v2}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    :goto_b
    return-void

    .line 302
    nop

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

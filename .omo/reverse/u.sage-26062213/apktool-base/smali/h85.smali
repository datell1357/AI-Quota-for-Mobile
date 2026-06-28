.class public final Lh85;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Lvc5;

.field public final synthetic r:Z

.field public final synthetic s:Lo95;

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lo95;Ljava/lang/String;Ljava/lang/String;Lvc5;ZLmw4;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lh85;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lh85;->o:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p3, p0, Lh85;->p:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p4, p0, Lh85;->q:Lvc5;

    .line 12
    .line 13
    iput-boolean p5, p0, Lh85;->r:Z

    .line 14
    .line 15
    iput-object p6, p0, Lh85;->t:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p1, p0, Lh85;->s:Lo95;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lo95;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Lvc5;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lh85;->n:I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh85;->t:Ljava/lang/Object;

    iput-object p3, p0, Lh85;->o:Ljava/lang/String;

    iput-object p4, p0, Lh85;->p:Ljava/lang/String;

    iput-object p5, p0, Lh85;->q:Lvc5;

    iput-boolean p6, p0, Lh85;->r:Z

    iput-object p1, p0, Lh85;->s:Lo95;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lh85;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lh85;->t:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    iget-object v2, p0, Lh85;->s:Lo95;

    .line 13
    .line 14
    iget-object v3, v2, Lo95;->d:Ln05;

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    iget-object v2, v2, Lib0;->a:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Lr45;

    .line 21
    .line 22
    iget-object v2, v2, Lr45;->f:La25;

    .line 23
    .line 24
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, v2, La25;->f:Lx15;

    .line 28
    .line 29
    const-string v3, "(legacy) Failed to get user properties; not connected to service"

    .line 30
    .line 31
    iget-object v4, p0, Lh85;->o:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v5, p0, Lh85;->p:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v2, v3, v1, v4, v5}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    .line 42
    .line 43
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 44
    .line 45
    .line 46
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    goto :goto_4

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_6

    .line 50
    :catchall_1
    move-exception v1

    .line 51
    goto :goto_5

    .line 52
    :catch_0
    move-exception v2

    .line 53
    goto :goto_2

    .line 54
    :cond_0
    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    iget-object v4, p0, Lh85;->q:Lvc5;

    .line 61
    .line 62
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    iget-object v5, p0, Lh85;->o:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v6, p0, Lh85;->p:Ljava/lang/String;

    .line 68
    .line 69
    iget-boolean v7, p0, Lh85;->r:Z

    .line 70
    .line 71
    invoke-interface {v3, v5, v6, v7, v4}, Ln05;->k(Ljava/lang/String;Ljava/lang/String;ZLvc5;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    iget-object v4, p0, Lh85;->o:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v5, p0, Lh85;->p:Ljava/lang/String;

    .line 82
    .line 83
    iget-boolean v6, p0, Lh85;->r:Z

    .line 84
    .line 85
    invoke-interface {v3, v1, v4, v5, v6}, Ln05;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-virtual {v2}, Lo95;->I()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 93
    .line 94
    .line 95
    :try_start_3
    iget-object p0, p0, Lh85;->t:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 98
    .line 99
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :goto_2
    :try_start_4
    iget-object v3, p0, Lh85;->s:Lo95;

    .line 104
    .line 105
    iget-object v3, v3, Lib0;->a:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v3, Lr45;

    .line 108
    .line 109
    iget-object v3, v3, Lr45;->f:La25;

    .line 110
    .line 111
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 112
    .line 113
    .line 114
    iget-object v3, v3, La25;->f:Lx15;

    .line 115
    .line 116
    const-string v4, "(legacy) Failed to get user properties; remote exception"

    .line 117
    .line 118
    iget-object v5, p0, Lh85;->o:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v3, v4, v1, v5, v2}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lh85;->t:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 126
    .line 127
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 130
    .line 131
    .line 132
    :try_start_5
    iget-object p0, p0, Lh85;->t:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :goto_3
    monitor-exit v0

    .line 138
    :goto_4
    return-void

    .line 139
    :goto_5
    iget-object p0, p0, Lh85;->t:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 144
    .line 145
    .line 146
    throw v1

    .line 147
    :goto_6
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 148
    throw p0

    .line 149
    :pswitch_0
    iget-object v0, p0, Lh85;->p:Ljava/lang/String;

    .line 150
    .line 151
    iget-object v1, p0, Lh85;->o:Ljava/lang/String;

    .line 152
    .line 153
    iget-object v2, p0, Lh85;->t:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v2, Lmw4;

    .line 156
    .line 157
    iget-object v3, p0, Lh85;->s:Lo95;

    .line 158
    .line 159
    new-instance v4, Landroid/os/Bundle;

    .line 160
    .line 161
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 162
    .line 163
    .line 164
    :try_start_6
    iget-object v5, v3, Lo95;->d:Ln05;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 165
    .line 166
    iget-object v6, v3, Lib0;->a:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v6, Lr45;

    .line 169
    .line 170
    if-nez v5, :cond_2

    .line 171
    .line 172
    :try_start_7
    iget-object p0, v6, Lr45;->f:La25;

    .line 173
    .line 174
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 175
    .line 176
    .line 177
    iget-object p0, p0, La25;->f:Lx15;

    .line 178
    .line 179
    const-string v5, "Failed to get user properties; not connected to service"

    .line 180
    .line 181
    invoke-virtual {p0, v1, v0, v5}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 182
    .line 183
    .line 184
    iget-object p0, v6, Lr45;->i:Lac5;

    .line 185
    .line 186
    :goto_7
    invoke-static {p0}, Lr45;->j(Lib0;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v2, v4}, Lac5;->m0(Lmw4;Landroid/os/Bundle;)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_b

    .line 193
    .line 194
    :catchall_2
    move-exception p0

    .line 195
    goto/16 :goto_c

    .line 196
    .line 197
    :catch_1
    move-exception p0

    .line 198
    goto :goto_a

    .line 199
    :cond_2
    :try_start_8
    iget-object v7, p0, Lh85;->q:Lvc5;

    .line 200
    .line 201
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    iget-boolean p0, p0, Lh85;->r:Z

    .line 205
    .line 206
    invoke-interface {v5, v1, v0, p0, v7}, Ln05;->k(Ljava/lang/String;Ljava/lang/String;ZLvc5;)Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    new-instance v0, Landroid/os/Bundle;

    .line 211
    .line 212
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 213
    .line 214
    .line 215
    if-nez p0, :cond_3

    .line 216
    .line 217
    goto :goto_9

    .line 218
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    :cond_4
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    if-eqz v5, :cond_7

    .line 227
    .line 228
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    check-cast v5, Lvb5;

    .line 233
    .line 234
    iget-object v7, v5, Lvb5;->r:Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 235
    .line 236
    iget-object v8, v5, Lvb5;->o:Ljava/lang/String;

    .line 237
    .line 238
    if-eqz v7, :cond_5

    .line 239
    .line 240
    :try_start_9
    invoke-virtual {v0, v8, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_5
    iget-object v7, v5, Lvb5;->q:Ljava/lang/Long;

    .line 245
    .line 246
    if-eqz v7, :cond_6

    .line 247
    .line 248
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 249
    .line 250
    .line 251
    move-result-wide v9

    .line 252
    invoke-virtual {v0, v8, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 253
    .line 254
    .line 255
    goto :goto_8

    .line 256
    :cond_6
    iget-object v5, v5, Lvb5;->t:Ljava/lang/Double;

    .line 257
    .line 258
    if-eqz v5, :cond_4

    .line 259
    .line 260
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 261
    .line 262
    .line 263
    move-result-wide v9

    .line 264
    invoke-virtual {v0, v8, v9, v10}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 265
    .line 266
    .line 267
    goto :goto_8

    .line 268
    :cond_7
    :goto_9
    :try_start_a
    invoke-virtual {v3}, Lo95;->I()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 269
    .line 270
    .line 271
    iget-object p0, v6, Lr45;->i:Lac5;

    .line 272
    .line 273
    invoke-static {p0}, Lr45;->j(Lib0;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0, v2, v0}, Lac5;->m0(Lmw4;Landroid/os/Bundle;)V

    .line 277
    .line 278
    .line 279
    goto :goto_b

    .line 280
    :catchall_3
    move-exception p0

    .line 281
    move-object v4, v0

    .line 282
    goto :goto_c

    .line 283
    :catch_2
    move-exception p0

    .line 284
    move-object v4, v0

    .line 285
    :goto_a
    :try_start_b
    iget-object v0, v3, Lib0;->a:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v0, Lr45;

    .line 288
    .line 289
    iget-object v0, v0, Lr45;->f:La25;

    .line 290
    .line 291
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 292
    .line 293
    .line 294
    iget-object v0, v0, La25;->f:Lx15;

    .line 295
    .line 296
    const-string v5, "Failed to get user properties; remote exception"

    .line 297
    .line 298
    invoke-virtual {v0, v1, p0, v5}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 299
    .line 300
    .line 301
    iget-object p0, v3, Lib0;->a:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast p0, Lr45;

    .line 304
    .line 305
    iget-object p0, p0, Lr45;->i:Lac5;

    .line 306
    .line 307
    goto :goto_7

    .line 308
    :goto_b
    return-void

    .line 309
    :goto_c
    iget-object v0, v3, Lib0;->a:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v0, Lr45;

    .line 312
    .line 313
    iget-object v0, v0, Lr45;->i:Lac5;

    .line 314
    .line 315
    invoke-static {v0}, Lr45;->j(Lib0;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v2, v4}, Lac5;->m0(Lmw4;Landroid/os/Bundle;)V

    .line 319
    .line 320
    .line 321
    throw p0

    .line 322
    nop

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

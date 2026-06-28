.class public final Lz95;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:J

.field public final synthetic p:Lia5;


# direct methods
.method public constructor <init>(Lia5;JI)V
    .locals 0

    .line 1
    iput p4, p0, Lz95;->n:I

    .line 2
    .line 3
    packed-switch p4, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-wide p2, p0, Lz95;->o:J

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lz95;->p:Lia5;

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-wide p2, p0, Lz95;->o:J

    .line 21
    .line 22
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lz95;->p:Lia5;

    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lz95;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lz95;->p:Lia5;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Laz4;->v()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lia5;->z()V

    .line 12
    .line 13
    .line 14
    iget-object v0, v1, Lib0;->a:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lr45;

    .line 17
    .line 18
    iget-object v2, v0, Lr45;->f:La25;

    .line 19
    .line 20
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, v2, La25;->n:Lx15;

    .line 24
    .line 25
    const-string v3, "Activity paused, time"

    .line 26
    .line 27
    iget-wide v8, p0, Lz95;->o:J

    .line 28
    .line 29
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v2, p0, v3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v5, v1, Lia5;->g:Lpc4;

    .line 37
    .line 38
    new-instance v4, Lca5;

    .line 39
    .line 40
    iget-object p0, v5, Lpc4;->p:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lia5;

    .line 43
    .line 44
    iget-object v2, p0, Lib0;->a:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, Lr45;

    .line 47
    .line 48
    iget-object v2, v2, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 49
    .line 50
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v6

    .line 54
    invoke-direct/range {v4 .. v9}, Lca5;-><init>(Lpc4;JJ)V

    .line 55
    .line 56
    .line 57
    iput-object v4, v5, Lpc4;->o:Ljava/lang/Object;

    .line 58
    .line 59
    iget-object p0, p0, Lia5;->c:Lrk4;

    .line 60
    .line 61
    const-wide/16 v2, 0x7d0

    .line 62
    .line 63
    invoke-virtual {p0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    .line 65
    .line 66
    iget-object p0, v0, Lr45;->d:Lds4;

    .line 67
    .line 68
    invoke-virtual {p0}, Lds4;->K()Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_0

    .line 73
    .line 74
    iget-object p0, v1, Lia5;->f:Lx23;

    .line 75
    .line 76
    iget-object p0, p0, Lx23;->p:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p0, Lea5;

    .line 79
    .line 80
    invoke-virtual {p0}, Let4;->c()V

    .line 81
    .line 82
    .line 83
    :cond_0
    return-void

    .line 84
    :pswitch_0
    iget-object v0, v1, Lia5;->f:Lx23;

    .line 85
    .line 86
    invoke-virtual {v1}, Laz4;->v()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lia5;->z()V

    .line 90
    .line 91
    .line 92
    iget-object v2, v1, Lib0;->a:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v2, Lr45;

    .line 95
    .line 96
    iget-object v3, v2, Lr45;->f:La25;

    .line 97
    .line 98
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 99
    .line 100
    .line 101
    iget-object v3, v3, La25;->n:Lx15;

    .line 102
    .line 103
    const-string v4, "Activity resumed, time"

    .line 104
    .line 105
    iget-wide v5, p0, Lz95;->o:J

    .line 106
    .line 107
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {v3, p0, v4}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object p0, v2, Lr45;->d:Lds4;

    .line 115
    .line 116
    sget-object v3, Le05;->S0:Ld05;

    .line 117
    .line 118
    const/4 v4, 0x0

    .line 119
    invoke-virtual {p0, v4, v3}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_2

    .line 124
    .line 125
    invoke-virtual {p0}, Lds4;->K()Z

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-nez p0, :cond_1

    .line 130
    .line 131
    iget-boolean p0, v1, Lia5;->d:Z

    .line 132
    .line 133
    if-eqz p0, :cond_4

    .line 134
    .line 135
    :cond_1
    iget-object p0, v0, Lx23;->q:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast p0, Lia5;

    .line 138
    .line 139
    invoke-virtual {p0}, Laz4;->v()V

    .line 140
    .line 141
    .line 142
    iget-object p0, v0, Lx23;->p:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p0, Lea5;

    .line 145
    .line 146
    invoke-virtual {p0}, Let4;->c()V

    .line 147
    .line 148
    .line 149
    iput-wide v5, v0, Lx23;->n:J

    .line 150
    .line 151
    iput-wide v5, v0, Lx23;->o:J

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p0}, Lds4;->K()Z

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    if-nez p0, :cond_3

    .line 159
    .line 160
    iget-object p0, v2, Lr45;->e:Lf35;

    .line 161
    .line 162
    invoke-static {p0}, Lr45;->j(Lib0;)V

    .line 163
    .line 164
    .line 165
    iget-object p0, p0, Lf35;->s:Lu25;

    .line 166
    .line 167
    invoke-virtual {p0}, Lu25;->a()Z

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    if-eqz p0, :cond_4

    .line 172
    .line 173
    :cond_3
    iget-object p0, v0, Lx23;->q:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast p0, Lia5;

    .line 176
    .line 177
    invoke-virtual {p0}, Laz4;->v()V

    .line 178
    .line 179
    .line 180
    iget-object p0, v0, Lx23;->p:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast p0, Lea5;

    .line 183
    .line 184
    invoke-virtual {p0}, Let4;->c()V

    .line 185
    .line 186
    .line 187
    iput-wide v5, v0, Lx23;->n:J

    .line 188
    .line 189
    iput-wide v5, v0, Lx23;->o:J

    .line 190
    .line 191
    :cond_4
    :goto_0
    iget-object p0, v1, Lia5;->g:Lpc4;

    .line 192
    .line 193
    iget-object v0, p0, Lpc4;->p:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v0, Lia5;

    .line 196
    .line 197
    invoke-virtual {v0}, Laz4;->v()V

    .line 198
    .line 199
    .line 200
    iget-object p0, p0, Lpc4;->o:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast p0, Lca5;

    .line 203
    .line 204
    if-eqz p0, :cond_5

    .line 205
    .line 206
    iget-object v2, v0, Lia5;->c:Lrk4;

    .line 207
    .line 208
    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 209
    .line 210
    .line 211
    :cond_5
    iget-object p0, v0, Lib0;->a:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast p0, Lr45;

    .line 214
    .line 215
    iget-object p0, p0, Lr45;->e:Lf35;

    .line 216
    .line 217
    invoke-static {p0}, Lr45;->j(Lib0;)V

    .line 218
    .line 219
    .line 220
    iget-object p0, p0, Lf35;->s:Lu25;

    .line 221
    .line 222
    const/4 v2, 0x0

    .line 223
    invoke-virtual {p0, v2}, Lu25;->b(Z)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Laz4;->v()V

    .line 227
    .line 228
    .line 229
    iput-boolean v2, v0, Lia5;->d:Z

    .line 230
    .line 231
    iget-object p0, v1, Lia5;->e:Lgt4;

    .line 232
    .line 233
    iget-object v0, p0, Lgt4;->o:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v0, Lia5;

    .line 236
    .line 237
    invoke-virtual {v0}, Laz4;->v()V

    .line 238
    .line 239
    .line 240
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v0, Lr45;

    .line 243
    .line 244
    invoke-virtual {v0}, Lr45;->a()Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    iget-object v2, v0, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 249
    .line 250
    if-nez v1, :cond_6

    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_6
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 254
    .line 255
    .line 256
    move-result-wide v5

    .line 257
    iget-object v0, v0, Lr45;->d:Lds4;

    .line 258
    .line 259
    sget-object v1, Le05;->e1:Ld05;

    .line 260
    .line 261
    invoke-virtual {v0, v4, v1}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_7

    .line 266
    .line 267
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 268
    .line 269
    .line 270
    move-result-wide v0

    .line 271
    goto :goto_1

    .line 272
    :cond_7
    const-wide/16 v0, 0x0

    .line 273
    .line 274
    :goto_1
    invoke-virtual {p0, v5, v6, v0, v1}, Lgt4;->d(JJ)V

    .line 275
    .line 276
    .line 277
    :goto_2
    return-void

    .line 278
    nop

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

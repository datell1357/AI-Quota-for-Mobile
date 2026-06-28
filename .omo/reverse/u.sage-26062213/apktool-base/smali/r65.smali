.class public final Lr65;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:J

.field public final synthetic p:Lm75;


# direct methods
.method public constructor <init>(Lm75;JI)V
    .locals 0

    .line 1
    iput p4, p0, Lr65;->n:I

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
    iput-wide p2, p0, Lr65;->o:J

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lr65;->p:Lm75;

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-wide p2, p0, Lr65;->o:J

    .line 21
    .line 22
    iput-object p1, p0, Lr65;->p:Lm75;

    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lr65;->n:I

    .line 2
    .line 3
    iget-wide v1, p0, Lr65;->o:J

    .line 4
    .line 5
    iget-object p0, p0, Lr65;->p:Lm75;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Laz4;->v()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lj05;->w()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lr45;

    .line 19
    .line 20
    iget-object v3, v0, Lr45;->f:La25;

    .line 21
    .line 22
    invoke-static {v3}, Lr45;->l(Lq55;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, v3, La25;->m:Lx15;

    .line 26
    .line 27
    const-string v4, "Resetting analytics data (FE)"

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Lx15;->a(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, v0, Lr45;->h:Lia5;

    .line 33
    .line 34
    invoke-static {v3}, Lr45;->k(Lj05;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Laz4;->v()V

    .line 38
    .line 39
    .line 40
    iget-object v4, v3, Lia5;->f:Lx23;

    .line 41
    .line 42
    iget-object v5, v4, Lx23;->p:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v5, Lea5;

    .line 45
    .line 46
    invoke-virtual {v5}, Let4;->c()V

    .line 47
    .line 48
    .line 49
    iget-object v5, v4, Lx23;->q:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v5, Lia5;

    .line 52
    .line 53
    iget-object v5, v5, Lib0;->a:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v5, Lr45;

    .line 56
    .line 57
    iget-object v5, v5, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 58
    .line 59
    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 60
    .line 61
    .line 62
    move-result-wide v5

    .line 63
    iput-wide v5, v4, Lx23;->n:J

    .line 64
    .line 65
    iput-wide v5, v4, Lx23;->o:J

    .line 66
    .line 67
    invoke-virtual {v0}, Lr45;->q()Lg15;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4}, Lg15;->A()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lr45;->a()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    xor-int/lit8 v4, v4, 0x1

    .line 79
    .line 80
    iget-object v5, v0, Lr45;->e:Lf35;

    .line 81
    .line 82
    invoke-static {v5}, Lr45;->j(Lib0;)V

    .line 83
    .line 84
    .line 85
    iget-object v6, v5, Lf35;->f:Ly25;

    .line 86
    .line 87
    invoke-virtual {v6, v1, v2}, Ly25;->b(J)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v5, Lib0;->a:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v1, Lr45;

    .line 93
    .line 94
    iget-object v2, v1, Lr45;->e:Lf35;

    .line 95
    .line 96
    invoke-static {v2}, Lr45;->j(Lib0;)V

    .line 97
    .line 98
    .line 99
    iget-object v2, v2, Lf35;->v:Lmu0;

    .line 100
    .line 101
    invoke-virtual {v2}, Lmu0;->h()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    const/4 v6, 0x0

    .line 110
    if-nez v2, :cond_0

    .line 111
    .line 112
    iget-object v2, v5, Lf35;->v:Lmu0;

    .line 113
    .line 114
    invoke-virtual {v2, v6}, Lmu0;->i(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_0
    iget-object v2, v5, Lf35;->p:Ly25;

    .line 118
    .line 119
    const-wide/16 v7, 0x0

    .line 120
    .line 121
    invoke-virtual {v2, v7, v8}, Ly25;->b(J)V

    .line 122
    .line 123
    .line 124
    iget-object v2, v5, Lf35;->q:Ly25;

    .line 125
    .line 126
    invoke-virtual {v2, v7, v8}, Ly25;->b(J)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v1, Lr45;->d:Lds4;

    .line 130
    .line 131
    invoke-virtual {v1}, Lds4;->J()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-nez v1, :cond_1

    .line 136
    .line 137
    invoke-virtual {v5, v4}, Lf35;->D(Z)V

    .line 138
    .line 139
    .line 140
    :cond_1
    iget-object v1, v5, Lf35;->w:Lmu0;

    .line 141
    .line 142
    invoke-virtual {v1, v6}, Lmu0;->i(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v5, Lf35;->x:Ly25;

    .line 146
    .line 147
    invoke-virtual {v1, v7, v8}, Ly25;->b(J)V

    .line 148
    .line 149
    .line 150
    iget-object v1, v5, Lf35;->y:Lqd1;

    .line 151
    .line 152
    invoke-virtual {v1, v6}, Lqd1;->N(Landroid/os/Bundle;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Lr45;->o()Lo95;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v1}, Laz4;->v()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Lj05;->w()V

    .line 163
    .line 164
    .line 165
    const/4 v2, 0x0

    .line 166
    invoke-virtual {v1, v2}, Lo95;->L(Z)Lvc5;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-virtual {v1}, Lo95;->H()V

    .line 171
    .line 172
    .line 173
    iget-object v6, v1, Lib0;->a:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v6, Lr45;

    .line 176
    .line 177
    invoke-virtual {v6}, Lr45;->n()Lm15;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-virtual {v6}, Lm15;->z()V

    .line 182
    .line 183
    .line 184
    new-instance v6, Lq85;

    .line 185
    .line 186
    invoke-direct {v6, v1, v5, v2}, Lq85;-><init>(Lo95;Lvc5;I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v6}, Lo95;->J(Ljava/lang/Runnable;)V

    .line 190
    .line 191
    .line 192
    invoke-static {v3}, Lr45;->k(Lj05;)V

    .line 193
    .line 194
    .line 195
    iget-object v1, v3, Lia5;->e:Lgt4;

    .line 196
    .line 197
    invoke-virtual {v1}, Lgt4;->a()V

    .line 198
    .line 199
    .line 200
    iput-boolean v4, p0, Lm75;->r:Z

    .line 201
    .line 202
    invoke-virtual {v0}, Lr45;->o()Lo95;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 207
    .line 208
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, v0}, Lo95;->z(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :pswitch_0
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast p0, Lr45;

    .line 218
    .line 219
    iget-object v0, p0, Lr45;->e:Lf35;

    .line 220
    .line 221
    invoke-static {v0}, Lr45;->j(Lib0;)V

    .line 222
    .line 223
    .line 224
    iget-object v0, v0, Lf35;->k:Ly25;

    .line 225
    .line 226
    invoke-virtual {v0, v1, v2}, Ly25;->b(J)V

    .line 227
    .line 228
    .line 229
    iget-object p0, p0, Lr45;->f:La25;

    .line 230
    .line 231
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 232
    .line 233
    .line 234
    iget-object p0, p0, La25;->m:Lx15;

    .line 235
    .line 236
    const-string v0, "Session timeout duration set"

    .line 237
    .line 238
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {p0, v1, v0}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    return-void

    .line 246
    nop

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

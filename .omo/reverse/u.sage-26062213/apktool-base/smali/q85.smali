.class public final Lq85;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lvc5;

.field public final synthetic p:Lo95;


# direct methods
.method public constructor <init>(Lo95;Lvc5;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lq85;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lq85;->o:Lvc5;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lq85;->p:Lo95;

    .line 13
    .line 14
    return-void
.end method

.method public synthetic constructor <init>(Lo95;Lvc5;I)V
    .locals 0

    .line 15
    iput p3, p0, Lq85;->n:I

    iput-object p2, p0, Lq85;->o:Lvc5;

    iput-object p1, p0, Lq85;->p:Lo95;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lq85;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lq85;->o:Lvc5;

    .line 4
    .line 5
    iget-object p0, p0, Lq85;->p:Lo95;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lo95;->d:Ln05;

    .line 11
    .line 12
    iget-object v2, p0, Lib0;->a:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Lr45;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object p0, v2, Lr45;->f:La25;

    .line 19
    .line 20
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, La25;->f:Lx15;

    .line 24
    .line 25
    const-string v0, "Failed to send consent settings to service"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lx15;->a(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Ln05;->j(Lvc5;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lo95;->I()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    iget-object v0, v2, Lr45;->f:La25;

    .line 43
    .line 44
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v0, La25;->f:Lx15;

    .line 48
    .line 49
    const-string v1, "Failed to send consent settings to the service"

    .line 50
    .line 51
    invoke-virtual {v0, p0, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p0, Lo95;->d:Ln05;

    .line 56
    .line 57
    iget-object v2, p0, Lib0;->a:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Lr45;

    .line 60
    .line 61
    if-nez v0, :cond_1

    .line 62
    .line 63
    iget-object p0, v2, Lr45;->f:La25;

    .line 64
    .line 65
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, La25;->f:Lx15;

    .line 69
    .line 70
    const-string v0, "Failed to send measurementEnabled to service"

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lx15;->a(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v1}, Ln05;->m(Lvc5;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lo95;->I()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catch_1
    move-exception p0

    .line 87
    iget-object v0, v2, Lr45;->f:La25;

    .line 88
    .line 89
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, v0, La25;->f:Lx15;

    .line 93
    .line 94
    const-string v1, "Failed to send measurementEnabled to the service"

    .line 95
    .line 96
    invoke-virtual {v0, p0, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    return-void

    .line 100
    :pswitch_1
    iget-object v0, p0, Lo95;->d:Ln05;

    .line 101
    .line 102
    iget-object v2, p0, Lib0;->a:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v2, Lr45;

    .line 105
    .line 106
    if-nez v0, :cond_2

    .line 107
    .line 108
    iget-object p0, v2, Lr45;->f:La25;

    .line 109
    .line 110
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 111
    .line 112
    .line 113
    iget-object p0, p0, La25;->i:Lx15;

    .line 114
    .line 115
    const-string v0, "Failed to send app backgrounded"

    .line 116
    .line 117
    invoke-virtual {p0, v0}, Lx15;->a(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_2
    :try_start_2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    invoke-interface {v0, v1}, Ln05;->h(Lvc5;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lo95;->I()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :catch_2
    move-exception p0

    .line 132
    iget-object v0, v2, Lr45;->f:La25;

    .line 133
    .line 134
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, v0, La25;->f:Lx15;

    .line 138
    .line 139
    const-string v1, "Failed to send app backgrounded to the service"

    .line 140
    .line 141
    invoke-virtual {v0, p0, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :goto_2
    return-void

    .line 145
    :pswitch_2
    iget-object v0, p0, Lo95;->d:Ln05;

    .line 146
    .line 147
    iget-object v2, p0, Lib0;->a:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v2, Lr45;

    .line 150
    .line 151
    if-nez v0, :cond_3

    .line 152
    .line 153
    iget-object p0, v2, Lr45;->f:La25;

    .line 154
    .line 155
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 156
    .line 157
    .line 158
    iget-object p0, p0, La25;->f:Lx15;

    .line 159
    .line 160
    const-string v0, "Discarding data. Failed to send app launch"

    .line 161
    .line 162
    invoke-virtual {p0, v0}, Lx15;->a(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_3
    :try_start_3
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    iget-object v3, v2, Lr45;->d:Lds4;

    .line 170
    .line 171
    sget-object v4, Le05;->W0:Ld05;

    .line 172
    .line 173
    const/4 v5, 0x0

    .line 174
    invoke-virtual {v3, v5, v4}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-eqz v3, :cond_4

    .line 179
    .line 180
    invoke-virtual {p0, v0, v5, v1}, Lo95;->N(Ln05;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lvc5;)V

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :catch_3
    move-exception p0

    .line 185
    goto :goto_4

    .line 186
    :cond_4
    :goto_3
    invoke-interface {v0, v1}, Ln05;->B(Lvc5;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Lr45;->n()Lm15;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-virtual {v3}, Lm15;->A()V

    .line 194
    .line 195
    .line 196
    iget-object v3, v2, Lr45;->d:Lds4;

    .line 197
    .line 198
    invoke-virtual {v3, v5, v4}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v0, v5, v1}, Lo95;->N(Ln05;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lvc5;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lo95;->I()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 205
    .line 206
    .line 207
    goto :goto_5

    .line 208
    :goto_4
    iget-object v0, v2, Lr45;->f:La25;

    .line 209
    .line 210
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, v0, La25;->f:Lx15;

    .line 214
    .line 215
    const-string v1, "Failed to send app launch to the service"

    .line 216
    .line 217
    invoke-virtual {v0, p0, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :goto_5
    return-void

    .line 221
    :pswitch_3
    iget-object v0, p0, Lo95;->d:Ln05;

    .line 222
    .line 223
    iget-object v2, p0, Lib0;->a:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v2, Lr45;

    .line 226
    .line 227
    if-nez v0, :cond_5

    .line 228
    .line 229
    iget-object p0, v2, Lr45;->f:La25;

    .line 230
    .line 231
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 232
    .line 233
    .line 234
    iget-object p0, p0, La25;->f:Lx15;

    .line 235
    .line 236
    const-string v0, "Failed to reset data on the service: not connected to service"

    .line 237
    .line 238
    invoke-virtual {p0, v0}, Lx15;->a(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    goto :goto_7

    .line 242
    :cond_5
    :try_start_4
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    invoke-interface {v0, v1}, Ln05;->A(Lvc5;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 246
    .line 247
    .line 248
    goto :goto_6

    .line 249
    :catch_4
    move-exception v0

    .line 250
    iget-object v1, v2, Lr45;->f:La25;

    .line 251
    .line 252
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 253
    .line 254
    .line 255
    iget-object v1, v1, La25;->f:Lx15;

    .line 256
    .line 257
    const-string v2, "Failed to reset data on the service: remote exception"

    .line 258
    .line 259
    invoke-virtual {v1, v0, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :goto_6
    invoke-virtual {p0}, Lo95;->I()V

    .line 263
    .line 264
    .line 265
    :goto_7
    return-void

    .line 266
    nop

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

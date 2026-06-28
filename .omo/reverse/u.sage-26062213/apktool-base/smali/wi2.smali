.class public Lwi2;
.super Llk2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llk2;"
    }
.end annotation

.annotation runtime Lkk2;
    value = "navigation"
.end annotation


# instance fields
.field public final c:Lmk2;


# direct methods
.method public constructor <init>(Lmk2;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lwi2;->c:Lmk2;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lqi2;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lwi2;->g()Lsi2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final d(Ljava/util/List;Ljj2;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lyh2;

    .line 16
    .line 17
    iget-object v1, v0, Lyh2;->o:Lqi2;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    check-cast v1, Lsi2;

    .line 23
    .line 24
    iget-object v2, v1, Lqi2;->o:Lgg;

    .line 25
    .line 26
    new-instance v3, Lw33;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v0, v0, Lyh2;->u:Lai2;

    .line 32
    .line 33
    invoke-virtual {v0}, Lai2;->a()Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, v3, Lw33;->n:Ljava/lang/Object;

    .line 38
    .line 39
    iget-object v0, v1, Lsi2;->s:Lvi2;

    .line 40
    .line 41
    iget v1, v0, Lvi2;->b:I

    .line 42
    .line 43
    iget-object v4, v0, Lvi2;->d:Ljava/lang/String;

    .line 44
    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    iget p0, v2, Lgg;->a:I

    .line 54
    .line 55
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iget-object p1, v0, Lvi2;->e:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p1, Lsi2;

    .line 65
    .line 66
    iget-object p1, p1, Lqi2;->o:Lgg;

    .line 67
    .line 68
    iget p1, p1, Lgg;->a:I

    .line 69
    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const-string p0, "the root navigation"

    .line 74
    .line 75
    :goto_1
    const-string p1, "no start destination defined via app:startDestination for "

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {p0}, Lp61;->e(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    :goto_2
    const/4 v2, 0x0

    .line 86
    if-eqz v4, :cond_3

    .line 87
    .line 88
    invoke-virtual {v0, v4, v2}, Lvi2;->o(Ljava/lang/String;Z)Lqi2;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    goto :goto_3

    .line 93
    :cond_3
    iget-object v5, v0, Lvi2;->f:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v5, Lmq3;

    .line 96
    .line 97
    invoke-virtual {v5, v1}, Lmq3;->c(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Lqi2;

    .line 102
    .line 103
    :goto_3
    if-nez v1, :cond_6

    .line 104
    .line 105
    iget-object p0, v0, Lvi2;->c:Ljava/lang/String;

    .line 106
    .line 107
    if-nez p0, :cond_5

    .line 108
    .line 109
    iget-object p0, v0, Lvi2;->d:Ljava/lang/String;

    .line 110
    .line 111
    if-nez p0, :cond_4

    .line 112
    .line 113
    iget p0, v0, Lvi2;->b:I

    .line 114
    .line 115
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    :cond_4
    iput-object p0, v0, Lvi2;->c:Ljava/lang/String;

    .line 120
    .line 121
    :cond_5
    iget-object p0, v0, Lvi2;->c:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    const-string p1, "navigation destination "

    .line 127
    .line 128
    const-string p2, " is not a direct child of this NavGraph"

    .line 129
    .line 130
    invoke-static {p1, p0, p2}, Ldi0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_6
    iget-object v0, v1, Lqi2;->o:Lgg;

    .line 139
    .line 140
    if-eqz v4, :cond_b

    .line 141
    .line 142
    iget-object v5, v0, Lgg;->e:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v5, Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-nez v5, :cond_9

    .line 151
    .line 152
    invoke-virtual {v0, v4}, Lgg;->c(Ljava/lang/String;)Lpi2;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    if-eqz v0, :cond_7

    .line 157
    .line 158
    iget-object v0, v0, Lpi2;->o:Landroid/os/Bundle;

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_7
    const/4 v0, 0x0

    .line 162
    :goto_4
    if-eqz v0, :cond_9

    .line 163
    .line 164
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-nez v4, :cond_9

    .line 169
    .line 170
    new-array v4, v2, [Ljs2;

    .line 171
    .line 172
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    check-cast v2, [Ljs2;

    .line 177
    .line 178
    invoke-static {v2}, Lqj0;->x([Ljs2;)Landroid/os/Bundle;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, v3, Lw33;->n:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v0, Landroid/os/Bundle;

    .line 188
    .line 189
    if-eqz v0, :cond_8

    .line 190
    .line 191
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 192
    .line 193
    .line 194
    :cond_8
    iput-object v2, v3, Lw33;->n:Ljava/lang/Object;

    .line 195
    .line 196
    :cond_9
    invoke-virtual {v1}, Lqi2;->d()Ljava/util/Map;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-nez v0, :cond_b

    .line 205
    .line 206
    invoke-virtual {v1}, Lqi2;->d()Ljava/util/Map;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    new-instance v2, Lc60;

    .line 211
    .line 212
    const/4 v4, 0x1

    .line 213
    invoke-direct {v2, v4, v3}, Lc60;-><init>(ILw33;)V

    .line 214
    .line 215
    .line 216
    invoke-static {v0, v2}, Lse0;->B(Ljava/util/Map;Lpe1;)Ljava/util/ArrayList;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-eqz v2, :cond_a

    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_a
    const-string p0, ". Missing required arguments ["

    .line 228
    .line 229
    const/16 p1, 0x5d

    .line 230
    .line 231
    const-string p2, "Cannot navigate to startDestination "

    .line 232
    .line 233
    invoke-static {p2, v1, p0, v0, p1}, Lp61;->n(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :cond_b
    :goto_5
    iget-object v0, p0, Lwi2;->c:Lmk2;

    .line 238
    .line 239
    iget-object v2, v1, Lqi2;->n:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v0, v2}, Lmk2;->b(Ljava/lang/String;)Llk2;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {p0}, Llk2;->b()Lei2;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    iget-object v3, v3, Lw33;->n:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v3, Landroid/os/Bundle;

    .line 252
    .line 253
    invoke-virtual {v1, v3}, Lqi2;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {v2, v1, v3}, Lei2;->b(Lqi2;Landroid/os/Bundle;)Lyh2;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-static {v1}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {v0, v1, p2}, Llk2;->d(Ljava/util/List;Ljj2;)V

    .line 266
    .line 267
    .line 268
    goto/16 :goto_0

    .line 269
    .line 270
    :cond_c
    return-void
.end method

.method public g()Lsi2;
    .locals 1

    .line 1
    new-instance v0, Lsi2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lsi2;-><init>(Lwi2;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

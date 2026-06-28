.class public final synthetic Lvu3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Lnd2;

.field public final synthetic o:Lvf2;

.field public final synthetic p:Ljl3;

.field public final synthetic q:J

.field public final synthetic r:F

.field public final synthetic s:Lfx;

.field public final synthetic t:Z

.field public final synthetic u:Lne1;

.field public final synthetic v:F

.field public final synthetic w:Lka0;


# direct methods
.method public synthetic constructor <init>(Lnd2;Lvf2;Ljl3;JFLfx;ZLne1;FLka0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvu3;->n:Lnd2;

    .line 5
    .line 6
    iput-object p2, p0, Lvu3;->o:Lvf2;

    .line 7
    .line 8
    iput-object p3, p0, Lvu3;->p:Ljl3;

    .line 9
    .line 10
    iput-wide p4, p0, Lvu3;->q:J

    .line 11
    .line 12
    iput p6, p0, Lvu3;->r:F

    .line 13
    .line 14
    iput-object p7, p0, Lvu3;->s:Lfx;

    .line 15
    .line 16
    iput-boolean p8, p0, Lvu3;->t:Z

    .line 17
    .line 18
    iput-object p9, p0, Lvu3;->u:Lne1;

    .line 19
    .line 20
    iput p10, p0, Lvu3;->v:F

    .line 21
    .line 22
    iput-object p11, p0, Lvu3;->w:Lka0;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lag1;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    and-int/lit8 v3, v2, 0x3

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    if-eq v3, v4, :cond_0

    .line 21
    .line 22
    move v3, v6

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v5

    .line 25
    :goto_0
    and-int/2addr v2, v6

    .line 26
    invoke-virtual {v1, v2, v3}, Lag1;->N(IZ)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    sget-object v2, Lat1;->a:Lck1;

    .line 33
    .line 34
    sget-object v2, Lfd2;->b:Lfd2;

    .line 35
    .line 36
    iget-object v3, v0, Lvu3;->n:Lnd2;

    .line 37
    .line 38
    invoke-interface {v3, v2}, Lnd2;->c(Lnd2;)Lnd2;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    sget-object v3, Lb93;->a:Llc0;

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lp93;

    .line 49
    .line 50
    iget-object v4, v4, Lp93;->a:Lo93;

    .line 51
    .line 52
    sget-object v4, Lkd2;->b:Lkd2;

    .line 53
    .line 54
    invoke-interface {v2, v4}, Lnd2;->c(Lnd2;)Lnd2;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    iget-wide v8, v0, Lvu3;->q:J

    .line 59
    .line 60
    iget v2, v0, Lvu3;->r:F

    .line 61
    .line 62
    invoke-static {v8, v9, v2, v1}, Lwu3;->d(JFLag1;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v9

    .line 66
    sget-object v2, Lkc0;->h:Lis3;

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Las0;

    .line 73
    .line 74
    iget v4, v0, Lvu3;->v:F

    .line 75
    .line 76
    invoke-interface {v2, v4}, Las0;->v(F)F

    .line 77
    .line 78
    .line 79
    move-result v12

    .line 80
    iget-object v8, v0, Lvu3;->p:Ljl3;

    .line 81
    .line 82
    iget-object v11, v0, Lvu3;->s:Lfx;

    .line 83
    .line 84
    invoke-static/range {v7 .. v12}, Lwu3;->c(Lnd2;Ljl3;JLfx;F)Lnd2;

    .line 85
    .line 86
    .line 87
    move-result-object v13

    .line 88
    invoke-virtual {v1, v3}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Lp93;

    .line 93
    .line 94
    iget-object v2, v2, Lp93;->a:Lo93;

    .line 95
    .line 96
    const/16 v2, 0xd7

    .line 97
    .line 98
    const/4 v3, 0x0

    .line 99
    invoke-static {v3, v8, v2}, Lb93;->a(FLjl3;I)Ln93;

    .line 100
    .line 101
    .line 102
    move-result-object v15

    .line 103
    const/16 v17, 0x0

    .line 104
    .line 105
    const/16 v19, 0x18

    .line 106
    .line 107
    iget-object v14, v0, Lvu3;->o:Lvf2;

    .line 108
    .line 109
    iget-boolean v2, v0, Lvu3;->t:Z

    .line 110
    .line 111
    iget-object v3, v0, Lvu3;->u:Lne1;

    .line 112
    .line 113
    move/from16 v16, v2

    .line 114
    .line 115
    move-object/from16 v18, v3

    .line 116
    .line 117
    invoke-static/range {v13 .. v19}, Ltv4;->m(Lnd2;Lvf2;Ln93;ZLq93;Lne1;I)Lnd2;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-static {v2}, Lmt1;->o(Lnd2;)Lnd2;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    sget-object v3, Lmj1;->o:Lcw;

    .line 126
    .line 127
    invoke-static {v3, v6}, Lqx;->d(Lcw;Z)Ldb2;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    iget-wide v7, v1, Lag1;->T:J

    .line 132
    .line 133
    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    invoke-virtual {v1}, Lag1;->l()Lhu2;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    invoke-static {v1, v2}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    sget-object v8, Llb0;->c:Lkb0;

    .line 146
    .line 147
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    sget-object v8, Lkb0;->b:Lic0;

    .line 151
    .line 152
    invoke-virtual {v1}, Lag1;->Z()V

    .line 153
    .line 154
    .line 155
    iget-boolean v9, v1, Lag1;->S:Z

    .line 156
    .line 157
    if-eqz v9, :cond_1

    .line 158
    .line 159
    invoke-virtual {v1, v8}, Lag1;->k(Lne1;)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_1
    invoke-virtual {v1}, Lag1;->j0()V

    .line 164
    .line 165
    .line 166
    :goto_1
    sget-object v8, Lkb0;->f:Lfd;

    .line 167
    .line 168
    invoke-static {v8, v1, v3}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    sget-object v3, Lkb0;->e:Lfd;

    .line 172
    .line 173
    invoke-static {v3, v1, v7}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    sget-object v4, Lkb0;->g:Lfd;

    .line 181
    .line 182
    invoke-static {v4, v1, v3}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    sget-object v3, Lkb0;->h:Ll9;

    .line 186
    .line 187
    invoke-static {v1, v3}, Lht4;->y(Lag1;Lpe1;)V

    .line 188
    .line 189
    .line 190
    sget-object v3, Lkb0;->d:Lfd;

    .line 191
    .line 192
    invoke-static {v3, v1, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    iget-object v0, v0, Lvu3;->w:Lka0;

    .line 200
    .line 201
    invoke-virtual {v0, v1, v2}, Lka0;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v6}, Lag1;->p(Z)V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_2
    invoke-virtual {v1}, Lag1;->Q()V

    .line 209
    .line 210
    .line 211
    :goto_2
    sget-object v0, Lt64;->a:Lt64;

    .line 212
    .line 213
    return-object v0
.end method

.class public final synthetic Lwj2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Lrj2;

.field public final synthetic o:Z

.field public final synthetic p:Z

.field public final synthetic q:Lyq3;

.field public final synthetic r:Ldf1;

.field public final synthetic s:Z

.field public final synthetic t:Lka0;


# direct methods
.method public synthetic constructor <init>(Lrj2;ZZLyq3;Ldf1;ZLka0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwj2;->n:Lrj2;

    .line 5
    .line 6
    iput-boolean p2, p0, Lwj2;->o:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lwj2;->p:Z

    .line 9
    .line 10
    iput-object p4, p0, Lwj2;->q:Lyq3;

    .line 11
    .line 12
    iput-object p5, p0, Lwj2;->r:Ldf1;

    .line 13
    .line 14
    iput-boolean p6, p0, Lwj2;->s:Z

    .line 15
    .line 16
    iput-object p7, p0, Lwj2;->t:Lka0;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lag1;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    and-int/lit8 v0, p2, 0x3

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    move v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v3

    .line 19
    :goto_0
    and-int/2addr p2, v2

    .line 20
    invoke-virtual {p1, p2, v0}, Lag1;->N(IZ)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_7

    .line 25
    .line 26
    iget-object p2, p0, Lwj2;->n:Lrj2;

    .line 27
    .line 28
    iget-boolean v0, p0, Lwj2;->o:Z

    .line 29
    .line 30
    iget-boolean v1, p0, Lwj2;->p:Z

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    iget-wide v4, p2, Lrj2;->f:J

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-wide v4, p2, Lrj2;->a:J

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    iget-wide v4, p2, Lrj2;->d:J

    .line 43
    .line 44
    :goto_1
    iget-object p2, p0, Lwj2;->q:Lyq3;

    .line 45
    .line 46
    invoke-static {v4, v5, p2, p1}, Len3;->a(JLyq3;Lag1;)Ltr3;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iget-object v1, p0, Lwj2;->r:Ldf1;

    .line 51
    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    iget-boolean v1, p0, Lwj2;->s:Z

    .line 55
    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    :cond_3
    const v0, -0x25d631cd

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lag1;->W(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lag1;->K()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sget-object v1, Lrb0;->a:Lbx3;

    .line 71
    .line 72
    if-ne v0, v1, :cond_4

    .line 73
    .line 74
    new-instance v0, Lz82;

    .line 75
    .line 76
    const/16 v1, 0x10

    .line 77
    .line 78
    invoke-direct {v0, v1}, Lz82;-><init>(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lag1;->g0(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    check-cast v0, Lpe1;

    .line 85
    .line 86
    sget-object v1, Ldh3;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    .line 88
    new-instance v1, La60;

    .line 89
    .line 90
    invoke-direct {v1, v0}, La60;-><init>(Lpe1;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v3}, Lag1;->p(Z)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    const v0, -0x25d62e3c

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lag1;->W(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v3}, Lag1;->p(Z)V

    .line 104
    .line 105
    .line 106
    sget-object v1, Lkd2;->b:Lkd2;

    .line 107
    .line 108
    :goto_2
    sget-object v0, Lmj1;->o:Lcw;

    .line 109
    .line 110
    invoke-static {v0, v3}, Lqx;->d(Lcw;Z)Ldb2;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-wide v3, p1, Lag1;->T:J

    .line 115
    .line 116
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    invoke-virtual {p1}, Lag1;->l()Lhu2;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-static {p1, v1}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    sget-object v5, Llb0;->c:Lkb0;

    .line 129
    .line 130
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    sget-object v5, Lkb0;->b:Lic0;

    .line 134
    .line 135
    invoke-virtual {p1}, Lag1;->Z()V

    .line 136
    .line 137
    .line 138
    iget-boolean v6, p1, Lag1;->S:Z

    .line 139
    .line 140
    if-eqz v6, :cond_6

    .line 141
    .line 142
    invoke-virtual {p1, v5}, Lag1;->k(Lne1;)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_6
    invoke-virtual {p1}, Lag1;->j0()V

    .line 147
    .line 148
    .line 149
    :goto_3
    sget-object v5, Lkb0;->f:Lfd;

    .line 150
    .line 151
    invoke-static {v5, p1, v0}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    sget-object v0, Lkb0;->e:Lfd;

    .line 155
    .line 156
    invoke-static {v0, p1, v4}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    sget-object v3, Lkb0;->g:Lfd;

    .line 164
    .line 165
    invoke-static {v3, p1, v0}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    sget-object v0, Lkb0;->h:Ll9;

    .line 169
    .line 170
    invoke-static {p1, v0}, Lht4;->y(Lag1;Lpe1;)V

    .line 171
    .line 172
    .line 173
    sget-object v0, Lkb0;->d:Lfd;

    .line 174
    .line 175
    invoke-static {v0, p1, v1}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    sget-object v0, Lbg0;->a:Llc0;

    .line 179
    .line 180
    invoke-interface {p2}, Ltr3;->getValue()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    check-cast p2, Lt70;

    .line 185
    .line 186
    iget-wide v3, p2, Lt70;->a:J

    .line 187
    .line 188
    new-instance p2, Lt70;

    .line 189
    .line 190
    invoke-direct {p2, v3, v4}, Lt70;-><init>(J)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, p2}, Llc0;->a(Ljava/lang/Object;)Lj03;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    const/16 v0, 0x8

    .line 198
    .line 199
    iget-object p0, p0, Lwj2;->t:Lka0;

    .line 200
    .line 201
    invoke-static {p2, p0, p1, v0}, Lgg4;->a(Lj03;Ldf1;Lag1;I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v2}, Lag1;->p(Z)V

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_7
    invoke-virtual {p1}, Lag1;->Q()V

    .line 209
    .line 210
    .line 211
    :goto_4
    sget-object p0, Lt64;->a:Lt64;

    .line 212
    .line 213
    return-object p0
.end method

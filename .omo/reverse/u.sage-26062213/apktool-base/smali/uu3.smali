.class public final synthetic Luu3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Lnd2;

.field public final synthetic o:Ljl3;

.field public final synthetic p:J

.field public final synthetic q:F

.field public final synthetic r:Lfx;

.field public final synthetic s:F

.field public final synthetic t:Lka0;


# direct methods
.method public synthetic constructor <init>(Lnd2;Ljl3;JFLfx;FLka0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Luu3;->n:Lnd2;

    .line 5
    .line 6
    iput-object p2, p0, Luu3;->o:Ljl3;

    .line 7
    .line 8
    iput-wide p3, p0, Luu3;->p:J

    .line 9
    .line 10
    iput p5, p0, Luu3;->q:F

    .line 11
    .line 12
    iput-object p6, p0, Luu3;->r:Lfx;

    .line 13
    .line 14
    iput p7, p0, Luu3;->s:F

    .line 15
    .line 16
    iput-object p8, p0, Luu3;->t:Lka0;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

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
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    move v0, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v2

    .line 19
    :goto_0
    and-int/2addr p2, v3

    .line 20
    invoke-virtual {p1, p2, v0}, Lag1;->N(IZ)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    sget-object v0, Lt64;->a:Lt64;

    .line 25
    .line 26
    if-eqz p2, :cond_4

    .line 27
    .line 28
    iget-wide v4, p0, Luu3;->p:J

    .line 29
    .line 30
    iget p2, p0, Luu3;->q:F

    .line 31
    .line 32
    invoke-static {v4, v5, p2, p1}, Lwu3;->d(JFLag1;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v8

    .line 36
    sget-object p2, Lkc0;->h:Lis3;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Las0;

    .line 43
    .line 44
    iget v1, p0, Luu3;->s:F

    .line 45
    .line 46
    invoke-interface {p2, v1}, Las0;->v(F)F

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    iget-object v6, p0, Luu3;->n:Lnd2;

    .line 51
    .line 52
    iget-object v7, p0, Luu3;->o:Ljl3;

    .line 53
    .line 54
    iget-object v10, p0, Luu3;->r:Lfx;

    .line 55
    .line 56
    invoke-static/range {v6 .. v11}, Lwu3;->c(Lnd2;Ljl3;JLfx;F)Lnd2;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1}, Lag1;->K()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    sget-object v4, Lrb0;->a:Lbx3;

    .line 65
    .line 66
    if-ne v1, v4, :cond_1

    .line 67
    .line 68
    new-instance v1, Ljd3;

    .line 69
    .line 70
    const/16 v5, 0xa

    .line 71
    .line 72
    invoke-direct {v1, v5}, Ljd3;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v1}, Lag1;->g0(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    check-cast v1, Lpe1;

    .line 79
    .line 80
    sget-object v5, Ldh3;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 81
    .line 82
    new-instance v5, Lgh;

    .line 83
    .line 84
    invoke-direct {v5, v1, v2}, Lgh;-><init>(Lpe1;Z)V

    .line 85
    .line 86
    .line 87
    invoke-interface {p2, v5}, Lnd2;->c(Lnd2;)Lnd2;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p1}, Lag1;->K()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-ne v1, v4, :cond_2

    .line 96
    .line 97
    sget-object v1, Leq0;->c:Leq0;

    .line 98
    .line 99
    invoke-virtual {p1, v1}, Lag1;->g0(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 103
    .line 104
    invoke-static {p2, v0, v1}, Ldv3;->a(Lnd2;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lnd2;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    sget-object v1, Lmj1;->o:Lcw;

    .line 109
    .line 110
    invoke-static {v1, v3}, Lqx;->d(Lcw;Z)Ldb2;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget-wide v4, p1, Lag1;->T:J

    .line 115
    .line 116
    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    invoke-virtual {p1}, Lag1;->l()Lhu2;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-static {p1, p2}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    sget-object v6, Llb0;->c:Lkb0;

    .line 129
    .line 130
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    sget-object v6, Lkb0;->b:Lic0;

    .line 134
    .line 135
    invoke-virtual {p1}, Lag1;->Z()V

    .line 136
    .line 137
    .line 138
    iget-boolean v7, p1, Lag1;->S:Z

    .line 139
    .line 140
    if-eqz v7, :cond_3

    .line 141
    .line 142
    invoke-virtual {p1, v6}, Lag1;->k(Lne1;)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_3
    invoke-virtual {p1}, Lag1;->j0()V

    .line 147
    .line 148
    .line 149
    :goto_1
    sget-object v6, Lkb0;->f:Lfd;

    .line 150
    .line 151
    invoke-static {v6, p1, v1}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    sget-object v1, Lkb0;->e:Lfd;

    .line 155
    .line 156
    invoke-static {v1, p1, v5}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    sget-object v4, Lkb0;->g:Lfd;

    .line 164
    .line 165
    invoke-static {v4, p1, v1}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    sget-object v1, Lkb0;->h:Ll9;

    .line 169
    .line 170
    invoke-static {p1, v1}, Lht4;->y(Lag1;Lpe1;)V

    .line 171
    .line 172
    .line 173
    sget-object v1, Lkb0;->d:Lfd;

    .line 174
    .line 175
    invoke-static {v1, p1, p2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    iget-object p0, p0, Luu3;->t:Lka0;

    .line 183
    .line 184
    invoke-virtual {p0, p1, p2}, Lka0;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, v3}, Lag1;->p(Z)V

    .line 188
    .line 189
    .line 190
    return-object v0

    .line 191
    :cond_4
    invoke-virtual {p1}, Lag1;->Q()V

    .line 192
    .line 193
    .line 194
    return-object v0
.end method

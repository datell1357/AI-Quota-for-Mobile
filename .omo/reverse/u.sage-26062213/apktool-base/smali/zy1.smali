.class public final Lzy1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lkx0;


# instance fields
.field public final n:Lx20;

.field public o:Ljx0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lx20;

    .line 2
    .line 3
    invoke-direct {v0}, Lx20;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lzy1;->n:Lx20;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final A(Lsb;Lzf5;FLtv4;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lx20;->A(Lsb;Lzf5;FLtv4;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final E(Lzf5;JJFLtv4;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Lx20;->E(Lzf5;JJFLtv4;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final G(J)F
    .locals 0

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Las0;->G(J)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final M(Lgb;JJJFLow;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p10}, Lx20;->M(Lgb;JJJFLow;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final N(F)I
    .locals 0

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Las0;->N(F)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final U()J
    .locals 2

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    invoke-interface {p0}, Lkx0;->U()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final X(J)J
    .locals 0

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Las0;->X(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public final Z(J)F
    .locals 0

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Las0;->Z(J)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final a()V
    .locals 11

    .line 1
    iget-object v0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    iget-object v1, v0, Lx20;->o:Leh;

    .line 4
    .line 5
    invoke-virtual {v1}, Leh;->u()Lv20;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    iget-object p0, p0, Lzy1;->o:Ljx0;

    .line 10
    .line 11
    if-eqz p0, :cond_f

    .line 12
    .line 13
    move-object v1, p0

    .line 14
    check-cast v1, Lmd2;

    .line 15
    .line 16
    iget-object v2, v1, Lmd2;->n:Lmd2;

    .line 17
    .line 18
    iget-object v2, v2, Lmd2;->s:Lmd2;

    .line 19
    .line 20
    const/4 v9, 0x0

    .line 21
    const/4 v10, 0x4

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget v4, v2, Lmd2;->q:I

    .line 26
    .line 27
    and-int/2addr v4, v10

    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    .line 32
    .line 33
    iget v4, v2, Lmd2;->p:I

    .line 34
    .line 35
    and-int/lit8 v5, v4, 0x2

    .line 36
    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    and-int/lit8 v4, v4, 0x4

    .line 41
    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_3
    iget-object v2, v2, Lmd2;->s:Lmd2;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    :goto_1
    move-object v2, v9

    .line 49
    :goto_2
    if-eqz v2, :cond_d

    .line 50
    .line 51
    move-object p0, v9

    .line 52
    :goto_3
    if-eqz v2, :cond_c

    .line 53
    .line 54
    instance-of v1, v2, Ljx0;

    .line 55
    .line 56
    if-eqz v1, :cond_5

    .line 57
    .line 58
    move-object v7, v2

    .line 59
    check-cast v7, Ljx0;

    .line 60
    .line 61
    iget-object v1, v0, Lx20;->o:Leh;

    .line 62
    .line 63
    iget-object v1, v1, Leh;->p:Ljava/lang/Object;

    .line 64
    .line 65
    move-object v8, v1

    .line 66
    check-cast v8, Lzh1;

    .line 67
    .line 68
    invoke-static {v7, v10}, Lw80;->P(Ljr0;I)Lmm2;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    iget-wide v1, v6, Ldv2;->p:J

    .line 73
    .line 74
    invoke-static {v1, v2}, Lse0;->H(J)J

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    iget-object v1, v6, Lmm2;->F:Lxy1;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Laz1;->a(Lxy1;)Lsr2;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lq9;

    .line 88
    .line 89
    invoke-virtual {v1}, Lq9;->getSharedDrawScope()Lzy1;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual/range {v2 .. v8}, Lzy1;->c(Lv20;JLmm2;Ljx0;Lzh1;)V

    .line 94
    .line 95
    .line 96
    goto :goto_6

    .line 97
    :cond_5
    iget v1, v2, Lmd2;->p:I

    .line 98
    .line 99
    and-int/2addr v1, v10

    .line 100
    if-eqz v1, :cond_b

    .line 101
    .line 102
    instance-of v1, v2, Lkr0;

    .line 103
    .line 104
    if-eqz v1, :cond_b

    .line 105
    .line 106
    move-object v1, v2

    .line 107
    check-cast v1, Lkr0;

    .line 108
    .line 109
    iget-object v1, v1, Lkr0;->C:Lmd2;

    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    :goto_4
    const/4 v5, 0x1

    .line 113
    if-eqz v1, :cond_a

    .line 114
    .line 115
    iget v6, v1, Lmd2;->p:I

    .line 116
    .line 117
    and-int/2addr v6, v10

    .line 118
    if-eqz v6, :cond_9

    .line 119
    .line 120
    add-int/lit8 v4, v4, 0x1

    .line 121
    .line 122
    if-ne v4, v5, :cond_6

    .line 123
    .line 124
    move-object v2, v1

    .line 125
    goto :goto_5

    .line 126
    :cond_6
    if-nez p0, :cond_7

    .line 127
    .line 128
    new-instance p0, Lug2;

    .line 129
    .line 130
    const/16 v5, 0x10

    .line 131
    .line 132
    new-array v5, v5, [Lmd2;

    .line 133
    .line 134
    invoke-direct {p0, v5}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_7
    if-eqz v2, :cond_8

    .line 138
    .line 139
    invoke-virtual {p0, v2}, Lug2;->c(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    move-object v2, v9

    .line 143
    :cond_8
    invoke-virtual {p0, v1}, Lug2;->c(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_9
    :goto_5
    iget-object v1, v1, Lmd2;->s:Lmd2;

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_a
    if-ne v4, v5, :cond_b

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_b
    :goto_6
    invoke-static {p0}, Lw80;->g(Lug2;)Lmd2;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    goto :goto_3

    .line 157
    :cond_c
    return-void

    .line 158
    :cond_d
    invoke-static {p0, v10}, Lw80;->P(Ljr0;I)Lmm2;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {p0}, Lmm2;->O0()Lmd2;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    iget-object v1, v1, Lmd2;->n:Lmd2;

    .line 167
    .line 168
    if-ne v2, v1, :cond_e

    .line 169
    .line 170
    iget-object p0, p0, Lmm2;->G:Lmm2;

    .line 171
    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    :cond_e
    iget-object v0, v0, Lx20;->o:Leh;

    .line 176
    .line 177
    iget-object v0, v0, Leh;->p:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v0, Lzh1;

    .line 180
    .line 181
    invoke-virtual {p0, v3, v0}, Lmm2;->d1(Lv20;Lzh1;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_f
    const-string p0, "Attempting to drawContent for a `null` node. This usually means that a call to ContentDrawScope#drawContent() has been captured inside a lambda, and is being invoked outside of the draw pass. Capturing the scope this way is unsupported - if you are trying to record drawContent with graphicsLayer.record(), make sure you are using the GraphicsLayer#record function within DrawScope, instead of the member function on GraphicsLayer."

    .line 186
    .line 187
    invoke-static {p0}, Ldi0;->m(Ljava/lang/String;)Lv00;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    throw p0
.end method

.method public final b()F
    .locals 0

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    invoke-virtual {p0}, Lx20;->b()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final b0(JJJF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p7}, Lx20;->b0(JJJF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Lv20;JLmm2;Ljx0;Lzh1;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lzy1;->o:Ljx0;

    .line 2
    .line 3
    iput-object p5, p0, Lzy1;->o:Ljx0;

    .line 4
    .line 5
    iget-object v1, p4, Lmm2;->F:Lxy1;

    .line 6
    .line 7
    iget-object v1, v1, Lxy1;->M:Lhy1;

    .line 8
    .line 9
    iget-object v2, p0, Lzy1;->n:Lx20;

    .line 10
    .line 11
    iget-object v3, v2, Lx20;->o:Leh;

    .line 12
    .line 13
    invoke-virtual {v3}, Leh;->v()Las0;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v2, v2, Lx20;->o:Leh;

    .line 18
    .line 19
    invoke-virtual {v2}, Leh;->x()Lhy1;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v2}, Leh;->u()Lv20;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v2}, Leh;->z()J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    iget-object v8, v2, Leh;->p:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v8, Lzh1;

    .line 34
    .line 35
    invoke-virtual {v2, p4}, Leh;->I(Las0;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v1}, Leh;->J(Lhy1;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1}, Leh;->H(Lv20;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p2, p3}, Leh;->K(J)V

    .line 45
    .line 46
    .line 47
    iput-object p6, v2, Leh;->p:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-interface {p1}, Lv20;->j()V

    .line 50
    .line 51
    .line 52
    :try_start_0
    invoke-interface {p5, p0}, Ljx0;->K(Lzy1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    invoke-interface {p1}, Lv20;->h()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Leh;->I(Las0;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v4}, Leh;->J(Lhy1;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v5}, Leh;->H(Lv20;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v6, v7}, Leh;->K(J)V

    .line 68
    .line 69
    .line 70
    iput-object v8, v2, Leh;->p:Ljava/lang/Object;

    .line 71
    .line 72
    iput-object v0, p0, Lzy1;->o:Ljx0;

    .line 73
    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    invoke-interface {p1}, Lv20;->h()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Leh;->I(Las0;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v4}, Leh;->J(Lhy1;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v5}, Leh;->H(Lv20;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v6, v7}, Leh;->K(J)V

    .line 89
    .line 90
    .line 91
    iput-object v8, v2, Leh;->p:Ljava/lang/Object;

    .line 92
    .line 93
    throw p0
.end method

.method public final d()J
    .locals 2

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    invoke-interface {p0}, Lkx0;->d()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final f(Lsb;JLtv4;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lx20;->f(Lsb;JLtv4;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getLayoutDirection()Lhy1;
    .locals 0

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    iget-object p0, p0, Lx20;->n:Lw20;

    .line 4
    .line 5
    iget-object p0, p0, Lw20;->b:Lhy1;

    .line 6
    .line 7
    return-object p0
.end method

.method public final i0(F)J
    .locals 0

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Las0;->i0(F)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public final k()F
    .locals 0

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    invoke-virtual {p0}, Lx20;->k()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final p(Lzf5;JJJFLtv4;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p9}, Lx20;->p(Lzf5;JJJFLtv4;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final p0(I)F
    .locals 0

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Las0;->p0(I)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final r0(F)F
    .locals 0

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    invoke-virtual {p0}, Lx20;->b()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    div-float/2addr p1, p0

    .line 8
    return p1
.end method

.method public final s(F)J
    .locals 0

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Las0;->s(F)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public final s0(JFFJJLtv4;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p9}, Lx20;->s0(JFFJJLtv4;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final t(J)J
    .locals 0

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Las0;->t(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public final u(JJJLtv4;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p8}, Lx20;->u(JJJLtv4;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final v(F)F
    .locals 0

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    invoke-virtual {p0}, Lx20;->b()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    mul-float/2addr p0, p1

    .line 8
    return p0
.end method

.method public final z()Leh;
    .locals 0

    .line 1
    iget-object p0, p0, Lzy1;->n:Lx20;

    .line 2
    .line 3
    iget-object p0, p0, Lx20;->o:Leh;

    .line 4
    .line 5
    return-object p0
.end method

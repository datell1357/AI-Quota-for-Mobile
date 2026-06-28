.class public final Lab2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lxy1;

.field public final b:Leh;

.field public c:Z

.field public d:Z

.field public final e:Lxh1;

.field public final f:Lug2;

.field public final g:J

.field public final h:Lug2;

.field public i:Lmf0;


# direct methods
.method public constructor <init>(Lxy1;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lab2;->a:Lxy1;

    .line 5
    .line 6
    new-instance p1, Leh;

    .line 7
    .line 8
    const/16 v0, 0xb

    .line 9
    .line 10
    invoke-direct {p1, v0}, Leh;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lab2;->b:Leh;

    .line 14
    .line 15
    new-instance p1, Lxh1;

    .line 16
    .line 17
    const/16 v0, 0xa

    .line 18
    .line 19
    invoke-direct {p1, v0}, Lxh1;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lab2;->e:Lxh1;

    .line 23
    .line 24
    new-instance p1, Lug2;

    .line 25
    .line 26
    const/16 v0, 0x10

    .line 27
    .line 28
    new-array v1, v0, [Lxy1;

    .line 29
    .line 30
    invoke-direct {p1, v1}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lab2;->f:Lug2;

    .line 34
    .line 35
    const-wide/16 v1, 0x1

    .line 36
    .line 37
    iput-wide v1, p0, Lab2;->g:J

    .line 38
    .line 39
    new-instance p1, Lug2;

    .line 40
    .line 41
    new-array v0, v0, [Lza2;

    .line 42
    .line 43
    invoke-direct {p1, v0}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lab2;->h:Lug2;

    .line 47
    .line 48
    return-void
.end method

.method public static final a(Lab2;Lxy1;Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lab2;->a:Lxy1;

    .line 2
    .line 3
    iget-boolean v1, p1, Lxy1;->d0:Z

    .line 4
    .line 5
    iget-object v2, p1, Lxy1;->T:Lbz1;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_0
    invoke-static {p1}, Lab2;->k(Lxy1;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_d

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lab2;->i:Lmf0;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    :goto_0
    if-eqz p2, :cond_4

    .line 28
    .line 29
    iget-boolean p2, v2, Lbz1;->e:Z

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    invoke-static {p1, v1}, Lab2;->c(Lxy1;Lmf0;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    :cond_2
    if-nez v3, :cond_3

    .line 38
    .line 39
    iget-boolean p2, v2, Lbz1;->f:Z

    .line 40
    .line 41
    if-eqz p2, :cond_c

    .line 42
    .line 43
    :cond_3
    invoke-virtual {p1}, Lxy1;->J()Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-static {p2, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_c

    .line 54
    .line 55
    invoke-virtual {p1}, Lxy1;->K()V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_4
    invoke-virtual {p1}, Lxy1;->q()Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_5

    .line 65
    .line 66
    invoke-static {p1, v1}, Lab2;->d(Lxy1;Lmf0;)Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    goto :goto_1

    .line 71
    :cond_5
    move p2, v3

    .line 72
    :goto_1
    invoke-virtual {p1}, Lxy1;->p()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_b

    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    if-eq p1, v0, :cond_6

    .line 80
    .line 81
    invoke-virtual {p1}, Lxy1;->u()Lxy1;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    if-eqz v4, :cond_b

    .line 86
    .line 87
    invoke-virtual {v4}, Lxy1;->I()Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-ne v4, v1, :cond_b

    .line 92
    .line 93
    iget-object v4, v2, Lbz1;->p:Lcb2;

    .line 94
    .line 95
    iget-boolean v4, v4, Lcb2;->G:Z

    .line 96
    .line 97
    if-eqz v4, :cond_b

    .line 98
    .line 99
    :cond_6
    if-ne p1, v0, :cond_a

    .line 100
    .line 101
    iget-object v0, p1, Lxy1;->P:Lvy1;

    .line 102
    .line 103
    sget-object v4, Lvy1;->p:Lvy1;

    .line 104
    .line 105
    if-ne v0, v4, :cond_7

    .line 106
    .line 107
    invoke-virtual {p1}, Lxy1;->d()V

    .line 108
    .line 109
    .line 110
    :cond_7
    invoke-virtual {p1}, Lxy1;->u()Lxy1;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_8

    .line 115
    .line 116
    iget-object v0, v0, Lxy1;->S:Lbo;

    .line 117
    .line 118
    iget-object v0, v0, Lbo;->d:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v0, Lgr1;

    .line 121
    .line 122
    if-eqz v0, :cond_8

    .line 123
    .line 124
    iget-object v0, v0, Lk82;->C:Ll82;

    .line 125
    .line 126
    if-nez v0, :cond_9

    .line 127
    .line 128
    :cond_8
    invoke-static {p1}, Laz1;->a(Lxy1;)Lsr2;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Lq9;

    .line 133
    .line 134
    invoke-virtual {v0}, Lq9;->getPlacementScope()Lcv2;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    :cond_9
    iget-object v2, v2, Lbz1;->p:Lcb2;

    .line 139
    .line 140
    invoke-static {v0, v2, v3, v3}, Lcv2;->j(Lcv2;Ldv2;II)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_a
    invoke-virtual {p1}, Lxy1;->T()V

    .line 145
    .line 146
    .line 147
    :goto_2
    iget-object v0, p0, Lab2;->e:Lxh1;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    iget v2, p1, Lxy1;->c0:I

    .line 153
    .line 154
    if-lez v2, :cond_b

    .line 155
    .line 156
    iget-object v0, v0, Lxh1;->n:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v0, Lug2;

    .line 159
    .line 160
    invoke-virtual {v0, p1}, Lug2;->c(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    iput-boolean v1, p1, Lxy1;->b0:Z

    .line 164
    .line 165
    :cond_b
    move v3, p2

    .line 166
    :cond_c
    :goto_3
    invoke-virtual {p0}, Lab2;->e()V

    .line 167
    .line 168
    .line 169
    :cond_d
    :goto_4
    return v3
.end method

.method public static c(Lxy1;Lmf0;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lxy1;->u:Lxy1;

    .line 2
    .line 3
    iget-object v1, p0, Lxy1;->T:Lbz1;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    if-eqz p1, :cond_2

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, v1, Lbz1;->q:Lq82;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-wide v3, p1, Lmf0;->a:J

    .line 19
    .line 20
    invoke-virtual {v0, v3, v4}, Lq82;->u0(J)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move p1, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    iget-object p1, v1, Lbz1;->q:Lq82;

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    iget-object v1, p1, Lq82;->A:Lmf0;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    const/4 v1, 0x0

    .line 35
    :goto_0
    if-eqz v1, :cond_1

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-wide v0, v1, Lmf0;->a:J

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Lq82;->u0(J)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    :goto_1
    invoke-virtual {p0}, Lxy1;->u()Lxy1;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz p1, :cond_6

    .line 53
    .line 54
    if-eqz v0, :cond_6

    .line 55
    .line 56
    iget-object v1, v0, Lxy1;->u:Lxy1;

    .line 57
    .line 58
    const/4 v3, 0x3

    .line 59
    if-nez v1, :cond_4

    .line 60
    .line 61
    invoke-static {v0, v2, v3}, Lxy1;->X(Lxy1;ZI)V

    .line 62
    .line 63
    .line 64
    return p1

    .line 65
    :cond_4
    invoke-virtual {p0}, Lxy1;->s()Lvy1;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    sget-object v4, Lvy1;->n:Lvy1;

    .line 70
    .line 71
    if-ne v1, v4, :cond_5

    .line 72
    .line 73
    invoke-static {v0, v2, v3}, Lxy1;->V(Lxy1;ZI)V

    .line 74
    .line 75
    .line 76
    return p1

    .line 77
    :cond_5
    invoke-virtual {p0}, Lxy1;->s()Lvy1;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    sget-object v1, Lvy1;->o:Lvy1;

    .line 82
    .line 83
    if-ne p0, v1, :cond_6

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Lxy1;->U(Z)V

    .line 86
    .line 87
    .line 88
    :cond_6
    return p1
.end method

.method public static d(Lxy1;Lmf0;)Z
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lxy1;->P(Lmf0;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0}, Lxy1;->Q(Lxy1;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    :goto_0
    invoke-virtual {p0}, Lxy1;->u()Lxy1;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Lxy1;->r()Lvy1;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Lvy1;->n:Lvy1;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    const/4 p0, 0x3

    .line 30
    invoke-static {v0, v3, p0}, Lxy1;->X(Lxy1;ZI)V

    .line 31
    .line 32
    .line 33
    return p1

    .line 34
    :cond_1
    invoke-virtual {p0}, Lxy1;->r()Lvy1;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    sget-object v1, Lvy1;->o:Lvy1;

    .line 39
    .line 40
    if-ne p0, v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Lxy1;->W(Z)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return p1
.end method

.method public static i(Lxy1;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lxy1;->T:Lbz1;

    .line 2
    .line 3
    iget-boolean v0, v0, Lbz1;->e:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lxy1;->s()Lvy1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lvy1;->p:Lvy1;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lxy1;->T:Lbz1;

    .line 17
    .line 18
    iget-object p0, p0, Lbz1;->q:Lq82;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lq82;->E:Lyy1;

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lyy1;->e()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-ne p0, v2, :cond_1

    .line 31
    .line 32
    :cond_0
    return v2

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public static j(Lxy1;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lxy1;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Lxy1;->r()Lvy1;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lvy1;->p:Lvy1;

    .line 12
    .line 13
    if-ne v0, v1, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lxy1;->T:Lbz1;

    .line 16
    .line 17
    iget-object v0, v0, Lbz1;->p:Lcb2;

    .line 18
    .line 19
    iget-object v0, v0, Lcb2;->K:Lyy1;

    .line 20
    .line 21
    invoke-virtual {v0}, Lyy1;->e()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lxy1;->u()Lxy1;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, v0, Lxy1;->T:Lbz1;

    .line 34
    .line 35
    iget-object v0, v0, Lbz1;->d:Lty1;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    :goto_0
    sget-object v1, Lty1;->n:Lty1;

    .line 40
    .line 41
    if-ne v0, v1, :cond_4

    .line 42
    .line 43
    :cond_2
    invoke-virtual {p0}, Lxy1;->u()Lxy1;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    if-nez p0, :cond_3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    invoke-virtual {p0}, Lxy1;->I()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    return p0

    .line 58
    :cond_4
    :goto_1
    const/4 p0, 0x0

    .line 59
    return p0
.end method

.method public static k(Lxy1;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lxy1;->T:Lbz1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lxy1;->I()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget-object v1, v0, Lbz1;->p:Lcb2;

    .line 11
    .line 12
    iget-boolean v1, v1, Lcb2;->G:Z

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-static {p0}, Lab2;->j(Lxy1;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lxy1;->J()Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    invoke-static {p0}, Lab2;->i(Lxy1;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    iget-object p0, v0, Lbz1;->p:Lcb2;

    .line 41
    .line 42
    iget-object p0, p0, Lcb2;->K:Lyy1;

    .line 43
    .line 44
    invoke-virtual {p0}, Lyy1;->e()Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_1

    .line 49
    .line 50
    iget-object p0, v0, Lbz1;->q:Lq82;

    .line 51
    .line 52
    if-eqz p0, :cond_0

    .line 53
    .line 54
    iget-object p0, p0, Lq82;->E:Lyy1;

    .line 55
    .line 56
    if-eqz p0, :cond_0

    .line 57
    .line 58
    invoke-virtual {p0}, Lyy1;->e()Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-ne p0, v2, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 p0, 0x0

    .line 66
    return p0

    .line 67
    :cond_1
    :goto_0
    return v2
.end method


# virtual methods
.method public final b(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lab2;->e:Lxh1;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, v0, Lxh1;->n:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lug2;

    .line 8
    .line 9
    iget-object p0, p0, Lab2;->a:Lxy1;

    .line 10
    .line 11
    iget v1, p0, Lxy1;->c0:I

    .line 12
    .line 13
    if-lez v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lug2;->h()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lug2;->c(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lxy1;->b0:Z

    .line 23
    .line 24
    :cond_0
    iget-object p0, v0, Lxh1;->n:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lug2;

    .line 27
    .line 28
    iget p0, p0, Lug2;->p:I

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    const-string p0, "Compose:onPositionedCallbacks"

    .line 33
    .line 34
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :try_start_0
    invoke-virtual {v0}, Lxh1;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_1
    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object p0, p0, Lab2;->h:Lug2;

    .line 2
    .line 3
    iget v0, p0, Lug2;->p:I

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v1, p0, Lug2;->n:[Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_2

    .line 11
    .line 12
    aget-object v3, v1, v2

    .line 13
    .line 14
    check-cast v3, Lza2;

    .line 15
    .line 16
    iget-object v4, v3, Lza2;->a:Lxy1;

    .line 17
    .line 18
    invoke-virtual {v4}, Lxy1;->H()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    iget-boolean v4, v3, Lza2;->b:Z

    .line 25
    .line 26
    iget-object v5, v3, Lza2;->a:Lxy1;

    .line 27
    .line 28
    iget-boolean v3, v3, Lza2;->c:Z

    .line 29
    .line 30
    const/4 v6, 0x2

    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    invoke-static {v5, v3, v6}, Lxy1;->X(Lxy1;ZI)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-static {v5, v3, v6}, Lxy1;->V(Lxy1;ZI)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0}, Lug2;->h()V

    .line 44
    .line 45
    .line 46
    :cond_3
    return-void
.end method

.method public final f(Lxy1;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lxy1;->z()Lug2;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Lug2;->n:[Ljava/lang/Object;

    .line 6
    .line 7
    iget p1, p1, Lug2;->p:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, p1, :cond_2

    .line 11
    .line 12
    aget-object v2, v0, v1

    .line 13
    .line 14
    check-cast v2, Lxy1;

    .line 15
    .line 16
    invoke-virtual {v2}, Lxy1;->J()Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-static {v3, v4}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    iget-boolean v3, v2, Lxy1;->d0:Z

    .line 29
    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    iget-object v3, p0, Lab2;->b:Leh;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Leh;->n(Lxy1;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-virtual {v2}, Lxy1;->K()V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {p0, v2}, Lab2;->f(Lxy1;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return-void
.end method

.method public final g(Lxy1;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lab2;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "forceMeasureTheSubtree should be executed during the measureAndLayout pass"

    .line 6
    .line 7
    invoke-static {v0}, Lar1;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-object v0, p1, Lxy1;->T:Lbz1;

    .line 13
    .line 14
    iget-boolean v0, v0, Lbz1;->e:Z

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Lxy1;->q()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :goto_0
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const-string v0, "node not yet measured"

    .line 24
    .line 25
    invoke-static {v0}, Lar1;->a(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-virtual {p0, p1, p2}, Lab2;->h(Lxy1;Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final h(Lxy1;Z)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lxy1;->z()Lug2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lug2;->n:[Ljava/lang/Object;

    .line 6
    .line 7
    iget v0, v0, Lug2;->p:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_8

    .line 11
    .line 12
    aget-object v3, v1, v2

    .line 13
    .line 14
    check-cast v3, Lxy1;

    .line 15
    .line 16
    sget-object v4, Lvy1;->n:Lvy1;

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v3}, Lxy1;->r()Lvy1;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    if-eq v6, v4, :cond_1

    .line 26
    .line 27
    iget-object v6, v3, Lxy1;->T:Lbz1;

    .line 28
    .line 29
    iget-object v6, v6, Lbz1;->p:Lcb2;

    .line 30
    .line 31
    iget-object v6, v6, Lcb2;->K:Lyy1;

    .line 32
    .line 33
    invoke-virtual {v6}, Lyy1;->e()Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    if-eqz p2, :cond_7

    .line 41
    .line 42
    invoke-virtual {v3}, Lxy1;->s()Lvy1;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    if-eq v6, v4, :cond_1

    .line 47
    .line 48
    iget-object v4, v3, Lxy1;->T:Lbz1;

    .line 49
    .line 50
    iget-object v4, v4, Lbz1;->q:Lq82;

    .line 51
    .line 52
    if-eqz v4, :cond_7

    .line 53
    .line 54
    iget-object v4, v4, Lq82;->E:Lyy1;

    .line 55
    .line 56
    if-eqz v4, :cond_7

    .line 57
    .line 58
    invoke-virtual {v4}, Lyy1;->e()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-ne v4, v5, :cond_7

    .line 63
    .line 64
    :cond_1
    :goto_1
    invoke-static {v3}, Lix;->C(Lxy1;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    iget-object v6, v3, Lxy1;->T:Lbz1;

    .line 69
    .line 70
    if-eqz v4, :cond_3

    .line 71
    .line 72
    if-nez p2, :cond_3

    .line 73
    .line 74
    iget-boolean v4, v6, Lbz1;->e:Z

    .line 75
    .line 76
    if-eqz v4, :cond_2

    .line 77
    .line 78
    iget-object v4, p0, Lab2;->b:Leh;

    .line 79
    .line 80
    invoke-virtual {v4, v3}, Leh;->n(Lxy1;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_2

    .line 85
    .line 86
    invoke-virtual {p0, v3, v5}, Lab2;->o(Lxy1;Z)Z

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    invoke-virtual {p0, v3, v5}, Lab2;->g(Lxy1;Z)V

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    .line 94
    .line 95
    iget-boolean v4, v6, Lbz1;->e:Z

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    invoke-virtual {v3}, Lxy1;->q()Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    :goto_3
    if-eqz v4, :cond_5

    .line 103
    .line 104
    invoke-virtual {p0, v3, p2}, Lab2;->o(Lxy1;Z)Z

    .line 105
    .line 106
    .line 107
    :cond_5
    if-eqz p2, :cond_6

    .line 108
    .line 109
    iget-boolean v4, v6, Lbz1;->e:Z

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_6
    invoke-virtual {v3}, Lxy1;->q()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    :goto_4
    if-nez v4, :cond_7

    .line 117
    .line 118
    invoke-virtual {p0, v3, p2}, Lab2;->h(Lxy1;Z)V

    .line 119
    .line 120
    .line 121
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_8
    if-eqz p2, :cond_9

    .line 125
    .line 126
    iget-object v0, p1, Lxy1;->T:Lbz1;

    .line 127
    .line 128
    iget-boolean v0, v0, Lbz1;->e:Z

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_9
    invoke-virtual {p1}, Lxy1;->q()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    :goto_5
    if-eqz v0, :cond_a

    .line 136
    .line 137
    invoke-virtual {p0, p1, p2}, Lab2;->o(Lxy1;Z)Z

    .line 138
    .line 139
    .line 140
    :cond_a
    return-void
.end method

.method public final l(Lne1;)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lab2;->b:Leh;

    .line 4
    .line 5
    iget-object v2, v1, Lab2;->a:Lxy1;

    .line 6
    .line 7
    invoke-virtual {v2}, Lxy1;->H()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    const-string v3, "performMeasureAndLayout called with unattached root"

    .line 14
    .line 15
    invoke-static {v3}, Lar1;->a(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v2}, Lxy1;->I()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    const-string v3, "performMeasureAndLayout called with unplaced root"

    .line 25
    .line 26
    invoke-static {v3}, Lar1;->a(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-boolean v3, v1, Lab2;->c:Z

    .line 30
    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    const-string v3, "performMeasureAndLayout called during measure layout"

    .line 34
    .line 35
    invoke-static {v3}, Lar1;->a(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object v3, v1, Lab2;->i:Lmf0;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    const/4 v5, 0x1

    .line 42
    if-eqz v3, :cond_e

    .line 43
    .line 44
    iput-boolean v5, v1, Lab2;->c:Z

    .line 45
    .line 46
    iput-boolean v5, v1, Lab2;->d:Z

    .line 47
    .line 48
    :try_start_0
    invoke-virtual {v0}, Leh;->C()Z

    .line 49
    .line 50
    .line 51
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget-object v6, v0, Leh;->o:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v6, Lwu4;

    .line 55
    .line 56
    if-eqz v3, :cond_c

    .line 57
    .line 58
    move v3, v4

    .line 59
    :cond_3
    :goto_0
    :try_start_1
    iget-object v7, v0, Leh;->q:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v7, Lwu4;

    .line 62
    .line 63
    iget-object v8, v0, Leh;->p:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v8, Lwu4;

    .line 66
    .line 67
    iget-object v9, v6, Lwu4;->o:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v9, Lwp3;

    .line 70
    .line 71
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-nez v9, :cond_5

    .line 76
    .line 77
    iget-object v7, v6, Lwu4;->o:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v7, Lwp3;

    .line 80
    .line 81
    invoke-virtual {v7}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    check-cast v7, Lxy1;

    .line 86
    .line 87
    invoke-virtual {v6, v7}, Lwu4;->s(Lxy1;)Z

    .line 88
    .line 89
    .line 90
    iget-object v8, v7, Lxy1;->u:Lxy1;

    .line 91
    .line 92
    if-eqz v8, :cond_4

    .line 93
    .line 94
    move v8, v5

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    move v8, v4

    .line 97
    :goto_1
    move v9, v4

    .line 98
    goto :goto_3

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    goto/16 :goto_6

    .line 101
    .line 102
    :cond_5
    iget-object v9, v8, Lwu4;->o:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v9, Lwp3;

    .line 105
    .line 106
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    if-nez v9, :cond_7

    .line 111
    .line 112
    iget-object v7, v8, Lwu4;->o:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v7, Lwp3;

    .line 115
    .line 116
    invoke-virtual {v7}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    check-cast v7, Lxy1;

    .line 121
    .line 122
    invoke-virtual {v8, v7}, Lwu4;->s(Lxy1;)Z

    .line 123
    .line 124
    .line 125
    iget-object v8, v7, Lxy1;->u:Lxy1;

    .line 126
    .line 127
    if-eqz v8, :cond_6

    .line 128
    .line 129
    move v8, v5

    .line 130
    goto :goto_2

    .line 131
    :cond_6
    move v8, v4

    .line 132
    :goto_2
    move v9, v5

    .line 133
    goto :goto_3

    .line 134
    :cond_7
    iget-object v8, v7, Lwu4;->o:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v8, Lwp3;

    .line 137
    .line 138
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-nez v8, :cond_b

    .line 143
    .line 144
    iget-object v8, v7, Lwu4;->o:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v8, Lwp3;

    .line 147
    .line 148
    invoke-virtual {v8}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    check-cast v8, Lxy1;

    .line 153
    .line 154
    invoke-virtual {v7, v8}, Lwu4;->s(Lxy1;)Z

    .line 155
    .line 156
    .line 157
    move v9, v5

    .line 158
    move-object v7, v8

    .line 159
    move v8, v4

    .line 160
    :goto_3
    if-eqz v9, :cond_8

    .line 161
    .line 162
    invoke-static {v1, v7, v8}, Lab2;->a(Lab2;Lxy1;Z)Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    goto :goto_4

    .line 167
    :cond_8
    invoke-virtual {v1, v7, v8}, Lab2;->o(Lxy1;Z)Z

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    iget-object v9, v7, Lxy1;->T:Lbz1;

    .line 172
    .line 173
    iget-boolean v9, v9, Lbz1;->f:Z

    .line 174
    .line 175
    if-eqz v9, :cond_9

    .line 176
    .line 177
    sget-object v9, Lyt1;->o:Lyt1;

    .line 178
    .line 179
    invoke-virtual {v0, v7, v9}, Leh;->i(Lxy1;Lyt1;)V

    .line 180
    .line 181
    .line 182
    :cond_9
    invoke-virtual {v7}, Lxy1;->p()Z

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    if-eqz v9, :cond_a

    .line 187
    .line 188
    sget-object v9, Lyt1;->q:Lyt1;

    .line 189
    .line 190
    invoke-virtual {v0, v7, v9}, Leh;->i(Lxy1;Lyt1;)V

    .line 191
    .line 192
    .line 193
    :cond_a
    :goto_4
    if-ne v7, v2, :cond_3

    .line 194
    .line 195
    if-eqz v8, :cond_3

    .line 196
    .line 197
    move v3, v5

    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_b
    if-eqz p1, :cond_d

    .line 201
    .line 202
    invoke-interface/range {p1 .. p1}, Lne1;->a()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_c
    move v3, v4

    .line 207
    :cond_d
    :goto_5
    iput-boolean v4, v1, Lab2;->c:Z

    .line 208
    .line 209
    iput-boolean v4, v1, Lab2;->d:Z

    .line 210
    .line 211
    goto :goto_7

    .line 212
    :goto_6
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 213
    :catchall_1
    move-exception v0

    .line 214
    iput-boolean v4, v1, Lab2;->c:Z

    .line 215
    .line 216
    iput-boolean v4, v1, Lab2;->d:Z

    .line 217
    .line 218
    throw v0

    .line 219
    :cond_e
    move v3, v4

    .line 220
    :goto_7
    iget-object v0, v1, Lab2;->f:Lug2;

    .line 221
    .line 222
    iget-object v1, v0, Lug2;->n:[Ljava/lang/Object;

    .line 223
    .line 224
    iget v2, v0, Lug2;->p:I

    .line 225
    .line 226
    move v6, v4

    .line 227
    :goto_8
    if-ge v6, v2, :cond_1a

    .line 228
    .line 229
    aget-object v7, v1, v6

    .line 230
    .line 231
    check-cast v7, Lxy1;

    .line 232
    .line 233
    iget-object v7, v7, Lxy1;->S:Lbo;

    .line 234
    .line 235
    iget-object v8, v7, Lbo;->d:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v8, Lgr1;

    .line 238
    .line 239
    const/high16 v9, 0x400000

    .line 240
    .line 241
    invoke-static {v9}, Lnm2;->g(I)Z

    .line 242
    .line 243
    .line 244
    move-result v10

    .line 245
    if-eqz v10, :cond_f

    .line 246
    .line 247
    iget-object v11, v8, Lgr1;->h0:Lgw3;

    .line 248
    .line 249
    goto :goto_9

    .line 250
    :cond_f
    iget-object v11, v8, Lgr1;->h0:Lgw3;

    .line 251
    .line 252
    iget-object v11, v11, Lmd2;->r:Lmd2;

    .line 253
    .line 254
    if-nez v11, :cond_10

    .line 255
    .line 256
    goto/16 :goto_10

    .line 257
    .line 258
    :cond_10
    :goto_9
    sget-object v12, Lmm2;->d0:Lo83;

    .line 259
    .line 260
    invoke-virtual {v8, v10}, Lmm2;->Q0(Z)Lmd2;

    .line 261
    .line 262
    .line 263
    move-result-object v8

    .line 264
    :goto_a
    if-eqz v8, :cond_19

    .line 265
    .line 266
    iget v10, v8, Lmd2;->q:I

    .line 267
    .line 268
    and-int/2addr v10, v9

    .line 269
    if-eqz v10, :cond_19

    .line 270
    .line 271
    iget v10, v8, Lmd2;->p:I

    .line 272
    .line 273
    and-int/2addr v10, v9

    .line 274
    if-eqz v10, :cond_18

    .line 275
    .line 276
    const/4 v10, 0x0

    .line 277
    move-object v12, v8

    .line 278
    move-object v13, v10

    .line 279
    :goto_b
    if-eqz v12, :cond_18

    .line 280
    .line 281
    instance-of v14, v12, Ley1;

    .line 282
    .line 283
    if-eqz v14, :cond_11

    .line 284
    .line 285
    check-cast v12, Ley1;

    .line 286
    .line 287
    iget-object v14, v7, Lbo;->d:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast v14, Lgr1;

    .line 290
    .line 291
    invoke-interface {v12, v14}, Ley1;->m(Lgy1;)V

    .line 292
    .line 293
    .line 294
    goto :goto_f

    .line 295
    :cond_11
    iget v14, v12, Lmd2;->p:I

    .line 296
    .line 297
    and-int/2addr v14, v9

    .line 298
    if-eqz v14, :cond_17

    .line 299
    .line 300
    instance-of v14, v12, Lkr0;

    .line 301
    .line 302
    if-eqz v14, :cond_17

    .line 303
    .line 304
    move-object v14, v12

    .line 305
    check-cast v14, Lkr0;

    .line 306
    .line 307
    iget-object v14, v14, Lkr0;->C:Lmd2;

    .line 308
    .line 309
    move v15, v4

    .line 310
    :goto_c
    if-eqz v14, :cond_16

    .line 311
    .line 312
    iget v4, v14, Lmd2;->p:I

    .line 313
    .line 314
    and-int/2addr v4, v9

    .line 315
    if-eqz v4, :cond_15

    .line 316
    .line 317
    add-int/lit8 v15, v15, 0x1

    .line 318
    .line 319
    if-ne v15, v5, :cond_12

    .line 320
    .line 321
    move-object v12, v14

    .line 322
    goto :goto_d

    .line 323
    :cond_12
    if-nez v13, :cond_13

    .line 324
    .line 325
    new-instance v13, Lug2;

    .line 326
    .line 327
    const/16 v4, 0x10

    .line 328
    .line 329
    new-array v4, v4, [Lmd2;

    .line 330
    .line 331
    invoke-direct {v13, v4}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    :cond_13
    if-eqz v12, :cond_14

    .line 335
    .line 336
    invoke-virtual {v13, v12}, Lug2;->c(Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    move-object v12, v10

    .line 340
    :cond_14
    invoke-virtual {v13, v14}, Lug2;->c(Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    :cond_15
    :goto_d
    iget-object v14, v14, Lmd2;->s:Lmd2;

    .line 344
    .line 345
    const/4 v4, 0x0

    .line 346
    goto :goto_c

    .line 347
    :cond_16
    if-ne v15, v5, :cond_17

    .line 348
    .line 349
    :goto_e
    const/4 v4, 0x0

    .line 350
    goto :goto_b

    .line 351
    :cond_17
    :goto_f
    invoke-static {v13}, Lw80;->g(Lug2;)Lmd2;

    .line 352
    .line 353
    .line 354
    move-result-object v12

    .line 355
    goto :goto_e

    .line 356
    :cond_18
    if-eq v8, v11, :cond_19

    .line 357
    .line 358
    iget-object v8, v8, Lmd2;->s:Lmd2;

    .line 359
    .line 360
    const/4 v4, 0x0

    .line 361
    goto :goto_a

    .line 362
    :cond_19
    :goto_10
    add-int/lit8 v6, v6, 0x1

    .line 363
    .line 364
    const/4 v4, 0x0

    .line 365
    goto/16 :goto_8

    .line 366
    .line 367
    :cond_1a
    invoke-virtual {v0}, Lug2;->h()V

    .line 368
    .line 369
    .line 370
    return v3
.end method

.method public final m(Lxy1;J)V
    .locals 12

    .line 1
    iget-boolean v0, p1, Lxy1;->d0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lab2;->a:Lxy1;

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const-string v1, "measureAndLayout called on root"

    .line 12
    .line 13
    invoke-static {v1}, Lar1;->a(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0}, Lxy1;->H()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    const-string v1, "performMeasureAndLayout called with unattached root"

    .line 23
    .line 24
    invoke-static {v1}, Lar1;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    invoke-virtual {v0}, Lxy1;->I()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    const-string v0, "performMeasureAndLayout called with unplaced root"

    .line 34
    .line 35
    invoke-static {v0}, Lar1;->a(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    iget-boolean v0, p0, Lab2;->c:Z

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    const-string v0, "performMeasureAndLayout called during measure layout"

    .line 43
    .line 44
    invoke-static {v0}, Lar1;->a(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_4
    iget-object v0, p0, Lab2;->i:Lmf0;

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    const/4 v2, 0x0

    .line 51
    if-eqz v0, :cond_8

    .line 52
    .line 53
    iput-boolean v1, p0, Lab2;->c:Z

    .line 54
    .line 55
    iput-boolean v2, p0, Lab2;->d:Z

    .line 56
    .line 57
    :try_start_0
    iget-object v0, p0, Lab2;->b:Leh;

    .line 58
    .line 59
    iget-object v3, v0, Leh;->o:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v3, Lwu4;

    .line 62
    .line 63
    invoke-virtual {v3, p1}, Lwu4;->s(Lxy1;)Z

    .line 64
    .line 65
    .line 66
    iget-object v3, v0, Leh;->p:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v3, Lwu4;

    .line 69
    .line 70
    invoke-virtual {v3, p1}, Lwu4;->s(Lxy1;)Z

    .line 71
    .line 72
    .line 73
    iget-object v0, v0, Leh;->q:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Lwu4;

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Lwu4;->s(Lxy1;)Z

    .line 78
    .line 79
    .line 80
    new-instance v0, Lmf0;

    .line 81
    .line 82
    invoke-direct {v0, p2, p3}, Lmf0;-><init>(J)V

    .line 83
    .line 84
    .line 85
    invoke-static {p1, v0}, Lab2;->c(Lxy1;Lmf0;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_5

    .line 90
    .line 91
    iget-object v0, p1, Lxy1;->T:Lbz1;

    .line 92
    .line 93
    iget-boolean v0, v0, Lbz1;->f:Z

    .line 94
    .line 95
    if-eqz v0, :cond_6

    .line 96
    .line 97
    :cond_5
    invoke-virtual {p1}, Lxy1;->J()Ljava/lang/Boolean;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 102
    .line 103
    invoke-static {v0, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_6

    .line 108
    .line 109
    invoke-virtual {p1}, Lxy1;->K()V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catchall_0
    move-exception p1

    .line 114
    goto :goto_2

    .line 115
    :cond_6
    :goto_1
    invoke-virtual {p0, p1}, Lab2;->f(Lxy1;)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Lmf0;

    .line 119
    .line 120
    invoke-direct {v0, p2, p3}, Lmf0;-><init>(J)V

    .line 121
    .line 122
    .line 123
    invoke-static {p1, v0}, Lab2;->d(Lxy1;Lmf0;)Z

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lxy1;->p()Z

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    if-eqz p2, :cond_7

    .line 131
    .line 132
    invoke-virtual {p1}, Lxy1;->I()Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-eqz p2, :cond_7

    .line 137
    .line 138
    invoke-virtual {p1}, Lxy1;->T()V

    .line 139
    .line 140
    .line 141
    iget-object p2, p0, Lab2;->e:Lxh1;

    .line 142
    .line 143
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    iget p3, p1, Lxy1;->c0:I

    .line 147
    .line 148
    if-lez p3, :cond_7

    .line 149
    .line 150
    iget-object p2, p2, Lxh1;->n:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast p2, Lug2;

    .line 153
    .line 154
    invoke-virtual {p2, p1}, Lug2;->c(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    iput-boolean v1, p1, Lxy1;->b0:Z

    .line 158
    .line 159
    :cond_7
    invoke-virtual {p0}, Lab2;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .line 161
    .line 162
    iput-boolean v2, p0, Lab2;->c:Z

    .line 163
    .line 164
    iput-boolean v2, p0, Lab2;->d:Z

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :goto_2
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 168
    :catchall_1
    move-exception p1

    .line 169
    iput-boolean v2, p0, Lab2;->c:Z

    .line 170
    .line 171
    iput-boolean v2, p0, Lab2;->d:Z

    .line 172
    .line 173
    throw p1

    .line 174
    :cond_8
    :goto_3
    iget-object p0, p0, Lab2;->f:Lug2;

    .line 175
    .line 176
    iget-object p1, p0, Lug2;->n:[Ljava/lang/Object;

    .line 177
    .line 178
    iget p2, p0, Lug2;->p:I

    .line 179
    .line 180
    move p3, v2

    .line 181
    :goto_4
    if-ge p3, p2, :cond_14

    .line 182
    .line 183
    aget-object v0, p1, p3

    .line 184
    .line 185
    check-cast v0, Lxy1;

    .line 186
    .line 187
    iget-object v0, v0, Lxy1;->S:Lbo;

    .line 188
    .line 189
    iget-object v3, v0, Lbo;->d:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v3, Lgr1;

    .line 192
    .line 193
    const/high16 v4, 0x400000

    .line 194
    .line 195
    invoke-static {v4}, Lnm2;->g(I)Z

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    if-eqz v5, :cond_9

    .line 200
    .line 201
    iget-object v6, v3, Lgr1;->h0:Lgw3;

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_9
    iget-object v6, v3, Lgr1;->h0:Lgw3;

    .line 205
    .line 206
    iget-object v6, v6, Lmd2;->r:Lmd2;

    .line 207
    .line 208
    if-nez v6, :cond_a

    .line 209
    .line 210
    goto/16 :goto_b

    .line 211
    .line 212
    :cond_a
    :goto_5
    sget-object v7, Lmm2;->d0:Lo83;

    .line 213
    .line 214
    invoke-virtual {v3, v5}, Lmm2;->Q0(Z)Lmd2;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    :goto_6
    if-eqz v3, :cond_13

    .line 219
    .line 220
    iget v5, v3, Lmd2;->q:I

    .line 221
    .line 222
    and-int/2addr v5, v4

    .line 223
    if-eqz v5, :cond_13

    .line 224
    .line 225
    iget v5, v3, Lmd2;->p:I

    .line 226
    .line 227
    and-int/2addr v5, v4

    .line 228
    if-eqz v5, :cond_12

    .line 229
    .line 230
    const/4 v5, 0x0

    .line 231
    move-object v7, v3

    .line 232
    move-object v8, v5

    .line 233
    :goto_7
    if-eqz v7, :cond_12

    .line 234
    .line 235
    instance-of v9, v7, Ley1;

    .line 236
    .line 237
    if-eqz v9, :cond_b

    .line 238
    .line 239
    check-cast v7, Ley1;

    .line 240
    .line 241
    iget-object v9, v0, Lbo;->d:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v9, Lgr1;

    .line 244
    .line 245
    invoke-interface {v7, v9}, Ley1;->m(Lgy1;)V

    .line 246
    .line 247
    .line 248
    goto :goto_a

    .line 249
    :cond_b
    iget v9, v7, Lmd2;->p:I

    .line 250
    .line 251
    and-int/2addr v9, v4

    .line 252
    if-eqz v9, :cond_11

    .line 253
    .line 254
    instance-of v9, v7, Lkr0;

    .line 255
    .line 256
    if-eqz v9, :cond_11

    .line 257
    .line 258
    move-object v9, v7

    .line 259
    check-cast v9, Lkr0;

    .line 260
    .line 261
    iget-object v9, v9, Lkr0;->C:Lmd2;

    .line 262
    .line 263
    move v10, v2

    .line 264
    :goto_8
    if-eqz v9, :cond_10

    .line 265
    .line 266
    iget v11, v9, Lmd2;->p:I

    .line 267
    .line 268
    and-int/2addr v11, v4

    .line 269
    if-eqz v11, :cond_f

    .line 270
    .line 271
    add-int/lit8 v10, v10, 0x1

    .line 272
    .line 273
    if-ne v10, v1, :cond_c

    .line 274
    .line 275
    move-object v7, v9

    .line 276
    goto :goto_9

    .line 277
    :cond_c
    if-nez v8, :cond_d

    .line 278
    .line 279
    new-instance v8, Lug2;

    .line 280
    .line 281
    const/16 v11, 0x10

    .line 282
    .line 283
    new-array v11, v11, [Lmd2;

    .line 284
    .line 285
    invoke-direct {v8, v11}, Lug2;-><init>([Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    :cond_d
    if-eqz v7, :cond_e

    .line 289
    .line 290
    invoke-virtual {v8, v7}, Lug2;->c(Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    move-object v7, v5

    .line 294
    :cond_e
    invoke-virtual {v8, v9}, Lug2;->c(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    :cond_f
    :goto_9
    iget-object v9, v9, Lmd2;->s:Lmd2;

    .line 298
    .line 299
    goto :goto_8

    .line 300
    :cond_10
    if-ne v10, v1, :cond_11

    .line 301
    .line 302
    goto :goto_7

    .line 303
    :cond_11
    :goto_a
    invoke-static {v8}, Lw80;->g(Lug2;)Lmd2;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    goto :goto_7

    .line 308
    :cond_12
    if-eq v3, v6, :cond_13

    .line 309
    .line 310
    iget-object v3, v3, Lmd2;->s:Lmd2;

    .line 311
    .line 312
    goto :goto_6

    .line 313
    :cond_13
    :goto_b
    add-int/lit8 p3, p3, 0x1

    .line 314
    .line 315
    goto/16 :goto_4

    .line 316
    .line 317
    :cond_14
    invoke-virtual {p0}, Lug2;->h()V

    .line 318
    .line 319
    .line 320
    return-void
.end method

.method public final n()V
    .locals 5

    .line 1
    iget-object v0, p0, Lab2;->b:Leh;

    .line 2
    .line 3
    invoke-virtual {v0}, Leh;->C()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_6

    .line 8
    .line 9
    iget-object v1, p0, Lab2;->a:Lxy1;

    .line 10
    .line 11
    invoke-virtual {v1}, Lxy1;->H()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const-string v2, "performMeasureAndLayout called with unattached root"

    .line 18
    .line 19
    invoke-static {v2}, Lar1;->a(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {v1}, Lxy1;->I()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    const-string v2, "performMeasureAndLayout called with unplaced root"

    .line 29
    .line 30
    invoke-static {v2}, Lar1;->a(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-boolean v2, p0, Lab2;->c:Z

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    const-string v2, "performMeasureAndLayout called during measure layout"

    .line 38
    .line 39
    invoke-static {v2}, Lar1;->a(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object v2, p0, Lab2;->i:Lmf0;

    .line 43
    .line 44
    if-eqz v2, :cond_6

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    iput-boolean v2, p0, Lab2;->c:Z

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    iput-boolean v3, p0, Lab2;->d:Z

    .line 51
    .line 52
    :try_start_0
    iget-object v4, v0, Leh;->q:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v4, Lwu4;

    .line 55
    .line 56
    iget-object v4, v4, Lwu4;->o:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v4, Lwp3;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_3

    .line 65
    .line 66
    iget-object v0, v0, Leh;->o:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Lwu4;

    .line 69
    .line 70
    iget-object v0, v0, Lwu4;->o:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Lwp3;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_3

    .line 79
    .line 80
    move v0, v2

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    move v0, v3

    .line 83
    :goto_0
    if-eqz v0, :cond_5

    .line 84
    .line 85
    iget-object v0, v1, Lxy1;->u:Lxy1;

    .line 86
    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    invoke-virtual {p0, v1, v2}, Lab2;->q(Lxy1;Z)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    invoke-virtual {p0, v1}, Lab2;->p(Lxy1;)V

    .line 96
    .line 97
    .line 98
    :cond_5
    :goto_1
    invoke-virtual {p0, v1, v3}, Lab2;->q(Lxy1;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    .line 101
    iput-boolean v3, p0, Lab2;->c:Z

    .line 102
    .line 103
    iput-boolean v3, p0, Lab2;->d:Z

    .line 104
    .line 105
    return-void

    .line 106
    :goto_2
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    :catchall_1
    move-exception v0

    .line 108
    iput-boolean v3, p0, Lab2;->c:Z

    .line 109
    .line 110
    iput-boolean v3, p0, Lab2;->d:Z

    .line 111
    .line 112
    throw v0

    .line 113
    :cond_6
    return-void
.end method

.method public final o(Lxy1;Z)Z
    .locals 2

    .line 1
    iget-boolean v0, p1, Lxy1;->d0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    invoke-static {p1}, Lab2;->k(Lxy1;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Lab2;->a:Lxy1;

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lab2;->i:Lmf0;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-eqz p2, :cond_2

    .line 25
    .line 26
    iget-object p2, p1, Lxy1;->T:Lbz1;

    .line 27
    .line 28
    iget-boolean p2, p2, Lbz1;->e:Z

    .line 29
    .line 30
    if-eqz p2, :cond_3

    .line 31
    .line 32
    invoke-static {p1, v0}, Lab2;->c(Lxy1;Lmf0;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {p1}, Lxy1;->q()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_3

    .line 42
    .line 43
    invoke-static {p1, v0}, Lab2;->d(Lxy1;Lmf0;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lab2;->e()V

    .line 48
    .line 49
    .line 50
    :cond_4
    :goto_2
    return v1
.end method

.method public final p(Lxy1;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lxy1;->z()Lug2;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Lug2;->n:[Ljava/lang/Object;

    .line 6
    .line 7
    iget p1, p1, Lug2;->p:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, p1, :cond_3

    .line 11
    .line 12
    aget-object v2, v0, v1

    .line 13
    .line 14
    check-cast v2, Lxy1;

    .line 15
    .line 16
    invoke-virtual {v2}, Lxy1;->r()Lvy1;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    sget-object v4, Lvy1;->n:Lvy1;

    .line 21
    .line 22
    if-eq v3, v4, :cond_0

    .line 23
    .line 24
    iget-object v3, v2, Lxy1;->T:Lbz1;

    .line 25
    .line 26
    iget-object v3, v3, Lbz1;->p:Lcb2;

    .line 27
    .line 28
    iget-object v3, v3, Lcb2;->K:Lyy1;

    .line 29
    .line 30
    invoke-virtual {v3}, Lyy1;->e()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    :cond_0
    invoke-static {v2}, Lix;->C(Lxy1;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-virtual {p0, v2, v3}, Lab2;->q(Lxy1;Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p0, v2}, Lab2;->p(Lxy1;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    return-void
.end method

.method public final q(Lxy1;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lxy1;->d0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lab2;->a:Lxy1;

    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    iget-object p0, p0, Lab2;->i:Lmf0;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p0, 0x0

    .line 17
    :goto_0
    if-eqz p2, :cond_2

    .line 18
    .line 19
    invoke-static {p1, p0}, Lab2;->c(Lxy1;Lmf0;)Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    invoke-static {p1, p0}, Lab2;->d(Lxy1;Lmf0;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final r(Lxy1;Z)Z
    .locals 4

    .line 1
    iget-object v0, p1, Lxy1;->T:Lbz1;

    .line 2
    .line 3
    iget-object v0, v0, Lbz1;->d:Lty1;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_6

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v0, v2, :cond_6

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    if-eq v0, v3, :cond_5

    .line 17
    .line 18
    const/4 v3, 0x3

    .line 19
    if-eq v0, v3, :cond_5

    .line 20
    .line 21
    const/4 v3, 0x4

    .line 22
    if-ne v0, v3, :cond_4

    .line 23
    .line 24
    invoke-virtual {p1}, Lxy1;->q()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    if-nez p2, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget-object p2, p1, Lxy1;->T:Lbz1;

    .line 34
    .line 35
    iget-object p2, p2, Lbz1;->p:Lcb2;

    .line 36
    .line 37
    iput-boolean v2, p2, Lcb2;->H:Z

    .line 38
    .line 39
    iget-boolean p2, p1, Lxy1;->d0:Z

    .line 40
    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p1}, Lxy1;->I()Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-nez p2, :cond_2

    .line 49
    .line 50
    invoke-static {p1}, Lab2;->j(Lxy1;)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_6

    .line 55
    .line 56
    :cond_2
    invoke-virtual {p1}, Lxy1;->u()Lxy1;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    if-eqz p2, :cond_3

    .line 61
    .line 62
    invoke-virtual {p2}, Lxy1;->q()Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-ne p2, v2, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    iget-object p2, p0, Lab2;->b:Leh;

    .line 70
    .line 71
    sget-object v0, Lyt1;->p:Lyt1;

    .line 72
    .line 73
    invoke-virtual {p2, p1, v0}, Leh;->i(Lxy1;Lyt1;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    iget-boolean p0, p0, Lab2;->d:Z

    .line 77
    .line 78
    if-nez p0, :cond_6

    .line 79
    .line 80
    return v2

    .line 81
    :cond_4
    invoke-static {}, Lp61;->x()V

    .line 82
    .line 83
    .line 84
    return v1

    .line 85
    :cond_5
    new-instance v0, Lza2;

    .line 86
    .line 87
    invoke-direct {v0, p1, v1, p2}, Lza2;-><init>(Lxy1;ZZ)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lab2;->h:Lug2;

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lug2;->c(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_6
    :goto_1
    return v1
.end method

.method public final s(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lab2;->i:Lmf0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-wide v0, v0, Lmf0;->a:J

    .line 8
    .line 9
    invoke-static {v0, v1, p1, p2}, Lmf0;->b(JJ)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :goto_0
    if-nez v0, :cond_5

    .line 14
    .line 15
    iget-boolean v0, p0, Lab2;->c:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-string v0, "updateRootConstraints called while measuring"

    .line 20
    .line 21
    invoke-static {v0}, Lar1;->a(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    new-instance v0, Lmf0;

    .line 25
    .line 26
    invoke-direct {v0, p1, p2}, Lmf0;-><init>(J)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lab2;->i:Lmf0;

    .line 30
    .line 31
    iget-object p1, p0, Lab2;->a:Lxy1;

    .line 32
    .line 33
    invoke-virtual {p1}, Lxy1;->H()Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iget-object v0, p1, Lxy1;->T:Lbz1;

    .line 38
    .line 39
    if-nez p2, :cond_2

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    iget-object p2, p1, Lxy1;->u:Lxy1;

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    if-eqz p2, :cond_3

    .line 46
    .line 47
    iput-boolean v1, v0, Lbz1;->e:Z

    .line 48
    .line 49
    :cond_3
    iget-object v0, v0, Lbz1;->p:Lcb2;

    .line 50
    .line 51
    iput-boolean v1, v0, Lcb2;->H:Z

    .line 52
    .line 53
    if-eqz p2, :cond_4

    .line 54
    .line 55
    sget-object p2, Lyt1;->n:Lyt1;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    sget-object p2, Lyt1;->p:Lyt1;

    .line 59
    .line 60
    :goto_1
    iget-object p0, p0, Lab2;->b:Leh;

    .line 61
    .line 62
    invoke-virtual {p0, p1, p2}, Leh;->i(Lxy1;Lyt1;)V

    .line 63
    .line 64
    .line 65
    :cond_5
    :goto_2
    return-void
.end method

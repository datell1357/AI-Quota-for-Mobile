.class public final synthetic Ly40;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lff1;


# instance fields
.field public final synthetic n:Ldf1;

.field public final synthetic o:J


# direct methods
.method public synthetic constructor <init>(JLdf1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Ly40;->n:Ldf1;

    .line 5
    .line 6
    iput-wide p1, p0, Ly40;->o:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lpe;

    .line 2
    .line 3
    check-cast p2, Lag1;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Ly40;->n:Ldf1;

    .line 11
    .line 12
    const/4 p3, 0x0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const v0, 0x5de640dd

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Lag1;->W(I)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lz40;

    .line 22
    .line 23
    iget-wide v1, p0, Ly40;->o:J

    .line 24
    .line 25
    invoke-direct {v0, v1, v2, p1}, Lz40;-><init>(JLdf1;)V

    .line 26
    .line 27
    .line 28
    const p0, -0xe25aefa

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0, p2}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p2, p3}, Lag1;->p(Z)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const p0, 0x5de9b953

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p0}, Lag1;->W(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p3}, Lag1;->p(Z)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    :goto_0
    invoke-virtual {p2}, Lag1;->K()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    sget-object v0, Lrb0;->a:Lbx3;

    .line 54
    .line 55
    if-ne p1, v0, :cond_1

    .line 56
    .line 57
    invoke-static {p0}, Lca;->A(Ljava/lang/Object;)Lws2;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p2, p1}, Lag1;->g0(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    check-cast p1, Lpg2;

    .line 65
    .line 66
    if-eqz p0, :cond_2

    .line 67
    .line 68
    invoke-interface {p1, p0}, Lpg2;->setValue(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    sget-object p0, Lmj1;->s:Lcw;

    .line 72
    .line 73
    invoke-static {p0, p3}, Lqx;->d(Lcw;Z)Ldb2;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    iget-wide v0, p2, Lag1;->T:J

    .line 78
    .line 79
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-virtual {p2}, Lag1;->l()Lhu2;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    sget-object v2, Lkd2;->b:Lkd2;

    .line 88
    .line 89
    invoke-static {p2, v2}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    sget-object v3, Llb0;->c:Lkb0;

    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    sget-object v3, Lkb0;->b:Lic0;

    .line 99
    .line 100
    invoke-virtual {p2}, Lag1;->Z()V

    .line 101
    .line 102
    .line 103
    iget-boolean v4, p2, Lag1;->S:Z

    .line 104
    .line 105
    if-eqz v4, :cond_3

    .line 106
    .line 107
    invoke-virtual {p2, v3}, Lag1;->k(Lne1;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    invoke-virtual {p2}, Lag1;->j0()V

    .line 112
    .line 113
    .line 114
    :goto_1
    sget-object v3, Lkb0;->f:Lfd;

    .line 115
    .line 116
    invoke-static {v3, p2, p0}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    sget-object p0, Lkb0;->e:Lfd;

    .line 120
    .line 121
    invoke-static {p0, p2, v1}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    sget-object v0, Lkb0;->g:Lfd;

    .line 129
    .line 130
    invoke-static {v0, p2, p0}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    sget-object p0, Lkb0;->h:Ll9;

    .line 134
    .line 135
    invoke-static {p2, p0}, Lht4;->y(Lag1;Lpe1;)V

    .line 136
    .line 137
    .line 138
    sget-object p0, Lkb0;->d:Lfd;

    .line 139
    .line 140
    invoke-static {p0, p2, v2}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {p1}, Ltr3;->getValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    check-cast p0, Ldf1;

    .line 148
    .line 149
    if-nez p0, :cond_4

    .line 150
    .line 151
    const p0, 0x7cd7b73f

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, p0}, Lag1;->W(I)V

    .line 155
    .line 156
    .line 157
    :goto_2
    invoke-virtual {p2, p3}, Lag1;->p(Z)V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_4
    const p1, 0x3dd56902

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, p1}, Lag1;->W(I)V

    .line 165
    .line 166
    .line 167
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-interface {p0, p2, p1}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :goto_3
    const/4 p0, 0x1

    .line 176
    invoke-virtual {p2, p0}, Lag1;->p(Z)V

    .line 177
    .line 178
    .line 179
    sget-object p0, Lt64;->a:Lt64;

    .line 180
    .line 181
    return-object p0
.end method

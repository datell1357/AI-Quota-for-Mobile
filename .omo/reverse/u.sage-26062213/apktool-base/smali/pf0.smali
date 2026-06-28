.class public final Lpf0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lqn3;
.implements Lld2;


# instance fields
.field public b:J

.field public c:Ljava/util/ArrayList;


# virtual methods
.method public final e(Ldh0;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lof0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lof0;

    .line 7
    .line 8
    iget v1, v0, Lof0;->t:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lof0;->t:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lof0;

    .line 21
    .line 22
    check-cast p1, Lfh0;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lof0;-><init>(Lpf0;Lfh0;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v0, Lof0;->r:Ljava/lang/Object;

    .line 28
    .line 29
    iget v1, v0, Lof0;->t:I

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    iget-object v0, v0, Lof0;->q:Lw33;

    .line 37
    .line 38
    :try_start_0
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0

    .line 51
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-wide v3, p0, Lpf0;->b:J

    .line 55
    .line 56
    invoke-static {v3, v4}, Lmf0;->k(J)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    new-instance p1, Lw33;

    .line 63
    .line 64
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    :try_start_1
    iput-object p1, v0, Lof0;->q:Lw33;

    .line 68
    .line 69
    iput v2, v0, Lof0;->t:I

    .line 70
    .line 71
    new-instance v1, Lo20;

    .line 72
    .line 73
    invoke-static {v0}, Ldm0;->A(Ldh0;)Ldh0;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-direct {v1, v2, v0}, Lo20;-><init>(ILdh0;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lo20;->x()V

    .line 81
    .line 82
    .line 83
    iput-object v1, p1, Lw33;->n:Ljava/lang/Object;

    .line 84
    .line 85
    iget-object v0, p0, Lpf0;->c:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lo20;->v()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    sget-object v1, Lri0;->n:Lri0;

    .line 95
    .line 96
    if-ne v0, v1, :cond_3

    .line 97
    .line 98
    return-object v1

    .line 99
    :cond_3
    move-object v0, p1

    .line 100
    :goto_1
    iget-object p1, p0, Lpf0;->c:Ljava/util/ArrayList;

    .line 101
    .line 102
    iget-object v0, v0, Lw33;->n:Ljava/lang/Object;

    .line 103
    .line 104
    invoke-static {p1}, Ln44;->O(Ljava/util/ArrayList;)Ljava/util/Collection;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :catchall_1
    move-exception v0

    .line 112
    move-object v5, v0

    .line 113
    move-object v0, p1

    .line 114
    move-object p1, v5

    .line 115
    :goto_2
    iget-object p0, p0, Lpf0;->c:Ljava/util/ArrayList;

    .line 116
    .line 117
    iget-object v0, v0, Lw33;->n:Ljava/lang/Object;

    .line 118
    .line 119
    invoke-static {p0}, Ln44;->O(Ljava/util/ArrayList;)Ljava/util/Collection;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    throw p1

    .line 126
    :cond_4
    :goto_3
    iget-wide p0, p0, Lpf0;->b:J

    .line 127
    .line 128
    new-instance v0, Lln3;

    .line 129
    .line 130
    invoke-static {p0, p1}, Lmf0;->h(J)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    sget-object v2, Lbu0;->a:Lbu0;

    .line 135
    .line 136
    const v3, 0x7fffffff

    .line 137
    .line 138
    .line 139
    if-eq v1, v3, :cond_5

    .line 140
    .line 141
    invoke-static {v1}, Lqn0;->c(I)V

    .line 142
    .line 143
    .line 144
    new-instance v4, Lau0;

    .line 145
    .line 146
    invoke-direct {v4, v1}, Lau0;-><init>(I)V

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_5
    move-object v4, v2

    .line 151
    :goto_4
    invoke-static {p0, p1}, Lmf0;->g(J)I

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    if-eq p0, v3, :cond_6

    .line 156
    .line 157
    invoke-static {p0}, Lqn0;->c(I)V

    .line 158
    .line 159
    .line 160
    new-instance v2, Lau0;

    .line 161
    .line 162
    invoke-direct {v2, p0}, Lau0;-><init>(I)V

    .line 163
    .line 164
    .line 165
    :cond_6
    invoke-direct {v0, v4, v2}, Lln3;-><init>(Lcu0;Lcu0;)V

    .line 166
    .line 167
    .line 168
    return-object v0
.end method

.method public final f(Lgb2;Lya2;J)Leb2;
    .locals 1

    .line 1
    invoke-virtual {p0, p3, p4}, Lpf0;->g(J)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, p3, p4}, Lya2;->e(J)Ldv2;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget p2, p0, Ldv2;->n:I

    .line 9
    .line 10
    iget p3, p0, Ldv2;->o:I

    .line 11
    .line 12
    new-instance p4, Le0;

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    invoke-direct {p4, p0, v0}, Le0;-><init>(Ldv2;I)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lh01;->n:Lh01;

    .line 19
    .line 20
    invoke-interface {p1, p2, p3, p0, p4}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final g(J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Lpf0;->b:J

    .line 2
    .line 3
    invoke-static {p1, p2}, Lmf0;->k(J)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lpf0;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    new-instance p2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lpf0;->c:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    const/4 p2, 0x0

    .line 29
    :goto_0
    if-ge p2, p0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    add-int/lit8 p2, p2, 0x1

    .line 36
    .line 37
    check-cast v0, Ldh0;

    .line 38
    .line 39
    sget-object v1, Lt64;->a:Lt64;

    .line 40
    .line 41
    invoke-interface {v0, v1}, Ldh0;->g(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.class public final Lua;
.super Le83;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public p:I

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lwa;


# direct methods
.method public constructor <init>(Lwa;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua;->r:Lwa;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Le83;-><init>(ILdh0;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lev3;

    .line 2
    .line 3
    check-cast p2, Ldh0;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p1}, Lua;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lua;

    .line 10
    .line 11
    sget-object p1, Lt64;->a:Lt64;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lua;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 1

    .line 1
    new-instance v0, Lua;

    .line 2
    .line 3
    iget-object p0, p0, Lua;->r:Lwa;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lua;-><init>(Lwa;Ldh0;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, v0, Lua;->q:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lua;->p:I

    .line 2
    .line 3
    sget-object v1, Lwv2;->o:Lwv2;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object v5, p0, Lua;->r:Lwa;

    .line 9
    .line 10
    const/4 v6, 0x1

    .line 11
    sget-object v7, Lri0;->n:Lri0;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    if-eq v0, v6, :cond_1

    .line 16
    .line 17
    if-ne v0, v3, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lua;->q:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lev3;

    .line 22
    .line 23
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v4

    .line 33
    :cond_1
    iget-object v0, p0, Lua;->q:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lev3;

    .line 36
    .line 37
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lua;->q:Ljava/lang/Object;

    .line 45
    .line 46
    move-object v0, p1

    .line 47
    check-cast v0, Lev3;

    .line 48
    .line 49
    iput-object v0, p0, Lua;->q:Ljava/lang/Object;

    .line 50
    .line 51
    iput v6, p0, Lua;->p:I

    .line 52
    .line 53
    invoke-static {v0, v2, v1, p0}, Lqj0;->s(Lev3;ZLwv2;Ldr;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-ne p1, v7, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    :goto_0
    check-cast p1, Lzv2;

    .line 61
    .line 62
    iget-wide v8, p1, Lzv2;->a:J

    .line 63
    .line 64
    iput-wide v8, v5, Lwa;->h:J

    .line 65
    .line 66
    iget-wide v8, p1, Lzv2;->c:J

    .line 67
    .line 68
    iput-wide v8, v5, Lwa;->b:J

    .line 69
    .line 70
    :cond_4
    iput-object v0, p0, Lua;->q:Ljava/lang/Object;

    .line 71
    .line 72
    iput v3, p0, Lua;->p:I

    .line 73
    .line 74
    invoke-virtual {v0, v1, p0}, Lev3;->a(Lwv2;Ldr;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-ne p1, v7, :cond_5

    .line 79
    .line 80
    :goto_1
    return-object v7

    .line 81
    :cond_5
    :goto_2
    check-cast p1, Lvv2;

    .line 82
    .line 83
    iget-object p1, p1, Lvv2;->a:Ljava/util/List;

    .line 84
    .line 85
    new-instance v6, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    move v9, v2

    .line 99
    :goto_3
    if-ge v9, v8, :cond_7

    .line 100
    .line 101
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    move-object v11, v10

    .line 106
    check-cast v11, Lzv2;

    .line 107
    .line 108
    iget-boolean v11, v11, Lzv2;->d:Z

    .line 109
    .line 110
    if-eqz v11, :cond_6

    .line 111
    .line 112
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    move v8, v2

    .line 123
    :goto_4
    if-ge v8, p1, :cond_9

    .line 124
    .line 125
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    move-object v10, v9

    .line 130
    check-cast v10, Lzv2;

    .line 131
    .line 132
    iget-wide v10, v10, Lzv2;->a:J

    .line 133
    .line 134
    iget-wide v12, v5, Lwa;->h:J

    .line 135
    .line 136
    invoke-static {v10, v11, v12, v13}, Lqj0;->G(JJ)Z

    .line 137
    .line 138
    .line 139
    move-result v10

    .line 140
    if-eqz v10, :cond_8

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_9
    move-object v9, v4

    .line 147
    :goto_5
    check-cast v9, Lzv2;

    .line 148
    .line 149
    if-nez v9, :cond_a

    .line 150
    .line 151
    invoke-static {v6}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    move-object v9, p1

    .line 156
    check-cast v9, Lzv2;

    .line 157
    .line 158
    :cond_a
    if-eqz v9, :cond_b

    .line 159
    .line 160
    iget-wide v10, v9, Lzv2;->a:J

    .line 161
    .line 162
    iput-wide v10, v5, Lwa;->h:J

    .line 163
    .line 164
    iget-wide v8, v9, Lzv2;->c:J

    .line 165
    .line 166
    iput-wide v8, v5, Lwa;->b:J

    .line 167
    .line 168
    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_4

    .line 173
    .line 174
    const-wide/16 p0, -0x1

    .line 175
    .line 176
    iput-wide p0, v5, Lwa;->h:J

    .line 177
    .line 178
    sget-object p0, Lt64;->a:Lt64;

    .line 179
    .line 180
    return-object p0
.end method

.class public final Lti2;
.super Lcf0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final f:Lmk2;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lmk2;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-class v0, Lwi2;

    .line 8
    .line 9
    invoke-static {v0}, Ltv4;->x(Ljava/lang/Class;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lmk2;->b(Ljava/lang/String;)Llk2;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, v0, v1}, Lcf0;-><init>(Llk2;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lti2;->h:Ljava/util/ArrayList;

    .line 27
    .line 28
    iput-object p1, p0, Lti2;->f:Lmk2;

    .line 29
    .line 30
    iput-object p2, p0, Lti2;->g:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final g()Lsi2;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super {v0}, Lcf0;->a()Lqi2;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lsi2;

    .line 8
    .line 9
    iget-object v2, v0, Lti2;->h:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v3, v1, Lsi2;->s:Lvi2;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/4 v6, 0x0

    .line 24
    :goto_0
    const/4 v7, 0x0

    .line 25
    if-ge v6, v4, :cond_9

    .line 26
    .line 27
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    add-int/lit8 v6, v6, 0x1

    .line 32
    .line 33
    check-cast v8, Lqi2;

    .line 34
    .line 35
    if-nez v8, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v9, v3, Lvi2;->f:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v9, Lmq3;

    .line 41
    .line 42
    iget-object v10, v3, Lvi2;->e:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v10, Lsi2;

    .line 45
    .line 46
    iget-object v11, v10, Lqi2;->o:Lgg;

    .line 47
    .line 48
    iget-object v12, v8, Lqi2;->o:Lgg;

    .line 49
    .line 50
    iget v13, v12, Lgg;->a:I

    .line 51
    .line 52
    iget-object v14, v12, Lgg;->e:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v14, Ljava/lang/String;

    .line 55
    .line 56
    if-nez v13, :cond_2

    .line 57
    .line 58
    if-eqz v14, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const-string v0, "Destinations must have an id or route. Call setId(), setRoute(), or include an android:id or app:route in your navigation XML."

    .line 62
    .line 63
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v7

    .line 67
    :cond_2
    :goto_1
    iget-object v15, v11, Lgg;->e:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v15, Ljava/lang/String;

    .line 70
    .line 71
    const-string v5, "Destination "

    .line 72
    .line 73
    if-eqz v15, :cond_4

    .line 74
    .line 75
    invoke-static {v14, v15}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v14

    .line 79
    if-nez v14, :cond_3

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    const-string v0, " cannot have the same route as graph "

    .line 83
    .line 84
    invoke-static {v5, v8, v0, v10}, Lp61;->t(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-object v7

    .line 88
    :cond_4
    :goto_2
    iget v11, v11, Lgg;->a:I

    .line 89
    .line 90
    if-eq v13, v11, :cond_8

    .line 91
    .line 92
    invoke-virtual {v9, v13}, Lmq3;->c(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Lqi2;

    .line 97
    .line 98
    if-ne v5, v8, :cond_5

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_5
    iget-object v11, v8, Lqi2;->p:Lsi2;

    .line 102
    .line 103
    if-nez v11, :cond_7

    .line 104
    .line 105
    if-eqz v5, :cond_6

    .line 106
    .line 107
    iput-object v7, v5, Lqi2;->p:Lsi2;

    .line 108
    .line 109
    :cond_6
    iput-object v10, v8, Lqi2;->p:Lsi2;

    .line 110
    .line 111
    iget v5, v12, Lgg;->a:I

    .line 112
    .line 113
    invoke-virtual {v9, v5, v8}, Lmq3;->e(ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_7
    const-string v0, "Destination already has a parent set. Call NavGraph.remove() to remove the previous parent."

    .line 118
    .line 119
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-object v7

    .line 123
    :cond_8
    const-string v0, " cannot have the same id as graph "

    .line 124
    .line 125
    invoke-static {v5, v8, v0, v10}, Lp61;->t(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    return-object v7

    .line 129
    :cond_9
    iget-object v2, v0, Lti2;->g:Ljava/lang/String;

    .line 130
    .line 131
    if-nez v2, :cond_b

    .line 132
    .line 133
    iget-object v0, v0, Lcf0;->b:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v0, Ljava/lang/String;

    .line 136
    .line 137
    if-eqz v0, :cond_a

    .line 138
    .line 139
    const-string v0, "You must set a start destination route"

    .line 140
    .line 141
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-object v7

    .line 145
    :cond_a
    const-string v0, "You must set a start destination id"

    .line 146
    .line 147
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    return-object v7

    .line 151
    :cond_b
    iget-object v0, v3, Lvi2;->e:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v0, Lsi2;

    .line 154
    .line 155
    if-nez v2, :cond_c

    .line 156
    .line 157
    const/4 v5, 0x0

    .line 158
    goto :goto_3

    .line 159
    :cond_c
    iget-object v4, v0, Lqi2;->o:Lgg;

    .line 160
    .line 161
    iget-object v4, v4, Lgg;->e:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v4, Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-nez v4, :cond_e

    .line 170
    .line 171
    invoke-static {v2}, Lzs3;->I0(Ljava/lang/CharSequence;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-nez v0, :cond_d

    .line 176
    .line 177
    sget v0, Lqi2;->r:I

    .line 178
    .line 179
    const-string v0, "android-app://androidx.navigation/"

    .line 180
    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    :goto_3
    iput v5, v3, Lvi2;->b:I

    .line 190
    .line 191
    iput-object v2, v3, Lvi2;->d:Ljava/lang/String;

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_d
    const-string v0, "Cannot have an empty start destination route"

    .line 195
    .line 196
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_e
    const-string v3, "Start destination "

    .line 201
    .line 202
    const-string v4, " cannot use the same route as the graph "

    .line 203
    .line 204
    invoke-static {v3, v2, v4, v0}, Lp61;->t(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    :goto_4
    return-object v1
.end method

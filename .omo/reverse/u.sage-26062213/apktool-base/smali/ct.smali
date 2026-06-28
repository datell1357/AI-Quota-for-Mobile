.class public final Lct;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lb81;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lpt;


# direct methods
.method public synthetic constructor <init>(Lpt;I)V
    .locals 0

    .line 1
    iput p2, p0, Lct;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lct;->o:Lpt;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ldh0;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p2, Lgt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lgt;

    .line 7
    .line 8
    iget v1, v0, Lgt;->u:I

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
    iput v1, v0, Lgt;->u:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lgt;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lgt;-><init>(Lct;Ldh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lgt;->s:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lgt;->u:I

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x1

    .line 32
    sget-object v5, Lt64;->a:Lt64;

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    iget-object p0, p0, Lct;->o:Lpt;

    .line 36
    .line 37
    sget-object v7, Lri0;->n:Lri0;

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    if-eq v1, v4, :cond_3

    .line 42
    .line 43
    if-eq v1, v3, :cond_2

    .line 44
    .line 45
    if-ne v1, v2, :cond_1

    .line 46
    .line 47
    iget-object p1, v0, Lgt;->q:Lv43;

    .line 48
    .line 49
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_6

    .line 53
    .line 54
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    return-object p0

    .line 61
    :cond_2
    iget-boolean p1, v0, Lgt;->r:Z

    .line 62
    .line 63
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    if-eqz p1, :cond_d

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_5

    .line 81
    .line 82
    goto/16 :goto_7

    .line 83
    .line 84
    :cond_5
    iput v4, v0, Lgt;->u:I

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lpt;->e(Lfh0;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    if-ne p2, v7, :cond_6

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_6
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_7

    .line 100
    .line 101
    sget-object p0, Lez3;->a:Lra3;

    .line 102
    .line 103
    new-array p1, v6, [Ljava/lang/Object;

    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    return-object v5

    .line 112
    :cond_7
    iput-boolean p1, v0, Lgt;->r:Z

    .line 113
    .line 114
    iput v3, v0, Lgt;->u:I

    .line 115
    .line 116
    invoke-virtual {p0}, Lpt;->k()Lur3;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-static {p2, v0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    if-ne p2, v7, :cond_8

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_8
    :goto_2
    check-cast p2, Ld84;

    .line 128
    .line 129
    sget-object v1, Ln43;->b:Ln43;

    .line 130
    .line 131
    if-eqz p2, :cond_9

    .line 132
    .line 133
    move-object v3, v1

    .line 134
    goto :goto_3

    .line 135
    :cond_9
    sget-object v3, Lt43;->b:Lt43;

    .line 136
    .line 137
    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_b

    .line 142
    .line 143
    if-eqz p2, :cond_a

    .line 144
    .line 145
    invoke-virtual {p2}, Ld84;->b()J

    .line 146
    .line 147
    .line 148
    move-result-wide v8

    .line 149
    goto :goto_4

    .line 150
    :cond_a
    const-wide/16 v8, 0x0

    .line 151
    .line 152
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 153
    .line 154
    .line 155
    move-result-wide v10

    .line 156
    sub-long/2addr v10, v8

    .line 157
    const-wide/32 v8, 0xea60

    .line 158
    .line 159
    .line 160
    cmp-long p2, v10, v8

    .line 161
    .line 162
    if-gez p2, :cond_b

    .line 163
    .line 164
    sget-object p0, Lez3;->a:Lra3;

    .line 165
    .line 166
    new-array p1, v6, [Ljava/lang/Object;

    .line 167
    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    return-object v5

    .line 175
    :cond_b
    sget-object p2, Lez3;->a:Lra3;

    .line 176
    .line 177
    new-array v1, v6, [Ljava/lang/Object;

    .line 178
    .line 179
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    invoke-static {v1}, Lra3;->h([Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    iput-object v3, v0, Lgt;->q:Lv43;

    .line 186
    .line 187
    iput-boolean p1, v0, Lgt;->r:Z

    .line 188
    .line 189
    iput v2, v0, Lgt;->u:I

    .line 190
    .line 191
    const-wide/16 p1, 0x1f4

    .line 192
    .line 193
    invoke-static {p1, p2, v0}, Lzf5;->A(JLdh0;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    if-ne p1, v7, :cond_c

    .line 198
    .line 199
    :goto_5
    return-object v7

    .line 200
    :cond_c
    move-object p1, v3

    .line 201
    :goto_6
    invoke-virtual {p0, p1}, Lpt;->n(Lv43;)V

    .line 202
    .line 203
    .line 204
    return-object v5

    .line 205
    :cond_d
    :goto_7
    sget-object p0, Lez3;->a:Lra3;

    .line 206
    .line 207
    new-array p1, v6, [Ljava/lang/Object;

    .line 208
    .line 209
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    invoke-static {p1}, Lra3;->m([Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    return-object v5
.end method

.method public final m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lct;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lct;->o:Lpt;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Lt64;

    .line 12
    .line 13
    sget-object p0, Lez3;->a:Lra3;

    .line 14
    .line 15
    invoke-virtual {v3}, Lpt;->j()Ly84;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    new-array p1, v2, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, v3, Lpt;->a:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v3}, Lpt;->j()Ly84;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p0, p1}, Lzf5;->X(Landroid/content/Context;Ly84;)V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    invoke-virtual {v3}, Lpt;->l()Lps;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    sget-object p1, Lps;->i:Lrx2;

    .line 53
    .line 54
    invoke-virtual {p0}, Lps;->a()Llm0;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    new-instance p1, Lns;

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-direct {p1, v2, v0, v0}, Lns;-><init>(ZLjava/lang/String;Ldh0;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p0, p1, p2}, Lht4;->o(Llm0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    sget-object p1, Lri0;->n:Lri0;

    .line 69
    .line 70
    if-ne p0, p1, :cond_0

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    move-object p0, v1

    .line 74
    :goto_0
    if-ne p0, p1, :cond_1

    .line 75
    .line 76
    move-object v1, p0

    .line 77
    :cond_1
    return-object v1

    .line 78
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p0, p1, p2}, Lct;->a(Ljava/lang/String;Ldh0;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    iget-object p1, v3, Lpt;->a:Landroid/content/Context;

    .line 92
    .line 93
    if-eqz p0, :cond_2

    .line 94
    .line 95
    invoke-virtual {v3}, Lpt;->j()Ly84;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {p1, p0}, Lbi4;->G(Landroid/content/Context;Ly84;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_2
    invoke-virtual {v3}, Lpt;->j()Ly84;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-static {p1}, Leg4;->c(Landroid/content/Context;)Leg4;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    sget-object p2, Ly84;->r:Ly84;

    .line 118
    .line 119
    if-ne p0, p2, :cond_3

    .line 120
    .line 121
    const-string p2, "calendar_sync_periodic"

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 129
    .line 130
    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    const-string v0, "calendar_sync_periodic_"

    .line 138
    .line 139
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    :goto_1
    iget-object v0, p1, Leg4;->b:Lmd0;

    .line 144
    .line 145
    iget-object v0, v0, Lmd0;->m:Lqv3;

    .line 146
    .line 147
    const-string v3, "CancelWorkByName_"

    .line 148
    .line 149
    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    iget-object v4, p1, Leg4;->d:Lqd1;

    .line 154
    .line 155
    iget-object v4, v4, Lqd1;->o:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v4, Lji3;

    .line 158
    .line 159
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    new-instance v5, Lh4;

    .line 163
    .line 164
    const/4 v6, 0x6

    .line 165
    invoke-direct {v5, v6, p2, p1}, Lh4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v0, v3, v4, v5}, Lmt1;->N(Lqv3;Ljava/lang/String;Ljava/util/concurrent/Executor;Lne1;)Lw13;

    .line 169
    .line 170
    .line 171
    sget-object p1, Lez3;->a:Lra3;

    .line 172
    .line 173
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    new-array p0, v2, [Ljava/lang/Object;

    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-static {p0}, Lra3;->c([Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :goto_2
    return-object v1

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

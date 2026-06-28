.class public final Luf3;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:Ljava/lang/Object;

.field public synthetic u:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;JLdh0;I)V
    .locals 0

    .line 1
    iput p5, p0, Luf3;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Luf3;->t:Ljava/lang/Object;

    .line 4
    .line 5
    iput-wide p2, p0, Luf3;->u:J

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lbv3;-><init>(ILdh0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lwf3;Ldh0;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Luf3;->r:I

    .line 12
    iput-object p1, p0, Luf3;->t:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Luf3;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lqi0;

    .line 9
    .line 10
    check-cast p2, Ldh0;

    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Luf3;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Luf3;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Luf3;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lgo2;

    .line 24
    .line 25
    iget-wide v2, p1, Lgo2;->a:J

    .line 26
    .line 27
    check-cast p2, Ldh0;

    .line 28
    .line 29
    new-instance p1, Luf3;

    .line 30
    .line 31
    iget-object p0, p0, Luf3;->t:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p0, Lwf3;

    .line 34
    .line 35
    invoke-direct {p1, p0, p2}, Luf3;-><init>(Lwf3;Ldh0;)V

    .line 36
    .line 37
    .line 38
    iput-wide v2, p1, Luf3;->u:J

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Luf3;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_1
    check-cast p1, Lqi0;

    .line 46
    .line 47
    check-cast p2, Ldh0;

    .line 48
    .line 49
    invoke-virtual {p0, p2, p1}, Luf3;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Luf3;

    .line 54
    .line 55
    invoke-virtual {p0, v1}, Luf3;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :pswitch_2
    check-cast p1, Lqi0;

    .line 61
    .line 62
    check-cast p2, Ldh0;

    .line 63
    .line 64
    invoke-virtual {p0, p2, p1}, Luf3;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Luf3;

    .line 69
    .line 70
    invoke-virtual {p0, v1}, Luf3;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :pswitch_3
    check-cast p1, Lqi0;

    .line 76
    .line 77
    check-cast p2, Ldh0;

    .line 78
    .line 79
    invoke-virtual {p0, p2, p1}, Luf3;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    check-cast p0, Luf3;

    .line 84
    .line 85
    invoke-virtual {p0, v1}, Luf3;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 9

    .line 1
    iget v0, p0, Luf3;->r:I

    .line 2
    .line 3
    iget-object v1, p0, Luf3;->t:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v2, Luf3;

    .line 9
    .line 10
    move-object v3, v1

    .line 11
    check-cast v3, Lbd;

    .line 12
    .line 13
    iget-wide v4, p0, Luf3;->u:J

    .line 14
    .line 15
    const/4 v7, 0x4

    .line 16
    move-object v6, p1

    .line 17
    invoke-direct/range {v2 .. v7}, Luf3;-><init>(Ljava/lang/Object;JLdh0;I)V

    .line 18
    .line 19
    .line 20
    return-object v2

    .line 21
    :pswitch_0
    move-object v7, p1

    .line 22
    new-instance p0, Luf3;

    .line 23
    .line 24
    check-cast v1, Lwf3;

    .line 25
    .line 26
    invoke-direct {p0, v1, v7}, Luf3;-><init>(Lwf3;Ldh0;)V

    .line 27
    .line 28
    .line 29
    check-cast p2, Lgo2;

    .line 30
    .line 31
    iget-wide p1, p2, Lgo2;->a:J

    .line 32
    .line 33
    iput-wide p1, p0, Luf3;->u:J

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_1
    move-object v7, p1

    .line 37
    new-instance v3, Luf3;

    .line 38
    .line 39
    move-object v4, v1

    .line 40
    check-cast v4, Lwf3;

    .line 41
    .line 42
    iget-wide v5, p0, Luf3;->u:J

    .line 43
    .line 44
    const/4 v8, 0x2

    .line 45
    invoke-direct/range {v3 .. v8}, Luf3;-><init>(Ljava/lang/Object;JLdh0;I)V

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :pswitch_2
    move-object v7, p1

    .line 50
    new-instance v3, Luf3;

    .line 51
    .line 52
    move-object v4, v1

    .line 53
    check-cast v4, Lwf3;

    .line 54
    .line 55
    iget-wide v5, p0, Luf3;->u:J

    .line 56
    .line 57
    const/4 v8, 0x1

    .line 58
    invoke-direct/range {v3 .. v8}, Luf3;-><init>(Ljava/lang/Object;JLdh0;I)V

    .line 59
    .line 60
    .line 61
    return-object v3

    .line 62
    :pswitch_3
    move-object v7, p1

    .line 63
    new-instance v3, Luf3;

    .line 64
    .line 65
    move-object v4, v1

    .line 66
    check-cast v4, Lwf3;

    .line 67
    .line 68
    iget-wide v5, p0, Luf3;->u:J

    .line 69
    .line 70
    const/4 v8, 0x0

    .line 71
    invoke-direct/range {v3 .. v8}, Luf3;-><init>(Ljava/lang/Object;JLdh0;I)V

    .line 72
    .line 73
    .line 74
    return-object v3

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Luf3;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object v2, p0, Luf3;->t:Ljava/lang/Object;

    .line 6
    .line 7
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    sget-object v4, Lri0;->n:Lri0;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget v0, p0, Luf3;->s:I

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    if-ne v0, v6, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v3}, Lk21;->n(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object v1, v5

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    check-cast v2, Lbd;

    .line 35
    .line 36
    iget-object p1, v2, Lbd;->n:Ltk2;

    .line 37
    .line 38
    iget-wide v2, p0, Luf3;->u:J

    .line 39
    .line 40
    iput v6, p0, Luf3;->s:I

    .line 41
    .line 42
    invoke-virtual {p1, v2, v3, p0}, Ltk2;->b(JLfh0;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-ne p0, v4, :cond_2

    .line 47
    .line 48
    move-object v1, v4

    .line 49
    :cond_2
    :goto_0
    return-object v1

    .line 50
    :pswitch_0
    iget v0, p0, Luf3;->s:I

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    if-ne v0, v6, :cond_3

    .line 55
    .line 56
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-static {v3}, Lk21;->n(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    move-object p1, v5

    .line 64
    goto :goto_1

    .line 65
    :cond_4
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-wide v0, p0, Luf3;->u:J

    .line 69
    .line 70
    check-cast v2, Lwf3;

    .line 71
    .line 72
    iget-object p1, v2, Lwf3;->a0:Ldg3;

    .line 73
    .line 74
    iput v6, p0, Luf3;->s:I

    .line 75
    .line 76
    invoke-static {p1, v0, v1, p0}, Lrf3;->a(Ldg3;JLfh0;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-ne p1, v4, :cond_5

    .line 81
    .line 82
    move-object p1, v4

    .line 83
    :cond_5
    :goto_1
    return-object p1

    .line 84
    :pswitch_1
    iget v0, p0, Luf3;->s:I

    .line 85
    .line 86
    if-eqz v0, :cond_7

    .line 87
    .line 88
    if-ne v0, v6, :cond_6

    .line 89
    .line 90
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_6
    invoke-static {v3}, Lk21;->n(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    move-object v1, v5

    .line 98
    goto :goto_2

    .line 99
    :cond_7
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    check-cast v2, Lwf3;

    .line 103
    .line 104
    iget-object p1, v2, Lwf3;->a0:Ldg3;

    .line 105
    .line 106
    iget-wide v2, p0, Luf3;->u:J

    .line 107
    .line 108
    iput v6, p0, Luf3;->s:I

    .line 109
    .line 110
    invoke-virtual {p1, v2, v3, v6, p0}, Ldg3;->c(JZLbv3;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    if-ne p0, v4, :cond_8

    .line 115
    .line 116
    move-object v1, v4

    .line 117
    :cond_8
    :goto_2
    return-object v1

    .line 118
    :pswitch_2
    iget v0, p0, Luf3;->s:I

    .line 119
    .line 120
    if-eqz v0, :cond_a

    .line 121
    .line 122
    if-ne v0, v6, :cond_9

    .line 123
    .line 124
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_9
    invoke-static {v3}, Lk21;->n(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    move-object v1, v5

    .line 132
    goto :goto_3

    .line 133
    :cond_a
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    check-cast v2, Lwf3;

    .line 137
    .line 138
    iget-object p1, v2, Lwf3;->a0:Ldg3;

    .line 139
    .line 140
    iget-wide v2, p0, Luf3;->u:J

    .line 141
    .line 142
    iput v6, p0, Luf3;->s:I

    .line 143
    .line 144
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p1, v2, v3, v0, p0}, Ldg3;->c(JZLbv3;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    if-ne p0, v4, :cond_b

    .line 150
    .line 151
    move-object v1, v4

    .line 152
    :cond_b
    :goto_3
    return-object v1

    .line 153
    :pswitch_3
    iget v0, p0, Luf3;->s:I

    .line 154
    .line 155
    if-eqz v0, :cond_d

    .line 156
    .line 157
    if-ne v0, v6, :cond_c

    .line 158
    .line 159
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_c
    invoke-static {v3}, Lk21;->n(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    move-object v1, v5

    .line 167
    goto :goto_4

    .line 168
    :cond_d
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    check-cast v2, Lwf3;

    .line 172
    .line 173
    iget-object p1, v2, Lwf3;->a0:Ldg3;

    .line 174
    .line 175
    new-instance v0, Lls;

    .line 176
    .line 177
    iget-wide v2, p0, Luf3;->u:J

    .line 178
    .line 179
    invoke-direct {v0, v2, v3, v5, v6}, Lls;-><init>(JLdh0;I)V

    .line 180
    .line 181
    .line 182
    iput v6, p0, Luf3;->s:I

    .line 183
    .line 184
    sget-object v2, Lxg2;->o:Lxg2;

    .line 185
    .line 186
    invoke-virtual {p1, v2, v0, p0}, Ldg3;->g(Lxg2;Ldf1;Lfh0;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    if-ne p0, v4, :cond_e

    .line 191
    .line 192
    move-object v1, v4

    .line 193
    :cond_e
    :goto_4
    return-object v1

    .line 194
    nop

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Lrd;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public t:Ljava/lang/Object;

.field public u:Ljava/lang/Object;

.field public v:Ljava/lang/Object;

.field public w:Ljava/lang/Object;

.field public final synthetic x:Ljava/lang/Object;

.field public final synthetic y:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V
    .locals 0

    .line 16
    iput p4, p0, Lrd;->r:I

    iput-object p1, p0, Lrd;->x:Ljava/lang/Object;

    iput-object p2, p0, Lrd;->y:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V
    .locals 0

    .line 1
    iput p6, p0, Lrd;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Lrd;->v:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lrd;->w:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lrd;->x:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lrd;->y:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p5}, Lbv3;-><init>(ILdh0;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lv42;Lct2;Log4;Ldh0;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lrd;->r:I

    .line 17
    iput-object p1, p0, Lrd;->w:Ljava/lang/Object;

    iput-object p2, p0, Lrd;->x:Ljava/lang/Object;

    iput-object p3, p0, Lrd;->y:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lrd;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lvl2;

    .line 9
    .line 10
    check-cast p2, Ldh0;

    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Lrd;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lrd;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lrd;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lqi0;

    .line 24
    .line 25
    check-cast p2, Ldh0;

    .line 26
    .line 27
    invoke-virtual {p0, p2, p1}, Lrd;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lrd;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lrd;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p2, Ldh0;

    .line 39
    .line 40
    invoke-virtual {p0, p2, p1}, Lrd;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lrd;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lrd;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_2
    check-cast p1, Lqi0;

    .line 52
    .line 53
    check-cast p2, Ldh0;

    .line 54
    .line 55
    invoke-virtual {p0, p2, p1}, Lrd;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Lrd;

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Lrd;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :pswitch_3
    check-cast p1, Lqi0;

    .line 67
    .line 68
    check-cast p2, Ldh0;

    .line 69
    .line 70
    invoke-virtual {p0, p2, p1}, Lrd;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Lrd;

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Lrd;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :pswitch_4
    check-cast p1, Lqi0;

    .line 82
    .line 83
    check-cast p2, Ldh0;

    .line 84
    .line 85
    invoke-virtual {p0, p2, p1}, Lrd;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    check-cast p0, Lrd;

    .line 90
    .line 91
    invoke-virtual {p0, v1}, Lrd;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 11

    .line 1
    iget v0, p0, Lrd;->r:I

    .line 2
    .line 3
    iget-object v1, p0, Lrd;->y:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lrd;->x:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v3, Lrd;

    .line 11
    .line 12
    iget-object v0, p0, Lrd;->v:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v4, v0

    .line 15
    check-cast v4, Lw33;

    .line 16
    .line 17
    iget-object p0, p0, Lrd;->w:Ljava/lang/Object;

    .line 18
    .line 19
    move-object v5, p0

    .line 20
    check-cast v5, Lol2;

    .line 21
    .line 22
    move-object v6, v2

    .line 23
    check-cast v6, Lw33;

    .line 24
    .line 25
    move-object v7, v1

    .line 26
    check-cast v7, Lsl2;

    .line 27
    .line 28
    const/4 v9, 0x5

    .line 29
    move-object v8, p1

    .line 30
    invoke-direct/range {v3 .. v9}, Lrd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 31
    .line 32
    .line 33
    iput-object p2, v3, Lrd;->u:Ljava/lang/Object;

    .line 34
    .line 35
    return-object v3

    .line 36
    :pswitch_0
    move-object v8, p1

    .line 37
    new-instance p0, Lrd;

    .line 38
    .line 39
    check-cast v2, Leh2;

    .line 40
    .line 41
    check-cast v1, Lpe1;

    .line 42
    .line 43
    const/4 p1, 0x4

    .line 44
    invoke-direct {p0, v2, v1, v8, p1}, Lrd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Lrd;->w:Ljava/lang/Object;

    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_1
    move-object v8, p1

    .line 51
    new-instance p0, Lrd;

    .line 52
    .line 53
    check-cast v2, Ljava/util/List;

    .line 54
    .line 55
    check-cast v1, Ljava/util/ArrayList;

    .line 56
    .line 57
    const/4 p1, 0x3

    .line 58
    invoke-direct {p0, v2, v1, v8, p1}, Lrd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 59
    .line 60
    .line 61
    iput-object p2, p0, Lrd;->w:Ljava/lang/Object;

    .line 62
    .line 63
    return-object p0

    .line 64
    :pswitch_2
    move-object v8, p1

    .line 65
    new-instance p1, Lrd;

    .line 66
    .line 67
    iget-object p0, p0, Lrd;->w:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Lv42;

    .line 70
    .line 71
    check-cast v2, Lct2;

    .line 72
    .line 73
    check-cast v1, Log4;

    .line 74
    .line 75
    invoke-direct {p1, p0, v2, v1, v8}, Lrd;-><init>(Lv42;Lct2;Log4;Ldh0;)V

    .line 76
    .line 77
    .line 78
    iput-object p2, p1, Lrd;->u:Ljava/lang/Object;

    .line 79
    .line 80
    return-object p1

    .line 81
    :pswitch_3
    move-object v8, p1

    .line 82
    new-instance p0, Lrd;

    .line 83
    .line 84
    check-cast v2, Lu/sage/a;

    .line 85
    .line 86
    check-cast v1, Ld84;

    .line 87
    .line 88
    const/4 p1, 0x1

    .line 89
    invoke-direct {p0, v2, v1, v8, p1}, Lrd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 90
    .line 91
    .line 92
    return-object p0

    .line 93
    :pswitch_4
    move-object v8, p1

    .line 94
    new-instance v4, Lrd;

    .line 95
    .line 96
    iget-object p1, p0, Lrd;->v:Ljava/lang/Object;

    .line 97
    .line 98
    move-object v5, p1

    .line 99
    check-cast v5, Ln30;

    .line 100
    .line 101
    iget-object p0, p0, Lrd;->w:Ljava/lang/Object;

    .line 102
    .line 103
    move-object v6, p0

    .line 104
    check-cast v6, Lpd;

    .line 105
    .line 106
    move-object v7, v2

    .line 107
    check-cast v7, Lpg2;

    .line 108
    .line 109
    check-cast v1, Lpg2;

    .line 110
    .line 111
    const/4 v10, 0x0

    .line 112
    move-object v9, v8

    .line 113
    move-object v8, v1

    .line 114
    invoke-direct/range {v4 .. v10}, Lrd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 115
    .line 116
    .line 117
    iput-object p2, v4, Lrd;->u:Ljava/lang/Object;

    .line 118
    .line 119
    return-object v4

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lrd;->r:I

    .line 4
    .line 5
    sget-object v2, Lt64;->a:Lt64;

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x2

    .line 10
    iget-object v6, v0, Lrd;->y:Ljava/lang/Object;

    .line 11
    .line 12
    const-string v7, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    sget-object v8, Lri0;->n:Lri0;

    .line 15
    .line 16
    iget-object v9, v0, Lrd;->x:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v10, 0x1

    .line 19
    const/4 v11, 0x0

    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v9, Lw33;

    .line 24
    .line 25
    iget-object v1, v0, Lrd;->v:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Lw33;

    .line 28
    .line 29
    iget-object v2, v0, Lrd;->w:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Lol2;

    .line 32
    .line 33
    iget v3, v0, Lrd;->s:I

    .line 34
    .line 35
    sget-object v4, Lkm0;->q:Lkm0;

    .line 36
    .line 37
    if-eqz v3, :cond_3

    .line 38
    .line 39
    if-eq v3, v10, :cond_2

    .line 40
    .line 41
    if-ne v3, v5, :cond_0

    .line 42
    .line 43
    iget-object v0, v0, Lrd;->u:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lvl2;

    .line 46
    .line 47
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    move-object v3, v0

    .line 51
    move-object/from16 v0, p1

    .line 52
    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_0
    invoke-static {v7}, Lk21;->n(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    move-object v8, v11

    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_2
    iget-object v3, v0, Lrd;->t:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v3, Lw33;

    .line 64
    .line 65
    iget-object v6, v0, Lrd;->u:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v6, Lvl2;

    .line 68
    .line 69
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    move-object v7, v3

    .line 73
    move-object v3, v6

    .line 74
    move-object/from16 v6, p1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object v3, v0, Lrd;->u:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v3, Lvl2;

    .line 83
    .line 84
    iget-object v6, v1, Lw33;->n:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v6, Lk23;

    .line 87
    .line 88
    iget-object v7, v9, Lw33;->n:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v7, Lvl2;

    .line 91
    .line 92
    iput-object v3, v0, Lrd;->u:Ljava/lang/Object;

    .line 93
    .line 94
    iput-object v1, v0, Lrd;->t:Ljava/lang/Object;

    .line 95
    .line 96
    iput v10, v0, Lrd;->s:I

    .line 97
    .line 98
    invoke-static {v2, v6, v7, v3, v0}, Lol2;->d(Lol2;Lk23;Lvl2;Lvl2;Lfh0;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    if-ne v6, v8, :cond_4

    .line 103
    .line 104
    goto/16 :goto_3

    .line 105
    .line 106
    :cond_4
    move-object v7, v1

    .line 107
    :goto_1
    iput-object v6, v7, Lw33;->n:Ljava/lang/Object;

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-static {v3}, Lol2;->h(Lvl2;)V

    .line 113
    .line 114
    .line 115
    iget-object v6, v1, Lw33;->n:Ljava/lang/Object;

    .line 116
    .line 117
    if-eqz v6, :cond_6

    .line 118
    .line 119
    check-cast v6, Lk23;

    .line 120
    .line 121
    invoke-virtual {v2, v6}, Lol2;->j(Lk23;)Lvl2;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iput-object v0, v9, Lw33;->n:Ljava/lang/Object;

    .line 126
    .line 127
    new-instance v8, Lzp3;

    .line 128
    .line 129
    iget-object v0, v1, Lw33;->n:Ljava/lang/Object;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    check-cast v0, Lk23;

    .line 135
    .line 136
    invoke-virtual {v2, v0}, Lol2;->i(Lk23;)Lg51;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v1, v2, Lol2;->a:Ljava/lang/String;

    .line 141
    .line 142
    iget-object v2, v9, Lw33;->n:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v2, Lvl2;

    .line 145
    .line 146
    if-eqz v2, :cond_5

    .line 147
    .line 148
    iget-object v2, v2, Lvl2;->d:Lpl2;

    .line 149
    .line 150
    if-eqz v2, :cond_5

    .line 151
    .line 152
    invoke-virtual {v2}, Lpl2;->a()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    :cond_5
    invoke-static {v1, v11}, Lol2;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-direct {v8, v0, v1, v4}, Lzp3;-><init>(Lpo1;Ljava/lang/String;Lkm0;)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_6
    iget-object v1, v3, Lvl2;->e:Ldq3;

    .line 165
    .line 166
    if-eqz v1, :cond_8

    .line 167
    .line 168
    iput-object v3, v0, Lrd;->u:Ljava/lang/Object;

    .line 169
    .line 170
    iput-object v11, v0, Lrd;->t:Ljava/lang/Object;

    .line 171
    .line 172
    iput v5, v0, Lrd;->s:I

    .line 173
    .line 174
    invoke-static {v1, v0}, Lqj0;->S(Ldq3;Lfh0;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    if-ne v0, v8, :cond_7

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_7
    :goto_2
    check-cast v0, Lsy;

    .line 182
    .line 183
    iget-wide v5, v0, Lsy;->o:J

    .line 184
    .line 185
    const-wide/16 v7, 0x0

    .line 186
    .line 187
    cmp-long v1, v5, v7

    .line 188
    .line 189
    if-lez v1, :cond_1

    .line 190
    .line 191
    new-instance v8, Lzp3;

    .line 192
    .line 193
    invoke-virtual {v2}, Lol2;->e()Lr51;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    new-instance v5, Laq3;

    .line 198
    .line 199
    invoke-direct {v5, v0, v1, v11}, Laq3;-><init>(Lfz;Lr51;Lfl4;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, v2, Lol2;->a:Ljava/lang/String;

    .line 203
    .line 204
    iget-object v1, v3, Lvl2;->d:Lpl2;

    .line 205
    .line 206
    invoke-virtual {v1}, Lpl2;->a()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-static {v0, v1}, Lol2;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-direct {v8, v5, v0, v4}, Lzp3;-><init>(Lpo1;Ljava/lang/String;Lkm0;)V

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_8
    const-string v0, "body == null"

    .line 219
    .line 220
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :goto_3
    return-object v8

    .line 226
    :pswitch_0
    move-object v1, v9

    .line 227
    check-cast v1, Leh2;

    .line 228
    .line 229
    iget v2, v0, Lrd;->s:I

    .line 230
    .line 231
    if-eqz v2, :cond_b

    .line 232
    .line 233
    if-eq v2, v10, :cond_a

    .line 234
    .line 235
    if-ne v2, v5, :cond_9

    .line 236
    .line 237
    iget-object v1, v0, Lrd;->u:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v1, Leh2;

    .line 240
    .line 241
    iget-object v2, v0, Lrd;->t:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v2, Lfh2;

    .line 244
    .line 245
    iget-object v0, v0, Lrd;->w:Ljava/lang/Object;

    .line 246
    .line 247
    move-object v3, v0

    .line 248
    check-cast v3, Lbh2;

    .line 249
    .line 250
    :try_start_0
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    .line 252
    .line 253
    move-object/from16 v0, p1

    .line 254
    .line 255
    goto/16 :goto_7

    .line 256
    .line 257
    :catchall_0
    move-exception v0

    .line 258
    goto/16 :goto_a

    .line 259
    .line 260
    :cond_9
    invoke-static {v7}, Lk21;->n(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    move-object v8, v11

    .line 264
    goto/16 :goto_9

    .line 265
    .line 266
    :cond_a
    iget-object v1, v0, Lrd;->v:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v1, Leh2;

    .line 269
    .line 270
    iget-object v2, v0, Lrd;->u:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v2, Lpe1;

    .line 273
    .line 274
    iget-object v3, v0, Lrd;->t:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v3, Lfh2;

    .line 277
    .line 278
    iget-object v4, v0, Lrd;->w:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v4, Lbh2;

    .line 281
    .line 282
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    goto :goto_6

    .line 286
    :cond_b
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    iget-object v2, v0, Lrd;->w:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v2, Lqi0;

    .line 292
    .line 293
    new-instance v3, Lbh2;

    .line 294
    .line 295
    invoke-interface {v2}, Lqi0;->d()Lhi0;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    sget-object v4, Lmj1;->W:Lmj1;

    .line 300
    .line 301
    invoke-interface {v2, v4}, Lhi0;->K(Lgi0;)Lfi0;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    check-cast v2, Ltu1;

    .line 309
    .line 310
    invoke-direct {v3, v2}, Lbh2;-><init>(Ltu1;)V

    .line 311
    .line 312
    .line 313
    iget-object v2, v1, Leh2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 314
    .line 315
    :goto_4
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    move-object v12, v4

    .line 320
    check-cast v12, Lbh2;

    .line 321
    .line 322
    if-eqz v12, :cond_d

    .line 323
    .line 324
    sget-object v4, Lyg2;->n:Lyg2;

    .line 325
    .line 326
    invoke-virtual {v4, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    if-ltz v4, :cond_c

    .line 331
    .line 332
    goto :goto_5

    .line 333
    :cond_c
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 334
    .line 335
    const-string v1, "Current mutation had a higher priority"

    .line 336
    .line 337
    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    throw v0

    .line 341
    :cond_d
    :goto_5
    invoke-virtual {v2, v12, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v4

    .line 345
    if-eqz v4, :cond_14

    .line 346
    .line 347
    if-eqz v12, :cond_e

    .line 348
    .line 349
    iget-object v2, v12, Lbh2;->a:Ltu1;

    .line 350
    .line 351
    new-instance v4, Lzg2;

    .line 352
    .line 353
    const-string v7, "Mutation interrupted"

    .line 354
    .line 355
    invoke-direct {v4, v7}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-interface {v2, v4}, Ltu1;->j(Ljava/util/concurrent/CancellationException;)V

    .line 359
    .line 360
    .line 361
    :cond_e
    iget-object v2, v1, Leh2;->b:Lhh2;

    .line 362
    .line 363
    move-object v4, v6

    .line 364
    check-cast v4, Lpe1;

    .line 365
    .line 366
    iput-object v3, v0, Lrd;->w:Ljava/lang/Object;

    .line 367
    .line 368
    iput-object v2, v0, Lrd;->t:Ljava/lang/Object;

    .line 369
    .line 370
    iput-object v4, v0, Lrd;->u:Ljava/lang/Object;

    .line 371
    .line 372
    iput-object v1, v0, Lrd;->v:Ljava/lang/Object;

    .line 373
    .line 374
    iput v10, v0, Lrd;->s:I

    .line 375
    .line 376
    invoke-virtual {v2, v0}, Lhh2;->j(Lfh0;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v6

    .line 380
    if-ne v6, v8, :cond_f

    .line 381
    .line 382
    goto :goto_9

    .line 383
    :cond_f
    move-object/from16 v20, v3

    .line 384
    .line 385
    move-object v3, v2

    .line 386
    move-object v2, v4

    .line 387
    move-object/from16 v4, v20

    .line 388
    .line 389
    :goto_6
    :try_start_1
    iput-object v4, v0, Lrd;->w:Ljava/lang/Object;

    .line 390
    .line 391
    iput-object v3, v0, Lrd;->t:Ljava/lang/Object;

    .line 392
    .line 393
    iput-object v1, v0, Lrd;->u:Ljava/lang/Object;

    .line 394
    .line 395
    iput-object v11, v0, Lrd;->v:Ljava/lang/Object;

    .line 396
    .line 397
    iput v5, v0, Lrd;->s:I

    .line 398
    .line 399
    invoke-interface {v2, v0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 403
    if-ne v0, v8, :cond_10

    .line 404
    .line 405
    goto :goto_9

    .line 406
    :cond_10
    move-object v2, v3

    .line 407
    move-object v3, v4

    .line 408
    :goto_7
    :try_start_2
    iget-object v1, v1, Leh2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 409
    .line 410
    :cond_11
    invoke-virtual {v1, v3, v11}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v4

    .line 414
    if-eqz v4, :cond_12

    .line 415
    .line 416
    goto :goto_8

    .line 417
    :cond_12
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 421
    if-eq v4, v3, :cond_11

    .line 422
    .line 423
    :goto_8
    invoke-interface {v2, v11}, Lfh2;->b(Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    move-object v8, v0

    .line 427
    :goto_9
    return-object v8

    .line 428
    :catchall_1
    move-exception v0

    .line 429
    goto :goto_c

    .line 430
    :catchall_2
    move-exception v0

    .line 431
    move-object v2, v3

    .line 432
    move-object v3, v4

    .line 433
    :goto_a
    :try_start_3
    iget-object v1, v1, Leh2;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 434
    .line 435
    :goto_b
    invoke-virtual {v1, v3, v11}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v4

    .line 439
    if-nez v4, :cond_13

    .line 440
    .line 441
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    if-ne v4, v3, :cond_13

    .line 446
    .line 447
    goto :goto_b

    .line 448
    :cond_13
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 449
    :goto_c
    invoke-interface {v2, v11}, Lfh2;->b(Ljava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    throw v0

    .line 453
    :cond_14
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    if-eq v4, v12, :cond_d

    .line 458
    .line 459
    goto/16 :goto_4

    .line 460
    .line 461
    :pswitch_1
    iget v1, v0, Lrd;->s:I

    .line 462
    .line 463
    if-eqz v1, :cond_17

    .line 464
    .line 465
    if-eq v1, v10, :cond_16

    .line 466
    .line 467
    if-ne v1, v5, :cond_15

    .line 468
    .line 469
    iget-object v1, v0, Lrd;->t:Ljava/lang/Object;

    .line 470
    .line 471
    check-cast v1, Ljava/util/Iterator;

    .line 472
    .line 473
    iget-object v2, v0, Lrd;->w:Ljava/lang/Object;

    .line 474
    .line 475
    check-cast v2, Ljava/util/List;

    .line 476
    .line 477
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 478
    .line 479
    .line 480
    move-object v6, v2

    .line 481
    move-object v2, v1

    .line 482
    move-object/from16 v1, p1

    .line 483
    .line 484
    goto :goto_d

    .line 485
    :cond_15
    invoke-static {v7}, Lk21;->n(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    move-object v8, v11

    .line 489
    goto :goto_f

    .line 490
    :cond_16
    iget-object v1, v0, Lrd;->u:Ljava/lang/Object;

    .line 491
    .line 492
    iget-object v2, v0, Lrd;->v:Ljava/lang/Object;

    .line 493
    .line 494
    check-cast v2, Lgm0;

    .line 495
    .line 496
    iget-object v3, v0, Lrd;->t:Ljava/lang/Object;

    .line 497
    .line 498
    check-cast v3, Ljava/util/Iterator;

    .line 499
    .line 500
    iget-object v6, v0, Lrd;->w:Ljava/lang/Object;

    .line 501
    .line 502
    check-cast v6, Ljava/util/List;

    .line 503
    .line 504
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 505
    .line 506
    .line 507
    move-object v7, v3

    .line 508
    move-object v3, v2

    .line 509
    move-object v2, v7

    .line 510
    move-object/from16 v7, p1

    .line 511
    .line 512
    goto :goto_e

    .line 513
    :cond_17
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 514
    .line 515
    .line 516
    iget-object v1, v0, Lrd;->w:Ljava/lang/Object;

    .line 517
    .line 518
    check-cast v9, Ljava/util/List;

    .line 519
    .line 520
    check-cast v6, Ljava/util/ArrayList;

    .line 521
    .line 522
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    :cond_18
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 527
    .line 528
    .line 529
    move-result v3

    .line 530
    if-eqz v3, :cond_1a

    .line 531
    .line 532
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    check-cast v3, Lgm0;

    .line 537
    .line 538
    iput-object v6, v0, Lrd;->w:Ljava/lang/Object;

    .line 539
    .line 540
    iput-object v2, v0, Lrd;->t:Ljava/lang/Object;

    .line 541
    .line 542
    iput-object v3, v0, Lrd;->v:Ljava/lang/Object;

    .line 543
    .line 544
    iput-object v1, v0, Lrd;->u:Ljava/lang/Object;

    .line 545
    .line 546
    iput v10, v0, Lrd;->s:I

    .line 547
    .line 548
    invoke-interface {v3, v0, v1}, Lgm0;->c(Ldh0;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v7

    .line 552
    if-ne v7, v8, :cond_19

    .line 553
    .line 554
    goto :goto_f

    .line 555
    :cond_19
    :goto_e
    check-cast v7, Ljava/lang/Boolean;

    .line 556
    .line 557
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 558
    .line 559
    .line 560
    move-result v7

    .line 561
    if-eqz v7, :cond_18

    .line 562
    .line 563
    new-instance v7, Lim0;

    .line 564
    .line 565
    invoke-direct {v7, v3, v11, v4}, Lim0;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 566
    .line 567
    .line 568
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    iput-object v6, v0, Lrd;->w:Ljava/lang/Object;

    .line 572
    .line 573
    iput-object v2, v0, Lrd;->t:Ljava/lang/Object;

    .line 574
    .line 575
    iput-object v11, v0, Lrd;->v:Ljava/lang/Object;

    .line 576
    .line 577
    iput-object v11, v0, Lrd;->u:Ljava/lang/Object;

    .line 578
    .line 579
    iput v5, v0, Lrd;->s:I

    .line 580
    .line 581
    invoke-interface {v3, v1, v0}, Lgm0;->b(Ljava/lang/Object;Lrd;)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    if-ne v1, v8, :cond_18

    .line 586
    .line 587
    goto :goto_f

    .line 588
    :cond_1a
    move-object v8, v1

    .line 589
    :goto_f
    return-object v8

    .line 590
    :pswitch_2
    iget-object v1, v0, Lrd;->w:Ljava/lang/Object;

    .line 591
    .line 592
    check-cast v1, Lv42;

    .line 593
    .line 594
    iget v2, v0, Lrd;->s:I

    .line 595
    .line 596
    const/16 v5, -0x100

    .line 597
    .line 598
    const-string v12, "Delegated worker "

    .line 599
    .line 600
    if-eqz v2, :cond_1c

    .line 601
    .line 602
    if-ne v2, v10, :cond_1b

    .line 603
    .line 604
    iget-object v2, v0, Lrd;->v:Ljava/lang/Object;

    .line 605
    .line 606
    check-cast v2, Lir3;

    .line 607
    .line 608
    iget-object v3, v0, Lrd;->t:Ljava/lang/Object;

    .line 609
    .line 610
    check-cast v3, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 611
    .line 612
    iget-object v0, v0, Lrd;->u:Ljava/lang/Object;

    .line 613
    .line 614
    move-object v6, v0

    .line 615
    check-cast v6, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 616
    .line 617
    :try_start_4
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 618
    .line 619
    .line 620
    move-object/from16 v0, p1

    .line 621
    .line 622
    goto :goto_10

    .line 623
    :catchall_3
    move-exception v0

    .line 624
    goto :goto_12

    .line 625
    :catch_0
    move-exception v0

    .line 626
    goto/16 :goto_13

    .line 627
    .line 628
    :cond_1b
    invoke-static {v7}, Lk21;->n(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    move-object v8, v11

    .line 632
    goto :goto_11

    .line 633
    :cond_1c
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 634
    .line 635
    .line 636
    iget-object v2, v0, Lrd;->u:Ljava/lang/Object;

    .line 637
    .line 638
    check-cast v2, Lqi0;

    .line 639
    .line 640
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 641
    .line 642
    invoke-direct {v7, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v1}, Lv42;->b()Le20;

    .line 646
    .line 647
    .line 648
    move-result-object v17

    .line 649
    new-instance v13, Lqd;

    .line 650
    .line 651
    move-object v14, v9

    .line 652
    check-cast v14, Lct2;

    .line 653
    .line 654
    move-object v15, v6

    .line 655
    check-cast v15, Log4;

    .line 656
    .line 657
    const/16 v18, 0x0

    .line 658
    .line 659
    const/16 v19, 0x2

    .line 660
    .line 661
    move-object/from16 v16, v7

    .line 662
    .line 663
    invoke-direct/range {v13 .. v19}, Lqd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 664
    .line 665
    .line 666
    move-object/from16 v6, v17

    .line 667
    .line 668
    invoke-static {v2, v11, v11, v13, v3}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 669
    .line 670
    .line 671
    move-result-object v2

    .line 672
    :try_start_5
    iput-object v7, v0, Lrd;->u:Ljava/lang/Object;

    .line 673
    .line 674
    iput-object v6, v0, Lrd;->t:Ljava/lang/Object;

    .line 675
    .line 676
    iput-object v2, v0, Lrd;->v:Ljava/lang/Object;

    .line 677
    .line 678
    iput v10, v0, Lrd;->s:I

    .line 679
    .line 680
    invoke-static {v6, v0}, Lca;->f(Lcom/google/common/util/concurrent/ListenableFuture;Lbv3;)Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v0
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 684
    if-ne v0, v8, :cond_1d

    .line 685
    .line 686
    goto :goto_11

    .line 687
    :cond_1d
    move-object v3, v6

    .line 688
    move-object v6, v7

    .line 689
    :goto_10
    :try_start_6
    move-object v8, v0

    .line 690
    check-cast v8, Lu42;
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 691
    .line 692
    invoke-interface {v2, v11}, Ltu1;->j(Ljava/util/concurrent/CancellationException;)V

    .line 693
    .line 694
    .line 695
    :goto_11
    return-object v8

    .line 696
    :catch_1
    move-exception v0

    .line 697
    move-object v3, v6

    .line 698
    move-object v6, v7

    .line 699
    goto :goto_13

    .line 700
    :goto_12
    :try_start_7
    sget-object v3, Ljf0;->a:Ljava/lang/String;

    .line 701
    .line 702
    invoke-static {}, Lt72;->g()Lt72;

    .line 703
    .line 704
    .line 705
    move-result-object v4

    .line 706
    new-instance v5, Ljava/lang/StringBuilder;

    .line 707
    .line 708
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 712
    .line 713
    .line 714
    move-result-object v1

    .line 715
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    const-string v1, " threw exception in startWork."

    .line 719
    .line 720
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    invoke-virtual {v4, v3, v1, v0}, Lt72;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 728
    .line 729
    .line 730
    throw v0

    .line 731
    :catchall_4
    move-exception v0

    .line 732
    goto :goto_14

    .line 733
    :goto_13
    sget-object v7, Ljf0;->a:Ljava/lang/String;

    .line 734
    .line 735
    invoke-static {}, Lt72;->g()Lt72;

    .line 736
    .line 737
    .line 738
    move-result-object v8

    .line 739
    new-instance v9, Ljava/lang/StringBuilder;

    .line 740
    .line 741
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 745
    .line 746
    .line 747
    move-result-object v1

    .line 748
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    const-string v1, " was cancelled"

    .line 752
    .line 753
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    invoke-virtual {v8, v7, v1, v0}, Lt72;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 764
    .line 765
    .line 766
    move-result v1

    .line 767
    if-eq v1, v5, :cond_1e

    .line 768
    .line 769
    move v4, v10

    .line 770
    :cond_1e
    invoke-interface {v3}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 771
    .line 772
    .line 773
    move-result v1

    .line 774
    if-eqz v1, :cond_1f

    .line 775
    .line 776
    if-eqz v4, :cond_1f

    .line 777
    .line 778
    new-instance v0, Lef0;

    .line 779
    .line 780
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 781
    .line 782
    .line 783
    move-result v1

    .line 784
    invoke-direct {v0, v1}, Lef0;-><init>(I)V

    .line 785
    .line 786
    .line 787
    throw v0

    .line 788
    :cond_1f
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 789
    :goto_14
    invoke-interface {v2, v11}, Ltu1;->j(Ljava/util/concurrent/CancellationException;)V

    .line 790
    .line 791
    .line 792
    throw v0

    .line 793
    :pswitch_3
    check-cast v6, Ld84;

    .line 794
    .line 795
    check-cast v9, Lu/sage/a;

    .line 796
    .line 797
    iget v1, v0, Lrd;->s:I

    .line 798
    .line 799
    if-eqz v1, :cond_22

    .line 800
    .line 801
    if-eq v1, v10, :cond_21

    .line 802
    .line 803
    if-ne v1, v5, :cond_20

    .line 804
    .line 805
    iget-object v1, v0, Lrd;->w:Ljava/lang/Object;

    .line 806
    .line 807
    check-cast v1, Ljava/util/List;

    .line 808
    .line 809
    iget-object v3, v0, Lrd;->v:Ljava/lang/Object;

    .line 810
    .line 811
    check-cast v3, Lv43;

    .line 812
    .line 813
    iget-object v5, v0, Lrd;->u:Ljava/lang/Object;

    .line 814
    .line 815
    check-cast v5, Ly84;

    .line 816
    .line 817
    iget-object v0, v0, Lrd;->t:Ljava/lang/Object;

    .line 818
    .line 819
    check-cast v0, Ln8;

    .line 820
    .line 821
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 822
    .line 823
    .line 824
    move-object v10, v0

    .line 825
    move-object v13, v1

    .line 826
    move-object v12, v3

    .line 827
    move-object v11, v5

    .line 828
    move-object/from16 v0, p1

    .line 829
    .line 830
    goto :goto_17

    .line 831
    :cond_20
    invoke-static {v7}, Lk21;->n(Ljava/lang/String;)V

    .line 832
    .line 833
    .line 834
    move-object v2, v11

    .line 835
    goto :goto_18

    .line 836
    :cond_21
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 837
    .line 838
    .line 839
    goto :goto_15

    .line 840
    :cond_22
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 841
    .line 842
    .line 843
    invoke-virtual {v9}, Lu/sage/a;->s()Lps;

    .line 844
    .line 845
    .line 846
    move-result-object v1

    .line 847
    iput v10, v0, Lrd;->s:I

    .line 848
    .line 849
    invoke-virtual {v1, v6, v0}, Lps;->g(Ld84;Lfh0;)Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v1

    .line 853
    if-ne v1, v8, :cond_23

    .line 854
    .line 855
    goto :goto_16

    .line 856
    :cond_23
    :goto_15
    invoke-virtual {v9}, Lu/sage/a;->g()Ln8;

    .line 857
    .line 858
    .line 859
    move-result-object v1

    .line 860
    invoke-virtual {v9}, Lu/sage/a;->q()Ly84;

    .line 861
    .line 862
    .line 863
    move-result-object v3

    .line 864
    iget-object v7, v9, Lu/sage/a;->C:Lv43;

    .line 865
    .line 866
    invoke-virtual {v6}, Ld84;->c()Ljava/util/List;

    .line 867
    .line 868
    .line 869
    move-result-object v6

    .line 870
    invoke-virtual {v9}, Lu/sage/a;->f()Ln1;

    .line 871
    .line 872
    .line 873
    move-result-object v10

    .line 874
    iput-object v1, v0, Lrd;->t:Ljava/lang/Object;

    .line 875
    .line 876
    iput-object v3, v0, Lrd;->u:Ljava/lang/Object;

    .line 877
    .line 878
    iput-object v7, v0, Lrd;->v:Ljava/lang/Object;

    .line 879
    .line 880
    iput-object v6, v0, Lrd;->w:Ljava/lang/Object;

    .line 881
    .line 882
    iput v5, v0, Lrd;->s:I

    .line 883
    .line 884
    invoke-virtual {v10, v0}, Ln1;->b(Lfh0;)Ljava/lang/Object;

    .line 885
    .line 886
    .line 887
    move-result-object v0

    .line 888
    if-ne v0, v8, :cond_24

    .line 889
    .line 890
    :goto_16
    move-object v2, v8

    .line 891
    goto :goto_18

    .line 892
    :cond_24
    move-object v10, v1

    .line 893
    move-object v11, v3

    .line 894
    move-object v13, v6

    .line 895
    move-object v12, v7

    .line 896
    :goto_17
    const/4 v14, 0x0

    .line 897
    move-object v15, v0

    .line 898
    check-cast v15, Lw3;

    .line 899
    .line 900
    invoke-virtual/range {v10 .. v15}, Ln8;->j(Ly84;Lv43;Ljava/util/List;ZLw3;)V

    .line 901
    .line 902
    .line 903
    sget-object v0, Lez3;->a:Lra3;

    .line 904
    .line 905
    invoke-virtual {v9}, Lu/sage/a;->j()Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v1

    .line 909
    const-string v3, ": handleUsageResult: Usage data saved to DataStore."

    .line 910
    .line 911
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    new-array v1, v4, [Ljava/lang/Object;

    .line 915
    .line 916
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 917
    .line 918
    .line 919
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 920
    .line 921
    .line 922
    :goto_18
    return-object v2

    .line 923
    :pswitch_4
    iget-object v1, v0, Lrd;->v:Ljava/lang/Object;

    .line 924
    .line 925
    check-cast v1, Ln30;

    .line 926
    .line 927
    iget v4, v0, Lrd;->s:I

    .line 928
    .line 929
    if-eqz v4, :cond_26

    .line 930
    .line 931
    if-ne v4, v10, :cond_25

    .line 932
    .line 933
    iget-object v4, v0, Lrd;->t:Ljava/lang/Object;

    .line 934
    .line 935
    check-cast v4, Lwy;

    .line 936
    .line 937
    iget-object v5, v0, Lrd;->u:Ljava/lang/Object;

    .line 938
    .line 939
    check-cast v5, Lqi0;

    .line 940
    .line 941
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 942
    .line 943
    .line 944
    move-object/from16 v7, p1

    .line 945
    .line 946
    goto :goto_1a

    .line 947
    :cond_25
    invoke-static {v7}, Lk21;->n(Ljava/lang/String;)V

    .line 948
    .line 949
    .line 950
    move-object v2, v11

    .line 951
    goto :goto_1c

    .line 952
    :cond_26
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 953
    .line 954
    .line 955
    iget-object v4, v0, Lrd;->u:Ljava/lang/Object;

    .line 956
    .line 957
    check-cast v4, Lqi0;

    .line 958
    .line 959
    invoke-interface {v1}, Ln30;->iterator()Lwy;

    .line 960
    .line 961
    .line 962
    move-result-object v5

    .line 963
    move-object/from16 v20, v5

    .line 964
    .line 965
    move-object v5, v4

    .line 966
    move-object/from16 v4, v20

    .line 967
    .line 968
    :goto_19
    iput-object v5, v0, Lrd;->u:Ljava/lang/Object;

    .line 969
    .line 970
    iput-object v4, v0, Lrd;->t:Ljava/lang/Object;

    .line 971
    .line 972
    iput v10, v0, Lrd;->s:I

    .line 973
    .line 974
    invoke-virtual {v4, v0}, Lwy;->b(Lfh0;)Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object v7

    .line 978
    if-ne v7, v8, :cond_27

    .line 979
    .line 980
    move-object v2, v8

    .line 981
    goto :goto_1c

    .line 982
    :cond_27
    :goto_1a
    check-cast v7, Ljava/lang/Boolean;

    .line 983
    .line 984
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 985
    .line 986
    .line 987
    move-result v7

    .line 988
    if-eqz v7, :cond_29

    .line 989
    .line 990
    invoke-virtual {v4}, Lwy;->c()Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    move-result-object v7

    .line 994
    invoke-interface {v1}, Ln30;->m()Ljava/lang/Object;

    .line 995
    .line 996
    .line 997
    move-result-object v12

    .line 998
    invoke-static {v12}, Lz30;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    .line 1000
    .line 1001
    move-result-object v12

    .line 1002
    if-nez v12, :cond_28

    .line 1003
    .line 1004
    move-object v14, v7

    .line 1005
    goto :goto_1b

    .line 1006
    :cond_28
    move-object v14, v12

    .line 1007
    :goto_1b
    new-instance v13, Lqd;

    .line 1008
    .line 1009
    iget-object v7, v0, Lrd;->w:Ljava/lang/Object;

    .line 1010
    .line 1011
    move-object v15, v7

    .line 1012
    check-cast v15, Lpd;

    .line 1013
    .line 1014
    move-object/from16 v16, v9

    .line 1015
    .line 1016
    check-cast v16, Lpg2;

    .line 1017
    .line 1018
    move-object/from16 v17, v6

    .line 1019
    .line 1020
    check-cast v17, Lpg2;

    .line 1021
    .line 1022
    const/16 v18, 0x0

    .line 1023
    .line 1024
    const/16 v19, 0x0

    .line 1025
    .line 1026
    invoke-direct/range {v13 .. v19}, Lqd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 1027
    .line 1028
    .line 1029
    invoke-static {v5, v11, v11, v13, v3}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 1030
    .line 1031
    .line 1032
    goto :goto_19

    .line 1033
    :cond_29
    :goto_1c
    return-object v2

    .line 1034
    nop

    .line 1035
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

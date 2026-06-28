.class public final Lgh4;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:Ljava/lang/Object;

.field public final synthetic u:Ljava/lang/Object;

.field public final synthetic v:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V
    .locals 0

    .line 1
    iput p5, p0, Lgh4;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Lgh4;->t:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lgh4;->u:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lgh4;->v:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p4}, Lbv3;-><init>(ILdh0;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lgh4;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    check-cast p1, Lqi0;

    .line 6
    .line 7
    check-cast p2, Ldh0;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Lgh4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lgh4;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lgh4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Lgh4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lgh4;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lgh4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 9

    .line 1
    iget p2, p0, Lgh4;->r:I

    .line 2
    .line 3
    iget-object v0, p0, Lgh4;->v:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lgh4;->u:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lgh4;->t:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v2, Lgh4;

    .line 13
    .line 14
    move-object v3, p0

    .line 15
    check-cast v3, Lct2;

    .line 16
    .line 17
    move-object v4, v1

    .line 18
    check-cast v4, Log4;

    .line 19
    .line 20
    move-object v5, v0

    .line 21
    check-cast v5, Lzo2;

    .line 22
    .line 23
    const/4 v7, 0x1

    .line 24
    move-object v6, p1

    .line 25
    invoke-direct/range {v2 .. v7}, Lgh4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 26
    .line 27
    .line 28
    return-object v2

    .line 29
    :pswitch_0
    move-object v6, p1

    .line 30
    new-instance v3, Lgh4;

    .line 31
    .line 32
    move-object v4, p0

    .line 33
    check-cast v4, Lhh4;

    .line 34
    .line 35
    move-object v5, v1

    .line 36
    check-cast v5, Lv42;

    .line 37
    .line 38
    check-cast v0, Lag4;

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    move-object v7, v6

    .line 42
    move-object v6, v0

    .line 43
    invoke-direct/range {v3 .. v8}, Lgh4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 44
    .line 45
    .line 46
    return-object v3

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lgh4;->r:I

    .line 4
    .line 5
    sget-object v2, Lt64;->a:Lt64;

    .line 6
    .line 7
    iget-object v3, v0, Lgh4;->v:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Lgh4;->t:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    sget-object v7, Lri0;->n:Lri0;

    .line 15
    .line 16
    const/4 v8, 0x1

    .line 17
    iget-object v9, v0, Lgh4;->u:Ljava/lang/Object;

    .line 18
    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    check-cast v9, Log4;

    .line 23
    .line 24
    iget v1, v0, Lgh4;->s:I

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    if-ne v1, v8, :cond_0

    .line 29
    .line 30
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v6}, Lk21;->n(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    move-object v2, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    check-cast v4, Lct2;

    .line 43
    .line 44
    invoke-virtual {v4, v9}, Lct2;->k(Log4;)La81;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    new-instance v4, Luq;

    .line 49
    .line 50
    check-cast v3, Lzo2;

    .line 51
    .line 52
    const/16 v5, 0xc

    .line 53
    .line 54
    invoke-direct {v4, v5, v3, v9}, Luq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iput v8, v0, Lgh4;->s:I

    .line 58
    .line 59
    invoke-interface {v1, v4, v0}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-ne v0, v7, :cond_2

    .line 64
    .line 65
    move-object v2, v7

    .line 66
    :cond_2
    :goto_0
    return-object v2

    .line 67
    :pswitch_0
    check-cast v9, Lv42;

    .line 68
    .line 69
    check-cast v4, Lhh4;

    .line 70
    .line 71
    iget-object v10, v4, Lhh4;->a:Log4;

    .line 72
    .line 73
    iget v1, v0, Lgh4;->s:I

    .line 74
    .line 75
    const/4 v15, 0x2

    .line 76
    if-eqz v1, :cond_5

    .line 77
    .line 78
    if-eq v1, v8, :cond_4

    .line 79
    .line 80
    if-ne v1, v15, :cond_3

    .line 81
    .line 82
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    move-object/from16 v0, p1

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_3
    invoke-static {v6}, Lk21;->n(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    move-object v0, v5

    .line 92
    goto :goto_4

    .line 93
    :cond_4
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget-object v12, v4, Lhh4;->b:Landroid/content/Context;

    .line 101
    .line 102
    move-object v11, v3

    .line 103
    check-cast v11, Lag4;

    .line 104
    .line 105
    iget-object v1, v4, Lhh4;->d:Lqd1;

    .line 106
    .line 107
    iput v8, v0, Lgh4;->s:I

    .line 108
    .line 109
    sget-object v3, Lzf4;->a:Ljava/lang/String;

    .line 110
    .line 111
    iget-boolean v3, v10, Log4;->q:Z

    .line 112
    .line 113
    if-eqz v3, :cond_7

    .line 114
    .line 115
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 116
    .line 117
    const/16 v4, 0x1f

    .line 118
    .line 119
    if-lt v3, v4, :cond_6

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_6
    iget-object v1, v1, Lqd1;->r:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v1, Lc73;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-static {v1}, Lht4;->p(Ljava/util/concurrent/Executor;)Lji0;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    new-instance v8, Lqd;

    .line 134
    .line 135
    const/4 v13, 0x0

    .line 136
    const/16 v14, 0xe

    .line 137
    .line 138
    invoke-direct/range {v8 .. v14}, Lqd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 139
    .line 140
    .line 141
    invoke-static {v1, v8, v0}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    if-ne v1, v7, :cond_7

    .line 146
    .line 147
    move-object v2, v1

    .line 148
    :cond_7
    :goto_1
    if-ne v2, v7, :cond_8

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_8
    :goto_2
    sget-object v1, Lih4;->a:Ljava/lang/String;

    .line 152
    .line 153
    invoke-static {}, Lt72;->g()Lt72;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v4, "Starting work for "

    .line 160
    .line 161
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v4, v10, Log4;->c:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v2, v1, v3}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v9}, Lv42;->b()Le20;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    iput v15, v0, Lgh4;->s:I

    .line 181
    .line 182
    invoke-static {v1, v9, v0}, Lih4;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lv42;Lbv3;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    if-ne v0, v7, :cond_9

    .line 187
    .line 188
    :goto_3
    move-object v0, v7

    .line 189
    :cond_9
    :goto_4
    return-object v0

    .line 190
    nop

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

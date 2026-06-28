.class public final Lc5;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:J

.field public synthetic u:Ljava/lang/Object;

.field public final synthetic v:Ljava/lang/Object;

.field public final synthetic w:Ljava/lang/Object;

.field public final synthetic x:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lfg0;Lt74;Lgy;JLdh0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lc5;->r:I

    .line 19
    iput-object p1, p0, Lc5;->v:Ljava/lang/Object;

    iput-object p2, p0, Lc5;->w:Ljava/lang/Object;

    iput-object p3, p0, Lc5;->x:Ljava/lang/Object;

    iput-wide p4, p0, Lc5;->t:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method

.method public constructor <init>(Ls33;Ljava/lang/String;JLandroid/webkit/WebView;Le4;Ldh0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc5;->r:I

    .line 3
    .line 4
    iput-object p1, p0, Lc5;->u:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lc5;->v:Ljava/lang/Object;

    .line 7
    .line 8
    iput-wide p3, p0, Lc5;->t:J

    .line 9
    .line 10
    iput-object p5, p0, Lc5;->w:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p6, p0, Lc5;->x:Ljava/lang/Object;

    .line 13
    .line 14
    const/4 p1, 0x2

    .line 15
    invoke-direct {p0, p1, p7}, Lbv3;-><init>(ILdh0;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lc5;->r:I

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
    invoke-virtual {p0, p2, p1}, Lc5;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lc5;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lc5;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Lc5;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lc5;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lc5;->q(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 13

    .line 1
    iget v0, p0, Lc5;->r:I

    .line 2
    .line 3
    iget-object v1, p0, Lc5;->x:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lc5;->w:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lc5;->v:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v4, Lc5;

    .line 13
    .line 14
    move-object v5, v3

    .line 15
    check-cast v5, Lfg0;

    .line 16
    .line 17
    move-object v6, v2

    .line 18
    check-cast v6, Lt74;

    .line 19
    .line 20
    move-object v7, v1

    .line 21
    check-cast v7, Lgy;

    .line 22
    .line 23
    iget-wide v8, p0, Lc5;->t:J

    .line 24
    .line 25
    move-object v10, p1

    .line 26
    invoke-direct/range {v4 .. v10}, Lc5;-><init>(Lfg0;Lt74;Lgy;JLdh0;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, v4, Lc5;->u:Ljava/lang/Object;

    .line 30
    .line 31
    return-object v4

    .line 32
    :pswitch_0
    move-object v10, p1

    .line 33
    new-instance v5, Lc5;

    .line 34
    .line 35
    iget-object p1, p0, Lc5;->u:Ljava/lang/Object;

    .line 36
    .line 37
    move-object v6, p1

    .line 38
    check-cast v6, Ls33;

    .line 39
    .line 40
    move-object v7, v3

    .line 41
    check-cast v7, Ljava/lang/String;

    .line 42
    .line 43
    check-cast v2, Landroid/webkit/WebView;

    .line 44
    .line 45
    move-object v11, v1

    .line 46
    check-cast v11, Le4;

    .line 47
    .line 48
    iget-wide v8, p0, Lc5;->t:J

    .line 49
    .line 50
    move-object v12, v10

    .line 51
    move-object v10, v2

    .line 52
    invoke-direct/range {v5 .. v12}, Lc5;-><init>(Ls33;Ljava/lang/String;JLandroid/webkit/WebView;Le4;Ldh0;)V

    .line 53
    .line 54
    .line 55
    return-object v5

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lc5;->r:I

    .line 4
    .line 5
    sget-object v2, Lt64;->a:Lt64;

    .line 6
    .line 7
    iget-object v3, v0, Lc5;->x:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Lc5;->w:Ljava/lang/Object;

    .line 10
    .line 11
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 12
    .line 13
    sget-object v6, Lri0;->n:Lri0;

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x1

    .line 17
    const/4 v9, 0x0

    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lc5;->v:Ljava/lang/Object;

    .line 22
    .line 23
    move-object v12, v1

    .line 24
    check-cast v12, Lfg0;

    .line 25
    .line 26
    iget-object v1, v12, Lfg0;->F:Lzx;

    .line 27
    .line 28
    iget v10, v0, Lc5;->s:I

    .line 29
    .line 30
    if-eqz v10, :cond_1

    .line 31
    .line 32
    if-ne v10, v8, :cond_0

    .line 33
    .line 34
    :try_start_0
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_3

    .line 40
    :catch_0
    move-exception v0

    .line 41
    move-object v9, v0

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    move-object v2, v9

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v5, v0, Lc5;->u:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v5, Lqi0;

    .line 54
    .line 55
    invoke-interface {v5}, Lqi0;->d()Lhi0;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-static {v5}, Ln44;->o0(Lhi0;)Ltu1;

    .line 60
    .line 61
    .line 62
    move-result-object v16

    .line 63
    :try_start_1
    iput-boolean v8, v12, Lfg0;->I:Z

    .line 64
    .line 65
    iget-object v5, v12, Lfg0;->C:Ldg3;

    .line 66
    .line 67
    sget-object v10, Lxg2;->n:Lxg2;

    .line 68
    .line 69
    move-object v11, v10

    .line 70
    new-instance v10, Leg0;

    .line 71
    .line 72
    check-cast v4, Lt74;

    .line 73
    .line 74
    move-object v13, v3

    .line 75
    check-cast v13, Lgy;

    .line 76
    .line 77
    iget-wide v14, v0, Lc5;->t:J

    .line 78
    .line 79
    const/16 v17, 0x0

    .line 80
    .line 81
    move-object v3, v11

    .line 82
    move-object v11, v4

    .line 83
    invoke-direct/range {v10 .. v17}, Leg0;-><init>(Lt74;Lfg0;Lgy;JLtu1;Ldh0;)V

    .line 84
    .line 85
    .line 86
    iput v8, v0, Lc5;->s:I

    .line 87
    .line 88
    invoke-virtual {v5, v3, v10, v0}, Ldg3;->g(Lxg2;Ldf1;Lfh0;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-ne v0, v6, :cond_2

    .line 93
    .line 94
    move-object v2, v6

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lzx;->b()V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    .line 99
    iput-boolean v7, v12, Lfg0;->I:Z

    .line 100
    .line 101
    invoke-virtual {v1, v9}, Lzx;->a(Ljava/util/concurrent/CancellationException;)V

    .line 102
    .line 103
    .line 104
    iput-boolean v7, v12, Lfg0;->G:Z

    .line 105
    .line 106
    :goto_1
    return-object v2

    .line 107
    :goto_2
    :try_start_2
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :goto_3
    iput-boolean v7, v12, Lfg0;->I:Z

    .line 109
    .line 110
    invoke-virtual {v1, v9}, Lzx;->a(Ljava/util/concurrent/CancellationException;)V

    .line 111
    .line 112
    .line 113
    iput-boolean v7, v12, Lfg0;->G:Z

    .line 114
    .line 115
    throw v0

    .line 116
    :pswitch_0
    iget v1, v0, Lc5;->s:I

    .line 117
    .line 118
    const/4 v10, 0x2

    .line 119
    if-eqz v1, :cond_5

    .line 120
    .line 121
    if-eq v1, v8, :cond_4

    .line 122
    .line 123
    if-ne v1, v10, :cond_3

    .line 124
    .line 125
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_3
    invoke-static {v5}, Lk21;->n(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    move-object v2, v9

    .line 133
    goto :goto_6

    .line 134
    :cond_4
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_5
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    iput v8, v0, Lc5;->s:I

    .line 142
    .line 143
    const-wide/16 v11, 0x1388

    .line 144
    .line 145
    invoke-static {v11, v12, v0}, Lzf5;->A(JLdh0;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    if-ne v1, v6, :cond_6

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_6
    :goto_4
    iget-object v1, v0, Lc5;->u:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v1, Ls33;

    .line 155
    .line 156
    iget-boolean v1, v1, Ls33;->n:Z

    .line 157
    .line 158
    if-nez v1, :cond_8

    .line 159
    .line 160
    sget-object v1, Lez3;->a:Lra3;

    .line 161
    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 163
    .line 164
    .line 165
    check-cast v4, Landroid/webkit/WebView;

    .line 166
    .line 167
    if-eqz v4, :cond_7

    .line 168
    .line 169
    invoke-virtual {v4}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    :cond_7
    new-array v4, v7, [Ljava/lang/Object;

    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    invoke-static {v4}, Lra3;->m([Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    sget-object v1, Lzu0;->a:Lzp0;

    .line 181
    .line 182
    sget-object v1, Ln92;->a:Lxi1;

    .line 183
    .line 184
    new-instance v4, Lb5;

    .line 185
    .line 186
    check-cast v3, Le4;

    .line 187
    .line 188
    invoke-direct {v4, v3, v9, v8}, Lb5;-><init>(Le4;Ldh0;I)V

    .line 189
    .line 190
    .line 191
    iput v10, v0, Lc5;->s:I

    .line 192
    .line 193
    invoke-static {v1, v4, v0}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    if-ne v0, v6, :cond_8

    .line 198
    .line 199
    :goto_5
    move-object v2, v6

    .line 200
    :cond_8
    :goto_6
    return-object v2

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

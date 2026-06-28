.class public final Lu01;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public t:Ljava/lang/Object;

.field public final synthetic u:Ljava/lang/Object;

.field public synthetic v:Ljava/lang/Object;

.field public final synthetic w:Ljava/lang/Object;

.field public x:Ljava/lang/Object;

.field public final synthetic y:Ljava/lang/Object;

.field public final synthetic z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lif4;Lzy;Landroid/content/Context;Ldh0;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lu01;->r:I

    .line 25
    iput-object p1, p0, Lu01;->x:Ljava/lang/Object;

    iput-object p2, p0, Lu01;->y:Ljava/lang/Object;

    iput-object p3, p0, Lu01;->z:Ljava/lang/Object;

    iput-object p4, p0, Lu01;->u:Ljava/lang/Object;

    iput-object p5, p0, Lu01;->w:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method

.method public constructor <init>(Lpd;Ljava/util/List;Lts2;Lss2;Ldh0;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lu01;->r:I

    .line 23
    iput-object p1, p0, Lu01;->y:Ljava/lang/Object;

    iput-object p2, p0, Lu01;->z:Ljava/lang/Object;

    iput-object p3, p0, Lu01;->u:Ljava/lang/Object;

    iput-object p4, p0, Lu01;->w:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method

.method public constructor <init>(Lx01;Ljo1;Ljava/lang/Object;Ler2;Lj21;Lqb2;Lr23;Ldh0;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lu01;->r:I

    .line 3
    .line 4
    iput-object p1, p0, Lu01;->t:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lu01;->u:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lu01;->v:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Lu01;->x:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p5, p0, Lu01;->w:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p6, p0, Lu01;->y:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p7, p0, Lu01;->z:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    invoke-direct {p0, p1, p8}, Lbv3;-><init>(ILdh0;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lx01;Lw33;Lw33;Ljo1;Ljava/lang/Object;Lw33;Lj21;Ldh0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lu01;->r:I

    .line 24
    iput-object p1, p0, Lu01;->t:Ljava/lang/Object;

    iput-object p2, p0, Lu01;->x:Ljava/lang/Object;

    iput-object p3, p0, Lu01;->y:Ljava/lang/Object;

    iput-object p4, p0, Lu01;->u:Ljava/lang/Object;

    iput-object p5, p0, Lu01;->v:Ljava/lang/Object;

    iput-object p6, p0, Lu01;->z:Ljava/lang/Object;

    iput-object p7, p0, Lu01;->w:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lu01;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lb81;

    .line 9
    .line 10
    check-cast p2, Ldh0;

    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Lu01;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lu01;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lu01;->q(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p2, p1}, Lu01;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lu01;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lu01;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    sget-object p0, Lri0;->n:Lri0;

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_1
    check-cast p1, Lqi0;

    .line 40
    .line 41
    check-cast p2, Ldh0;

    .line 42
    .line 43
    invoke-virtual {p0, p2, p1}, Lu01;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Lu01;

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lu01;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :pswitch_2
    check-cast p1, Lqi0;

    .line 55
    .line 56
    check-cast p2, Ldh0;

    .line 57
    .line 58
    invoke-virtual {p0, p2, p1}, Lu01;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Lu01;

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Lu01;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Lu01;->r:I

    .line 6
    .line 7
    iget-object v3, v0, Lu01;->w:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Lu01;->u:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Lu01;->z:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Lu01;->y:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v2, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    new-instance v7, Lu01;

    .line 19
    .line 20
    iget-object v0, v0, Lu01;->x:Ljava/lang/Object;

    .line 21
    .line 22
    move-object v8, v0

    .line 23
    check-cast v8, Landroid/content/ContentResolver;

    .line 24
    .line 25
    move-object v9, v6

    .line 26
    check-cast v9, Landroid/net/Uri;

    .line 27
    .line 28
    move-object v10, v5

    .line 29
    check-cast v10, Lif4;

    .line 30
    .line 31
    move-object v11, v4

    .line 32
    check-cast v11, Lzy;

    .line 33
    .line 34
    move-object v12, v3

    .line 35
    check-cast v12, Landroid/content/Context;

    .line 36
    .line 37
    move-object/from16 v13, p1

    .line 38
    .line 39
    invoke-direct/range {v7 .. v13}, Lu01;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lif4;Lzy;Landroid/content/Context;Ldh0;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, v7, Lu01;->v:Ljava/lang/Object;

    .line 43
    .line 44
    return-object v7

    .line 45
    :pswitch_0
    new-instance v8, Lu01;

    .line 46
    .line 47
    move-object v9, v6

    .line 48
    check-cast v9, Lpd;

    .line 49
    .line 50
    move-object v10, v5

    .line 51
    check-cast v10, Ljava/util/List;

    .line 52
    .line 53
    move-object v11, v4

    .line 54
    check-cast v11, Lts2;

    .line 55
    .line 56
    move-object v12, v3

    .line 57
    check-cast v12, Lss2;

    .line 58
    .line 59
    move-object/from16 v13, p1

    .line 60
    .line 61
    invoke-direct/range {v8 .. v13}, Lu01;-><init>(Lpd;Ljava/util/List;Lts2;Lss2;Ldh0;)V

    .line 62
    .line 63
    .line 64
    iput-object v1, v8, Lu01;->v:Ljava/lang/Object;

    .line 65
    .line 66
    return-object v8

    .line 67
    :pswitch_1
    new-instance v8, Lu01;

    .line 68
    .line 69
    iget-object v1, v0, Lu01;->t:Ljava/lang/Object;

    .line 70
    .line 71
    move-object v9, v1

    .line 72
    check-cast v9, Lx01;

    .line 73
    .line 74
    move-object v10, v4

    .line 75
    check-cast v10, Ljo1;

    .line 76
    .line 77
    iget-object v11, v0, Lu01;->v:Ljava/lang/Object;

    .line 78
    .line 79
    iget-object v0, v0, Lu01;->x:Ljava/lang/Object;

    .line 80
    .line 81
    move-object v12, v0

    .line 82
    check-cast v12, Ler2;

    .line 83
    .line 84
    move-object v13, v3

    .line 85
    check-cast v13, Lj21;

    .line 86
    .line 87
    move-object v14, v6

    .line 88
    check-cast v14, Lqb2;

    .line 89
    .line 90
    move-object v15, v5

    .line 91
    check-cast v15, Lr23;

    .line 92
    .line 93
    move-object/from16 v16, p1

    .line 94
    .line 95
    invoke-direct/range {v8 .. v16}, Lu01;-><init>(Lx01;Ljo1;Ljava/lang/Object;Ler2;Lj21;Lqb2;Lr23;Ldh0;)V

    .line 96
    .line 97
    .line 98
    return-object v8

    .line 99
    :pswitch_2
    new-instance v8, Lu01;

    .line 100
    .line 101
    iget-object v1, v0, Lu01;->t:Ljava/lang/Object;

    .line 102
    .line 103
    move-object v9, v1

    .line 104
    check-cast v9, Lx01;

    .line 105
    .line 106
    iget-object v1, v0, Lu01;->x:Ljava/lang/Object;

    .line 107
    .line 108
    move-object v10, v1

    .line 109
    check-cast v10, Lw33;

    .line 110
    .line 111
    move-object v11, v6

    .line 112
    check-cast v11, Lw33;

    .line 113
    .line 114
    move-object v12, v4

    .line 115
    check-cast v12, Ljo1;

    .line 116
    .line 117
    iget-object v13, v0, Lu01;->v:Ljava/lang/Object;

    .line 118
    .line 119
    move-object v14, v5

    .line 120
    check-cast v14, Lw33;

    .line 121
    .line 122
    move-object v15, v3

    .line 123
    check-cast v15, Lj21;

    .line 124
    .line 125
    move-object/from16 v16, p1

    .line 126
    .line 127
    invoke-direct/range {v8 .. v16}, Lu01;-><init>(Lx01;Lw33;Lw33;Ljo1;Ljava/lang/Object;Lw33;Lj21;Ldh0;)V

    .line 128
    .line 129
    .line 130
    return-object v8

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    iget v0, v5, Lu01;->r:I

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v7, 0x1

    .line 8
    const/4 v8, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v5, Lu01;->z:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v2, v0

    .line 15
    check-cast v2, Lif4;

    .line 16
    .line 17
    iget-object v0, v5, Lu01;->x:Ljava/lang/Object;

    .line 18
    .line 19
    move-object v3, v0

    .line 20
    check-cast v3, Landroid/content/ContentResolver;

    .line 21
    .line 22
    sget-object v0, Lri0;->n:Lri0;

    .line 23
    .line 24
    iget v4, v5, Lu01;->s:I

    .line 25
    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    if-eq v4, v7, :cond_1

    .line 29
    .line 30
    if-ne v4, v1, :cond_0

    .line 31
    .line 32
    iget-object v4, v5, Lu01;->t:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v4, Lwy;

    .line 35
    .line 36
    iget-object v6, v5, Lu01;->v:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v6, Lb81;

    .line 39
    .line 40
    :try_start_0
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    move-object v8, v4

    .line 44
    move-object v4, v6

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto/16 :goto_4

    .line 48
    .line 49
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_1
    iget-object v4, v5, Lu01;->t:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v4, Lwy;

    .line 59
    .line 60
    iget-object v6, v5, Lu01;->v:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v6, Lb81;

    .line 63
    .line 64
    :try_start_1
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    move-object v8, v6

    .line 68
    move-object/from16 v6, p1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object v4, v5, Lu01;->v:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v4, Lb81;

    .line 77
    .line 78
    iget-object v8, v5, Lu01;->y:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v8, Landroid/net/Uri;

    .line 81
    .line 82
    invoke-virtual {v3, v8, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 83
    .line 84
    .line 85
    :try_start_2
    iget-object v6, v5, Lu01;->u:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v6, Lzy;

    .line 88
    .line 89
    new-instance v8, Lwy;

    .line 90
    .line 91
    invoke-direct {v8, v6}, Lwy;-><init>(Lzy;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    iput-object v4, v5, Lu01;->v:Ljava/lang/Object;

    .line 95
    .line 96
    iput-object v8, v5, Lu01;->t:Ljava/lang/Object;

    .line 97
    .line 98
    iput v7, v5, Lu01;->s:I

    .line 99
    .line 100
    invoke-virtual {v8, v5}, Lwy;->b(Lfh0;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    if-ne v6, v0, :cond_3

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    move-object/from16 v17, v8

    .line 108
    .line 109
    move-object v8, v4

    .line 110
    move-object/from16 v4, v17

    .line 111
    .line 112
    :goto_1
    check-cast v6, Ljava/lang/Boolean;

    .line 113
    .line 114
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_5

    .line 119
    .line 120
    invoke-virtual {v4}, Lwy;->c()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    iget-object v6, v5, Lu01;->w:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v6, Landroid/content/Context;

    .line 126
    .line 127
    sget-object v9, Ljf4;->a:Lkg2;

    .line 128
    .line 129
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    const-string v9, "animator_duration_scale"

    .line 134
    .line 135
    const/high16 v10, 0x3f800000    # 1.0f

    .line 136
    .line 137
    invoke-static {v6, v9, v10}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    new-instance v9, Ljava/lang/Float;

    .line 142
    .line 143
    invoke-direct {v9, v6}, Ljava/lang/Float;-><init>(F)V

    .line 144
    .line 145
    .line 146
    iput-object v8, v5, Lu01;->v:Ljava/lang/Object;

    .line 147
    .line 148
    iput-object v4, v5, Lu01;->t:Ljava/lang/Object;

    .line 149
    .line 150
    iput v1, v5, Lu01;->s:I

    .line 151
    .line 152
    invoke-interface {v8, v9, v5}, Lb81;->m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    if-ne v6, v0, :cond_4

    .line 157
    .line 158
    :goto_2
    move-object v8, v0

    .line 159
    goto :goto_3

    .line 160
    :cond_4
    move-object/from16 v17, v8

    .line 161
    .line 162
    move-object v8, v4

    .line 163
    move-object/from16 v4, v17

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_5
    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 167
    .line 168
    .line 169
    sget-object v8, Lt64;->a:Lt64;

    .line 170
    .line 171
    :goto_3
    return-object v8

    .line 172
    :goto_4
    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 173
    .line 174
    .line 175
    throw v0

    .line 176
    :pswitch_0
    sget-object v0, Lri0;->n:Lri0;

    .line 177
    .line 178
    iget v2, v5, Lu01;->s:I

    .line 179
    .line 180
    if-eqz v2, :cond_8

    .line 181
    .line 182
    if-eq v2, v7, :cond_7

    .line 183
    .line 184
    if-ne v2, v1, :cond_6

    .line 185
    .line 186
    iget-object v2, v5, Lu01;->t:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v2, Lyq3;

    .line 189
    .line 190
    iget-object v3, v5, Lu01;->v:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v3, Lqi0;

    .line 193
    .line 194
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    move-object v11, v2

    .line 198
    move-object v2, v3

    .line 199
    goto :goto_5

    .line 200
    :cond_6
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 201
    .line 202
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_8

    .line 206
    .line 207
    :cond_7
    iget-object v2, v5, Lu01;->x:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v2, Lzq0;

    .line 210
    .line 211
    iget-object v3, v5, Lu01;->t:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v3, Lyq3;

    .line 214
    .line 215
    iget-object v4, v5, Lu01;->v:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v4, Lqi0;

    .line 218
    .line 219
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_8
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    iget-object v2, v5, Lu01;->v:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v2, Lqi0;

    .line 229
    .line 230
    new-instance v3, Ljava/lang/Float;

    .line 231
    .line 232
    const v4, 0x3dcccccd    # 0.1f

    .line 233
    .line 234
    .line 235
    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(F)V

    .line 236
    .line 237
    .line 238
    new-instance v4, Lyq3;

    .line 239
    .line 240
    const v6, 0x3f19999a    # 0.6f

    .line 241
    .line 242
    .line 243
    const/high16 v9, 0x43480000    # 200.0f

    .line 244
    .line 245
    invoke-direct {v4, v6, v9, v3}, Lyq3;-><init>(FFLjava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    move-object v11, v4

    .line 249
    :goto_5
    new-instance v9, Lr4;

    .line 250
    .line 251
    iget-object v3, v5, Lu01;->y:Ljava/lang/Object;

    .line 252
    .line 253
    move-object v10, v3

    .line 254
    check-cast v10, Lpd;

    .line 255
    .line 256
    iget-object v3, v5, Lu01;->z:Ljava/lang/Object;

    .line 257
    .line 258
    move-object v12, v3

    .line 259
    check-cast v12, Ljava/util/List;

    .line 260
    .line 261
    iget-object v3, v5, Lu01;->u:Ljava/lang/Object;

    .line 262
    .line 263
    move-object v13, v3

    .line 264
    check-cast v13, Lts2;

    .line 265
    .line 266
    iget-object v3, v5, Lu01;->w:Ljava/lang/Object;

    .line 267
    .line 268
    move-object v14, v3

    .line 269
    check-cast v14, Lss2;

    .line 270
    .line 271
    const/4 v15, 0x0

    .line 272
    const/16 v16, 0x1

    .line 273
    .line 274
    invoke-direct/range {v9 .. v16}, Lr4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 275
    .line 276
    .line 277
    const/4 v3, 0x3

    .line 278
    invoke-static {v2, v8, v9, v3}, Lca;->e(Lqi0;Lhi0;Ldf1;I)Lzq0;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    iput-object v2, v5, Lu01;->v:Ljava/lang/Object;

    .line 283
    .line 284
    iput-object v11, v5, Lu01;->t:Ljava/lang/Object;

    .line 285
    .line 286
    iput-object v3, v5, Lu01;->x:Ljava/lang/Object;

    .line 287
    .line 288
    iput v7, v5, Lu01;->s:I

    .line 289
    .line 290
    const-wide/16 v9, 0x28a

    .line 291
    .line 292
    invoke-static {v9, v10, v5}, Lzf5;->A(JLdh0;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    if-ne v4, v0, :cond_9

    .line 297
    .line 298
    goto :goto_7

    .line 299
    :cond_9
    move-object v4, v2

    .line 300
    move-object v2, v3

    .line 301
    move-object v3, v11

    .line 302
    :goto_6
    iput-object v4, v5, Lu01;->v:Ljava/lang/Object;

    .line 303
    .line 304
    iput-object v3, v5, Lu01;->t:Ljava/lang/Object;

    .line 305
    .line 306
    iput-object v8, v5, Lu01;->x:Ljava/lang/Object;

    .line 307
    .line 308
    iput v1, v5, Lu01;->s:I

    .line 309
    .line 310
    invoke-interface {v2, v5}, Lyq0;->A(Lbv3;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    if-ne v2, v0, :cond_a

    .line 315
    .line 316
    :goto_7
    move-object v8, v0

    .line 317
    :goto_8
    return-object v8

    .line 318
    :cond_a
    move-object v11, v3

    .line 319
    move-object v2, v4

    .line 320
    goto :goto_5

    .line 321
    :pswitch_1
    sget-object v9, Lri0;->n:Lri0;

    .line 322
    .line 323
    iget v0, v5, Lu01;->s:I

    .line 324
    .line 325
    if-eqz v0, :cond_c

    .line 326
    .line 327
    if-ne v0, v7, :cond_b

    .line 328
    .line 329
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    move-object/from16 v0, p1

    .line 333
    .line 334
    goto :goto_a

    .line 335
    :cond_b
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 336
    .line 337
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    goto/16 :goto_11

    .line 341
    .line 342
    :cond_c
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    iget-object v0, v5, Lu01;->t:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast v0, Lx01;

    .line 348
    .line 349
    iget-object v1, v5, Lu01;->u:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast v1, Ljo1;

    .line 352
    .line 353
    iget-object v2, v5, Lu01;->v:Ljava/lang/Object;

    .line 354
    .line 355
    iget-object v3, v5, Lu01;->x:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast v3, Ler2;

    .line 358
    .line 359
    iget-object v4, v5, Lu01;->w:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast v4, Lj21;

    .line 362
    .line 363
    iput v7, v5, Lu01;->s:I

    .line 364
    .line 365
    invoke-static/range {v0 .. v5}, Lx01;->b(Lx01;Ljo1;Ljava/lang/Object;Ler2;Lj21;Lfh0;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    if-ne v0, v9, :cond_d

    .line 370
    .line 371
    :goto_9
    move-object v8, v9

    .line 372
    goto/16 :goto_11

    .line 373
    .line 374
    :cond_d
    :goto_a
    check-cast v0, Lr01;

    .line 375
    .line 376
    iget-object v1, v5, Lu01;->t:Ljava/lang/Object;

    .line 377
    .line 378
    check-cast v1, Lx01;

    .line 379
    .line 380
    iget-object v1, v1, Lx01;->b:Lic;

    .line 381
    .line 382
    monitor-enter v1

    .line 383
    :try_start_3
    iget-object v2, v1, Lic;->b:Ljava/lang/Object;

    .line 384
    .line 385
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 386
    .line 387
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    check-cast v2, Lo23;

    .line 392
    .line 393
    if-eqz v2, :cond_e

    .line 394
    .line 395
    iget-object v3, v1, Lic;->e:Ljava/lang/Object;

    .line 396
    .line 397
    check-cast v3, Landroid/content/Context;

    .line 398
    .line 399
    if-nez v3, :cond_f

    .line 400
    .line 401
    iget-object v2, v2, Lo23;->a:Lm23;

    .line 402
    .line 403
    iget-object v2, v2, Lm23;->a:Landroid/content/Context;

    .line 404
    .line 405
    iput-object v2, v1, Lic;->e:Ljava/lang/Object;

    .line 406
    .line 407
    iget-object v3, v1, Lic;->d:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast v3, Lhc;

    .line 410
    .line 411
    invoke-virtual {v2, v3}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 412
    .line 413
    .line 414
    goto :goto_b

    .line 415
    :catchall_1
    move-exception v0

    .line 416
    goto/16 :goto_12

    .line 417
    .line 418
    :cond_e
    invoke-virtual {v1}, Lic;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 419
    .line 420
    .line 421
    :cond_f
    :goto_b
    monitor-exit v1

    .line 422
    iget-object v1, v5, Lu01;->t:Ljava/lang/Object;

    .line 423
    .line 424
    check-cast v1, Lx01;

    .line 425
    .line 426
    iget-object v1, v1, Lx01;->d:Ldd1;

    .line 427
    .line 428
    iget-object v2, v5, Lu01;->y:Ljava/lang/Object;

    .line 429
    .line 430
    move-object v10, v2

    .line 431
    check-cast v10, Lqb2;

    .line 432
    .line 433
    iget-object v2, v5, Lu01;->u:Ljava/lang/Object;

    .line 434
    .line 435
    check-cast v2, Ljo1;

    .line 436
    .line 437
    if-eqz v10, :cond_11

    .line 438
    .line 439
    iget-object v2, v2, Ljo1;->i:Ly00;

    .line 440
    .line 441
    iget-boolean v2, v2, Ly00;->o:Z

    .line 442
    .line 443
    if-eqz v2, :cond_11

    .line 444
    .line 445
    iget-object v2, v0, Lr01;->a:Lao1;

    .line 446
    .line 447
    invoke-interface {v2}, Lao1;->c()Z

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    if-nez v2, :cond_10

    .line 452
    .line 453
    goto :goto_c

    .line 454
    :cond_10
    iget-object v1, v1, Ldd1;->o:Ljava/lang/Object;

    .line 455
    .line 456
    check-cast v1, Lo23;

    .line 457
    .line 458
    invoke-virtual {v1}, Lo23;->c()Ls23;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    if-nez v1, :cond_12

    .line 463
    .line 464
    :cond_11
    :goto_c
    move v1, v6

    .line 465
    goto :goto_e

    .line 466
    :cond_12
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 467
    .line 468
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 469
    .line 470
    .line 471
    const-string v3, "coil#is_sampled"

    .line 472
    .line 473
    iget-boolean v4, v0, Lr01;->b:Z

    .line 474
    .line 475
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    iget-object v3, v0, Lr01;->d:Ljava/lang/String;

    .line 483
    .line 484
    if-eqz v3, :cond_13

    .line 485
    .line 486
    const-string v4, "coil#disk_cache_key"

    .line 487
    .line 488
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    :cond_13
    iget-object v11, v0, Lr01;->a:Lao1;

    .line 492
    .line 493
    invoke-static {v2}, Lk30;->G(Ljava/util/Map;)Ljava/util/Map;

    .line 494
    .line 495
    .line 496
    move-result-object v12

    .line 497
    const-string v2, "Image size must be non-negative: "

    .line 498
    .line 499
    iget-object v3, v1, Ls23;->c:Ljava/lang/Object;

    .line 500
    .line 501
    monitor-enter v3

    .line 502
    :try_start_4
    invoke-interface {v11}, Lao1;->e()J

    .line 503
    .line 504
    .line 505
    move-result-wide v13

    .line 506
    const-wide/16 v15, 0x0

    .line 507
    .line 508
    cmp-long v4, v13, v15

    .line 509
    .line 510
    if-ltz v4, :cond_14

    .line 511
    .line 512
    iget-object v9, v1, Ls23;->a:Lt82;

    .line 513
    .line 514
    invoke-virtual/range {v9 .. v14}, Lt82;->b(Lqb2;Lao1;Ljava/util/Map;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 515
    .line 516
    .line 517
    monitor-exit v3

    .line 518
    move v1, v7

    .line 519
    goto :goto_e

    .line 520
    :catchall_2
    move-exception v0

    .line 521
    goto :goto_d

    .line 522
    :cond_14
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 535
    .line 536
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 544
    :goto_d
    monitor-exit v3

    .line 545
    throw v0

    .line 546
    :goto_e
    iget-object v10, v0, Lr01;->a:Lao1;

    .line 547
    .line 548
    iget-object v2, v5, Lu01;->u:Ljava/lang/Object;

    .line 549
    .line 550
    move-object v11, v2

    .line 551
    check-cast v11, Ljo1;

    .line 552
    .line 553
    iget-object v12, v0, Lr01;->c:Lkm0;

    .line 554
    .line 555
    iget-object v2, v5, Lu01;->y:Ljava/lang/Object;

    .line 556
    .line 557
    check-cast v2, Lqb2;

    .line 558
    .line 559
    if-eqz v1, :cond_15

    .line 560
    .line 561
    move-object v13, v2

    .line 562
    goto :goto_f

    .line 563
    :cond_15
    move-object v13, v8

    .line 564
    :goto_f
    iget-object v14, v0, Lr01;->d:Ljava/lang/String;

    .line 565
    .line 566
    iget-boolean v15, v0, Lr01;->b:Z

    .line 567
    .line 568
    iget-object v0, v5, Lu01;->z:Ljava/lang/Object;

    .line 569
    .line 570
    check-cast v0, Lr23;

    .line 571
    .line 572
    if-eqz v0, :cond_16

    .line 573
    .line 574
    iget-boolean v0, v0, Lr23;->a:Z

    .line 575
    .line 576
    if-eqz v0, :cond_16

    .line 577
    .line 578
    move/from16 v16, v7

    .line 579
    .line 580
    goto :goto_10

    .line 581
    :cond_16
    move/from16 v16, v6

    .line 582
    .line 583
    :goto_10
    new-instance v9, Lxt3;

    .line 584
    .line 585
    invoke-direct/range {v9 .. v16}, Lxt3;-><init>(Lao1;Ljo1;Lkm0;Lqb2;Ljava/lang/String;ZZ)V

    .line 586
    .line 587
    .line 588
    goto/16 :goto_9

    .line 589
    .line 590
    :goto_11
    return-object v8

    .line 591
    :goto_12
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 592
    throw v0

    .line 593
    :pswitch_2
    sget-object v9, Lri0;->n:Lri0;

    .line 594
    .line 595
    iget v0, v5, Lu01;->s:I

    .line 596
    .line 597
    if-eqz v0, :cond_18

    .line 598
    .line 599
    if-ne v0, v7, :cond_17

    .line 600
    .line 601
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 602
    .line 603
    .line 604
    move-object/from16 v0, p1

    .line 605
    .line 606
    goto :goto_13

    .line 607
    :cond_17
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 608
    .line 609
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    move-object v0, v8

    .line 613
    goto :goto_13

    .line 614
    :cond_18
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 615
    .line 616
    .line 617
    iget-object v0, v5, Lu01;->t:Ljava/lang/Object;

    .line 618
    .line 619
    check-cast v0, Lx01;

    .line 620
    .line 621
    iget-object v1, v5, Lu01;->x:Ljava/lang/Object;

    .line 622
    .line 623
    check-cast v1, Lw33;

    .line 624
    .line 625
    iget-object v1, v1, Lw33;->n:Ljava/lang/Object;

    .line 626
    .line 627
    check-cast v1, Lzp3;

    .line 628
    .line 629
    iget-object v2, v5, Lu01;->y:Ljava/lang/Object;

    .line 630
    .line 631
    check-cast v2, Lw33;

    .line 632
    .line 633
    iget-object v2, v2, Lw33;->n:Ljava/lang/Object;

    .line 634
    .line 635
    check-cast v2, Lda0;

    .line 636
    .line 637
    iget-object v3, v5, Lu01;->u:Ljava/lang/Object;

    .line 638
    .line 639
    check-cast v3, Ljo1;

    .line 640
    .line 641
    iget-object v4, v5, Lu01;->v:Ljava/lang/Object;

    .line 642
    .line 643
    iget-object v6, v5, Lu01;->z:Ljava/lang/Object;

    .line 644
    .line 645
    check-cast v6, Lw33;

    .line 646
    .line 647
    iget-object v6, v6, Lw33;->n:Ljava/lang/Object;

    .line 648
    .line 649
    check-cast v6, Ler2;

    .line 650
    .line 651
    iget-object v8, v5, Lu01;->w:Ljava/lang/Object;

    .line 652
    .line 653
    check-cast v8, Lj21;

    .line 654
    .line 655
    iput v7, v5, Lu01;->s:I

    .line 656
    .line 657
    move-object v7, v5

    .line 658
    move-object v5, v6

    .line 659
    move-object v6, v8

    .line 660
    invoke-static/range {v0 .. v7}, Lx01;->a(Lx01;Lzp3;Lda0;Ljo1;Ljava/lang/Object;Ler2;Lj21;Lfh0;)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    if-ne v0, v9, :cond_19

    .line 665
    .line 666
    move-object v0, v9

    .line 667
    :cond_19
    :goto_13
    return-object v0

    .line 668
    nop

    .line 669
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Ld93;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public t:Ljava/lang/Object;

.field public synthetic u:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ldc;Ldh0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ld93;->r:I

    .line 13
    iput-object p1, p0, Ld93;->t:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ldh0;I)V
    .locals 0

    .line 12
    iput p3, p0, Ld93;->r:I

    iput-object p1, p0, Ld93;->u:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V
    .locals 0

    .line 1
    iput p4, p0, Ld93;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Ld93;->t:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Ld93;->u:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lbv3;-><init>(ILdh0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Ld93;->r:I

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
    invoke-virtual {p0, p2, p1}, Ld93;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ld93;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ld93;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p2, Ldh0;

    .line 24
    .line 25
    invoke-virtual {p0, p2, p1}, Ld93;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ld93;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Ld93;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :pswitch_1
    check-cast p1, Lqi0;

    .line 37
    .line 38
    check-cast p2, Ldh0;

    .line 39
    .line 40
    invoke-virtual {p0, p2, p1}, Ld93;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Ld93;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Ld93;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_2
    check-cast p1, Lb81;

    .line 52
    .line 53
    check-cast p2, Ldh0;

    .line 54
    .line 55
    invoke-virtual {p0, p2, p1}, Ld93;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Ld93;

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Ld93;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    sget-object p0, Lri0;->n:Lri0;

    .line 65
    .line 66
    return-object p0

    .line 67
    :pswitch_3
    check-cast p1, Lqi0;

    .line 68
    .line 69
    check-cast p2, Ldh0;

    .line 70
    .line 71
    invoke-virtual {p0, p2, p1}, Ld93;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Ld93;

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Ld93;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :pswitch_4
    check-cast p1, Lqi0;

    .line 83
    .line 84
    check-cast p2, Ldh0;

    .line 85
    .line 86
    invoke-virtual {p0, p2, p1}, Ld93;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    check-cast p0, Ld93;

    .line 91
    .line 92
    invoke-virtual {p0, v1}, Ld93;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :pswitch_5
    check-cast p1, Lqi0;

    .line 98
    .line 99
    check-cast p2, Ldh0;

    .line 100
    .line 101
    invoke-virtual {p0, p2, p1}, Ld93;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    check-cast p0, Ld93;

    .line 106
    .line 107
    invoke-virtual {p0, v1}, Ld93;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :pswitch_6
    check-cast p1, Lqi0;

    .line 113
    .line 114
    check-cast p2, Ldh0;

    .line 115
    .line 116
    invoke-virtual {p0, p2, p1}, Ld93;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    check-cast p0, Ld93;

    .line 121
    .line 122
    invoke-virtual {p0, v1}, Ld93;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0

    .line 127
    :pswitch_7
    check-cast p1, Lqi0;

    .line 128
    .line 129
    check-cast p2, Ldh0;

    .line 130
    .line 131
    invoke-virtual {p0, p2, p1}, Ld93;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    check-cast p0, Ld93;

    .line 136
    .line 137
    invoke-virtual {p0, v1}, Ld93;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    return-object p0

    .line 142
    :pswitch_8
    check-cast p1, Lqi0;

    .line 143
    .line 144
    check-cast p2, Ldh0;

    .line 145
    .line 146
    invoke-virtual {p0, p2, p1}, Ld93;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    check-cast p0, Ld93;

    .line 151
    .line 152
    invoke-virtual {p0, v1}, Ld93;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    return-object p0

    .line 157
    :pswitch_9
    check-cast p1, Lqi0;

    .line 158
    .line 159
    check-cast p2, Ldh0;

    .line 160
    .line 161
    invoke-virtual {p0, p2, p1}, Ld93;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    check-cast p0, Ld93;

    .line 166
    .line 167
    invoke-virtual {p0, v1}, Ld93;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    return-object p0

    .line 172
    :pswitch_a
    check-cast p1, Lqi0;

    .line 173
    .line 174
    check-cast p2, Ldh0;

    .line 175
    .line 176
    invoke-virtual {p0, p2, p1}, Ld93;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    check-cast p0, Ld93;

    .line 181
    .line 182
    invoke-virtual {p0, v1}, Ld93;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    return-object p0

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 2

    .line 1
    iget v0, p0, Ld93;->r:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p2, Ld93;

    .line 7
    .line 8
    iget-object v0, p0, Ld93;->t:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lh33;

    .line 11
    .line 12
    iget-object p0, p0, Ld93;->u:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroid/view/View;

    .line 15
    .line 16
    const/16 v1, 0xb

    .line 17
    .line 18
    invoke-direct {p2, v0, p0, p1, v1}, Ld93;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 19
    .line 20
    .line 21
    return-object p2

    .line 22
    :pswitch_0
    new-instance v0, Ld93;

    .line 23
    .line 24
    iget-object p0, p0, Ld93;->u:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lb81;

    .line 27
    .line 28
    const/16 v1, 0xa

    .line 29
    .line 30
    invoke-direct {v0, p0, p1, v1}, Ld93;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 31
    .line 32
    .line 33
    iput-object p2, v0, Ld93;->t:Ljava/lang/Object;

    .line 34
    .line 35
    return-object v0

    .line 36
    :pswitch_1
    new-instance p2, Ld93;

    .line 37
    .line 38
    iget-object v0, p0, Ld93;->t:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lv24;

    .line 41
    .line 42
    iget-object p0, p0, Ld93;->u:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, Lne1;

    .line 45
    .line 46
    const/16 v1, 0x9

    .line 47
    .line 48
    invoke-direct {p2, v0, p0, p1, v1}, Ld93;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 49
    .line 50
    .line 51
    return-object p2

    .line 52
    :pswitch_2
    new-instance v0, Ld93;

    .line 53
    .line 54
    iget-object p0, p0, Ld93;->u:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p0, Lvt3;

    .line 57
    .line 58
    const/16 v1, 0x8

    .line 59
    .line 60
    invoke-direct {v0, p0, p1, v1}, Ld93;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 61
    .line 62
    .line 63
    iput-object p2, v0, Ld93;->t:Ljava/lang/Object;

    .line 64
    .line 65
    return-object v0

    .line 66
    :pswitch_3
    new-instance p2, Ld93;

    .line 67
    .line 68
    iget-object v0, p0, Ld93;->t:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, La81;

    .line 71
    .line 72
    iget-object p0, p0, Ld93;->u:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p0, Lgz2;

    .line 75
    .line 76
    const/4 v1, 0x7

    .line 77
    invoke-direct {p2, v0, p0, p1, v1}, Ld93;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 78
    .line 79
    .line 80
    return-object p2

    .line 81
    :pswitch_4
    new-instance p2, Ld93;

    .line 82
    .line 83
    iget-object v0, p0, Ld93;->t:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Lfo3;

    .line 86
    .line 87
    iget-object p0, p0, Ld93;->u:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p0, Lw2;

    .line 90
    .line 91
    const/4 v1, 0x6

    .line 92
    invoke-direct {p2, v0, p0, p1, v1}, Ld93;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 93
    .line 94
    .line 95
    return-object p2

    .line 96
    :pswitch_5
    new-instance p2, Ld93;

    .line 97
    .line 98
    iget-object p0, p0, Ld93;->u:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast p0, Lqd1;

    .line 101
    .line 102
    const/4 v0, 0x5

    .line 103
    invoke-direct {p2, p0, p1, v0}, Ld93;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 104
    .line 105
    .line 106
    return-object p2

    .line 107
    :pswitch_6
    new-instance p2, Ld93;

    .line 108
    .line 109
    iget-object v0, p0, Ld93;->t:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v0, Lkm3;

    .line 112
    .line 113
    iget-object p0, p0, Ld93;->u:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p0, Lgj3;

    .line 116
    .line 117
    const/4 v1, 0x4

    .line 118
    invoke-direct {p2, v0, p0, p1, v1}, Ld93;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 119
    .line 120
    .line 121
    return-object p2

    .line 122
    :pswitch_7
    new-instance p2, Ld93;

    .line 123
    .line 124
    iget-object v0, p0, Ld93;->t:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v0, Lm10;

    .line 127
    .line 128
    iget-object p0, p0, Ld93;->u:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 131
    .line 132
    const/4 v1, 0x3

    .line 133
    invoke-direct {p2, v0, p0, p1, v1}, Ld93;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 134
    .line 135
    .line 136
    return-object p2

    .line 137
    :pswitch_8
    new-instance p2, Ld93;

    .line 138
    .line 139
    iget-object v0, p0, Ld93;->t:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v0, Lpw0;

    .line 142
    .line 143
    iget-object p0, p0, Ld93;->u:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast p0, Lwf3;

    .line 146
    .line 147
    const/4 v1, 0x2

    .line 148
    invoke-direct {p2, v0, p0, p1, v1}, Ld93;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 149
    .line 150
    .line 151
    return-object p2

    .line 152
    :pswitch_9
    new-instance v0, Ld93;

    .line 153
    .line 154
    iget-object p0, p0, Ld93;->t:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p0, Ldc;

    .line 157
    .line 158
    invoke-direct {v0, p0, p1}, Ld93;-><init>(Ldc;Ldh0;)V

    .line 159
    .line 160
    .line 161
    iput-object p2, v0, Ld93;->u:Ljava/lang/Object;

    .line 162
    .line 163
    return-object v0

    .line 164
    :pswitch_a
    new-instance p2, Ld93;

    .line 165
    .line 166
    iget-object v0, p0, Ld93;->t:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v0, Ldc;

    .line 169
    .line 170
    iget-object p0, p0, Ld93;->u:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p0, Lve;

    .line 173
    .line 174
    const/4 v1, 0x0

    .line 175
    invoke-direct {p2, v0, p0, p1, v1}, Ld93;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 176
    .line 177
    .line 178
    return-object p2

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Ld93;->r:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x2

    .line 8
    sget-object v5, Lt64;->a:Lt64;

    .line 9
    .line 10
    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    .line 11
    .line 12
    sget-object v7, Lri0;->n:Lri0;

    .line 13
    .line 14
    const/4 v8, 0x1

    .line 15
    const/4 v9, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    iget-object v0, v1, Ld93;->t:Ljava/lang/Object;

    .line 20
    .line 21
    move-object v2, v0

    .line 22
    check-cast v2, Lh33;

    .line 23
    .line 24
    iget-object v0, v1, Ld93;->u:Ljava/lang/Object;

    .line 25
    .line 26
    move-object v3, v0

    .line 27
    check-cast v3, Landroid/view/View;

    .line 28
    .line 29
    iget v0, v1, Ld93;->s:I

    .line 30
    .line 31
    const v10, 0x7f090043

    .line 32
    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    if-ne v0, v8, :cond_0

    .line 37
    .line 38
    :try_start_0
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_3

    .line 44
    :cond_0
    invoke-static {v6}, Lk21;->n(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    move-object v5, v9

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :try_start_1
    iput v8, v1, Ld93;->s:I

    .line 53
    .line 54
    iget-object v0, v2, Lh33;->u:Lwr3;

    .line 55
    .line 56
    new-instance v6, Lzr;

    .line 57
    .line 58
    const/4 v8, 0x5

    .line 59
    invoke-direct {v6, v4, v9, v8}, Lzr;-><init>(ILdh0;I)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v6, v1}, Lqj0;->I(La81;Ldf1;Lfh0;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    if-ne v0, v7, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move-object v0, v5

    .line 70
    :goto_0
    if-ne v0, v7, :cond_3

    .line 71
    .line 72
    move-object v5, v7

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    :goto_1
    invoke-static {v3}, Ljf4;->a(Landroid/view/View;)Lzb0;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-ne v0, v2, :cond_4

    .line 79
    .line 80
    invoke-virtual {v3, v10, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    :goto_2
    return-object v5

    .line 84
    :goto_3
    invoke-static {v3}, Ljf4;->a(Landroid/view/View;)Lzb0;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-ne v1, v2, :cond_5

    .line 89
    .line 90
    invoke-virtual {v3, v10, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_5
    throw v0

    .line 94
    :pswitch_0
    iget v0, v1, Ld93;->s:I

    .line 95
    .line 96
    if-eqz v0, :cond_7

    .line 97
    .line 98
    if-ne v0, v8, :cond_6

    .line 99
    .line 100
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_6
    invoke-static {v6}, Lk21;->n(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    move-object v5, v9

    .line 108
    goto :goto_4

    .line 109
    :cond_7
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, v1, Ld93;->t:Ljava/lang/Object;

    .line 113
    .line 114
    iget-object v2, v1, Ld93;->u:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v2, Lb81;

    .line 117
    .line 118
    iput v8, v1, Ld93;->s:I

    .line 119
    .line 120
    invoke-interface {v2, v0, v1}, Lb81;->m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-ne v0, v7, :cond_8

    .line 125
    .line 126
    move-object v5, v7

    .line 127
    :cond_8
    :goto_4
    return-object v5

    .line 128
    :pswitch_1
    iget-object v0, v1, Ld93;->u:Ljava/lang/Object;

    .line 129
    .line 130
    move-object v2, v0

    .line 131
    check-cast v2, Lne1;

    .line 132
    .line 133
    iget v0, v1, Ld93;->s:I

    .line 134
    .line 135
    if-eqz v0, :cond_a

    .line 136
    .line 137
    if-ne v0, v8, :cond_9

    .line 138
    .line 139
    :try_start_2
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    .line 141
    .line 142
    move-object/from16 v0, p1

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :catchall_1
    move-exception v0

    .line 146
    goto :goto_7

    .line 147
    :cond_9
    invoke-static {v6}, Lk21;->n(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    move-object v5, v9

    .line 151
    goto :goto_6

    .line 152
    :cond_a
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :try_start_3
    iget-object v0, v1, Ld93;->t:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v0, Lv24;

    .line 158
    .line 159
    iput v8, v1, Ld93;->s:I

    .line 160
    .line 161
    invoke-static {v0, v1}, Lv24;->b(Lv24;Lfh0;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-ne v0, v7, :cond_b

    .line 166
    .line 167
    move-object v5, v7

    .line 168
    goto :goto_6

    .line 169
    :cond_b
    :goto_5
    check-cast v0, Ljava/util/Set;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 170
    .line 171
    invoke-interface {v2}, Lne1;->a()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    :goto_6
    return-object v5

    .line 175
    :goto_7
    invoke-interface {v2}, Lne1;->a()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    throw v0

    .line 179
    :pswitch_2
    iget v0, v1, Ld93;->s:I

    .line 180
    .line 181
    if-eqz v0, :cond_d

    .line 182
    .line 183
    if-eq v0, v8, :cond_c

    .line 184
    .line 185
    invoke-static {v6}, Lk21;->n(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :goto_8
    move-object v7, v9

    .line 189
    goto :goto_9

    .line 190
    :cond_c
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-static {}, Lp61;->q()V

    .line 194
    .line 195
    .line 196
    goto :goto_8

    .line 197
    :cond_d
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, v1, Ld93;->t:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v0, Lb81;

    .line 203
    .line 204
    new-instance v2, Ls33;

    .line 205
    .line 206
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 207
    .line 208
    .line 209
    iget-object v3, v1, Ld93;->u:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v3, Lvt3;

    .line 212
    .line 213
    new-instance v4, Luq;

    .line 214
    .line 215
    const/16 v5, 0xa

    .line 216
    .line 217
    invoke-direct {v4, v2, v0, v5}, Luq;-><init>(Ljava/io/Serializable;Lb81;I)V

    .line 218
    .line 219
    .line 220
    iput v8, v1, Ld93;->s:I

    .line 221
    .line 222
    invoke-virtual {v3, v4, v1}, Lwl3;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    :goto_9
    return-object v7

    .line 226
    :pswitch_3
    iget v0, v1, Ld93;->s:I

    .line 227
    .line 228
    if-eqz v0, :cond_f

    .line 229
    .line 230
    if-ne v0, v8, :cond_e

    .line 231
    .line 232
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    goto :goto_a

    .line 236
    :cond_e
    invoke-static {v6}, Lk21;->n(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    move-object v5, v9

    .line 240
    goto :goto_a

    .line 241
    :cond_f
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    iget-object v0, v1, Ld93;->t:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v0, La81;

    .line 247
    .line 248
    new-instance v2, Lep3;

    .line 249
    .line 250
    iget-object v3, v1, Ld93;->u:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v3, Lgz2;

    .line 253
    .line 254
    invoke-direct {v2, v3, v8}, Lep3;-><init>(Lgz2;I)V

    .line 255
    .line 256
    .line 257
    iput v8, v1, Ld93;->s:I

    .line 258
    .line 259
    invoke-interface {v0, v2, v1}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    if-ne v0, v7, :cond_10

    .line 264
    .line 265
    move-object v5, v7

    .line 266
    :cond_10
    :goto_a
    return-object v5

    .line 267
    :pswitch_4
    iget-object v0, v1, Ld93;->t:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v0, Lfo3;

    .line 270
    .line 271
    iget v2, v1, Ld93;->s:I

    .line 272
    .line 273
    if-eqz v2, :cond_12

    .line 274
    .line 275
    if-ne v2, v8, :cond_11

    .line 276
    .line 277
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    goto :goto_f

    .line 281
    :cond_11
    invoke-static {v6}, Lk21;->n(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    :goto_b
    move-object v5, v9

    .line 285
    goto/16 :goto_10

    .line 286
    .line 287
    :cond_12
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    if-eqz v0, :cond_1b

    .line 291
    .line 292
    iget-object v2, v0, Lfo3;->a:Lgo3;

    .line 293
    .line 294
    iget-object v2, v2, Lgo3;->b:Lco3;

    .line 295
    .line 296
    iget-object v6, v1, Ld93;->u:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v6, Lw2;

    .line 299
    .line 300
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    const-wide v10, 0x7fffffffffffffffL

    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    if-eqz v2, :cond_15

    .line 310
    .line 311
    if-eq v2, v8, :cond_14

    .line 312
    .line 313
    if-ne v2, v4, :cond_13

    .line 314
    .line 315
    move-wide v12, v10

    .line 316
    goto :goto_c

    .line 317
    :cond_13
    invoke-static {}, Lp61;->x()V

    .line 318
    .line 319
    .line 320
    goto :goto_b

    .line 321
    :cond_14
    const-wide/16 v12, 0x2710

    .line 322
    .line 323
    goto :goto_c

    .line 324
    :cond_15
    const-wide/16 v12, 0xfa0

    .line 325
    .line 326
    :goto_c
    if-nez v6, :cond_16

    .line 327
    .line 328
    goto :goto_d

    .line 329
    :cond_16
    check-cast v6, Ls8;

    .line 330
    .line 331
    iget-object v2, v6, Ls8;->a:Landroid/view/accessibility/AccessibilityManager;

    .line 332
    .line 333
    const-wide/32 v14, 0x7fffffff

    .line 334
    .line 335
    .line 336
    cmp-long v4, v12, v14

    .line 337
    .line 338
    if-ltz v4, :cond_17

    .line 339
    .line 340
    goto :goto_d

    .line 341
    :cond_17
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 342
    .line 343
    const/16 v6, 0x1d

    .line 344
    .line 345
    if-lt v4, v6, :cond_19

    .line 346
    .line 347
    long-to-int v4, v12

    .line 348
    invoke-static {v2, v4, v3}, Lvf;->c(Landroid/view/accessibility/AccessibilityManager;II)I

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    const v3, 0x7fffffff

    .line 353
    .line 354
    .line 355
    if-ne v2, v3, :cond_18

    .line 356
    .line 357
    goto :goto_e

    .line 358
    :cond_18
    int-to-long v10, v2

    .line 359
    goto :goto_e

    .line 360
    :cond_19
    :goto_d
    move-wide v10, v12

    .line 361
    :goto_e
    iput v8, v1, Ld93;->s:I

    .line 362
    .line 363
    invoke-static {v10, v11, v1}, Lzf5;->A(JLdh0;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    if-ne v1, v7, :cond_1a

    .line 368
    .line 369
    move-object v5, v7

    .line 370
    goto :goto_10

    .line 371
    :cond_1a
    :goto_f
    iget-object v0, v0, Lfo3;->b:Lo20;

    .line 372
    .line 373
    invoke-virtual {v0}, Lo20;->w()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    instance-of v1, v1, Lzm2;

    .line 378
    .line 379
    if-eqz v1, :cond_1b

    .line 380
    .line 381
    sget-object v1, Lno3;->n:Lno3;

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Lo20;->g(Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    :cond_1b
    :goto_10
    return-object v5

    .line 387
    :pswitch_5
    iget-object v0, v1, Ld93;->u:Ljava/lang/Object;

    .line 388
    .line 389
    check-cast v0, Lqd1;

    .line 390
    .line 391
    iget v2, v1, Ld93;->s:I

    .line 392
    .line 393
    if-eqz v2, :cond_1e

    .line 394
    .line 395
    if-eq v2, v8, :cond_1d

    .line 396
    .line 397
    if-ne v2, v4, :cond_1c

    .line 398
    .line 399
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    goto :goto_14

    .line 403
    :cond_1c
    invoke-static {v6}, Lk21;->n(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    :goto_11
    move-object v5, v9

    .line 407
    goto :goto_15

    .line 408
    :cond_1d
    iget-object v2, v1, Ld93;->t:Ljava/lang/Object;

    .line 409
    .line 410
    check-cast v2, Ln;

    .line 411
    .line 412
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    move-object/from16 v3, p1

    .line 416
    .line 417
    goto :goto_12

    .line 418
    :cond_1e
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    iget-object v2, v0, Lqd1;->r:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast v2, Ljj;

    .line 424
    .line 425
    iget-object v2, v2, Ljj;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 426
    .line 427
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 428
    .line 429
    .line 430
    move-result v2

    .line 431
    if-lez v2, :cond_22

    .line 432
    .line 433
    :cond_1f
    iget-object v2, v0, Lqd1;->o:Ljava/lang/Object;

    .line 434
    .line 435
    check-cast v2, Lqi0;

    .line 436
    .line 437
    invoke-interface {v2}, Lqi0;->d()Lhi0;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    invoke-static {v2}, Ln44;->k0(Lhi0;)V

    .line 442
    .line 443
    .line 444
    iget-object v2, v0, Lqd1;->p:Ljava/lang/Object;

    .line 445
    .line 446
    check-cast v2, Ln;

    .line 447
    .line 448
    iget-object v3, v0, Lqd1;->q:Ljava/lang/Object;

    .line 449
    .line 450
    check-cast v3, Lzy;

    .line 451
    .line 452
    iput-object v2, v1, Ld93;->t:Ljava/lang/Object;

    .line 453
    .line 454
    iput v8, v1, Ld93;->s:I

    .line 455
    .line 456
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    invoke-static {v3, v1}, Lzy;->H(Lzy;Lbv3;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v3

    .line 463
    if-ne v3, v7, :cond_20

    .line 464
    .line 465
    goto :goto_13

    .line 466
    :cond_20
    :goto_12
    iput-object v9, v1, Ld93;->t:Ljava/lang/Object;

    .line 467
    .line 468
    iput v4, v1, Ld93;->s:I

    .line 469
    .line 470
    invoke-interface {v2, v3, v1}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    if-ne v2, v7, :cond_21

    .line 475
    .line 476
    :goto_13
    move-object v5, v7

    .line 477
    goto :goto_15

    .line 478
    :cond_21
    :goto_14
    iget-object v2, v0, Lqd1;->r:Ljava/lang/Object;

    .line 479
    .line 480
    check-cast v2, Ljj;

    .line 481
    .line 482
    iget-object v2, v2, Ljj;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 483
    .line 484
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    if-nez v2, :cond_1f

    .line 489
    .line 490
    goto :goto_15

    .line 491
    :cond_22
    const-string v0, "Check failed."

    .line 492
    .line 493
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    goto :goto_11

    .line 497
    :goto_15
    return-object v5

    .line 498
    :pswitch_6
    iget-object v0, v1, Ld93;->u:Ljava/lang/Object;

    .line 499
    .line 500
    move-object v2, v0

    .line 501
    check-cast v2, Lgj3;

    .line 502
    .line 503
    iget-object v0, v1, Ld93;->t:Ljava/lang/Object;

    .line 504
    .line 505
    move-object v10, v0

    .line 506
    check-cast v10, Lkm3;

    .line 507
    .line 508
    iget v0, v1, Ld93;->s:I

    .line 509
    .line 510
    if-eqz v0, :cond_25

    .line 511
    .line 512
    if-eq v0, v8, :cond_24

    .line 513
    .line 514
    if-ne v0, v4, :cond_23

    .line 515
    .line 516
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 517
    .line 518
    .line 519
    goto :goto_18

    .line 520
    :cond_23
    invoke-static {v6}, Lk21;->n(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    move-object v5, v9

    .line 524
    goto :goto_18

    .line 525
    :cond_24
    :try_start_4
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 526
    .line 527
    .line 528
    goto :goto_18

    .line 529
    :catch_0
    move-exception v0

    .line 530
    goto :goto_16

    .line 531
    :cond_25
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 532
    .line 533
    .line 534
    :try_start_5
    iget-object v0, v10, Lkm3;->e:Llm0;

    .line 535
    .line 536
    new-instance v6, Lim3;

    .line 537
    .line 538
    invoke-direct {v6, v10, v9, v8}, Lim3;-><init>(Lkm3;Ldh0;I)V

    .line 539
    .line 540
    .line 541
    iput v8, v1, Ld93;->s:I

    .line 542
    .line 543
    invoke-interface {v0, v6, v1}, Llm0;->a(Ldf1;Ldh0;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 547
    if-ne v0, v7, :cond_26

    .line 548
    .line 549
    goto :goto_17

    .line 550
    :goto_16
    new-instance v6, Ljava/lang/StringBuilder;

    .line 551
    .line 552
    const-string v8, "App foregrounded, failed to update data. Message: "

    .line 553
    .line 554
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    const-string v6, "FirebaseSessions"

    .line 569
    .line 570
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .line 572
    .line 573
    invoke-virtual {v10, v2}, Lkm3;->e(Lgj3;)Z

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    if-eqz v0, :cond_26

    .line 578
    .line 579
    iget-object v0, v10, Lkm3;->b:Luj3;

    .line 580
    .line 581
    iget-object v6, v2, Lgj3;->a:Llj3;

    .line 582
    .line 583
    invoke-virtual {v0, v6}, Luj3;->a(Llj3;)Llj3;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    const/4 v6, 0x4

    .line 588
    invoke-static {v2, v0, v9, v9, v6}, Lgj3;->a(Lgj3;Llj3;Lhz3;Ljava/util/Map;I)Lgj3;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    iput-object v2, v10, Lkm3;->h:Lgj3;

    .line 593
    .line 594
    iget-object v2, v10, Lkm3;->c:Ltj3;

    .line 595
    .line 596
    iget-object v6, v2, Ltj3;->e:Lhi0;

    .line 597
    .line 598
    invoke-static {v6}, Ldm0;->c(Lhi0;)Lbh0;

    .line 599
    .line 600
    .line 601
    move-result-object v6

    .line 602
    new-instance v8, Lrj3;

    .line 603
    .line 604
    invoke-direct {v8, v2, v0, v9}, Lrj3;-><init>(Ltj3;Llj3;Ldh0;)V

    .line 605
    .line 606
    .line 607
    invoke-static {v6, v9, v9, v8, v3}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 608
    .line 609
    .line 610
    iget-object v0, v0, Llj3;->a:Ljava/lang/String;

    .line 611
    .line 612
    iput v4, v1, Ld93;->s:I

    .line 613
    .line 614
    sget-object v2, Lhm3;->o:Lhm3;

    .line 615
    .line 616
    invoke-static {v10, v0, v2, v1}, Lkm3;->a(Lkm3;Ljava/lang/String;Lhm3;Ldh0;)Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    if-ne v0, v7, :cond_26

    .line 621
    .line 622
    :goto_17
    move-object v5, v7

    .line 623
    :cond_26
    :goto_18
    return-object v5

    .line 624
    :pswitch_7
    iget-object v0, v1, Ld93;->u:Ljava/lang/Object;

    .line 625
    .line 626
    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 627
    .line 628
    iget-object v3, v1, Ld93;->t:Ljava/lang/Object;

    .line 629
    .line 630
    check-cast v3, Lm10;

    .line 631
    .line 632
    iget v10, v1, Ld93;->s:I

    .line 633
    .line 634
    if-eqz v10, :cond_29

    .line 635
    .line 636
    if-eq v10, v8, :cond_28

    .line 637
    .line 638
    if-ne v10, v4, :cond_27

    .line 639
    .line 640
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 641
    .line 642
    .line 643
    goto :goto_1b

    .line 644
    :cond_27
    invoke-static {v6}, Lk21;->n(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    move-object v5, v9

    .line 648
    goto :goto_1c

    .line 649
    :cond_28
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 650
    .line 651
    .line 652
    goto :goto_19

    .line 653
    :cond_29
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v6

    .line 660
    iput v8, v1, Ld93;->s:I

    .line 661
    .line 662
    invoke-virtual {v3, v6, v1}, Lm10;->d(Ljava/lang/String;Lbv3;)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v6

    .line 666
    if-ne v6, v7, :cond_2a

    .line 667
    .line 668
    goto :goto_1a

    .line 669
    :cond_2a
    :goto_19
    iput v4, v1, Ld93;->s:I

    .line 670
    .line 671
    invoke-virtual {v3, v8, v1}, Lm10;->e(ZLfh0;)Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    if-ne v1, v7, :cond_2b

    .line 676
    .line 677
    :goto_1a
    move-object v5, v7

    .line 678
    goto :goto_1c

    .line 679
    :cond_2b
    :goto_1b
    sget-object v1, Lez3;->a:Lra3;

    .line 680
    .line 681
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    new-array v0, v2, [Ljava/lang/Object;

    .line 685
    .line 686
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 687
    .line 688
    .line 689
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 690
    .line 691
    .line 692
    :goto_1c
    return-object v5

    .line 693
    :pswitch_8
    iget v0, v1, Ld93;->s:I

    .line 694
    .line 695
    if-eqz v0, :cond_2d

    .line 696
    .line 697
    if-ne v0, v8, :cond_2c

    .line 698
    .line 699
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 700
    .line 701
    .line 702
    goto :goto_1e

    .line 703
    :cond_2c
    invoke-static {v6}, Lk21;->n(Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    move-object v5, v9

    .line 707
    goto :goto_1e

    .line 708
    :cond_2d
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 709
    .line 710
    .line 711
    iget-object v0, v1, Ld93;->t:Ljava/lang/Object;

    .line 712
    .line 713
    check-cast v0, Lpw0;

    .line 714
    .line 715
    iget-boolean v3, v0, Lpw0;->b:Z

    .line 716
    .line 717
    if-eqz v3, :cond_2e

    .line 718
    .line 719
    const/high16 v3, -0x40800000    # -1.0f

    .line 720
    .line 721
    goto :goto_1d

    .line 722
    :cond_2e
    const/high16 v3, 0x3f800000    # 1.0f

    .line 723
    .line 724
    :goto_1d
    iget-object v4, v1, Ld93;->u:Ljava/lang/Object;

    .line 725
    .line 726
    check-cast v4, Lwf3;

    .line 727
    .line 728
    iget-object v4, v4, Lwf3;->a0:Ldg3;

    .line 729
    .line 730
    iget-wide v9, v0, Lpw0;->a:J

    .line 731
    .line 732
    const/16 v0, 0x20

    .line 733
    .line 734
    shr-long v11, v9, v0

    .line 735
    .line 736
    long-to-int v6, v11

    .line 737
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 738
    .line 739
    .line 740
    move-result v6

    .line 741
    mul-float/2addr v6, v3

    .line 742
    const-wide v11, 0xffffffffL

    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    and-long/2addr v9, v11

    .line 748
    long-to-int v9, v9

    .line 749
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 750
    .line 751
    .line 752
    move-result v9

    .line 753
    mul-float/2addr v9, v3

    .line 754
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 755
    .line 756
    .line 757
    move-result v3

    .line 758
    int-to-long v13, v3

    .line 759
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 760
    .line 761
    .line 762
    move-result v3

    .line 763
    int-to-long v9, v3

    .line 764
    shl-long/2addr v13, v0

    .line 765
    and-long/2addr v9, v11

    .line 766
    or-long/2addr v9, v13

    .line 767
    iput v8, v1, Ld93;->s:I

    .line 768
    .line 769
    invoke-virtual {v4, v9, v10, v2, v1}, Ldg3;->c(JZLbv3;)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    if-ne v0, v7, :cond_2f

    .line 774
    .line 775
    move-object v5, v7

    .line 776
    :cond_2f
    :goto_1e
    return-object v5

    .line 777
    :pswitch_9
    iget-object v0, v1, Ld93;->t:Ljava/lang/Object;

    .line 778
    .line 779
    check-cast v0, Ldc;

    .line 780
    .line 781
    iget v2, v1, Ld93;->s:I

    .line 782
    .line 783
    if-eqz v2, :cond_31

    .line 784
    .line 785
    if-ne v2, v8, :cond_30

    .line 786
    .line 787
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 788
    .line 789
    .line 790
    goto :goto_1f

    .line 791
    :cond_30
    invoke-static {v6}, Lk21;->n(Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    move-object v5, v9

    .line 795
    goto :goto_1f

    .line 796
    :cond_31
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 797
    .line 798
    .line 799
    iget-object v2, v1, Ld93;->u:Ljava/lang/Object;

    .line 800
    .line 801
    check-cast v2, Lqi0;

    .line 802
    .line 803
    iget-object v3, v0, Ldc;->B:Lxs1;

    .line 804
    .line 805
    invoke-interface {v3}, Lxs1;->a()La81;

    .line 806
    .line 807
    .line 808
    move-result-object v3

    .line 809
    new-instance v4, Luq;

    .line 810
    .line 811
    const/16 v6, 0x9

    .line 812
    .line 813
    invoke-direct {v4, v6, v0, v2}, Luq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 814
    .line 815
    .line 816
    iput v8, v1, Ld93;->s:I

    .line 817
    .line 818
    invoke-interface {v3, v4, v1}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    if-ne v0, v7, :cond_32

    .line 823
    .line 824
    move-object v5, v7

    .line 825
    :cond_32
    :goto_1f
    return-object v5

    .line 826
    :pswitch_a
    iget v0, v1, Ld93;->s:I

    .line 827
    .line 828
    if-eqz v0, :cond_34

    .line 829
    .line 830
    if-ne v0, v8, :cond_33

    .line 831
    .line 832
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 833
    .line 834
    .line 835
    goto :goto_20

    .line 836
    :cond_33
    invoke-static {v6}, Lk21;->n(Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    move-object v5, v9

    .line 840
    goto :goto_20

    .line 841
    :cond_34
    invoke-static/range {p1 .. p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 842
    .line 843
    .line 844
    iget-object v0, v1, Ld93;->t:Ljava/lang/Object;

    .line 845
    .line 846
    check-cast v0, Ldc;

    .line 847
    .line 848
    iget-object v0, v0, Ldc;->K:Lpd;

    .line 849
    .line 850
    new-instance v2, Ljava/lang/Float;

    .line 851
    .line 852
    const/4 v3, 0x0

    .line 853
    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    .line 854
    .line 855
    .line 856
    iget-object v3, v1, Ld93;->u:Ljava/lang/Object;

    .line 857
    .line 858
    check-cast v3, Lve;

    .line 859
    .line 860
    iput v8, v1, Ld93;->s:I

    .line 861
    .line 862
    invoke-static {v0, v2, v3, v1}, Lpd;->c(Lpd;Ljava/lang/Object;Lve;Lbv3;)Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    if-ne v0, v7, :cond_35

    .line 867
    .line 868
    move-object v5, v7

    .line 869
    :cond_35
    :goto_20
    return-object v5

    .line 870
    nop

    .line 871
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

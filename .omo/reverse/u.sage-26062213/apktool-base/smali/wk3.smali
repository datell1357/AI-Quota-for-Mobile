.class public final synthetic Lwk3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lqi0;Lpg2;Lpg2;Laj3;Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lwk3;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lwk3;->o:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lwk3;->p:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Lwk3;->q:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p2, p0, Lwk3;->r:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p3, p0, Lwk3;->s:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Ly84;Ln8;Lne1;Lpe1;Lne1;I)V
    .locals 0

    .line 18
    const/4 p6, 0x1

    iput p6, p0, Lwk3;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwk3;->o:Ljava/lang/Object;

    iput-object p2, p0, Lwk3;->p:Ljava/lang/Object;

    iput-object p3, p0, Lwk3;->q:Ljava/lang/Object;

    iput-object p4, p0, Lwk3;->r:Ljava/lang/Object;

    iput-object p5, p0, Lwk3;->s:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lwk3;->n:I

    .line 4
    .line 5
    sget-object v2, Lt64;->a:Lt64;

    .line 6
    .line 7
    iget-object v3, v0, Lwk3;->s:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Lwk3;->r:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Lwk3;->q:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Lwk3;->p:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v0, v0, Lwk3;->o:Ljava/lang/Object;

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object v7, v0

    .line 21
    check-cast v7, Ly84;

    .line 22
    .line 23
    move-object v8, v6

    .line 24
    check-cast v8, Ln8;

    .line 25
    .line 26
    move-object v9, v5

    .line 27
    check-cast v9, Lne1;

    .line 28
    .line 29
    move-object v10, v4

    .line 30
    check-cast v10, Lpe1;

    .line 31
    .line 32
    move-object v11, v3

    .line 33
    check-cast v11, Lne1;

    .line 34
    .line 35
    move-object/from16 v12, p1

    .line 36
    .line 37
    check-cast v12, Lag1;

    .line 38
    .line 39
    move-object/from16 v0, p2

    .line 40
    .line 41
    check-cast v0, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const/16 v0, 0x41

    .line 47
    .line 48
    invoke-static {v0}, Lqj0;->f0(I)I

    .line 49
    .line 50
    .line 51
    move-result v13

    .line 52
    invoke-static/range {v7 .. v13}, Lqj0;->o(Ly84;Ln8;Lne1;Lpe1;Lne1;Lag1;I)V

    .line 53
    .line 54
    .line 55
    return-object v2

    .line 56
    :pswitch_0
    move-object v15, v0

    .line 57
    check-cast v15, Lqi0;

    .line 58
    .line 59
    check-cast v6, Laj3;

    .line 60
    .line 61
    check-cast v5, Landroid/content/Context;

    .line 62
    .line 63
    check-cast v4, Lpg2;

    .line 64
    .line 65
    check-cast v3, Ltr3;

    .line 66
    .line 67
    move-object/from16 v12, p1

    .line 68
    .line 69
    check-cast v12, Lag1;

    .line 70
    .line 71
    move-object/from16 v0, p2

    .line 72
    .line 73
    check-cast v0, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    and-int/lit8 v1, v0, 0x3

    .line 80
    .line 81
    const/4 v7, 0x2

    .line 82
    const/4 v8, 0x1

    .line 83
    if-eq v1, v7, :cond_0

    .line 84
    .line 85
    move v1, v8

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    const/4 v1, 0x0

    .line 88
    :goto_0
    and-int/2addr v0, v8

    .line 89
    invoke-virtual {v12, v0, v1}, Lag1;->N(IZ)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    invoke-interface {v3}, Ltr3;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Ljava/lang/Boolean;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    invoke-virtual {v12, v15}, Lag1;->h(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {v12, v6}, Lag1;->h(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    or-int/2addr v0, v1

    .line 114
    invoke-virtual {v12, v5}, Lag1;->h(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    or-int/2addr v0, v1

    .line 119
    invoke-virtual {v12, v4}, Lag1;->f(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    or-int/2addr v0, v1

    .line 124
    invoke-virtual {v12}, Lag1;->K()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    if-nez v0, :cond_1

    .line 129
    .line 130
    sget-object v0, Lrb0;->a:Lbx3;

    .line 131
    .line 132
    if-ne v1, v0, :cond_2

    .line 133
    .line 134
    :cond_1
    new-instance v14, Lk4;

    .line 135
    .line 136
    const/16 v19, 0x7

    .line 137
    .line 138
    move-object/from16 v18, v4

    .line 139
    .line 140
    move-object/from16 v16, v5

    .line 141
    .line 142
    move-object/from16 v17, v6

    .line 143
    .line 144
    invoke-direct/range {v14 .. v19}, Lk4;-><init>(Lqi0;Ljava/lang/Object;Laj3;Lpg2;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v12, v14}, Lag1;->g0(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    move-object v1, v14

    .line 151
    :cond_2
    move-object v8, v1

    .line 152
    check-cast v8, Lpe1;

    .line 153
    .line 154
    sget-object v0, Lwa2;->a:Lis3;

    .line 155
    .line 156
    invoke-virtual {v12, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Lua2;

    .line 161
    .line 162
    iget-object v0, v0, Lua2;->a:Ly70;

    .line 163
    .line 164
    iget-wide v0, v0, Ly70;->F:J

    .line 165
    .line 166
    invoke-static {v0, v1, v12}, Lzf5;->u(JLag1;)Lgv3;

    .line 167
    .line 168
    .line 169
    move-result-object v11

    .line 170
    const/4 v13, 0x0

    .line 171
    const/4 v9, 0x0

    .line 172
    const/4 v10, 0x0

    .line 173
    invoke-static/range {v7 .. v13}, Ljv3;->a(ZLpe1;Lnd2;ZLgv3;Lag1;I)V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_3
    invoke-virtual {v12}, Lag1;->Q()V

    .line 178
    .line 179
    .line 180
    :goto_1
    return-object v2

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

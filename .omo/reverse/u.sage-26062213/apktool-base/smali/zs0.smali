.class public final synthetic Lzs0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Z

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lso1;ZLpe1;I)V
    .locals 0

    .line 18
    const/4 p6, 0x0

    iput p6, p0, Lzs0;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzs0;->p:Ljava/lang/Object;

    iput-object p2, p0, Lzs0;->q:Ljava/lang/Object;

    iput-object p3, p0, Lzs0;->r:Ljava/lang/Object;

    iput-boolean p4, p0, Lzs0;->o:Z

    iput-object p5, p0, Lzs0;->s:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ln8;Lqi0;Lpg2;Laj3;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lzs0;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-boolean p5, p0, Lzs0;->o:Z

    .line 8
    .line 9
    iput-object p2, p0, Lzs0;->p:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Lzs0;->q:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p1, p0, Lzs0;->r:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p3, p0, Lzs0;->s:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lzs0;->n:I

    .line 4
    .line 5
    sget-object v2, Lt64;->a:Lt64;

    .line 6
    .line 7
    iget-object v3, v0, Lzs0;->s:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Lzs0;->r:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Lzs0;->q:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Lzs0;->p:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object v8, v6

    .line 19
    check-cast v8, Lqi0;

    .line 20
    .line 21
    move-object v10, v5

    .line 22
    check-cast v10, Laj3;

    .line 23
    .line 24
    move-object v9, v4

    .line 25
    check-cast v9, Ln8;

    .line 26
    .line 27
    move-object v11, v3

    .line 28
    check-cast v11, Lpg2;

    .line 29
    .line 30
    move-object/from16 v1, p1

    .line 31
    .line 32
    check-cast v1, Lag1;

    .line 33
    .line 34
    move-object/from16 v3, p2

    .line 35
    .line 36
    check-cast v3, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    and-int/lit8 v4, v3, 0x3

    .line 43
    .line 44
    const/4 v5, 0x2

    .line 45
    const/4 v6, 0x1

    .line 46
    if-eq v4, v5, :cond_0

    .line 47
    .line 48
    move v4, v6

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v4, 0x0

    .line 51
    :goto_0
    and-int/2addr v3, v6

    .line 52
    invoke-virtual {v1, v3, v4}, Lag1;->N(IZ)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    invoke-virtual {v1, v8}, Lag1;->h(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    invoke-virtual {v1, v10}, Lag1;->h(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    or-int/2addr v3, v4

    .line 67
    invoke-virtual {v1, v9}, Lag1;->h(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    or-int/2addr v3, v4

    .line 72
    invoke-virtual {v1, v11}, Lag1;->f(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    or-int/2addr v3, v4

    .line 77
    invoke-virtual {v1}, Lag1;->K()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    if-nez v3, :cond_1

    .line 82
    .line 83
    sget-object v3, Lrb0;->a:Lbx3;

    .line 84
    .line 85
    if-ne v4, v3, :cond_2

    .line 86
    .line 87
    :cond_1
    new-instance v7, Lk4;

    .line 88
    .line 89
    const/16 v12, 0x8

    .line 90
    .line 91
    invoke-direct/range {v7 .. v12}, Lk4;-><init>(Lqi0;Ljava/lang/Object;Laj3;Lpg2;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v7}, Lag1;->g0(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    move-object v4, v7

    .line 98
    :cond_2
    move-object v13, v4

    .line 99
    check-cast v13, Lpe1;

    .line 100
    .line 101
    sget-object v3, Lwa2;->a:Lis3;

    .line 102
    .line 103
    invoke-virtual {v1, v3}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Lua2;

    .line 108
    .line 109
    iget-object v3, v3, Lua2;->a:Ly70;

    .line 110
    .line 111
    iget-wide v3, v3, Ly70;->F:J

    .line 112
    .line 113
    invoke-static {v3, v4, v1}, Lzf5;->u(JLag1;)Lgv3;

    .line 114
    .line 115
    .line 116
    move-result-object v16

    .line 117
    const/16 v18, 0x0

    .line 118
    .line 119
    iget-boolean v12, v0, Lzs0;->o:Z

    .line 120
    .line 121
    const/4 v14, 0x0

    .line 122
    const/4 v15, 0x0

    .line 123
    move-object/from16 v17, v1

    .line 124
    .line 125
    invoke-static/range {v12 .. v18}, Ljv3;->a(ZLpe1;Lnd2;ZLgv3;Lag1;I)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    move-object/from16 v17, v1

    .line 130
    .line 131
    invoke-virtual/range {v17 .. v17}, Lag1;->Q()V

    .line 132
    .line 133
    .line 134
    :goto_1
    return-object v2

    .line 135
    :pswitch_0
    check-cast v6, Ljava/lang/String;

    .line 136
    .line 137
    check-cast v5, Ljava/lang/String;

    .line 138
    .line 139
    check-cast v4, Lso1;

    .line 140
    .line 141
    move-object v7, v3

    .line 142
    check-cast v7, Lpe1;

    .line 143
    .line 144
    move-object/from16 v8, p1

    .line 145
    .line 146
    check-cast v8, Lag1;

    .line 147
    .line 148
    move-object/from16 v1, p2

    .line 149
    .line 150
    check-cast v1, Ljava/lang/Integer;

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    const/16 v1, 0x37

    .line 156
    .line 157
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    iget-boolean v0, v0, Lzs0;->o:Z

    .line 162
    .line 163
    move-object v3, v5

    .line 164
    move-object v5, v4

    .line 165
    move-object v4, v3

    .line 166
    move-object v3, v6

    .line 167
    move v6, v0

    .line 168
    invoke-static/range {v3 .. v9}, Lon4;->c(Ljava/lang/String;Ljava/lang/String;Lso1;ZLpe1;Lag1;I)V

    .line 169
    .line 170
    .line 171
    return-object v2

    .line 172
    nop

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Li4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ly84;


# direct methods
.method public synthetic constructor <init>(Ly84;I)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    iput p2, p0, Li4;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Li4;->o:Ly84;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Ly84;IB)V
    .locals 0

    .line 10
    iput p2, p0, Li4;->n:I

    iput-object p1, p0, Li4;->o:Ly84;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 47

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Li4;->n:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    sget-object v4, Lt64;->a:Lt64;

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    iget-object v0, v0, Li4;->o:Ly84;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p1

    .line 16
    .line 17
    check-cast v1, Lag1;

    .line 18
    .line 19
    move-object/from16 v6, p2

    .line 20
    .line 21
    check-cast v6, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    and-int/lit8 v7, v6, 0x3

    .line 28
    .line 29
    if-eq v7, v3, :cond_0

    .line 30
    .line 31
    move v2, v5

    .line 32
    :cond_0
    and-int/lit8 v3, v6, 0x1

    .line 33
    .line 34
    invoke-virtual {v1, v3, v2}, Lag1;->N(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    iget-object v6, v0, Ly84;->n:Ljava/lang/String;

    .line 41
    .line 42
    const/16 v26, 0x0

    .line 43
    .line 44
    const v27, 0x3fffe

    .line 45
    .line 46
    .line 47
    const/4 v7, 0x0

    .line 48
    const-wide/16 v8, 0x0

    .line 49
    .line 50
    const-wide/16 v10, 0x0

    .line 51
    .line 52
    const/4 v12, 0x0

    .line 53
    const/4 v13, 0x0

    .line 54
    const-wide/16 v14, 0x0

    .line 55
    .line 56
    const/16 v16, 0x0

    .line 57
    .line 58
    const-wide/16 v17, 0x0

    .line 59
    .line 60
    const/16 v19, 0x0

    .line 61
    .line 62
    const/16 v20, 0x0

    .line 63
    .line 64
    const/16 v21, 0x0

    .line 65
    .line 66
    const/16 v22, 0x0

    .line 67
    .line 68
    const/16 v23, 0x0

    .line 69
    .line 70
    const/16 v25, 0x0

    .line 71
    .line 72
    move-object/from16 v24, v1

    .line 73
    .line 74
    invoke-static/range {v6 .. v27}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    move-object/from16 v24, v1

    .line 79
    .line 80
    invoke-virtual/range {v24 .. v24}, Lag1;->Q()V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-object v4

    .line 84
    :pswitch_0
    move-object/from16 v1, p1

    .line 85
    .line 86
    check-cast v1, Lag1;

    .line 87
    .line 88
    move-object/from16 v6, p2

    .line 89
    .line 90
    check-cast v6, Ljava/lang/Integer;

    .line 91
    .line 92
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    and-int/lit8 v7, v6, 0x3

    .line 97
    .line 98
    if-eq v7, v3, :cond_2

    .line 99
    .line 100
    move v2, v5

    .line 101
    :cond_2
    and-int/lit8 v3, v6, 0x1

    .line 102
    .line 103
    invoke-virtual {v1, v3, v2}, Lag1;->N(IZ)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_3

    .line 108
    .line 109
    iget-object v0, v0, Ly84;->n:Ljava/lang/String;

    .line 110
    .line 111
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const v2, 0x7f1003aa

    .line 116
    .line 117
    .line 118
    invoke-static {v2, v0, v1}, Lon4;->P(I[Ljava/lang/Object;Lag1;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v25

    .line 122
    sget-object v0, Lwa2;->a:Lis3;

    .line 123
    .line 124
    invoke-virtual {v1, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    check-cast v2, Lua2;

    .line 129
    .line 130
    iget-object v2, v2, Lua2;->b:Le54;

    .line 131
    .line 132
    iget-object v2, v2, Le54;->k:Lay3;

    .line 133
    .line 134
    invoke-virtual {v1, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Lua2;

    .line 139
    .line 140
    iget-object v0, v0, Lua2;->a:Ly70;

    .line 141
    .line 142
    iget-wide v5, v0, Ly70;->s:J

    .line 143
    .line 144
    const/16 v45, 0x0

    .line 145
    .line 146
    const v46, 0x1fffa

    .line 147
    .line 148
    .line 149
    const/16 v26, 0x0

    .line 150
    .line 151
    const-wide/16 v29, 0x0

    .line 152
    .line 153
    const/16 v31, 0x0

    .line 154
    .line 155
    const/16 v32, 0x0

    .line 156
    .line 157
    const-wide/16 v33, 0x0

    .line 158
    .line 159
    const/16 v35, 0x0

    .line 160
    .line 161
    const-wide/16 v36, 0x0

    .line 162
    .line 163
    const/16 v38, 0x0

    .line 164
    .line 165
    const/16 v39, 0x0

    .line 166
    .line 167
    const/16 v40, 0x0

    .line 168
    .line 169
    const/16 v41, 0x0

    .line 170
    .line 171
    const/16 v44, 0x0

    .line 172
    .line 173
    move-object/from16 v43, v1

    .line 174
    .line 175
    move-object/from16 v42, v2

    .line 176
    .line 177
    move-wide/from16 v27, v5

    .line 178
    .line 179
    invoke-static/range {v25 .. v46}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_3
    move-object/from16 v43, v1

    .line 184
    .line 185
    invoke-virtual/range {v43 .. v43}, Lag1;->Q()V

    .line 186
    .line 187
    .line 188
    :goto_1
    return-object v4

    .line 189
    :pswitch_1
    move-object/from16 v1, p1

    .line 190
    .line 191
    check-cast v1, Lag1;

    .line 192
    .line 193
    move-object/from16 v2, p2

    .line 194
    .line 195
    check-cast v2, Ljava/lang/Integer;

    .line 196
    .line 197
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    invoke-static {v5}, Lqj0;->f0(I)I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    invoke-static {v0, v1, v2}, Lix;->e(Ly84;Lag1;I)V

    .line 205
    .line 206
    .line 207
    return-object v4

    .line 208
    nop

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

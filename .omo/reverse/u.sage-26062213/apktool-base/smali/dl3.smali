.class public final Ldl3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ldl3;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Ldl3;->o:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ldl3;->n:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    sget-object v5, Lt64;->a:Lt64;

    .line 9
    .line 10
    iget-object v0, v0, Ldl3;->o:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p1

    .line 16
    .line 17
    check-cast v1, Lp91;

    .line 18
    .line 19
    iget v1, v1, Lp91;->a:I

    .line 20
    .line 21
    move-object/from16 v2, p2

    .line 22
    .line 23
    check-cast v2, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-static {v1}, Lv91;->c(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    const/16 v4, 0x1f

    .line 42
    .line 43
    if-lt v3, v4, :cond_0

    .line 44
    .line 45
    sget-object v3, Lyf;->a:Lyf;

    .line 46
    .line 47
    invoke-virtual {v3, v1, v2}, Lyf;->a(IZ)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-static {v1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    :goto_0
    check-cast v0, Lq9;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-object v5

    .line 62
    :pswitch_0
    move-object/from16 v11, p1

    .line 63
    .line 64
    check-cast v11, Lag1;

    .line 65
    .line 66
    move-object/from16 v1, p2

    .line 67
    .line 68
    check-cast v1, Ljava/lang/Number;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    and-int/lit8 v6, v1, 0x3

    .line 75
    .line 76
    if-eq v6, v2, :cond_2

    .line 77
    .line 78
    move v4, v3

    .line 79
    :cond_2
    and-int/2addr v1, v3

    .line 80
    invoke-virtual {v11, v1, v4}, Lag1;->N(IZ)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    check-cast v0, Ly84;

    .line 87
    .line 88
    iget v0, v0, Ly84;->o:I

    .line 89
    .line 90
    invoke-static {v0, v11}, Lkt4;->W(ILag1;)Lgs2;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    sget-object v0, Lgy3;->c:Lis3;

    .line 95
    .line 96
    invoke-virtual {v11, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Ln50;

    .line 101
    .line 102
    iget-wide v9, v0, Ln50;->P:J

    .line 103
    .line 104
    sget-object v0, Lkd2;->b:Lkd2;

    .line 105
    .line 106
    const/high16 v1, 0x41900000    # 18.0f

    .line 107
    .line 108
    invoke-static {v0, v1}, Lon3;->c(Lnd2;F)Lnd2;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    const/16 v12, 0x1b8

    .line 113
    .line 114
    const/4 v13, 0x0

    .line 115
    const/4 v7, 0x0

    .line 116
    invoke-static/range {v6 .. v13}, Lqn1;->b(Lgs2;Ljava/lang/String;Lnd2;JLag1;II)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {v11}, Lag1;->Q()V

    .line 121
    .line 122
    .line 123
    :goto_1
    return-object v5

    .line 124
    :pswitch_1
    move-object/from16 v1, p1

    .line 125
    .line 126
    check-cast v1, Lag1;

    .line 127
    .line 128
    move-object/from16 v6, p2

    .line 129
    .line 130
    check-cast v6, Ljava/lang/Number;

    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    and-int/lit8 v7, v6, 0x3

    .line 137
    .line 138
    if-eq v7, v2, :cond_4

    .line 139
    .line 140
    move v4, v3

    .line 141
    :cond_4
    and-int/lit8 v2, v6, 0x1

    .line 142
    .line 143
    invoke-virtual {v1, v2, v4}, Lag1;->N(IZ)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_5

    .line 148
    .line 149
    check-cast v0, Ly84;

    .line 150
    .line 151
    iget-object v12, v0, Ly84;->n:Ljava/lang/String;

    .line 152
    .line 153
    sget-object v0, Lwa2;->a:Lis3;

    .line 154
    .line 155
    invoke-virtual {v1, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    check-cast v2, Lua2;

    .line 160
    .line 161
    iget-object v2, v2, Lua2;->b:Le54;

    .line 162
    .line 163
    iget-object v2, v2, Le54;->k:Lay3;

    .line 164
    .line 165
    invoke-virtual {v1, v0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Lua2;

    .line 170
    .line 171
    iget-object v0, v0, Lua2;->a:Ly70;

    .line 172
    .line 173
    iget-wide v14, v0, Ly70;->q:J

    .line 174
    .line 175
    const/16 v32, 0x0

    .line 176
    .line 177
    const v33, 0x1fffa

    .line 178
    .line 179
    .line 180
    const/4 v13, 0x0

    .line 181
    const-wide/16 v16, 0x0

    .line 182
    .line 183
    const/16 v18, 0x0

    .line 184
    .line 185
    const/16 v19, 0x0

    .line 186
    .line 187
    const-wide/16 v20, 0x0

    .line 188
    .line 189
    const/16 v22, 0x0

    .line 190
    .line 191
    const-wide/16 v23, 0x0

    .line 192
    .line 193
    const/16 v25, 0x0

    .line 194
    .line 195
    const/16 v26, 0x0

    .line 196
    .line 197
    const/16 v27, 0x0

    .line 198
    .line 199
    const/16 v28, 0x0

    .line 200
    .line 201
    const/16 v31, 0x0

    .line 202
    .line 203
    move-object/from16 v30, v1

    .line 204
    .line 205
    move-object/from16 v29, v2

    .line 206
    .line 207
    invoke-static/range {v12 .. v33}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_5
    move-object/from16 v30, v1

    .line 212
    .line 213
    invoke-virtual/range {v30 .. v30}, Lag1;->Q()V

    .line 214
    .line 215
    .line 216
    :goto_2
    return-object v5

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

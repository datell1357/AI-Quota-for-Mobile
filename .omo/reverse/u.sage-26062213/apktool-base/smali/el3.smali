.class public final Lel3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lgf1;


# instance fields
.field public final synthetic n:Ljava/util/ArrayList;

.field public final synthetic o:Ly84;

.field public final synthetic p:Lpe1;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ly84;Lpe1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lel3;->n:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, Lel3;->o:Ly84;

    .line 7
    .line 8
    iput-object p3, p0, Lel3;->p:Lpe1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Luz1;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    move-object/from16 v15, p3

    .line 16
    .line 17
    check-cast v15, Lag1;

    .line 18
    .line 19
    move-object/from16 v3, p4

    .line 20
    .line 21
    check-cast v3, Ljava/lang/Number;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    and-int/lit8 v4, v3, 0x6

    .line 28
    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    invoke-virtual {v15, v1}, Lag1;->f(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x2

    .line 40
    :goto_0
    or-int/2addr v1, v3

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v1, v3

    .line 43
    :goto_1
    and-int/lit8 v3, v3, 0x30

    .line 44
    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {v15, v2}, Lag1;->d(I)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    const/16 v3, 0x20

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/16 v3, 0x10

    .line 57
    .line 58
    :goto_2
    or-int/2addr v1, v3

    .line 59
    :cond_3
    and-int/lit16 v3, v1, 0x93

    .line 60
    .line 61
    const/16 v4, 0x92

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x1

    .line 65
    if-eq v3, v4, :cond_4

    .line 66
    .line 67
    move v3, v6

    .line 68
    goto :goto_3

    .line 69
    :cond_4
    move v3, v5

    .line 70
    :goto_3
    and-int/2addr v1, v6

    .line 71
    invoke-virtual {v15, v1, v3}, Lag1;->N(IZ)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_8

    .line 76
    .line 77
    iget-object v1, v0, Lel3;->n:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Ly84;

    .line 84
    .line 85
    const v2, 0x29b5a88a

    .line 86
    .line 87
    .line 88
    invoke-virtual {v15, v2}, Lag1;->W(I)V

    .line 89
    .line 90
    .line 91
    iget-object v2, v0, Lel3;->o:Ly84;

    .line 92
    .line 93
    if-ne v2, v1, :cond_5

    .line 94
    .line 95
    move v3, v6

    .line 96
    goto :goto_4

    .line 97
    :cond_5
    move v3, v5

    .line 98
    :goto_4
    iget-object v0, v0, Lel3;->p:Lpe1;

    .line 99
    .line 100
    invoke-virtual {v15, v0}, Lag1;->f(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    invoke-virtual {v15, v4}, Lag1;->d(I)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    or-int/2addr v2, v4

    .line 113
    invoke-virtual {v15}, Lag1;->K()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    if-nez v2, :cond_6

    .line 118
    .line 119
    sget-object v2, Lrb0;->a:Lbx3;

    .line 120
    .line 121
    if-ne v4, v2, :cond_7

    .line 122
    .line 123
    :cond_6
    new-instance v4, Lbl1;

    .line 124
    .line 125
    invoke-direct {v4, v0, v1}, Lbl1;-><init>(Lpe1;Ly84;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v15, v4}, Lag1;->g0(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_7
    check-cast v4, Lne1;

    .line 132
    .line 133
    new-instance v0, Ldl3;

    .line 134
    .line 135
    invoke-direct {v0, v5, v1}, Ldl3;-><init>(ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    const v2, -0x7a1e81e1

    .line 139
    .line 140
    .line 141
    invoke-static {v2, v0, v15}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    new-instance v2, Ldl3;

    .line 146
    .line 147
    invoke-direct {v2, v6, v1}, Ldl3;-><init>(ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    const v1, 0x6d8ea83c

    .line 151
    .line 152
    .line 153
    invoke-static {v1, v2, v15}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    const/4 v14, 0x0

    .line 158
    const v16, 0x30180

    .line 159
    .line 160
    .line 161
    const/4 v6, 0x0

    .line 162
    const/4 v7, 0x0

    .line 163
    const/4 v9, 0x0

    .line 164
    const/4 v10, 0x0

    .line 165
    const/4 v11, 0x0

    .line 166
    const/4 v12, 0x0

    .line 167
    const/4 v13, 0x0

    .line 168
    move/from16 v17, v5

    .line 169
    .line 170
    move-object v5, v0

    .line 171
    move/from16 v0, v17

    .line 172
    .line 173
    invoke-static/range {v3 .. v16}, La50;->b(ZLne1;Lka0;Lnd2;ZLdf1;Ljl3;Lug3;Lvg3;Lfx;Lqh;Lzr2;Lag1;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v15, v0}, Lag1;->p(Z)V

    .line 177
    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_8
    invoke-virtual {v15}, Lag1;->Q()V

    .line 181
    .line 182
    .line 183
    :goto_5
    sget-object v0, Lt64;->a:Lt64;

    .line 184
    .line 185
    return-object v0
.end method

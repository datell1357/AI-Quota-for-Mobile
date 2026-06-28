.class public final synthetic Lb33;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lb33;->n:I

    .line 2
    .line 3
    iput-object p3, p0, Lb33;->p:Ljava/lang/Object;

    .line 4
    .line 5
    iput p1, p0, Lb33;->o:I

    .line 6
    .line 7
    iput-object p4, p0, Lb33;->q:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lb33;->n:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object v4, v0, Lb33;->q:Ljava/lang/Object;

    .line 8
    .line 9
    iget v5, v0, Lb33;->o:I

    .line 10
    .line 11
    iget-object v0, v0, Lb33;->p:Ljava/lang/Object;

    .line 12
    .line 13
    sget-object v6, Lt64;->a:Lt64;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast v0, Lhf3;

    .line 19
    .line 20
    check-cast v4, Ldv2;

    .line 21
    .line 22
    move-object/from16 v1, p1

    .line 23
    .line 24
    check-cast v1, Lcv2;

    .line 25
    .line 26
    iget-object v7, v0, Lhf3;->B:Llf3;

    .line 27
    .line 28
    iget-object v7, v7, Llf3;->a:Lts2;

    .line 29
    .line 30
    invoke-virtual {v7}, Lts2;->g()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-gez v7, :cond_0

    .line 35
    .line 36
    move v7, v3

    .line 37
    :cond_0
    if-le v7, v5, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v5, v7

    .line 41
    :goto_0
    neg-int v5, v5

    .line 42
    iget-boolean v0, v0, Lhf3;->C:Z

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    move v7, v3

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v7, v5

    .line 49
    :goto_1
    if-eqz v0, :cond_3

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    move v5, v3

    .line 53
    :goto_2
    iput-boolean v2, v1, Lcv2;->n:Z

    .line 54
    .line 55
    invoke-static {v1, v4, v7, v5}, Lcv2;->l(Lcv2;Ldv2;II)V

    .line 56
    .line 57
    .line 58
    iput-boolean v3, v1, Lcv2;->n:Z

    .line 59
    .line 60
    return-object v6

    .line 61
    :pswitch_0
    check-cast v0, Lc33;

    .line 62
    .line 63
    check-cast v4, Lcg2;

    .line 64
    .line 65
    move-object/from16 v1, p1

    .line 66
    .line 67
    check-cast v1, Lyb0;

    .line 68
    .line 69
    iget v7, v0, Lc33;->e:I

    .line 70
    .line 71
    if-ne v7, v5, :cond_c

    .line 72
    .line 73
    iget-object v7, v0, Lc33;->f:Lcg2;

    .line 74
    .line 75
    invoke-static {v4, v7}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-eqz v7, :cond_c

    .line 80
    .line 81
    instance-of v7, v1, Lec0;

    .line 82
    .line 83
    if-eqz v7, :cond_c

    .line 84
    .line 85
    iget-object v7, v4, Lcg2;->a:[J

    .line 86
    .line 87
    array-length v8, v7

    .line 88
    add-int/lit8 v8, v8, -0x2

    .line 89
    .line 90
    if-ltz v8, :cond_c

    .line 91
    .line 92
    move v9, v3

    .line 93
    :goto_3
    aget-wide v10, v7, v9

    .line 94
    .line 95
    not-long v12, v10

    .line 96
    const/4 v14, 0x7

    .line 97
    shl-long/2addr v12, v14

    .line 98
    and-long/2addr v12, v10

    .line 99
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    and-long/2addr v12, v14

    .line 105
    cmp-long v12, v12, v14

    .line 106
    .line 107
    if-eqz v12, :cond_b

    .line 108
    .line 109
    sub-int v12, v9, v8

    .line 110
    .line 111
    not-int v12, v12

    .line 112
    ushr-int/lit8 v12, v12, 0x1f

    .line 113
    .line 114
    const/16 v13, 0x8

    .line 115
    .line 116
    rsub-int/lit8 v12, v12, 0x8

    .line 117
    .line 118
    move v14, v3

    .line 119
    :goto_4
    if-ge v14, v12, :cond_a

    .line 120
    .line 121
    const-wide/16 v15, 0xff

    .line 122
    .line 123
    and-long/2addr v15, v10

    .line 124
    const-wide/16 v17, 0x80

    .line 125
    .line 126
    cmp-long v15, v15, v17

    .line 127
    .line 128
    if-gez v15, :cond_8

    .line 129
    .line 130
    shl-int/lit8 v15, v9, 0x3

    .line 131
    .line 132
    add-int/2addr v15, v14

    .line 133
    iget-object v2, v4, Lcg2;->b:[Ljava/lang/Object;

    .line 134
    .line 135
    aget-object v2, v2, v15

    .line 136
    .line 137
    iget-object v3, v4, Lcg2;->c:[I

    .line 138
    .line 139
    aget v3, v3, v15

    .line 140
    .line 141
    if-eq v3, v5, :cond_4

    .line 142
    .line 143
    const/4 v3, 0x1

    .line 144
    goto :goto_5

    .line 145
    :cond_4
    const/4 v3, 0x0

    .line 146
    :goto_5
    if-eqz v3, :cond_6

    .line 147
    .line 148
    move/from16 p0, v13

    .line 149
    .line 150
    move-object v13, v1

    .line 151
    check-cast v13, Lec0;

    .line 152
    .line 153
    move-object/from16 p1, v1

    .line 154
    .line 155
    iget-object v1, v13, Lec0;->t:Lkg2;

    .line 156
    .line 157
    invoke-static {v1, v2, v0}, Lht4;->A(Lkg2;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move/from16 v18, v3

    .line 161
    .line 162
    instance-of v3, v2, Los0;

    .line 163
    .line 164
    if-eqz v3, :cond_7

    .line 165
    .line 166
    move-object v3, v2

    .line 167
    check-cast v3, Los0;

    .line 168
    .line 169
    invoke-virtual {v1, v3}, Lkg2;->c(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-nez v1, :cond_5

    .line 174
    .line 175
    iget-object v1, v13, Lec0;->w:Lkg2;

    .line 176
    .line 177
    invoke-static {v1, v3}, Lht4;->B(Lkg2;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    :cond_5
    iget-object v1, v0, Lc33;->g:Lkg2;

    .line 181
    .line 182
    if-eqz v1, :cond_7

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Lkg2;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_6
    move-object/from16 p1, v1

    .line 189
    .line 190
    move/from16 v18, v3

    .line 191
    .line 192
    move/from16 p0, v13

    .line 193
    .line 194
    :cond_7
    :goto_6
    if-eqz v18, :cond_9

    .line 195
    .line 196
    invoke-virtual {v4, v15}, Lcg2;->f(I)V

    .line 197
    .line 198
    .line 199
    goto :goto_7

    .line 200
    :cond_8
    move-object/from16 p1, v1

    .line 201
    .line 202
    move/from16 p0, v13

    .line 203
    .line 204
    :cond_9
    :goto_7
    shr-long v10, v10, p0

    .line 205
    .line 206
    add-int/lit8 v14, v14, 0x1

    .line 207
    .line 208
    move/from16 v13, p0

    .line 209
    .line 210
    move-object/from16 v1, p1

    .line 211
    .line 212
    const/4 v2, 0x1

    .line 213
    const/4 v3, 0x0

    .line 214
    goto :goto_4

    .line 215
    :cond_a
    move-object/from16 p1, v1

    .line 216
    .line 217
    move v1, v13

    .line 218
    if-ne v12, v1, :cond_c

    .line 219
    .line 220
    goto :goto_8

    .line 221
    :cond_b
    move-object/from16 p1, v1

    .line 222
    .line 223
    :goto_8
    if-eq v9, v8, :cond_c

    .line 224
    .line 225
    add-int/lit8 v9, v9, 0x1

    .line 226
    .line 227
    move-object/from16 v1, p1

    .line 228
    .line 229
    const/4 v2, 0x1

    .line 230
    const/4 v3, 0x0

    .line 231
    goto/16 :goto_3

    .line 232
    .line 233
    :cond_c
    return-object v6

    .line 234
    nop

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

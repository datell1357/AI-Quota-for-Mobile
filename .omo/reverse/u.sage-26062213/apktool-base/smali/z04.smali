.class public final Lz04;
.super Lwm2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final f:Lzy;

.field public g:Lir3;


# direct methods
.method public constructor <init>(Ldg3;Lja0;Las0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lwm2;-><init>(Ldg3;Ldf1;Las0;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    const/4 p2, 0x6

    .line 6
    const p3, 0x7fffffff

    .line 7
    .line 8
    .line 9
    invoke-static {p3, p2, p1}, Lix;->c(IILvy;)Lzy;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lz04;->f:Lzy;

    .line 14
    .line 15
    return-void
.end method

.method public static final c(Lz04;Ldg3;Lx04;Lfh0;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v6, v1, Lwm2;->e:Lgw4;

    .line 11
    .line 12
    instance-of v3, v2, Ly04;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    move-object v3, v2

    .line 17
    check-cast v3, Ly04;

    .line 18
    .line 19
    iget v4, v3, Ly04;->s:I

    .line 20
    .line 21
    const/high16 v5, -0x80000000

    .line 22
    .line 23
    and-int v7, v4, v5

    .line 24
    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    sub-int/2addr v4, v5

    .line 28
    iput v4, v3, Ly04;->s:I

    .line 29
    .line 30
    :goto_0
    move-object v7, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    new-instance v3, Ly04;

    .line 33
    .line 34
    invoke-direct {v3, v1, v2}, Ly04;-><init>(Lz04;Lfh0;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_1
    iget-object v2, v7, Ly04;->q:Ljava/lang/Object;

    .line 39
    .line 40
    iget v3, v7, Ly04;->s:I

    .line 41
    .line 42
    const/4 v8, 0x2

    .line 43
    const/4 v9, 0x1

    .line 44
    sget-object v10, Lri0;->n:Lri0;

    .line 45
    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    if-eq v3, v9, :cond_2

    .line 49
    .line 50
    if-ne v3, v8, :cond_1

    .line 51
    .line 52
    invoke-static {v2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    return-object v0

    .line 64
    :cond_2
    invoke-static {v2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    invoke-static {v2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    new-instance v3, Lw33;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v0, v3, Lw33;->n:Ljava/lang/Object;

    .line 77
    .line 78
    iget-wide v4, v0, Lx04;->b:J

    .line 79
    .line 80
    iget-wide v11, v0, Lx04;->a:J

    .line 81
    .line 82
    iget-object v0, v6, Lgw4;->o:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Lta4;

    .line 85
    .line 86
    const/16 v2, 0x20

    .line 87
    .line 88
    shr-long v13, v11, v2

    .line 89
    .line 90
    long-to-int v13, v13

    .line 91
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    invoke-virtual {v0, v13, v4, v5}, Lta4;->a(FJ)V

    .line 96
    .line 97
    .line 98
    iget-object v0, v6, Lgw4;->p:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v0, Lta4;

    .line 101
    .line 102
    const-wide v13, 0xffffffffL

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    and-long/2addr v11, v13

    .line 108
    long-to-int v11, v11

    .line 109
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    invoke-virtual {v0, v11, v4, v5}, Lta4;->a(FJ)V

    .line 114
    .line 115
    .line 116
    iget-object v0, v1, Lz04;->f:Lzy;

    .line 117
    .line 118
    invoke-static {v0}, Lz04;->e(Lzy;)Lx04;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    iget-wide v4, v0, Lx04;->b:J

    .line 125
    .line 126
    iget-wide v11, v0, Lx04;->a:J

    .line 127
    .line 128
    iget-object v15, v6, Lgw4;->o:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v15, Lta4;

    .line 131
    .line 132
    move-wide/from16 p2, v13

    .line 133
    .line 134
    shr-long v13, v11, v2

    .line 135
    .line 136
    long-to-int v2, v13

    .line 137
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    invoke-virtual {v15, v2, v4, v5}, Lta4;->a(FJ)V

    .line 142
    .line 143
    .line 144
    iget-object v2, v6, Lgw4;->p:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v2, Lta4;

    .line 147
    .line 148
    and-long v11, v11, p2

    .line 149
    .line 150
    long-to-int v11, v11

    .line 151
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    invoke-virtual {v2, v11, v4, v5}, Lta4;->a(FJ)V

    .line 156
    .line 157
    .line 158
    iget-object v2, v3, Lw33;->n:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v2, Lx04;

    .line 161
    .line 162
    invoke-virtual {v2, v0}, Lx04;->a(Lx04;)Lx04;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iput-object v0, v3, Lw33;->n:Ljava/lang/Object;

    .line 167
    .line 168
    :cond_4
    new-instance v0, Lr4;

    .line 169
    .line 170
    const/4 v4, 0x0

    .line 171
    const/4 v5, 0x7

    .line 172
    move-object/from16 v2, p1

    .line 173
    .line 174
    invoke-direct/range {v0 .. v5}, Lr4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 175
    .line 176
    .line 177
    iput v9, v7, Ly04;->s:I

    .line 178
    .line 179
    invoke-virtual {v1, v0, v7}, Lwm2;->b(Ldf1;Lfh0;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    if-ne v0, v10, :cond_5

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_5
    :goto_2
    iget-object v0, v1, Lwm2;->b:Ldf1;

    .line 187
    .line 188
    iget-object v1, v6, Lgw4;->o:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v1, Lta4;

    .line 191
    .line 192
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v2}, Lta4;->c(F)F

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    iget-object v3, v6, Lgw4;->p:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v3, Lta4;

    .line 202
    .line 203
    invoke-virtual {v3, v2}, Lta4;->c(F)F

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    invoke-static {v1, v2}, Lis0;->g(FF)J

    .line 208
    .line 209
    .line 210
    move-result-wide v1

    .line 211
    new-instance v3, Lra4;

    .line 212
    .line 213
    invoke-direct {v3, v1, v2}, Lra4;-><init>(J)V

    .line 214
    .line 215
    .line 216
    iput v8, v7, Ly04;->s:I

    .line 217
    .line 218
    invoke-interface {v0, v3, v7}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    if-ne v0, v10, :cond_6

    .line 223
    .line 224
    :goto_3
    return-object v10

    .line 225
    :cond_6
    :goto_4
    sget-object v0, Lt64;->a:Lt64;

    .line 226
    .line 227
    return-object v0
.end method

.method public static e(Lzy;)Lx04;
    .locals 2

    .line 1
    new-instance v0, Lhe2;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lhe2;-><init>(Ln30;I)V

    .line 5
    .line 6
    .line 7
    new-instance p0, Ltb1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1}, Ltb1;-><init>(Lne1;Ldh0;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lse0;->y(Ldf1;)Lbi3;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lbi3;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lbi3;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lx04;

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    :goto_1
    move-object v1, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1, v0}, Lx04;->a(Lx04;)Lx04;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final d(Lvv2;)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lvv2;->a:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v2}, Lo70;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lzv2;

    .line 12
    .line 13
    if-eqz v2, :cond_9

    .line 14
    .line 15
    invoke-virtual {v2}, Lzv2;->b()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v8, 0x0

    .line 25
    :goto_0
    const/4 v9, 0x0

    .line 26
    iget-object v10, v0, Lz04;->f:Lzy;

    .line 27
    .line 28
    iget-object v11, v0, Lwm2;->a:Ldg3;

    .line 29
    .line 30
    const-wide v12, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    if-ge v7, v6, :cond_4

    .line 36
    .line 37
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v14

    .line 41
    check-cast v14, Lvj1;

    .line 42
    .line 43
    const/4 v15, 0x1

    .line 44
    const/16 v16, 0x0

    .line 45
    .line 46
    iget-wide v3, v14, Lvj1;->d:J

    .line 47
    .line 48
    xor-long/2addr v3, v12

    .line 49
    invoke-virtual {v11, v3, v4}, Ldg3;->f(J)J

    .line 50
    .line 51
    .line 52
    move-result-wide v12

    .line 53
    invoke-virtual {v11, v12, v13}, Ldg3;->j(J)F

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    cmpg-float v9, v11, v9

    .line 58
    .line 59
    if-nez v9, :cond_0

    .line 60
    .line 61
    move v9, v15

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    move/from16 v9, v16

    .line 64
    .line 65
    :goto_1
    if-nez v9, :cond_3

    .line 66
    .line 67
    new-instance v17, Lx04;

    .line 68
    .line 69
    iget-wide v11, v14, Lvj1;->a:J

    .line 70
    .line 71
    const/16 v22, 0x0

    .line 72
    .line 73
    move-wide/from16 v18, v3

    .line 74
    .line 75
    move-wide/from16 v20, v11

    .line 76
    .line 77
    invoke-direct/range {v17 .. v22}, Lx04;-><init>(JJZ)V

    .line 78
    .line 79
    .line 80
    move-object/from16 v3, v17

    .line 81
    .line 82
    invoke-interface {v10, v3}, Lyh3;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    instance-of v3, v3, Ly30;

    .line 87
    .line 88
    if-eqz v3, :cond_2

    .line 89
    .line 90
    if-eqz v8, :cond_1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_1
    move/from16 v8, v16

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_2
    :goto_2
    move v8, v15

    .line 97
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    const/4 v15, 0x1

    .line 101
    const/16 v16, 0x0

    .line 102
    .line 103
    iget-wide v3, v2, Lzv2;->l:J

    .line 104
    .line 105
    xor-long/2addr v3, v12

    .line 106
    iget v1, v1, Lvv2;->c:I

    .line 107
    .line 108
    const/16 v5, 0xc

    .line 109
    .line 110
    if-ne v1, v5, :cond_5

    .line 111
    .line 112
    move/from16 v22, v15

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_5
    move/from16 v22, v16

    .line 116
    .line 117
    :goto_4
    invoke-virtual {v11, v3, v4}, Ldg3;->f(J)J

    .line 118
    .line 119
    .line 120
    move-result-wide v5

    .line 121
    invoke-virtual {v11, v5, v6}, Ldg3;->j(J)F

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    cmpg-float v1, v1, v9

    .line 126
    .line 127
    if-nez v1, :cond_6

    .line 128
    .line 129
    move v1, v15

    .line 130
    goto :goto_5

    .line 131
    :cond_6
    move/from16 v1, v16

    .line 132
    .line 133
    :goto_5
    if-eqz v1, :cond_7

    .line 134
    .line 135
    if-eqz v22, :cond_b

    .line 136
    .line 137
    :cond_7
    new-instance v17, Lx04;

    .line 138
    .line 139
    iget-wide v1, v2, Lzv2;->b:J

    .line 140
    .line 141
    move-wide/from16 v20, v1

    .line 142
    .line 143
    move-wide/from16 v18, v3

    .line 144
    .line 145
    invoke-direct/range {v17 .. v22}, Lx04;-><init>(JJZ)V

    .line 146
    .line 147
    .line 148
    move-object/from16 v1, v17

    .line 149
    .line 150
    invoke-interface {v10, v1}, Lyh3;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    instance-of v1, v1, Ly30;

    .line 155
    .line 156
    if-eqz v1, :cond_8

    .line 157
    .line 158
    if-eqz v8, :cond_a

    .line 159
    .line 160
    :cond_8
    move v8, v15

    .line 161
    goto :goto_6

    .line 162
    :cond_9
    const/4 v15, 0x1

    .line 163
    const/16 v16, 0x0

    .line 164
    .line 165
    :cond_a
    move/from16 v8, v16

    .line 166
    .line 167
    :cond_b
    :goto_6
    if-nez v8, :cond_d

    .line 168
    .line 169
    iget-boolean v0, v0, Lwm2;->d:Z

    .line 170
    .line 171
    if-eqz v0, :cond_c

    .line 172
    .line 173
    goto :goto_7

    .line 174
    :cond_c
    return v16

    .line 175
    :cond_d
    :goto_7
    return v15
.end method

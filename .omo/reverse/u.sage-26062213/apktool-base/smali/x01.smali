.class public final Lx01;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lo23;

.field public final b:Lic;

.field public final c:Lgw4;

.field public final d:Ldd1;


# direct methods
.method public constructor <init>(Lo23;Lic;Lgw4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx01;->a:Lo23;

    .line 5
    .line 6
    iput-object p2, p0, Lx01;->b:Lic;

    .line 7
    .line 8
    iput-object p3, p0, Lx01;->c:Lgw4;

    .line 9
    .line 10
    new-instance p2, Ldd1;

    .line 11
    .line 12
    invoke-direct {p2, p1, p3}, Ldd1;-><init>(Lo23;Lgw4;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lx01;->d:Ldd1;

    .line 16
    .line 17
    return-void
.end method

.method public static final a(Lx01;Lzp3;Lda0;Ljo1;Ljava/lang/Object;Ler2;Lj21;Lfh0;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p7, Ls01;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p7

    .line 6
    check-cast v0, Ls01;

    .line 7
    .line 8
    iget v1, v0, Ls01;->z:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Ls01;->z:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ls01;

    .line 21
    .line 22
    invoke-direct {v0, p0, p7}, Ls01;-><init>(Lx01;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Ls01;->x:Ljava/lang/Object;

    .line 26
    .line 27
    iget p7, v0, Ls01;->z:I

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x1

    .line 31
    if-eqz p7, :cond_2

    .line 32
    .line 33
    if-ne p7, v2, :cond_1

    .line 34
    .line 35
    iget p1, v0, Ls01;->w:I

    .line 36
    .line 37
    iget-object p2, v0, Ls01;->v:Lj21;

    .line 38
    .line 39
    iget-object p3, v0, Ls01;->u:Ler2;

    .line 40
    .line 41
    iget-object p4, v0, Ls01;->t:Ljava/lang/Object;

    .line 42
    .line 43
    iget-object p5, v0, Ls01;->s:Ljo1;

    .line 44
    .line 45
    iget-object p6, v0, Ls01;->r:Lda0;

    .line 46
    .line 47
    iget-object p7, v0, Ls01;->q:Lzp3;

    .line 48
    .line 49
    invoke-static {p0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    move-object v4, p6

    .line 53
    move-object p6, p2

    .line 54
    move-object p2, v4

    .line 55
    move-object v4, p5

    .line 56
    move-object p5, p3

    .line 57
    move-object p3, v4

    .line 58
    goto :goto_4

    .line 59
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_2
    invoke-static {p0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x0

    .line 69
    :goto_1
    iget-object p7, p2, Lda0;->g:Lnv3;

    .line 70
    .line 71
    invoke-virtual {p7}, Lnv3;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p7

    .line 75
    check-cast p7, Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {p7}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result p7

    .line 81
    :goto_2
    if-ge p0, p7, :cond_4

    .line 82
    .line 83
    iget-object v3, p2, Lda0;->g:Lnv3;

    .line 84
    .line 85
    invoke-virtual {v3}, Lnv3;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Lun0;

    .line 96
    .line 97
    invoke-interface {v3, p1, p5}, Lun0;->a(Lzp3;Ler2;)Liw;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-eqz v3, :cond_3

    .line 102
    .line 103
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    new-instance p7, Ljs2;

    .line 108
    .line 109
    invoke-direct {p7, v3, p0}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_3
    add-int/lit8 p0, p0, 0x1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    move-object p7, v1

    .line 117
    :goto_3
    if-eqz p7, :cond_9

    .line 118
    .line 119
    iget-object p0, p7, Ljs2;->n:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast p0, Liw;

    .line 122
    .line 123
    iget-object p7, p7, Ljs2;->o:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast p7, Ljava/lang/Number;

    .line 126
    .line 127
    invoke-virtual {p7}, Ljava/lang/Number;->intValue()I

    .line 128
    .line 129
    .line 130
    move-result p7

    .line 131
    add-int/2addr p7, v2

    .line 132
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    iput-object p1, v0, Ls01;->q:Lzp3;

    .line 136
    .line 137
    iput-object p2, v0, Ls01;->r:Lda0;

    .line 138
    .line 139
    iput-object p3, v0, Ls01;->s:Ljo1;

    .line 140
    .line 141
    iput-object p4, v0, Ls01;->t:Ljava/lang/Object;

    .line 142
    .line 143
    iput-object p5, v0, Ls01;->u:Ler2;

    .line 144
    .line 145
    iput-object p6, v0, Ls01;->v:Lj21;

    .line 146
    .line 147
    iput p7, v0, Ls01;->w:I

    .line 148
    .line 149
    iput v2, v0, Ls01;->z:I

    .line 150
    .line 151
    invoke-virtual {p0, v0}, Liw;->a(Lfh0;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    sget-object v3, Lri0;->n:Lri0;

    .line 156
    .line 157
    if-ne p0, v3, :cond_5

    .line 158
    .line 159
    return-object v3

    .line 160
    :cond_5
    move v4, p7

    .line 161
    move-object p7, p1

    .line 162
    move p1, v4

    .line 163
    :goto_4
    check-cast p0, Ltn0;

    .line 164
    .line 165
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    if-eqz p0, :cond_8

    .line 169
    .line 170
    new-instance p1, Lr01;

    .line 171
    .line 172
    iget-object p2, p0, Ltn0;->a:Lao1;

    .line 173
    .line 174
    iget-boolean p0, p0, Ltn0;->b:Z

    .line 175
    .line 176
    iget-object p3, p7, Lzp3;->c:Lkm0;

    .line 177
    .line 178
    iget-object p4, p7, Lzp3;->a:Lpo1;

    .line 179
    .line 180
    instance-of p5, p4, Lg51;

    .line 181
    .line 182
    if-eqz p5, :cond_6

    .line 183
    .line 184
    check-cast p4, Lg51;

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_6
    move-object p4, v1

    .line 188
    :goto_5
    if-eqz p4, :cond_7

    .line 189
    .line 190
    iget-object v1, p4, Lg51;->p:Ljava/lang/String;

    .line 191
    .line 192
    :cond_7
    invoke-direct {p1, p2, p0, p3, v1}, Lr01;-><init>(Lao1;ZLkm0;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-object p1

    .line 196
    :cond_8
    move p0, p1

    .line 197
    move-object p1, p7

    .line 198
    goto/16 :goto_1

    .line 199
    .line 200
    :cond_9
    const-string p0, "Unable to create a decoder that supports: "

    .line 201
    .line 202
    invoke-static {p4, p0}, Lp61;->y(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    return-object v1
.end method

.method public static final b(Lx01;Ljo1;Ljava/lang/Object;Ler2;Lj21;Lfh0;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object/from16 v1, p5

    .line 2
    .line 3
    instance-of v2, v1, Lt01;

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, Lt01;

    .line 9
    .line 10
    iget v3, v2, Lt01;->z:I

    .line 11
    .line 12
    const/high16 v4, -0x80000000

    .line 13
    .line 14
    and-int v5, v3, v4

    .line 15
    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    sub-int/2addr v3, v4

    .line 19
    iput v3, v2, Lt01;->z:I

    .line 20
    .line 21
    :goto_0
    move-object v6, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance v2, Lt01;

    .line 24
    .line 25
    invoke-direct {v2, p0, v1}, Lt01;-><init>(Lx01;Lfh0;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :goto_1
    iget-object v1, v6, Lt01;->x:Ljava/lang/Object;

    .line 30
    .line 31
    iget v2, v6, Lt01;->z:I

    .line 32
    .line 33
    const/4 v9, 0x3

    .line 34
    const/4 v10, 0x2

    .line 35
    const/4 v3, 0x1

    .line 36
    const/4 v11, 0x0

    .line 37
    sget-object v12, Lri0;->n:Lri0;

    .line 38
    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    if-eq v2, v3, :cond_3

    .line 42
    .line 43
    if-eq v2, v10, :cond_2

    .line 44
    .line 45
    if-ne v2, v9, :cond_1

    .line 46
    .line 47
    invoke-static {v1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_9

    .line 51
    .line 52
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v11

    .line 58
    :cond_2
    iget-object v2, v6, Lt01;->t:Lw33;

    .line 59
    .line 60
    iget-object v0, v6, Lt01;->s:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Lw33;

    .line 63
    .line 64
    iget-object v3, v6, Lt01;->r:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v3, Lj21;

    .line 67
    .line 68
    iget-object v4, v6, Lt01;->q:Ljo1;

    .line 69
    .line 70
    :try_start_0
    invoke-static {v1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    move-object v14, v6

    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto/16 :goto_a

    .line 78
    .line 79
    :cond_3
    iget-object v2, v6, Lt01;->w:Lw33;

    .line 80
    .line 81
    iget-object v3, v6, Lt01;->v:Lw33;

    .line 82
    .line 83
    iget-object v4, v6, Lt01;->u:Lw33;

    .line 84
    .line 85
    iget-object v5, v6, Lt01;->t:Lw33;

    .line 86
    .line 87
    iget-object v7, v6, Lt01;->s:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v7, Lj21;

    .line 90
    .line 91
    iget-object v8, v6, Lt01;->r:Ljava/lang/Object;

    .line 92
    .line 93
    iget-object v13, v6, Lt01;->q:Ljo1;

    .line 94
    .line 95
    :try_start_1
    invoke-static {v1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    .line 97
    .line 98
    move-object v14, v6

    .line 99
    move-object v6, v5

    .line 100
    move-object v5, v8

    .line 101
    move-object v8, v4

    .line 102
    move-object v4, v13

    .line 103
    goto/16 :goto_2

    .line 104
    .line 105
    :catchall_1
    move-exception v0

    .line 106
    move-object v2, v3

    .line 107
    goto/16 :goto_a

    .line 108
    .line 109
    :cond_4
    invoke-static {v1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    new-instance v7, Lw33;

    .line 113
    .line 114
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 115
    .line 116
    .line 117
    move-object/from16 v1, p3

    .line 118
    .line 119
    iput-object v1, v7, Lw33;->n:Ljava/lang/Object;

    .line 120
    .line 121
    new-instance v8, Lw33;

    .line 122
    .line 123
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lx01;->a:Lo23;

    .line 127
    .line 128
    iget-object v1, v1, Lo23;->c:Lda0;

    .line 129
    .line 130
    iput-object v1, v8, Lw33;->n:Ljava/lang/Object;

    .line 131
    .line 132
    new-instance v13, Lw33;

    .line 133
    .line 134
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 135
    .line 136
    .line 137
    :try_start_2
    iget-object v1, p0, Lx01;->c:Lgw4;

    .line 138
    .line 139
    iget-object v2, v7, Lw33;->n:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v2, Ler2;

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Lgw4;->H(Ler2;)Ler2;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iput-object v1, v7, Lw33;->n:Ljava/lang/Object;

    .line 148
    .line 149
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    iget-object v1, v8, Lw33;->n:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v1, Lda0;

    .line 155
    .line 156
    iget-object v2, v7, Lw33;->n:Ljava/lang/Object;

    .line 157
    .line 158
    move-object v4, v2

    .line 159
    check-cast v4, Ler2;

    .line 160
    .line 161
    move-object/from16 v2, p1

    .line 162
    .line 163
    iput-object v2, v6, Lt01;->q:Ljo1;

    .line 164
    .line 165
    move-object/from16 v5, p2

    .line 166
    .line 167
    iput-object v5, v6, Lt01;->r:Ljava/lang/Object;

    .line 168
    .line 169
    move-object/from16 v14, p4

    .line 170
    .line 171
    iput-object v14, v6, Lt01;->s:Ljava/lang/Object;

    .line 172
    .line 173
    iput-object v7, v6, Lt01;->t:Lw33;

    .line 174
    .line 175
    iput-object v8, v6, Lt01;->u:Lw33;

    .line 176
    .line 177
    iput-object v13, v6, Lt01;->v:Lw33;

    .line 178
    .line 179
    iput-object v13, v6, Lt01;->w:Lw33;

    .line 180
    .line 181
    iput v3, v6, Lt01;->z:I

    .line 182
    .line 183
    move-object v0, p0

    .line 184
    move-object v3, v5

    .line 185
    move-object v5, v14

    .line 186
    invoke-virtual/range {v0 .. v6}, Lx01;->c(Lda0;Ljo1;Ljava/lang/Object;Ler2;Lj21;Lfh0;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 190
    move-object v14, v6

    .line 191
    if-ne v1, v12, :cond_5

    .line 192
    .line 193
    goto/16 :goto_8

    .line 194
    .line 195
    :cond_5
    move-object/from16 v4, p1

    .line 196
    .line 197
    move-object/from16 v5, p2

    .line 198
    .line 199
    move-object v6, v7

    .line 200
    move-object v2, v13

    .line 201
    move-object v3, v2

    .line 202
    move-object/from16 v7, p4

    .line 203
    .line 204
    :goto_2
    :try_start_3
    iput-object v1, v2, Lw33;->n:Ljava/lang/Object;

    .line 205
    .line 206
    iget-object v0, v3, Lw33;->n:Ljava/lang/Object;

    .line 207
    .line 208
    move-object v1, v0

    .line 209
    check-cast v1, Lx41;

    .line 210
    .line 211
    instance-of v2, v1, Lzp3;

    .line 212
    .line 213
    if-eqz v2, :cond_7

    .line 214
    .line 215
    iget-object v13, v4, Ljo1;->h:Lhi0;

    .line 216
    .line 217
    new-instance v0, Lu01;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 218
    .line 219
    move-object v2, v3

    .line 220
    move-object v3, v8

    .line 221
    const/4 v8, 0x0

    .line 222
    move-object v1, p0

    .line 223
    :try_start_4
    invoke-direct/range {v0 .. v8}, Lu01;-><init>(Lx01;Lw33;Lw33;Ljo1;Ljava/lang/Object;Lw33;Lj21;Ldh0;)V

    .line 224
    .line 225
    .line 226
    iput-object v4, v14, Lt01;->q:Ljo1;

    .line 227
    .line 228
    iput-object v7, v14, Lt01;->r:Ljava/lang/Object;

    .line 229
    .line 230
    iput-object v6, v14, Lt01;->s:Ljava/lang/Object;

    .line 231
    .line 232
    iput-object v2, v14, Lt01;->t:Lw33;

    .line 233
    .line 234
    iput-object v11, v14, Lt01;->u:Lw33;

    .line 235
    .line 236
    iput-object v11, v14, Lt01;->v:Lw33;

    .line 237
    .line 238
    iput-object v11, v14, Lt01;->w:Lw33;

    .line 239
    .line 240
    iput v10, v14, Lt01;->z:I

    .line 241
    .line 242
    invoke-static {v13, v0, v14}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    if-ne v1, v12, :cond_6

    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_6
    move-object v0, v6

    .line 250
    move-object v3, v7

    .line 251
    :goto_3
    check-cast v1, Lr01;

    .line 252
    .line 253
    move-object v6, v0

    .line 254
    move-object v7, v3

    .line 255
    :goto_4
    move-object v3, v2

    .line 256
    goto :goto_5

    .line 257
    :cond_7
    move-object v2, v3

    .line 258
    instance-of v1, v1, Lco1;

    .line 259
    .line 260
    if-eqz v1, :cond_c

    .line 261
    .line 262
    new-instance v1, Lr01;

    .line 263
    .line 264
    move-object v3, v0

    .line 265
    check-cast v3, Lco1;

    .line 266
    .line 267
    iget-object v3, v3, Lco1;->a:Lao1;

    .line 268
    .line 269
    move-object v5, v0

    .line 270
    check-cast v5, Lco1;

    .line 271
    .line 272
    iget-boolean v5, v5, Lco1;->b:Z

    .line 273
    .line 274
    check-cast v0, Lco1;

    .line 275
    .line 276
    iget-object v0, v0, Lco1;->c:Lkm0;

    .line 277
    .line 278
    invoke-direct {v1, v3, v5, v0, v11}, Lr01;-><init>(Lao1;ZLkm0;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 279
    .line 280
    .line 281
    goto :goto_4

    .line 282
    :goto_5
    iget-object v0, v3, Lw33;->n:Ljava/lang/Object;

    .line 283
    .line 284
    instance-of v2, v0, Lzp3;

    .line 285
    .line 286
    if-eqz v2, :cond_8

    .line 287
    .line 288
    check-cast v0, Lzp3;

    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_8
    move-object v0, v11

    .line 292
    :goto_6
    if-eqz v0, :cond_9

    .line 293
    .line 294
    iget-object v0, v0, Lzp3;->a:Lpo1;

    .line 295
    .line 296
    if-eqz v0, :cond_9

    .line 297
    .line 298
    :try_start_5
    invoke-static {v0}, Lxw1;->x(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 299
    .line 300
    .line 301
    goto :goto_7

    .line 302
    :catch_0
    move-exception v0

    .line 303
    throw v0

    .line 304
    :catch_1
    :cond_9
    :goto_7
    iget-object v0, v6, Lw33;->n:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v0, Ler2;

    .line 307
    .line 308
    iput-object v11, v14, Lt01;->q:Ljo1;

    .line 309
    .line 310
    iput-object v11, v14, Lt01;->r:Ljava/lang/Object;

    .line 311
    .line 312
    iput-object v11, v14, Lt01;->s:Ljava/lang/Object;

    .line 313
    .line 314
    iput-object v11, v14, Lt01;->t:Lw33;

    .line 315
    .line 316
    iput-object v11, v14, Lt01;->u:Lw33;

    .line 317
    .line 318
    iput-object v11, v14, Lt01;->v:Lw33;

    .line 319
    .line 320
    iput-object v11, v14, Lt01;->w:Lw33;

    .line 321
    .line 322
    iput v9, v14, Lt01;->z:I

    .line 323
    .line 324
    invoke-static {v1, v4, v0, v7, v14}, Lmt1;->V(Lr01;Ljo1;Ler2;Lj21;Lfh0;)Lr01;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    if-ne v1, v12, :cond_a

    .line 329
    .line 330
    :goto_8
    return-object v12

    .line 331
    :cond_a
    :goto_9
    check-cast v1, Lr01;

    .line 332
    .line 333
    iget-object v0, v1, Lr01;->a:Lao1;

    .line 334
    .line 335
    sget-object v2, Lo94;->a:[Landroid/graphics/Bitmap$Config;

    .line 336
    .line 337
    instance-of v2, v0, Lkw;

    .line 338
    .line 339
    if-eqz v2, :cond_b

    .line 340
    .line 341
    check-cast v0, Lkw;

    .line 342
    .line 343
    iget-object v0, v0, Lkw;->a:Landroid/graphics/Bitmap;

    .line 344
    .line 345
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 346
    .line 347
    .line 348
    :cond_b
    return-object v1

    .line 349
    :cond_c
    :try_start_6
    new-instance v0, Lv00;

    .line 350
    .line 351
    const/4 v1, 0x7

    .line 352
    invoke-direct {v0, v1}, Lv00;-><init>(I)V

    .line 353
    .line 354
    .line 355
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 356
    :catchall_2
    move-exception v0

    .line 357
    move-object v2, v13

    .line 358
    :goto_a
    iget-object v1, v2, Lw33;->n:Ljava/lang/Object;

    .line 359
    .line 360
    instance-of v2, v1, Lzp3;

    .line 361
    .line 362
    if-eqz v2, :cond_d

    .line 363
    .line 364
    move-object v11, v1

    .line 365
    check-cast v11, Lzp3;

    .line 366
    .line 367
    :cond_d
    if-eqz v11, :cond_e

    .line 368
    .line 369
    iget-object v1, v11, Lzp3;->a:Lpo1;

    .line 370
    .line 371
    if-eqz v1, :cond_e

    .line 372
    .line 373
    :try_start_7
    invoke-static {v1}, Lxw1;->x(Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 374
    .line 375
    .line 376
    goto :goto_b

    .line 377
    :catch_2
    move-exception v0

    .line 378
    throw v0

    .line 379
    :catch_3
    :cond_e
    :goto_b
    throw v0
.end method


# virtual methods
.method public final c(Lda0;Ljo1;Ljava/lang/Object;Ler2;Lj21;Lfh0;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p6, Lv01;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p6

    .line 6
    check-cast v0, Lv01;

    .line 7
    .line 8
    iget v1, v0, Lv01;->y:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lv01;->y:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lv01;

    .line 21
    .line 22
    invoke-direct {v0, p0, p6}, Lv01;-><init>(Lx01;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p6, v0, Lv01;->w:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lv01;->y:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    iget p1, v0, Lv01;->v:I

    .line 36
    .line 37
    iget-object p2, v0, Lv01;->u:Lj21;

    .line 38
    .line 39
    iget-object p3, v0, Lv01;->t:Ler2;

    .line 40
    .line 41
    iget-object p4, v0, Lv01;->s:Ljava/lang/Object;

    .line 42
    .line 43
    iget-object p5, v0, Lv01;->r:Ljo1;

    .line 44
    .line 45
    iget-object v1, v0, Lv01;->q:Lda0;

    .line 46
    .line 47
    invoke-static {p6}, Lgg4;->T(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    move-object v6, v1

    .line 51
    move v1, p1

    .line 52
    move-object p1, v6

    .line 53
    move-object v6, p5

    .line 54
    move-object p5, p2

    .line 55
    move-object p2, v6

    .line 56
    move-object v6, p4

    .line 57
    move-object p4, p3

    .line 58
    move-object p3, v6

    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 62
    .line 63
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v2

    .line 67
    :cond_2
    invoke-static {p6}, Lgg4;->T(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    const/4 p6, 0x0

    .line 71
    :goto_1
    iget-object v1, p1, Lda0;->f:Lnv3;

    .line 72
    .line 73
    invoke-virtual {v1}, Lnv3;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    :goto_2
    if-ge p6, v1, :cond_4

    .line 84
    .line 85
    iget-object v4, p1, Lda0;->f:Lnv3;

    .line 86
    .line 87
    invoke-virtual {v4}, Lnv3;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v4, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Ljs2;

    .line 98
    .line 99
    iget-object v5, v4, Ljs2;->n:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v5, Ly41;

    .line 102
    .line 103
    iget-object v4, v4, Ljs2;->o:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v4, Li50;

    .line 106
    .line 107
    invoke-virtual {v4, p3}, Li50;->d(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_3

    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    iget-object v4, p0, Lx01;->a:Lo23;

    .line 117
    .line 118
    invoke-interface {v5, p3, p4, v4}, Ly41;->a(Ljava/lang/Object;Ler2;Lo23;)Lz41;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    if-eqz v4, :cond_3

    .line 123
    .line 124
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object p6

    .line 128
    new-instance v1, Ljs2;

    .line 129
    .line 130
    invoke-direct {v1, v4, p6}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_3
    add-int/lit8 p6, p6, 0x1

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_4
    move-object v1, v2

    .line 138
    :goto_3
    if-eqz v1, :cond_9

    .line 139
    .line 140
    iget-object p6, v1, Ljs2;->n:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p6, Lz41;

    .line 143
    .line 144
    iget-object v1, v1, Ljs2;->o:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v1, Ljava/lang/Number;

    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    add-int/2addr v1, v3

    .line 153
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    iput-object p1, v0, Lv01;->q:Lda0;

    .line 157
    .line 158
    iput-object p2, v0, Lv01;->r:Ljo1;

    .line 159
    .line 160
    iput-object p3, v0, Lv01;->s:Ljava/lang/Object;

    .line 161
    .line 162
    iput-object p4, v0, Lv01;->t:Ler2;

    .line 163
    .line 164
    iput-object p5, v0, Lv01;->u:Lj21;

    .line 165
    .line 166
    iput v1, v0, Lv01;->v:I

    .line 167
    .line 168
    iput v3, v0, Lv01;->y:I

    .line 169
    .line 170
    invoke-interface {p6, v0}, Lz41;->a(Lv01;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p6

    .line 174
    sget-object v4, Lri0;->n:Lri0;

    .line 175
    .line 176
    if-ne p6, v4, :cond_5

    .line 177
    .line 178
    return-object v4

    .line 179
    :cond_5
    :goto_4
    check-cast p6, Lx41;

    .line 180
    .line 181
    :try_start_0
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .line 183
    .line 184
    if-eqz p6, :cond_6

    .line 185
    .line 186
    return-object p6

    .line 187
    :cond_6
    move p6, v1

    .line 188
    goto :goto_1

    .line 189
    :catchall_0
    move-exception p0

    .line 190
    instance-of p1, p6, Lzp3;

    .line 191
    .line 192
    if-eqz p1, :cond_7

    .line 193
    .line 194
    move-object v2, p6

    .line 195
    check-cast v2, Lzp3;

    .line 196
    .line 197
    :cond_7
    if-eqz v2, :cond_8

    .line 198
    .line 199
    iget-object p1, v2, Lzp3;->a:Lpo1;

    .line 200
    .line 201
    if-eqz p1, :cond_8

    .line 202
    .line 203
    :try_start_1
    invoke-static {p1}, Lxw1;->x(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    .line 205
    .line 206
    goto :goto_5

    .line 207
    :catch_0
    move-exception p0

    .line 208
    throw p0

    .line 209
    :catch_1
    :cond_8
    :goto_5
    throw p0

    .line 210
    :cond_9
    const-string p0, "Unable to create a fetcher that supports: "

    .line 211
    .line 212
    invoke-static {p3, p0}, Lp61;->y(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    return-object v2
.end method

.method public final d(Lr23;Lfh0;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    iget-object v2, v1, Lx01;->d:Ldd1;

    .line 8
    .line 9
    instance-of v3, v0, Lw01;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    move-object v3, v0

    .line 14
    check-cast v3, Lw01;

    .line 15
    .line 16
    iget v4, v3, Lw01;->t:I

    .line 17
    .line 18
    const/high16 v5, -0x80000000

    .line 19
    .line 20
    and-int v6, v4, v5

    .line 21
    .line 22
    if-eqz v6, :cond_0

    .line 23
    .line 24
    sub-int/2addr v4, v5

    .line 25
    iput v4, v3, Lw01;->t:I

    .line 26
    .line 27
    :goto_0
    move-object v9, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    new-instance v3, Lw01;

    .line 30
    .line 31
    invoke-direct {v3, v1, v0}, Lw01;-><init>(Lx01;Lfh0;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :goto_1
    iget-object v0, v9, Lw01;->r:Ljava/lang/Object;

    .line 36
    .line 37
    iget v3, v9, Lw01;->t:I

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v10, 0x1

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    if-ne v3, v10, :cond_1

    .line 44
    .line 45
    iget-object v1, v9, Lw01;->q:Lr23;

    .line 46
    .line 47
    :try_start_0
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    move-object v7, v1

    .line 53
    goto/16 :goto_7

    .line 54
    .line 55
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-static {v0}, Lk21;->n(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v4

    .line 61
    :cond_2
    invoke-static {v0}, Lgg4;->T(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :try_start_1
    iget-object v0, v7, Lr23;->e:Ljava/lang/Object;

    .line 65
    .line 66
    move-object v13, v0

    .line 67
    check-cast v13, Ljo1;

    .line 68
    .line 69
    iget-object v0, v13, Ljo1;->b:Ljava/lang/Object;

    .line 70
    .line 71
    iget-object v3, v7, Lr23;->f:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v3, Lln3;

    .line 74
    .line 75
    iget-object v5, v7, Lr23;->g:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v5, Lj21;

    .line 78
    .line 79
    iget-object v6, v1, Lx01;->c:Lgw4;

    .line 80
    .line 81
    invoke-virtual {v6, v13, v3}, Lgw4;->D(Ljo1;Lln3;)Ler2;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    iget-object v8, v6, Ler2;->c:Lrd3;

    .line 86
    .line 87
    iget-object v11, v1, Lx01;->a:Lo23;

    .line 88
    .line 89
    iget-object v11, v11, Lo23;->c:Lda0;

    .line 90
    .line 91
    iget-object v11, v11, Lda0;->b:Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    .line 94
    .line 95
    .line 96
    move-result v12

    .line 97
    const/4 v15, 0x0

    .line 98
    :goto_2
    if-ge v15, v12, :cond_4

    .line 99
    .line 100
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v16

    .line 104
    move-object/from16 v4, v16

    .line 105
    .line 106
    check-cast v4, Ljs2;

    .line 107
    .line 108
    iget-object v14, v4, Ljs2;->n:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v14, Lrc;

    .line 111
    .line 112
    iget-object v4, v4, Ljs2;->o:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v4, Li50;

    .line 115
    .line 116
    invoke-virtual {v4, v0}, Li50;->d(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_3

    .line 121
    .line 122
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v14, v0, v6}, Lrc;->a(Ljava/lang/Object;Ler2;)La84;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    if-eqz v4, :cond_3

    .line 130
    .line 131
    move-object v0, v4

    .line 132
    :cond_3
    add-int/lit8 v15, v15, 0x1

    .line 133
    .line 134
    const/4 v4, 0x0

    .line 135
    goto :goto_2

    .line 136
    :cond_4
    invoke-virtual {v2, v13, v0, v6, v5}, Ldd1;->s(Ljo1;Ljava/lang/Object;Ler2;Lj21;)Lqb2;

    .line 137
    .line 138
    .line 139
    move-result-object v15

    .line 140
    if-eqz v15, :cond_5

    .line 141
    .line 142
    invoke-virtual {v2, v13, v15, v3, v8}, Ldd1;->r(Ljo1;Lqb2;Lln3;Lrd3;)Lrb2;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    goto :goto_3

    .line 147
    :catchall_1
    move-exception v0

    .line 148
    goto :goto_7

    .line 149
    :cond_5
    const/4 v2, 0x0

    .line 150
    :goto_3
    if-eqz v2, :cond_9

    .line 151
    .line 152
    iget-object v0, v2, Lrb2;->b:Ljava/util/Map;

    .line 153
    .line 154
    new-instance v11, Lxt3;

    .line 155
    .line 156
    iget-object v12, v2, Lrb2;->a:Lao1;

    .line 157
    .line 158
    sget-object v14, Lkm0;->n:Lkm0;

    .line 159
    .line 160
    const-string v1, "coil#disk_cache_key"

    .line 161
    .line 162
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    instance-of v2, v1, Ljava/lang/String;

    .line 167
    .line 168
    if-eqz v2, :cond_6

    .line 169
    .line 170
    check-cast v1, Ljava/lang/String;

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_6
    const/4 v1, 0x0

    .line 174
    :goto_4
    const-string v2, "coil#is_sampled"

    .line 175
    .line 176
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    instance-of v2, v0, Ljava/lang/Boolean;

    .line 181
    .line 182
    if-eqz v2, :cond_7

    .line 183
    .line 184
    move-object v4, v0

    .line 185
    check-cast v4, Ljava/lang/Boolean;

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_7
    const/4 v4, 0x0

    .line 189
    :goto_5
    if-eqz v4, :cond_8

    .line 190
    .line 191
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    move/from16 v17, v0

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_8
    const/16 v17, 0x0

    .line 199
    .line 200
    :goto_6
    iget-boolean v0, v7, Lr23;->a:Z

    .line 201
    .line 202
    move/from16 v18, v0

    .line 203
    .line 204
    move-object/from16 v16, v1

    .line 205
    .line 206
    invoke-direct/range {v11 .. v18}, Lxt3;-><init>(Lao1;Ljo1;Lkm0;Lqb2;Ljava/lang/String;ZZ)V

    .line 207
    .line 208
    .line 209
    return-object v11

    .line 210
    :cond_9
    iget-object v11, v13, Ljo1;->g:Lhi0;

    .line 211
    .line 212
    move-object v3, v0

    .line 213
    new-instance v0, Lu01;

    .line 214
    .line 215
    const/4 v8, 0x0

    .line 216
    move-object v4, v6

    .line 217
    move-object v2, v13

    .line 218
    move-object v6, v15

    .line 219
    invoke-direct/range {v0 .. v8}, Lu01;-><init>(Lx01;Ljo1;Ljava/lang/Object;Ler2;Lj21;Lqb2;Lr23;Ldh0;)V

    .line 220
    .line 221
    .line 222
    iput-object v7, v9, Lw01;->q:Lr23;

    .line 223
    .line 224
    iput v10, v9, Lw01;->t:I

    .line 225
    .line 226
    invoke-static {v11, v0, v9}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 230
    sget-object v1, Lri0;->n:Lri0;

    .line 231
    .line 232
    if-ne v0, v1, :cond_a

    .line 233
    .line 234
    return-object v1

    .line 235
    :cond_a
    return-object v0

    .line 236
    :goto_7
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    .line 237
    .line 238
    if-nez v1, :cond_b

    .line 239
    .line 240
    iget-object v1, v7, Lr23;->e:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v1, Ljo1;

    .line 243
    .line 244
    invoke-static {v1, v0}, Ldm0;->e(Ljo1;Ljava/lang/Throwable;)Lf21;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    return-object v0

    .line 249
    :cond_b
    throw v0
.end method

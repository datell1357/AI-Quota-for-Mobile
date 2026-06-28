.class public final Lay3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final d:Lay3;


# instance fields
.field public final a:Liq3;

.field public final b:Lqs2;

.field public final c:Lpv2;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lay3;

    .line 2
    .line 3
    const-wide/16 v4, 0x0

    .line 4
    .line 5
    const v6, 0xffffff

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct/range {v0 .. v6}, Lay3;-><init>(JLpb1;JI)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lay3;->d:Lay3;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(JLpb1;JI)V
    .locals 22

    .line 1
    move/from16 v0, p6

    .line 2
    .line 3
    sget-wide v1, Lt70;->f:J

    .line 4
    .line 5
    and-int/lit8 v3, v0, 0x2

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    sget-wide v3, Lcy3;->c:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-wide/from16 v3, p1

    .line 13
    .line 14
    :goto_0
    and-int/lit8 v5, v0, 0x4

    .line 15
    .line 16
    const/16 v19, 0x0

    .line 17
    .line 18
    if-eqz v5, :cond_1

    .line 19
    .line 20
    move-object/from16 v5, v19

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object/from16 v5, p3

    .line 24
    .line 25
    :goto_1
    and-int/lit8 v6, v0, 0x20

    .line 26
    .line 27
    if-eqz v6, :cond_2

    .line 28
    .line 29
    move-object/from16 v8, v19

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    sget-object v6, Lra1;->b:Lvg1;

    .line 33
    .line 34
    move-object v8, v6

    .line 35
    :goto_2
    and-int/lit16 v0, v0, 0x80

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    sget-wide v6, Lcy3;->c:J

    .line 40
    .line 41
    move-wide v10, v6

    .line 42
    goto :goto_3

    .line 43
    :cond_3
    move-wide/from16 v10, p4

    .line 44
    .line 45
    :goto_3
    sget-wide v20, Lcy3;->c:J

    .line 46
    .line 47
    new-instance v0, Liq3;

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v12, 0x0

    .line 53
    const/4 v13, 0x0

    .line 54
    const/4 v14, 0x0

    .line 55
    const/16 v17, 0x0

    .line 56
    .line 57
    const/16 v18, 0x0

    .line 58
    .line 59
    move-wide v15, v1

    .line 60
    invoke-direct/range {v0 .. v18}, Liq3;-><init>(JJLpb1;Lnb1;Lob1;Lra1;Ljava/lang/String;JLeu;Lfx3;Le72;JLyw3;Lhl3;)V

    .line 61
    .line 62
    .line 63
    new-instance v6, Lqs2;

    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    const/4 v8, 0x0

    .line 67
    const/4 v11, 0x0

    .line 68
    const/4 v14, 0x0

    .line 69
    const/4 v15, 0x0

    .line 70
    const/16 v16, 0x0

    .line 71
    .line 72
    move-object/from16 v12, v19

    .line 73
    .line 74
    move-wide/from16 v9, v20

    .line 75
    .line 76
    invoke-direct/range {v6 .. v16}, Lqs2;-><init>(IIJLgx3;Lmv2;Li32;IILsx3;)V

    .line 77
    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    move-object/from16 v2, p0

    .line 81
    .line 82
    invoke-direct {v2, v0, v6, v1}, Lay3;-><init>(Liq3;Lqs2;Lpv2;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public constructor <init>(Liq3;Lqs2;)V
    .locals 2

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    iget-object v0, p2, Lqs2;->e:Lmv2;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :cond_0
    new-instance v1, Lpv2;

    invoke-direct {v1, v0}, Lpv2;-><init>(Lmv2;)V

    move-object v0, v1

    .line 89
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lay3;-><init>(Liq3;Lqs2;Lpv2;)V

    return-void
.end method

.method public constructor <init>(Liq3;Lqs2;Lpv2;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lay3;->a:Liq3;

    .line 92
    iput-object p2, p0, Lay3;->b:Lqs2;

    .line 93
    iput-object p3, p0, Lay3;->c:Lpv2;

    return-void
.end method

.method public static a(Lay3;JLpb1;Lra1;JJLi32;I)Lay3;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p10

    .line 4
    .line 5
    sget-object v2, Lbi4;->n:Lpv2;

    .line 6
    .line 7
    iget-object v3, v0, Lay3;->a:Liq3;

    .line 8
    .line 9
    iget-object v3, v3, Liq3;->a:Lcx3;

    .line 10
    .line 11
    invoke-interface {v3}, Lcx3;->d()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    and-int/lit8 v5, v1, 0x2

    .line 16
    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    iget-object v5, v0, Lay3;->a:Liq3;

    .line 20
    .line 21
    iget-wide v5, v5, Liq3;->b:J

    .line 22
    .line 23
    move-wide v9, v5

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-wide/from16 v9, p1

    .line 26
    .line 27
    :goto_0
    and-int/lit8 v5, v1, 0x4

    .line 28
    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    iget-object v5, v0, Lay3;->a:Liq3;

    .line 32
    .line 33
    iget-object v5, v5, Liq3;->c:Lpb1;

    .line 34
    .line 35
    move-object v11, v5

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object/from16 v11, p3

    .line 38
    .line 39
    :goto_1
    iget-object v5, v0, Lay3;->a:Liq3;

    .line 40
    .line 41
    iget-object v12, v5, Liq3;->d:Lnb1;

    .line 42
    .line 43
    iget-object v13, v5, Liq3;->e:Lob1;

    .line 44
    .line 45
    and-int/lit8 v6, v1, 0x20

    .line 46
    .line 47
    if-eqz v6, :cond_2

    .line 48
    .line 49
    iget-object v6, v5, Liq3;->f:Lra1;

    .line 50
    .line 51
    move-object v14, v6

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move-object/from16 v14, p4

    .line 54
    .line 55
    :goto_2
    iget-object v15, v5, Liq3;->g:Ljava/lang/String;

    .line 56
    .line 57
    and-int/lit16 v6, v1, 0x80

    .line 58
    .line 59
    if-eqz v6, :cond_3

    .line 60
    .line 61
    iget-wide v6, v5, Liq3;->h:J

    .line 62
    .line 63
    move-wide/from16 v16, v6

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    move-wide/from16 v16, p5

    .line 67
    .line 68
    :goto_3
    iget-object v6, v5, Liq3;->i:Leu;

    .line 69
    .line 70
    iget-object v7, v5, Liq3;->j:Lfx3;

    .line 71
    .line 72
    iget-object v8, v5, Liq3;->k:Le72;

    .line 73
    .line 74
    move-object/from16 v18, v2

    .line 75
    .line 76
    iget-wide v1, v5, Liq3;->l:J

    .line 77
    .line 78
    move-wide/from16 v21, v1

    .line 79
    .line 80
    iget-object v1, v5, Liq3;->m:Lyw3;

    .line 81
    .line 82
    iget-object v2, v5, Liq3;->n:Lhl3;

    .line 83
    .line 84
    move-object/from16 v23, v1

    .line 85
    .line 86
    iget-object v1, v5, Liq3;->o:Ltv4;

    .line 87
    .line 88
    move-object/from16 v25, v1

    .line 89
    .line 90
    iget-object v1, v0, Lay3;->b:Lqs2;

    .line 91
    .line 92
    move-object/from16 v24, v2

    .line 93
    .line 94
    iget v2, v1, Lqs2;->a:I

    .line 95
    .line 96
    move/from16 p1, v2

    .line 97
    .line 98
    iget v2, v1, Lqs2;->b:I

    .line 99
    .line 100
    const/high16 v19, 0x20000

    .line 101
    .line 102
    and-int v19, p10, v19

    .line 103
    .line 104
    if-eqz v19, :cond_4

    .line 105
    .line 106
    move-object/from16 v19, v6

    .line 107
    .line 108
    move-object/from16 v20, v7

    .line 109
    .line 110
    iget-wide v6, v1, Lqs2;->c:J

    .line 111
    .line 112
    move-wide/from16 v26, v6

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_4
    move-object/from16 v19, v6

    .line 116
    .line 117
    move-object/from16 v20, v7

    .line 118
    .line 119
    move-wide/from16 v26, p7

    .line 120
    .line 121
    :goto_4
    iget-object v6, v1, Lqs2;->d:Lgx3;

    .line 122
    .line 123
    const/high16 v7, 0x80000

    .line 124
    .line 125
    and-int v7, p10, v7

    .line 126
    .line 127
    if-eqz v7, :cond_5

    .line 128
    .line 129
    iget-object v0, v0, Lay3;->c:Lpv2;

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_5
    move-object/from16 v0, v18

    .line 133
    .line 134
    :goto_5
    const/high16 v7, 0x100000

    .line 135
    .line 136
    and-int v7, p10, v7

    .line 137
    .line 138
    if-eqz v7, :cond_6

    .line 139
    .line 140
    iget-object v7, v1, Lqs2;->f:Li32;

    .line 141
    .line 142
    move-object/from16 v28, v7

    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_6
    move-object/from16 v28, p9

    .line 146
    .line 147
    :goto_6
    iget v7, v1, Lqs2;->g:I

    .line 148
    .line 149
    move/from16 p2, v2

    .line 150
    .line 151
    iget v2, v1, Lqs2;->h:I

    .line 152
    .line 153
    iget-object v1, v1, Lqs2;->i:Lsx3;

    .line 154
    .line 155
    move-object/from16 p10, v1

    .line 156
    .line 157
    new-instance v1, Lay3;

    .line 158
    .line 159
    move/from16 v18, v7

    .line 160
    .line 161
    new-instance v7, Liq3;

    .line 162
    .line 163
    move/from16 p9, v2

    .line 164
    .line 165
    iget-object v2, v5, Liq3;->a:Lcx3;

    .line 166
    .line 167
    move-object/from16 p5, v6

    .line 168
    .line 169
    move-object/from16 p0, v7

    .line 170
    .line 171
    invoke-interface {v2}, Lcx3;->d()J

    .line 172
    .line 173
    .line 174
    move-result-wide v6

    .line 175
    invoke-static {v3, v4, v6, v7}, Lt70;->c(JJ)Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-eqz v2, :cond_7

    .line 180
    .line 181
    iget-object v2, v5, Liq3;->a:Lcx3;

    .line 182
    .line 183
    :goto_7
    move-object v7, v8

    .line 184
    move-object v8, v2

    .line 185
    move/from16 v2, v18

    .line 186
    .line 187
    move-object/from16 v18, v19

    .line 188
    .line 189
    move-object/from16 v19, v20

    .line 190
    .line 191
    move-object/from16 v20, v7

    .line 192
    .line 193
    move-object/from16 v7, p0

    .line 194
    .line 195
    goto :goto_8

    .line 196
    :cond_7
    const-wide/16 v5, 0x10

    .line 197
    .line 198
    cmp-long v2, v3, v5

    .line 199
    .line 200
    if-eqz v2, :cond_8

    .line 201
    .line 202
    new-instance v2, Lg80;

    .line 203
    .line 204
    invoke-direct {v2, v3, v4}, Lg80;-><init>(J)V

    .line 205
    .line 206
    .line 207
    goto :goto_7

    .line 208
    :cond_8
    sget-object v2, Lbx3;->o:Lbx3;

    .line 209
    .line 210
    goto :goto_7

    .line 211
    :goto_8
    invoke-direct/range {v7 .. v25}, Liq3;-><init>(Lcx3;JLpb1;Lnb1;Lob1;Lra1;Ljava/lang/String;JLeu;Lfx3;Le72;JLyw3;Lhl3;Ltv4;)V

    .line 212
    .line 213
    .line 214
    new-instance v3, Lqs2;

    .line 215
    .line 216
    if-eqz v0, :cond_9

    .line 217
    .line 218
    iget-object v4, v0, Lpv2;->a:Lmv2;

    .line 219
    .line 220
    :goto_9
    move/from16 p8, v2

    .line 221
    .line 222
    move-object/from16 p0, v3

    .line 223
    .line 224
    move-object/from16 p6, v4

    .line 225
    .line 226
    move-wide/from16 p3, v26

    .line 227
    .line 228
    move-object/from16 p7, v28

    .line 229
    .line 230
    goto :goto_a

    .line 231
    :cond_9
    const/4 v4, 0x0

    .line 232
    goto :goto_9

    .line 233
    :goto_a
    invoke-direct/range {p0 .. p10}, Lqs2;-><init>(IIJLgx3;Lmv2;Li32;IILsx3;)V

    .line 234
    .line 235
    .line 236
    move-object/from16 v2, p0

    .line 237
    .line 238
    invoke-direct {v1, v7, v2, v0}, Lay3;-><init>(Liq3;Lqs2;Lpv2;)V

    .line 239
    .line 240
    .line 241
    return-object v1
.end method

.method public static d(Lay3;JJLpb1;Lra1;JIJI)Lay3;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p12

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    sget-wide v2, Lcy3;->c:J

    .line 10
    .line 11
    move-wide v9, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-wide/from16 v9, p3

    .line 14
    .line 15
    :goto_0
    and-int/lit8 v2, v1, 0x4

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    move-object v11, v3

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move-object/from16 v11, p5

    .line 23
    .line 24
    :goto_1
    and-int/lit8 v2, v1, 0x20

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    move-object v14, v3

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move-object/from16 v14, p6

    .line 31
    .line 32
    :goto_2
    and-int/lit16 v2, v1, 0x80

    .line 33
    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    sget-wide v4, Lcy3;->c:J

    .line 37
    .line 38
    move-wide/from16 v16, v4

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    move-wide/from16 v16, p7

    .line 42
    .line 43
    :goto_3
    sget-wide v21, Lt70;->f:J

    .line 44
    .line 45
    const v2, 0x8000

    .line 46
    .line 47
    .line 48
    and-int/2addr v2, v1

    .line 49
    if-eqz v2, :cond_4

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    goto :goto_4

    .line 53
    :cond_4
    move/from16 v2, p9

    .line 54
    .line 55
    :goto_4
    const/high16 v4, 0x20000

    .line 56
    .line 57
    and-int/2addr v1, v4

    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    sget-wide v4, Lcy3;->c:J

    .line 61
    .line 62
    move-wide/from16 v26, v4

    .line 63
    .line 64
    goto :goto_5

    .line 65
    :cond_5
    move-wide/from16 v26, p10

    .line 66
    .line 67
    :goto_5
    iget-object v4, v0, Lay3;->a:Liq3;

    .line 68
    .line 69
    const/4 v7, 0x0

    .line 70
    const/high16 v8, 0x7fc00000    # Float.NaN

    .line 71
    .line 72
    const/4 v12, 0x0

    .line 73
    const/4 v13, 0x0

    .line 74
    const/4 v15, 0x0

    .line 75
    const/16 v18, 0x0

    .line 76
    .line 77
    const/16 v19, 0x0

    .line 78
    .line 79
    const/16 v20, 0x0

    .line 80
    .line 81
    const/16 v23, 0x0

    .line 82
    .line 83
    const/16 v24, 0x0

    .line 84
    .line 85
    const/16 v25, 0x0

    .line 86
    .line 87
    move-wide/from16 v5, p1

    .line 88
    .line 89
    invoke-static/range {v4 .. v25}, Ljq3;->a(Liq3;JLzf5;FJLpb1;Lnb1;Lob1;Lra1;Ljava/lang/String;JLeu;Lfx3;Le72;JLyw3;Lhl3;Ltv4;)Liq3;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v4, v0, Lay3;->b:Lqs2;

    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    const/4 v6, 0x0

    .line 97
    const/4 v8, 0x0

    .line 98
    const/4 v9, 0x0

    .line 99
    const/4 v10, 0x0

    .line 100
    move/from16 p2, v2

    .line 101
    .line 102
    move-object/from16 p7, v3

    .line 103
    .line 104
    move-object/from16 p1, v4

    .line 105
    .line 106
    move/from16 p3, v5

    .line 107
    .line 108
    move-object/from16 p6, v6

    .line 109
    .line 110
    move-object/from16 p8, v7

    .line 111
    .line 112
    move/from16 p9, v8

    .line 113
    .line 114
    move/from16 p10, v9

    .line 115
    .line 116
    move-object/from16 p11, v10

    .line 117
    .line 118
    move-wide/from16 p4, v26

    .line 119
    .line 120
    invoke-static/range {p1 .. p11}, Lrs2;->a(Lqs2;IIJLgx3;Lmv2;Li32;IILsx3;)Lqs2;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iget-object v3, v0, Lay3;->a:Liq3;

    .line 125
    .line 126
    if-ne v3, v1, :cond_6

    .line 127
    .line 128
    iget-object v3, v0, Lay3;->b:Lqs2;

    .line 129
    .line 130
    if-ne v3, v2, :cond_6

    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_6
    new-instance v0, Lay3;

    .line 134
    .line 135
    invoke-direct {v0, v1, v2}, Lay3;-><init>(Liq3;Lqs2;)V

    .line 136
    .line 137
    .line 138
    return-object v0
.end method


# virtual methods
.method public final b()J
    .locals 2

    .line 1
    iget-object p0, p0, Lay3;->a:Liq3;

    .line 2
    .line 3
    iget-object p0, p0, Liq3;->a:Lcx3;

    .line 4
    .line 5
    invoke-interface {p0}, Lcx3;->d()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final c(Lay3;)Lay3;
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    sget-object v0, Lay3;->d:Lay3;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lay3;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lay3;

    .line 13
    .line 14
    iget-object v1, p0, Lay3;->a:Liq3;

    .line 15
    .line 16
    iget-object v2, p1, Lay3;->a:Liq3;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Liq3;->c(Liq3;)Liq3;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object p0, p0, Lay3;->b:Lqs2;

    .line 23
    .line 24
    iget-object p1, p1, Lay3;->b:Lqs2;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lqs2;->a(Lqs2;)Lqs2;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v0, v1, p0}, Lay3;-><init>(Liq3;Lqs2;)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_1
    :goto_0
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lay3;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lay3;

    .line 12
    .line 13
    iget-object v1, p1, Lay3;->a:Liq3;

    .line 14
    .line 15
    iget-object v3, p0, Lay3;->a:Liq3;

    .line 16
    .line 17
    invoke-static {v3, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lay3;->b:Lqs2;

    .line 25
    .line 26
    iget-object v3, p1, Lay3;->b:Lqs2;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object p0, p0, Lay3;->c:Lpv2;

    .line 36
    .line 37
    iget-object p1, p1, Lay3;->c:Lpv2;

    .line 38
    .line 39
    invoke-static {p0, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lay3;->a:Liq3;

    .line 2
    .line 3
    invoke-virtual {v0}, Liq3;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lay3;->b:Lqs2;

    .line 10
    .line 11
    invoke-virtual {v1}, Lqs2;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object p0, p0, Lay3;->c:Lpv2;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lpv2;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    add-int/2addr v1, p0

    .line 29
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lay3;->b()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v1, v2}, Lt70;->i(J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, v0, Lay3;->a:Liq3;

    .line 12
    .line 13
    iget-object v3, v2, Liq3;->a:Lcx3;

    .line 14
    .line 15
    invoke-interface {v3}, Lcx3;->g()Lzf5;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v4, v2, Liq3;->a:Lcx3;

    .line 20
    .line 21
    invoke-interface {v4}, Lcx3;->c()F

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    iget-wide v5, v2, Liq3;->b:J

    .line 26
    .line 27
    invoke-static {v5, v6}, Lcy3;->d(J)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-object v6, v2, Liq3;->c:Lpb1;

    .line 32
    .line 33
    iget-object v7, v2, Liq3;->d:Lnb1;

    .line 34
    .line 35
    iget-object v8, v2, Liq3;->e:Lob1;

    .line 36
    .line 37
    iget-object v9, v2, Liq3;->f:Lra1;

    .line 38
    .line 39
    iget-object v10, v2, Liq3;->g:Ljava/lang/String;

    .line 40
    .line 41
    iget-wide v11, v2, Liq3;->h:J

    .line 42
    .line 43
    invoke-static {v11, v12}, Lcy3;->d(J)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    iget-object v12, v2, Liq3;->i:Leu;

    .line 48
    .line 49
    iget-object v13, v2, Liq3;->j:Lfx3;

    .line 50
    .line 51
    iget-object v14, v2, Liq3;->k:Le72;

    .line 52
    .line 53
    move-object/from16 v16, v14

    .line 54
    .line 55
    iget-wide v14, v2, Liq3;->l:J

    .line 56
    .line 57
    invoke-static {v14, v15}, Lt70;->i(J)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v14

    .line 61
    iget-object v15, v2, Liq3;->m:Lyw3;

    .line 62
    .line 63
    move-object/from16 v17, v15

    .line 64
    .line 65
    iget-object v15, v2, Liq3;->n:Lhl3;

    .line 66
    .line 67
    iget-object v2, v2, Liq3;->o:Ltv4;

    .line 68
    .line 69
    move-object/from16 v18, v2

    .line 70
    .line 71
    iget-object v2, v0, Lay3;->b:Lqs2;

    .line 72
    .line 73
    iget v0, v2, Lqs2;->a:I

    .line 74
    .line 75
    invoke-static {v0}, Lvw3;->a(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    move-object/from16 v19, v0

    .line 80
    .line 81
    iget v0, v2, Lqs2;->b:I

    .line 82
    .line 83
    invoke-static {v0}, Lax3;->a(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    move-object/from16 v20, v14

    .line 88
    .line 89
    move-object/from16 v21, v15

    .line 90
    .line 91
    iget-wide v14, v2, Lqs2;->c:J

    .line 92
    .line 93
    invoke-static {v14, v15}, Lcy3;->d(J)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v14

    .line 97
    iget-object v15, v2, Lqs2;->d:Lgx3;

    .line 98
    .line 99
    move-object/from16 v22, v15

    .line 100
    .line 101
    iget-object v15, v2, Lqs2;->f:Li32;

    .line 102
    .line 103
    move-object/from16 v23, v15

    .line 104
    .line 105
    iget v15, v2, Lqs2;->g:I

    .line 106
    .line 107
    invoke-static {v15}, Ld32;->a(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v15

    .line 111
    move-object/from16 v24, v15

    .line 112
    .line 113
    iget v15, v2, Lqs2;->h:I

    .line 114
    .line 115
    invoke-static {v15}, Lgn1;->a(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v15

    .line 119
    iget-object v2, v2, Lqs2;->i:Lsx3;

    .line 120
    .line 121
    move-object/from16 v25, v2

    .line 122
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    move-object/from16 v26, v15

    .line 126
    .line 127
    const-string v15, "TextStyle(color="

    .line 128
    .line 129
    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v1, ", brush="

    .line 136
    .line 137
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, ", alpha="

    .line 144
    .line 145
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v1, ", fontSize="

    .line 152
    .line 153
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v1, ", fontWeight="

    .line 160
    .line 161
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v1, ", fontStyle="

    .line 168
    .line 169
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v1, ", fontSynthesis="

    .line 176
    .line 177
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v1, ", fontFamily="

    .line 184
    .line 185
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v1, ", fontFeatureSettings="

    .line 192
    .line 193
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v1, ", letterSpacing="

    .line 197
    .line 198
    const-string v3, ", baselineShift="

    .line 199
    .line 200
    invoke-static {v2, v10, v1, v11, v3}, Ldi0;->E(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v1, ", textGeometricTransform="

    .line 207
    .line 208
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v1, ", localeList="

    .line 215
    .line 216
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    move-object/from16 v1, v16

    .line 220
    .line 221
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v1, ", background="

    .line 225
    .line 226
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    move-object/from16 v1, v20

    .line 230
    .line 231
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v1, ", textDecoration="

    .line 235
    .line 236
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    move-object/from16 v1, v17

    .line 240
    .line 241
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v1, ", shadow="

    .line 245
    .line 246
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    move-object/from16 v1, v21

    .line 250
    .line 251
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v1, ", drawStyle="

    .line 255
    .line 256
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    move-object/from16 v1, v18

    .line 260
    .line 261
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v1, ", textAlign="

    .line 265
    .line 266
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    move-object/from16 v1, v19

    .line 270
    .line 271
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v1, ", textDirection="

    .line 275
    .line 276
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v1, ", lineHeight="

    .line 280
    .line 281
    const-string v3, ", textIndent="

    .line 282
    .line 283
    invoke-static {v2, v0, v1, v14, v3}, Ldi0;->E(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    move-object/from16 v0, v22

    .line 287
    .line 288
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string v0, ", platformStyle="

    .line 292
    .line 293
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    move-object/from16 v0, p0

    .line 297
    .line 298
    iget-object v0, v0, Lay3;->c:Lpv2;

    .line 299
    .line 300
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v0, ", lineHeightStyle="

    .line 304
    .line 305
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    move-object/from16 v0, v23

    .line 309
    .line 310
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const-string v0, ", lineBreak="

    .line 314
    .line 315
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    move-object/from16 v0, v24

    .line 319
    .line 320
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v0, ", hyphens="

    .line 324
    .line 325
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    move-object/from16 v0, v26

    .line 329
    .line 330
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string v0, ", textMotion="

    .line 334
    .line 335
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    move-object/from16 v0, v25

    .line 339
    .line 340
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string v0, ")"

    .line 344
    .line 345
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    return-object v0
.end method

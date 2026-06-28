.class public final Lzx3;
.super Lmd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Loy1;
.implements Ljx0;
.implements Leh3;


# instance fields
.field public B:Ljava/lang/String;

.field public C:Lay3;

.field public D:Lqa1;

.field public E:I

.field public F:Z

.field public G:I

.field public H:I

.field public I:Ljava/util/HashMap;

.field public J:Lps2;

.field public K:Lxx3;

.field public L:Lyx3;


# virtual methods
.method public final G0()Lps2;
    .locals 8

    .line 1
    iget-object v2, p0, Lzx3;->C:Lay3;

    .line 2
    .line 3
    iget-object v0, p0, Lzx3;->J:Lps2;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lps2;

    .line 8
    .line 9
    iget-object v1, p0, Lzx3;->B:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, p0, Lzx3;->D:Lqa1;

    .line 12
    .line 13
    iget v4, p0, Lzx3;->E:I

    .line 14
    .line 15
    iget-boolean v5, p0, Lzx3;->F:Z

    .line 16
    .line 17
    iget v6, p0, Lzx3;->G:I

    .line 18
    .line 19
    iget v7, p0, Lzx3;->H:I

    .line 20
    .line 21
    invoke-direct/range {v0 .. v7}, Lps2;-><init>(Ljava/lang/String;Lay3;Lqa1;IZII)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lzx3;->J:Lps2;

    .line 25
    .line 26
    :cond_0
    iget-object p0, p0, Lzx3;->J:Lps2;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    return-object p0
.end method

.method public final K(Lzy1;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lmd2;->A:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    iget-object v1, v0, Lzx3;->L:Lyx3;

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    iget-boolean v2, v1, Lyx3;->c:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget-object v1, v1, Lyx3;->d:Lps2;

    .line 22
    .line 23
    if-nez v1, :cond_3

    .line 24
    .line 25
    :cond_2
    invoke-virtual {v0}, Lzx3;->G0()Lps2;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_3
    iget-object v2, v1, Lps2;->j:Lnb;

    .line 30
    .line 31
    if-eqz v2, :cond_d

    .line 32
    .line 33
    move-object/from16 v3, p1

    .line 34
    .line 35
    iget-object v3, v3, Lzy1;->n:Lx20;

    .line 36
    .line 37
    iget-object v3, v3, Lx20;->o:Leh;

    .line 38
    .line 39
    invoke-virtual {v3}, Leh;->u()Lv20;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    iget-boolean v3, v1, Lps2;->k:Z

    .line 44
    .line 45
    const-wide v10, 0xffffffffL

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    const/16 v12, 0x20

    .line 51
    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    iget-wide v5, v1, Lps2;->l:J

    .line 55
    .line 56
    shr-long v7, v5, v12

    .line 57
    .line 58
    long-to-int v1, v7

    .line 59
    int-to-float v7, v1

    .line 60
    and-long/2addr v5, v10

    .line 61
    long-to-int v1, v5

    .line 62
    int-to-float v8, v1

    .line 63
    invoke-interface {v4}, Lv20;->j()V

    .line 64
    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    const/4 v9, 0x1

    .line 68
    const/4 v5, 0x0

    .line 69
    invoke-interface/range {v4 .. v9}, Lv20;->e(FFFFI)V

    .line 70
    .line 71
    .line 72
    :cond_4
    :try_start_0
    iget-object v0, v0, Lzx3;->C:Lay3;

    .line 73
    .line 74
    iget-object v1, v0, Lay3;->a:Liq3;

    .line 75
    .line 76
    iget-object v5, v1, Liq3;->m:Lyw3;

    .line 77
    .line 78
    if-nez v5, :cond_5

    .line 79
    .line 80
    sget-object v5, Lyw3;->b:Lyw3;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto/16 :goto_5

    .line 85
    .line 86
    :cond_5
    :goto_1
    iget-object v6, v1, Liq3;->n:Lhl3;

    .line 87
    .line 88
    if-nez v6, :cond_6

    .line 89
    .line 90
    sget-object v6, Lhl3;->d:Lhl3;

    .line 91
    .line 92
    :cond_6
    iget-object v7, v1, Liq3;->o:Ltv4;

    .line 93
    .line 94
    if-nez v7, :cond_7

    .line 95
    .line 96
    sget-object v7, Lt51;->f:Lt51;

    .line 97
    .line 98
    :cond_7
    iget-object v1, v1, Liq3;->a:Lcx3;

    .line 99
    .line 100
    invoke-interface {v1}, Lcx3;->g()Lzf5;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const/4 v8, 0x3

    .line 105
    if-eqz v1, :cond_8

    .line 106
    .line 107
    iget-object v0, v0, Lay3;->a:Liq3;

    .line 108
    .line 109
    iget-object v0, v0, Liq3;->a:Lcx3;

    .line 110
    .line 111
    invoke-interface {v0}, Lcx3;->c()F

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    iget-object v9, v2, Lnb;->a:Lrb;

    .line 116
    .line 117
    iget-object v9, v9, Lrb;->g:Ljc;

    .line 118
    .line 119
    iget v13, v9, Ljc;->c:I

    .line 120
    .line 121
    invoke-virtual {v2}, Lnb;->c()F

    .line 122
    .line 123
    .line 124
    move-result v14

    .line 125
    invoke-virtual {v2}, Lnb;->b()F

    .line 126
    .line 127
    .line 128
    move-result v15

    .line 129
    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 130
    .line 131
    .line 132
    move-result v14

    .line 133
    move-wide/from16 v16, v10

    .line 134
    .line 135
    int-to-long v10, v14

    .line 136
    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 137
    .line 138
    .line 139
    move-result v14

    .line 140
    int-to-long v14, v14

    .line 141
    shl-long/2addr v10, v12

    .line 142
    and-long v14, v14, v16

    .line 143
    .line 144
    or-long/2addr v10, v14

    .line 145
    invoke-virtual {v9, v1, v10, v11, v0}, Ljc;->c(Lzf5;JF)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v9, v6}, Ljc;->f(Lhl3;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9, v5}, Ljc;->g(Lyw3;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9, v7}, Ljc;->e(Ltv4;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v9, v8}, Ljc;->b(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v4}, Lnb;->d(Lv20;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9, v13}, Ljc;->b(I)V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_8
    sget-wide v9, Lt70;->f:J

    .line 168
    .line 169
    const-wide/16 v11, 0x10

    .line 170
    .line 171
    cmp-long v1, v9, v11

    .line 172
    .line 173
    if-eqz v1, :cond_9

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_9
    invoke-virtual {v0}, Lay3;->b()J

    .line 177
    .line 178
    .line 179
    move-result-wide v9

    .line 180
    cmp-long v1, v9, v11

    .line 181
    .line 182
    if-eqz v1, :cond_a

    .line 183
    .line 184
    invoke-virtual {v0}, Lay3;->b()J

    .line 185
    .line 186
    .line 187
    move-result-wide v9

    .line 188
    goto :goto_2

    .line 189
    :cond_a
    sget-wide v9, Lt70;->b:J

    .line 190
    .line 191
    :goto_2
    iget-object v0, v2, Lnb;->a:Lrb;

    .line 192
    .line 193
    iget-object v0, v0, Lrb;->g:Ljc;

    .line 194
    .line 195
    iget v1, v0, Ljc;->c:I

    .line 196
    .line 197
    invoke-virtual {v0, v9, v10}, Ljc;->d(J)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v6}, Ljc;->f(Lhl3;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v5}, Ljc;->g(Lyw3;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v7}, Ljc;->e(Ltv4;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v8}, Ljc;->b(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v4}, Lnb;->d(Lv20;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v1}, Ljc;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .line 217
    .line 218
    :goto_3
    if-eqz v3, :cond_b

    .line 219
    .line 220
    invoke-interface {v4}, Lv20;->h()V

    .line 221
    .line 222
    .line 223
    :cond_b
    :goto_4
    return-void

    .line 224
    :goto_5
    if-eqz v3, :cond_c

    .line 225
    .line 226
    invoke-interface {v4}, Lv20;->h()V

    .line 227
    .line 228
    .line 229
    :cond_c
    throw v0

    .line 230
    :cond_d
    iget-object v1, v0, Lzx3;->J:Lps2;

    .line 231
    .line 232
    iget-object v0, v0, Lzx3;->L:Lyx3;

    .line 233
    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    const-string v3, "Internal Error: ParagraphLayoutCache could not provide a Paragraph during the draw phase. Please report this bug on the official Issue Tracker with the following diagnostic information: (layoutCache="

    .line 237
    .line 238
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v1, ", textSubstitution="

    .line 245
    .line 246
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v0, ")"

    .line 253
    .line 254
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-static {v0}, Ldr1;->b(Ljava/lang/String;)Ljava/lang/Void;

    .line 262
    .line 263
    .line 264
    invoke-static {}, Lp61;->q()V

    .line 265
    .line 266
    .line 267
    return-void
.end method

.method public final O(Lk82;Lya2;I)I
    .locals 0

    .line 1
    iget-object p2, p0, Lzx3;->L:Lyx3;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-boolean p3, p2, Lyx3;->c:Z

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iget-object p2, p2, Lyx3;->d:Lps2;

    .line 14
    .line 15
    if-nez p2, :cond_2

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, Lzx3;->G0()Lps2;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    :cond_2
    invoke-virtual {p2, p1}, Lps2;->d(Las0;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Ljt1;->getLayoutDirection()Lhy1;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p2, p0}, Lps2;->e(Lhy1;)Los2;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0}, Los2;->a()F

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-static {p0}, Lis0;->p(F)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public final a0(Lph3;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lzx3;->K:Lxx3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lxx3;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lxx3;-><init>(Lzx3;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lzx3;->K:Lxx3;

    .line 12
    .line 13
    :cond_0
    new-instance v1, Lff;

    .line 14
    .line 15
    iget-object v2, p0, Lzx3;->B:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v1, v2}, Lff;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v2, Lnh3;->a:[Lkx1;

    .line 21
    .line 22
    sget-object v2, Llh3;->B:Loh3;

    .line 23
    .line 24
    invoke-static {v1}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {p1, v2, v1}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lzx3;->L:Lyx3;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-boolean v2, v1, Lyx3;->c:Z

    .line 36
    .line 37
    sget-object v3, Llh3;->D:Loh3;

    .line 38
    .line 39
    sget-object v4, Lnh3;->a:[Lkx1;

    .line 40
    .line 41
    const/16 v5, 0x11

    .line 42
    .line 43
    aget-object v5, v4, v5

    .line 44
    .line 45
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {p1, v3, v2}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance v2, Lff;

    .line 53
    .line 54
    iget-object v1, v1, Lyx3;->b:Ljava/lang/String;

    .line 55
    .line 56
    invoke-direct {v2, v1}, Lff;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object v1, Llh3;->C:Loh3;

    .line 60
    .line 61
    const/16 v3, 0x10

    .line 62
    .line 63
    aget-object v3, v4, v3

    .line 64
    .line 65
    invoke-interface {p1, v1, v2}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    new-instance v1, Lxx3;

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    invoke-direct {v1, p0, v2}, Lxx3;-><init>(Lzx3;I)V

    .line 72
    .line 73
    .line 74
    sget-object v2, Lah3;->l:Loh3;

    .line 75
    .line 76
    new-instance v3, Lo2;

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    invoke-direct {v3, v4, v1}, Lo2;-><init>(Ljava/lang/String;Lef1;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p1, v2, v3}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    new-instance v1, Lxx3;

    .line 86
    .line 87
    const/4 v2, 0x2

    .line 88
    invoke-direct {v1, p0, v2}, Lxx3;-><init>(Lzx3;I)V

    .line 89
    .line 90
    .line 91
    sget-object v2, Lah3;->m:Loh3;

    .line 92
    .line 93
    new-instance v3, Lo2;

    .line 94
    .line 95
    invoke-direct {v3, v4, v1}, Lo2;-><init>(Ljava/lang/String;Lef1;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p1, v2, v3}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    new-instance v1, Lvc3;

    .line 102
    .line 103
    const/16 v2, 0x9

    .line 104
    .line 105
    invoke-direct {v1, v2, p0}, Lvc3;-><init>(ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    sget-object p0, Lah3;->n:Loh3;

    .line 109
    .line 110
    new-instance v2, Lo2;

    .line 111
    .line 112
    invoke-direct {v2, v4, v1}, Lo2;-><init>(Ljava/lang/String;Lef1;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {p1, p0, v2}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    sget-object p0, Lah3;->a:Loh3;

    .line 119
    .line 120
    new-instance v1, Lo2;

    .line 121
    .line 122
    invoke-direct {v1, v4, v0}, Lo2;-><init>(Ljava/lang/String;Lef1;)V

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, p0, v1}, Lph3;->a(Loh3;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public final e(Lk82;Lya2;I)I
    .locals 0

    .line 1
    iget-object p2, p0, Lzx3;->L:Lyx3;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-boolean p3, p2, Lyx3;->c:Z

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iget-object p2, p2, Lyx3;->d:Lps2;

    .line 14
    .line 15
    if-nez p2, :cond_2

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, Lzx3;->G0()Lps2;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    :cond_2
    invoke-virtual {p2, p1}, Lps2;->d(Las0;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Ljt1;->getLayoutDirection()Lhy1;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p2, p0}, Lps2;->e(Lhy1;)Los2;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0}, Los2;->c()F

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-static {p0}, Lis0;->p(F)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public final h0(Lgb2;Lya2;J)Leb2;
    .locals 4

    .line 1
    const-string v0, "TextStringSimpleNode::measure"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lzx3;->L:Lyx3;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v1, v0, Lyx3;->c:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, v0, Lyx3;->d:Lps2;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    :cond_1
    invoke-virtual {p0}, Lzx3;->G0()Lps2;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_2
    invoke-virtual {v0, p1}, Lps2;->d(Las0;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljt1;->getLayoutDirection()Lhy1;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, p3, p4, v1}, Lps2;->b(JLhy1;)Z

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    iget-object p4, v0, Lps2;->n:Los2;

    .line 38
    .line 39
    if-eqz p4, :cond_3

    .line 40
    .line 41
    invoke-interface {p4}, Los2;->b()Z

    .line 42
    .line 43
    .line 44
    :cond_3
    iget-object p4, v0, Lps2;->j:Lnb;

    .line 45
    .line 46
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object p4, p4, Lnb;->d:Lmx3;

    .line 50
    .line 51
    iget-wide v0, v0, Lps2;->l:J

    .line 52
    .line 53
    if-eqz p3, :cond_5

    .line 54
    .line 55
    const/4 p3, 0x2

    .line 56
    invoke-static {p0, p3}, Lw80;->P(Ljr0;I)Lmm2;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lmm2;->V0()V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lzx3;->I:Ljava/util/HashMap;

    .line 64
    .line 65
    if-nez v2, :cond_4

    .line 66
    .line 67
    new-instance v2, Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-direct {v2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 70
    .line 71
    .line 72
    iput-object v2, p0, Lzx3;->I:Ljava/util/HashMap;

    .line 73
    .line 74
    :cond_4
    sget-object p3, Lb8;->a:Lck1;

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-virtual {p4, v3}, Lmx3;->c(I)F

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-interface {v2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    sget-object p3, Lb8;->b:Lck1;

    .line 93
    .line 94
    iget v3, p4, Lmx3;->f:I

    .line 95
    .line 96
    add-int/lit8 v3, v3, -0x1

    .line 97
    .line 98
    invoke-virtual {p4, v3}, Lmx3;->c(I)F

    .line 99
    .line 100
    .line 101
    move-result p4

    .line 102
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    .line 103
    .line 104
    .line 105
    move-result p4

    .line 106
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object p4

    .line 110
    invoke-interface {v2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    :cond_5
    const/16 p3, 0x20

    .line 114
    .line 115
    shr-long p3, v0, p3

    .line 116
    .line 117
    long-to-int p3, p3

    .line 118
    const-wide v2, 0xffffffffL

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    and-long/2addr v0, v2

    .line 124
    long-to-int p4, v0

    .line 125
    invoke-static {p3, p3, p4, p4}, Lon4;->t(IIII)J

    .line 126
    .line 127
    .line 128
    move-result-wide v0

    .line 129
    invoke-interface {p2, v0, v1}, Lya2;->e(J)Ldv2;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    iget-object p0, p0, Lzx3;->I:Ljava/util/HashMap;

    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    new-instance v0, Le0;

    .line 139
    .line 140
    const/4 v1, 0x7

    .line 141
    invoke-direct {v0, p2, v1}, Le0;-><init>(Ldv2;I)V

    .line 142
    .line 143
    .line 144
    invoke-interface {p1, p3, p4, p0, v0}, Lgb2;->e0(IILjava/util/Map;Lpe1;)Leb2;

    .line 145
    .line 146
    .line 147
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 149
    .line 150
    .line 151
    return-object p0

    .line 152
    :catchall_0
    move-exception p0

    .line 153
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 154
    .line 155
    .line 156
    throw p0
.end method

.method public final l(Lk82;Lya2;I)I
    .locals 1

    .line 1
    iget-object p2, p0, Lzx3;->L:Lyx3;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p2, Lyx3;->c:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iget-object p2, p2, Lyx3;->d:Lps2;

    .line 14
    .line 15
    if-nez p2, :cond_2

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, Lzx3;->G0()Lps2;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    :cond_2
    invoke-virtual {p2, p1}, Lps2;->d(Las0;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Ljt1;->getLayoutDirection()Lhy1;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p2, p3, p0}, Lps2;->a(ILhy1;)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method public final v0()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final y(Lk82;Lya2;I)I
    .locals 1

    .line 1
    iget-object p2, p0, Lzx3;->L:Lyx3;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p2, Lyx3;->c:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    :goto_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iget-object p2, p2, Lyx3;->d:Lps2;

    .line 14
    .line 15
    if-nez p2, :cond_2

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, Lzx3;->G0()Lps2;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    :cond_2
    invoke-virtual {p2, p1}, Lps2;->d(Las0;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Ljt1;->getLayoutDirection()Lhy1;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p2, p3, p0}, Lps2;->a(ILhy1;)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method

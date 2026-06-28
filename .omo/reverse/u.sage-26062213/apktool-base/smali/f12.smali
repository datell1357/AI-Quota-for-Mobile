.class public final Lf12;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Leb2;


# instance fields
.field public final a:Lg12;

.field public final b:I

.field public final c:Z

.field public final d:F

.field public final e:Leb2;

.field public final f:F

.field public final g:Z

.field public final h:Lqi0;

.field public final i:Las0;

.field public final j:J

.field public final k:Ljava/util/List;

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:Lhr2;

.field public final p:I

.field public final q:I


# direct methods
.method public constructor <init>(Lg12;IZFLeb2;FZLqi0;Las0;JLjava/util/List;IIILhr2;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf12;->a:Lg12;

    .line 5
    .line 6
    iput p2, p0, Lf12;->b:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lf12;->c:Z

    .line 9
    .line 10
    iput p4, p0, Lf12;->d:F

    .line 11
    .line 12
    iput-object p5, p0, Lf12;->e:Leb2;

    .line 13
    .line 14
    iput p6, p0, Lf12;->f:F

    .line 15
    .line 16
    iput-boolean p7, p0, Lf12;->g:Z

    .line 17
    .line 18
    iput-object p8, p0, Lf12;->h:Lqi0;

    .line 19
    .line 20
    iput-object p9, p0, Lf12;->i:Las0;

    .line 21
    .line 22
    iput-wide p10, p0, Lf12;->j:J

    .line 23
    .line 24
    iput-object p12, p0, Lf12;->k:Ljava/util/List;

    .line 25
    .line 26
    iput p13, p0, Lf12;->l:I

    .line 27
    .line 28
    iput p14, p0, Lf12;->m:I

    .line 29
    .line 30
    iput p15, p0, Lf12;->n:I

    .line 31
    .line 32
    move-object/from16 p1, p16

    .line 33
    .line 34
    iput-object p1, p0, Lf12;->o:Lhr2;

    .line 35
    .line 36
    move/from16 p1, p17

    .line 37
    .line 38
    iput p1, p0, Lf12;->p:I

    .line 39
    .line 40
    move/from16 p1, p18

    .line 41
    .line 42
    iput p1, p0, Lf12;->q:I

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget-object p0, p0, Lf12;->e:Leb2;

    .line 2
    .line 3
    invoke-interface {p0}, Leb2;->a()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final b()I
    .locals 0

    .line 1
    iget-object p0, p0, Lf12;->e:Leb2;

    .line 2
    .line 3
    invoke-interface {p0}, Leb2;->b()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final c()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lf12;->e:Leb2;

    .line 2
    .line 3
    invoke-interface {p0}, Leb2;->c()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final d()V
    .locals 0

    .line 1
    iget-object p0, p0, Lf12;->e:Leb2;

    .line 2
    .line 3
    invoke-interface {p0}, Leb2;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e()Ldf1;
    .locals 0

    .line 1
    iget-object p0, p0, Lf12;->e:Leb2;

    .line 2
    .line 3
    invoke-interface {p0}, Leb2;->e()Ldf1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final f()Lpe1;
    .locals 0

    .line 1
    iget-object p0, p0, Lf12;->e:Leb2;

    .line 2
    .line 3
    invoke-interface {p0}, Leb2;->f()Lpe1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final g()Lpe1;
    .locals 0

    .line 1
    iget-object p0, p0, Lf12;->e:Leb2;

    .line 2
    .line 3
    invoke-interface {p0}, Leb2;->g()Lpe1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final h(IZ)Lf12;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v0, Lf12;->g:Z

    .line 6
    .line 7
    if-nez v2, :cond_b

    .line 8
    .line 9
    iget-object v15, v0, Lf12;->k:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_b

    .line 16
    .line 17
    iget-object v2, v0, Lf12;->a:Lg12;

    .line 18
    .line 19
    if-eqz v2, :cond_b

    .line 20
    .line 21
    invoke-virtual {v2}, Lg12;->a()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget v3, v0, Lf12;->b:I

    .line 26
    .line 27
    sub-int v5, v3, v1

    .line 28
    .line 29
    if-ltz v5, :cond_b

    .line 30
    .line 31
    if-ge v5, v2, :cond_b

    .line 32
    .line 33
    invoke-static {v15}, Lo70;->h0(Ljava/util/List;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lg12;

    .line 38
    .line 39
    invoke-static {v15}, Lo70;->o0(Ljava/util/List;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lg12;

    .line 44
    .line 45
    iget-boolean v4, v2, Lg12;->s:Z

    .line 46
    .line 47
    if-nez v4, :cond_b

    .line 48
    .line 49
    iget-boolean v4, v3, Lg12;->s:Z

    .line 50
    .line 51
    if-eqz v4, :cond_0

    .line 52
    .line 53
    goto/16 :goto_8

    .line 54
    .line 55
    :cond_0
    iget v4, v2, Lg12;->l:I

    .line 56
    .line 57
    iget v6, v0, Lf12;->m:I

    .line 58
    .line 59
    iget v7, v0, Lf12;->l:I

    .line 60
    .line 61
    if-gez v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {v2}, Lg12;->a()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    add-int/2addr v2, v4

    .line 68
    sub-int/2addr v2, v7

    .line 69
    iget v4, v3, Lg12;->l:I

    .line 70
    .line 71
    invoke-virtual {v3}, Lg12;->a()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    add-int/2addr v3, v4

    .line 76
    sub-int/2addr v3, v6

    .line 77
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    neg-int v3, v1

    .line 82
    if-le v2, v3, :cond_b

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    sub-int/2addr v7, v4

    .line 86
    iget v2, v3, Lg12;->l:I

    .line 87
    .line 88
    sub-int/2addr v6, v2

    .line 89
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-le v2, v1, :cond_b

    .line 94
    .line 95
    :goto_0
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    const/4 v3, 0x0

    .line 100
    move v4, v3

    .line 101
    :goto_1
    if-ge v4, v2, :cond_8

    .line 102
    .line 103
    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    check-cast v6, Lg12;

    .line 108
    .line 109
    iget-boolean v7, v6, Lg12;->c:Z

    .line 110
    .line 111
    iget-object v8, v6, Lg12;->u:[I

    .line 112
    .line 113
    iget-boolean v9, v6, Lg12;->s:Z

    .line 114
    .line 115
    if-eqz v9, :cond_2

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_2
    iget v9, v6, Lg12;->l:I

    .line 119
    .line 120
    add-int/2addr v9, v1

    .line 121
    iput v9, v6, Lg12;->l:I

    .line 122
    .line 123
    array-length v9, v8

    .line 124
    move v10, v3

    .line 125
    :goto_2
    if-ge v10, v9, :cond_6

    .line 126
    .line 127
    and-int/lit8 v11, v10, 0x1

    .line 128
    .line 129
    if-eqz v7, :cond_3

    .line 130
    .line 131
    if-nez v11, :cond_4

    .line 132
    .line 133
    :cond_3
    if-nez v7, :cond_5

    .line 134
    .line 135
    if-nez v11, :cond_5

    .line 136
    .line 137
    :cond_4
    aget v11, v8, v10

    .line 138
    .line 139
    add-int/2addr v11, v1

    .line 140
    aput v11, v8, v10

    .line 141
    .line 142
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_6
    if-eqz p2, :cond_7

    .line 146
    .line 147
    iget-object v7, v6, Lg12;->b:Ljava/util/List;

    .line 148
    .line 149
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    move v8, v3

    .line 154
    :goto_3
    if-ge v8, v7, :cond_7

    .line 155
    .line 156
    iget-object v9, v6, Lg12;->k:Ldh;

    .line 157
    .line 158
    iget-object v10, v6, Lg12;->i:Ljava/lang/Object;

    .line 159
    .line 160
    iget-object v9, v9, Ldh;->a:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v9, Lkg2;

    .line 163
    .line 164
    invoke-virtual {v9, v10}, Lkg2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    invoke-static {v9}, Ldi0;->D(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    add-int/lit8 v8, v8, 0x1

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_8
    new-instance v2, Lf12;

    .line 178
    .line 179
    iget-boolean v4, v0, Lf12;->c:Z

    .line 180
    .line 181
    if-nez v4, :cond_a

    .line 182
    .line 183
    if-lez v1, :cond_9

    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_9
    :goto_5
    move v6, v3

    .line 187
    goto :goto_7

    .line 188
    :cond_a
    :goto_6
    const/4 v3, 0x1

    .line 189
    goto :goto_5

    .line 190
    :goto_7
    int-to-float v7, v1

    .line 191
    iget v1, v0, Lf12;->p:I

    .line 192
    .line 193
    iget v3, v0, Lf12;->q:I

    .line 194
    .line 195
    iget-object v4, v0, Lf12;->a:Lg12;

    .line 196
    .line 197
    iget-object v8, v0, Lf12;->e:Leb2;

    .line 198
    .line 199
    iget v9, v0, Lf12;->f:F

    .line 200
    .line 201
    iget-boolean v10, v0, Lf12;->g:Z

    .line 202
    .line 203
    iget-object v11, v0, Lf12;->h:Lqi0;

    .line 204
    .line 205
    iget-object v12, v0, Lf12;->i:Las0;

    .line 206
    .line 207
    iget-wide v13, v0, Lf12;->j:J

    .line 208
    .line 209
    move/from16 v20, v1

    .line 210
    .line 211
    iget v1, v0, Lf12;->l:I

    .line 212
    .line 213
    move/from16 v16, v1

    .line 214
    .line 215
    iget v1, v0, Lf12;->m:I

    .line 216
    .line 217
    move/from16 v17, v1

    .line 218
    .line 219
    iget v1, v0, Lf12;->n:I

    .line 220
    .line 221
    iget-object v0, v0, Lf12;->o:Lhr2;

    .line 222
    .line 223
    move-object/from16 v19, v0

    .line 224
    .line 225
    move/from16 v18, v1

    .line 226
    .line 227
    move/from16 v21, v3

    .line 228
    .line 229
    move-object v3, v2

    .line 230
    invoke-direct/range {v3 .. v21}, Lf12;-><init>(Lg12;IZFLeb2;FZLqi0;Las0;JLjava/util/List;IIILhr2;II)V

    .line 231
    .line 232
    .line 233
    return-object v3

    .line 234
    :cond_b
    :goto_8
    const/4 v0, 0x0

    .line 235
    return-object v0
.end method

.method public final i()J
    .locals 6

    .line 1
    iget-object p0, p0, Lf12;->e:Leb2;

    .line 2
    .line 3
    invoke-interface {p0}, Leb2;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-interface {p0}, Leb2;->a()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    int-to-long v0, v0

    .line 12
    const/16 v2, 0x20

    .line 13
    .line 14
    shl-long/2addr v0, v2

    .line 15
    int-to-long v2, p0

    .line 16
    const-wide v4, 0xffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    and-long/2addr v2, v4

    .line 22
    or-long/2addr v0, v2

    .line 23
    return-wide v0
.end method

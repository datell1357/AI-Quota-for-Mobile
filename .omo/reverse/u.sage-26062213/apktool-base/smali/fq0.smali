.class public final Lfq0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lfq0;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Lfq0;->o:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lfq0;->n:I

    .line 2
    .line 3
    iget-object p0, p0, Lfq0;->o:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, [La81;

    .line 9
    .line 10
    array-length p0, p0

    .line 11
    new-array p0, p0, [Lsf0;

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_0
    check-cast p0, Ldg1;

    .line 15
    .line 16
    iget-object p0, p0, Ldg1;->a:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    new-instance v1, Lkg2;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lkg2;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v2, 0x0

    .line 32
    move v3, v2

    .line 33
    :goto_0
    if-ge v3, v0, :cond_6

    .line 34
    .line 35
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lox1;

    .line 40
    .line 41
    iget-object v5, v4, Lox1;->b:Ljava/lang/Object;

    .line 42
    .line 43
    iget v6, v4, Lox1;->a:I

    .line 44
    .line 45
    if-eqz v5, :cond_0

    .line 46
    .line 47
    new-instance v5, Ldv1;

    .line 48
    .line 49
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    iget-object v7, v4, Lox1;->b:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-direct {v5, v6, v7}, Ldv1;-><init>(Ljava/lang/Integer;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    :goto_1
    invoke-virtual {v1, v5}, Lkg2;->f(Ljava/lang/Object;)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-gez v6, :cond_1

    .line 68
    .line 69
    const/4 v7, 0x1

    .line 70
    goto :goto_2

    .line 71
    :cond_1
    move v7, v2

    .line 72
    :goto_2
    if-eqz v7, :cond_2

    .line 73
    .line 74
    const/4 v8, 0x0

    .line 75
    goto :goto_3

    .line 76
    :cond_2
    iget-object v8, v1, Lkg2;->c:[Ljava/lang/Object;

    .line 77
    .line 78
    aget-object v8, v8, v6

    .line 79
    .line 80
    :goto_3
    if-nez v8, :cond_3

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_3
    instance-of v9, v8, Ldg2;

    .line 84
    .line 85
    if-eqz v9, :cond_4

    .line 86
    .line 87
    check-cast v8, Ldg2;

    .line 88
    .line 89
    invoke-virtual {v8, v4}, Ldg2;->a(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    move-object v4, v8

    .line 93
    goto :goto_4

    .line 94
    :cond_4
    sget-object v9, Ltn2;->a:[Ljava/lang/Object;

    .line 95
    .line 96
    new-instance v9, Ldg2;

    .line 97
    .line 98
    const/4 v10, 0x2

    .line 99
    invoke-direct {v9, v10}, Ldg2;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v9, v8}, Ldg2;->a(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9, v4}, Ldg2;->a(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    move-object v4, v9

    .line 109
    :goto_4
    if-eqz v7, :cond_5

    .line 110
    .line 111
    not-int v6, v6

    .line 112
    iget-object v7, v1, Lkg2;->b:[Ljava/lang/Object;

    .line 113
    .line 114
    aput-object v5, v7, v6

    .line 115
    .line 116
    iget-object v5, v1, Lkg2;->c:[Ljava/lang/Object;

    .line 117
    .line 118
    aput-object v4, v5, v6

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_5
    iget-object v5, v1, Lkg2;->c:[Ljava/lang/Object;

    .line 122
    .line 123
    aput-object v4, v5, v6

    .line 124
    .line 125
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_6
    new-instance p0, Lef2;

    .line 129
    .line 130
    invoke-direct {p0, v1}, Lef2;-><init>(Lkg2;)V

    .line 131
    .line 132
    .line 133
    return-object p0

    .line 134
    :pswitch_1
    check-cast p0, Lcn3;

    .line 135
    .line 136
    iget-object p0, p0, Lcn3;->j:Lk04;

    .line 137
    .line 138
    iget-wide v0, p0, Lk04;->a:J

    .line 139
    .line 140
    iget-wide v2, p0, Lk04;->b:J

    .line 141
    .line 142
    sget-object p0, Lny0;->b:Ldl0;

    .line 143
    .line 144
    const/4 v4, 0x0

    .line 145
    invoke-virtual {p0, v4}, Ldl0;->a(F)F

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    sget-object v5, Le80;->x:Lko2;

    .line 150
    .line 151
    invoke-static {v0, v1, v5}, Lt70;->a(JLb80;)J

    .line 152
    .line 153
    .line 154
    move-result-wide v0

    .line 155
    invoke-static {v2, v3, v5}, Lt70;->a(JLb80;)J

    .line 156
    .line 157
    .line 158
    move-result-wide v6

    .line 159
    invoke-static {v0, v1}, Lt70;->d(J)F

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    invoke-static {v0, v1}, Lt70;->h(J)F

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    invoke-static {v0, v1}, Lt70;->g(J)F

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    invoke-static {v0, v1}, Lt70;->e(J)F

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    invoke-static {v6, v7}, Lt70;->d(J)F

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    invoke-static {v6, v7}, Lt70;->h(J)F

    .line 180
    .line 181
    .line 182
    move-result v11

    .line 183
    invoke-static {v6, v7}, Lt70;->g(J)F

    .line 184
    .line 185
    .line 186
    move-result v12

    .line 187
    invoke-static {v6, v7}, Lt70;->e(J)F

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    cmpg-float v7, p0, v4

    .line 192
    .line 193
    if-gez v7, :cond_7

    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_7
    move v4, p0

    .line 197
    :goto_6
    const/high16 p0, 0x3f800000    # 1.0f

    .line 198
    .line 199
    cmpl-float v7, v4, p0

    .line 200
    .line 201
    if-lez v7, :cond_8

    .line 202
    .line 203
    move v4, p0

    .line 204
    :cond_8
    sub-float/2addr p0, v4

    .line 205
    mul-float/2addr v9, p0

    .line 206
    mul-float/2addr v11, v4

    .line 207
    add-float/2addr v11, v9

    .line 208
    mul-float/2addr v10, p0

    .line 209
    mul-float/2addr v12, v4

    .line 210
    add-float/2addr v12, v10

    .line 211
    mul-float/2addr v0, p0

    .line 212
    mul-float/2addr v6, v4

    .line 213
    add-float/2addr v6, v0

    .line 214
    mul-float/2addr p0, v8

    .line 215
    mul-float/2addr v4, v1

    .line 216
    add-float/2addr v4, p0

    .line 217
    invoke-static {v11, v12, v6, v4, v5}, Lc75;->i(FFFFLb80;)J

    .line 218
    .line 219
    .line 220
    move-result-wide v0

    .line 221
    invoke-static {v2, v3}, Lt70;->f(J)Lb80;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-static {v0, v1, p0}, Lt70;->a(JLb80;)J

    .line 226
    .line 227
    .line 228
    move-result-wide v0

    .line 229
    new-instance p0, Lt70;

    .line 230
    .line 231
    invoke-direct {p0, v0, v1}, Lt70;-><init>(J)V

    .line 232
    .line 233
    .line 234
    return-object p0

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

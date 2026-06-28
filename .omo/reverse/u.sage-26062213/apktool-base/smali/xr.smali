.class public abstract Lxr;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lqr;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ls61;

.field public final f:Lvq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lqr;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lxr;->a:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lxr;->b:Lqr;

    .line 10
    .line 11
    iput-object p3, p0, Lxr;->c:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p4, p0, Lxr;->d:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {}, Le61;->b()Le61;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Le61;->a()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p1, Le61;->d:Lga0;

    .line 23
    .line 24
    const-class p3, Ls53;

    .line 25
    .line 26
    invoke-interface {p1, p3}, Lw90;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ls53;

    .line 31
    .line 32
    invoke-virtual {p1}, Ls53;->a()Ls61;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lxr;->e:Ls61;

    .line 40
    .line 41
    invoke-virtual {p2}, Lqr;->a()Llm0;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p1}, Llm0;->b()La81;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance p2, Lyq;

    .line 50
    .line 51
    const/4 p3, 0x1

    .line 52
    invoke-direct {p2, p1, p3}, Lyq;-><init>(La81;I)V

    .line 53
    .line 54
    .line 55
    invoke-static {p2}, Lqj0;->D(La81;)La81;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance p2, Lsr;

    .line 60
    .line 61
    const/4 p4, 0x0

    .line 62
    const/4 p5, 0x0

    .line 63
    invoke-direct {p2, p0, p4, p5}, Lsr;-><init>(Lxr;Ldh0;I)V

    .line 64
    .line 65
    .line 66
    new-instance p4, Lk81;

    .line 67
    .line 68
    invoke-direct {p4, p1, p2}, Lk81;-><init>(La81;Ldf1;)V

    .line 69
    .line 70
    .line 71
    new-instance p1, Lvq;

    .line 72
    .line 73
    invoke-direct {p1, p3, p4, p0}, Lvq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lxr;->f:Lvq;

    .line 77
    .line 78
    return-void
.end method

.method public static final a(Lxr;Ljava/lang/String;Lfh0;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lxr;->b:Lqr;

    .line 2
    .line 3
    iget-object v1, p0, Lxr;->c:Ljava/lang/String;

    .line 4
    .line 5
    instance-of v2, p2, Ltr;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, p2

    .line 10
    check-cast v2, Ltr;

    .line 11
    .line 12
    iget v3, v2, Ltr;->u:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Ltr;->u:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Ltr;

    .line 25
    .line 26
    invoke-direct {v2, p0, p2}, Ltr;-><init>(Lxr;Lfh0;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object p2, v2, Ltr;->s:Ljava/lang/Object;

    .line 30
    .line 31
    iget v3, v2, Ltr;->u:I

    .line 32
    .line 33
    sget-object v4, Lt64;->a:Lt64;

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x1

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    sget-object v9, Lri0;->n:Lri0;

    .line 40
    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    if-eq v3, v6, :cond_2

    .line 44
    .line 45
    if-ne v3, v5, :cond_1

    .line 46
    .line 47
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-object v4

    .line 51
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v7

    .line 57
    :cond_2
    iget-object p0, v2, Ltr;->r:Ljava/lang/String;

    .line 58
    .line 59
    iget-object p1, v2, Ltr;->q:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_4

    .line 65
    .line 66
    :cond_3
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    sget-object p2, Lez3;->a:Lra3;

    .line 70
    .line 71
    new-array v3, v8, [Ljava/lang/Object;

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {v3}, Lra3;->c([Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lxr;->e:Ls61;

    .line 80
    .line 81
    iget-object p0, p0, Ls61;->g:Lfd0;

    .line 82
    .line 83
    iget-object p2, p0, Lfd0;->c:Lyc0;

    .line 84
    .line 85
    invoke-static {p2, v1}, Lfd0;->b(Lyc0;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    if-eqz v3, :cond_4

    .line 90
    .line 91
    invoke-virtual {p2}, Lyc0;->c()Lad0;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p0, v1, p2}, Lfd0;->a(Ljava/lang/String;Lad0;)V

    .line 96
    .line 97
    .line 98
    move-object p0, v3

    .line 99
    goto :goto_1

    .line 100
    :cond_4
    iget-object p0, p0, Lfd0;->d:Lyc0;

    .line 101
    .line 102
    invoke-static {p0, v1}, Lfd0;->b(Lyc0;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    if-eqz p0, :cond_5

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    const-string p0, "String"

    .line 110
    .line 111
    invoke-static {v1, p0}, Lfd0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string p0, ""

    .line 115
    .line 116
    :goto_1
    invoke-static {p0}, Lzs3;->I0(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-eqz p2, :cond_6

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v3, "present (length="

    .line 130
    .line 131
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string p2, ")"

    .line 138
    .line 139
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    :goto_2
    new-array p2, v8, [Ljava/lang/Object;

    .line 143
    .line 144
    invoke-static {p2}, Lra3;->c([Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-static {p0}, Lzs3;->I0(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    if-eqz p2, :cond_7

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_7
    move-object p1, p0

    .line 155
    :goto_3
    if-eqz p1, :cond_b

    .line 156
    .line 157
    invoke-virtual {v0}, Lqr;->a()Llm0;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-interface {p2}, Llm0;->b()La81;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    new-instance v1, Lyq;

    .line 166
    .line 167
    invoke-direct {v1, p2, v6}, Lyq;-><init>(La81;I)V

    .line 168
    .line 169
    .line 170
    invoke-static {v1}, Lqj0;->D(La81;)La81;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    iput-object p0, v2, Ltr;->q:Ljava/lang/String;

    .line 175
    .line 176
    iput-object p1, v2, Ltr;->r:Ljava/lang/String;

    .line 177
    .line 178
    iput v6, v2, Ltr;->u:I

    .line 179
    .line 180
    invoke-static {p2, v2}, Lqj0;->J(La81;Lfh0;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    if-ne p2, v9, :cond_8

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_8
    move-object v10, p1

    .line 188
    move-object p1, p0

    .line 189
    move-object p0, v10

    .line 190
    :goto_4
    check-cast p2, Ljava/lang/String;

    .line 191
    .line 192
    sget-object v1, Lez3;->a:Lra3;

    .line 193
    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    new-array v3, v8, [Ljava/lang/Object;

    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    invoke-static {v3}, Lra3;->c([Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result p2

    .line 209
    if-nez p2, :cond_a

    .line 210
    .line 211
    invoke-static {p1}, Lzs3;->I0(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    new-array p1, v8, [Ljava/lang/Object;

    .line 215
    .line 216
    invoke-static {p1}, Lra3;->h([Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    iput-object v7, v2, Ltr;->q:Ljava/lang/String;

    .line 220
    .line 221
    iput-object v7, v2, Ltr;->r:Ljava/lang/String;

    .line 222
    .line 223
    iput v5, v2, Ltr;->u:I

    .line 224
    .line 225
    invoke-virtual {v0, p0, v2}, Lqr;->b(Ljava/lang/String;Lfh0;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    if-ne p0, v9, :cond_9

    .line 230
    .line 231
    :goto_5
    return-object v9

    .line 232
    :cond_9
    return-object v4

    .line 233
    :cond_a
    new-array p0, v8, [Ljava/lang/Object;

    .line 234
    .line 235
    invoke-static {p0}, Lra3;->c([Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    return-object v4

    .line 239
    :cond_b
    new-array p0, v8, [Ljava/lang/Object;

    .line 240
    .line 241
    invoke-static {p0}, Lra3;->m([Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    return-object v4
.end method

.method public static final b(Lxr;Lfh0;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Lxr;->e:Ls61;

    .line 2
    .line 3
    iget-object v1, p0, Lxr;->b:Lqr;

    .line 4
    .line 5
    instance-of v2, p1, Lwr;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, p1

    .line 10
    check-cast v2, Lwr;

    .line 11
    .line 12
    iget v3, v2, Lwr;->t:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lwr;->t:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lwr;

    .line 25
    .line 26
    invoke-direct {v2, p0, p1}, Lwr;-><init>(Lxr;Lfh0;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object p1, v2, Lwr;->r:Ljava/lang/Object;

    .line 30
    .line 31
    iget v3, v2, Lwr;->t:I

    .line 32
    .line 33
    const/4 v4, 0x2

    .line 34
    const/4 v5, 0x1

    .line 35
    const/4 v6, 0x0

    .line 36
    sget-object v7, Lri0;->n:Lri0;

    .line 37
    .line 38
    if-eqz v3, :cond_3

    .line 39
    .line 40
    if-eq v3, v5, :cond_2

    .line 41
    .line 42
    if-ne v3, v4, :cond_1

    .line 43
    .line 44
    iget-object v1, v2, Lwr;->q:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    return-object p0

    .line 58
    :cond_2
    iget-object v3, v2, Lwr;->q:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lez3;->a:Lra3;

    .line 68
    .line 69
    new-array v3, v6, [Ljava/lang/Object;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-static {v3}, Lra3;->h([Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lxr;->c()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v1}, Lqr;->a()Llm0;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-interface {v3}, Llm0;->b()La81;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    new-instance v8, Lyq;

    .line 90
    .line 91
    invoke-direct {v8, v3, v5}, Lyq;-><init>(La81;I)V

    .line 92
    .line 93
    .line 94
    invoke-static {v8}, Lqj0;->D(La81;)La81;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    iput-object p1, v2, Lwr;->q:Ljava/lang/String;

    .line 99
    .line 100
    iput v5, v2, Lwr;->t:I

    .line 101
    .line 102
    invoke-static {v3, v2}, Lqj0;->J(La81;Lfh0;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    if-ne v3, v7, :cond_4

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    move-object v13, v3

    .line 110
    move-object v3, p1

    .line 111
    move-object p1, v13

    .line 112
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 113
    .line 114
    sget-object v8, Lez3;->a:Lra3;

    .line 115
    .line 116
    const-string v9, ")"

    .line 117
    .line 118
    const-string v10, "present (length="

    .line 119
    .line 120
    if-eqz v3, :cond_5

    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 123
    .line 124
    .line 125
    move-result v11

    .line 126
    new-instance v12, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    :cond_5
    if-eqz p1, :cond_6

    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 140
    .line 141
    .line 142
    move-result v11

    .line 143
    new-instance v12, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    :cond_6
    new-array v9, v6, [Ljava/lang/Object;

    .line 155
    .line 156
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    invoke-static {v9}, Lra3;->c([Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    new-array v8, v6, [Ljava/lang/Object;

    .line 163
    .line 164
    invoke-static {v8}, Lra3;->h([Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    if-eqz p1, :cond_7

    .line 168
    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-nez p1, :cond_a

    .line 174
    .line 175
    :cond_7
    if-eqz v3, :cond_a

    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-nez p1, :cond_8

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_8
    new-array p1, v6, [Ljava/lang/Object;

    .line 185
    .line 186
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    iput-object v3, v2, Lwr;->q:Ljava/lang/String;

    .line 190
    .line 191
    iput v4, v2, Lwr;->t:I

    .line 192
    .line 193
    invoke-virtual {v1, v3, v2}, Lqr;->b(Ljava/lang/String;Lfh0;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    if-ne p1, v7, :cond_9

    .line 198
    .line 199
    :goto_2
    return-object v7

    .line 200
    :cond_9
    move-object v1, v3

    .line 201
    :goto_3
    move-object v3, v1

    .line 202
    :cond_a
    :goto_4
    :try_start_0
    sget-object p1, Lez3;->a:Lra3;

    .line 203
    .line 204
    new-array v1, v6, [Ljava/lang/Object;

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    new-instance v1, Lo00;

    .line 213
    .line 214
    invoke-direct {v1, v5}, Lo00;-><init>(I)V

    .line 215
    .line 216
    .line 217
    const-wide/16 v7, 0xe10

    .line 218
    .line 219
    iput-wide v7, v1, Lo00;->b:J

    .line 220
    .line 221
    new-instance v2, Lo00;

    .line 222
    .line 223
    invoke-direct {v2, v1}, Lo00;-><init>(Lo00;)V

    .line 224
    .line 225
    .line 226
    iget-object v1, v0, Ls61;->b:Ljava/util/concurrent/Executor;

    .line 227
    .line 228
    new-instance v4, Lwc0;

    .line 229
    .line 230
    invoke-direct {v4, v5, v0, v2}, Lwc0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v1, v4}, Lmt1;->m(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lef5;

    .line 234
    .line 235
    .line 236
    new-array v1, v6, [Ljava/lang/Object;

    .line 237
    .line 238
    invoke-static {v1}, Lra3;->h([Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Ls61;->c()Lef5;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    new-instance v2, Lrr;

    .line 246
    .line 247
    invoke-direct {v2, v6, p0, v3}, Lrr;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v2}, Lef5;->m(Lxo2;)Lef5;

    .line 251
    .line 252
    .line 253
    new-array v1, v6, [Ljava/lang/Object;

    .line 254
    .line 255
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    new-array v1, v6, [Ljava/lang/Object;

    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    new-instance p1, Lur;

    .line 267
    .line 268
    invoke-direct {p1, v6, p0}, Lur;-><init>(ILjava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, p1}, Ls61;->b(Lur;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .line 273
    .line 274
    goto :goto_5

    .line 275
    :catch_0
    sget-object p0, Lez3;->a:Lra3;

    .line 276
    .line 277
    new-array p1, v6, [Ljava/lang/Object;

    .line 278
    .line 279
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    invoke-static {p1}, Lra3;->g([Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    :goto_5
    sget-object p0, Lez3;->a:Lra3;

    .line 286
    .line 287
    new-array p1, v6, [Ljava/lang/Object;

    .line 288
    .line 289
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    invoke-static {p1}, Lra3;->h([Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    sget-object p0, Lt64;->a:Lt64;

    .line 296
    .line 297
    return-object p0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lez3;->a:Lra3;

    .line 2
    .line 3
    iget-object v1, p0, Lxr;->d:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {v3}, Lra3;->c([Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :try_start_0
    iget-object p0, p0, Lxr;->a:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lqn0;->D(Ljava/io/InputStream;)[B

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    array-length v3, v1

    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    new-array v1, v2, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v1}, Lra3;->m([Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    move-object v1, v0

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    const/4 v3, 0x2

    .line 45
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    new-array v3, v2, [Ljava/lang/Object;

    .line 53
    .line 54
    invoke-static {v3}, Lra3;->c([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    :goto_0
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 58
    .line 59
    .line 60
    return-object v1

    .line 61
    :goto_1
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    :catchall_1
    move-exception v3

    .line 63
    :try_start_4
    invoke-static {p0, v1}, Lfl4;->j(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 67
    :catch_0
    sget-object p0, Lez3;->a:Lra3;

    .line 68
    .line 69
    new-array v1, v2, [Ljava/lang/Object;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Lra3;->g([Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-object v0
.end method

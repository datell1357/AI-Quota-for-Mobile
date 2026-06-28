.class public final Lkotlinx/serialization/json/internal/a;
.super Ln44;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lvn0;
.implements Lxb0;


# instance fields
.field public final g:Lfv1;

.field public final h:Lrh4;

.field public final i:Lvi2;

.field public final j:Lb21;

.field public k:I

.field public final l:Lpv1;

.field public final m:Law1;


# direct methods
.method public constructor <init>(Lfv1;Lrh4;Lvi2;Lgi3;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lkotlinx/serialization/json/internal/a;->g:Lfv1;

    .line 8
    .line 9
    iput-object p2, p0, Lkotlinx/serialization/json/internal/a;->h:Lrh4;

    .line 10
    .line 11
    iput-object p3, p0, Lkotlinx/serialization/json/internal/a;->i:Lvi2;

    .line 12
    .line 13
    iget-object p2, p1, Lfv1;->b:Lb21;

    .line 14
    .line 15
    iput-object p2, p0, Lkotlinx/serialization/json/internal/a;->j:Lb21;

    .line 16
    .line 17
    const/4 p2, -0x1

    .line 18
    iput p2, p0, Lkotlinx/serialization/json/internal/a;->k:I

    .line 19
    .line 20
    iget-object p1, p1, Lfv1;->a:Lpv1;

    .line 21
    .line 22
    iput-object p1, p0, Lkotlinx/serialization/json/internal/a;->l:Lpv1;

    .line 23
    .line 24
    iget-boolean p1, p1, Lpv1;->c:Z

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Law1;

    .line 31
    .line 32
    invoke-direct {p1, p4}, Law1;-><init>(Lgi3;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iput-object p1, p0, Lkotlinx/serialization/json/internal/a;->m:Law1;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final A(Lgi3;)Lxb0;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lkotlinx/serialization/json/internal/a;->g:Lfv1;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lsh4;->b(Lfv1;Lgi3;)Lrh4;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lkotlinx/serialization/json/internal/a;->i:Lvi2;

    .line 11
    .line 12
    iget-object v3, v2, Lvi2;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v3, Lhb;

    .line 15
    .line 16
    iget v4, v3, Lhb;->b:I

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    add-int/2addr v4, v5

    .line 20
    iput v4, v3, Lhb;->b:I

    .line 21
    .line 22
    iget-object v6, v3, Lhb;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v6, [Ljava/lang/Object;

    .line 25
    .line 26
    array-length v7, v6

    .line 27
    if-ne v4, v7, :cond_0

    .line 28
    .line 29
    mul-int/lit8 v7, v4, 0x2

    .line 30
    .line 31
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    iput-object v6, v3, Lhb;->c:Ljava/lang/Object;

    .line 36
    .line 37
    iget-object v6, v3, Lhb;->d:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v6, [I

    .line 40
    .line 41
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    iput-object v6, v3, Lhb;->d:Ljava/lang/Object;

    .line 46
    .line 47
    :cond_0
    iget-object v3, v3, Lhb;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v3, [Ljava/lang/Object;

    .line 50
    .line 51
    aput-object p1, v3, v4

    .line 52
    .line 53
    iget-char v3, v1, Lrh4;->n:C

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Lvi2;->g(C)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lvi2;->t()B

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/4 v4, 0x4

    .line 63
    if-eq v3, v4, :cond_3

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eq v3, v5, :cond_2

    .line 70
    .line 71
    const/4 v4, 0x2

    .line 72
    if-eq v3, v4, :cond_2

    .line 73
    .line 74
    const/4 v4, 0x3

    .line 75
    if-eq v3, v4, :cond_2

    .line 76
    .line 77
    iget-object v3, p0, Lkotlinx/serialization/json/internal/a;->h:Lrh4;

    .line 78
    .line 79
    if-ne v3, v1, :cond_1

    .line 80
    .line 81
    iget-object v3, v0, Lfv1;->a:Lpv1;

    .line 82
    .line 83
    iget-boolean v3, v3, Lpv1;->c:Z

    .line 84
    .line 85
    if-eqz v3, :cond_1

    .line 86
    .line 87
    return-object p0

    .line 88
    :cond_1
    new-instance p0, Lkotlinx/serialization/json/internal/a;

    .line 89
    .line 90
    invoke-direct {p0, v0, v1, v2, p1}, Lkotlinx/serialization/json/internal/a;-><init>(Lfv1;Lrh4;Lvi2;Lgi3;)V

    .line 91
    .line 92
    .line 93
    return-object p0

    .line 94
    :cond_2
    new-instance p0, Lkotlinx/serialization/json/internal/a;

    .line 95
    .line 96
    invoke-direct {p0, v0, v1, v2, p1}, Lkotlinx/serialization/json/internal/a;-><init>(Lfv1;Lrh4;Lvi2;Lgi3;)V

    .line 97
    .line 98
    .line 99
    return-object p0

    .line 100
    :cond_3
    const/4 p0, 0x0

    .line 101
    const/4 p1, 0x6

    .line 102
    const-string v0, "Unexpected leading comma"

    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-static {v2, v0, p0, v1, p1}, Lvi2;->l(Lvi2;Ljava/lang/String;ILjava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    throw v1
.end method

.method public final B()D
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/a;->i:Lvi2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lvi2;->j()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 9
    .line 10
    .line 11
    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    iget-object p0, p0, Lkotlinx/serialization/json/internal/a;->g:Lfv1;

    .line 13
    .line 14
    iget-object p0, p0, Lfv1;->a:Lpv1;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    return-wide v3

    .line 32
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v0, p0}, Lbi4;->H(Lvi2;Ljava/lang/Number;)V

    .line 37
    .line 38
    .line 39
    throw v2

    .line 40
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "Failed to parse type \'double\' for input \'"

    .line 43
    .line 44
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/16 v1, 0x27

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const/4 v1, 0x0

    .line 60
    const/4 v3, 0x6

    .line 61
    invoke-static {v0, p0, v1, v2, v3}, Lvi2;->l(Lvi2;Ljava/lang/String;ILjava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    throw v2
.end method

.method public final P0()Lxv1;
    .locals 2

    .line 1
    new-instance v0, Ld90;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/serialization/json/internal/a;->g:Lfv1;

    .line 4
    .line 5
    iget-object v1, v1, Lfv1;->a:Lpv1;

    .line 6
    .line 7
    iget-object p0, p0, Lkotlinx/serialization/json/internal/a;->i:Lvi2;

    .line 8
    .line 9
    invoke-direct {v0, v1, p0}, Ld90;-><init>(Lpv1;Lvi2;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ld90;->j()Lxv1;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final a(Llx1;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/a;->g:Lfv1;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/serialization/json/internal/a;->i:Lvi2;

    .line 4
    .line 5
    iget-object v2, v1, Lvi2;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lhb;

    .line 8
    .line 9
    const-string v3, "Expected "

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    :try_start_0
    instance-of v5, p1, Ljw2;

    .line 16
    .line 17
    if-eqz v5, :cond_6

    .line 18
    .line 19
    iget-object v5, v0, Lfv1;->a:Lpv1;

    .line 20
    .line 21
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-object v5, p1

    .line 25
    check-cast v5, Ljw2;

    .line 26
    .line 27
    invoke-interface {v5}, Llx1;->d()Lgi3;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-static {v0, v5}, Lqn0;->l(Lfv1;Lgi3;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    iget-object v6, p0, Lkotlinx/serialization/json/internal/a;->l:Lpv1;

    .line 36
    .line 37
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v5}, Lvi2;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const/4 v6, -0x1

    .line 45
    const/4 v7, 0x0

    .line 46
    if-nez v5, :cond_3

    .line 47
    .line 48
    iget-object v1, v0, Lfv1;->a:Lpv1;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-object v1, p1

    .line 54
    check-cast v1, Ljw2;

    .line 55
    .line 56
    invoke-interface {v1}, Llx1;->d()Lgi3;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Lqn0;->l(Lfv1;Lgi3;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->P0()Lxv1;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    move-object v5, p1

    .line 69
    check-cast v5, Ljw2;

    .line 70
    .line 71
    invoke-interface {v5}, Llx1;->d()Lgi3;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-interface {v5}, Lgi3;->b()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    instance-of v8, v1, Low1;

    .line 80
    .line 81
    if-eqz v8, :cond_2

    .line 82
    .line 83
    check-cast v1, Low1;

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Low1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lxv1;

    .line 90
    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    invoke-static {v0}, Lzv1;->a(Lxv1;)Ltw1;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    instance-of v3, v0, Lkw1;

    .line 98
    .line 99
    if-eqz v3, :cond_0

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v0}, Ltw1;->a()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0
    :try_end_0
    .catch Lhd2; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_1

    .line 107
    :catch_0
    move-exception p0

    .line 108
    goto/16 :goto_3

    .line 109
    .line 110
    :cond_1
    :goto_0
    move-object v0, v7

    .line 111
    :goto_1
    :try_start_1
    check-cast p1, Ljw2;

    .line 112
    .line 113
    invoke-static {p1, p0, v0}, Lmt1;->q(Ljw2;Lxb0;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v7
    :try_end_1
    .catch Lmi3; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    :catch_1
    move-exception p0

    .line 118
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Low1;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {v6, p0, p1}, Lbi4;->f(ILjava/lang/String;Ljava/lang/CharSequence;)Lvv1;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    throw p0

    .line 134
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-class p1, Low1;

    .line 140
    .line 141
    invoke-static {p1}, Ly33;->a(Ljava/lang/Class;)Li50;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1}, Li50;->c()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string p1, ", but had "

    .line 153
    .line 154
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-static {p1}, Ly33;->a(Ljava/lang/Class;)Li50;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1}, Li50;->c()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string p1, " as the serialized body of "

    .line 173
    .line 174
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string p1, " at element: "

    .line 181
    .line 182
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Lhb;->e()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {v6, p0, p1}, Lbi4;->f(ILjava/lang/String;Ljava/lang/CharSequence;)Lvv1;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    throw p0
    :try_end_2
    .catch Lhd2; {:try_start_2 .. :try_end_2} :catch_0

    .line 205
    :cond_3
    :try_start_3
    check-cast p1, Ljw2;

    .line 206
    .line 207
    invoke-static {p1, p0, v5}, Lmt1;->q(Ljw2;Lxb0;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw v7
    :try_end_3
    .catch Lmi3; {:try_start_3 .. :try_end_3} :catch_2

    .line 211
    :catch_2
    move-exception p0

    .line 212
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    const/16 v0, 0xa

    .line 220
    .line 221
    invoke-static {p1, v0}, Lzs3;->U0(Ljava/lang/String;C)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    const-string v3, "."

    .line 226
    .line 227
    invoke-static {p1, v3}, Lzs3;->D0(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    if-eqz v5, :cond_4

    .line 232
    .line 233
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    sub-int/2addr v5, v3

    .line 242
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    const-string v3, ""

    .line 254
    .line 255
    const/4 v5, 0x6

    .line 256
    invoke-static {p0, v0, v4, v5}, Lzs3;->F0(Ljava/lang/CharSequence;CII)I

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-ne v0, v6, :cond_5

    .line 261
    .line 262
    goto :goto_2

    .line 263
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 264
    .line 265
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    :goto_2
    const/4 p0, 0x2

    .line 274
    invoke-static {v1, p1, v4, v3, p0}, Lvi2;->l(Lvi2;Ljava/lang/String;ILjava/lang/String;I)V

    .line 275
    .line 276
    .line 277
    throw v7

    .line 278
    :cond_6
    invoke-interface {p1, p0}, Llx1;->b(Lvn0;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object p0
    :try_end_4
    .catch Lhd2; {:try_start_4 .. :try_end_4} :catch_0

    .line 282
    return-object p0

    .line 283
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    const-string v0, "at path"

    .line 291
    .line 292
    invoke-static {p1, v0, v4}, Lzs3;->B0(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    if-eqz p1, :cond_7

    .line 297
    .line 298
    throw p0

    .line 299
    :cond_7
    new-instance p1, Lhd2;

    .line 300
    .line 301
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-virtual {v2}, Lhb;->e()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string v0, " at path: "

    .line 318
    .line 319
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    iget-object v1, p0, Lhd2;->n:Ljava/util/List;

    .line 330
    .line 331
    invoke-direct {p1, v1, v0, p0}, Lhd2;-><init>(Ljava/util/List;Ljava/lang/String;Lhd2;)V

    .line 332
    .line 333
    .line 334
    throw p1
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/a;->i:Lvi2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lvi2;->h()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final d()Z
    .locals 11

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/a;->i:Lvi2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lvi2;->w()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lvi2;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v3, "EOF"

    .line 14
    .line 15
    const/4 v4, 0x6

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eq v0, v2, :cond_7

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/16 v7, 0x22

    .line 25
    .line 26
    const/4 v8, 0x1

    .line 27
    if-ne v2, v7, :cond_0

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    move v2, v8

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v2, v6

    .line 34
    :goto_0
    invoke-virtual {p0, v0}, Lvi2;->v(I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    if-ge v0, v9, :cond_6

    .line 43
    .line 44
    const/4 v9, -0x1

    .line 45
    if-eq v0, v9, :cond_6

    .line 46
    .line 47
    add-int/lit8 v9, v0, 0x1

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    or-int/lit8 v0, v0, 0x20

    .line 54
    .line 55
    const/16 v10, 0x66

    .line 56
    .line 57
    if-eq v0, v10, :cond_2

    .line 58
    .line 59
    const/16 v10, 0x74

    .line 60
    .line 61
    if-ne v0, v10, :cond_1

    .line 62
    .line 63
    const-string v0, "rue"

    .line 64
    .line 65
    invoke-virtual {p0, v9, v0}, Lvi2;->c(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    move v0, v8

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v1, "Expected valid boolean literal prefix, but had \'"

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lvi2;->j()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const/16 v1, 0x27

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {p0, v0, v6, v5, v4}, Lvi2;->l(Lvi2;Ljava/lang/String;ILjava/lang/String;I)V

    .line 94
    .line 95
    .line 96
    throw v5

    .line 97
    :cond_2
    const-string v0, "alse"

    .line 98
    .line 99
    invoke-virtual {p0, v9, v0}, Lvi2;->c(ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    move v0, v6

    .line 103
    :goto_1
    if-eqz v2, :cond_5

    .line 104
    .line 105
    iget v2, p0, Lvi2;->b:I

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-eq v2, v9, :cond_4

    .line 112
    .line 113
    iget v2, p0, Lvi2;->b:I

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-ne v1, v7, :cond_3

    .line 120
    .line 121
    iget v1, p0, Lvi2;->b:I

    .line 122
    .line 123
    add-int/2addr v1, v8

    .line 124
    iput v1, p0, Lvi2;->b:I

    .line 125
    .line 126
    return v0

    .line 127
    :cond_3
    const-string v0, "Expected closing quotation mark"

    .line 128
    .line 129
    invoke-static {p0, v0, v6, v5, v4}, Lvi2;->l(Lvi2;Ljava/lang/String;ILjava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    throw v5

    .line 133
    :cond_4
    invoke-static {p0, v3, v6, v5, v4}, Lvi2;->l(Lvi2;Ljava/lang/String;ILjava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    throw v5

    .line 137
    :cond_5
    return v0

    .line 138
    :cond_6
    invoke-static {p0, v3, v6, v5, v4}, Lvi2;->l(Lvi2;Ljava/lang/String;ILjava/lang/String;I)V

    .line 139
    .line 140
    .line 141
    throw v5

    .line 142
    :cond_7
    invoke-static {p0, v3, v6, v5, v4}, Lvi2;->l(Lvi2;Ljava/lang/String;ILjava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    throw v5
.end method

.method public final e()Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lkotlinx/serialization/json/internal/a;->m:Law1;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-boolean v1, v1, Law1;->b:Z

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    :goto_0
    if-nez v1, :cond_6

    .line 11
    .line 12
    iget-object p0, p0, Lkotlinx/serialization/json/internal/a;->i:Lvi2;

    .line 13
    .line 14
    invoke-virtual {p0}, Lvi2;->w()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0, v1}, Lvi2;->v(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Lvi2;->d:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    sub-int/2addr v3, v1

    .line 29
    const/4 v4, 0x1

    .line 30
    const/4 v5, 0x4

    .line 31
    if-lt v3, v5, :cond_5

    .line 32
    .line 33
    const/4 v6, -0x1

    .line 34
    if-ne v1, v6, :cond_1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    move v6, v0

    .line 38
    :goto_1
    if-ge v6, v5, :cond_3

    .line 39
    .line 40
    const-string v7, "null"

    .line 41
    .line 42
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    add-int v8, v1, v6

    .line 47
    .line 48
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-eq v7, v8, :cond_2

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    if-le v3, v5, :cond_4

    .line 59
    .line 60
    add-int/lit8 v3, v1, 0x4

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-static {v2}, Lfl4;->i(C)B

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    add-int/2addr v1, v5

    .line 74
    iput v1, p0, Lvi2;->b:I

    .line 75
    .line 76
    move p0, v4

    .line 77
    goto :goto_3

    .line 78
    :cond_5
    :goto_2
    move p0, v0

    .line 79
    :goto_3
    if-nez p0, :cond_6

    .line 80
    .line 81
    return v4

    .line 82
    :cond_6
    return v0
.end method

.method public final f()C
    .locals 4

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/a;->i:Lvi2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lvi2;->j()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "Expected single char, but got \'"

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v0, 0x27

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x6

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-static {p0, v0, v3, v2, v1}, Lvi2;->l(Lvi2;Ljava/lang/String;ILjava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    throw v2
.end method

.method public final h(Lgi3;)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lkotlinx/serialization/json/internal/a;->g:Lfv1;

    .line 6
    .line 7
    iget-object v3, v2, Lfv1;->a:Lpv1;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v4, v0, Lkotlinx/serialization/json/internal/a;->h:Lrh4;

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    const-string v6, "object"

    .line 19
    .line 20
    const/4 v7, 0x6

    .line 21
    const/4 v8, 0x0

    .line 22
    const/16 v9, 0x3a

    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    const/4 v11, 0x2

    .line 26
    const/4 v12, 0x1

    .line 27
    const/4 v13, -0x1

    .line 28
    iget-object v14, v0, Lkotlinx/serialization/json/internal/a;->i:Lvi2;

    .line 29
    .line 30
    if-eqz v5, :cond_e

    .line 31
    .line 32
    if-eq v5, v11, :cond_4

    .line 33
    .line 34
    invoke-virtual {v14}, Lvi2;->x()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v14}, Lvi2;->b()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    iget v2, v0, Lkotlinx/serialization/json/internal/a;->k:I

    .line 45
    .line 46
    if-eq v2, v13, :cond_1

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-string v0, "Expected end of the array or comma"

    .line 52
    .line 53
    invoke-static {v14, v0, v10, v8, v7}, Lvi2;->l(Lvi2;Ljava/lang/String;ILjava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    throw v8

    .line 57
    :cond_1
    :goto_0
    add-int/lit8 v13, v2, 0x1

    .line 58
    .line 59
    iput v13, v0, Lkotlinx/serialization/json/internal/a;->k:I

    .line 60
    .line 61
    goto/16 :goto_a

    .line 62
    .line 63
    :cond_2
    if-nez v1, :cond_3

    .line 64
    .line 65
    goto/16 :goto_a

    .line 66
    .line 67
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const-string v0, "array"

    .line 71
    .line 72
    invoke-static {v14, v0}, Lbi4;->z(Lvi2;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v8

    .line 76
    :cond_4
    iget v1, v0, Lkotlinx/serialization/json/internal/a;->k:I

    .line 77
    .line 78
    rem-int/lit8 v2, v1, 0x2

    .line 79
    .line 80
    if-eqz v2, :cond_5

    .line 81
    .line 82
    move v2, v12

    .line 83
    goto :goto_1

    .line 84
    :cond_5
    move v2, v10

    .line 85
    :goto_1
    if-eqz v2, :cond_6

    .line 86
    .line 87
    if-eq v1, v13, :cond_7

    .line 88
    .line 89
    invoke-virtual {v14}, Lvi2;->x()Z

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    goto :goto_2

    .line 94
    :cond_6
    invoke-virtual {v14, v9}, Lvi2;->g(C)V

    .line 95
    .line 96
    .line 97
    :cond_7
    :goto_2
    invoke-virtual {v14}, Lvi2;->b()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_c

    .line 102
    .line 103
    if-eqz v2, :cond_b

    .line 104
    .line 105
    iget v1, v0, Lkotlinx/serialization/json/internal/a;->k:I

    .line 106
    .line 107
    iget v2, v14, Lvi2;->b:I

    .line 108
    .line 109
    const/4 v3, 0x4

    .line 110
    if-ne v1, v13, :cond_9

    .line 111
    .line 112
    if-nez v10, :cond_8

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_8
    const-string v0, "Unexpected leading comma"

    .line 116
    .line 117
    invoke-static {v14, v0, v2, v8, v3}, Lvi2;->l(Lvi2;Ljava/lang/String;ILjava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    throw v8

    .line 121
    :cond_9
    if-eqz v10, :cond_a

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_a
    const-string v0, "Expected comma after the key-value pair"

    .line 125
    .line 126
    invoke-static {v14, v0, v2, v8, v3}, Lvi2;->l(Lvi2;Ljava/lang/String;ILjava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    throw v8

    .line 130
    :cond_b
    :goto_3
    iget v1, v0, Lkotlinx/serialization/json/internal/a;->k:I

    .line 131
    .line 132
    add-int/lit8 v13, v1, 0x1

    .line 133
    .line 134
    iput v13, v0, Lkotlinx/serialization/json/internal/a;->k:I

    .line 135
    .line 136
    goto/16 :goto_a

    .line 137
    .line 138
    :cond_c
    if-nez v10, :cond_d

    .line 139
    .line 140
    goto/16 :goto_a

    .line 141
    .line 142
    :cond_d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-static {v14, v6}, Lbi4;->z(Lvi2;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v8

    .line 149
    :cond_e
    invoke-virtual {v14}, Lvi2;->x()Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    invoke-virtual {v14}, Lvi2;->b()Z

    .line 154
    .line 155
    .line 156
    move-result v15

    .line 157
    move-object/from16 v16, v8

    .line 158
    .line 159
    const/16 v8, 0x40

    .line 160
    .line 161
    const-wide/16 v17, 0x1

    .line 162
    .line 163
    move/from16 v19, v12

    .line 164
    .line 165
    iget-object v12, v0, Lkotlinx/serialization/json/internal/a;->m:Law1;

    .line 166
    .line 167
    if-eqz v15, :cond_18

    .line 168
    .line 169
    iget-object v0, v0, Lkotlinx/serialization/json/internal/a;->l:Lpv1;

    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v14}, Lvi2;->d()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v14, v9}, Lvi2;->g(C)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    iget-object v3, v2, Lfv1;->a:Lpv1;

    .line 191
    .line 192
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    invoke-static {v2, v1}, Ljw1;->a(Lfv1;Lgi3;)V

    .line 196
    .line 197
    .line 198
    invoke-interface {v1, v0}, Lgi3;->a(Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    const/4 v6, -0x3

    .line 203
    if-eq v5, v6, :cond_f

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_f
    iget-boolean v3, v3, Lpv1;->d:Z

    .line 207
    .line 208
    if-nez v3, :cond_10

    .line 209
    .line 210
    :goto_4
    move v13, v5

    .line 211
    goto :goto_7

    .line 212
    :cond_10
    iget-object v3, v2, Lfv1;->c:Lps0;

    .line 213
    .line 214
    new-instance v5, Lh4;

    .line 215
    .line 216
    const/16 v9, 0x11

    .line 217
    .line 218
    invoke-direct {v5, v9, v1, v2}, Lh4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    iget-object v2, v3, Lps0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 225
    .line 226
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    check-cast v3, Ljava/util/Map;

    .line 231
    .line 232
    sget-object v9, Ljw1;->a:Lqv3;

    .line 233
    .line 234
    if-eqz v3, :cond_11

    .line 235
    .line 236
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    goto :goto_5

    .line 241
    :cond_11
    move-object/from16 v3, v16

    .line 242
    .line 243
    :goto_5
    if-nez v3, :cond_12

    .line 244
    .line 245
    move-object/from16 v3, v16

    .line 246
    .line 247
    :cond_12
    if-eqz v3, :cond_13

    .line 248
    .line 249
    goto :goto_6

    .line 250
    :cond_13
    invoke-virtual {v5}, Lh4;->a()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    if-nez v5, :cond_14

    .line 259
    .line 260
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    .line 261
    .line 262
    invoke-direct {v5, v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2, v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    :cond_14
    check-cast v5, Ljava/util/Map;

    .line 269
    .line 270
    invoke-interface {v5, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    :goto_6
    check-cast v3, Ljava/util/Map;

    .line 274
    .line 275
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    check-cast v1, Ljava/lang/Integer;

    .line 280
    .line 281
    if-eqz v1, :cond_15

    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    move v13, v1

    .line 288
    goto :goto_7

    .line 289
    :cond_15
    move v13, v6

    .line 290
    :goto_7
    if-eq v13, v6, :cond_17

    .line 291
    .line 292
    if-eqz v12, :cond_1d

    .line 293
    .line 294
    iget-object v0, v12, Law1;->a:Laz0;

    .line 295
    .line 296
    if-ge v13, v8, :cond_16

    .line 297
    .line 298
    iget-wide v1, v0, Laz0;->a:J

    .line 299
    .line 300
    shl-long v5, v17, v13

    .line 301
    .line 302
    or-long/2addr v1, v5

    .line 303
    iput-wide v1, v0, Laz0;->a:J

    .line 304
    .line 305
    goto/16 :goto_a

    .line 306
    .line 307
    :cond_16
    ushr-int/lit8 v1, v13, 0x6

    .line 308
    .line 309
    add-int/lit8 v1, v1, -0x1

    .line 310
    .line 311
    and-int/lit8 v2, v13, 0x3f

    .line 312
    .line 313
    iget-object v0, v0, Laz0;->d:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v0, [J

    .line 316
    .line 317
    aget-wide v5, v0, v1

    .line 318
    .line 319
    shl-long v2, v17, v2

    .line 320
    .line 321
    or-long/2addr v2, v5

    .line 322
    aput-wide v2, v0, v1

    .line 323
    .line 324
    goto/16 :goto_a

    .line 325
    .line 326
    :cond_17
    iget v1, v14, Lvi2;->b:I

    .line 327
    .line 328
    iget-object v2, v14, Lvi2;->d:Ljava/lang/String;

    .line 329
    .line 330
    invoke-virtual {v2, v10, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-static {v1, v7, v0}, Lzs3;->K0(Ljava/lang/String;ILjava/lang/String;)I

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    const-string v3, "Encountered an unknown key \'"

    .line 345
    .line 346
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const/16 v0, 0x27

    .line 353
    .line 354
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    const-string v2, "Use \'ignoreUnknownKeys = true\' in \'Json {}\' builder to ignore unknown keys."

    .line 362
    .line 363
    invoke-virtual {v14, v0, v1, v2}, Lvi2;->k(Ljava/lang/String;ILjava/lang/String;)V

    .line 364
    .line 365
    .line 366
    throw v16

    .line 367
    :cond_18
    if-nez v5, :cond_1f

    .line 368
    .line 369
    if-eqz v12, :cond_1d

    .line 370
    .line 371
    iget-object v0, v12, Law1;->a:Laz0;

    .line 372
    .line 373
    iget-object v1, v0, Laz0;->c:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast v1, Lha1;

    .line 376
    .line 377
    iget-object v2, v0, Laz0;->b:Ljava/lang/Object;

    .line 378
    .line 379
    check-cast v2, Lgi3;

    .line 380
    .line 381
    invoke-interface {v2}, Lgi3;->d()I

    .line 382
    .line 383
    .line 384
    move-result v3

    .line 385
    :cond_19
    iget-wide v5, v0, Laz0;->a:J

    .line 386
    .line 387
    const-wide/16 v11, -0x1

    .line 388
    .line 389
    cmp-long v7, v5, v11

    .line 390
    .line 391
    if-eqz v7, :cond_1a

    .line 392
    .line 393
    not-long v5, v5

    .line 394
    invoke-static {v5, v6}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 395
    .line 396
    .line 397
    move-result v5

    .line 398
    iget-wide v6, v0, Laz0;->a:J

    .line 399
    .line 400
    shl-long v11, v17, v5

    .line 401
    .line 402
    or-long/2addr v6, v11

    .line 403
    iput-wide v6, v0, Laz0;->a:J

    .line 404
    .line 405
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    invoke-virtual {v1, v2, v6}, Lha1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    check-cast v6, Ljava/lang/Boolean;

    .line 414
    .line 415
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 416
    .line 417
    .line 418
    move-result v6

    .line 419
    if-eqz v6, :cond_19

    .line 420
    .line 421
    move v13, v5

    .line 422
    goto :goto_a

    .line 423
    :cond_1a
    if-le v3, v8, :cond_1d

    .line 424
    .line 425
    iget-object v0, v0, Laz0;->d:Ljava/lang/Object;

    .line 426
    .line 427
    check-cast v0, [J

    .line 428
    .line 429
    array-length v3, v0

    .line 430
    :goto_8
    if-ge v10, v3, :cond_1d

    .line 431
    .line 432
    add-int/lit8 v5, v10, 0x1

    .line 433
    .line 434
    mul-int/lit8 v6, v5, 0x40

    .line 435
    .line 436
    aget-wide v7, v0, v10

    .line 437
    .line 438
    :goto_9
    cmp-long v9, v7, v11

    .line 439
    .line 440
    if-eqz v9, :cond_1c

    .line 441
    .line 442
    not-long v11, v7

    .line 443
    invoke-static {v11, v12}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 444
    .line 445
    .line 446
    move-result v9

    .line 447
    shl-long v11, v17, v9

    .line 448
    .line 449
    or-long/2addr v7, v11

    .line 450
    add-int/2addr v9, v6

    .line 451
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 452
    .line 453
    .line 454
    move-result-object v11

    .line 455
    invoke-virtual {v1, v2, v11}, Lha1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v11

    .line 459
    check-cast v11, Ljava/lang/Boolean;

    .line 460
    .line 461
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 462
    .line 463
    .line 464
    move-result v11

    .line 465
    if-eqz v11, :cond_1b

    .line 466
    .line 467
    aput-wide v7, v0, v10

    .line 468
    .line 469
    move v13, v9

    .line 470
    goto :goto_a

    .line 471
    :cond_1b
    const-wide/16 v11, -0x1

    .line 472
    .line 473
    goto :goto_9

    .line 474
    :cond_1c
    aput-wide v7, v0, v10

    .line 475
    .line 476
    move v10, v5

    .line 477
    const-wide/16 v11, -0x1

    .line 478
    .line 479
    goto :goto_8

    .line 480
    :cond_1d
    :goto_a
    sget-object v0, Lrh4;->r:Lrh4;

    .line 481
    .line 482
    if-eq v4, v0, :cond_1e

    .line 483
    .line 484
    iget-object v0, v14, Lvi2;->e:Ljava/lang/Object;

    .line 485
    .line 486
    check-cast v0, Lhb;

    .line 487
    .line 488
    iget-object v1, v0, Lhb;->d:Ljava/lang/Object;

    .line 489
    .line 490
    check-cast v1, [I

    .line 491
    .line 492
    iget v0, v0, Lhb;->b:I

    .line 493
    .line 494
    aput v13, v1, v0

    .line 495
    .line 496
    :cond_1e
    return v13

    .line 497
    :cond_1f
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 498
    .line 499
    .line 500
    invoke-static {v14, v6}, Lbi4;->z(Lvi2;Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    throw v16
.end method

.method public final n()I
    .locals 5

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/a;->i:Lvi2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lvi2;->h()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int v2, v0

    .line 8
    int-to-long v3, v2

    .line 9
    cmp-long v3, v0, v3

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "Failed to parse int for input \'"

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/16 v0, 0x27

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x6

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static {p0, v0, v1, v3, v2}, Lvi2;->l(Lvi2;Ljava/lang/String;ILjava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    throw v3
.end method

.method public final p(Lgi3;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lkotlinx/serialization/json/internal/a;->g:Lfv1;

    .line 5
    .line 6
    iget-object p1, p1, Lfv1;->a:Lpv1;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lkotlinx/serialization/json/internal/a;->i:Lvi2;

    .line 12
    .line 13
    invoke-virtual {v0}, Lvi2;->x()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    iget-object p0, p0, Lkotlinx/serialization/json/internal/a;->h:Lrh4;

    .line 20
    .line 21
    iget-char p0, p0, Lrh4;->o:C

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lvi2;->g(C)V

    .line 24
    .line 25
    .line 26
    iget-object p0, v0, Lvi2;->e:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Lhb;

    .line 29
    .line 30
    iget p1, p0, Lhb;->b:I

    .line 31
    .line 32
    iget-object v0, p0, Lhb;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, [I

    .line 35
    .line 36
    aget v1, v0, p1

    .line 37
    .line 38
    const/4 v2, -0x2

    .line 39
    const/4 v3, -0x1

    .line 40
    if-ne v1, v2, :cond_0

    .line 41
    .line 42
    aput v3, v0, p1

    .line 43
    .line 44
    add-int/2addr p1, v3

    .line 45
    iput p1, p0, Lhb;->b:I

    .line 46
    .line 47
    :cond_0
    iget p1, p0, Lhb;->b:I

    .line 48
    .line 49
    if-eq p1, v3, :cond_1

    .line 50
    .line 51
    add-int/2addr p1, v3

    .line 52
    iput p1, p0, Lhb;->b:I

    .line 53
    .line 54
    :cond_1
    return-void

    .line 55
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    const-string p0, ""

    .line 59
    .line 60
    invoke-static {v0, p0}, Lbi4;->z(Lvi2;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 p0, 0x0

    .line 64
    throw p0
.end method

.method public final q()Lb21;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/a;->j:Lb21;

    .line 2
    .line 3
    return-object p0
.end method

.method public final s()B
    .locals 5

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/a;->i:Lvi2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lvi2;->h()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int v2, v0

    .line 8
    int-to-byte v2, v2

    .line 9
    int-to-long v3, v2

    .line 10
    cmp-long v3, v0, v3

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Failed to parse byte for input \'"

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/16 v0, 0x27

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x6

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static {p0, v0, v1, v3, v2}, Lvi2;->l(Lvi2;Ljava/lang/String;ILjava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    throw v3
.end method

.method public final t(Lgi3;)Lvn0;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lts3;->a(Lgi3;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Luv1;

    .line 11
    .line 12
    iget-object v0, p0, Lkotlinx/serialization/json/internal/a;->i:Lvi2;

    .line 13
    .line 14
    iget-object p0, p0, Lkotlinx/serialization/json/internal/a;->g:Lfv1;

    .line 15
    .line 16
    invoke-direct {p1, v0, p0}, Luv1;-><init>(Lvi2;Lfv1;)V

    .line 17
    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    return-object p0
.end method

.method public final u(Lgi3;ILlx1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object p4, p0, Lkotlinx/serialization/json/internal/a;->i:Lvi2;

    .line 2
    .line 3
    iget-object p4, p4, Lvi2;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p4, Lhb;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lkotlinx/serialization/json/internal/a;->h:Lrh4;

    .line 14
    .line 15
    sget-object v0, Lrh4;->r:Lrh4;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    and-int/lit8 p1, p2, 0x1

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    move p1, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    const/4 p2, -0x2

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object v0, p4, Lhb;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, [I

    .line 33
    .line 34
    iget v2, p4, Lhb;->b:I

    .line 35
    .line 36
    aget v0, v0, v2

    .line 37
    .line 38
    if-ne v0, p2, :cond_1

    .line 39
    .line 40
    iget-object v0, p4, Lhb;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, [Ljava/lang/Object;

    .line 43
    .line 44
    sget-object v3, Lw13;->G:Lw13;

    .line 45
    .line 46
    aput-object v3, v0, v2

    .line 47
    .line 48
    :cond_1
    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/a;->a(Llx1;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    iget-object p1, p4, Lhb;->d:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, [I

    .line 57
    .line 58
    iget p3, p4, Lhb;->b:I

    .line 59
    .line 60
    aget p1, p1, p3

    .line 61
    .line 62
    if-eq p1, p2, :cond_2

    .line 63
    .line 64
    add-int/2addr p3, v1

    .line 65
    iput p3, p4, Lhb;->b:I

    .line 66
    .line 67
    iget-object p1, p4, Lhb;->c:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, [Ljava/lang/Object;

    .line 70
    .line 71
    array-length v0, p1

    .line 72
    if-ne p3, v0, :cond_2

    .line 73
    .line 74
    mul-int/lit8 p3, p3, 0x2

    .line 75
    .line 76
    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p4, Lhb;->c:Ljava/lang/Object;

    .line 81
    .line 82
    iget-object p1, p4, Lhb;->d:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p1, [I

    .line 85
    .line 86
    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([II)[I

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p4, Lhb;->d:Ljava/lang/Object;

    .line 91
    .line 92
    :cond_2
    iget-object p1, p4, Lhb;->c:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p1, [Ljava/lang/Object;

    .line 95
    .line 96
    iget p3, p4, Lhb;->b:I

    .line 97
    .line 98
    aput-object p0, p1, p3

    .line 99
    .line 100
    iget-object p1, p4, Lhb;->d:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p1, [I

    .line 103
    .line 104
    aput p2, p1, p3

    .line 105
    .line 106
    :cond_3
    return-object p0
.end method

.method public final w()S
    .locals 5

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/a;->i:Lvi2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lvi2;->h()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int v2, v0

    .line 8
    int-to-short v2, v2

    .line 9
    int-to-long v3, v2

    .line 10
    cmp-long v3, v0, v3

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Failed to parse short for input \'"

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/16 v0, 0x27

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x6

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static {p0, v0, v1, v3, v2}, Lvi2;->l(Lvi2;Ljava/lang/String;ILjava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    throw v3
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/a;->l:Lpv1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lkotlinx/serialization/json/internal/a;->i:Lvi2;

    .line 7
    .line 8
    invoke-virtual {p0}, Lvi2;->i()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final y()F
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/a;->i:Lvi2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lvi2;->j()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 9
    .line 10
    .line 11
    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    iget-object p0, p0, Lkotlinx/serialization/json/internal/a;->g:Lfv1;

    .line 13
    .line 14
    iget-object p0, p0, Lfv1;->a:Lpv1;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    return v1

    .line 32
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v0, p0}, Lbi4;->H(Lvi2;Ljava/lang/Number;)V

    .line 37
    .line 38
    .line 39
    throw v2

    .line 40
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "Failed to parse type \'float\' for input \'"

    .line 43
    .line 44
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const/16 v1, 0x27

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const/4 v1, 0x0

    .line 60
    const/4 v3, 0x6

    .line 61
    invoke-static {v0, p0, v1, v2, v3}, Lvi2;->l(Lvi2;Ljava/lang/String;ILjava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    throw v2
.end method

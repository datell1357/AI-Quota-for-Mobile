.class public final Lou3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ld14;
.implements Lu13;


# instance fields
.field public final a:Lju3;


# direct methods
.method public constructor <init>(Lju3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lou3;->a:Lju3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lpe1;Lfh0;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lou3;->a:Lju3;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lju3;->b(Ljava/lang/String;)Lsu3;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    invoke-interface {p2, p0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-static {p0, p2}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :catchall_1
    move-exception p2

    .line 19
    invoke-static {p0, p1}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw p2
.end method

.method public final b()Ljb3;
    .locals 0

    .line 1
    iget-object p0, p0, Lou3;->a:Lju3;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c(Lbv3;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lou3;->a:Lju3;

    .line 2
    .line 3
    iget-object p0, p0, Lju3;->n:Lee1;

    .line 4
    .line 5
    invoke-virtual {p0}, Lee1;->F()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final d(Lc14;Ldf1;Lbv3;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lou3;->e(Lc14;Ldf1;Lfh0;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final e(Lc14;Ldf1;Lfh0;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p3, Lnu3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lnu3;

    .line 7
    .line 8
    iget v1, v0, Lnu3;->u:I

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
    iput v1, v0, Lnu3;->u:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnu3;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lnu3;-><init>(Lou3;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lnu3;->s:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnu3;->u:I

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
    iget-object p0, v0, Lnu3;->r:Lee1;

    .line 36
    .line 37
    iget-object p1, v0, Lnu3;->q:Lou3;

    .line 38
    .line 39
    :try_start_0
    invoke-static {p3}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :catchall_0
    move-exception p2

    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v2

    .line 53
    :cond_2
    invoke-static {p3}, Lgg4;->T(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object p3, p0, Lou3;->a:Lju3;

    .line 57
    .line 58
    iget-object p3, p3, Lju3;->n:Lee1;

    .line 59
    .line 60
    invoke-virtual {p3}, Lee1;->F()Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    if-eq p1, v3, :cond_4

    .line 70
    .line 71
    const/4 v1, 0x2

    .line 72
    if-ne p1, v1, :cond_3

    .line 73
    .line 74
    invoke-virtual {p3}, Lee1;->b()V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-static {}, Lp61;->x()V

    .line 79
    .line 80
    .line 81
    return-object v2

    .line 82
    :cond_4
    invoke-virtual {p3}, Lee1;->j()V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    const/4 p1, 0x0

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object v1, p3, Lee1;->n:Landroid/database/sqlite/SQLiteDatabase;

    .line 92
    .line 93
    sget-object v4, Lee1;->r:Lqz1;

    .line 94
    .line 95
    invoke-interface {v4}, Lqz1;->getValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    check-cast v5, Ljava/lang/reflect/Method;

    .line 100
    .line 101
    if-eqz v5, :cond_7

    .line 102
    .line 103
    sget-object v5, Lee1;->q:Lqz1;

    .line 104
    .line 105
    invoke-interface {v5}, Lqz1;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    check-cast v6, Ljava/lang/reflect/Method;

    .line 110
    .line 111
    if-eqz v6, :cond_7

    .line 112
    .line 113
    invoke-interface {v4}, Lqz1;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Ljava/lang/reflect/Method;

    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-interface {v5}, Lqz1;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    check-cast v5, Ljava/lang/reflect/Method;

    .line 127
    .line 128
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    if-eqz v1, :cond_6

    .line 136
    .line 137
    filled-new-array {p1, v2, p1, v2}, [Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {v4, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_6
    const-string p1, "Required value was null."

    .line 146
    .line 147
    invoke-static {p1}, Lk21;->n(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_7
    invoke-virtual {p3}, Lee1;->b()V

    .line 152
    .line 153
    .line 154
    :goto_1
    :try_start_1
    new-instance p1, Lpw2;

    .line 155
    .line 156
    invoke-direct {p1, v3, p0}, Lpw2;-><init>(ILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    iput-object p0, v0, Lnu3;->q:Lou3;

    .line 160
    .line 161
    iput-object p3, v0, Lnu3;->r:Lee1;

    .line 162
    .line 163
    iput v3, v0, Lnu3;->u:I

    .line 164
    .line 165
    invoke-interface {p2, p1, v0}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    sget-object p2, Lri0;->n:Lri0;

    .line 170
    .line 171
    if-ne p1, p2, :cond_8

    .line 172
    .line 173
    return-object p2

    .line 174
    :cond_8
    move-object v7, p1

    .line 175
    move-object p1, p0

    .line 176
    move-object p0, p3

    .line 177
    move-object p3, v7

    .line 178
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lee1;->K()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Lee1;->z()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lee1;->F()Z

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    if-nez p0, :cond_9

    .line 189
    .line 190
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    :cond_9
    return-object p3

    .line 194
    :catchall_1
    move-exception p2

    .line 195
    move-object p1, p0

    .line 196
    move-object p0, p3

    .line 197
    :goto_3
    invoke-virtual {p0}, Lee1;->z()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Lee1;->F()Z

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    if-nez p0, :cond_a

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    :cond_a
    throw p2
.end method

.class public abstract Lps;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final i:Lrx2;

.field public static final j:Lrx2;

.field public static final k:Lrx2;

.field public static final l:Lrx2;

.field public static final m:Lrx2;

.field public static final n:Lrx2;

.field public static final o:Lrx2;

.field public static final p:Lrx2;

.field public static final q:Lrx2;


# instance fields
.field public final a:Lpi1;

.field public final b:Lnv3;

.field public final c:Lnv3;

.field public final d:Lnv3;

.field public final e:Lnv3;

.field public final f:Lnv3;

.field public final g:Lnv3;

.field public final h:Lnv3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lrx2;

    .line 2
    .line 3
    const-string v1, "u"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lps;->i:Lrx2;

    .line 9
    .line 10
    new-instance v0, Lrx2;

    .line 11
    .line 12
    const-string v1, "d"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lps;->j:Lrx2;

    .line 18
    .line 19
    new-instance v0, Lrx2;

    .line 20
    .line 21
    const-string v1, "ne"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lps;->k:Lrx2;

    .line 27
    .line 28
    new-instance v0, Lrx2;

    .line 29
    .line 30
    const-string v1, "mig_ne_done"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lps;->l:Lrx2;

    .line 36
    .line 37
    new-instance v0, Lrx2;

    .line 38
    .line 39
    const-string v1, "rwe"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lps;->m:Lrx2;

    .line 45
    .line 46
    new-instance v0, Lrx2;

    .line 47
    .line 48
    const-string v1, "ltrt"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lps;->n:Lrx2;

    .line 54
    .line 55
    new-instance v0, Lrx2;

    .line 56
    .line 57
    const-string v1, "seso"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lps;->o:Lrx2;

    .line 63
    .line 64
    new-instance v0, Lrx2;

    .line 65
    .line 66
    const-string v1, "sesrc"

    .line 67
    .line 68
    invoke-direct {v0, v1}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lps;->p:Lrx2;

    .line 72
    .line 73
    new-instance v0, Lrx2;

    .line 74
    .line 75
    const-string v1, "nbv"

    .line 76
    .line 77
    invoke-direct {v0, v1}, Lrx2;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sput-object v0, Lps;->q:Lrx2;

    .line 81
    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lpi1;

    .line 8
    .line 9
    invoke-direct {p1}, Lpi1;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lps;->a:Lpi1;

    .line 13
    .line 14
    new-instance p1, Lyr;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {p1, p0, v0}, Lyr;-><init>(Lps;I)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lnv3;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lnv3;-><init>(Lne1;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lps;->b:Lnv3;

    .line 26
    .line 27
    new-instance p1, Lyr;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-direct {p1, p0, v0}, Lyr;-><init>(Lps;I)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lnv3;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lnv3;-><init>(Lne1;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lps;->c:Lnv3;

    .line 39
    .line 40
    new-instance p1, Lyr;

    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    invoke-direct {p1, p0, v0}, Lyr;-><init>(Lps;I)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lnv3;

    .line 47
    .line 48
    invoke-direct {v0, p1}, Lnv3;-><init>(Lne1;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lps;->d:Lnv3;

    .line 52
    .line 53
    new-instance p1, Lyr;

    .line 54
    .line 55
    const/4 v0, 0x3

    .line 56
    invoke-direct {p1, p0, v0}, Lyr;-><init>(Lps;I)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lnv3;

    .line 60
    .line 61
    invoke-direct {v0, p1}, Lnv3;-><init>(Lne1;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lps;->e:Lnv3;

    .line 65
    .line 66
    new-instance p1, Lyr;

    .line 67
    .line 68
    const/4 v0, 0x4

    .line 69
    invoke-direct {p1, p0, v0}, Lyr;-><init>(Lps;I)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lnv3;

    .line 73
    .line 74
    invoke-direct {v0, p1}, Lnv3;-><init>(Lne1;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lps;->f:Lnv3;

    .line 78
    .line 79
    new-instance p1, Lyr;

    .line 80
    .line 81
    const/4 v0, 0x5

    .line 82
    invoke-direct {p1, p0, v0}, Lyr;-><init>(Lps;I)V

    .line 83
    .line 84
    .line 85
    new-instance v0, Lnv3;

    .line 86
    .line 87
    invoke-direct {v0, p1}, Lnv3;-><init>(Lne1;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lps;->g:Lnv3;

    .line 91
    .line 92
    new-instance p1, Lyr;

    .line 93
    .line 94
    const/4 v0, 0x6

    .line 95
    invoke-direct {p1, p0, v0}, Lyr;-><init>(Lps;I)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Lnv3;

    .line 99
    .line 100
    invoke-direct {v0, p1}, Lnv3;-><init>(Lne1;)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lps;->h:Lnv3;

    .line 104
    .line 105
    return-void
.end method


# virtual methods
.method public abstract a()Llm0;
.end method

.method public abstract b()Ly84;
.end method

.method public final c()La81;
    .locals 0

    .line 1
    iget-object p0, p0, Lps;->b:Lnv3;

    .line 2
    .line 3
    invoke-virtual {p0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, La81;

    .line 8
    .line 9
    return-object p0
.end method

.method public final d()La81;
    .locals 0

    .line 1
    iget-object p0, p0, Lps;->c:Lnv3;

    .line 2
    .line 3
    invoke-virtual {p0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, La81;

    .line 8
    .line 9
    return-object p0
.end method

.method public final e(Lfh0;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p1, Lgs;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lgs;

    .line 7
    .line 8
    iget v1, v0, Lgs;->s:I

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
    iput v1, v0, Lgs;->s:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lgs;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lgs;-><init>(Lps;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lgs;->q:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lgs;->s:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x3

    .line 31
    const/4 v4, 0x2

    .line 32
    const/4 v5, 0x1

    .line 33
    sget-object v6, Lri0;->n:Lri0;

    .line 34
    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    if-eq v1, v5, :cond_3

    .line 38
    .line 39
    if-eq v1, v4, :cond_2

    .line 40
    .line 41
    if-ne v1, v3, :cond_1

    .line 42
    .line 43
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_8

    .line 47
    .line 48
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v2

    .line 54
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iput v5, v0, Lgs;->s:I

    .line 66
    .line 67
    const-wide/16 v7, 0x199

    .line 68
    .line 69
    invoke-static {v7, v8, v0}, Lzf5;->A(JLdh0;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-ne p1, v6, :cond_5

    .line 74
    .line 75
    goto/16 :goto_7

    .line 76
    .line 77
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lps;->c()La81;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput v4, v0, Lgs;->s:I

    .line 82
    .line 83
    invoke-static {p1, v0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-ne p1, v6, :cond_6

    .line 88
    .line 89
    goto/16 :goto_7

    .line 90
    .line 91
    :cond_6
    :goto_2
    check-cast p1, Ld84;

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    if-eqz p1, :cond_b

    .line 95
    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 97
    .line 98
    .line 99
    move-result-wide v7

    .line 100
    invoke-virtual {p1}, Ld84;->c()Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    if-eqz v9, :cond_7

    .line 105
    .line 106
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    if-eqz v10, :cond_7

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_7
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    if-eqz v10, :cond_a

    .line 122
    .line 123
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    check-cast v10, Lp84;

    .line 128
    .line 129
    invoke-virtual {v10}, Lp84;->b()Ljava/lang/Long;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    if-eqz v10, :cond_9

    .line 134
    .line 135
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 136
    .line 137
    .line 138
    move-result-wide v10

    .line 139
    goto :goto_3

    .line 140
    :cond_9
    const-wide v10, 0x7fffffffffffffffL

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :goto_3
    cmp-long v10, v10, v7

    .line 146
    .line 147
    if-gtz v10, :cond_8

    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_a
    :goto_4
    sget-object v2, Lez3;->a:Lra3;

    .line 151
    .line 152
    new-array v1, v1, [Ljava/lang/Object;

    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 161
    .line 162
    .line 163
    move-result-wide v1

    .line 164
    invoke-static {p1, v1, v2}, Ld84;->a(Ld84;J)Ld84;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    goto :goto_6

    .line 169
    :cond_b
    :goto_5
    sget-object p1, Lez3;->a:Lra3;

    .line 170
    .line 171
    new-array v1, v1, [Ljava/lang/Object;

    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Lps;->b()Ly84;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-eqz p1, :cond_10

    .line 191
    .line 192
    if-eq p1, v5, :cond_f

    .line 193
    .line 194
    if-eq p1, v4, :cond_e

    .line 195
    .line 196
    if-eq p1, v3, :cond_d

    .line 197
    .line 198
    const/4 v1, 0x4

    .line 199
    if-ne p1, v1, :cond_c

    .line 200
    .line 201
    sget p1, Lu/sage/CopilotUsageService;->Y:I

    .line 202
    .line 203
    invoke-static {}, Lk75;->s()Ld84;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    goto :goto_6

    .line 208
    :cond_c
    invoke-static {}, Lp61;->x()V

    .line 209
    .line 210
    .line 211
    return-object v2

    .line 212
    :cond_d
    sget p1, Lu/sage/CodexUsageService;->Y:I

    .line 213
    .line 214
    invoke-static {}, Lon4;->p()Ld84;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    goto :goto_6

    .line 219
    :cond_e
    sget p1, Lu/sage/AntigravityUsageService;->Y:I

    .line 220
    .line 221
    invoke-static {}, Lk75;->r()Ld84;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    goto :goto_6

    .line 226
    :cond_f
    sget p1, Lu/sage/GeminiUsageService;->Y:I

    .line 227
    .line 228
    invoke-static {}, Lc75;->u()Ld84;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    goto :goto_6

    .line 233
    :cond_10
    sget p1, Lu/sage/ClaudeUsageService;->Z:I

    .line 234
    .line 235
    invoke-static {}, Lis0;->v()Ld84;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    :goto_6
    iput v3, v0, Lgs;->s:I

    .line 240
    .line 241
    invoke-virtual {p0, p1, v0}, Lps;->g(Ld84;Lfh0;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    if-ne p0, v6, :cond_11

    .line 246
    .line 247
    :goto_7
    return-object v6

    .line 248
    :cond_11
    :goto_8
    sget-object p0, Lt64;->a:Lt64;

    .line 249
    .line 250
    return-object p0
.end method

.method public final f(Lfh0;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p1, Lhs;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lhs;

    .line 7
    .line 8
    iget v1, v0, Lhs;->t:I

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
    iput v1, v0, Lhs;->t:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lhs;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lhs;-><init>(Lps;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lhs;->r:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lhs;->t:I

    .line 28
    .line 29
    sget-object v2, Lri0;->n:Lri0;

    .line 30
    .line 31
    sget-object v3, Lt64;->a:Lt64;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x1

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x2

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    if-eq v1, v5, :cond_2

    .line 40
    .line 41
    if-ne v1, v7, :cond_1

    .line 42
    .line 43
    iget-object p0, v0, Lhs;->q:Ld84;

    .line 44
    .line 45
    check-cast p0, Ljava/lang/Exception;

    .line 46
    .line 47
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_4

    .line 51
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v4

    .line 57
    :cond_2
    iget-object v1, v0, Lhs;->q:Ld84;

    .line 58
    .line 59
    :try_start_0
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :try_start_1
    invoke-virtual {p0}, Lps;->b()Ly84;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Lmt1;->x(Ly84;)Ld84;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iput-object v1, v0, Lhs;->q:Ld84;

    .line 75
    .line 76
    iput v5, v0, Lhs;->t:I

    .line 77
    .line 78
    invoke-virtual {p0, v1, v0}, Lps;->g(Ld84;Lfh0;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-ne p1, v2, :cond_4

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_4
    :goto_1
    sget-object p1, Lez3;->a:Lra3;

    .line 86
    .line 87
    invoke-virtual {v1}, Ld84;->c()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    new-array v1, v6, [Ljava/lang/Object;

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    .line 101
    .line 102
    return-object v3

    .line 103
    :catch_0
    sget-object p1, Lez3;->a:Lra3;

    .line 104
    .line 105
    new-array v1, v6, [Ljava/lang/Object;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-static {v1}, Lra3;->g([Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iput-object v4, v0, Lhs;->q:Ld84;

    .line 114
    .line 115
    iput v7, v0, Lhs;->t:I

    .line 116
    .line 117
    new-array p1, v6, [Ljava/lang/Object;

    .line 118
    .line 119
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lps;->a()Llm0;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    new-instance p1, Lzr;

    .line 127
    .line 128
    invoke-direct {p1, v7, v4, v6}, Lzr;-><init>(ILdh0;I)V

    .line 129
    .line 130
    .line 131
    invoke-static {p0, p1, v0}, Lht4;->o(Llm0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    if-ne p0, v2, :cond_5

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_5
    move-object p0, v3

    .line 139
    :goto_2
    if-ne p0, v2, :cond_6

    .line 140
    .line 141
    :goto_3
    return-object v2

    .line 142
    :cond_6
    :goto_4
    return-object v3
.end method

.method public final g(Ld84;Lfh0;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lps;->a:Lpi1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lpi1;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lez3;->a:Lra3;

    .line 8
    .line 9
    const/16 v1, 0x32

    .line 10
    .line 11
    invoke-static {v1, p1}, Lzs3;->X0(ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lps;->a()Llm0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance v0, Lar;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x2

    .line 31
    invoke-direct {v0, p1, v1, v2}, Lar;-><init>(Ljava/lang/String;Ldh0;I)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v0, p2}, Lht4;->o(Llm0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    sget-object p1, Lri0;->n:Lri0;

    .line 39
    .line 40
    if-ne p0, p1, :cond_0

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_0
    sget-object p0, Lt64;->a:Lt64;

    .line 44
    .line 45
    return-object p0
.end method

.method public final h(Lfh0;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lks;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lks;

    .line 7
    .line 8
    iget v1, v0, Lks;->t:I

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
    iput v1, v0, Lks;->t:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lks;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lks;-><init>(Lps;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lks;->r:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lks;->t:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x2

    .line 32
    const/4 v5, 0x1

    .line 33
    sget-object v6, Lri0;->n:Lri0;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    if-eq v1, v5, :cond_2

    .line 38
    .line 39
    if-ne v1, v4, :cond_1

    .line 40
    .line 41
    iget-object p0, v0, Lks;->q:Ld84;

    .line 42
    .line 43
    check-cast p0, Ljava/lang/Exception;

    .line 44
    .line 45
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v2

    .line 56
    :cond_2
    iget-object v1, v0, Lks;->q:Ld84;

    .line 57
    .line 58
    :try_start_0
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :try_start_1
    invoke-virtual {p0}, Lps;->b()Ly84;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_8

    .line 77
    .line 78
    if-eq p1, v5, :cond_7

    .line 79
    .line 80
    if-eq p1, v4, :cond_6

    .line 81
    .line 82
    const/4 v1, 0x3

    .line 83
    if-eq p1, v1, :cond_5

    .line 84
    .line 85
    const/4 v1, 0x4

    .line 86
    if-ne p1, v1, :cond_4

    .line 87
    .line 88
    sget p1, Lu/sage/CopilotUsageService;->Y:I

    .line 89
    .line 90
    invoke-static {}, Lk75;->s()Ld84;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    :goto_1
    move-object v1, p1

    .line 95
    goto :goto_2

    .line 96
    :cond_4
    new-instance p1, Lv00;

    .line 97
    .line 98
    const/4 v1, 0x7

    .line 99
    invoke-direct {p1, v1}, Lv00;-><init>(I)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_5
    sget p1, Lu/sage/CodexUsageService;->Y:I

    .line 104
    .line 105
    invoke-static {}, Lon4;->p()Ld84;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    goto :goto_1

    .line 110
    :cond_6
    sget p1, Lu/sage/AntigravityUsageService;->Y:I

    .line 111
    .line 112
    invoke-static {}, Lk75;->r()Ld84;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    goto :goto_1

    .line 117
    :cond_7
    sget p1, Lu/sage/GeminiUsageService;->Y:I

    .line 118
    .line 119
    invoke-static {}, Lc75;->u()Ld84;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    goto :goto_1

    .line 124
    :cond_8
    sget p1, Lu/sage/ClaudeUsageService;->Z:I

    .line 125
    .line 126
    invoke-static {}, Lis0;->v()Ld84;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    goto :goto_1

    .line 131
    :goto_2
    iput-object v1, v0, Lks;->q:Ld84;

    .line 132
    .line 133
    iput v5, v0, Lks;->t:I

    .line 134
    .line 135
    invoke-virtual {p0, v1, v0}, Lps;->g(Ld84;Lfh0;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    if-ne p1, v6, :cond_9

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_9
    :goto_3
    sget-object p1, Lez3;->a:Lra3;

    .line 143
    .line 144
    invoke-virtual {v1}, Ld84;->c()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 149
    .line 150
    .line 151
    new-array v1, v3, [Ljava/lang/Object;

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    .line 158
    .line 159
    goto :goto_5

    .line 160
    :catch_0
    sget-object p1, Lez3;->a:Lra3;

    .line 161
    .line 162
    new-array v1, v3, [Ljava/lang/Object;

    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    invoke-static {v1}, Lra3;->g([Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    iput-object v2, v0, Lks;->q:Ld84;

    .line 171
    .line 172
    iput v4, v0, Lks;->t:I

    .line 173
    .line 174
    invoke-virtual {p0, v0}, Lps;->f(Lfh0;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    if-ne p0, v6, :cond_a

    .line 179
    .line 180
    :goto_4
    return-object v6

    .line 181
    :cond_a
    :goto_5
    sget-object p0, Lt64;->a:Lt64;

    .line 182
    .line 183
    return-object p0
.end method

.method public final i(ZLbv3;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lps;->a()Llm0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lms;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v0, p1, v1, v2}, Lms;-><init>(ZLdh0;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0, p2}, Lht4;->o(Llm0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object p1, Lri0;->n:Lri0;

    .line 17
    .line 18
    if-ne p0, p1, :cond_0

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    sget-object p0, Lt64;->a:Lt64;

    .line 22
    .line 23
    return-object p0
.end method

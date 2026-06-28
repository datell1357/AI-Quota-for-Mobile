.class public final Li5;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public r:I

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:Ly3;

.field public final synthetic u:Ln8;

.field public final synthetic v:Lps;

.field public final synthetic w:Landroid/content/Context;

.field public final synthetic x:Ls33;

.field public final synthetic y:Le4;

.field public final synthetic z:Lne1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ly3;Ln8;Lps;Landroid/content/Context;Ls33;Le4;Lne1;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li5;->s:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Li5;->t:Ly3;

    .line 4
    .line 5
    iput-object p3, p0, Li5;->u:Ln8;

    .line 6
    .line 7
    iput-object p4, p0, Li5;->v:Lps;

    .line 8
    .line 9
    iput-object p5, p0, Li5;->w:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p6, p0, Li5;->x:Ls33;

    .line 12
    .line 13
    iput-object p7, p0, Li5;->y:Le4;

    .line 14
    .line 15
    iput-object p8, p0, Li5;->z:Lne1;

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-direct {p0, p1, p9}, Lbv3;-><init>(ILdh0;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v9, p1

    .line 2
    check-cast v9, Ldh0;

    .line 3
    .line 4
    new-instance v0, Li5;

    .line 5
    .line 6
    iget-object v7, p0, Li5;->y:Le4;

    .line 7
    .line 8
    iget-object v8, p0, Li5;->z:Lne1;

    .line 9
    .line 10
    iget-object v1, p0, Li5;->s:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, p0, Li5;->t:Ly3;

    .line 13
    .line 14
    iget-object v3, p0, Li5;->u:Ln8;

    .line 15
    .line 16
    iget-object v4, p0, Li5;->v:Lps;

    .line 17
    .line 18
    iget-object v5, p0, Li5;->w:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v6, p0, Li5;->x:Ls33;

    .line 21
    .line 22
    invoke-direct/range {v0 .. v9}, Li5;-><init>(Ljava/lang/String;Ly3;Ln8;Lps;Landroid/content/Context;Ls33;Le4;Lne1;Ldh0;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lt64;->a:Lt64;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Li5;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Li5;->t:Ly3;

    .line 2
    .line 3
    iget-object v0, v0, Ly3;->a:Ly84;

    .line 4
    .line 5
    iget v1, p0, Li5;->r:I

    .line 6
    .line 7
    iget-object v2, p0, Li5;->v:Lps;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x4

    .line 11
    const/4 v5, 0x3

    .line 12
    const/4 v6, 0x2

    .line 13
    const/4 v7, 0x1

    .line 14
    const/4 v8, 0x0

    .line 15
    sget-object v9, Lri0;->n:Lri0;

    .line 16
    .line 17
    if-eqz v1, :cond_4

    .line 18
    .line 19
    if-eq v1, v7, :cond_3

    .line 20
    .line 21
    if-eq v1, v6, :cond_2

    .line 22
    .line 23
    if-eq v1, v5, :cond_1

    .line 24
    .line 25
    if-ne v1, v4, :cond_0

    .line 26
    .line 27
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v3

    .line 38
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lez3;->a:Lra3;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    new-array v1, v8, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    sget-object p1, Lzu0;->a:Lzp0;

    .line 67
    .line 68
    sget-object p1, Ln92;->a:Lxi1;

    .line 69
    .line 70
    new-instance v1, Lp4;

    .line 71
    .line 72
    iget-object v10, p0, Li5;->x:Ls33;

    .line 73
    .line 74
    iget-object v11, p0, Li5;->y:Le4;

    .line 75
    .line 76
    invoke-direct {v1, v10, v11, v3, v7}, Lp4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 77
    .line 78
    .line 79
    iput v7, p0, Li5;->r:I

    .line 80
    .line 81
    invoke-static {p1, v1, p0}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v9, :cond_5

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_5
    :goto_0
    iget-object p1, p0, Li5;->u:Ln8;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Ln8;->e(Ly84;)V

    .line 91
    .line 92
    .line 93
    sget-object p1, Lez3;->a:Lra3;

    .line 94
    .line 95
    new-array v1, v8, [Ljava/lang/Object;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iput v6, p0, Li5;->r:I

    .line 104
    .line 105
    invoke-virtual {v2, p0}, Lps;->h(Lfh0;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-ne p1, v9, :cond_6

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_6
    :goto_1
    iput v5, p0, Li5;->r:I

    .line 113
    .line 114
    invoke-virtual {v2, v8, p0}, Lps;->i(ZLbv3;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-ne p1, v9, :cond_7

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_7
    :goto_2
    sget-object p1, Lez3;->a:Lra3;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    new-array v1, v8, [Ljava/lang/Object;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Li5;->w:Landroid/content/Context;

    .line 135
    .line 136
    invoke-static {p1, v0}, Lmt1;->T(Landroid/content/Context;Ly84;)V

    .line 137
    .line 138
    .line 139
    sget-object p1, Lzu0;->a:Lzp0;

    .line 140
    .line 141
    sget-object p1, Ln92;->a:Lxi1;

    .line 142
    .line 143
    new-instance v0, Lh5;

    .line 144
    .line 145
    iget-object v1, p0, Li5;->z:Lne1;

    .line 146
    .line 147
    invoke-direct {v0, v1, v3, v8}, Lh5;-><init>(Lne1;Ldh0;I)V

    .line 148
    .line 149
    .line 150
    iput v4, p0, Li5;->r:I

    .line 151
    .line 152
    invoke-static {p1, v0, p0}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    if-ne p0, v9, :cond_8

    .line 157
    .line 158
    :goto_3
    return-object v9

    .line 159
    :cond_8
    :goto_4
    sget-object p0, Lt64;->a:Lt64;

    .line 160
    .line 161
    return-object p0
.end method

.class public final Lwc4;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public r:I

.field public final synthetic s:Z

.field public final synthetic t:Ljava/lang/String;

.field public final synthetic u:Ly84;

.field public final synthetic v:Lv43;

.field public final synthetic w:Ln8;

.field public final synthetic x:Lps;

.field public final synthetic y:Lpe1;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ly84;Lv43;Ln8;Lps;Lpe1;Ldh0;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lwc4;->s:Z

    .line 2
    .line 3
    iput-object p2, p0, Lwc4;->t:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lwc4;->u:Ly84;

    .line 6
    .line 7
    iput-object p4, p0, Lwc4;->v:Lv43;

    .line 8
    .line 9
    iput-object p5, p0, Lwc4;->w:Ln8;

    .line 10
    .line 11
    iput-object p6, p0, Lwc4;->x:Lps;

    .line 12
    .line 13
    iput-object p7, p0, Lwc4;->y:Lpe1;

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-direct {p0, p1, p8}, Lbv3;-><init>(ILdh0;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    move-object v8, p1

    .line 2
    check-cast v8, Ldh0;

    .line 3
    .line 4
    new-instance v0, Lwc4;

    .line 5
    .line 6
    iget-object v6, p0, Lwc4;->x:Lps;

    .line 7
    .line 8
    iget-object v7, p0, Lwc4;->y:Lpe1;

    .line 9
    .line 10
    iget-boolean v1, p0, Lwc4;->s:Z

    .line 11
    .line 12
    iget-object v2, p0, Lwc4;->t:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v3, p0, Lwc4;->u:Ly84;

    .line 15
    .line 16
    iget-object v4, p0, Lwc4;->v:Lv43;

    .line 17
    .line 18
    iget-object v5, p0, Lwc4;->w:Ln8;

    .line 19
    .line 20
    invoke-direct/range {v0 .. v8}, Lwc4;-><init>(ZLjava/lang/String;Ly84;Lv43;Ln8;Lps;Lpe1;Ldh0;)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lt64;->a:Lt64;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lwc4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lwc4;->r:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lt64;->a:Lt64;

    .line 5
    .line 6
    iget-object v3, p0, Lwc4;->x:Lps;

    .line 7
    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x1

    .line 11
    sget-object v7, Lri0;->n:Lri0;

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    if-eq v0, v6, :cond_2

    .line 16
    .line 17
    if-eq v0, v5, :cond_1

    .line 18
    .line 19
    if-ne v0, v4, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_5

    .line 25
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_3
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-boolean p1, p0, Lwc4;->s:Z

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    iget-object v8, p0, Lwc4;->v:Lv43;

    .line 46
    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    sget-object p1, Lez3;->a:Lra3;

    .line 50
    .line 51
    iget-object v9, p0, Lwc4;->u:Ly84;

    .line 52
    .line 53
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    iget-object v10, v8, Lv43;->a:Ljava/lang/String;

    .line 57
    .line 58
    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lra3;->m([Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lwc4;->w:Ln8;

    .line 67
    .line 68
    invoke-virtual {p1, v9, v8}, Ln8;->h(Ly84;Lv43;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    sget-object p1, Lez3;->a:Lra3;

    .line 73
    .line 74
    new-array v0, v0, [Ljava/lang/Object;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    iget-object p1, v8, Lv43;->a:Ljava/lang/String;

    .line 83
    .line 84
    iput v6, p0, Lwc4;->r:I

    .line 85
    .line 86
    invoke-virtual {v3}, Lps;->a()Llm0;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v8, Lns;

    .line 91
    .line 92
    invoke-direct {v8, v6, p1, v1}, Lns;-><init>(ZLjava/lang/String;Ldh0;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v8, p0}, Lht4;->o(Llm0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-ne p1, v7, :cond_5

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    move-object p1, v2

    .line 103
    :goto_1
    if-ne p1, v7, :cond_6

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_6
    :goto_2
    iput v5, p0, Lwc4;->r:I

    .line 107
    .line 108
    invoke-virtual {v3, p0}, Lps;->h(Lfh0;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-ne p1, v7, :cond_7

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_7
    :goto_3
    iput v4, p0, Lwc4;->r:I

    .line 116
    .line 117
    iget-object p1, p0, Lwc4;->y:Lpe1;

    .line 118
    .line 119
    invoke-interface {p1, p0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    if-ne p0, v7, :cond_8

    .line 124
    .line 125
    :goto_4
    return-object v7

    .line 126
    :cond_8
    :goto_5
    return-object v2
.end method

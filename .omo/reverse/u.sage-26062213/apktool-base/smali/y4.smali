.class public final Ly4;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public r:I

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:Ln8;

.field public final synthetic u:Ly3;

.field public final synthetic v:Lps;

.field public final synthetic w:Landroid/content/Context;

.field public final synthetic x:Lh4;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ln8;Ly3;Lps;Landroid/content/Context;Lh4;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly4;->s:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Ly4;->t:Ln8;

    .line 4
    .line 5
    iput-object p3, p0, Ly4;->u:Ly3;

    .line 6
    .line 7
    iput-object p4, p0, Ly4;->v:Lps;

    .line 8
    .line 9
    iput-object p5, p0, Ly4;->w:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p6, p0, Ly4;->x:Lh4;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-direct {p0, p1, p7}, Lbv3;-><init>(ILdh0;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Ldh0;

    .line 3
    .line 4
    new-instance v0, Ly4;

    .line 5
    .line 6
    iget-object v5, p0, Ly4;->w:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v6, p0, Ly4;->x:Lh4;

    .line 9
    .line 10
    iget-object v1, p0, Ly4;->s:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, p0, Ly4;->t:Ln8;

    .line 13
    .line 14
    iget-object v3, p0, Ly4;->u:Ly3;

    .line 15
    .line 16
    iget-object v4, p0, Ly4;->v:Lps;

    .line 17
    .line 18
    invoke-direct/range {v0 .. v7}, Ly4;-><init>(Ljava/lang/String;Ln8;Ly3;Lps;Landroid/content/Context;Lh4;Ldh0;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lt64;->a:Lt64;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ly4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Ly4;->u:Ly3;

    .line 2
    .line 3
    iget-object v0, v0, Ly3;->a:Ly84;

    .line 4
    .line 5
    iget v1, p0, Ly4;->r:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iget-object v3, p0, Ly4;->v:Lps;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x3

    .line 12
    const/4 v6, 0x2

    .line 13
    const/4 v7, 0x1

    .line 14
    sget-object v8, Lri0;->n:Lri0;

    .line 15
    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    if-eq v1, v7, :cond_2

    .line 19
    .line 20
    if-eq v1, v6, :cond_1

    .line 21
    .line 22
    if-ne v1, v5, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_3

    .line 28
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v2

    .line 34
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lez3;->a:Lra3;

    .line 46
    .line 47
    new-array v1, v4, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Ly4;->t:Ln8;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ln8;->e(Ly84;)V

    .line 58
    .line 59
    .line 60
    iput v7, p0, Ly4;->r:I

    .line 61
    .line 62
    invoke-virtual {v3, p0}, Lps;->h(Lfh0;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-ne p1, v8, :cond_4

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    :goto_0
    iput v6, p0, Ly4;->r:I

    .line 70
    .line 71
    invoke-virtual {v3, v4, p0}, Lps;->i(ZLbv3;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-ne p1, v8, :cond_5

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_5
    :goto_1
    iget-object p1, p0, Ly4;->w:Landroid/content/Context;

    .line 79
    .line 80
    invoke-static {p1, v0}, Lmt1;->T(Landroid/content/Context;Ly84;)V

    .line 81
    .line 82
    .line 83
    sget-object p1, Lzu0;->a:Lzp0;

    .line 84
    .line 85
    sget-object p1, Ln92;->a:Lxi1;

    .line 86
    .line 87
    new-instance v0, Lx4;

    .line 88
    .line 89
    iget-object v1, p0, Ly4;->x:Lh4;

    .line 90
    .line 91
    invoke-direct {v0, v1, v2, v4}, Lx4;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 92
    .line 93
    .line 94
    iput v5, p0, Ly4;->r:I

    .line 95
    .line 96
    invoke-static {p1, v0, p0}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    if-ne p0, v8, :cond_6

    .line 101
    .line 102
    :goto_2
    return-object v8

    .line 103
    :cond_6
    :goto_3
    sget-object p0, Lt64;->a:Lt64;

    .line 104
    .line 105
    return-object p0
.end method

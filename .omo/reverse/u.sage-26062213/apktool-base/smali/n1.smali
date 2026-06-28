.class public abstract Ln1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/io/Serializable;

.field public final c:Ljava/lang/Object;


# direct methods
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
    iput-object p1, p0, Ln1;->a:Ljava/lang/Object;

    .line 13
    .line 14
    new-instance p1, Lrq;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {p1, p0, v0}, Lrq;-><init>(Ln1;I)V

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
    iput-object v0, p0, Ln1;->b:Ljava/io/Serializable;

    .line 26
    .line 27
    new-instance p1, Lrq;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-direct {p1, p0, v0}, Lrq;-><init>(Ln1;I)V

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
    iput-object v0, p0, Ln1;->c:Ljava/lang/Object;

    .line 39
    .line 40
    return-void
.end method

.method public constructor <init>(Lzj3;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Ln1;->a:Ljava/lang/Object;

    .line 47
    new-instance p1, Lb40;

    const/16 v0, 0x80

    invoke-direct {p1, v0}, Lb40;-><init>(I)V

    iput-object p1, p0, Ln1;->b:Ljava/io/Serializable;

    .line 48
    sget-object p1, Lmj1;->C:Lmj1;

    iput-object p1, p0, Ln1;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lzj3;I)V
    .locals 1

    .line 41
    sget-object p2, Lmj1;->C:Lmj1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ln1;->a:Ljava/lang/Object;

    .line 43
    iput-object p2, p0, Ln1;->c:Ljava/lang/Object;

    .line 44
    new-instance p1, Lb40;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Lb40;-><init>(I)V

    iput-object p1, p0, Ln1;->b:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public a()La81;
    .locals 0

    .line 1
    iget-object p0, p0, Ln1;->b:Ljava/io/Serializable;

    .line 2
    .line 3
    check-cast p0, Lnv3;

    .line 4
    .line 5
    invoke-virtual {p0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, La81;

    .line 10
    .line 11
    return-object p0
.end method

.method public b(Lfh0;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln1;->a()La81;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public abstract c()Llm0;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public e(Lbv3;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lez3;->a:Lra3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lw3;->l:Lw3;

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1}, Ln1;->g(Lw3;Lfh0;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    sget-object p1, Lri0;->n:Lri0;

    .line 19
    .line 20
    if-ne p0, p1, :cond_0

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    sget-object p0, Lt64;->a:Lt64;

    .line 24
    .line 25
    return-object p0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    return-object p1
.end method

.method public g(Lw3;Lfh0;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Lzq;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lzq;

    .line 7
    .line 8
    iget v1, v0, Lzq;->s:I

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
    iput v1, v0, Lzq;->s:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lzq;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lzq;-><init>(Ln1;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lzq;->q:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lzq;->s:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    if-ne v1, v3, :cond_1

    .line 35
    .line 36
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v4

    .line 46
    :cond_2
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Ln1;->a:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p2, Lpi1;

    .line 52
    .line 53
    invoke-virtual {p2, p1}, Lpi1;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    sget-object v1, Lez3;->a:Lra3;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lw3;->e()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    const/16 v5, 0x50

    .line 69
    .line 70
    invoke-static {v5, p1}, Lzs3;->X0(ILjava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    :cond_3
    const/16 p1, 0xc8

    .line 74
    .line 75
    invoke-static {p1, p2}, Lzs3;->X0(ILjava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    new-array p1, v2, [Ljava/lang/Object;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ln1;->c()Llm0;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    new-instance p1, Lar;

    .line 91
    .line 92
    invoke-direct {p1, p2, v4, v2}, Lar;-><init>(Ljava/lang/String;Ldh0;I)V

    .line 93
    .line 94
    .line 95
    iput v3, v0, Lzq;->s:I

    .line 96
    .line 97
    invoke-static {p0, p1, v0}, Lht4;->o(Llm0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    sget-object p1, Lri0;->n:Lri0;

    .line 102
    .line 103
    if-ne p0, p1, :cond_4

    .line 104
    .line 105
    return-object p1

    .line 106
    :cond_4
    :goto_1
    sget-object p0, Lez3;->a:Lra3;

    .line 107
    .line 108
    new-array p1, v2, [Ljava/lang/Object;

    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    sget-object p0, Lt64;->a:Lt64;

    .line 117
    .line 118
    return-object p0
.end method

.method public h(Le1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln1;->b:Ljava/io/Serializable;

    .line 2
    .line 3
    check-cast v0, Lb40;

    .line 4
    .line 5
    iget-object v1, p0, Ln1;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lzj3;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ln1;->i(Le1;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lim1;->headerIterator()Ljj1;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Ljj1;->a()Lgj1;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, p0, Ln1;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v3, Lmj1;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2}, Lmj1;->p(Lb40;Lgj1;)Lb40;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v1, v2}, Lzj3;->e(Lb40;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    iput p0, v0, Lb40;->o:I

    .line 43
    .line 44
    invoke-interface {v1, v0}, Lzj3;->e(Lb40;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public abstract i(Le1;)V
.end method

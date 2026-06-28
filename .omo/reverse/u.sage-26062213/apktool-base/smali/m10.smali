.class public final Lm10;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Llm0;

.field public final b:Lnv3;

.field public final c:Lnv3;

.field public final d:Lnv3;

.field public final e:Lnv3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ly84;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x3

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    if-ne v0, v3, :cond_0

    .line 20
    .line 21
    sget-object v0, Ln10;->c:Lqx2;

    .line 22
    .line 23
    sget-object v4, Ln10;->a:[Lkx1;

    .line 24
    .line 25
    aget-object v4, v4, v2

    .line 26
    .line 27
    invoke-virtual {v0, p1, v4}, Lqx2;->a(Ljava/lang/Object;Lkx1;)Lpx2;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p0, "Calendar sync is not supported for "

    .line 33
    .line 34
    invoke-static {p2, p0}, Lmk0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    throw p0

    .line 39
    :cond_1
    sget-object v0, Ln10;->b:Lqx2;

    .line 40
    .line 41
    sget-object v4, Ln10;->a:[Lkx1;

    .line 42
    .line 43
    aget-object v4, v4, v1

    .line 44
    .line 45
    invoke-virtual {v0, p1, v4}, Lqx2;->a(Ljava/lang/Object;Lkx1;)Lpx2;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :goto_0
    iput-object p1, p0, Lm10;->a:Llm0;

    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string p2, "CalendarSyncDataStore["

    .line 56
    .line 57
    const-string v0, "]"

    .line 58
    .line 59
    invoke-static {p2, p1, v0}, Ldi0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    new-instance p1, Lf10;

    .line 63
    .line 64
    invoke-direct {p1, p0, v1}, Lf10;-><init>(Lm10;I)V

    .line 65
    .line 66
    .line 67
    new-instance p2, Lnv3;

    .line 68
    .line 69
    invoke-direct {p2, p1}, Lnv3;-><init>(Lne1;)V

    .line 70
    .line 71
    .line 72
    iput-object p2, p0, Lm10;->b:Lnv3;

    .line 73
    .line 74
    new-instance p1, Lf10;

    .line 75
    .line 76
    invoke-direct {p1, p0, v2}, Lf10;-><init>(Lm10;I)V

    .line 77
    .line 78
    .line 79
    new-instance p2, Lnv3;

    .line 80
    .line 81
    invoke-direct {p2, p1}, Lnv3;-><init>(Lne1;)V

    .line 82
    .line 83
    .line 84
    iput-object p2, p0, Lm10;->c:Lnv3;

    .line 85
    .line 86
    new-instance p1, Lf10;

    .line 87
    .line 88
    const/4 p2, 0x2

    .line 89
    invoke-direct {p1, p0, p2}, Lf10;-><init>(Lm10;I)V

    .line 90
    .line 91
    .line 92
    new-instance p2, Lnv3;

    .line 93
    .line 94
    invoke-direct {p2, p1}, Lnv3;-><init>(Lne1;)V

    .line 95
    .line 96
    .line 97
    iput-object p2, p0, Lm10;->d:Lnv3;

    .line 98
    .line 99
    new-instance p1, Lf10;

    .line 100
    .line 101
    invoke-direct {p1, p0, v3}, Lf10;-><init>(Lm10;I)V

    .line 102
    .line 103
    .line 104
    new-instance p2, Lnv3;

    .line 105
    .line 106
    invoke-direct {p2, p1}, Lnv3;-><init>(Lne1;)V

    .line 107
    .line 108
    .line 109
    iput-object p2, p0, Lm10;->e:Lnv3;

    .line 110
    .line 111
    return-void
.end method


# virtual methods
.method public final a(Lfh0;)Ljava/io/Serializable;
    .locals 4

    .line 1
    instance-of v0, p1, Lh10;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lh10;

    .line 7
    .line 8
    iget v1, v0, Lh10;->s:I

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
    iput v1, v0, Lh10;->s:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lh10;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lh10;-><init>(Lm10;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lh10;->q:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lh10;->s:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 39
    .line 40
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    return-object p0

    .line 45
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lm10;->e:Lnv3;

    .line 49
    .line 50
    invoke-virtual {p0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, La81;

    .line 55
    .line 56
    iput v2, v0, Lh10;->s:I

    .line 57
    .line 58
    invoke-static {p0, v0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    sget-object p0, Lri0;->n:Lri0;

    .line 63
    .line 64
    if-ne p1, p0, :cond_3

    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 68
    .line 69
    if-eqz p1, :cond_6

    .line 70
    .line 71
    const-string p0, ","

    .line 72
    .line 73
    filled-new-array {p0}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p1, p0}, Lzs3;->Q0(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    move-object v1, v0

    .line 101
    check-cast v1, Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v1}, Lzs3;->I0(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_4

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_5
    return-object p1

    .line 114
    :cond_6
    sget-object p0, Lg01;->n:Lg01;

    .line 115
    .line 116
    return-object p0
.end method

.method public final b(Lfh0;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Li10;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Li10;

    .line 7
    .line 8
    iget v1, v0, Li10;->s:I

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
    iput v1, v0, Li10;->s:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Li10;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Li10;-><init>(Lm10;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Li10;->q:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Li10;->s:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 39
    .line 40
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    return-object p0

    .line 45
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lm10;->a:Llm0;

    .line 49
    .line 50
    invoke-interface {p0}, Llm0;->b()La81;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    iput v2, v0, Li10;->s:I

    .line 55
    .line 56
    invoke-static {p0, v0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    sget-object p0, Lri0;->n:Lri0;

    .line 61
    .line 62
    if-ne p1, p0, :cond_3

    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_3
    :goto_1
    check-cast p1, Lhg2;

    .line 66
    .line 67
    sget-object p0, Lo10;->e:Lrx2;

    .line 68
    .line 69
    invoke-virtual {p1, p0}, Lhg2;->c(Lrx2;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method

.method public final c(Ljava/lang/String;Lfh0;)Ljava/lang/Object;
    .locals 3

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
    new-instance v0, Lar;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-direct {v0, p1, v1, v2}, Lar;-><init>(Ljava/lang/String;Ldh0;I)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lm10;->a:Llm0;

    .line 20
    .line 21
    invoke-static {p0, v0, p2}, Lht4;->o(Llm0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-object p1, Lri0;->n:Lri0;

    .line 26
    .line 27
    if-ne p0, p1, :cond_0

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    sget-object p0, Lt64;->a:Lt64;

    .line 31
    .line 32
    return-object p0
.end method

.method public final d(Ljava/lang/String;Lbv3;)Ljava/lang/Object;
    .locals 3

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
    new-instance v0, Lar;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x4

    .line 16
    invoke-direct {v0, p1, v1, v2}, Lar;-><init>(Ljava/lang/String;Ldh0;I)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lm10;->a:Llm0;

    .line 20
    .line 21
    invoke-static {p0, v0, p2}, Lht4;->o(Llm0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-object p1, Lri0;->n:Lri0;

    .line 26
    .line 27
    if-ne p0, p1, :cond_0

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    sget-object p0, Lt64;->a:Lt64;

    .line 31
    .line 32
    return-object p0
.end method

.method public final e(ZLfh0;)Ljava/lang/Object;
    .locals 3

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
    new-instance v0, Lms;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-direct {v0, p1, v1, v2}, Lms;-><init>(ZLdh0;I)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lm10;->a:Llm0;

    .line 20
    .line 21
    invoke-static {p0, v0, p2}, Lht4;->o(Llm0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-object p1, Lri0;->n:Lri0;

    .line 26
    .line 27
    if-ne p0, p1, :cond_0

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    sget-object p0, Lt64;->a:Lt64;

    .line 31
    .line 32
    return-object p0
.end method

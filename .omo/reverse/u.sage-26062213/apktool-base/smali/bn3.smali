.class public final Lbn3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lvs1;


# instance fields
.field public final a:Lhh2;

.field public final b:Ljj;

.field public final c:Lmt;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lhh2;

    .line 5
    .line 6
    invoke-direct {p1}, Lhh2;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lbn3;->a:Lhh2;

    .line 10
    .line 11
    new-instance p1, Ljj;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, v0}, Ljj;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lbn3;->b:Ljj;

    .line 18
    .line 19
    new-instance p1, Lkc;

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    const/4 v1, 0x2

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {p1, v0, v2, v1}, Lkc;-><init>(ILdh0;I)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lmt;

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    invoke-direct {v0, v1, p1}, Lmt;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lbn3;->c:Lmt;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a(Lpe1;Lfh0;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Lzm3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lzm3;

    .line 7
    .line 8
    iget v1, v0, Lzm3;->u:I

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
    iput v1, v0, Lzm3;->u:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lzm3;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lzm3;-><init>(Lbn3;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lzm3;->s:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lzm3;->u:I

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    sget-object v5, Lri0;->n:Lri0;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    if-eq v1, v3, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p0, v0, Lzm3;->q:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lfh2;

    .line 43
    .line 44
    :try_start_0
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_3

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_4

    .line 50
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v4

    .line 56
    :cond_2
    iget-object p0, v0, Lzm3;->r:Lhh2;

    .line 57
    .line 58
    iget-object p1, v0, Lzm3;->q:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Lpe1;

    .line 61
    .line 62
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iput-object p1, v0, Lzm3;->q:Ljava/lang/Object;

    .line 70
    .line 71
    iget-object p0, p0, Lbn3;->a:Lhh2;

    .line 72
    .line 73
    iput-object p0, v0, Lzm3;->r:Lhh2;

    .line 74
    .line 75
    iput v3, v0, Lzm3;->u:I

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Lhh2;->j(Lfh0;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    if-ne p2, v5, :cond_4

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    :goto_1
    :try_start_1
    iput-object p0, v0, Lzm3;->q:Ljava/lang/Object;

    .line 85
    .line 86
    iput-object v4, v0, Lzm3;->r:Lhh2;

    .line 87
    .line 88
    iput v2, v0, Lzm3;->u:I

    .line 89
    .line 90
    invoke-interface {p1, v0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    if-ne p2, v5, :cond_5

    .line 95
    .line 96
    :goto_2
    return-object v5

    .line 97
    :cond_5
    :goto_3
    invoke-interface {p0, v4}, Lfh2;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return-object p2

    .line 101
    :goto_4
    invoke-interface {p0, v4}, Lfh2;->b(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    throw p1
.end method

.method public final b(Lfh0;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lbn3;->b:Ljj;

    .line 2
    .line 3
    iget-object p0, p0, Ljj;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    new-instance p1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

.method public final c(Len0;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lbn3;->b:Ljj;

    .line 2
    .line 3
    iget-object p0, p0, Ljj;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    new-instance p1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

.method public final d()La81;
    .locals 0

    .line 1
    iget-object p0, p0, Lbn3;->c:Lmt;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e(Ldf1;Lfh0;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lan3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lan3;

    .line 7
    .line 8
    iget v1, v0, Lan3;->u:I

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
    iput v1, v0, Lan3;->u:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lan3;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lan3;-><init>(Lbn3;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lan3;->s:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lan3;->u:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    iget-boolean p0, v0, Lan3;->r:Z

    .line 36
    .line 37
    iget-object p1, v0, Lan3;->q:Lhh2;

    .line 38
    .line 39
    :try_start_0
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p2

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v3

    .line 51
    :cond_2
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lbn3;->a:Lhh2;

    .line 55
    .line 56
    invoke-virtual {p0}, Lhh2;->g()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    :try_start_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iput-object p0, v0, Lan3;->q:Lhh2;

    .line 65
    .line 66
    iput-boolean p2, v0, Lan3;->r:Z

    .line 67
    .line 68
    iput v2, v0, Lan3;->u:I

    .line 69
    .line 70
    invoke-interface {p1, v1, v0}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    sget-object v0, Lri0;->n:Lri0;

    .line 75
    .line 76
    if-ne p1, v0, :cond_3

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_3
    move-object v4, p1

    .line 80
    move-object p1, p0

    .line 81
    move p0, p2

    .line 82
    move-object p2, v4

    .line 83
    :goto_1
    if-eqz p0, :cond_4

    .line 84
    .line 85
    invoke-interface {p1, v3}, Lfh2;->b(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_4
    return-object p2

    .line 89
    :catchall_1
    move-exception p1

    .line 90
    move-object v4, p1

    .line 91
    move-object p1, p0

    .line 92
    move p0, p2

    .line 93
    move-object p2, v4

    .line 94
    :goto_2
    if-eqz p0, :cond_5

    .line 95
    .line 96
    invoke-interface {p1, v3}, Lfh2;->b(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_5
    throw p2
.end method

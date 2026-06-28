.class public abstract Ljf0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "ConstraintTrkngWrkr"

    .line 2
    .line 3
    invoke-static {v0}, Lt72;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Ljf0;->a:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public static final a(Lct2;Log4;Lfh0;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lif0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lif0;

    .line 7
    .line 8
    iget v1, v0, Lif0;->r:I

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
    iput v1, v0, Lif0;->r:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lif0;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lfh0;-><init>(Ldh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lif0;->q:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lif0;->r:I

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
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_2
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lct2;->k(Log4;)La81;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    new-instance p2, Lx4;

    .line 53
    .line 54
    invoke-direct {p2, p1, v2, v3}, Lx4;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Lk81;

    .line 58
    .line 59
    const/4 v1, 0x2

    .line 60
    invoke-direct {p1, p0, p2, v1}, Lk81;-><init>(La81;Ldf1;I)V

    .line 61
    .line 62
    .line 63
    new-instance p0, Lmt;

    .line 64
    .line 65
    invoke-direct {p0, v3, p1}, Lmt;-><init>(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iput v3, v0, Lif0;->r:I

    .line 69
    .line 70
    invoke-static {p0, v0}, Lqj0;->H(La81;Ldh0;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    sget-object p0, Lri0;->n:Lri0;

    .line 75
    .line 76
    if-ne p2, p0, :cond_3

    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_3
    :goto_1
    check-cast p2, Lrf0;

    .line 80
    .line 81
    iget p0, p2, Lrf0;->a:I

    .line 82
    .line 83
    new-instance p1, Ljava/lang/Integer;

    .line 84
    .line 85
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 86
    .line 87
    .line 88
    return-object p1
.end method

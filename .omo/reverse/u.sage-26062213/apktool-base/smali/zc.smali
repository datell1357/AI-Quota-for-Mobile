.class public final Lzc;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public r:I

.field public final synthetic s:Z

.field public final synthetic t:Lbd;

.field public final synthetic u:J


# direct methods
.method public constructor <init>(ZLbd;JLdh0;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lzc;->s:Z

    .line 2
    .line 3
    iput-object p2, p0, Lzc;->t:Lbd;

    .line 4
    .line 5
    iput-wide p3, p0, Lzc;->u:J

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Lbv3;-><init>(ILdh0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lqi0;

    .line 2
    .line 3
    check-cast p2, Ldh0;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p1}, Lzc;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lzc;

    .line 10
    .line 11
    sget-object p1, Lt64;->a:Lt64;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lzc;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 6

    .line 1
    new-instance v0, Lzc;

    .line 2
    .line 3
    iget-object v2, p0, Lzc;->t:Lbd;

    .line 4
    .line 5
    iget-wide v3, p0, Lzc;->u:J

    .line 6
    .line 7
    iget-boolean v1, p0, Lzc;->s:Z

    .line 8
    .line 9
    move-object v5, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Lzc;-><init>(ZLbd;JLdh0;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lzc;->r:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-eq v0, v2, :cond_1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 16
    .line 17
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lzc;->t:Lbd;

    .line 30
    .line 31
    iget-object v3, p1, Lbd;->n:Ltk2;

    .line 32
    .line 33
    sget-object p1, Lri0;->n:Lri0;

    .line 34
    .line 35
    iget-boolean v0, p0, Lzc;->s:Z

    .line 36
    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    iput v2, p0, Lzc;->r:I

    .line 40
    .line 41
    const-wide/16 v4, 0x0

    .line 42
    .line 43
    iget-wide v6, p0, Lzc;->u:J

    .line 44
    .line 45
    move-object v8, p0

    .line 46
    invoke-virtual/range {v3 .. v8}, Ltk2;->a(JJLfh0;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    if-ne p0, p1, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    move-object p1, p0

    .line 54
    :goto_0
    check-cast p1, Lra4;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    move-object v8, p0

    .line 61
    iput v1, v8, Lzc;->r:I

    .line 62
    .line 63
    iget-wide v4, v8, Lzc;->u:J

    .line 64
    .line 65
    const-wide/16 v6, 0x0

    .line 66
    .line 67
    invoke-virtual/range {v3 .. v8}, Ltk2;->a(JJLfh0;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    if-ne p0, p1, :cond_5

    .line 72
    .line 73
    :goto_1
    return-object p1

    .line 74
    :cond_5
    move-object p1, p0

    .line 75
    :goto_2
    check-cast p1, Lra4;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    :goto_3
    sget-object p0, Lt64;->a:Lt64;

    .line 81
    .line 82
    return-object p0
.end method

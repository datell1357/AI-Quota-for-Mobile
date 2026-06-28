.class public final Lqr3;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lff1;


# instance fields
.field public r:I

.field public synthetic s:Lb81;

.field public synthetic t:I

.field public final synthetic u:Lrr3;


# direct methods
.method public constructor <init>(Lrr3;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqr3;->u:Lrr3;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lb81;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    check-cast p3, Ldh0;

    .line 10
    .line 11
    new-instance v0, Lqr3;

    .line 12
    .line 13
    iget-object p0, p0, Lqr3;->u:Lrr3;

    .line 14
    .line 15
    invoke-direct {v0, p0, p3}, Lqr3;-><init>(Lrr3;Ldh0;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, v0, Lqr3;->s:Lb81;

    .line 19
    .line 20
    iput p2, v0, Lqr3;->t:I

    .line 21
    .line 22
    sget-object p0, Lt64;->a:Lt64;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lqr3;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lqr3;->u:Lrr3;

    .line 2
    .line 3
    iget-wide v1, v0, Lrr3;->o:J

    .line 4
    .line 5
    iget v3, p0, Lqr3;->r:I

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x5

    .line 9
    const/4 v6, 0x4

    .line 10
    const/4 v7, 0x3

    .line 11
    const/4 v8, 0x2

    .line 12
    const/4 v9, 0x1

    .line 13
    sget-object v10, Lri0;->n:Lri0;

    .line 14
    .line 15
    if-eqz v3, :cond_5

    .line 16
    .line 17
    if-eq v3, v9, :cond_4

    .line 18
    .line 19
    if-eq v3, v8, :cond_3

    .line 20
    .line 21
    if-eq v3, v7, :cond_2

    .line 22
    .line 23
    if-eq v3, v6, :cond_1

    .line 24
    .line 25
    if-ne v3, v5, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v4

    .line 34
    :cond_1
    iget-object v0, p0, Lqr3;->s:Lb81;

    .line 35
    .line 36
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_2
    iget-object v0, p0, Lqr3;->s:Lb81;

    .line 41
    .line 42
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    iget-object v0, p0, Lqr3;->s:Lb81;

    .line 47
    .line 48
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    :goto_0
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_5

    .line 56
    :cond_5
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lqr3;->s:Lb81;

    .line 60
    .line 61
    iget v3, p0, Lqr3;->t:I

    .line 62
    .line 63
    if-lez v3, :cond_6

    .line 64
    .line 65
    iput v9, p0, Lqr3;->r:I

    .line 66
    .line 67
    sget-object v0, Lmm3;->n:Lmm3;

    .line 68
    .line 69
    invoke-interface {p1, v0, p0}, Lb81;->m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-ne p0, v10, :cond_a

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_6
    iget-wide v11, v0, Lrr3;->n:J

    .line 77
    .line 78
    iput-object p1, p0, Lqr3;->s:Lb81;

    .line 79
    .line 80
    iput v8, p0, Lqr3;->r:I

    .line 81
    .line 82
    invoke-static {v11, v12, p0}, Lzf5;->A(JLdh0;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-ne v0, v10, :cond_7

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_7
    move-object v0, p1

    .line 90
    :goto_1
    const-wide/16 v8, 0x0

    .line 91
    .line 92
    cmp-long p1, v1, v8

    .line 93
    .line 94
    if-lez p1, :cond_9

    .line 95
    .line 96
    iput-object v0, p0, Lqr3;->s:Lb81;

    .line 97
    .line 98
    iput v7, p0, Lqr3;->r:I

    .line 99
    .line 100
    sget-object p1, Lmm3;->o:Lmm3;

    .line 101
    .line 102
    invoke-interface {v0, p1, p0}, Lb81;->m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-ne p1, v10, :cond_8

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_8
    :goto_2
    iput-object v0, p0, Lqr3;->s:Lb81;

    .line 110
    .line 111
    iput v6, p0, Lqr3;->r:I

    .line 112
    .line 113
    invoke-static {v1, v2, p0}, Lzf5;->A(JLdh0;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-ne p1, v10, :cond_9

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_9
    :goto_3
    iput-object v4, p0, Lqr3;->s:Lb81;

    .line 121
    .line 122
    iput v5, p0, Lqr3;->r:I

    .line 123
    .line 124
    sget-object p1, Lmm3;->p:Lmm3;

    .line 125
    .line 126
    invoke-interface {v0, p1, p0}, Lb81;->m(Ljava/lang/Object;Ldh0;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    if-ne p0, v10, :cond_a

    .line 131
    .line 132
    :goto_4
    return-object v10

    .line 133
    :cond_a
    :goto_5
    sget-object p0, Lt64;->a:Lt64;

    .line 134
    .line 135
    return-object p0
.end method

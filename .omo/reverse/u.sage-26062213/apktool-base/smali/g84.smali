.class public final Lg84;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:J

.field public synthetic u:Ljava/lang/Object;

.field public final synthetic v:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JLandroid/content/Context;Ldh0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg84;->r:I

    .line 15
    iput-wide p1, p0, Lg84;->t:J

    iput-object p3, p0, Lg84;->v:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method

.method public constructor <init>(Ln84;Ljava/lang/String;JLdh0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lg84;->r:I

    .line 3
    .line 4
    iput-object p1, p0, Lg84;->u:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lg84;->v:Ljava/lang/Object;

    .line 7
    .line 8
    iput-wide p3, p0, Lg84;->t:J

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1, p5}, Lbv3;-><init>(ILdh0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lg84;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lgz2;

    .line 9
    .line 10
    check-cast p2, Ldh0;

    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Lg84;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lg84;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lg84;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lqi0;

    .line 24
    .line 25
    check-cast p2, Ldh0;

    .line 26
    .line 27
    invoke-virtual {p0, p2, p1}, Lg84;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lg84;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lg84;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 10

    .line 1
    iget v0, p0, Lg84;->r:I

    .line 2
    .line 3
    iget-object v1, p0, Lg84;->v:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lg84;

    .line 9
    .line 10
    iget-wide v2, p0, Lg84;->t:J

    .line 11
    .line 12
    check-cast v1, Landroid/content/Context;

    .line 13
    .line 14
    invoke-direct {v0, v2, v3, v1, p1}, Lg84;-><init>(JLandroid/content/Context;Ldh0;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, v0, Lg84;->u:Ljava/lang/Object;

    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_0
    new-instance v4, Lg84;

    .line 21
    .line 22
    iget-object p2, p0, Lg84;->u:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v5, p2

    .line 25
    check-cast v5, Ln84;

    .line 26
    .line 27
    move-object v6, v1

    .line 28
    check-cast v6, Ljava/lang/String;

    .line 29
    .line 30
    iget-wide v7, p0, Lg84;->t:J

    .line 31
    .line 32
    move-object v9, p1

    .line 33
    invoke-direct/range {v4 .. v9}, Lg84;-><init>(Ln84;Ljava/lang/String;JLdh0;)V

    .line 34
    .line 35
    .line 36
    return-object v4

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lg84;->r:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 5
    .line 6
    sget-object v3, Lri0;->n:Lri0;

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    iget-object v5, p0, Lg84;->v:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v5, Landroid/content/Context;

    .line 15
    .line 16
    iget-object v0, p0, Lg84;->u:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lgz2;

    .line 19
    .line 20
    iget v6, p0, Lg84;->s:I

    .line 21
    .line 22
    iget-wide v7, p0, Lg84;->t:J

    .line 23
    .line 24
    if-eqz v6, :cond_1

    .line 25
    .line 26
    if-ne v6, v4, :cond_0

    .line 27
    .line 28
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-static {v2}, Lk21;->n(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v7, v8, v5}, Lkt4;->x(JLandroid/content/Context;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Lgz2;->setValue(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    const-wide/16 v1, 0x0

    .line 47
    .line 48
    cmp-long p1, v7, v1

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    sub-long/2addr v1, v7

    .line 57
    const-wide/32 v9, 0xea60

    .line 58
    .line 59
    .line 60
    cmp-long p1, v1, v9

    .line 61
    .line 62
    if-gez p1, :cond_2

    .line 63
    .line 64
    const-wide/16 v9, 0x2710

    .line 65
    .line 66
    :cond_2
    iput-object v0, p0, Lg84;->u:Ljava/lang/Object;

    .line 67
    .line 68
    iput v4, p0, Lg84;->s:I

    .line 69
    .line 70
    invoke-static {v9, v10, p0}, Lzf5;->A(JLdh0;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-ne p1, v3, :cond_3

    .line 75
    .line 76
    move-object v1, v3

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    :goto_1
    invoke-static {v7, v8, v5}, Lkt4;->x(JLandroid/content/Context;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0, p1}, Lgz2;->setValue(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    sget-object v1, Lt64;->a:Lt64;

    .line 87
    .line 88
    :goto_2
    return-object v1

    .line 89
    :pswitch_0
    iget v0, p0, Lg84;->s:I

    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    if-ne v0, v4, :cond_5

    .line 94
    .line 95
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_5
    invoke-static {v2}, Lk21;->n(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    move-object p1, v1

    .line 103
    goto :goto_3

    .line 104
    :cond_6
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lg84;->u:Ljava/lang/Object;

    .line 108
    .line 109
    move-object v7, p1

    .line 110
    check-cast v7, Ln84;

    .line 111
    .line 112
    move-object v10, v5

    .line 113
    check-cast v10, Ljava/lang/String;

    .line 114
    .line 115
    iput v4, p0, Lg84;->s:I

    .line 116
    .line 117
    new-instance v6, Lq;

    .line 118
    .line 119
    const/4 v11, 0x0

    .line 120
    const/4 v12, 0x3

    .line 121
    iget-wide v8, p0, Lg84;->t:J

    .line 122
    .line 123
    invoke-direct/range {v6 .. v12}, Lq;-><init>(Ljava/lang/Object;JLjava/lang/Object;Ldh0;I)V

    .line 124
    .line 125
    .line 126
    invoke-static {v6, p0}, Ldm0;->r(Ldf1;Ldh0;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-ne p1, v3, :cond_7

    .line 131
    .line 132
    move-object p1, v3

    .line 133
    :cond_7
    :goto_3
    return-object p1

    .line 134
    nop

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

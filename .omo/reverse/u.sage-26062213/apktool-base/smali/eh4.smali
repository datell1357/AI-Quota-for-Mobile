.class public final Leh4;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:Lhh4;


# direct methods
.method public synthetic constructor <init>(Lhh4;Ldh0;I)V
    .locals 0

    .line 1
    iput p3, p0, Leh4;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Leh4;->t:Lhh4;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Leh4;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    check-cast p1, Lqi0;

    .line 6
    .line 7
    check-cast p2, Ldh0;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Leh4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Leh4;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Leh4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Leh4;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Leh4;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Leh4;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ldh0;Ljava/lang/Object;)Ldh0;
    .locals 1

    .line 1
    iget p2, p0, Leh4;->r:I

    .line 2
    .line 3
    iget-object p0, p0, Leh4;->t:Lhh4;

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p2, Leh4;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p2, p0, p1, v0}, Leh4;-><init>(Lhh4;Ldh0;I)V

    .line 12
    .line 13
    .line 14
    return-object p2

    .line 15
    :pswitch_0
    new-instance p2, Leh4;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p2, p0, p1, v0}, Leh4;-><init>(Lhh4;Ldh0;I)V

    .line 19
    .line 20
    .line 21
    return-object p2

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Leh4;->r:I

    .line 2
    .line 3
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 4
    .line 5
    sget-object v2, Lri0;->n:Lri0;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, p0, Leh4;->t:Lhh4;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget v0, p0, Leh4;->s:I

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    if-ne v0, v3, :cond_0

    .line 19
    .line 20
    :try_start_0
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catch Lwg4; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :catch_0
    move-exception p0

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    invoke-static {v1}, Lk21;->n(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    move-object v2, v5

    .line 32
    goto :goto_4

    .line 33
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :try_start_1
    iget-object p1, v4, Lhh4;->m:Lvu1;

    .line 37
    .line 38
    new-instance v0, Leh4;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-direct {v0, v4, v5, v1}, Leh4;-><init>(Lhh4;Ldh0;I)V

    .line 42
    .line 43
    .line 44
    iput v3, p0, Leh4;->s:I

    .line 45
    .line 46
    invoke-static {p1, v0, p0}, Lca;->O(Lhi0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-ne p1, v2, :cond_2

    .line 51
    .line 52
    goto :goto_4

    .line 53
    :cond_2
    :goto_0
    check-cast p1, Ldh4;
    :try_end_1
    .catch Lwg4; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :goto_1
    sget-object p1, Lih4;->a:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {}, Lt72;->g()Lt72;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "Unexpected error in WorkerWrapper"

    .line 63
    .line 64
    invoke-virtual {v0, p1, v1, p0}, Lt72;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    new-instance p1, Lah4;

    .line 68
    .line 69
    invoke-direct {p1}, Lah4;-><init>()V

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :catch_1
    new-instance p1, Lah4;

    .line 74
    .line 75
    invoke-direct {p1}, Lah4;-><init>()V

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :goto_2
    new-instance p1, Lch4;

    .line 80
    .line 81
    iget p0, p0, Lwg4;->n:I

    .line 82
    .line 83
    invoke-direct {p1, p0}, Lch4;-><init>(I)V

    .line 84
    .line 85
    .line 86
    :goto_3
    iget-object p0, v4, Lhh4;->h:Landroidx/work/impl/WorkDatabase;

    .line 87
    .line 88
    new-instance v0, Lwc0;

    .line 89
    .line 90
    const/4 v1, 0x2

    .line 91
    invoke-direct {v0, v1, p1, v4}, Lwc0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lga3;->n(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    :goto_4
    return-object v2

    .line 102
    :pswitch_0
    iget v0, p0, Leh4;->s:I

    .line 103
    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    if-ne v0, v3, :cond_3

    .line 107
    .line 108
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_3
    invoke-static {v1}, Lk21;->n(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    move-object p1, v5

    .line 116
    goto :goto_5

    .line 117
    :cond_4
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    iput v3, p0, Leh4;->s:I

    .line 121
    .line 122
    invoke-static {v4, p0}, Lhh4;->a(Lhh4;Lfh0;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-ne p1, v2, :cond_5

    .line 127
    .line 128
    move-object p1, v2

    .line 129
    :cond_5
    :goto_5
    return-object p1

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

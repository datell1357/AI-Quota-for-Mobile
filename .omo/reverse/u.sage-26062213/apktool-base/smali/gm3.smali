.class public final Lgm3;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:Lkm3;


# direct methods
.method public synthetic constructor <init>(Lkm3;Ldh0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lgm3;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Lgm3;->t:Lkm3;

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
    iget v0, p0, Lgm3;->r:I

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
    invoke-virtual {p0, p2, p1}, Lgm3;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lgm3;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lgm3;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Lgm3;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lgm3;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lgm3;->q(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget p2, p0, Lgm3;->r:I

    .line 2
    .line 3
    iget-object p0, p0, Lgm3;->t:Lkm3;

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p2, Lgm3;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p2, p0, p1, v0}, Lgm3;-><init>(Lkm3;Ldh0;I)V

    .line 12
    .line 13
    .line 14
    return-object p2

    .line 15
    :pswitch_0
    new-instance p2, Lgm3;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p2, p0, p1, v0}, Lgm3;-><init>(Lkm3;Ldh0;I)V

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
    .locals 8

    .line 1
    iget v0, p0, Lgm3;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 7
    .line 8
    sget-object v4, Lri0;->n:Lri0;

    .line 9
    .line 10
    iget-object v5, p0, Lgm3;->t:Lkm3;

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lgm3;->s:I

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    if-ne v0, v6, :cond_0

    .line 22
    .line 23
    :try_start_0
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :catch_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {v3}, Lk21;->n(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    move-object v1, v7

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :try_start_1
    iget-object p1, v5, Lkm3;->e:Llm0;

    .line 38
    .line 39
    new-instance v0, Lim3;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-direct {v0, v5, v7, v3}, Lim3;-><init>(Lkm3;Ldh0;I)V

    .line 43
    .line 44
    .line 45
    iput v6, p0, Lgm3;->s:I

    .line 46
    .line 47
    invoke-interface {p1, v0, p0}, Llm0;->a(Ldf1;Ldh0;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    if-ne p0, v4, :cond_2

    .line 52
    .line 53
    move-object v1, v4

    .line 54
    goto :goto_1

    .line 55
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v0, "App backgrounded, failed to update data. Message: "

    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const-string p1, "FirebaseSessions"

    .line 74
    .line 75
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    iget-object p0, v5, Lkm3;->h:Lgj3;

    .line 79
    .line 80
    if-eqz p0, :cond_3

    .line 81
    .line 82
    iget-object p1, v5, Lkm3;->d:Liz3;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Liz3;->a()Lhz3;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p0, v7, p1, v7, v2}, Lgj3;->a(Lgj3;Llj3;Lhz3;Ljava/util/Map;I)Lgj3;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    iput-object p0, v5, Lkm3;->h:Lgj3;

    .line 96
    .line 97
    :cond_2
    :goto_1
    return-object v1

    .line 98
    :cond_3
    const-string p0, "localSessionData"

    .line 99
    .line 100
    invoke-static {p0}, Lnt1;->X(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v7

    .line 104
    :pswitch_0
    iget v0, p0, Lgm3;->s:I

    .line 105
    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    if-ne v0, v6, :cond_4

    .line 109
    .line 110
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    invoke-static {v3}, Lk21;->n(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    move-object v1, v7

    .line 118
    goto :goto_2

    .line 119
    :cond_5
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, v5, Lkm3;->e:Llm0;

    .line 123
    .line 124
    invoke-interface {p1}, Llm0;->b()La81;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    new-instance v0, Lt81;

    .line 129
    .line 130
    const/4 v3, 0x3

    .line 131
    invoke-direct {v0, v5, v7, v3}, Lt81;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 132
    .line 133
    .line 134
    new-instance v3, Lvq;

    .line 135
    .line 136
    const/4 v7, 0x2

    .line 137
    invoke-direct {v3, v7, p1, v0}, Lvq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    new-instance p1, Lt50;

    .line 141
    .line 142
    invoke-direct {p1, v2, v5}, Lt50;-><init>(ILjava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    iput v6, p0, Lgm3;->s:I

    .line 146
    .line 147
    invoke-virtual {v3, p1, p0}, Lvq;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    if-ne p0, v4, :cond_6

    .line 152
    .line 153
    move-object v1, v4

    .line 154
    :cond_6
    :goto_2
    return-object v1

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

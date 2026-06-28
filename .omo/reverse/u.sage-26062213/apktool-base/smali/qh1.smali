.class public final Lqh1;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:Lwh1;


# direct methods
.method public synthetic constructor <init>(Lwh1;Ldh0;I)V
    .locals 0

    .line 1
    iput p3, p0, Lqh1;->r:I

    .line 2
    .line 3
    iput-object p1, p0, Lqh1;->t:Lwh1;

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
    iget v0, p0, Lqh1;->r:I

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
    invoke-virtual {p0, p2, p1}, Lqh1;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lqh1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lqh1;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Lqh1;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lqh1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lqh1;->q(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget p2, p0, Lqh1;->r:I

    .line 2
    .line 3
    iget-object p0, p0, Lqh1;->t:Lwh1;

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p2, Lqh1;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p2, p0, p1, v0}, Lqh1;-><init>(Lwh1;Ldh0;I)V

    .line 12
    .line 13
    .line 14
    return-object p2

    .line 15
    :pswitch_0
    new-instance p2, Lqh1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p2, p0, p1, v0}, Lqh1;-><init>(Lwh1;Ldh0;I)V

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
    iget v0, p0, Lqh1;->r:I

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
    iget-object v4, p0, Lqh1;->t:Lwh1;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lqh1;->s:I

    .line 15
    .line 16
    sget-object v6, Lt64;->a:Lt64;

    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    if-ne v0, v3, :cond_0

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
    :cond_0
    invoke-static {v1}, Lk21;->n(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    move-object v2, v5

    .line 31
    goto :goto_3

    .line 32
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :try_start_1
    invoke-virtual {v4}, Lwh1;->f()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Low3;

    .line 40
    .line 41
    .line 42
    iget-object p1, v4, Lwh1;->c:Lm10;

    .line 43
    .line 44
    iput v3, p0, Lqh1;->s:I

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    sget-object v0, Lez3;->a:Lra3;

    .line 50
    .line 51
    new-array v1, v7, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p1, Lm10;->a:Llm0;

    .line 60
    .line 61
    new-instance v0, Lzr;

    .line 62
    .line 63
    const/4 v1, 0x2

    .line 64
    const/4 v3, 0x3

    .line 65
    invoke-direct {v0, v1, v5, v3}, Lzr;-><init>(ILdh0;I)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v0, p0}, Lht4;->o(Llm0;Ldf1;Ldh0;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    if-ne p0, v2, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move-object p0, v6

    .line 76
    :goto_0
    if-ne p0, v2, :cond_3

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_3
    :goto_1
    sget-object p0, Lez3;->a:Lra3;

    .line 80
    .line 81
    new-array p1, v7, [Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :catch_0
    sget-object p0, Lez3;->a:Lra3;

    .line 91
    .line 92
    new-array p1, v7, [Ljava/lang/Object;

    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lra3;->g([Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :goto_2
    move-object v2, v6

    .line 101
    :goto_3
    return-object v2

    .line 102
    :pswitch_0
    iget v0, p0, Lqh1;->s:I

    .line 103
    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    if-ne v0, v3, :cond_4

    .line 107
    .line 108
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_4
    invoke-static {v1}, Lk21;->n(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    move-object p1, v5

    .line 116
    goto :goto_4

    .line 117
    :cond_5
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, v4, Lwh1;->c:Lm10;

    .line 121
    .line 122
    iput v3, p0, Lqh1;->s:I

    .line 123
    .line 124
    invoke-virtual {p1, p0}, Lm10;->a(Lfh0;)Ljava/io/Serializable;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-ne p1, v2, :cond_6

    .line 129
    .line 130
    move-object p1, v2

    .line 131
    :cond_6
    :goto_4
    return-object p1

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lml0;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public final synthetic t:Z

.field public final synthetic u:Ljava/lang/Object;

.field public final synthetic v:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ldh0;Lpe1;Lga3;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lml0;->r:I

    .line 15
    iput-object p3, p0, Lml0;->u:Ljava/lang/Object;

    iput-boolean p4, p0, Lml0;->t:Z

    iput-object p2, p0, Lml0;->v:Ljava/lang/Object;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method

.method public constructor <init>(Lpd;ZLyq3;Ldh0;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lml0;->r:I

    .line 3
    .line 4
    iput-object p1, p0, Lml0;->u:Ljava/lang/Object;

    .line 5
    .line 6
    iput-boolean p2, p0, Lml0;->t:Z

    .line 7
    .line 8
    iput-object p3, p0, Lml0;->v:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1, p4}, Lbv3;-><init>(ILdh0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lml0;->r:I

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
    invoke-virtual {p0, p2, p1}, Lml0;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lml0;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lml0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Lml0;->o(Ldh0;Ljava/lang/Object;)Ldh0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lml0;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lml0;->q(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 2

    .line 1
    iget p2, p0, Lml0;->r:I

    .line 2
    .line 3
    iget-object v0, p0, Lml0;->v:Ljava/lang/Object;

    .line 4
    .line 5
    iget-boolean v1, p0, Lml0;->t:Z

    .line 6
    .line 7
    iget-object p0, p0, Lml0;->u:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p2, Lml0;

    .line 13
    .line 14
    check-cast p0, Lpd;

    .line 15
    .line 16
    check-cast v0, Lyq3;

    .line 17
    .line 18
    invoke-direct {p2, p0, v1, v0, p1}, Lml0;-><init>(Lpd;ZLyq3;Ldh0;)V

    .line 19
    .line 20
    .line 21
    return-object p2

    .line 22
    :pswitch_0
    new-instance p2, Lml0;

    .line 23
    .line 24
    check-cast p0, Lga3;

    .line 25
    .line 26
    check-cast v0, Lpe1;

    .line 27
    .line 28
    invoke-direct {p2, p1, v0, p0, v1}, Lml0;-><init>(Ldh0;Lpe1;Lga3;Z)V

    .line 29
    .line 30
    .line 31
    return-object p2

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lml0;->r:I

    .line 2
    .line 3
    iget-object v1, p0, Lml0;->v:Ljava/lang/Object;

    .line 4
    .line 5
    iget-boolean v2, p0, Lml0;->t:Z

    .line 6
    .line 7
    iget-object v3, p0, Lml0;->u:Ljava/lang/Object;

    .line 8
    .line 9
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    sget-object v5, Lri0;->n:Lri0;

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v7, 0x0

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lml0;->s:I

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    if-ne v0, v6, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    move-object v5, v7

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    check-cast v3, Lpd;

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    const/high16 p1, 0x3f800000    # 1.0f

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const p1, 0x3f4ccccd    # 0.8f

    .line 44
    .line 45
    .line 46
    :goto_0
    new-instance v0, Ljava/lang/Float;

    .line 47
    .line 48
    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    .line 49
    .line 50
    .line 51
    check-cast v1, Lyq3;

    .line 52
    .line 53
    iput v6, p0, Lml0;->s:I

    .line 54
    .line 55
    invoke-static {v3, v0, v1, p0}, Lpd;->c(Lpd;Ljava/lang/Object;Lve;Lbv3;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    if-ne p0, v5, :cond_3

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    :goto_1
    sget-object v5, Lt64;->a:Lt64;

    .line 63
    .line 64
    :goto_2
    return-object v5

    .line 65
    :pswitch_0
    iget v0, p0, Lml0;->s:I

    .line 66
    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    if-ne v0, v6, :cond_4

    .line 70
    .line 71
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_4
    invoke-static {v4}, Lk21;->n(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    move-object p1, v7

    .line 79
    goto :goto_3

    .line 80
    :cond_5
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    check-cast v3, Lga3;

    .line 84
    .line 85
    new-instance p1, Lol0;

    .line 86
    .line 87
    check-cast v1, Lpe1;

    .line 88
    .line 89
    invoke-direct {p1, v7, v1, v3, v2}, Lol0;-><init>(Ldh0;Lpe1;Lga3;Z)V

    .line 90
    .line 91
    .line 92
    iput v6, p0, Lml0;->s:I

    .line 93
    .line 94
    invoke-virtual {v3, v2, p1, p0}, Lga3;->q(ZLdf1;Lfh0;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-ne p1, v5, :cond_6

    .line 99
    .line 100
    move-object p1, v5

    .line 101
    :cond_6
    :goto_3
    return-object p1

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

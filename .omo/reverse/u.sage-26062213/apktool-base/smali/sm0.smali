.class public final Lsm0;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lff1;


# instance fields
.field public final synthetic r:I

.field public s:I

.field public synthetic t:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILdh0;)V
    .locals 1

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lsm0;->r:I

    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    return-void
.end method

.method public constructor <init>(Lfn0;Ldh0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lsm0;->r:I

    .line 3
    .line 4
    iput-object p1, p0, Lsm0;->t:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lsm0;->r:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lj51;

    .line 9
    .line 10
    check-cast p2, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    check-cast p3, Ldh0;

    .line 16
    .line 17
    new-instance p0, Lsm0;

    .line 18
    .line 19
    const/4 p2, 0x3

    .line 20
    invoke-direct {p0, p2, p3}, Lsm0;-><init>(ILdh0;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lsm0;->t:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lsm0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_0
    check-cast p1, Lb81;

    .line 31
    .line 32
    check-cast p2, Ljava/lang/Throwable;

    .line 33
    .line 34
    check-cast p3, Ldh0;

    .line 35
    .line 36
    new-instance p1, Lsm0;

    .line 37
    .line 38
    iget-object p0, p0, Lsm0;->t:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lfn0;

    .line 41
    .line 42
    invoke-direct {p1, p0, p3}, Lsm0;-><init>(Lfn0;Ldh0;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lsm0;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lsm0;->r:I

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
    const/4 v4, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lsm0;->s:I

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    if-ne v0, v3, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-static {v1}, Lk21;->n(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    move-object p1, v4

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lsm0;->t:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Lj51;

    .line 33
    .line 34
    iput v3, p0, Lsm0;->s:I

    .line 35
    .line 36
    iget-object v0, p1, Lj51;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    iget-object v0, p1, Lj51;->a:Ljava/io/File;

    .line 45
    .line 46
    new-instance v1, Lzm0;

    .line 47
    .line 48
    invoke-direct {v1, p1, v4, v3}, Lzm0;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1, p0}, Lzf5;->h(Ljava/io/File;Lpe1;Lfh0;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-ne p1, v2, :cond_3

    .line 56
    .line 57
    move-object p1, v2

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const-string p0, "This scope has already been closed."

    .line 60
    .line 61
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    :goto_1
    return-object p1

    .line 66
    :pswitch_0
    iget v0, p0, Lsm0;->s:I

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    if-ne v0, v3, :cond_4

    .line 71
    .line 72
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    invoke-static {v1}, Lk21;->n(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    move-object v2, v4

    .line 80
    goto :goto_3

    .line 81
    :cond_5
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lsm0;->t:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, Lfn0;

    .line 87
    .line 88
    iput v3, p0, Lsm0;->s:I

    .line 89
    .line 90
    invoke-static {p1, p0}, Lfn0;->c(Lfn0;Lfh0;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    if-ne p0, v2, :cond_6

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_6
    :goto_2
    sget-object v2, Lt64;->a:Lt64;

    .line 98
    .line 99
    :goto_3
    return-object v2

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

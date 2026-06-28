.class public final Lma;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ldf1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ldf1;II)V
    .locals 0

    .line 14
    iput p5, p0, Lma;->o:I

    iput-object p1, p0, Lma;->p:Ljava/lang/Object;

    iput-object p2, p0, Lma;->q:Ljava/lang/Object;

    iput-object p3, p0, Lma;->r:Ldf1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lpb0;Lmh4;Ldf1;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lma;->o:I

    .line 3
    .line 4
    iput-object p1, p0, Lma;->p:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lma;->q:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lma;->r:Ldf1;

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lxx1;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lma;->o:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sget-object v2, Lt64;->a:Lt64;

    .line 5
    .line 6
    iget-object v3, p0, Lma;->r:Ldf1;

    .line 7
    .line 8
    iget-object v4, p0, Lma;->q:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p0, p0, Lma;->p:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p1, Lag1;

    .line 16
    .line 17
    check-cast p2, Ljava/lang/Number;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    and-int/lit8 v0, p2, 0x3

    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    const/4 v6, 0x0

    .line 27
    if-eq v0, v5, :cond_0

    .line 28
    .line 29
    move v0, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v6

    .line 32
    :goto_0
    and-int/2addr p2, v1

    .line 33
    invoke-virtual {p1, p2, v0}, Lag1;->N(IZ)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    check-cast p0, Lpb0;

    .line 40
    .line 41
    check-cast v4, Lmh4;

    .line 42
    .line 43
    iget-object p2, v4, Lmh4;->n:Lq9;

    .line 44
    .line 45
    invoke-virtual {p0, p2, v3, p1, v6}, Lpb0;->a(Lq9;Ldf1;Lag1;I)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p1}, Lag1;->Q()V

    .line 50
    .line 51
    .line 52
    :goto_1
    return-object v2

    .line 53
    :pswitch_0
    check-cast p1, Lag1;

    .line 54
    .line 55
    check-cast p2, Ljava/lang/Number;

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 58
    .line 59
    .line 60
    check-cast p0, Lsr2;

    .line 61
    .line 62
    check-cast v4, Lqv3;

    .line 63
    .line 64
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    invoke-static {p0, v4, v3, p1, p2}, Lkc0;->a(Lsr2;Lqv3;Ldf1;Lag1;I)V

    .line 69
    .line 70
    .line 71
    return-object v2

    .line 72
    :pswitch_1
    check-cast p1, Lag1;

    .line 73
    .line 74
    check-cast p2, Ljava/lang/Number;

    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 77
    .line 78
    .line 79
    check-cast p0, Lne1;

    .line 80
    .line 81
    check-cast v4, Lvt0;

    .line 82
    .line 83
    check-cast v3, Lka0;

    .line 84
    .line 85
    const/16 p2, 0x181

    .line 86
    .line 87
    invoke-static {p2}, Lqj0;->f0(I)I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    invoke-static {p0, v4, v3, p1, p2}, Ln44;->D(Lne1;Lvt0;Lka0;Lag1;I)V

    .line 92
    .line 93
    .line 94
    return-object v2

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lha0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:I

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(La12;Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    const/4 p5, 0x1

    .line 2
    iput p5, p0, Lha0;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lha0;->r:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lha0;->o:Ljava/lang/Object;

    .line 10
    .line 11
    iput p3, p0, Lha0;->p:I

    .line 12
    .line 13
    iput-object p4, p0, Lha0;->q:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Lfc3;Ljava/lang/Object;Lka0;II)V
    .locals 0

    .line 16
    iput p5, p0, Lha0;->n:I

    iput-object p1, p0, Lha0;->q:Ljava/lang/Object;

    iput-object p2, p0, Lha0;->o:Ljava/lang/Object;

    iput-object p3, p0, Lha0;->r:Ljava/lang/Object;

    iput p4, p0, Lha0;->p:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 17
    iput p5, p0, Lha0;->n:I

    iput-object p1, p0, Lha0;->r:Ljava/lang/Object;

    iput-object p2, p0, Lha0;->o:Ljava/lang/Object;

    iput-object p3, p0, Lha0;->q:Ljava/lang/Object;

    iput p4, p0, Lha0;->p:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lha0;->n:I

    .line 2
    .line 3
    iget v1, p0, Lha0;->p:I

    .line 4
    .line 5
    iget-object v2, p0, Lha0;->o:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lha0;->q:Ljava/lang/Object;

    .line 8
    .line 9
    sget-object v4, Lt64;->a:Lt64;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    iget-object v6, p0, Lha0;->r:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast v3, Lgc3;

    .line 18
    .line 19
    check-cast v6, Lka0;

    .line 20
    .line 21
    check-cast p1, Lag1;

    .line 22
    .line 23
    check-cast p2, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    or-int/lit8 p0, v1, 0x1

    .line 29
    .line 30
    invoke-static {p0}, Lqj0;->f0(I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-virtual {v3, v2, v6, p1, p0}, Lgc3;->e(Ljava/lang/Object;Lka0;Lag1;I)V

    .line 35
    .line 36
    .line 37
    return-object v4

    .line 38
    :pswitch_0
    check-cast v6, Lp22;

    .line 39
    .line 40
    check-cast v2, Lw22;

    .line 41
    .line 42
    check-cast v3, Lpe1;

    .line 43
    .line 44
    check-cast p1, Lag1;

    .line 45
    .line 46
    check-cast p2, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    or-int/lit8 p0, v1, 0x1

    .line 52
    .line 53
    invoke-static {p0}, Lqj0;->f0(I)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-static {v6, v2, v3, p1, p0}, Lkt4;->h(Lp22;Lw22;Lpe1;Lag1;I)V

    .line 58
    .line 59
    .line 60
    return-object v4

    .line 61
    :pswitch_1
    check-cast v3, Lr12;

    .line 62
    .line 63
    check-cast v6, Lka0;

    .line 64
    .line 65
    check-cast p1, Lag1;

    .line 66
    .line 67
    check-cast p2, Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    or-int/lit8 p0, v1, 0x1

    .line 73
    .line 74
    invoke-static {p0}, Lqj0;->f0(I)I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    invoke-virtual {v3, v2, v6, p1, p0}, Lr12;->e(Ljava/lang/Object;Lka0;Lag1;I)V

    .line 79
    .line 80
    .line 81
    return-object v4

    .line 82
    :pswitch_2
    move-object v7, v6

    .line 83
    check-cast v7, La12;

    .line 84
    .line 85
    move-object v11, p1

    .line 86
    check-cast v11, Lag1;

    .line 87
    .line 88
    check-cast p2, Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-static {v5}, Lqj0;->f0(I)I

    .line 94
    .line 95
    .line 96
    move-result v12

    .line 97
    iget-object v8, p0, Lha0;->o:Ljava/lang/Object;

    .line 98
    .line 99
    iget v9, p0, Lha0;->p:I

    .line 100
    .line 101
    iget-object v10, p0, Lha0;->q:Ljava/lang/Object;

    .line 102
    .line 103
    invoke-static/range {v7 .. v12}, Lqn0;->e(La12;Ljava/lang/Object;ILjava/lang/Object;Lag1;I)V

    .line 104
    .line 105
    .line 106
    return-object v4

    .line 107
    :pswitch_3
    check-cast v6, Lka0;

    .line 108
    .line 109
    check-cast p1, Lag1;

    .line 110
    .line 111
    check-cast p2, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    or-int/2addr p0, v5

    .line 121
    invoke-virtual {v6, v2, v3, p1, p0}, Lka0;->g(Ljava/lang/Object;Ljava/lang/Object;Lag1;I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    return-object v4

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

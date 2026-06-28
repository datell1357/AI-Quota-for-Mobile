.class public final synthetic Lvj2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lka0;

.field public final synthetic p:J

.field public final synthetic q:J

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ldf1;Lka0;Ldf1;JJ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lvj2;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lvj2;->r:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lvj2;->o:Lka0;

    .line 10
    .line 11
    iput-object p3, p0, Lvj2;->s:Ljava/lang/Object;

    .line 12
    .line 13
    iput-wide p4, p0, Lvj2;->p:J

    .line 14
    .line 15
    iput-wide p6, p0, Lvj2;->q:J

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Lnd2;JJLhd4;Lka0;I)V
    .locals 0

    .line 18
    const/4 p8, 0x0

    iput p8, p0, Lvj2;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvj2;->r:Ljava/lang/Object;

    iput-wide p2, p0, Lvj2;->p:J

    iput-wide p4, p0, Lvj2;->q:J

    iput-object p6, p0, Lvj2;->s:Ljava/lang/Object;

    iput-object p7, p0, Lvj2;->o:Lka0;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lvj2;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object v2, p0, Lvj2;->s:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lvj2;->r:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object v5, v3

    .line 13
    check-cast v5, Ldf1;

    .line 14
    .line 15
    move-object v7, v2

    .line 16
    check-cast v7, Ldf1;

    .line 17
    .line 18
    check-cast p1, Lag1;

    .line 19
    .line 20
    check-cast p2, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    and-int/lit8 v0, p2, 0x3

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    const/4 v3, 0x1

    .line 30
    if-eq v0, v2, :cond_0

    .line 31
    .line 32
    move v0, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    and-int/2addr p2, v3

    .line 36
    invoke-virtual {p1, p2, v0}, Lag1;->N(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    sget-object p2, Lmt1;->j:Lf54;

    .line 43
    .line 44
    invoke-static {p2, p1}, Lg54;->a(Lf54;Lag1;)Lay3;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    sget-object v0, Lmt1;->d:Lf54;

    .line 49
    .line 50
    invoke-static {v0, p1}, Lg54;->a(Lf54;Lag1;)Lay3;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    sget-object v0, Llx3;->a:Llc0;

    .line 55
    .line 56
    invoke-virtual {v0, p2}, Llc0;->a(Ljava/lang/Object;)Lj03;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    new-instance v4, Llo3;

    .line 61
    .line 62
    iget-object v6, p0, Lvj2;->o:Lka0;

    .line 63
    .line 64
    iget-wide v9, p0, Lvj2;->p:J

    .line 65
    .line 66
    iget-wide v11, p0, Lvj2;->q:J

    .line 67
    .line 68
    invoke-direct/range {v4 .. v12}, Llo3;-><init>(Ldf1;Lka0;Ldf1;Lay3;JJ)V

    .line 69
    .line 70
    .line 71
    const p0, 0x39cbc4b1

    .line 72
    .line 73
    .line 74
    invoke-static {p0, v4, p1}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const/16 v0, 0x38

    .line 79
    .line 80
    invoke-static {p2, p0, p1, v0}, Lgg4;->a(Lj03;Ldf1;Lag1;I)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {p1}, Lag1;->Q()V

    .line 85
    .line 86
    .line 87
    :goto_1
    return-object v1

    .line 88
    :pswitch_0
    check-cast v3, Lnd2;

    .line 89
    .line 90
    move-object v7, v2

    .line 91
    check-cast v7, Lhd4;

    .line 92
    .line 93
    move-object v9, p1

    .line 94
    check-cast v9, Lag1;

    .line 95
    .line 96
    check-cast p2, Ljava/lang/Integer;

    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    const p1, 0x30001

    .line 102
    .line 103
    .line 104
    invoke-static {p1}, Lqj0;->f0(I)I

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    move-object v2, v3

    .line 109
    iget-wide v3, p0, Lvj2;->p:J

    .line 110
    .line 111
    iget-wide v5, p0, Lvj2;->q:J

    .line 112
    .line 113
    iget-object v8, p0, Lvj2;->o:Lka0;

    .line 114
    .line 115
    invoke-static/range {v2 .. v10}, Lzj2;->a(Lnd2;JJLhd4;Lka0;Lag1;I)V

    .line 116
    .line 117
    .line 118
    return-object v1

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

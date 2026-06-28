.class public final synthetic La92;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lgf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lxi2;


# direct methods
.method public synthetic constructor <init>(Lxi2;I)V
    .locals 0

    .line 1
    iput p2, p0, La92;->n:I

    .line 2
    .line 3
    iput-object p1, p0, La92;->o:Lxi2;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, La92;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    sget-object v2, Lrb0;->a:Lbx3;

    .line 6
    .line 7
    iget-object p0, p0, La92;->o:Lxi2;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    check-cast p1, Lae;

    .line 11
    .line 12
    check-cast p2, Lyh2;

    .line 13
    .line 14
    check-cast p3, Lag1;

    .line 15
    .line 16
    check-cast p4, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget p4, Lu/sage/MainActivity;->C:I

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    packed-switch v0, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {p3, p2}, Lag1;->h(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p4

    .line 40
    or-int/2addr p1, p4

    .line 41
    invoke-virtual {p3}, Lag1;->K()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    if-ne p4, v2, :cond_1

    .line 48
    .line 49
    :cond_0
    new-instance p4, Le92;

    .line 50
    .line 51
    const/4 p1, 0x4

    .line 52
    invoke-direct {p4, p0, p2, p1}, Le92;-><init>(Lxi2;Lyh2;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, p4}, Lag1;->g0(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    check-cast p4, Lne1;

    .line 59
    .line 60
    invoke-static {p4, p3, v3}, Lqj0;->g(Lne1;Lag1;I)V

    .line 61
    .line 62
    .line 63
    return-object v1

    .line 64
    :pswitch_0
    invoke-virtual {p3, p0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-virtual {p3, p2}, Lag1;->h(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p4

    .line 72
    or-int/2addr p1, p4

    .line 73
    invoke-virtual {p3}, Lag1;->K()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p4

    .line 77
    if-nez p1, :cond_2

    .line 78
    .line 79
    if-ne p4, v2, :cond_3

    .line 80
    .line 81
    :cond_2
    new-instance p4, Le92;

    .line 82
    .line 83
    invoke-direct {p4, p0, p2, v3}, Le92;-><init>(Lxi2;Lyh2;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3, p4}, Lag1;->g0(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    check-cast p4, Lne1;

    .line 90
    .line 91
    invoke-virtual {p3, p0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    invoke-virtual {p3}, Lag1;->K()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    if-nez p1, :cond_4

    .line 100
    .line 101
    if-ne p2, v2, :cond_5

    .line 102
    .line 103
    :cond_4
    new-instance p2, Lf92;

    .line 104
    .line 105
    invoke-direct {p2, p0, v3}, Lf92;-><init>(Lxi2;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3, p2}, Lag1;->g0(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    :cond_5
    check-cast p2, Lne1;

    .line 112
    .line 113
    invoke-virtual {p3, p0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    invoke-virtual {p3}, Lag1;->K()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-nez p1, :cond_6

    .line 122
    .line 123
    if-ne v0, v2, :cond_7

    .line 124
    .line 125
    :cond_6
    new-instance v0, Lf92;

    .line 126
    .line 127
    const/4 p1, 0x1

    .line 128
    invoke-direct {v0, p0, p1}, Lf92;-><init>(Lxi2;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3, v0}, Lag1;->g0(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_7
    check-cast v0, Lne1;

    .line 135
    .line 136
    invoke-static {p4, p2, v0, p3, v3}, Lon4;->b(Lne1;Lne1;Lne1;Lag1;I)V

    .line 137
    .line 138
    .line 139
    return-object v1

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lz84;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lu/sage/widget/UsageWidgetConfigActivity;


# direct methods
.method public synthetic constructor <init>(Lu/sage/widget/UsageWidgetConfigActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lz84;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lz84;->o:Lu/sage/widget/UsageWidgetConfigActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lz84;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    iget-object p0, p0, Lz84;->o:Lu/sage/widget/UsageWidgetConfigActivity;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    check-cast p1, Lag1;

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    sget v0, Lu/sage/widget/UsageWidgetConfigActivity;->o:I

    .line 22
    .line 23
    and-int/lit8 v0, p2, 0x3

    .line 24
    .line 25
    if-eq v0, v2, :cond_0

    .line 26
    .line 27
    move v0, v4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v3

    .line 30
    :goto_0
    and-int/2addr p2, v4

    .line 31
    invoke-virtual {p1, p2, v0}, Lag1;->N(IZ)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_7

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-virtual {p1}, Lag1;->K()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v2, Lrb0;->a:Lbx3;

    .line 46
    .line 47
    if-nez p2, :cond_1

    .line 48
    .line 49
    if-ne v0, v2, :cond_2

    .line 50
    .line 51
    :cond_1
    new-instance v0, La94;

    .line 52
    .line 53
    invoke-direct {v0, p0, v3}, La94;-><init>(Lu/sage/widget/UsageWidgetConfigActivity;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lag1;->g0(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    check-cast v0, Lne1;

    .line 60
    .line 61
    invoke-static {v3, v0, p1, v3, v4}, Ln44;->C(ZLne1;Lag1;II)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    invoke-virtual {p1}, Lag1;->K()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-nez p2, :cond_3

    .line 73
    .line 74
    if-ne v0, v2, :cond_4

    .line 75
    .line 76
    :cond_3
    new-instance v0, Ldi3;

    .line 77
    .line 78
    const/4 p2, 0x5

    .line 79
    invoke-direct {v0, p2, p0}, Ldi3;-><init>(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lag1;->g0(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    check-cast v0, Lpe1;

    .line 86
    .line 87
    invoke-virtual {p1, p0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    invoke-virtual {p1}, Lag1;->K()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    if-nez p2, :cond_5

    .line 96
    .line 97
    if-ne v5, v2, :cond_6

    .line 98
    .line 99
    :cond_5
    new-instance v5, La94;

    .line 100
    .line 101
    invoke-direct {v5, p0, v4}, La94;-><init>(Lu/sage/widget/UsageWidgetConfigActivity;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v5}, Lag1;->g0(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_6
    check-cast v5, Lne1;

    .line 108
    .line 109
    invoke-static {v0, v5, p1, v3}, Ltv4;->c(Lpe1;Lne1;Lag1;I)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_7
    invoke-virtual {p1}, Lag1;->Q()V

    .line 114
    .line 115
    .line 116
    :goto_1
    return-object v1

    .line 117
    :pswitch_0
    sget v0, Lu/sage/widget/UsageWidgetConfigActivity;->o:I

    .line 118
    .line 119
    and-int/lit8 v0, p2, 0x3

    .line 120
    .line 121
    if-eq v0, v2, :cond_8

    .line 122
    .line 123
    move v0, v4

    .line 124
    goto :goto_2

    .line 125
    :cond_8
    move v0, v3

    .line 126
    :goto_2
    and-int/2addr p2, v4

    .line 127
    invoke-virtual {p1, p2, v0}, Lag1;->N(IZ)Z

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    if-eqz p2, :cond_9

    .line 132
    .line 133
    new-instance p2, Lz84;

    .line 134
    .line 135
    invoke-direct {p2, p0, v4}, Lz84;-><init>(Lu/sage/widget/UsageWidgetConfigActivity;I)V

    .line 136
    .line 137
    .line 138
    const p0, -0x5a66b93c

    .line 139
    .line 140
    .line 141
    invoke-static {p0, p2, p1}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    const/16 p2, 0x180

    .line 146
    .line 147
    invoke-static {v3, p0, p1, p2}, Lgy3;->a(ZLka0;Lag1;I)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_9
    invoke-virtual {p1}, Lag1;->Q()V

    .line 152
    .line 153
    .line 154
    :goto_3
    return-object v1

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

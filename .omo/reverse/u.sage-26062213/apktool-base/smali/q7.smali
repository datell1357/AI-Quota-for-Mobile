.class public final synthetic Lq7;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lff1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Lgf1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lgf1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lq7;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lq7;->o:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lq7;->p:Lgf1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lq7;->n:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object v4, p0, Lq7;->p:Lgf1;

    .line 8
    .line 9
    iget-object p0, p0, Lq7;->o:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Landroid/text/Spannable;

    .line 15
    .line 16
    check-cast v4, Lqb;

    .line 17
    .line 18
    check-cast p1, Liq3;

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
    check-cast p3, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    new-instance v0, Lua1;

    .line 33
    .line 34
    iget-object v5, p1, Liq3;->f:Lra1;

    .line 35
    .line 36
    iget-object v6, p1, Liq3;->c:Lpb1;

    .line 37
    .line 38
    if-nez v6, :cond_0

    .line 39
    .line 40
    sget-object v6, Lpb1;->p:Lpb1;

    .line 41
    .line 42
    :cond_0
    iget-object v7, p1, Liq3;->d:Lnb1;

    .line 43
    .line 44
    if-eqz v7, :cond_1

    .line 45
    .line 46
    iget v3, v7, Lnb1;->a:I

    .line 47
    .line 48
    :cond_1
    iget-object p1, p1, Liq3;->e:Lob1;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget p1, p1, Lob1;->a:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const p1, 0xffff

    .line 56
    .line 57
    .line 58
    :goto_0
    iget-object v4, v4, Lqb;->o:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v4, Lrb;

    .line 61
    .line 62
    iget-object v7, v4, Lrb;->e:Lqa1;

    .line 63
    .line 64
    check-cast v7, Lsa1;

    .line 65
    .line 66
    invoke-virtual {v7, v5, v6, v3, p1}, Lsa1;->b(Lra1;Lpb1;II)Lc54;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    instance-of v3, p1, Lc54;

    .line 71
    .line 72
    if-nez v3, :cond_3

    .line 73
    .line 74
    new-instance v3, Lui3;

    .line 75
    .line 76
    iget-object v5, v4, Lrb;->j:Lui3;

    .line 77
    .line 78
    invoke-direct {v3, p1, v5}, Lui3;-><init>(Lc54;Lui3;)V

    .line 79
    .line 80
    .line 81
    iput-object v3, v4, Lrb;->j:Lui3;

    .line 82
    .line 83
    iget-object p1, v3, Lui3;->q:Ljava/lang/Object;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    check-cast p1, Landroid/graphics/Typeface;

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    iget-object p1, p1, Lc54;->n:Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    check-cast p1, Landroid/graphics/Typeface;

    .line 97
    .line 98
    :goto_1
    invoke-direct {v0, v2, p1}, Lua1;-><init>(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    const/16 p1, 0x21

    .line 102
    .line 103
    invoke-interface {p0, v0, p2, p3, p1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 104
    .line 105
    .line 106
    return-object v1

    .line 107
    :pswitch_0
    check-cast p0, Lhy1;

    .line 108
    .line 109
    check-cast v4, Lka0;

    .line 110
    .line 111
    check-cast p1, Ll91;

    .line 112
    .line 113
    check-cast p2, Lag1;

    .line 114
    .line 115
    check-cast p3, Ljava/lang/Integer;

    .line 116
    .line 117
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    and-int/lit8 p3, p1, 0x11

    .line 122
    .line 123
    const/16 v0, 0x10

    .line 124
    .line 125
    if-eq p3, v0, :cond_4

    .line 126
    .line 127
    move v3, v2

    .line 128
    :cond_4
    and-int/2addr p1, v2

    .line 129
    invoke-virtual {p2, p1, v3}, Lag1;->N(IZ)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_5

    .line 134
    .line 135
    sget-object p1, Lkc0;->n:Lis3;

    .line 136
    .line 137
    invoke-virtual {p1, p0}, Lis3;->a(Ljava/lang/Object;)Lj03;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    const/16 p1, 0x8

    .line 142
    .line 143
    invoke-static {p0, v4, p2, p1}, Lgg4;->a(Lj03;Ldf1;Lag1;I)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_5
    invoke-virtual {p2}, Lag1;->Q()V

    .line 148
    .line 149
    .line 150
    :goto_2
    return-object v1

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

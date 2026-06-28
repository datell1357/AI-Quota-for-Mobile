.class public final Lon0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lgf1;


# instance fields
.field public final synthetic n:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lon0;->n:Ljava/util/List;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Luz1;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    move-object v4, p3

    .line 10
    check-cast v4, Lag1;

    .line 11
    .line 12
    check-cast p4, Ljava/lang/Number;

    .line 13
    .line 14
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    and-int/lit8 p4, p3, 0x6

    .line 19
    .line 20
    if-nez p4, :cond_1

    .line 21
    .line 22
    invoke-virtual {v4, p1}, Lag1;->f(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x2

    .line 31
    :goto_0
    or-int/2addr p1, p3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move p1, p3

    .line 34
    :goto_1
    and-int/lit8 p3, p3, 0x30

    .line 35
    .line 36
    if-nez p3, :cond_3

    .line 37
    .line 38
    invoke-virtual {v4, p2}, Lag1;->d(I)Z

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    if-eqz p3, :cond_2

    .line 43
    .line 44
    const/16 p3, 0x20

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/16 p3, 0x10

    .line 48
    .line 49
    :goto_2
    or-int/2addr p1, p3

    .line 50
    :cond_3
    and-int/lit16 p3, p1, 0x93

    .line 51
    .line 52
    const/16 p4, 0x92

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    const/4 v7, 0x0

    .line 56
    if-eq p3, p4, :cond_4

    .line 57
    .line 58
    move p3, v0

    .line 59
    goto :goto_3

    .line 60
    :cond_4
    move p3, v7

    .line 61
    :goto_3
    and-int/2addr p1, v0

    .line 62
    invoke-virtual {v4, p1, p3}, Lag1;->N(IZ)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_5

    .line 67
    .line 68
    iget-object p0, p0, Lon0;->n:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Ls52;

    .line 75
    .line 76
    const p1, -0x2d4e1578

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, p1}, Lag1;->W(I)V

    .line 80
    .line 81
    .line 82
    invoke-static {p0, v4, v7}, Ltv4;->a(Ls52;Lag1;I)V

    .line 83
    .line 84
    .line 85
    const/4 p0, 0x0

    .line 86
    const/high16 p1, 0x41400000    # 12.0f

    .line 87
    .line 88
    sget-object p2, Lkd2;->b:Lkd2;

    .line 89
    .line 90
    invoke-static {p2, p0, p1, v0}, Lis0;->M(Lnd2;FFI)Lnd2;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sget-object p0, Lwa2;->a:Lis3;

    .line 95
    .line 96
    invoke-virtual {v4, p0}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    check-cast p0, Lua2;

    .line 101
    .line 102
    iget-object p0, p0, Lua2;->a:Ly70;

    .line 103
    .line 104
    iget-wide v2, p0, Ly70;->B:J

    .line 105
    .line 106
    const/16 v5, 0x36

    .line 107
    .line 108
    const/4 v6, 0x0

    .line 109
    const/high16 v1, 0x3f000000    # 0.5f

    .line 110
    .line 111
    invoke-static/range {v0 .. v6}, Ltv4;->e(Lnd2;FJLag1;II)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v7}, Lag1;->p(Z)V

    .line 115
    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_5
    invoke-virtual {v4}, Lag1;->Q()V

    .line 119
    .line 120
    .line 121
    :goto_4
    sget-object p0, Lt64;->a:Lt64;

    .line 122
    .line 123
    return-object p0
.end method

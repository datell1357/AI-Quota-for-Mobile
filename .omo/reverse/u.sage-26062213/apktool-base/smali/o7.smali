.class public final synthetic Lo7;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:F

.field public final synthetic o:Lhy1;

.field public final synthetic p:Lka0;


# direct methods
.method public synthetic constructor <init>(FLhy1;Lka0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lo7;->n:F

    .line 5
    .line 6
    iput-object p2, p0, Lo7;->o:Lhy1;

    .line 7
    .line 8
    iput-object p3, p0, Lo7;->p:Lka0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Lag1;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    and-int/lit8 p2, p1, 0x3

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq p2, v2, :cond_0

    .line 16
    .line 17
    move p2, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p2, v0

    .line 20
    :goto_0
    and-int/2addr p1, v1

    .line 21
    invoke-virtual {v7, p1, p2}, Lag1;->N(IZ)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    new-instance v1, Lrh;

    .line 28
    .line 29
    new-instance p1, Lk21;

    .line 30
    .line 31
    invoke-direct {p1, v2}, Lk21;-><init>(I)V

    .line 32
    .line 33
    .line 34
    const/high16 p2, 0x41000000    # 8.0f

    .line 35
    .line 36
    invoke-direct {v1, p2, p1}, Lrh;-><init>(FLk21;)V

    .line 37
    .line 38
    .line 39
    move p1, v2

    .line 40
    new-instance v2, Lrh;

    .line 41
    .line 42
    new-instance p2, Lk21;

    .line 43
    .line 44
    invoke-direct {p2, p1}, Lk21;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iget p1, p0, Lo7;->n:F

    .line 48
    .line 49
    invoke-direct {v2, p1, p2}, Lrh;-><init>(FLk21;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Lq7;

    .line 53
    .line 54
    iget-object p2, p0, Lo7;->o:Lhy1;

    .line 55
    .line 56
    iget-object p0, p0, Lo7;->p:Lka0;

    .line 57
    .line 58
    invoke-direct {p1, p2, p0, v0}, Lq7;-><init>(Ljava/lang/Object;Lgf1;I)V

    .line 59
    .line 60
    .line 61
    const p0, 0x3472a0d7

    .line 62
    .line 63
    .line 64
    invoke-static {p0, p1, v7}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const/high16 v8, 0x180000

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v4, 0x0

    .line 73
    const/4 v5, 0x0

    .line 74
    invoke-static/range {v0 .. v8}, Lnt1;->b(Lnd2;Lqh;Lsh;Lbw;IILka0;Lag1;I)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {v7}, Lag1;->Q()V

    .line 79
    .line 80
    .line 81
    :goto_1
    sget-object p0, Lt64;->a:Lt64;

    .line 82
    .line 83
    return-object p0
.end method

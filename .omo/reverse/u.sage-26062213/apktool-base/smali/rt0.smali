.class public final Lrt0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Lyh2;

.field public final synthetic o:Lut0;

.field public final synthetic p:Lfc3;

.field public final synthetic q:Lgp3;

.field public final synthetic r:Ltt0;


# direct methods
.method public constructor <init>(Lyh2;Lut0;Lgc3;Lgp3;Ltt0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lrt0;->n:Lyh2;

    .line 5
    .line 6
    iput-object p2, p0, Lrt0;->o:Lut0;

    .line 7
    .line 8
    iput-object p3, p0, Lrt0;->p:Lfc3;

    .line 9
    .line 10
    iput-object p4, p0, Lrt0;->q:Lgp3;

    .line 11
    .line 12
    iput-object p5, p0, Lrt0;->r:Ltt0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lag1;

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
    const/4 v0, 0x3

    .line 10
    and-int/2addr p2, v0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-ne p2, v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lag1;->z()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lag1;->Q()V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    iget-object p2, p0, Lrt0;->n:Lyh2;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lag1;->h(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v2, p0, Lrt0;->o:Lut0;

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Lag1;->h(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    or-int/2addr v1, v3

    .line 38
    invoke-virtual {p1}, Lag1;->K()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    sget-object v1, Lrb0;->a:Lbx3;

    .line 45
    .line 46
    if-ne v3, v1, :cond_3

    .line 47
    .line 48
    :cond_2
    new-instance v3, Lmd;

    .line 49
    .line 50
    iget-object v1, p0, Lrt0;->q:Lgp3;

    .line 51
    .line 52
    invoke-direct {v3, v1, p2, v2, v0}, Lmd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v3}, Lag1;->g0(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    check-cast v3, Lpe1;

    .line 59
    .line 60
    invoke-static {p2, v3, p1}, Lzf5;->a(Ljava/lang/Object;Lpe1;Lag1;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lqt0;

    .line 64
    .line 65
    iget-object v1, p0, Lrt0;->r:Ltt0;

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-direct {v0, v2, v1, p2}, Lqt0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    const v1, -0x1da93fb4

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v0, p1}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const/16 v1, 0x180

    .line 79
    .line 80
    iget-object p0, p0, Lrt0;->p:Lfc3;

    .line 81
    .line 82
    invoke-static {p2, p0, v0, p1, v1}, Lqj0;->j(Lyh2;Lfc3;Lka0;Lag1;I)V

    .line 83
    .line 84
    .line 85
    :goto_1
    sget-object p0, Lt64;->a:Lt64;

    .line 86
    .line 87
    return-object p0
.end method

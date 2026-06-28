.class public final synthetic Lz40;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:J

.field public final synthetic o:Ldf1;


# direct methods
.method public synthetic constructor <init>(JLdf1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lz40;->n:J

    .line 5
    .line 6
    iput-object p3, p0, Lz40;->o:Ldf1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lag1;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    and-int/lit8 v0, p2, 0x3

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    move v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    and-int/2addr p2, v2

    .line 19
    invoke-virtual {p1, p2, v0}, Lag1;->N(IZ)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    sget-object p2, Lbg0;->a:Llc0;

    .line 26
    .line 27
    new-instance v0, Lt70;

    .line 28
    .line 29
    iget-wide v1, p0, Lz40;->n:J

    .line 30
    .line 31
    invoke-direct {v0, v1, v2}, Lt70;-><init>(J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Llc0;->a(Ljava/lang/Object;)Lj03;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const/16 v0, 0x8

    .line 39
    .line 40
    iget-object p0, p0, Lz40;->o:Ldf1;

    .line 41
    .line 42
    invoke-static {p2, p0, p1, v0}, Lgg4;->a(Lj03;Ldf1;Lag1;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p1}, Lag1;->Q()V

    .line 47
    .line 48
    .line 49
    :goto_1
    sget-object p0, Lt64;->a:Lt64;

    .line 50
    .line 51
    return-object p0
.end method

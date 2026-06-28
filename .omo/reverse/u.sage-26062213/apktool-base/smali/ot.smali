.class public final Lot;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lff1;


# instance fields
.field public synthetic r:Ld84;

.field public synthetic s:Z

.field public final synthetic t:Lpt;


# direct methods
.method public constructor <init>(Lpt;Ldh0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lot;->t:Lpt;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Lbv3;-><init>(ILdh0;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ld84;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    check-cast p3, Ldh0;

    .line 10
    .line 11
    new-instance v0, Lot;

    .line 12
    .line 13
    iget-object p0, p0, Lot;->t:Lpt;

    .line 14
    .line 15
    invoke-direct {v0, p0, p3}, Lot;-><init>(Lpt;Ldh0;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, v0, Lot;->r:Ld84;

    .line 19
    .line 20
    iput-boolean p2, v0, Lot;->s:Z

    .line 21
    .line 22
    sget-object p0, Lt64;->a:Lt64;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lot;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lot;->r:Ld84;

    .line 2
    .line 3
    iget-boolean v1, p0, Lot;->s:Z

    .line 4
    .line 5
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    if-eqz v1, :cond_5

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    const/4 p1, 0x0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-virtual {v0}, Ld84;->c()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_3

    .line 22
    .line 23
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lp84;

    .line 45
    .line 46
    invoke-virtual {v4}, Lp84;->b()Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const-wide v4, 0x7fffffffffffffffL

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    :goto_0
    cmp-long v4, v4, v1

    .line 63
    .line 64
    if-gtz v4, :cond_1

    .line 65
    .line 66
    const/4 p1, 0x1

    .line 67
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 68
    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    :cond_4
    iget-object p0, p0, Lot;->t:Lpt;

    .line 72
    .line 73
    invoke-virtual {p0}, Lpt;->f()Ld84;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_5
    return-object v0
.end method

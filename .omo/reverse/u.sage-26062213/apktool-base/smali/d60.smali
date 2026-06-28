.class public final Ld60;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lff1;


# instance fields
.field public final synthetic n:Lzp1;

.field public final synthetic o:Z

.field public final synthetic p:Lq93;

.field public final synthetic q:Lne1;


# direct methods
.method public constructor <init>(Lzp1;ZLq93;Lne1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld60;->n:Lzp1;

    .line 5
    .line 6
    iput-boolean p2, p0, Ld60;->o:Z

    .line 7
    .line 8
    iput-object p3, p0, Ld60;->p:Lq93;

    .line 9
    .line 10
    iput-object p4, p0, Ld60;->q:Lne1;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lnd2;

    .line 2
    .line 3
    check-cast p2, Lag1;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    const p1, -0x5af0b3b9

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p1}, Lag1;->W(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lag1;->K()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object p3, Lrb0;->a:Lbx3;

    .line 21
    .line 22
    if-ne p1, p3, :cond_0

    .line 23
    .line 24
    new-instance p1, Lvf2;

    .line 25
    .line 26
    invoke-direct {p1}, Lvf2;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1}, Lag1;->g0(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    move-object v3, p1

    .line 33
    check-cast v3, Lvf2;

    .line 34
    .line 35
    sget-object p1, Lkd2;->b:Lkd2;

    .line 36
    .line 37
    iget-object p3, p0, Ld60;->n:Lzp1;

    .line 38
    .line 39
    invoke-static {p1, v3, p3}, Lwp1;->a(Lnd2;Lxs1;Lzp1;)Lnd2;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v0, Lb60;

    .line 44
    .line 45
    iget-object v4, p0, Ld60;->p:Lq93;

    .line 46
    .line 47
    iget-object v1, p0, Ld60;->q:Lne1;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    iget-boolean v6, p0, Ld60;->o:Z

    .line 52
    .line 53
    invoke-direct/range {v0 .. v6}, Lb60;-><init>(Lne1;Lzp1;Lvf2;Lq93;ZZ)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v0}, Lnd2;->c(Lnd2;)Lnd2;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const/4 p1, 0x0

    .line 61
    invoke-virtual {p2, p1}, Lag1;->p(Z)V

    .line 62
    .line 63
    .line 64
    return-object p0
.end method

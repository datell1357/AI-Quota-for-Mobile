.class public final Lno0;
.super Lmd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljx0;


# instance fields
.field public final B:Lxs1;

.field public C:Z

.field public D:Z

.field public E:Z


# direct methods
.method public constructor <init>(Lxs1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmd2;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lno0;->B:Lxs1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final K(Lzy1;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lzy1;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v2, p1, Lzy1;->n:Lx20;

    .line 5
    .line 6
    iget-boolean v3, p0, Lno0;->C:Z

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    sget-wide v3, Lt70;->b:J

    .line 11
    .line 12
    const v0, 0x3e99999a    # 0.3f

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v3, v4}, Lt70;->b(FJ)J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    move-wide v6, v3

    .line 20
    move-object v3, v2

    .line 21
    move-wide v1, v6

    .line 22
    invoke-interface {v3}, Lkx0;->d()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    const/16 v5, 0x7a

    .line 27
    .line 28
    move-object v0, p1

    .line 29
    invoke-static/range {v0 .. v5}, Lkx0;->C(Lkx0;JJI)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    move-object v3, v2

    .line 34
    iget-boolean v1, p0, Lno0;->D:Z

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    iget-boolean v0, p0, Lno0;->E:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-void

    .line 44
    :cond_2
    :goto_0
    sget-wide v0, Lt70;->b:J

    .line 45
    .line 46
    const v2, 0x3dcccccd    # 0.1f

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v0, v1}, Lt70;->b(FJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    invoke-interface {v3}, Lkx0;->d()J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    const/16 v5, 0x7a

    .line 58
    .line 59
    move-object v0, p1

    .line 60
    invoke-static/range {v0 .. v5}, Lkx0;->C(Lkx0;JJI)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final y0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lmd2;->u0()Lqi0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lx50;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v1, p0, v3, v2}, Lx50;-><init>(Ljava/lang/Object;Ldh0;I)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x3

    .line 13
    invoke-static {v0, v3, v3, v1, p0}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 14
    .line 15
    .line 16
    return-void
.end method

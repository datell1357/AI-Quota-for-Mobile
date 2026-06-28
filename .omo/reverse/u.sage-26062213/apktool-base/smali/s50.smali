.class public final Ls50;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lgf1;


# instance fields
.field public synthetic r:Ld84;

.field public synthetic s:Z

.field public synthetic t:J


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

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
    move-result p0

    .line 9
    check-cast p3, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide p2

    .line 15
    check-cast p4, Ldh0;

    .line 16
    .line 17
    new-instance v0, Ls50;

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    invoke-direct {v0, v1, p4}, Lbv3;-><init>(ILdh0;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, v0, Ls50;->r:Ld84;

    .line 24
    .line 25
    iput-boolean p0, v0, Ls50;->s:Z

    .line 26
    .line 27
    iput-wide p2, v0, Ls50;->t:J

    .line 28
    .line 29
    sget-object p0, Lt64;->a:Lt64;

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ls50;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ls50;->r:Ld84;

    .line 2
    .line 3
    iget-boolean v1, p0, Ls50;->s:Z

    .line 4
    .line 5
    iget-wide v2, p0, Ls50;->t:J

    .line 6
    .line 7
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Lw24;

    .line 11
    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v1, Ljava/lang/Long;

    .line 17
    .line 18
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, p1, v1}, Lw24;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

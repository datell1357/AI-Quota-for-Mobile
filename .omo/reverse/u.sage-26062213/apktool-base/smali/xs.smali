.class public final Lxs;
.super Lbv3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lgf1;


# instance fields
.field public synthetic r:Ljava/lang/String;

.field public synthetic s:Lw3;

.field public synthetic t:Z


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Lw3;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    check-cast p4, Ldh0;

    .line 12
    .line 13
    new-instance p3, Lxs;

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-direct {p3, v0, p4}, Lbv3;-><init>(ILdh0;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p3, Lxs;->r:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p2, p3, Lxs;->s:Lw3;

    .line 22
    .line 23
    iput-boolean p0, p3, Lxs;->t:Z

    .line 24
    .line 25
    sget-object p0, Lt64;->a:Lt64;

    .line 26
    .line 27
    invoke-virtual {p3, p0}, Lxs;->q(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public final q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lxs;->r:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v2, p0, Lxs;->s:Lw3;

    .line 4
    .line 5
    iget-boolean p0, p0, Lxs;->t:Z

    .line 6
    .line 7
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lu/sage/a;->D:Lwr3;

    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x0

    .line 17
    const/16 v5, 0x10

    .line 18
    .line 19
    const-string v1, "SERVICE"

    .line 20
    .line 21
    invoke-static/range {v0 .. v5}, Lqv3;->v(Ljava/lang/String;Ljava/lang/String;Lw3;Ljava/lang/Boolean;Lpi1;I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

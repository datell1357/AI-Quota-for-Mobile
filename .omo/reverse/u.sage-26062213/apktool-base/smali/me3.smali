.class public Lme3;
.super Lg0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lsi0;


# instance fields
.field public final s:Ldh0;


# direct methods
.method public constructor <init>(Ldh0;Lhi0;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p2, v0}, Lg0;-><init>(Lhi0;Z)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lme3;->s:Ldh0;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final T()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final c()Lsi0;
    .locals 1

    .line 1
    iget-object p0, p0, Lme3;->s:Ldh0;

    .line 2
    .line 3
    instance-of v0, p0, Lsi0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lsi0;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public p(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lme3;->s:Ldh0;

    .line 2
    .line 3
    invoke-static {p0}, Ldm0;->A(Ldh0;)Ldh0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p1}, Lse0;->D(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Ltu0;->a(Ldh0;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public q(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lme3;->s:Ldh0;

    .line 2
    .line 3
    invoke-static {p1}, Lse0;->D(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Ldh0;->g(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public t0()V
    .locals 0

    .line 1
    return-void
.end method

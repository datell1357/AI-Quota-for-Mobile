.class public final Lyx1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lm53;
.implements Lki0;


# instance fields
.field public final n:Lhi0;

.field public final o:Ldf1;

.field public final p:Lbh0;

.field public q:Lir3;


# direct methods
.method public constructor <init>(Lhi0;Ldf1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyx1;->n:Lhi0;

    .line 5
    .line 6
    iput-object p2, p0, Lyx1;->o:Ldf1;

    .line 7
    .line 8
    invoke-interface {p1, p0}, Lhi0;->F(Lhi0;)Lhi0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Ldm0;->c(Lhi0;)Lbh0;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lyx1;->p:Lbh0;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final F(Lhi0;)Lhi0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lca;->B(Lfi0;Lhi0;)Lhi0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final K(Lgi0;)Lfi0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lca;->r(Lfi0;Lgi0;)Lfi0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final L(Lhi0;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    sget-object v0, Lcc0;->o:Lqv3;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lhi0;->K(Lgi0;)Lfi0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcc0;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lh4;

    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    invoke-direct {v1, v2, v0, p0}, Lh4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p2, v1}, Lmt1;->W(Ljava/lang/Throwable;Lne1;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lyx1;->n:Lhi0;

    .line 22
    .line 23
    sget-object v0, Lw13;->t:Lw13;

    .line 24
    .line 25
    invoke-interface {p0, v0}, Lhi0;->K(Lgi0;)Lfi0;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lki0;

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    invoke-interface {p0, p1, p2}, Lki0;->L(Lhi0;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    throw p2
.end method

.method public final R(Ldf1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1, p2, p0}, Ldf1;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final Y(Lgi0;)Lhi0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lca;->z(Lfi0;Lgi0;)Lhi0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lyx1;->q:Lir3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v2, Ljava/util/concurrent/CancellationException;

    .line 7
    .line 8
    const-string v3, "Old job was still running!"

    .line 9
    .line 10
    invoke-direct {v2, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lbv1;->j(Ljava/util/concurrent/CancellationException;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lyx1;->o:Ldf1;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    iget-object v3, p0, Lyx1;->p:Lbh0;

    .line 23
    .line 24
    invoke-static {v3, v1, v1, v0, v2}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lyx1;->q:Lir3;

    .line 29
    .line 30
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lyx1;->q:Lir3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lxb1;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v2}, Lxb1;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lbv1;->u(Ljava/util/concurrent/CancellationException;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lyx1;->q:Lir3;

    .line 16
    .line 17
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lyx1;->q:Lir3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lxb1;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v2}, Lxb1;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lbv1;->u(Ljava/util/concurrent/CancellationException;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lyx1;->q:Lir3;

    .line 16
    .line 17
    return-void
.end method

.method public final getKey()Lgi0;
    .locals 0

    .line 1
    sget-object p0, Lw13;->t:Lw13;

    .line 2
    .line 3
    return-object p0
.end method

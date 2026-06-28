.class public abstract Lfh0;
.super Ldr;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final o:Lhi0;

.field public transient p:Ldh0;


# direct methods
.method public constructor <init>(Ldh0;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ldh0;->e()Lhi0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-direct {p0, p1, v0}, Lfh0;-><init>(Ldh0;Lhi0;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ldh0;Lhi0;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Ldr;-><init>(Ldh0;)V

    .line 14
    iput-object p2, p0, Lfh0;->o:Lhi0;

    return-void
.end method


# virtual methods
.method public e()Lhi0;
    .locals 0

    .line 1
    iget-object p0, p0, Lfh0;->o:Lhi0;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfh0;->p:Ldh0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eq v0, p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lfh0;->e()Lhi0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Lw13;->s:Lw13;

    .line 12
    .line 13
    invoke-interface {v1, v2}, Lhi0;->K(Lgi0;)Lfi0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    check-cast v1, Lji0;

    .line 21
    .line 22
    check-cast v0, Lsu0;

    .line 23
    .line 24
    invoke-virtual {v0}, Lsu0;->n()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lsu0;->p()Lo20;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Lo20;->q()V

    .line 34
    .line 35
    .line 36
    :cond_0
    sget-object v0, Lb90;->o:Lb90;

    .line 37
    .line 38
    iput-object v0, p0, Lfh0;->p:Ldh0;

    .line 39
    .line 40
    return-void
.end method

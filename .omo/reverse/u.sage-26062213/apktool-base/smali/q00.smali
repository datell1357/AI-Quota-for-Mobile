.class public final Lq00;
.super Lmd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lco2;
.implements Liz;
.implements Ljx0;


# instance fields
.field public final B:Lr00;

.field public C:Z

.field public final D:Lv;


# direct methods
.method public constructor <init>(Lr00;Lv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmd2;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq00;->B:Lr00;

    .line 5
    .line 6
    iput-object p2, p0, Lq00;->D:Lv;

    .line 7
    .line 8
    iput-object p0, p1, Lr00;->n:Liz;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lq00;->G0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final G0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lq00;->C:Z

    .line 3
    .line 4
    iget-object v0, p0, Lq00;->B:Lr00;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lr00;->o:Ldh1;

    .line 8
    .line 9
    invoke-static {p0}, Lkt4;->Q(Ljx0;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final H()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lq00;->G0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final K(Lzy1;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lq00;->C:Z

    .line 2
    .line 3
    iget-object v1, p0, Lq00;->B:Lr00;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, v1, Lr00;->o:Ldh1;

    .line 9
    .line 10
    new-instance v0, Lj9;

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-direct {v0, v2, p0, v1}, Lj9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lix;->H(Lmd2;Lne1;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v1, Lr00;->o:Ldh1;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lq00;->C:Z

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p0, "DrawResult not defined, did you forget to call onDraw?"

    .line 28
    .line 29
    invoke-static {p0}, Ldi0;->m(Ljava/lang/String;)Lv00;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    throw p0

    .line 34
    :cond_1
    :goto_0
    iget-object p0, v1, Lr00;->o:Ldh1;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Ldh1;->n:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lpe1;

    .line 42
    .line 43
    invoke-interface {p0, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lq00;->G0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b()Las0;
    .locals 0

    .line 1
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lxy1;->L:Las0;

    .line 6
    .line 7
    return-object p0
.end method

.method public final d()J
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {p0, v0}, Lw80;->P(Ljr0;I)Lmm2;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    iget-wide v0, p0, Ldv2;->p:J

    .line 7
    .line 8
    invoke-static {v0, v1}, Lse0;->H(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public final getLayoutDirection()Lhy1;
    .locals 0

    .line 1
    invoke-static {p0}, Lw80;->R(Ljr0;)Lxy1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lxy1;->M:Lhy1;

    .line 6
    .line 7
    return-object p0
.end method

.method public final m0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lq00;->G0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final q0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lq00;->G0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final z0()V
    .locals 0

    .line 1
    return-void
.end method

.class public final Lev3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Las0;
.implements Ldh0;


# instance fields
.field public final synthetic n:Lfv3;

.field public final o:Lo20;

.field public p:Lo20;

.field public q:Lwv2;

.field public final r:Ld01;

.field public final synthetic s:Lfv3;


# direct methods
.method public constructor <init>(Lfv3;Lo20;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lev3;->s:Lfv3;

    .line 5
    .line 6
    iput-object p1, p0, Lev3;->n:Lfv3;

    .line 7
    .line 8
    iput-object p2, p0, Lev3;->o:Lo20;

    .line 9
    .line 10
    sget-object p1, Lwv2;->o:Lwv2;

    .line 11
    .line 12
    iput-object p1, p0, Lev3;->q:Lwv2;

    .line 13
    .line 14
    sget-object p1, Ld01;->n:Ld01;

    .line 15
    .line 16
    iput-object p1, p0, Lev3;->r:Ld01;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final G(J)F
    .locals 0

    .line 1
    iget-object p0, p0, Lev3;->n:Lfv3;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Las0;->G(J)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final N(F)I
    .locals 0

    .line 1
    iget-object p0, p0, Lev3;->n:Lfv3;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Las0;->N(F)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final X(J)J
    .locals 0

    .line 1
    iget-object p0, p0, Lev3;->n:Lfv3;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Las0;->X(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public final Z(J)F
    .locals 0

    .line 1
    iget-object p0, p0, Lev3;->n:Lfv3;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Las0;->Z(J)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final a(Lwv2;Ldr;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lo20;

    .line 2
    .line 3
    invoke-static {p2}, Ldm0;->A(Ldh0;)Ldh0;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1, p2}, Lo20;-><init>(ILdh0;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lo20;->x()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lev3;->q:Lwv2;

    .line 15
    .line 16
    iput-object v0, p0, Lev3;->p:Lo20;

    .line 17
    .line 18
    invoke-virtual {v0}, Lo20;->v()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final b()F
    .locals 0

    .line 1
    iget-object p0, p0, Lev3;->n:Lfv3;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfv3;->b()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final e()Lhi0;
    .locals 0

    .line 1
    iget-object p0, p0, Lev3;->r:Ld01;

    .line 2
    .line 3
    return-object p0
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lev3;->s:Lfv3;

    .line 2
    .line 3
    iget-object v1, v0, Lfv3;->H:Lug2;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v0, v0, Lfv3;->G:Lug2;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lug2;->k(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit v1

    .line 12
    iget-object p0, p0, Lev3;->o:Lo20;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lo20;->g(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v1

    .line 20
    throw p0
.end method

.method public final i0(F)J
    .locals 0

    .line 1
    iget-object p0, p0, Lev3;->n:Lfv3;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Las0;->i0(F)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public final k()F
    .locals 0

    .line 1
    iget-object p0, p0, Lev3;->n:Lfv3;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfv3;->k()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final p0(I)F
    .locals 0

    .line 1
    iget-object p0, p0, Lev3;->n:Lfv3;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Las0;->p0(I)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final r0(F)F
    .locals 0

    .line 1
    iget-object p0, p0, Lev3;->n:Lfv3;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfv3;->b()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    div-float/2addr p1, p0

    .line 8
    return p1
.end method

.method public final s(F)J
    .locals 0

    .line 1
    iget-object p0, p0, Lev3;->n:Lfv3;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Las0;->s(F)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public final t(J)J
    .locals 0

    .line 1
    iget-object p0, p0, Lev3;->n:Lfv3;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Las0;->t(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public final v(F)F
    .locals 0

    .line 1
    iget-object p0, p0, Lev3;->n:Lfv3;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfv3;->b()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    mul-float/2addr p0, p1

    .line 8
    return p0
.end method

.class public final Lr00;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Las0;


# instance fields
.field public n:Liz;

.field public o:Ldh1;


# virtual methods
.method public final a(Lpe1;)Ldh1;
    .locals 1

    .line 1
    new-instance v0, Ldh1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Ldh1;->n:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object v0, p0, Lr00;->o:Ldh1;

    .line 9
    .line 10
    return-object v0
.end method

.method public final b()F
    .locals 0

    .line 1
    iget-object p0, p0, Lr00;->n:Liz;

    .line 2
    .line 3
    invoke-interface {p0}, Liz;->b()Las0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Las0;->b()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final k()F
    .locals 0

    .line 1
    iget-object p0, p0, Lr00;->n:Liz;

    .line 2
    .line 3
    invoke-interface {p0}, Liz;->b()Las0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Las0;->k()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

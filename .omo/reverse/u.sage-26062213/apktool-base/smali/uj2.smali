.class public final synthetic Luj2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:Ldv2;

.field public final synthetic o:Ldv2;

.field public final synthetic p:I

.field public final synthetic q:I

.field public final synthetic r:Ldv2;

.field public final synthetic s:I

.field public final synthetic t:I

.field public final synthetic u:I

.field public final synthetic v:I


# direct methods
.method public synthetic constructor <init>(Ldv2;Ldv2;IILdv2;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Luj2;->n:Ldv2;

    .line 5
    .line 6
    iput-object p2, p0, Luj2;->o:Ldv2;

    .line 7
    .line 8
    iput p3, p0, Luj2;->p:I

    .line 9
    .line 10
    iput p4, p0, Luj2;->q:I

    .line 11
    .line 12
    iput-object p5, p0, Luj2;->r:Ldv2;

    .line 13
    .line 14
    iput p6, p0, Luj2;->s:I

    .line 15
    .line 16
    iput p7, p0, Luj2;->t:I

    .line 17
    .line 18
    iput p8, p0, Luj2;->u:I

    .line 19
    .line 20
    iput p9, p0, Luj2;->v:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcv2;

    .line 2
    .line 3
    iget-object v0, p0, Luj2;->n:Ldv2;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v1, v0, Ldv2;->n:I

    .line 8
    .line 9
    iget v2, p0, Luj2;->u:I

    .line 10
    .line 11
    sub-int/2addr v2, v1

    .line 12
    div-int/lit8 v2, v2, 0x2

    .line 13
    .line 14
    iget v1, v0, Ldv2;->o:I

    .line 15
    .line 16
    iget v3, p0, Luj2;->v:I

    .line 17
    .line 18
    sub-int/2addr v3, v1

    .line 19
    div-int/lit8 v3, v3, 0x2

    .line 20
    .line 21
    invoke-static {p1, v0, v2, v3}, Lcv2;->j(Lcv2;Ldv2;II)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Luj2;->o:Ldv2;

    .line 25
    .line 26
    iget v1, p0, Luj2;->p:I

    .line 27
    .line 28
    iget v2, p0, Luj2;->q:I

    .line 29
    .line 30
    invoke-static {p1, v0, v1, v2}, Lcv2;->j(Lcv2;Ldv2;II)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Luj2;->r:Ldv2;

    .line 34
    .line 35
    iget v1, p0, Luj2;->s:I

    .line 36
    .line 37
    iget p0, p0, Luj2;->t:I

    .line 38
    .line 39
    invoke-static {p1, v0, v1, p0}, Lcv2;->j(Lcv2;Ldv2;II)V

    .line 40
    .line 41
    .line 42
    sget-object p0, Lt64;->a:Lt64;

    .line 43
    .line 44
    return-object p0
.end method

.class public final synthetic Lmo3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:Ldv2;

.field public final synthetic o:I

.field public final synthetic p:Ldv2;

.field public final synthetic q:I

.field public final synthetic r:I

.field public final synthetic s:Ldv2;

.field public final synthetic t:I

.field public final synthetic u:I


# direct methods
.method public synthetic constructor <init>(Ldv2;ILdv2;IILdv2;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmo3;->n:Ldv2;

    .line 5
    .line 6
    iput p2, p0, Lmo3;->o:I

    .line 7
    .line 8
    iput-object p3, p0, Lmo3;->p:Ldv2;

    .line 9
    .line 10
    iput p4, p0, Lmo3;->q:I

    .line 11
    .line 12
    iput p5, p0, Lmo3;->r:I

    .line 13
    .line 14
    iput-object p6, p0, Lmo3;->s:Ldv2;

    .line 15
    .line 16
    iput p7, p0, Lmo3;->t:I

    .line 17
    .line 18
    iput p8, p0, Lmo3;->u:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcv2;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lmo3;->n:Ldv2;

    .line 5
    .line 6
    iget v2, p0, Lmo3;->o:I

    .line 7
    .line 8
    invoke-static {p1, v1, v0, v2}, Lcv2;->j(Lcv2;Ldv2;II)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lmo3;->p:Ldv2;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget v1, p0, Lmo3;->q:I

    .line 16
    .line 17
    iget v2, p0, Lmo3;->r:I

    .line 18
    .line 19
    invoke-static {p1, v0, v1, v2}, Lcv2;->j(Lcv2;Ldv2;II)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lmo3;->s:Ldv2;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget v1, p0, Lmo3;->t:I

    .line 27
    .line 28
    iget p0, p0, Lmo3;->u:I

    .line 29
    .line 30
    invoke-static {p1, v0, v1, p0}, Lcv2;->j(Lcv2;Ldv2;II)V

    .line 31
    .line 32
    .line 33
    :cond_1
    sget-object p0, Lt64;->a:Lt64;

    .line 34
    .line 35
    return-object p0
.end method

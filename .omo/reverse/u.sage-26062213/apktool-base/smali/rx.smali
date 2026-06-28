.class public final synthetic Lrx;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:Ldv2;

.field public final synthetic o:Lya2;

.field public final synthetic p:Lgb2;

.field public final synthetic q:I

.field public final synthetic r:I

.field public final synthetic s:Ltx;


# direct methods
.method public synthetic constructor <init>(Ldv2;Lya2;Lgb2;IILtx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lrx;->n:Ldv2;

    .line 5
    .line 6
    iput-object p2, p0, Lrx;->o:Lya2;

    .line 7
    .line 8
    iput-object p3, p0, Lrx;->p:Lgb2;

    .line 9
    .line 10
    iput p4, p0, Lrx;->q:I

    .line 11
    .line 12
    iput p5, p0, Lrx;->r:I

    .line 13
    .line 14
    iput-object p6, p0, Lrx;->s:Ltx;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcv2;

    .line 3
    .line 4
    iget-object p1, p0, Lrx;->p:Lgb2;

    .line 5
    .line 6
    invoke-interface {p1}, Ljt1;->getLayoutDirection()Lhy1;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object p1, p0, Lrx;->s:Ltx;

    .line 11
    .line 12
    iget-object v6, p1, Ltx;->a:Lcw;

    .line 13
    .line 14
    iget-object v1, p0, Lrx;->n:Ldv2;

    .line 15
    .line 16
    iget-object v2, p0, Lrx;->o:Lya2;

    .line 17
    .line 18
    iget v4, p0, Lrx;->q:I

    .line 19
    .line 20
    iget v5, p0, Lrx;->r:I

    .line 21
    .line 22
    invoke-static/range {v0 .. v6}, Lqx;->b(Lcv2;Ldv2;Lya2;Lhy1;IILcw;)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lt64;->a:Lt64;

    .line 26
    .line 27
    return-object p0
.end method

.class public final Ltd;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic o:Ln14;

.field public final synthetic p:Lnd2;

.field public final synthetic q:Lpe1;

.field public final synthetic r:Lcw;

.field public final synthetic s:Lpe1;

.field public final synthetic t:Lka0;

.field public final synthetic u:I


# direct methods
.method public constructor <init>(Ln14;Lnd2;Lpe1;Lcw;Lpe1;Lka0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltd;->o:Ln14;

    .line 2
    .line 3
    iput-object p2, p0, Ltd;->p:Lnd2;

    .line 4
    .line 5
    iput-object p3, p0, Ltd;->q:Lpe1;

    .line 6
    .line 7
    iput-object p4, p0, Ltd;->r:Lcw;

    .line 8
    .line 9
    iput-object p5, p0, Ltd;->s:Lpe1;

    .line 10
    .line 11
    iput-object p6, p0, Ltd;->t:Lka0;

    .line 12
    .line 13
    iput p7, p0, Ltd;->u:I

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v6, p1

    .line 2
    check-cast v6, Lag1;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    iget p1, p0, Ltd;->u:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Lqj0;->f0(I)I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    iget-object v0, p0, Ltd;->o:Ln14;

    .line 18
    .line 19
    iget-object v1, p0, Ltd;->p:Lnd2;

    .line 20
    .line 21
    iget-object v2, p0, Ltd;->q:Lpe1;

    .line 22
    .line 23
    iget-object v3, p0, Ltd;->r:Lcw;

    .line 24
    .line 25
    iget-object v4, p0, Ltd;->s:Lpe1;

    .line 26
    .line 27
    iget-object v5, p0, Ltd;->t:Lka0;

    .line 28
    .line 29
    invoke-static/range {v0 .. v7}, Lqn0;->a(Ln14;Lnd2;Lpe1;Lcw;Lpe1;Lka0;Lag1;I)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lt64;->a:Lt64;

    .line 33
    .line 34
    return-object p0
.end method

.class public final synthetic Lrv0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Lnd2;

.field public final synthetic o:F

.field public final synthetic p:J

.field public final synthetic q:I

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Lnd2;FJII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lrv0;->n:Lnd2;

    .line 5
    .line 6
    iput p2, p0, Lrv0;->o:F

    .line 7
    .line 8
    iput-wide p3, p0, Lrv0;->p:J

    .line 9
    .line 10
    iput p5, p0, Lrv0;->q:I

    .line 11
    .line 12
    iput p6, p0, Lrv0;->r:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Lag1;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lrv0;->q:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Lqj0;->f0(I)I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    iget-object v0, p0, Lrv0;->n:Lnd2;

    .line 18
    .line 19
    iget v1, p0, Lrv0;->o:F

    .line 20
    .line 21
    iget-wide v2, p0, Lrv0;->p:J

    .line 22
    .line 23
    iget v6, p0, Lrv0;->r:I

    .line 24
    .line 25
    invoke-static/range {v0 .. v6}, Ltv4;->e(Lnd2;FJLag1;II)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lt64;->a:Lt64;

    .line 29
    .line 30
    return-object p0
.end method

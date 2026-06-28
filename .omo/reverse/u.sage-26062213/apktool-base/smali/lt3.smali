.class public final Llt3;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic o:Lpt3;

.field public final synthetic p:Lnd2;

.field public final synthetic q:Ldf1;

.field public final synthetic r:I


# direct methods
.method public constructor <init>(Lpt3;Lnd2;Ldf1;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Llt3;->o:Lpt3;

    .line 2
    .line 3
    iput-object p2, p0, Llt3;->p:Lnd2;

    .line 4
    .line 5
    iput-object p3, p0, Llt3;->q:Ldf1;

    .line 6
    .line 7
    iput p4, p0, Llt3;->r:I

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lag1;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    iget p2, p0, Llt3;->r:I

    .line 9
    .line 10
    or-int/lit8 p2, p2, 0x1

    .line 11
    .line 12
    invoke-static {p2}, Lqj0;->f0(I)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    iget-object v0, p0, Llt3;->o:Lpt3;

    .line 17
    .line 18
    iget-object v1, p0, Llt3;->p:Lnd2;

    .line 19
    .line 20
    iget-object p0, p0, Llt3;->q:Ldf1;

    .line 21
    .line 22
    invoke-static {v0, v1, p0, p1, p2}, Lmt3;->b(Lpt3;Lnd2;Ldf1;Lag1;I)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lt64;->a:Lt64;

    .line 26
    .line 27
    return-object p0
.end method

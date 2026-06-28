.class public final synthetic Lf91;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Lnd2;

.field public final synthetic o:Lqh;

.field public final synthetic p:Lsh;

.field public final synthetic q:Lbw;

.field public final synthetic r:I

.field public final synthetic s:I

.field public final synthetic t:Lka0;


# direct methods
.method public synthetic constructor <init>(Lnd2;Lqh;Lsh;Lbw;IILka0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf91;->n:Lnd2;

    .line 5
    .line 6
    iput-object p2, p0, Lf91;->o:Lqh;

    .line 7
    .line 8
    iput-object p3, p0, Lf91;->p:Lsh;

    .line 9
    .line 10
    iput-object p4, p0, Lf91;->q:Lbw;

    .line 11
    .line 12
    iput p5, p0, Lf91;->r:I

    .line 13
    .line 14
    iput p6, p0, Lf91;->s:I

    .line 15
    .line 16
    iput-object p7, p0, Lf91;->t:Lka0;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Lag1;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const p1, 0x180001

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lqj0;->f0(I)I

    .line 13
    .line 14
    .line 15
    move-result v8

    .line 16
    iget-object v0, p0, Lf91;->n:Lnd2;

    .line 17
    .line 18
    iget-object v1, p0, Lf91;->o:Lqh;

    .line 19
    .line 20
    iget-object v2, p0, Lf91;->p:Lsh;

    .line 21
    .line 22
    iget-object v3, p0, Lf91;->q:Lbw;

    .line 23
    .line 24
    iget v4, p0, Lf91;->r:I

    .line 25
    .line 26
    iget v5, p0, Lf91;->s:I

    .line 27
    .line 28
    iget-object v6, p0, Lf91;->t:Lka0;

    .line 29
    .line 30
    invoke-static/range {v0 .. v8}, Lnt1;->b(Lnd2;Lqh;Lsh;Lbw;IILka0;Lag1;I)V

    .line 31
    .line 32
    .line 33
    sget-object p0, Lt64;->a:Lt64;

    .line 34
    .line 35
    return-object p0
.end method

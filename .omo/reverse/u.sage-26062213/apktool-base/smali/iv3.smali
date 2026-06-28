.class public final synthetic Liv3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Z

.field public final synthetic o:Lpe1;

.field public final synthetic p:Lnd2;

.field public final synthetic q:Z

.field public final synthetic r:Lgv3;

.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(ZLpe1;Lnd2;ZLgv3;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Liv3;->n:Z

    .line 5
    .line 6
    iput-object p2, p0, Liv3;->o:Lpe1;

    .line 7
    .line 8
    iput-object p3, p0, Liv3;->p:Lnd2;

    .line 9
    .line 10
    iput-boolean p4, p0, Liv3;->q:Z

    .line 11
    .line 12
    iput-object p5, p0, Liv3;->r:Lgv3;

    .line 13
    .line 14
    iput p6, p0, Liv3;->s:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v5, p1

    .line 2
    check-cast v5, Lag1;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Liv3;->s:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Lqj0;->f0(I)I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    iget-boolean v0, p0, Liv3;->n:Z

    .line 18
    .line 19
    iget-object v1, p0, Liv3;->o:Lpe1;

    .line 20
    .line 21
    iget-object v2, p0, Liv3;->p:Lnd2;

    .line 22
    .line 23
    iget-boolean v3, p0, Liv3;->q:Z

    .line 24
    .line 25
    iget-object v4, p0, Liv3;->r:Lgv3;

    .line 26
    .line 27
    invoke-static/range {v0 .. v6}, Ljv3;->a(ZLpe1;Lnd2;ZLgv3;Lag1;I)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lt64;->a:Lt64;

    .line 31
    .line 32
    return-object p0
.end method

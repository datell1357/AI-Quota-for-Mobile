.class public final synthetic Lb30;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Lnd2;

.field public final synthetic o:Ljl3;

.field public final synthetic p:Lz20;

.field public final synthetic q:La30;

.field public final synthetic r:Lfx;

.field public final synthetic s:Lka0;


# direct methods
.method public synthetic constructor <init>(Lnd2;Ljl3;Lz20;La30;Lfx;Lka0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb30;->n:Lnd2;

    .line 5
    .line 6
    iput-object p2, p0, Lb30;->o:Ljl3;

    .line 7
    .line 8
    iput-object p3, p0, Lb30;->p:Lz20;

    .line 9
    .line 10
    iput-object p4, p0, Lb30;->q:La30;

    .line 11
    .line 12
    iput-object p5, p0, Lb30;->r:Lfx;

    .line 13
    .line 14
    iput-object p6, p0, Lb30;->s:Lka0;

    .line 15
    .line 16
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
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const p1, 0x30007

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lqj0;->f0(I)I

    .line 13
    .line 14
    .line 15
    move-result v7

    .line 16
    iget-object v0, p0, Lb30;->n:Lnd2;

    .line 17
    .line 18
    iget-object v1, p0, Lb30;->o:Ljl3;

    .line 19
    .line 20
    iget-object v2, p0, Lb30;->p:Lz20;

    .line 21
    .line 22
    iget-object v3, p0, Lb30;->q:La30;

    .line 23
    .line 24
    iget-object v4, p0, Lb30;->r:Lfx;

    .line 25
    .line 26
    iget-object v5, p0, Lb30;->s:Lka0;

    .line 27
    .line 28
    invoke-static/range {v0 .. v7}, Lk75;->b(Lnd2;Ljl3;Lz20;La30;Lfx;Lka0;Lag1;I)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Lt64;->a:Lt64;

    .line 32
    .line 33
    return-object p0
.end method

.class public final synthetic Lqz;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Lne1;

.field public final synthetic o:Lnd2;

.field public final synthetic p:Z

.field public final synthetic q:Ljl3;

.field public final synthetic r:Lkz;

.field public final synthetic s:Lfx;

.field public final synthetic t:Lzr2;

.field public final synthetic u:Lka0;


# direct methods
.method public synthetic constructor <init>(Lne1;Lnd2;ZLjl3;Lkz;Lfx;Lzr2;Lka0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqz;->n:Lne1;

    .line 5
    .line 6
    iput-object p2, p0, Lqz;->o:Lnd2;

    .line 7
    .line 8
    iput-boolean p3, p0, Lqz;->p:Z

    .line 9
    .line 10
    iput-object p4, p0, Lqz;->q:Ljl3;

    .line 11
    .line 12
    iput-object p5, p0, Lqz;->r:Lkz;

    .line 13
    .line 14
    iput-object p6, p0, Lqz;->s:Lfx;

    .line 15
    .line 16
    iput-object p7, p0, Lqz;->t:Lzr2;

    .line 17
    .line 18
    iput-object p8, p0, Lqz;->u:Lka0;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v8, p1

    .line 2
    check-cast v8, Lag1;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const p1, 0x30000001

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lqj0;->f0(I)I

    .line 13
    .line 14
    .line 15
    move-result v9

    .line 16
    iget-object v0, p0, Lqz;->n:Lne1;

    .line 17
    .line 18
    iget-object v1, p0, Lqz;->o:Lnd2;

    .line 19
    .line 20
    iget-boolean v2, p0, Lqz;->p:Z

    .line 21
    .line 22
    iget-object v3, p0, Lqz;->q:Ljl3;

    .line 23
    .line 24
    iget-object v4, p0, Lqz;->r:Lkz;

    .line 25
    .line 26
    iget-object v5, p0, Lqz;->s:Lfx;

    .line 27
    .line 28
    iget-object v6, p0, Lqz;->t:Lzr2;

    .line 29
    .line 30
    iget-object v7, p0, Lqz;->u:Lka0;

    .line 31
    .line 32
    invoke-static/range {v0 .. v9}, Ldm0;->f(Lne1;Lnd2;ZLjl3;Lkz;Lfx;Lzr2;Lka0;Lag1;I)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lt64;->a:Lt64;

    .line 36
    .line 37
    return-object p0
.end method

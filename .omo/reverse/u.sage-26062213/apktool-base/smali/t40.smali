.class public final synthetic Lt40;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Z

.field public final synthetic o:Lne1;

.field public final synthetic p:Lka0;

.field public final synthetic q:Lnd2;

.field public final synthetic r:Z

.field public final synthetic s:Ldf1;

.field public final synthetic t:Ljl3;

.field public final synthetic u:Lug3;

.field public final synthetic v:Lvg3;

.field public final synthetic w:Lfx;

.field public final synthetic x:Lqh;

.field public final synthetic y:Lzr2;


# direct methods
.method public synthetic constructor <init>(ZLne1;Lka0;Lnd2;ZLdf1;Ljl3;Lug3;Lvg3;Lfx;Lqh;Lzr2;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lt40;->n:Z

    .line 5
    .line 6
    iput-object p2, p0, Lt40;->o:Lne1;

    .line 7
    .line 8
    iput-object p3, p0, Lt40;->p:Lka0;

    .line 9
    .line 10
    iput-object p4, p0, Lt40;->q:Lnd2;

    .line 11
    .line 12
    iput-boolean p5, p0, Lt40;->r:Z

    .line 13
    .line 14
    iput-object p6, p0, Lt40;->s:Ldf1;

    .line 15
    .line 16
    iput-object p7, p0, Lt40;->t:Ljl3;

    .line 17
    .line 18
    iput-object p8, p0, Lt40;->u:Lug3;

    .line 19
    .line 20
    iput-object p9, p0, Lt40;->v:Lvg3;

    .line 21
    .line 22
    iput-object p10, p0, Lt40;->w:Lfx;

    .line 23
    .line 24
    iput-object p11, p0, Lt40;->x:Lqh;

    .line 25
    .line 26
    iput-object p12, p0, Lt40;->y:Lzr2;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    move-object v12, p1

    .line 2
    check-cast v12, Lag1;

    .line 3
    .line 4
    move-object/from16 v0, p2

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Integer;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const v0, 0x30181

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lqj0;->f0(I)I

    .line 15
    .line 16
    .line 17
    move-result v13

    .line 18
    iget-boolean v0, p0, Lt40;->n:Z

    .line 19
    .line 20
    iget-object v1, p0, Lt40;->o:Lne1;

    .line 21
    .line 22
    iget-object v2, p0, Lt40;->p:Lka0;

    .line 23
    .line 24
    iget-object v3, p0, Lt40;->q:Lnd2;

    .line 25
    .line 26
    iget-boolean v4, p0, Lt40;->r:Z

    .line 27
    .line 28
    iget-object v5, p0, Lt40;->s:Ldf1;

    .line 29
    .line 30
    iget-object v6, p0, Lt40;->t:Ljl3;

    .line 31
    .line 32
    iget-object v7, p0, Lt40;->u:Lug3;

    .line 33
    .line 34
    iget-object v8, p0, Lt40;->v:Lvg3;

    .line 35
    .line 36
    iget-object v9, p0, Lt40;->w:Lfx;

    .line 37
    .line 38
    iget-object v10, p0, Lt40;->x:Lqh;

    .line 39
    .line 40
    iget-object v11, p0, Lt40;->y:Lzr2;

    .line 41
    .line 42
    invoke-static/range {v0 .. v13}, La50;->b(ZLne1;Lka0;Lnd2;ZLdf1;Ljl3;Lug3;Lvg3;Lfx;Lqh;Lzr2;Lag1;I)V

    .line 43
    .line 44
    .line 45
    sget-object p0, Lt64;->a:Lt64;

    .line 46
    .line 47
    return-object p0
.end method

.class public final synthetic Lsj2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Ldb3;

.field public final synthetic o:Z

.field public final synthetic p:Lne1;

.field public final synthetic q:Lka0;

.field public final synthetic r:Lnd2;

.field public final synthetic s:Z

.field public final synthetic t:Ldf1;

.field public final synthetic u:Z

.field public final synthetic v:Lrj2;

.field public final synthetic w:I


# direct methods
.method public synthetic constructor <init>(Ldb3;ZLne1;Lka0;Lnd2;ZLdf1;ZLrj2;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsj2;->n:Ldb3;

    .line 5
    .line 6
    iput-boolean p2, p0, Lsj2;->o:Z

    .line 7
    .line 8
    iput-object p3, p0, Lsj2;->p:Lne1;

    .line 9
    .line 10
    iput-object p4, p0, Lsj2;->q:Lka0;

    .line 11
    .line 12
    iput-object p5, p0, Lsj2;->r:Lnd2;

    .line 13
    .line 14
    iput-boolean p6, p0, Lsj2;->s:Z

    .line 15
    .line 16
    iput-object p7, p0, Lsj2;->t:Ldf1;

    .line 17
    .line 18
    iput-boolean p8, p0, Lsj2;->u:Z

    .line 19
    .line 20
    iput-object p9, p0, Lsj2;->v:Lrj2;

    .line 21
    .line 22
    iput p10, p0, Lsj2;->w:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    move-object v9, p1

    .line 2
    check-cast v9, Lag1;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lsj2;->w:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Lqj0;->f0(I)I

    .line 14
    .line 15
    .line 16
    move-result v10

    .line 17
    iget-object v0, p0, Lsj2;->n:Ldb3;

    .line 18
    .line 19
    iget-boolean v1, p0, Lsj2;->o:Z

    .line 20
    .line 21
    iget-object v2, p0, Lsj2;->p:Lne1;

    .line 22
    .line 23
    iget-object v3, p0, Lsj2;->q:Lka0;

    .line 24
    .line 25
    iget-object v4, p0, Lsj2;->r:Lnd2;

    .line 26
    .line 27
    iget-boolean v5, p0, Lsj2;->s:Z

    .line 28
    .line 29
    iget-object v6, p0, Lsj2;->t:Ldf1;

    .line 30
    .line 31
    iget-boolean v7, p0, Lsj2;->u:Z

    .line 32
    .line 33
    iget-object v8, p0, Lsj2;->v:Lrj2;

    .line 34
    .line 35
    invoke-static/range {v0 .. v10}, Lzj2;->b(Ldb3;ZLne1;Lka0;Lnd2;ZLdf1;ZLrj2;Lag1;I)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lt64;->a:Lt64;

    .line 39
    .line 40
    return-object p0
.end method

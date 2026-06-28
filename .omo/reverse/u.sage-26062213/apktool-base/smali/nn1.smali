.class public final synthetic Lnn1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Lne1;

.field public final synthetic o:Lnd2;

.field public final synthetic p:Z

.field public final synthetic q:Lmn1;

.field public final synthetic r:Ljl3;

.field public final synthetic s:Ldf1;

.field public final synthetic t:I

.field public final synthetic u:I


# direct methods
.method public synthetic constructor <init>(Lne1;Lnd2;ZLmn1;Ljl3;Ldf1;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnn1;->n:Lne1;

    .line 5
    .line 6
    iput-object p2, p0, Lnn1;->o:Lnd2;

    .line 7
    .line 8
    iput-boolean p3, p0, Lnn1;->p:Z

    .line 9
    .line 10
    iput-object p4, p0, Lnn1;->q:Lmn1;

    .line 11
    .line 12
    iput-object p5, p0, Lnn1;->r:Ljl3;

    .line 13
    .line 14
    iput-object p6, p0, Lnn1;->s:Ldf1;

    .line 15
    .line 16
    iput p7, p0, Lnn1;->t:I

    .line 17
    .line 18
    iput p8, p0, Lnn1;->u:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

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
    iget p1, p0, Lnn1;->t:I

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
    iget-object v0, p0, Lnn1;->n:Lne1;

    .line 18
    .line 19
    iget-object v1, p0, Lnn1;->o:Lnd2;

    .line 20
    .line 21
    iget-boolean v2, p0, Lnn1;->p:Z

    .line 22
    .line 23
    iget-object v3, p0, Lnn1;->q:Lmn1;

    .line 24
    .line 25
    iget-object v4, p0, Lnn1;->r:Ljl3;

    .line 26
    .line 27
    iget-object v5, p0, Lnn1;->s:Ldf1;

    .line 28
    .line 29
    iget v8, p0, Lnn1;->u:I

    .line 30
    .line 31
    invoke-static/range {v0 .. v8}, Lbi4;->b(Lne1;Lnd2;ZLmn1;Ljl3;Ldf1;Lag1;II)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lt64;->a:Lt64;

    .line 35
    .line 36
    return-object p0
.end method

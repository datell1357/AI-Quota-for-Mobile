.class public final synthetic Llv;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Lnd2;

.field public final synthetic p:Lay3;

.field public final synthetic q:I

.field public final synthetic r:Z

.field public final synthetic s:I

.field public final synthetic t:I

.field public final synthetic u:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lnd2;Lay3;IZIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llv;->n:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Llv;->o:Lnd2;

    .line 7
    .line 8
    iput-object p3, p0, Llv;->p:Lay3;

    .line 9
    .line 10
    iput p4, p0, Llv;->q:I

    .line 11
    .line 12
    iput-boolean p5, p0, Llv;->r:Z

    .line 13
    .line 14
    iput p6, p0, Llv;->s:I

    .line 15
    .line 16
    iput p7, p0, Llv;->t:I

    .line 17
    .line 18
    iput p8, p0, Llv;->u:I

    .line 19
    .line 20
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
    iget p1, p0, Llv;->u:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Lqj0;->f0(I)I

    .line 14
    .line 15
    .line 16
    move-result v8

    .line 17
    iget-object v0, p0, Llv;->n:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v1, p0, Llv;->o:Lnd2;

    .line 20
    .line 21
    iget-object v2, p0, Llv;->p:Lay3;

    .line 22
    .line 23
    iget v3, p0, Llv;->q:I

    .line 24
    .line 25
    iget-boolean v4, p0, Llv;->r:Z

    .line 26
    .line 27
    iget v5, p0, Llv;->s:I

    .line 28
    .line 29
    iget v6, p0, Llv;->t:I

    .line 30
    .line 31
    invoke-static/range {v0 .. v8}, Lfl4;->a(Ljava/lang/String;Lnd2;Lay3;IZIILag1;I)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lt64;->a:Lt64;

    .line 35
    .line 36
    return-object p0
.end method

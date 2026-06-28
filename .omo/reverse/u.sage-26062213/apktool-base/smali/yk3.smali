.class public final synthetic Lyk3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Lgs2;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Lne1;

.field public final synthetic r:Z

.field public final synthetic s:Lne1;

.field public final synthetic t:Ldf1;

.field public final synthetic u:I

.field public final synthetic v:I


# direct methods
.method public synthetic constructor <init>(Lgs2;Ljava/lang/String;Ljava/lang/String;Lne1;ZLne1;Ldf1;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyk3;->n:Lgs2;

    .line 5
    .line 6
    iput-object p2, p0, Lyk3;->o:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lyk3;->p:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lyk3;->q:Lne1;

    .line 11
    .line 12
    iput-boolean p5, p0, Lyk3;->r:Z

    .line 13
    .line 14
    iput-object p6, p0, Lyk3;->s:Lne1;

    .line 15
    .line 16
    iput-object p7, p0, Lyk3;->t:Ldf1;

    .line 17
    .line 18
    iput p8, p0, Lyk3;->u:I

    .line 19
    .line 20
    iput p9, p0, Lyk3;->v:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

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
    iget p1, p0, Lyk3;->u:I

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
    iget-object v0, p0, Lyk3;->n:Lgs2;

    .line 18
    .line 19
    iget-object v1, p0, Lyk3;->o:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p0, Lyk3;->p:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v3, p0, Lyk3;->q:Lne1;

    .line 24
    .line 25
    iget-boolean v4, p0, Lyk3;->r:Z

    .line 26
    .line 27
    iget-object v5, p0, Lyk3;->s:Lne1;

    .line 28
    .line 29
    iget-object v6, p0, Lyk3;->t:Ldf1;

    .line 30
    .line 31
    iget v9, p0, Lyk3;->v:I

    .line 32
    .line 33
    invoke-static/range {v0 .. v9}, Lqj0;->n(Lgs2;Ljava/lang/String;Ljava/lang/String;Lne1;ZLne1;Ldf1;Lag1;II)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lt64;->a:Lt64;

    .line 37
    .line 38
    return-object p0
.end method

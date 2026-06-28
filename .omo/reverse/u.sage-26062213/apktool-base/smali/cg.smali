.class public final synthetic Lcg;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Lnd2;

.field public final synthetic o:Lka0;

.field public final synthetic p:Lay3;

.field public final synthetic q:Lay3;

.field public final synthetic r:Ldf1;

.field public final synthetic s:Lff1;

.field public final synthetic t:F

.field public final synthetic u:Lzr2;

.field public final synthetic v:Lhd4;

.field public final synthetic w:Lk04;

.field public final synthetic x:I

.field public final synthetic y:I


# direct methods
.method public synthetic constructor <init>(Lnd2;Lka0;Lay3;Lay3;Ldf1;Lff1;FLzr2;Lhd4;Lk04;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcg;->n:Lnd2;

    .line 5
    .line 6
    iput-object p2, p0, Lcg;->o:Lka0;

    .line 7
    .line 8
    iput-object p3, p0, Lcg;->p:Lay3;

    .line 9
    .line 10
    iput-object p4, p0, Lcg;->q:Lay3;

    .line 11
    .line 12
    iput-object p5, p0, Lcg;->r:Ldf1;

    .line 13
    .line 14
    iput-object p6, p0, Lcg;->s:Lff1;

    .line 15
    .line 16
    iput p7, p0, Lcg;->t:F

    .line 17
    .line 18
    iput-object p8, p0, Lcg;->u:Lzr2;

    .line 19
    .line 20
    iput-object p9, p0, Lcg;->v:Lhd4;

    .line 21
    .line 22
    iput-object p10, p0, Lcg;->w:Lk04;

    .line 23
    .line 24
    iput p11, p0, Lcg;->x:I

    .line 25
    .line 26
    iput p12, p0, Lcg;->y:I

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    move-object v10, p1

    .line 2
    check-cast v10, Lag1;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lcg;->x:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Lqj0;->f0(I)I

    .line 14
    .line 15
    .line 16
    move-result v11

    .line 17
    iget p1, p0, Lcg;->y:I

    .line 18
    .line 19
    invoke-static {p1}, Lqj0;->f0(I)I

    .line 20
    .line 21
    .line 22
    move-result v12

    .line 23
    iget-object v0, p0, Lcg;->n:Lnd2;

    .line 24
    .line 25
    iget-object v1, p0, Lcg;->o:Lka0;

    .line 26
    .line 27
    iget-object v2, p0, Lcg;->p:Lay3;

    .line 28
    .line 29
    iget-object v3, p0, Lcg;->q:Lay3;

    .line 30
    .line 31
    iget-object v4, p0, Lcg;->r:Ldf1;

    .line 32
    .line 33
    iget-object v5, p0, Lcg;->s:Lff1;

    .line 34
    .line 35
    iget v6, p0, Lcg;->t:F

    .line 36
    .line 37
    iget-object v7, p0, Lcg;->u:Lzr2;

    .line 38
    .line 39
    iget-object v8, p0, Lcg;->v:Lhd4;

    .line 40
    .line 41
    iget-object v9, p0, Lcg;->w:Lk04;

    .line 42
    .line 43
    invoke-static/range {v0 .. v12}, Leg;->a(Lnd2;Lka0;Lay3;Lay3;Ldf1;Lff1;FLzr2;Lhd4;Lk04;Lag1;II)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lt64;->a:Lt64;

    .line 47
    .line 48
    return-object p0
.end method

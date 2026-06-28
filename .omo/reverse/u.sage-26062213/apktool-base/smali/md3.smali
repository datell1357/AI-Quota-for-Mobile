.class public final synthetic Lmd3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Lnd2;

.field public final synthetic o:Ldf1;

.field public final synthetic p:Ldf1;

.field public final synthetic q:Ldf1;

.field public final synthetic r:Ldf1;

.field public final synthetic s:I

.field public final synthetic t:J

.field public final synthetic u:J

.field public final synthetic v:Lhd4;

.field public final synthetic w:Lka0;

.field public final synthetic x:I

.field public final synthetic y:I


# direct methods
.method public synthetic constructor <init>(Lnd2;Ldf1;Ldf1;Ldf1;Ldf1;IJJLhd4;Lka0;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmd3;->n:Lnd2;

    .line 5
    .line 6
    iput-object p2, p0, Lmd3;->o:Ldf1;

    .line 7
    .line 8
    iput-object p3, p0, Lmd3;->p:Ldf1;

    .line 9
    .line 10
    iput-object p4, p0, Lmd3;->q:Ldf1;

    .line 11
    .line 12
    iput-object p5, p0, Lmd3;->r:Ldf1;

    .line 13
    .line 14
    iput p6, p0, Lmd3;->s:I

    .line 15
    .line 16
    iput-wide p7, p0, Lmd3;->t:J

    .line 17
    .line 18
    iput-wide p9, p0, Lmd3;->u:J

    .line 19
    .line 20
    iput-object p11, p0, Lmd3;->v:Lhd4;

    .line 21
    .line 22
    iput-object p12, p0, Lmd3;->w:Lka0;

    .line 23
    .line 24
    iput p13, p0, Lmd3;->x:I

    .line 25
    .line 26
    iput p14, p0, Lmd3;->y:I

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    check-cast v12, Lag1;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget v1, v0, Lmd3;->x:I

    .line 15
    .line 16
    or-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 19
    .line 20
    .line 21
    move-result v13

    .line 22
    iget-object v1, v0, Lmd3;->n:Lnd2;

    .line 23
    .line 24
    move-object v2, v1

    .line 25
    iget-object v1, v0, Lmd3;->o:Ldf1;

    .line 26
    .line 27
    move-object v3, v2

    .line 28
    iget-object v2, v0, Lmd3;->p:Ldf1;

    .line 29
    .line 30
    move-object v4, v3

    .line 31
    iget-object v3, v0, Lmd3;->q:Ldf1;

    .line 32
    .line 33
    move-object v5, v4

    .line 34
    iget-object v4, v0, Lmd3;->r:Ldf1;

    .line 35
    .line 36
    move-object v6, v5

    .line 37
    iget v5, v0, Lmd3;->s:I

    .line 38
    .line 39
    move-object v8, v6

    .line 40
    iget-wide v6, v0, Lmd3;->t:J

    .line 41
    .line 42
    move-object v10, v8

    .line 43
    iget-wide v8, v0, Lmd3;->u:J

    .line 44
    .line 45
    move-object v11, v10

    .line 46
    iget-object v10, v0, Lmd3;->v:Lhd4;

    .line 47
    .line 48
    move-object v14, v11

    .line 49
    iget-object v11, v0, Lmd3;->w:Lka0;

    .line 50
    .line 51
    iget v0, v0, Lmd3;->y:I

    .line 52
    .line 53
    move-object v15, v14

    .line 54
    move v14, v0

    .line 55
    move-object v0, v15

    .line 56
    invoke-static/range {v0 .. v14}, Ln44;->H(Lnd2;Ldf1;Ldf1;Ldf1;Ldf1;IJJLhd4;Lka0;Lag1;II)V

    .line 57
    .line 58
    .line 59
    sget-object v0, Lt64;->a:Lt64;

    .line 60
    .line 61
    return-object v0
.end method

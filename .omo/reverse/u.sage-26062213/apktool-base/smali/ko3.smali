.class public final synthetic Lko3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Lnd2;

.field public final synthetic o:Ldf1;

.field public final synthetic p:Ldf1;

.field public final synthetic q:Ljl3;

.field public final synthetic r:J

.field public final synthetic s:J

.field public final synthetic t:J

.field public final synthetic u:J

.field public final synthetic v:Lka0;

.field public final synthetic w:I


# direct methods
.method public synthetic constructor <init>(Lnd2;Ldf1;Ldf1;Ljl3;JJJJLka0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lko3;->n:Lnd2;

    .line 5
    .line 6
    iput-object p2, p0, Lko3;->o:Ldf1;

    .line 7
    .line 8
    iput-object p3, p0, Lko3;->p:Ldf1;

    .line 9
    .line 10
    iput-object p4, p0, Lko3;->q:Ljl3;

    .line 11
    .line 12
    iput-wide p5, p0, Lko3;->r:J

    .line 13
    .line 14
    iput-wide p7, p0, Lko3;->s:J

    .line 15
    .line 16
    iput-wide p9, p0, Lko3;->t:J

    .line 17
    .line 18
    iput-wide p11, p0, Lko3;->u:J

    .line 19
    .line 20
    iput-object p13, p0, Lko3;->v:Lka0;

    .line 21
    .line 22
    iput p14, p0, Lko3;->w:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    check-cast v13, Lag1;

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
    iget v1, v0, Lko3;->w:I

    .line 15
    .line 16
    or-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 19
    .line 20
    .line 21
    move-result v14

    .line 22
    iget-object v1, v0, Lko3;->n:Lnd2;

    .line 23
    .line 24
    move-object v2, v1

    .line 25
    iget-object v1, v0, Lko3;->o:Ldf1;

    .line 26
    .line 27
    move-object v3, v2

    .line 28
    iget-object v2, v0, Lko3;->p:Ldf1;

    .line 29
    .line 30
    move-object v4, v3

    .line 31
    iget-object v3, v0, Lko3;->q:Ljl3;

    .line 32
    .line 33
    move-object v6, v4

    .line 34
    iget-wide v4, v0, Lko3;->r:J

    .line 35
    .line 36
    move-object v8, v6

    .line 37
    iget-wide v6, v0, Lko3;->s:J

    .line 38
    .line 39
    move-object v10, v8

    .line 40
    iget-wide v8, v0, Lko3;->t:J

    .line 41
    .line 42
    move-object v12, v10

    .line 43
    iget-wide v10, v0, Lko3;->u:J

    .line 44
    .line 45
    iget-object v0, v0, Lko3;->v:Lka0;

    .line 46
    .line 47
    move-object v15, v12

    .line 48
    move-object v12, v0

    .line 49
    move-object v0, v15

    .line 50
    invoke-static/range {v0 .. v14}, Lc75;->g(Lnd2;Ldf1;Ldf1;Ljl3;JJJJLka0;Lag1;I)V

    .line 51
    .line 52
    .line 53
    sget-object v0, Lt64;->a:Lt64;

    .line 54
    .line 55
    return-object v0
.end method

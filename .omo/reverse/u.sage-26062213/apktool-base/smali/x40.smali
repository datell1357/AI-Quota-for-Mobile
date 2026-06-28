.class public final synthetic Lx40;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Lka0;

.field public final synthetic o:Lay3;

.field public final synthetic p:J

.field public final synthetic q:Ldf1;

.field public final synthetic r:J

.field public final synthetic s:J

.field public final synthetic t:F

.field public final synthetic u:Lqh;

.field public final synthetic v:Lzr2;

.field public final synthetic w:Lyq3;

.field public final synthetic x:Lyq3;

.field public final synthetic y:Lyq3;

.field public final synthetic z:Lyq3;


# direct methods
.method public synthetic constructor <init>(Lka0;Lay3;JLdf1;JJFLqh;Lzr2;Lyq3;Lyq3;Lyq3;Lyq3;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx40;->n:Lka0;

    .line 5
    .line 6
    iput-object p2, p0, Lx40;->o:Lay3;

    .line 7
    .line 8
    iput-wide p3, p0, Lx40;->p:J

    .line 9
    .line 10
    iput-object p5, p0, Lx40;->q:Ldf1;

    .line 11
    .line 12
    iput-wide p6, p0, Lx40;->r:J

    .line 13
    .line 14
    iput-wide p8, p0, Lx40;->s:J

    .line 15
    .line 16
    iput p10, p0, Lx40;->t:F

    .line 17
    .line 18
    iput-object p11, p0, Lx40;->u:Lqh;

    .line 19
    .line 20
    iput-object p12, p0, Lx40;->v:Lzr2;

    .line 21
    .line 22
    iput-object p13, p0, Lx40;->w:Lyq3;

    .line 23
    .line 24
    iput-object p14, p0, Lx40;->x:Lyq3;

    .line 25
    .line 26
    iput-object p15, p0, Lx40;->y:Lyq3;

    .line 27
    .line 28
    move-object/from16 p1, p16

    .line 29
    .line 30
    iput-object p1, p0, Lx40;->z:Lyq3;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v16, p1

    .line 4
    .line 5
    check-cast v16, Lag1;

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
    const/4 v1, 0x1

    .line 15
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 16
    .line 17
    .line 18
    move-result v17

    .line 19
    iget-object v1, v0, Lx40;->n:Lka0;

    .line 20
    .line 21
    move-object v2, v1

    .line 22
    iget-object v1, v0, Lx40;->o:Lay3;

    .line 23
    .line 24
    move-object v4, v2

    .line 25
    iget-wide v2, v0, Lx40;->p:J

    .line 26
    .line 27
    move-object v5, v4

    .line 28
    iget-object v4, v0, Lx40;->q:Ldf1;

    .line 29
    .line 30
    move-object v7, v5

    .line 31
    iget-wide v5, v0, Lx40;->r:J

    .line 32
    .line 33
    move-object v9, v7

    .line 34
    iget-wide v7, v0, Lx40;->s:J

    .line 35
    .line 36
    move-object v10, v9

    .line 37
    iget v9, v0, Lx40;->t:F

    .line 38
    .line 39
    move-object v11, v10

    .line 40
    iget-object v10, v0, Lx40;->u:Lqh;

    .line 41
    .line 42
    move-object v12, v11

    .line 43
    iget-object v11, v0, Lx40;->v:Lzr2;

    .line 44
    .line 45
    move-object v13, v12

    .line 46
    iget-object v12, v0, Lx40;->w:Lyq3;

    .line 47
    .line 48
    move-object v14, v13

    .line 49
    iget-object v13, v0, Lx40;->x:Lyq3;

    .line 50
    .line 51
    move-object v15, v14

    .line 52
    iget-object v14, v0, Lx40;->y:Lyq3;

    .line 53
    .line 54
    iget-object v0, v0, Lx40;->z:Lyq3;

    .line 55
    .line 56
    move-object/from16 v18, v15

    .line 57
    .line 58
    move-object v15, v0

    .line 59
    move-object/from16 v0, v18

    .line 60
    .line 61
    invoke-static/range {v0 .. v17}, La50;->a(Lka0;Lay3;JLdf1;JJFLqh;Lzr2;Lyq3;Lyq3;Lyq3;Lyq3;Lag1;I)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Lt64;->a:Lt64;

    .line 65
    .line 66
    return-object v0
.end method

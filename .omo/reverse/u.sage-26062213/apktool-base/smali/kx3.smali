.class public final synthetic Lkx3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic A:Lay3;

.field public final synthetic B:I

.field public final synthetic C:I

.field public final synthetic D:I

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Lnd2;

.field public final synthetic p:J

.field public final synthetic q:J

.field public final synthetic r:Lpb1;

.field public final synthetic s:Lra1;

.field public final synthetic t:J

.field public final synthetic u:Lvw3;

.field public final synthetic v:J

.field public final synthetic w:I

.field public final synthetic x:Z

.field public final synthetic y:I

.field public final synthetic z:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkx3;->n:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lkx3;->o:Lnd2;

    .line 7
    .line 8
    iput-wide p3, p0, Lkx3;->p:J

    .line 9
    .line 10
    iput-wide p5, p0, Lkx3;->q:J

    .line 11
    .line 12
    iput-object p7, p0, Lkx3;->r:Lpb1;

    .line 13
    .line 14
    iput-object p8, p0, Lkx3;->s:Lra1;

    .line 15
    .line 16
    iput-wide p9, p0, Lkx3;->t:J

    .line 17
    .line 18
    iput-object p11, p0, Lkx3;->u:Lvw3;

    .line 19
    .line 20
    iput-wide p12, p0, Lkx3;->v:J

    .line 21
    .line 22
    iput p14, p0, Lkx3;->w:I

    .line 23
    .line 24
    iput-boolean p15, p0, Lkx3;->x:Z

    .line 25
    .line 26
    move/from16 p1, p16

    .line 27
    .line 28
    iput p1, p0, Lkx3;->y:I

    .line 29
    .line 30
    move/from16 p1, p17

    .line 31
    .line 32
    iput p1, p0, Lkx3;->z:I

    .line 33
    .line 34
    move-object/from16 p1, p18

    .line 35
    .line 36
    iput-object p1, p0, Lkx3;->A:Lay3;

    .line 37
    .line 38
    move/from16 p1, p19

    .line 39
    .line 40
    iput p1, p0, Lkx3;->B:I

    .line 41
    .line 42
    move/from16 p1, p20

    .line 43
    .line 44
    iput p1, p0, Lkx3;->C:I

    .line 45
    .line 46
    move/from16 p1, p21

    .line 47
    .line 48
    iput p1, p0, Lkx3;->D:I

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v18, p1

    .line 4
    .line 5
    check-cast v18, Lag1;

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
    iget v1, v0, Lkx3;->B:I

    .line 15
    .line 16
    or-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 19
    .line 20
    .line 21
    move-result v19

    .line 22
    iget v1, v0, Lkx3;->C:I

    .line 23
    .line 24
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 25
    .line 26
    .line 27
    move-result v20

    .line 28
    iget-object v1, v0, Lkx3;->n:Ljava/lang/String;

    .line 29
    .line 30
    move-object v2, v1

    .line 31
    iget-object v1, v0, Lkx3;->o:Lnd2;

    .line 32
    .line 33
    move-object v4, v2

    .line 34
    iget-wide v2, v0, Lkx3;->p:J

    .line 35
    .line 36
    move-object v6, v4

    .line 37
    iget-wide v4, v0, Lkx3;->q:J

    .line 38
    .line 39
    move-object v7, v6

    .line 40
    iget-object v6, v0, Lkx3;->r:Lpb1;

    .line 41
    .line 42
    move-object v8, v7

    .line 43
    iget-object v7, v0, Lkx3;->s:Lra1;

    .line 44
    .line 45
    move-object v10, v8

    .line 46
    iget-wide v8, v0, Lkx3;->t:J

    .line 47
    .line 48
    move-object v11, v10

    .line 49
    iget-object v10, v0, Lkx3;->u:Lvw3;

    .line 50
    .line 51
    move-object v13, v11

    .line 52
    iget-wide v11, v0, Lkx3;->v:J

    .line 53
    .line 54
    move-object v14, v13

    .line 55
    iget v13, v0, Lkx3;->w:I

    .line 56
    .line 57
    move-object v15, v14

    .line 58
    iget-boolean v14, v0, Lkx3;->x:Z

    .line 59
    .line 60
    move-object/from16 v16, v15

    .line 61
    .line 62
    iget v15, v0, Lkx3;->y:I

    .line 63
    .line 64
    move-object/from16 v17, v1

    .line 65
    .line 66
    iget v1, v0, Lkx3;->z:I

    .line 67
    .line 68
    move/from16 v21, v1

    .line 69
    .line 70
    iget-object v1, v0, Lkx3;->A:Lay3;

    .line 71
    .line 72
    iget v0, v0, Lkx3;->D:I

    .line 73
    .line 74
    move/from16 v22, v21

    .line 75
    .line 76
    move/from16 v21, v0

    .line 77
    .line 78
    move-object/from16 v0, v16

    .line 79
    .line 80
    move/from16 v16, v22

    .line 81
    .line 82
    move-object/from16 v22, v17

    .line 83
    .line 84
    move-object/from16 v17, v1

    .line 85
    .line 86
    move-object/from16 v1, v22

    .line 87
    .line 88
    invoke-static/range {v0 .. v21}, Llx3;->b(Ljava/lang/String;Lnd2;JJLpb1;Lra1;JLvw3;JIZIILay3;Lag1;III)V

    .line 89
    .line 90
    .line 91
    sget-object v0, Lt64;->a:Lt64;

    .line 92
    .line 93
    return-object v0
.end method

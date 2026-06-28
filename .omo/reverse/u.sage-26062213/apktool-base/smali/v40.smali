.class public final synthetic Lv40;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic A:Lzr2;

.field public final synthetic B:I

.field public final synthetic C:I

.field public final synthetic n:Z

.field public final synthetic o:Lnd2;

.field public final synthetic p:Lne1;

.field public final synthetic q:Z

.field public final synthetic r:Lka0;

.field public final synthetic s:Lay3;

.field public final synthetic t:Ldf1;

.field public final synthetic u:Ljl3;

.field public final synthetic v:Lug3;

.field public final synthetic w:Lvg3;

.field public final synthetic x:Lfx;

.field public final synthetic y:F

.field public final synthetic z:Lqh;


# direct methods
.method public synthetic constructor <init>(ZLnd2;Lne1;ZLka0;Lay3;Ldf1;Ljl3;Lug3;Lvg3;Lfx;FLqh;Lzr2;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lv40;->n:Z

    .line 5
    .line 6
    iput-object p2, p0, Lv40;->o:Lnd2;

    .line 7
    .line 8
    iput-object p3, p0, Lv40;->p:Lne1;

    .line 9
    .line 10
    iput-boolean p4, p0, Lv40;->q:Z

    .line 11
    .line 12
    iput-object p5, p0, Lv40;->r:Lka0;

    .line 13
    .line 14
    iput-object p6, p0, Lv40;->s:Lay3;

    .line 15
    .line 16
    iput-object p7, p0, Lv40;->t:Ldf1;

    .line 17
    .line 18
    iput-object p8, p0, Lv40;->u:Ljl3;

    .line 19
    .line 20
    iput-object p9, p0, Lv40;->v:Lug3;

    .line 21
    .line 22
    iput-object p10, p0, Lv40;->w:Lvg3;

    .line 23
    .line 24
    iput-object p11, p0, Lv40;->x:Lfx;

    .line 25
    .line 26
    iput p12, p0, Lv40;->y:F

    .line 27
    .line 28
    iput-object p13, p0, Lv40;->z:Lqh;

    .line 29
    .line 30
    iput-object p14, p0, Lv40;->A:Lzr2;

    .line 31
    .line 32
    iput p15, p0, Lv40;->B:I

    .line 33
    .line 34
    move/from16 p1, p16

    .line 35
    .line 36
    iput p1, p0, Lv40;->C:I

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    check-cast v14, Lag1;

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
    iget v1, v0, Lv40;->B:I

    .line 15
    .line 16
    or-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 19
    .line 20
    .line 21
    move-result v15

    .line 22
    iget v1, v0, Lv40;->C:I

    .line 23
    .line 24
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 25
    .line 26
    .line 27
    move-result v16

    .line 28
    iget-boolean v1, v0, Lv40;->n:Z

    .line 29
    .line 30
    move v2, v1

    .line 31
    iget-object v1, v0, Lv40;->o:Lnd2;

    .line 32
    .line 33
    move v3, v2

    .line 34
    iget-object v2, v0, Lv40;->p:Lne1;

    .line 35
    .line 36
    move v4, v3

    .line 37
    iget-boolean v3, v0, Lv40;->q:Z

    .line 38
    .line 39
    move v5, v4

    .line 40
    iget-object v4, v0, Lv40;->r:Lka0;

    .line 41
    .line 42
    move v6, v5

    .line 43
    iget-object v5, v0, Lv40;->s:Lay3;

    .line 44
    .line 45
    move v7, v6

    .line 46
    iget-object v6, v0, Lv40;->t:Ldf1;

    .line 47
    .line 48
    move v8, v7

    .line 49
    iget-object v7, v0, Lv40;->u:Ljl3;

    .line 50
    .line 51
    move v9, v8

    .line 52
    iget-object v8, v0, Lv40;->v:Lug3;

    .line 53
    .line 54
    move v10, v9

    .line 55
    iget-object v9, v0, Lv40;->w:Lvg3;

    .line 56
    .line 57
    move v11, v10

    .line 58
    iget-object v10, v0, Lv40;->x:Lfx;

    .line 59
    .line 60
    move v12, v11

    .line 61
    iget v11, v0, Lv40;->y:F

    .line 62
    .line 63
    move v13, v12

    .line 64
    iget-object v12, v0, Lv40;->z:Lqh;

    .line 65
    .line 66
    iget-object v0, v0, Lv40;->A:Lzr2;

    .line 67
    .line 68
    move/from16 v17, v13

    .line 69
    .line 70
    move-object v13, v0

    .line 71
    move/from16 v0, v17

    .line 72
    .line 73
    invoke-static/range {v0 .. v16}, La50;->c(ZLnd2;Lne1;ZLka0;Lay3;Ldf1;Ljl3;Lug3;Lvg3;Lfx;FLqh;Lzr2;Lag1;II)V

    .line 74
    .line 75
    .line 76
    sget-object v0, Lt64;->a:Lt64;

    .line 77
    .line 78
    return-object v0
.end method

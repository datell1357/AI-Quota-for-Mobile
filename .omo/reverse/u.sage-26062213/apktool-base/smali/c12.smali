.class public final synthetic Lc12;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic A:I

.field public final synthetic B:I

.field public final synthetic n:Lnd2;

.field public final synthetic o:Ln12;

.field public final synthetic p:Lds2;

.field public final synthetic q:Z

.field public final synthetic r:Lto0;

.field public final synthetic s:Z

.field public final synthetic t:Lwa;

.field public final synthetic u:Law;

.field public final synthetic v:Lsh;

.field public final synthetic w:Lbw;

.field public final synthetic x:Lqh;

.field public final synthetic y:Lpe1;

.field public final synthetic z:I


# direct methods
.method public synthetic constructor <init>(Lnd2;Ln12;Lds2;ZLto0;ZLwa;Law;Lsh;Lbw;Lqh;Lpe1;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc12;->n:Lnd2;

    .line 5
    .line 6
    iput-object p2, p0, Lc12;->o:Ln12;

    .line 7
    .line 8
    iput-object p3, p0, Lc12;->p:Lds2;

    .line 9
    .line 10
    iput-boolean p4, p0, Lc12;->q:Z

    .line 11
    .line 12
    iput-object p5, p0, Lc12;->r:Lto0;

    .line 13
    .line 14
    iput-boolean p6, p0, Lc12;->s:Z

    .line 15
    .line 16
    iput-object p7, p0, Lc12;->t:Lwa;

    .line 17
    .line 18
    iput-object p8, p0, Lc12;->u:Law;

    .line 19
    .line 20
    iput-object p9, p0, Lc12;->v:Lsh;

    .line 21
    .line 22
    iput-object p10, p0, Lc12;->w:Lbw;

    .line 23
    .line 24
    iput-object p11, p0, Lc12;->x:Lqh;

    .line 25
    .line 26
    iput-object p12, p0, Lc12;->y:Lpe1;

    .line 27
    .line 28
    iput p13, p0, Lc12;->z:I

    .line 29
    .line 30
    iput p14, p0, Lc12;->A:I

    .line 31
    .line 32
    iput p15, p0, Lc12;->B:I

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

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
    iget v1, v0, Lc12;->z:I

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
    iget v1, v0, Lc12;->A:I

    .line 23
    .line 24
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 25
    .line 26
    .line 27
    move-result v14

    .line 28
    iget-object v1, v0, Lc12;->n:Lnd2;

    .line 29
    .line 30
    move-object v2, v1

    .line 31
    iget-object v1, v0, Lc12;->o:Ln12;

    .line 32
    .line 33
    move-object v3, v2

    .line 34
    iget-object v2, v0, Lc12;->p:Lds2;

    .line 35
    .line 36
    move-object v4, v3

    .line 37
    iget-boolean v3, v0, Lc12;->q:Z

    .line 38
    .line 39
    move-object v5, v4

    .line 40
    iget-object v4, v0, Lc12;->r:Lto0;

    .line 41
    .line 42
    move-object v6, v5

    .line 43
    iget-boolean v5, v0, Lc12;->s:Z

    .line 44
    .line 45
    move-object v7, v6

    .line 46
    iget-object v6, v0, Lc12;->t:Lwa;

    .line 47
    .line 48
    move-object v8, v7

    .line 49
    iget-object v7, v0, Lc12;->u:Law;

    .line 50
    .line 51
    move-object v9, v8

    .line 52
    iget-object v8, v0, Lc12;->v:Lsh;

    .line 53
    .line 54
    move-object v10, v9

    .line 55
    iget-object v9, v0, Lc12;->w:Lbw;

    .line 56
    .line 57
    move-object v11, v10

    .line 58
    iget-object v10, v0, Lc12;->x:Lqh;

    .line 59
    .line 60
    move-object v15, v11

    .line 61
    iget-object v11, v0, Lc12;->y:Lpe1;

    .line 62
    .line 63
    iget v0, v0, Lc12;->B:I

    .line 64
    .line 65
    move-object/from16 v16, v15

    .line 66
    .line 67
    move v15, v0

    .line 68
    move-object/from16 v0, v16

    .line 69
    .line 70
    invoke-static/range {v0 .. v15}, Lgg4;->d(Lnd2;Ln12;Lds2;ZLto0;ZLwa;Law;Lsh;Lbw;Lqh;Lpe1;Lag1;III)V

    .line 71
    .line 72
    .line 73
    sget-object v0, Lt64;->a:Lt64;

    .line 74
    .line 75
    return-object v0
.end method

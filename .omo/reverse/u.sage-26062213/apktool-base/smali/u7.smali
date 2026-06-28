.class public final synthetic Lu7;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Lef1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lef1;II)V
    .locals 0

    .line 1
    iput p6, p0, Lu7;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lu7;->p:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lu7;->q:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lu7;->r:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lu7;->s:Lef1;

    .line 10
    .line 11
    iput p5, p0, Lu7;->o:I

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lu7;->n:I

    .line 4
    .line 5
    sget-object v2, Lt64;->a:Lt64;

    .line 6
    .line 7
    iget v3, v0, Lu7;->o:I

    .line 8
    .line 9
    iget-object v4, v0, Lu7;->s:Lef1;

    .line 10
    .line 11
    iget-object v5, v0, Lu7;->r:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Lu7;->p:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object v7, v6

    .line 19
    check-cast v7, Ljava/lang/Boolean;

    .line 20
    .line 21
    move-object v9, v5

    .line 22
    check-cast v9, Lp22;

    .line 23
    .line 24
    move-object v10, v4

    .line 25
    check-cast v10, Lpe1;

    .line 26
    .line 27
    move-object/from16 v11, p1

    .line 28
    .line 29
    check-cast v11, Lag1;

    .line 30
    .line 31
    move-object/from16 v1, p2

    .line 32
    .line 33
    check-cast v1, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    or-int/lit8 v1, v3, 0x1

    .line 39
    .line 40
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 41
    .line 42
    .line 43
    move-result v12

    .line 44
    iget-object v8, v0, Lu7;->q:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-static/range {v7 .. v12}, Lkt4;->g(Ljava/lang/Boolean;Ljava/lang/Object;Lp22;Lpe1;Lag1;I)V

    .line 47
    .line 48
    .line 49
    return-object v2

    .line 50
    :pswitch_0
    move-object v13, v6

    .line 51
    check-cast v13, Lne1;

    .line 52
    .line 53
    iget-object v0, v0, Lu7;->q:Ljava/lang/Object;

    .line 54
    .line 55
    move-object v14, v0

    .line 56
    check-cast v14, Lnd2;

    .line 57
    .line 58
    move-object v15, v5

    .line 59
    check-cast v15, Lvt0;

    .line 60
    .line 61
    move-object/from16 v16, v4

    .line 62
    .line 63
    check-cast v16, Lka0;

    .line 64
    .line 65
    move-object/from16 v17, p1

    .line 66
    .line 67
    check-cast v17, Lag1;

    .line 68
    .line 69
    move-object/from16 v0, p2

    .line 70
    .line 71
    check-cast v0, Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    or-int/lit8 v0, v3, 0x1

    .line 77
    .line 78
    invoke-static {v0}, Lqj0;->f0(I)I

    .line 79
    .line 80
    .line 81
    move-result v18

    .line 82
    invoke-static/range {v13 .. v18}, Lx7;->d(Lne1;Lnd2;Lvt0;Lka0;Lag1;I)V

    .line 83
    .line 84
    .line 85
    return-object v2

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

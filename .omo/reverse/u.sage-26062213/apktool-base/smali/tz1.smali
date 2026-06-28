.class public final synthetic Ltz1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lnd2;

.field public final synthetic p:Ln12;

.field public final synthetic q:Lds2;

.field public final synthetic r:Lto0;

.field public final synthetic s:Z

.field public final synthetic t:Lwa;

.field public final synthetic u:Lpe1;

.field public final synthetic v:Ljava/lang/Object;

.field public final synthetic w:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lnd2;Ln12;Lds2;Ljava/lang/Object;Ljava/lang/Object;Lto0;ZLwa;Lpe1;II)V
    .locals 0

    .line 1
    iput p11, p0, Ltz1;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Ltz1;->o:Lnd2;

    .line 4
    .line 5
    iput-object p2, p0, Ltz1;->p:Ln12;

    .line 6
    .line 7
    iput-object p3, p0, Ltz1;->q:Lds2;

    .line 8
    .line 9
    iput-object p4, p0, Ltz1;->v:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Ltz1;->w:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p6, p0, Ltz1;->r:Lto0;

    .line 14
    .line 15
    iput-boolean p7, p0, Ltz1;->s:Z

    .line 16
    .line 17
    iput-object p8, p0, Ltz1;->t:Lwa;

    .line 18
    .line 19
    iput-object p9, p0, Ltz1;->u:Lpe1;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ltz1;->n:I

    .line 4
    .line 5
    sget-object v2, Lt64;->a:Lt64;

    .line 6
    .line 7
    iget-object v3, v0, Ltz1;->w:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Ltz1;->v:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object v8, v4

    .line 15
    check-cast v8, Lsh;

    .line 16
    .line 17
    move-object v9, v3

    .line 18
    check-cast v9, Law;

    .line 19
    .line 20
    move-object/from16 v14, p1

    .line 21
    .line 22
    check-cast v14, Lag1;

    .line 23
    .line 24
    move-object/from16 v1, p2

    .line 25
    .line 26
    check-cast v1, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x187

    .line 32
    .line 33
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 34
    .line 35
    .line 36
    move-result v15

    .line 37
    iget-object v5, v0, Ltz1;->o:Lnd2;

    .line 38
    .line 39
    iget-object v6, v0, Ltz1;->p:Ln12;

    .line 40
    .line 41
    iget-object v7, v0, Ltz1;->q:Lds2;

    .line 42
    .line 43
    iget-object v10, v0, Ltz1;->r:Lto0;

    .line 44
    .line 45
    iget-boolean v11, v0, Ltz1;->s:Z

    .line 46
    .line 47
    iget-object v12, v0, Ltz1;->t:Lwa;

    .line 48
    .line 49
    iget-object v13, v0, Ltz1;->u:Lpe1;

    .line 50
    .line 51
    invoke-static/range {v5 .. v15}, Lqj0;->h(Lnd2;Ln12;Lds2;Lsh;Law;Lto0;ZLwa;Lpe1;Lag1;I)V

    .line 52
    .line 53
    .line 54
    return-object v2

    .line 55
    :pswitch_0
    move-object/from16 v19, v4

    .line 56
    .line 57
    check-cast v19, Lqh;

    .line 58
    .line 59
    move-object/from16 v20, v3

    .line 60
    .line 61
    check-cast v20, Lbw;

    .line 62
    .line 63
    move-object/from16 v25, p1

    .line 64
    .line 65
    check-cast v25, Lag1;

    .line 66
    .line 67
    move-object/from16 v1, p2

    .line 68
    .line 69
    check-cast v1, Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    const/16 v1, 0x6181

    .line 75
    .line 76
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 77
    .line 78
    .line 79
    move-result v26

    .line 80
    iget-object v1, v0, Ltz1;->o:Lnd2;

    .line 81
    .line 82
    iget-object v3, v0, Ltz1;->p:Ln12;

    .line 83
    .line 84
    iget-object v4, v0, Ltz1;->q:Lds2;

    .line 85
    .line 86
    iget-object v5, v0, Ltz1;->r:Lto0;

    .line 87
    .line 88
    iget-boolean v6, v0, Ltz1;->s:Z

    .line 89
    .line 90
    iget-object v7, v0, Ltz1;->t:Lwa;

    .line 91
    .line 92
    iget-object v0, v0, Ltz1;->u:Lpe1;

    .line 93
    .line 94
    move-object/from16 v24, v0

    .line 95
    .line 96
    move-object/from16 v16, v1

    .line 97
    .line 98
    move-object/from16 v17, v3

    .line 99
    .line 100
    move-object/from16 v18, v4

    .line 101
    .line 102
    move-object/from16 v21, v5

    .line 103
    .line 104
    move/from16 v22, v6

    .line 105
    .line 106
    move-object/from16 v23, v7

    .line 107
    .line 108
    invoke-static/range {v16 .. v26}, Lqj0;->i(Lnd2;Ln12;Lds2;Lqh;Lbw;Lto0;ZLwa;Lpe1;Lag1;I)V

    .line 109
    .line 110
    .line 111
    return-object v2

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

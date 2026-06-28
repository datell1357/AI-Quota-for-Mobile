.class public final synthetic Lrz;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lka0;

.field public final synthetic p:Z

.field public final synthetic q:Lne1;

.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;

.field public final synthetic u:Ljava/lang/Object;

.field public final synthetic v:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lka0;Lka0;Lka0;Ldf1;ZLne1;Lne1;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lrz;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lrz;->o:Lka0;

    .line 8
    .line 9
    iput-object p2, p0, Lrz;->s:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lrz;->t:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Lrz;->u:Ljava/lang/Object;

    .line 14
    .line 15
    iput-boolean p5, p0, Lrz;->p:Z

    .line 16
    .line 17
    iput-object p6, p0, Lrz;->q:Lne1;

    .line 18
    .line 19
    iput-object p7, p0, Lrz;->v:Ljava/lang/Object;

    .line 20
    .line 21
    iput p8, p0, Lrz;->r:I

    .line 22
    .line 23
    return-void
.end method

.method public synthetic constructor <init>(Lne1;Lnd2;ZLjl3;Lkz;Lzr2;Lka0;II)V
    .locals 0

    .line 24
    const/4 p8, 0x0

    iput p8, p0, Lrz;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrz;->q:Lne1;

    iput-object p2, p0, Lrz;->s:Ljava/lang/Object;

    iput-boolean p3, p0, Lrz;->p:Z

    iput-object p4, p0, Lrz;->t:Ljava/lang/Object;

    iput-object p5, p0, Lrz;->u:Ljava/lang/Object;

    iput-object p6, p0, Lrz;->v:Ljava/lang/Object;

    iput-object p7, p0, Lrz;->o:Lka0;

    iput p9, p0, Lrz;->r:I

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lrz;->n:I

    .line 4
    .line 5
    sget-object v2, Lt64;->a:Lt64;

    .line 6
    .line 7
    iget-object v3, v0, Lrz;->v:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Lrz;->u:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Lrz;->t:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Lrz;->s:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object v8, v6

    .line 19
    check-cast v8, Lka0;

    .line 20
    .line 21
    move-object v9, v5

    .line 22
    check-cast v9, Lka0;

    .line 23
    .line 24
    move-object v10, v4

    .line 25
    check-cast v10, Ldf1;

    .line 26
    .line 27
    move-object v13, v3

    .line 28
    check-cast v13, Lne1;

    .line 29
    .line 30
    move-object/from16 v14, p1

    .line 31
    .line 32
    check-cast v14, Lag1;

    .line 33
    .line 34
    move-object/from16 v1, p2

    .line 35
    .line 36
    check-cast v1, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget v1, v0, Lrz;->r:I

    .line 42
    .line 43
    or-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 46
    .line 47
    .line 48
    move-result v15

    .line 49
    iget-object v7, v0, Lrz;->o:Lka0;

    .line 50
    .line 51
    iget-boolean v11, v0, Lrz;->p:Z

    .line 52
    .line 53
    iget-object v12, v0, Lrz;->q:Lne1;

    .line 54
    .line 55
    invoke-static/range {v7 .. v15}, Lzj2;->c(Lka0;Lka0;Lka0;Ldf1;ZLne1;Lne1;Lag1;I)V

    .line 56
    .line 57
    .line 58
    return-object v2

    .line 59
    :pswitch_0
    move-object/from16 v17, v6

    .line 60
    .line 61
    check-cast v17, Lnd2;

    .line 62
    .line 63
    move-object/from16 v19, v5

    .line 64
    .line 65
    check-cast v19, Ljl3;

    .line 66
    .line 67
    move-object/from16 v20, v4

    .line 68
    .line 69
    check-cast v20, Lkz;

    .line 70
    .line 71
    move-object/from16 v21, v3

    .line 72
    .line 73
    check-cast v21, Lzr2;

    .line 74
    .line 75
    move-object/from16 v23, p1

    .line 76
    .line 77
    check-cast v23, Lag1;

    .line 78
    .line 79
    move-object/from16 v1, p2

    .line 80
    .line 81
    check-cast v1, Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    const v1, 0x30000001

    .line 87
    .line 88
    .line 89
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 90
    .line 91
    .line 92
    move-result v24

    .line 93
    iget-object v1, v0, Lrz;->q:Lne1;

    .line 94
    .line 95
    iget-boolean v3, v0, Lrz;->p:Z

    .line 96
    .line 97
    iget-object v4, v0, Lrz;->o:Lka0;

    .line 98
    .line 99
    iget v0, v0, Lrz;->r:I

    .line 100
    .line 101
    move/from16 v25, v0

    .line 102
    .line 103
    move-object/from16 v16, v1

    .line 104
    .line 105
    move/from16 v18, v3

    .line 106
    .line 107
    move-object/from16 v22, v4

    .line 108
    .line 109
    invoke-static/range {v16 .. v25}, Ldm0;->i(Lne1;Lnd2;ZLjl3;Lkz;Lzr2;Lka0;Lag1;II)V

    .line 110
    .line 111
    .line 112
    return-object v2

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

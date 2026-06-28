.class public final Lle;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Z

.field public final synthetic q:Lnd2;

.field public final synthetic r:Lo11;

.field public final synthetic s:Ly31;

.field public final synthetic t:Ljava/lang/String;

.field public final synthetic u:Lka0;


# direct methods
.method public synthetic constructor <init>(ZLnd2;Lo11;Ly31;Ljava/lang/String;Lka0;II)V
    .locals 0

    .line 1
    iput p8, p0, Lle;->o:I

    .line 2
    .line 3
    iput-boolean p1, p0, Lle;->p:Z

    .line 4
    .line 5
    iput-object p2, p0, Lle;->q:Lnd2;

    .line 6
    .line 7
    iput-object p3, p0, Lle;->r:Lo11;

    .line 8
    .line 9
    iput-object p4, p0, Lle;->s:Ly31;

    .line 10
    .line 11
    iput-object p5, p0, Lle;->t:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p6, p0, Lle;->u:Lka0;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lle;->o:I

    .line 4
    .line 5
    sget-object v2, Lt64;->a:Lt64;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object/from16 v9, p1

    .line 11
    .line 12
    check-cast v9, Lag1;

    .line 13
    .line 14
    move-object/from16 v1, p2

    .line 15
    .line 16
    check-cast v1, Ljava/lang/Number;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 19
    .line 20
    .line 21
    const v1, 0x186007

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 25
    .line 26
    .line 27
    move-result v10

    .line 28
    iget-boolean v3, v0, Lle;->p:Z

    .line 29
    .line 30
    iget-object v4, v0, Lle;->q:Lnd2;

    .line 31
    .line 32
    iget-object v5, v0, Lle;->r:Lo11;

    .line 33
    .line 34
    iget-object v6, v0, Lle;->s:Ly31;

    .line 35
    .line 36
    iget-object v7, v0, Lle;->t:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v8, v0, Lle;->u:Lka0;

    .line 39
    .line 40
    invoke-static/range {v3 .. v10}, Lmt1;->d(ZLnd2;Lo11;Ly31;Ljava/lang/String;Lka0;Lag1;I)V

    .line 41
    .line 42
    .line 43
    return-object v2

    .line 44
    :pswitch_0
    move-object/from16 v17, p1

    .line 45
    .line 46
    check-cast v17, Lag1;

    .line 47
    .line 48
    move-object/from16 v1, p2

    .line 49
    .line 50
    check-cast v1, Ljava/lang/Number;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 53
    .line 54
    .line 55
    const v1, 0x30d81

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 59
    .line 60
    .line 61
    move-result v18

    .line 62
    iget-boolean v11, v0, Lle;->p:Z

    .line 63
    .line 64
    iget-object v12, v0, Lle;->q:Lnd2;

    .line 65
    .line 66
    iget-object v13, v0, Lle;->r:Lo11;

    .line 67
    .line 68
    iget-object v14, v0, Lle;->s:Ly31;

    .line 69
    .line 70
    iget-object v15, v0, Lle;->t:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v0, v0, Lle;->u:Lka0;

    .line 73
    .line 74
    move-object/from16 v16, v0

    .line 75
    .line 76
    invoke-static/range {v11 .. v18}, Lmt1;->b(ZLnd2;Lo11;Ly31;Ljava/lang/String;Lka0;Lag1;I)V

    .line 77
    .line 78
    .line 79
    return-object v2

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

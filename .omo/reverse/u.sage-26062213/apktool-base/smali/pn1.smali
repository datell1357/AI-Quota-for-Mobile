.class public final synthetic Lpn1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Lnd2;

.field public final synthetic q:J

.field public final synthetic r:I

.field public final synthetic s:I

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lnd2;JIII)V
    .locals 0

    .line 1
    iput p8, p0, Lpn1;->n:I

    .line 2
    .line 3
    iput-object p1, p0, Lpn1;->t:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lpn1;->o:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Lpn1;->p:Lnd2;

    .line 8
    .line 9
    iput-wide p4, p0, Lpn1;->q:J

    .line 10
    .line 11
    iput p6, p0, Lpn1;->r:I

    .line 12
    .line 13
    iput p7, p0, Lpn1;->s:I

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lpn1;->n:I

    .line 4
    .line 5
    sget-object v2, Lt64;->a:Lt64;

    .line 6
    .line 7
    iget v3, v0, Lpn1;->r:I

    .line 8
    .line 9
    iget-object v4, v0, Lpn1;->t:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object v5, v4

    .line 15
    check-cast v5, Lso1;

    .line 16
    .line 17
    move-object/from16 v10, p1

    .line 18
    .line 19
    check-cast v10, Lag1;

    .line 20
    .line 21
    move-object/from16 v1, p2

    .line 22
    .line 23
    check-cast v1, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    or-int/lit8 v1, v3, 0x1

    .line 29
    .line 30
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 31
    .line 32
    .line 33
    move-result v11

    .line 34
    iget-object v6, v0, Lpn1;->o:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v7, v0, Lpn1;->p:Lnd2;

    .line 37
    .line 38
    iget-wide v8, v0, Lpn1;->q:J

    .line 39
    .line 40
    iget v12, v0, Lpn1;->s:I

    .line 41
    .line 42
    invoke-static/range {v5 .. v12}, Lqn1;->a(Lso1;Ljava/lang/String;Lnd2;JLag1;II)V

    .line 43
    .line 44
    .line 45
    return-object v2

    .line 46
    :pswitch_0
    move-object v13, v4

    .line 47
    check-cast v13, Lgs2;

    .line 48
    .line 49
    move-object/from16 v18, p1

    .line 50
    .line 51
    check-cast v18, Lag1;

    .line 52
    .line 53
    move-object/from16 v1, p2

    .line 54
    .line 55
    check-cast v1, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    or-int/lit8 v1, v3, 0x1

    .line 61
    .line 62
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 63
    .line 64
    .line 65
    move-result v19

    .line 66
    iget-object v14, v0, Lpn1;->o:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v15, v0, Lpn1;->p:Lnd2;

    .line 69
    .line 70
    iget-wide v3, v0, Lpn1;->q:J

    .line 71
    .line 72
    iget v0, v0, Lpn1;->s:I

    .line 73
    .line 74
    move/from16 v20, v0

    .line 75
    .line 76
    move-wide/from16 v16, v3

    .line 77
    .line 78
    invoke-static/range {v13 .. v20}, Lqn1;->b(Lgs2;Ljava/lang/String;Lnd2;JLag1;II)V

    .line 79
    .line 80
    .line 81
    return-object v2

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

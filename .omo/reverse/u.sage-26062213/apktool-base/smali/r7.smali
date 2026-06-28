.class public final synthetic Lr7;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:Ldf1;

.field public final synthetic o:Ldf1;

.field public final synthetic p:Ldf1;

.field public final synthetic q:Ljl3;

.field public final synthetic r:J

.field public final synthetic s:J

.field public final synthetic t:J

.field public final synthetic u:J

.field public final synthetic v:Lka0;


# direct methods
.method public synthetic constructor <init>(Ldf1;Ldf1;Ldf1;Ljl3;JJJJLka0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr7;->n:Ldf1;

    .line 5
    .line 6
    iput-object p2, p0, Lr7;->o:Ldf1;

    .line 7
    .line 8
    iput-object p3, p0, Lr7;->p:Ldf1;

    .line 9
    .line 10
    iput-object p4, p0, Lr7;->q:Ljl3;

    .line 11
    .line 12
    iput-wide p5, p0, Lr7;->r:J

    .line 13
    .line 14
    iput-wide p7, p0, Lr7;->s:J

    .line 15
    .line 16
    iput-wide p9, p0, Lr7;->t:J

    .line 17
    .line 18
    iput-wide p11, p0, Lr7;->u:J

    .line 19
    .line 20
    iput-object p13, p0, Lr7;->v:Lka0;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lag1;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    and-int/lit8 v3, v2, 0x3

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    if-eq v3, v4, :cond_0

    .line 21
    .line 22
    move v3, v6

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v5

    .line 25
    :goto_0
    and-int/2addr v2, v6

    .line 26
    invoke-virtual {v1, v2, v3}, Lag1;->N(IZ)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    new-instance v2, Lt7;

    .line 33
    .line 34
    iget-object v3, v0, Lr7;->v:Lka0;

    .line 35
    .line 36
    invoke-direct {v2, v3, v5}, Lt7;-><init>(Lka0;I)V

    .line 37
    .line 38
    .line 39
    const v3, 0x51830875

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v2, v1}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    sget-object v3, Lht4;->d:Lz70;

    .line 47
    .line 48
    invoke-static {v3, v1}, La80;->d(Lz70;Lag1;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v8

    .line 52
    const/16 v17, 0x6

    .line 53
    .line 54
    move-object/from16 v16, v1

    .line 55
    .line 56
    move-object v3, v2

    .line 57
    iget-object v2, v0, Lr7;->n:Ldf1;

    .line 58
    .line 59
    move-object v4, v3

    .line 60
    iget-object v3, v0, Lr7;->o:Ldf1;

    .line 61
    .line 62
    move-object v5, v4

    .line 63
    iget-object v4, v0, Lr7;->p:Ldf1;

    .line 64
    .line 65
    move-object v6, v5

    .line 66
    iget-object v5, v0, Lr7;->q:Ljl3;

    .line 67
    .line 68
    move-object v10, v6

    .line 69
    iget-wide v6, v0, Lr7;->r:J

    .line 70
    .line 71
    move-object v12, v10

    .line 72
    iget-wide v10, v0, Lr7;->s:J

    .line 73
    .line 74
    move-object v14, v12

    .line 75
    iget-wide v12, v0, Lr7;->t:J

    .line 76
    .line 77
    move-object v15, v2

    .line 78
    iget-wide v1, v0, Lr7;->u:J

    .line 79
    .line 80
    move-object v0, v14

    .line 81
    move-wide/from16 v18, v1

    .line 82
    .line 83
    move-object v2, v15

    .line 84
    move-wide/from16 v14, v18

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-static/range {v0 .. v17}, Lx7;->a(Lka0;Lnd2;Ldf1;Ldf1;Ldf1;Ljl3;JJJJJLag1;I)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    move-object/from16 v16, v1

    .line 92
    .line 93
    invoke-virtual/range {v16 .. v16}, Lag1;->Q()V

    .line 94
    .line 95
    .line 96
    :goto_1
    sget-object v0, Lt64;->a:Lt64;

    .line 97
    .line 98
    return-object v0
.end method

.class public final synthetic Lri;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ldf1;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:I

.field public final synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ldj;Lnd2;Lpe1;Lcw;Lmg0;II)V
    .locals 0

    .line 1
    const/4 p6, 0x0

    .line 2
    iput p6, p0, Lri;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lri;->q:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lri;->o:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lri;->r:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Lri;->s:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p5, p0, Lri;->t:Ljava/lang/Object;

    .line 16
    .line 17
    iput p7, p0, Lri;->p:I

    .line 18
    .line 19
    return-void
.end method

.method public synthetic constructor <init>(Lnd2;Lqh;Lsh;Lw13;Lka0;I)V
    .locals 1

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lri;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lri;->o:Ljava/lang/Object;

    iput-object p2, p0, Lri;->q:Ljava/lang/Object;

    iput-object p3, p0, Lri;->r:Ljava/lang/Object;

    iput-object p4, p0, Lri;->s:Ljava/lang/Object;

    iput-object p5, p0, Lri;->t:Ljava/lang/Object;

    iput p6, p0, Lri;->p:I

    return-void
.end method

.method public synthetic constructor <init>(Ly70;Lee2;Lnl3;Le54;Lka0;I)V
    .locals 1

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lri;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lri;->q:Ljava/lang/Object;

    iput-object p2, p0, Lri;->o:Ljava/lang/Object;

    iput-object p3, p0, Lri;->r:Ljava/lang/Object;

    iput-object p4, p0, Lri;->s:Ljava/lang/Object;

    iput-object p5, p0, Lri;->t:Ljava/lang/Object;

    iput p6, p0, Lri;->p:I

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lri;->n:I

    .line 4
    .line 5
    sget-object v2, Lt64;->a:Lt64;

    .line 6
    .line 7
    iget v3, v0, Lri;->p:I

    .line 8
    .line 9
    iget-object v4, v0, Lri;->t:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Lri;->s:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Lri;->r:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v7, v0, Lri;->o:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v0, v0, Lri;->q:Ljava/lang/Object;

    .line 18
    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    move-object v8, v0

    .line 23
    check-cast v8, Ly70;

    .line 24
    .line 25
    move-object v9, v7

    .line 26
    check-cast v9, Lee2;

    .line 27
    .line 28
    move-object v10, v6

    .line 29
    check-cast v10, Lnl3;

    .line 30
    .line 31
    move-object v11, v5

    .line 32
    check-cast v11, Le54;

    .line 33
    .line 34
    move-object v12, v4

    .line 35
    check-cast v12, Lka0;

    .line 36
    .line 37
    move-object/from16 v13, p1

    .line 38
    .line 39
    check-cast v13, Lag1;

    .line 40
    .line 41
    move-object/from16 v0, p2

    .line 42
    .line 43
    check-cast v0, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    or-int/lit8 v0, v3, 0x1

    .line 49
    .line 50
    invoke-static {v0}, Lqj0;->f0(I)I

    .line 51
    .line 52
    .line 53
    move-result v14

    .line 54
    invoke-static/range {v8 .. v14}, Lwa2;->a(Ly70;Lee2;Lnl3;Le54;Lka0;Lag1;I)V

    .line 55
    .line 56
    .line 57
    return-object v2

    .line 58
    :pswitch_0
    move-object v15, v7

    .line 59
    check-cast v15, Lnd2;

    .line 60
    .line 61
    move-object/from16 v16, v0

    .line 62
    .line 63
    check-cast v16, Lqh;

    .line 64
    .line 65
    move-object/from16 v17, v6

    .line 66
    .line 67
    check-cast v17, Lsh;

    .line 68
    .line 69
    move-object/from16 v18, v5

    .line 70
    .line 71
    check-cast v18, Lw13;

    .line 72
    .line 73
    move-object/from16 v19, v4

    .line 74
    .line 75
    check-cast v19, Lka0;

    .line 76
    .line 77
    move-object/from16 v20, p1

    .line 78
    .line 79
    check-cast v20, Lag1;

    .line 80
    .line 81
    move-object/from16 v0, p2

    .line 82
    .line 83
    check-cast v0, Ljava/lang/Integer;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    or-int/lit8 v0, v3, 0x1

    .line 89
    .line 90
    invoke-static {v0}, Lqj0;->f0(I)I

    .line 91
    .line 92
    .line 93
    move-result v21

    .line 94
    invoke-static/range {v15 .. v21}, Lnt1;->c(Lnd2;Lqh;Lsh;Lw13;Lka0;Lag1;I)V

    .line 95
    .line 96
    .line 97
    return-object v2

    .line 98
    :pswitch_1
    check-cast v0, Ldj;

    .line 99
    .line 100
    check-cast v7, Lnd2;

    .line 101
    .line 102
    check-cast v6, Lpe1;

    .line 103
    .line 104
    check-cast v5, Lcw;

    .line 105
    .line 106
    check-cast v4, Lmg0;

    .line 107
    .line 108
    move-object/from16 v8, p1

    .line 109
    .line 110
    check-cast v8, Lag1;

    .line 111
    .line 112
    move-object/from16 v1, p2

    .line 113
    .line 114
    check-cast v1, Ljava/lang/Integer;

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    const/16 v1, 0x31

    .line 120
    .line 121
    invoke-static {v1}, Lqj0;->f0(I)I

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    invoke-static {v3}, Lqj0;->f0(I)I

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    move-object v3, v7

    .line 130
    move-object v7, v4

    .line 131
    move-object v4, v3

    .line 132
    move-object v3, v6

    .line 133
    move-object v6, v5

    .line 134
    move-object v5, v3

    .line 135
    move-object v3, v0

    .line 136
    invoke-static/range {v3 .. v10}, Lnt1;->a(Ldj;Lnd2;Lpe1;Lcw;Lmg0;Lag1;II)V

    .line 137
    .line 138
    .line 139
    return-object v2

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
